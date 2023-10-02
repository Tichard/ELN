------------------------------------------------------------------------------------
-- Machine A Etats
------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity State_machine is
	port(	Clk, SynRst, Start, DRq, FIFOEmpty : in std_logic;
		init, DAck, rdFIFO, EndTx, Busy, codingEn : out std_logic;
		mux : out std_logic_vector(1 downto 0)
    );
end entity State_machine;

architecture rtl of State_machine is
	type States is (s_Init, s_Tx_Start, s_Tx_Data, s_Tx_CRC);
	signal State_cr, State_sv : States;
begin
	RegStates : process(Clk, SynRst)
	begin
		if SynRst = '0' then
				State_cr <= s_Init;
		elsif rising_edge(Clk) then
			State_cr <= State_sv;
		end if;
	end process RegStates;
			
	process(State_cr, Start, DRq, FIFOEmpty)
	begin
		init <= '0'; DAck <= '0'; rdFIFO <= '0'; EndTx <= '0'; Busy <= '0'; codingEn <= '0'; mux <= "00";

		State_sv <= State_cr;

		case State_cr is
			when s_Init =>	init <= '1';
					State_sv <= s_Tx_Start;

			when s_Tx_Start =>
					mux <= "00"; DAck <= '1';					
					if Start = '1' and DRq = '1' then
						State_sv <= s_Tx_Data;
						Busy <= '1';
						mux <= "01";							
						codingEn <= '1';
					end if;

			when s_Tx_Data =>
					mux <= "01"; Busy <= '1'; codingEn <= '1';
					if FIFOEmpty = '1' then
						mux <= "10";
						DAck <= '1';
						State_sv <= s_Tx_CRC;
					elsif DRq = '1' then
						mux <= "01";
						rdFIFO <= '1';
						DAck <= '1';
					end if;

			when s_Tx_CRC =>	
					mux <= "10"; DAck <= '1'; Busy <= '1'; codingEn <= '1';
					if DRq = '1' then
						State_sv <= s_Tx_Start;
						EndTx <= '1';
						mux <= "00";
						codingEn <= '0';
					end if;

		end case;
	end process; 
end architecture rtl;

------------------------------------------------------------------------------------
-- CRC
------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity CRC is
	generic (DATA_WIDTH : integer := 8;
			SIZE : integer := 4);
	port(	Clk, SynRst, RAZ, ldCRC, start : in std_logic;
		CRC_in : in std_logic_vector(DATA_WIDTH-1 downto 0);
		CRC_out : out std_logic_vector(DATA_WIDTH-1 downto 0)
    );
end entity CRC;

architecture rtl of CRC is
	signal CRC_reg : std_logic_vector((SIZE*DATA_WIDTH)+7 downto 0);
	signal poly : std_logic_vector(DATA_WIDTH downto 0) := "100000001";
begin	
	process(Clk, SynRst)
	variable level : integer range 0 to (SIZE*DATA_WIDTH);
	begin
		if SynRst = '0' then
			CRC_reg <= (others=>'0');
			level := (SIZE*DATA_WIDTH);
		else
			if rising_edge(Clk) then
				if RAZ = '1' then
					CRC_reg <= (others=>'0');
					level := SIZE*DATA_WIDTH;

				elsif ldCRC = '1' and level > 7 then					
					CRC_reg(level+7 downto level) <= CRC_in;
					CRC_reg(level-1 downto 0) <= (others=>'0');
					level := level - 8;

				elsif start = '1' and level < (SIZE*DATA_WIDTH) then
					if(CRC_reg((SIZE*DATA_WIDTH)+7) = '1') then -- if MSB = 1
						CRC_reg((SIZE*DATA_WIDTH)+7 downto 0) <= (CRC_reg((SIZE*DATA_WIDTH)+6 downto ((SIZE-1)*DATA_WIDTH)+7) 
											xor poly(DATA_WIDTH-1 downto 0))&CRC_reg(((SIZE-1)*DATA_WIDTH)+6 downto 0)&'0';
						level := level + 1;
						
					else
						-- shift
						CRC_reg((SIZE*DATA_WIDTH)+7 downto 0) <= CRC_reg((SIZE*DATA_WIDTH)+6 downto 0)&'0';
						level := level + 1;
					end if;

				end if;			
			end if;
		end if;
	end process;
	CRC_out <=  CRC_reg((SIZE*DATA_WIDTH)+7 downto ((SIZE-1)*DATA_WIDTH)+8);

end architecture rtl;

------------------------------------------------------------------------------------
-- ELN
------------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.all;

entity eln is
        port(	Clk, reset_n, rd, wr : in std_logic;
		Line_ELN, IRQ_ELN_n : out std_logic;
		D_in : in std_logic_vector(7 downto 0);
		D_out : out std_logic_vector(7 downto 0);
		Addr : in std_logic_vector(1 downto 0)
        );
end entity eln;

