------------------------------------------------------------------------------------
-- SERIALDATA
-- Project : ELN
-- Date : 22/12/2017
------------------------------------------------------------------------------------

------------------------------------------------------------------------------------
-- UC
------------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity UC_SerialData is
        port(	Clk, Init, DAck, serialBusy : in std_logic;
		DRq, LdDIn, LdDec : out std_logic
        	);
end entity UC_SerialData;

architecture rtl of UC_SerialData is
	type Etats is (Idle, Load, DRq_Serial, Serial);
	signal Etat_cr, Etat_sv : Etats;
begin
	RegEtat : process(Clk)
	begin
		if rising_edge(Clk) then
			if Init = '1' then
				Etat_cr <= Idle;
			else
				Etat_cr <= Etat_sv;
			end if;
		end if;
	end process RegEtat;
			
	process(Etat_cr, DAck, serialBusy)
	variable state : std_logic_vector(1 downto 0);
	begin
		DRq <= '0'; LdDIn <= '0'; LdDec <= '0';
		Etat_sv <= Etat_cr;
		state := DAck & serialBusy;
		case Etat_cr is
			when Idle =>		DRq <= '1';
						if DAck = '1' then
							LdDIn <= '1';						
							Etat_sv <= Load;							
						end if;

			when Load =>		LdDec <= '1';
						Etat_sv <= DRq_Serial;

			when DRq_Serial =>	DRq <= '1'; 
						case state is
							when "10" =>	LdDIn <= '1'; Etat_sv <= Load;
							when "11" =>	Etat_sv <= Serial;							
							when "00" =>	Etat_sv <= Idle;
							when others =>	NULL;
						end case;

			when Serial =>		if serialBusy = '0' then							
							ldDec<= '1'; LdDIn <= '1';
							Etat_sv <= DRq_Serial;
						end if;
		end case;
	end process; 
end architecture rtl;






------------------------------------------------------------------------------------
-- UT
------------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity UT_SerialData is
	generic (DATA_WIDTH : integer := 8);
	port(	Clk, LdDIn, LdDec, codingEn : in std_logic;
			DIn : in std_logic_vector(DATA_WIDTH-1 downto 0);
			DOut, serialBusy : out std_logic
	);
end entity UT_SerialData;

architecture rtl of UT_SerialData is
	signal Data, Dec : std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');	
	signal out_b, State, codingIn, codingDec : std_logic ;
	signal Delay_b0, Delay_b1, Delay_b2, next_b : std_logic;
	
begin
	Registres : process(Clk)
	variable stuffing : std_logic;
	variable counter : integer range 0 to DATA_WIDTH;
	begin
		if rising_edge(Clk) then
			

			stuffing := Delay_b2 and Delay_b1 and Delay_b0 and out_b and next_b;

			-- update delays registers	
			Delay_b2 <= Delay_b1;
			Delay_b1 <= Delay_b0;
			Delay_b0 <= out_b;

			if LdDIn = '1' then -- load Din
				Data <= DIn;
				codingIn <= codingEn;
			end if;

			if LdDec = '1' then -- load Dec and first shift
				counter := 0;
				codingDec <= codingIn;

				if stuffing = '1' and codingIn = '1' then -- if five '1' were transmitted while coding enabled
					Dec(DATA_WIDTH-1 downto 0) <= Data(DATA_WIDTH-1 downto 0);
					out_b <= '0'; -- write 0
					stuffing := '0';
				else -- shift
					Dec(DATA_WIDTH-2 downto 0) <= Data(DATA_WIDTH-1 downto 1);
					Dec(DATA_WIDTH-1) <= '0';
					counter := counter + 1;		
					out_b <= Data(0);
					next_b <= Data(1); 
				end if;	
			else

				if stuffing = '1' and codingDec ='1' then -- if five '1' were transmitted while coding enabled
					out_b <= '0'; -- write 0
					stuffing := '0';
				else -- shift
					Dec(DATA_WIDTH-2 downto 0) <= Dec(DATA_WIDTH-1 downto 1);
					Dec(DATA_WIDTH-1) <= '0';
					counter := counter + 1;
					out_b <= Dec(0);

					if counter < DATA_WIDTH then next_b <= Dec(1);
					else next_b <= Data(0); end if;
				end if;
			end if;	

		if counter < DATA_WIDTH then serialBusy <= '1'; else serialBusy <='0'; end if;
		
		if (codingDec ='1' or (LdDec = '1' and codingIn = '1')) then
			State <= not(out_b xor State) ;
		else
			State <= out_b;
		end if;
	

		end if;		
	end process Registres;

	-- Line out	
	Dout <= State;

end architecture rtl;

------------------------------------------------------------------------------------
-- Global
------------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.all;

entity SerialData is
	generic (DATA_WIDTH : integer := 8);
        port(	Clk, Init, DAck, codingEn : in std_logic;
                DIn : in std_logic_vector(DATA_WIDTH-1 downto 0);
                DOut, DRq : out std_logic
        );
end entity SerialData;

architecture rtl of SerialData is
    signal LdDIn,LdDec,serialBusy : std_logic;
        
begin
	UT :	entity UT_SerialData
			generic map (	DATA_WIDTH => DATA_WIDTH)
			port map(	Clk => Clk,
						DIn => DIn,
						DOut => DOut,
						LdDIn => LdDIn,
						LdDec => LdDec,
						codingEn => codingEn,
						serialBusy => serialBusy
					);
									
	UC :	entity UC_SerialData
			port map(	Clk => Clk,
						Init => Init,
						DRq => DRq,
						DAck => DAck,
						LdDIn => LdDIn,
						LdDec => LdDec,
						serialBusy => serialBusy
					);
end architecture rtl;