architecture rtl of eln is
    	signal rdFIFO, wrFIFO, FIFOFull, FIFOEmpty, init, EndTx, DAck, DRq, t_rst, SynRst, Start,ldCtrl, RdOut,
		Busy, int_irq, IRQEn, codingEn, sub_Clk, rdFIFO_sub, rdFIFO_delay : std_logic;
	signal clk_div : std_logic_vector(5 downto 0) := "001000";
	signal mux : std_logic_vector(1 downto 0);
	signal FIFOout : std_logic_vector(7 downto 0);
	signal mux_out, CRC_out : std_logic_vector(7 downto 0);
        
begin
	serial :	entity SerialData
				generic map (	DATA_WIDTH => 8)
				port map(	Clk => sub_Clk,
						Init => init,
						DAck => DAck,
						codingEn => codingEn,
						DIn => mux_out,
						DOut => Line_ELN,
						DRq => DRq
						);
			
	machineEtat :	entity State_machine
				port map(	Clk => sub_Clk,
						SynRst => SynRst,
						init => init,
						Start => Start,
						DRq => DRq,
						FIFOEmpty => FIFOEmpty,
						DAck => DAck,
						rdFIFO => rdFIFO_sub,
						EndTx => EndTx,
						Busy => Busy,
						codingEn => codingEn,
						mux => mux
						);

	parite : entity CRC
				generic map (	DATA_WIDTH => 8,
						SIZE => 4
						)
				port map(	Clk => Clk,						
						SynRst => SynRst,
						RAZ => endTx,
						start => Start,
						ldCRC => wrFIFO,
						CRC_in =>  D_in,
						CRC_out => CRC_out
					);

	fifo :	entity FIFO_nMots_mBits
				generic map (	DATA_WIDTH => 8,
						FIFO_SIZE => 2
						)
				port map(	Horloge => Clk,						
						initFifo => init,
						WrFifo => wrFIFO,
						RdFifo => rdFIFO,
						DataIn => D_in,
						DataOut => FIFOout,
						FifoEmpty => FIFOEmpty,
						FifoFull => FIFOFull
						);

-- signal sub_clock interface
	
	process(Clk) 
	begin
		if rising_edge(Clk) then
				rdFIFO_delay <= rdFIFO_sub;
				rdFIFO <= (rdFIFO_sub xor rdFIFO_delay) and rdFIFO_sub;
			end if;
	end process;

-- Decodeur

	ldCtrl <= '1' when Addr = "01" and Wr='1'
	else '0';

	wrFIFO <= '1' when Addr = "10" and Wr='1'
	else '0';

	RdOut <= '1' when Addr = "00" and Rd='1'
	else '0';	

-- Start 

	process(Clk, SynRst) 
	begin
		if SynRst = '0' then
			start <= '0';
		else
			if rising_edge(Clk) then
				if EndTx = '1' then
					start <= '0';
				elsif ldCtrl = '1' then
					start <= D_in(0);
				end if;
			end if;
		end if;
	end process;

-- Clock Divisor

	process(Clk, SynRst) 
	variable counter : integer range 0 to 63;
	begin
		if SynRst = '0' then
			clk_div <= "001000";
			counter := 0;
			sub_Clk <='0';
			
		elsif rising_edge(Clk) then
			if ldCtrl = '1' then
				clk_div <= D_in(7 downto 2);
			end if;

			counter := counter + 1;	

			if counter >= to_integer(unsigned(clk_div)) then
				sub_Clk <='1';
				counter := 0;
			else 
				sub_Clk <='0';
			end if;
			
		end if;
		
	end process;


-- IRQEn 

	process(Clk, SynRst) 
	begin
		if SynRst = '0' then
			IRQEn <= '0';
		else
			if rising_edge(Clk) then
				if ldCtrl = '1' then
					IRQEn <= D_in(1);
				end if;
			end if;
		end if;
	end process;

-- IRQF

	process(Clk, SynRst) 
	begin
		if SynRst = '0' then
			int_irq <= '0';
		else
			if rising_edge(Clk) then
				if RdOut = '1' then
					int_irq <= '0';
				elsif EndTx = '1' then
					int_irq <= '1';
				end if;
			end if;
		end if;
	end process;

-- IRQ
	IRQ_ELN_n <= not(int_irq and IRQEn);

-- MUX
	D_out <= 	clk_div&IRQEn&start when RdOut = '0' else
			"0000"&int_irq&FIFOFull&FIFOEmpty&Busy;

	mux_out <= 	FIFOout when mux = "01" else
			CRC_out when mux = "10" else
			"01111110";

-- Synchronous Reset

	process(Clk, reset_n) 
	begin
		if reset_n = '0' then
			t_rst <= '0'; SynRst <= '0';
		elsif rising_edge(Clk) then
			t_rst <= '1';
			SynRst <= t_rst;
		end if;
	end process;
	

end architecture rtl;

