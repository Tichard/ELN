-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "12/22/2017 10:09:19"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	eln IS
    PORT (
	Clk : IN std_logic;
	reset_n : IN std_logic;
	rd : IN std_logic;
	wr : IN std_logic;
	Line_ELN : OUT std_logic;
	IRQ_ELN_n : OUT std_logic;
	D_in : IN std_logic_vector(7 DOWNTO 0);
	D_out : OUT std_logic_vector(7 DOWNTO 0);
	Addr : IN std_logic_vector(1 DOWNTO 0)
	);
END eln;

-- Design Ports Information
-- Line_ELN	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRQ_ELN_n	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_out[0]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_out[1]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_out[2]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_out[3]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_out[4]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_out[5]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_out[6]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_out[7]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr[0]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[0]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[2]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[3]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[4]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[5]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[6]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[7]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF eln IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_rd : std_logic;
SIGNAL ww_wr : std_logic;
SIGNAL ww_Line_ELN : std_logic;
SIGNAL ww_IRQ_ELN_n : std_logic;
SIGNAL ww_D_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_D_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Addr : std_logic_vector(1 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \D_in[7]~input_o\ : std_logic;
SIGNAL \t_rst~feeder_combout\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \t_rst~q\ : std_logic;
SIGNAL \SynRst~q\ : std_logic;
SIGNAL \Addr[0]~input_o\ : std_logic;
SIGNAL \wr~input_o\ : std_logic;
SIGNAL \Addr[1]~input_o\ : std_logic;
SIGNAL \ldCtrl~combout\ : std_logic;
SIGNAL \D_in[6]~input_o\ : std_logic;
SIGNAL \counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \counter~2_combout\ : std_logic;
SIGNAL \counter~1_combout\ : std_logic;
SIGNAL \counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \counter~3_combout\ : std_logic;
SIGNAL \counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \counter~4_combout\ : std_logic;
SIGNAL \counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \D_in[4]~input_o\ : std_logic;
SIGNAL \D_in[5]~input_o\ : std_logic;
SIGNAL \clk_div[3]~0_combout\ : std_logic;
SIGNAL \D_in[2]~input_o\ : std_logic;
SIGNAL \D_in[3]~input_o\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \counter~5_combout\ : std_logic;
SIGNAL \counter~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \sub_Clk~q\ : std_logic;
SIGNAL \machineEtat|State_cr.s_Init~feeder_combout\ : std_logic;
SIGNAL \machineEtat|State_cr.s_Init~q\ : std_logic;
SIGNAL \wrFIFO~combout\ : std_logic;
SIGNAL \serial|UT|Registres:counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \fifo|Mux33~0_combout\ : std_logic;
SIGNAL \fifo|Mux32~0_combout\ : std_logic;
SIGNAL \fifo|Equal0~0_combout\ : std_logic;
SIGNAL \parite|level~0_combout\ : std_logic;
SIGNAL \D_in[0]~input_o\ : std_logic;
SIGNAL \machineEtat|Selector2~0_combout\ : std_logic;
SIGNAL \Start~0_combout\ : std_logic;
SIGNAL \Start~q\ : std_logic;
SIGNAL \parite|level~2_combout\ : std_logic;
SIGNAL \parite|WideOr20~0_combout\ : std_logic;
SIGNAL \parite|level[4]~7_combout\ : std_logic;
SIGNAL \parite|process_0~0_combout\ : std_logic;
SIGNAL \parite|level[3]~4_combout\ : std_logic;
SIGNAL \parite|level~5_combout\ : std_logic;
SIGNAL \parite|Add2~0_combout\ : std_logic;
SIGNAL \parite|level~6_combout\ : std_logic;
SIGNAL \parite|process_0~1_combout\ : std_logic;
SIGNAL \parite|level[1]~1_combout\ : std_logic;
SIGNAL \parite|level~3_combout\ : std_logic;
SIGNAL \parite|Decoder0~7_combout\ : std_logic;
SIGNAL \parite|Decoder0~0_combout\ : std_logic;
SIGNAL \parite|WideOr30~0_combout\ : std_logic;
SIGNAL \parite|WideOr31~0_combout\ : std_logic;
SIGNAL \parite|WideOr31~1_combout\ : std_logic;
SIGNAL \parite|CRC_reg~12_combout\ : std_logic;
SIGNAL \parite|Decoder0~6_combout\ : std_logic;
SIGNAL \parite|Decoder0~5_combout\ : std_logic;
SIGNAL \parite|CRC_reg~15_combout\ : std_logic;
SIGNAL \parite|Decoder0~3_combout\ : std_logic;
SIGNAL \parite|CRC_reg~14_combout\ : std_logic;
SIGNAL \parite|Decoder0~4_combout\ : std_logic;
SIGNAL \parite|CRC_reg~13_combout\ : std_logic;
SIGNAL \parite|Decoder0~1_combout\ : std_logic;
SIGNAL \D_in[1]~input_o\ : std_logic;
SIGNAL \parite|CRC_reg~11_combout\ : std_logic;
SIGNAL \parite|Decoder1~0_combout\ : std_logic;
SIGNAL \parite|CRC_reg~10_combout\ : std_logic;
SIGNAL \parite|CRC_reg~16_combout\ : std_logic;
SIGNAL \parite|Selector30~2_combout\ : std_logic;
SIGNAL \parite|WideOr30~2_combout\ : std_logic;
SIGNAL \parite|Decoder0~2_combout\ : std_logic;
SIGNAL \parite|Selector30~1_combout\ : std_logic;
SIGNAL \parite|WideOr41~0_combout\ : std_logic;
SIGNAL \parite|Selector30~0_combout\ : std_logic;
SIGNAL \parite|CRC_reg~0_combout\ : std_logic;
SIGNAL \parite|CRC_reg~7_combout\ : std_logic;
SIGNAL \parite|Decoder0~8_combout\ : std_logic;
SIGNAL \parite|CRC_reg~6_combout\ : std_logic;
SIGNAL \parite|CRC_reg~4_combout\ : std_logic;
SIGNAL \parite|WideOr42~0_combout\ : std_logic;
SIGNAL \parite|WideOr42~1_combout\ : std_logic;
SIGNAL \parite|CRC_reg~5_combout\ : std_logic;
SIGNAL \parite|CRC_reg~8_combout\ : std_logic;
SIGNAL \parite|WideOr35~0_combout\ : std_logic;
SIGNAL \parite|WideOr43~0_combout\ : std_logic;
SIGNAL \parite|Decoder0~9_combout\ : std_logic;
SIGNAL \parite|Selector28~1_combout\ : std_logic;
SIGNAL \parite|Selector28~2_combout\ : std_logic;
SIGNAL \parite|Selector28~0_combout\ : std_logic;
SIGNAL \parite|WideOr28~0_combout\ : std_logic;
SIGNAL \parite|CRC_reg~22_combout\ : std_logic;
SIGNAL \parite|CRC_reg~23_combout\ : std_logic;
SIGNAL \parite|WideOr27~0_combout\ : std_logic;
SIGNAL \parite|CRC_reg~32_combout\ : std_logic;
SIGNAL \parite|WideOr44~0_combout\ : std_logic;
SIGNAL \parite|Decoder0~10_combout\ : std_logic;
SIGNAL \parite|Selector27~1_combout\ : std_logic;
SIGNAL \parite|Selector27~2_combout\ : std_logic;
SIGNAL \parite|Selector27~0_combout\ : std_logic;
SIGNAL \parite|CRC_reg~33_combout\ : std_logic;
SIGNAL \parite|WideOr45~0_combout\ : std_logic;
SIGNAL \parite|WideOr26~0_combout\ : std_logic;
SIGNAL \parite|CRC_reg~43_combout\ : std_logic;
SIGNAL \parite|Decoder0~11_combout\ : std_logic;
SIGNAL \parite|CRC_reg~44_combout\ : std_logic;
SIGNAL \parite|CRC_reg~45_combout\ : std_logic;
SIGNAL \parite|CRC_reg~46_combout\ : std_logic;
SIGNAL \parite|CRC_reg~168_combout\ : std_logic;
SIGNAL \parite|WideOr25~0_combout\ : std_logic;
SIGNAL \parite|Decoder0~12_combout\ : std_logic;
SIGNAL \parite|Selector25~1_combout\ : std_logic;
SIGNAL \parite|Selector25~0_combout\ : std_logic;
SIGNAL \parite|Selector25~2_combout\ : std_logic;
SIGNAL \parite|WideOr46~0_combout\ : std_logic;
SIGNAL \parite|CRC_reg~48_combout\ : std_logic;
SIGNAL \parite|WideOr47~0_combout\ : std_logic;
SIGNAL \parite|WideOr24~0_combout\ : std_logic;
SIGNAL \parite|Decoder0~13_combout\ : std_logic;
SIGNAL \parite|CRC_reg~51_combout\ : std_logic;
SIGNAL \parite|CRC_reg~52_combout\ : std_logic;
SIGNAL \parite|CRC_reg~50_combout\ : std_logic;
SIGNAL \parite|CRC_reg~53_combout\ : std_logic;
SIGNAL \parite|CRC_reg~164_combout\ : std_logic;
SIGNAL \parite|Selector23~0_combout\ : std_logic;
SIGNAL \parite|Selector23~2_combout\ : std_logic;
SIGNAL \parite|Decoder0~14_combout\ : std_logic;
SIGNAL \parite|Selector23~1_combout\ : std_logic;
SIGNAL \parite|CRC_reg~56_combout\ : std_logic;
SIGNAL \parite|WideOr23~0_combout\ : std_logic;
SIGNAL \parite|CRC_reg~55_combout\ : std_logic;
SIGNAL \parite|CRC_reg~57_combout\ : std_logic;
SIGNAL \parite|CRC_reg~62_combout\ : std_logic;
SIGNAL \parite|Decoder0~15_combout\ : std_logic;
SIGNAL \parite|CRC_reg~61_combout\ : std_logic;
SIGNAL \parite|CRC_reg~60_combout\ : std_logic;
SIGNAL \parite|WideOr22~0_combout\ : std_logic;
SIGNAL \parite|CRC_reg~63_combout\ : std_logic;
SIGNAL \parite|CRC_reg~59_combout\ : std_logic;
SIGNAL \parite|CRC_reg~64_combout\ : std_logic;
SIGNAL \parite|CRC_reg~70_combout\ : std_logic;
SIGNAL \parite|Decoder0~16_combout\ : std_logic;
SIGNAL \parite|CRC_reg~68_combout\ : std_logic;
SIGNAL \parite|CRC_reg~69_combout\ : std_logic;
SIGNAL \parite|CRC_reg~67_combout\ : std_logic;
SIGNAL \parite|CRC_reg~66_combout\ : std_logic;
SIGNAL \parite|CRC_reg~71_combout\ : std_logic;
SIGNAL \parite|Selector20~2_combout\ : std_logic;
SIGNAL \parite|Decoder0~17_combout\ : std_logic;
SIGNAL \parite|Selector20~1_combout\ : std_logic;
SIGNAL \parite|Selector20~0_combout\ : std_logic;
SIGNAL \parite|CRC_reg~73_combout\ : std_logic;
SIGNAL \parite|WideOr51~0_combout\ : std_logic;
SIGNAL \parite|WideOr51~1_combout\ : std_logic;
SIGNAL \parite|CRC_reg~74_combout\ : std_logic;
SIGNAL \parite|WideOr52~0_combout\ : std_logic;
SIGNAL \parite|WideOr52~1_combout\ : std_logic;
SIGNAL \parite|Selector19~2_combout\ : std_logic;
SIGNAL \parite|Decoder0~18_combout\ : std_logic;
SIGNAL \parite|Selector19~1_combout\ : std_logic;
SIGNAL \parite|CRC_reg~76_combout\ : std_logic;
SIGNAL \parite|Selector19~0_combout\ : std_logic;
SIGNAL \parite|CRC_reg~77_combout\ : std_logic;
SIGNAL \parite|Selector18~2_combout\ : std_logic;
SIGNAL \parite|Selector18~0_combout\ : std_logic;
SIGNAL \parite|WideOr53~0_combout\ : std_logic;
SIGNAL \parite|WideOr53~1_combout\ : std_logic;
SIGNAL \parite|Decoder0~19_combout\ : std_logic;
SIGNAL \parite|Selector18~1_combout\ : std_logic;
SIGNAL \parite|CRC_reg~79_combout\ : std_logic;
SIGNAL \parite|CRC_reg~80_combout\ : std_logic;
SIGNAL \parite|Selector17~0_combout\ : std_logic;
SIGNAL \parite|CRC_reg~82_combout\ : std_logic;
SIGNAL \parite|CRC_reg~83_combout\ : std_logic;
SIGNAL \parite|WideOr17~0_combout\ : std_logic;
SIGNAL \parite|Selector17~2_combout\ : std_logic;
SIGNAL \parite|Decoder0~20_combout\ : std_logic;
SIGNAL \parite|Selector17~1_combout\ : std_logic;
SIGNAL \parite|CRC_reg~84_combout\ : std_logic;
SIGNAL \parite|Decoder0~21_combout\ : std_logic;
SIGNAL \parite|Selector16~1_combout\ : std_logic;
SIGNAL \parite|CRC_reg~86_combout\ : std_logic;
SIGNAL \parite|Selector16~2_combout\ : std_logic;
SIGNAL \parite|Selector16~0_combout\ : std_logic;
SIGNAL \parite|WideOr55~0_combout\ : std_logic;
SIGNAL \parite|WideOr55~1_combout\ : std_logic;
SIGNAL \parite|CRC_reg~87_combout\ : std_logic;
SIGNAL \parite|Decoder0~22_combout\ : std_logic;
SIGNAL \parite|CRC_reg~91_combout\ : std_logic;
SIGNAL \parite|CRC_reg~92_combout\ : std_logic;
SIGNAL \parite|CRC_reg~90_combout\ : std_logic;
SIGNAL \parite|CRC_reg~93_combout\ : std_logic;
SIGNAL \parite|CRC_reg~89_combout\ : std_logic;
SIGNAL \parite|CRC_reg~94_combout\ : std_logic;
SIGNAL \parite|WideOr15~0_combout\ : std_logic;
SIGNAL \parite|CRC_reg~95_combout\ : std_logic;
SIGNAL \parite|Decoder1~1_combout\ : std_logic;
SIGNAL \parite|WideOr30~1_combout\ : std_logic;
SIGNAL \parite|CRC_reg~98_combout\ : std_logic;
SIGNAL \parite|Selector14~2_combout\ : std_logic;
SIGNAL \parite|Selector14~0_combout\ : std_logic;
SIGNAL \parite|Decoder0~23_combout\ : std_logic;
SIGNAL \parite|Selector14~1_combout\ : std_logic;
SIGNAL \parite|CRC_reg~97_combout\ : std_logic;
SIGNAL \parite|CRC_reg~99_combout\ : std_logic;
SIGNAL \parite|CRC_reg~102_combout\ : std_logic;
SIGNAL \parite|CRC_reg~101_combout\ : std_logic;
SIGNAL \parite|WideOr59~0_combout\ : std_logic;
SIGNAL \parite|Decoder0~24_combout\ : std_logic;
SIGNAL \parite|CRC_reg~103_combout\ : std_logic;
SIGNAL \parite|CRC_reg~104_combout\ : std_logic;
SIGNAL \parite|CRC_reg~105_combout\ : std_logic;
SIGNAL \parite|Decoder0~25_combout\ : std_logic;
SIGNAL \parite|Selector12~1_combout\ : std_logic;
SIGNAL \parite|CRC_reg~107_combout\ : std_logic;
SIGNAL \parite|Selector12~2_combout\ : std_logic;
SIGNAL \parite|Selector12~0_combout\ : std_logic;
SIGNAL \parite|WideOr61~0_combout\ : std_logic;
SIGNAL \parite|WideOr12~0_combout\ : std_logic;
SIGNAL \parite|CRC_reg~108_combout\ : std_logic;
SIGNAL \parite|WideOr60~0_combout\ : std_logic;
SIGNAL \parite|CRC_reg~111_combout\ : std_logic;
SIGNAL \parite|Decoder0~26_combout\ : std_logic;
SIGNAL \parite|Selector11~1_combout\ : std_logic;
SIGNAL \parite|Selector11~0_combout\ : std_logic;
SIGNAL \parite|Selector11~2_combout\ : std_logic;
SIGNAL \parite|Selector11~3_combout\ : std_logic;
SIGNAL \parite|CRC_reg~110_combout\ : std_logic;
SIGNAL \parite|CRC_reg~112_combout\ : std_logic;
SIGNAL \parite|CRC_reg~114_combout\ : std_logic;
SIGNAL \parite|Decoder0~27_combout\ : std_logic;
SIGNAL \parite|Selector10~1_combout\ : std_logic;
SIGNAL \parite|WideOr10~0_combout\ : std_logic;
SIGNAL \parite|Selector10~0_combout\ : std_logic;
SIGNAL \parite|Selector10~2_combout\ : std_logic;
SIGNAL \parite|CRC_reg~115_combout\ : std_logic;
SIGNAL \parite|WideOr9~0_combout\ : std_logic;
SIGNAL \parite|Decoder0~28_combout\ : std_logic;
SIGNAL \parite|Selector9~1_combout\ : std_logic;
SIGNAL \parite|CRC_reg~117_combout\ : std_logic;
SIGNAL \parite|Selector9~2_combout\ : std_logic;
SIGNAL \parite|Selector9~0_combout\ : std_logic;
SIGNAL \parite|CRC_reg~118_combout\ : std_logic;
SIGNAL \parite|Selector8~0_combout\ : std_logic;
SIGNAL \parite|CRC_reg~120_combout\ : std_logic;
SIGNAL \parite|WideOr8~0_combout\ : std_logic;
SIGNAL \parite|Decoder0~29_combout\ : std_logic;
SIGNAL \parite|Selector8~1_combout\ : std_logic;
SIGNAL \parite|Selector8~2_combout\ : std_logic;
SIGNAL \parite|CRC_reg~121_combout\ : std_logic;
SIGNAL \parite|WideOr64~0_combout\ : std_logic;
SIGNAL \parite|CRC_reg~124_combout\ : std_logic;
SIGNAL \parite|Selector7~2_combout\ : std_logic;
SIGNAL \parite|Decoder0~30_combout\ : std_logic;
SIGNAL \parite|Selector7~1_combout\ : std_logic;
SIGNAL \parite|Selector7~0_combout\ : std_logic;
SIGNAL \parite|Selector7~3_combout\ : std_logic;
SIGNAL \parite|CRC_reg~123_combout\ : std_logic;
SIGNAL \parite|CRC_reg~125_combout\ : std_logic;
SIGNAL \parite|Selector6~0_combout\ : std_logic;
SIGNAL \parite|CRC_reg~127_combout\ : std_logic;
SIGNAL \parite|WideOr6~0_combout\ : std_logic;
SIGNAL \parite|Selector6~2_combout\ : std_logic;
SIGNAL \parite|Decoder0~31_combout\ : std_logic;
SIGNAL \parite|Selector6~1_combout\ : std_logic;
SIGNAL \parite|CRC_reg~128_combout\ : std_logic;
SIGNAL \parite|CRC_reg~130_combout\ : std_logic;
SIGNAL \parite|LessThan0~0_combout\ : std_logic;
SIGNAL \parite|WideOr4~0_combout\ : std_logic;
SIGNAL \parite|CRC_reg~136_combout\ : std_logic;
SIGNAL \parite|CRC_reg~134_combout\ : std_logic;
SIGNAL \parite|CRC_reg~132_combout\ : std_logic;
SIGNAL \parite|CRC_reg~133_combout\ : std_logic;
SIGNAL \parite|Decoder0~32_combout\ : std_logic;
SIGNAL \parite|CRC_reg~135_combout\ : std_logic;
SIGNAL \parite|CRC_reg~137_combout\ : std_logic;
SIGNAL \parite|WideOr3~0_combout\ : std_logic;
SIGNAL \parite|CRC_reg~140_combout\ : std_logic;
SIGNAL \parite|CRC_reg~143_combout\ : std_logic;
SIGNAL \parite|CRC_reg~141_combout\ : std_logic;
SIGNAL \parite|CRC_reg~139_combout\ : std_logic;
SIGNAL \parite|CRC_reg~142_combout\ : std_logic;
SIGNAL \parite|CRC_reg~144_combout\ : std_logic;
SIGNAL \parite|WideOr2~0_combout\ : std_logic;
SIGNAL \parite|WideOr2~1_combout\ : std_logic;
SIGNAL \parite|CRC_reg~148_combout\ : std_logic;
SIGNAL \parite|CRC_reg~147_combout\ : std_logic;
SIGNAL \parite|CRC_reg~146_combout\ : std_logic;
SIGNAL \parite|CRC_reg~149_combout\ : std_logic;
SIGNAL \parite|CRC_reg~150_combout\ : std_logic;
SIGNAL \parite|CRC_reg~152_combout\ : std_logic;
SIGNAL \parite|WideOr0~0_combout\ : std_logic;
SIGNAL \parite|CRC_reg~156_combout\ : std_logic;
SIGNAL \parite|CRC_reg~154_combout\ : std_logic;
SIGNAL \parite|CRC_reg~155_combout\ : std_logic;
SIGNAL \parite|CRC_reg~157_combout\ : std_logic;
SIGNAL \parite|CRC_reg~158_combout\ : std_logic;
SIGNAL \parite|CRC_reg~160_combout\ : std_logic;
SIGNAL \parite|CRC_reg~162_combout\ : std_logic;
SIGNAL \parite|CRC_reg~163_combout\ : std_logic;
SIGNAL \parite|CRC_reg~161_combout\ : std_logic;
SIGNAL \parite|CRC_reg~159_combout\ : std_logic;
SIGNAL \parite|CRC_reg~153_combout\ : std_logic;
SIGNAL \parite|CRC_reg~151_combout\ : std_logic;
SIGNAL \parite|CRC_reg~145_combout\ : std_logic;
SIGNAL \parite|CRC_reg~138_combout\ : std_logic;
SIGNAL \parite|CRC_reg~131_combout\ : std_logic;
SIGNAL \parite|CRC_reg~129_combout\ : std_logic;
SIGNAL \parite|CRC_reg~126_combout\ : std_logic;
SIGNAL \parite|CRC_reg~122_combout\ : std_logic;
SIGNAL \parite|CRC_reg~119_combout\ : std_logic;
SIGNAL \parite|CRC_reg~116_combout\ : std_logic;
SIGNAL \parite|CRC_reg~113_combout\ : std_logic;
SIGNAL \parite|CRC_reg~109_combout\ : std_logic;
SIGNAL \parite|CRC_reg~106_combout\ : std_logic;
SIGNAL \parite|CRC_reg~100_combout\ : std_logic;
SIGNAL \parite|CRC_reg~96_combout\ : std_logic;
SIGNAL \parite|CRC_reg~88_combout\ : std_logic;
SIGNAL \parite|CRC_reg~85_combout\ : std_logic;
SIGNAL \parite|CRC_reg~81_combout\ : std_logic;
SIGNAL \parite|CRC_reg~78_combout\ : std_logic;
SIGNAL \parite|CRC_reg~75_combout\ : std_logic;
SIGNAL \parite|CRC_reg~72_combout\ : std_logic;
SIGNAL \parite|CRC_reg~65_combout\ : std_logic;
SIGNAL \parite|CRC_reg~58_combout\ : std_logic;
SIGNAL \parite|CRC_reg~54_combout\ : std_logic;
SIGNAL \parite|CRC_reg~49_combout\ : std_logic;
SIGNAL \parite|CRC_reg~47_combout\ : std_logic;
SIGNAL \parite|CRC_reg~34_combout\ : std_logic;
SIGNAL \parite|CRC_reg~24_combout\ : std_logic;
SIGNAL \parite|CRC_reg~9_combout\ : std_logic;
SIGNAL \parite|CRC_reg~2_combout\ : std_logic;
SIGNAL \parite|CRC_reg~18_combout\ : std_logic;
SIGNAL \parite|CRC_reg~19_combout\ : std_logic;
SIGNAL \parite|CRC_reg~20_combout\ : std_logic;
SIGNAL \parite|WideOr36~0_combout\ : std_logic;
SIGNAL \parite|WideOr35~1_combout\ : std_logic;
SIGNAL \parite|CRC_reg~29_combout\ : std_logic;
SIGNAL \parite|CRC_reg~30_combout\ : std_logic;
SIGNAL \parite|CRC_reg~39_combout\ : std_logic;
SIGNAL \parite|CRC_reg~40_combout\ : std_logic;
SIGNAL \parite|WideOr34~0_combout\ : std_logic;
SIGNAL \parite|WideOr37~0_combout\ : std_logic;
SIGNAL \parite|CRC_reg~41_combout\ : std_logic;
SIGNAL \parite|CRC_reg~36_combout\ : std_logic;
SIGNAL \parite|CRC_reg~35_combout\ : std_logic;
SIGNAL \parite|WideOr33~0_combout\ : std_logic;
SIGNAL \parite|WideOr38~0_combout\ : std_logic;
SIGNAL \parite|CRC_reg~37_combout\ : std_logic;
SIGNAL \parite|WideOr32~0_combout\ : std_logic;
SIGNAL \parite|CRC_reg~25_combout\ : std_logic;
SIGNAL \parite|WideOr39~0_combout\ : std_logic;
SIGNAL \parite|CRC_reg~26_combout\ : std_logic;
SIGNAL \parite|CRC_reg~27_combout\ : std_logic;
SIGNAL \parite|CRC_reg~28_combout\ : std_logic;
SIGNAL \parite|CRC_reg~38_combout\ : std_logic;
SIGNAL \parite|CRC_reg~42_combout\ : std_logic;
SIGNAL \parite|CRC_reg~31_combout\ : std_logic;
SIGNAL \parite|CRC_reg~21_combout\ : std_logic;
SIGNAL \parite|CRC_reg~3_combout\ : std_logic;
SIGNAL \parite|CRC_reg~1_combout\ : std_logic;
SIGNAL \parite|CRC_reg~17_combout\ : std_logic;
SIGNAL \fifo|Fifo[3][0]~6_combout\ : std_logic;
SIGNAL \fifo|Fifo[3][1]~q\ : std_logic;
SIGNAL \fifo|Fifo[2][1]~feeder_combout\ : std_logic;
SIGNAL \fifo|Fifo[2][3]~4_combout\ : std_logic;
SIGNAL \fifo|Fifo[2][0]~5_combout\ : std_logic;
SIGNAL \fifo|Fifo[2][1]~q\ : std_logic;
SIGNAL \fifo|Fifo[1][1]~feeder_combout\ : std_logic;
SIGNAL \fifo|Fifo[1][2]~2_combout\ : std_logic;
SIGNAL \fifo|Fifo[1][0]~3_combout\ : std_logic;
SIGNAL \fifo|Fifo[1][1]~q\ : std_logic;
SIGNAL \fifo|Fifo[0][1]~feeder_combout\ : std_logic;
SIGNAL \fifo|Fifo[0][3]~0_combout\ : std_logic;
SIGNAL \fifo|Fifo[0][0]~1_combout\ : std_logic;
SIGNAL \fifo|Fifo[0][1]~q\ : std_logic;
SIGNAL \mux_out[1]~1_combout\ : std_logic;
SIGNAL \machineEtat|Selector6~1_combout\ : std_logic;
SIGNAL \serial|UC|Etat_cr~8_combout\ : std_logic;
SIGNAL \serial|UC|Etat_cr.Load~q\ : std_logic;
SIGNAL \serial|UC|Etat_cr~9_combout\ : std_logic;
SIGNAL \serial|UC|Etat_cr~10_combout\ : std_logic;
SIGNAL \serial|UC|Etat_cr.Serial~q\ : std_logic;
SIGNAL \serial|UC|Selector0~0_combout\ : std_logic;
SIGNAL \fifo|Fifo[3][0]~q\ : std_logic;
SIGNAL \fifo|Fifo[2][0]~feeder_combout\ : std_logic;
SIGNAL \fifo|Fifo[2][0]~q\ : std_logic;
SIGNAL \fifo|Fifo[1][0]~feeder_combout\ : std_logic;
SIGNAL \fifo|Fifo[1][0]~q\ : std_logic;
SIGNAL \fifo|Fifo[0][0]~feeder_combout\ : std_logic;
SIGNAL \fifo|Fifo[0][0]~q\ : std_logic;
SIGNAL \mux_out[0]~0_combout\ : std_logic;
SIGNAL \serial|UT|Dec~0_combout\ : std_logic;
SIGNAL \serial|UT|counter~0_combout\ : std_logic;
SIGNAL \serial|UT|out_b~0_combout\ : std_logic;
SIGNAL \serial|UT|out_b~q\ : std_logic;
SIGNAL \serial|UT|Delay_b0~q\ : std_logic;
SIGNAL \serial|UT|Delay_b1~q\ : std_logic;
SIGNAL \serial|UT|Delay_b2~q\ : std_logic;
SIGNAL \serial|UT|Registres~0_combout\ : std_logic;
SIGNAL \fifo|Fifo[3][2]~q\ : std_logic;
SIGNAL \fifo|Fifo[2][2]~feeder_combout\ : std_logic;
SIGNAL \fifo|Fifo[2][2]~q\ : std_logic;
SIGNAL \fifo|Fifo[1][2]~feeder_combout\ : std_logic;
SIGNAL \fifo|Fifo[1][2]~q\ : std_logic;
SIGNAL \fifo|Fifo[0][2]~feeder_combout\ : std_logic;
SIGNAL \fifo|Fifo[0][2]~q\ : std_logic;
SIGNAL \mux_out[2]~2_combout\ : std_logic;
SIGNAL \fifo|Fifo[3][4]~q\ : std_logic;
SIGNAL \fifo|Fifo[2][4]~feeder_combout\ : std_logic;
SIGNAL \fifo|Fifo[2][4]~q\ : std_logic;
SIGNAL \fifo|Fifo[1][4]~feeder_combout\ : std_logic;
SIGNAL \fifo|Fifo[1][4]~q\ : std_logic;
SIGNAL \fifo|Fifo[0][4]~feeder_combout\ : std_logic;
SIGNAL \fifo|Fifo[0][4]~q\ : std_logic;
SIGNAL \mux_out[4]~4_combout\ : std_logic;
SIGNAL \fifo|Fifo[3][5]~q\ : std_logic;
SIGNAL \fifo|Fifo[2][5]~feeder_combout\ : std_logic;
SIGNAL \fifo|Fifo[2][5]~q\ : std_logic;
SIGNAL \fifo|Fifo[1][5]~feeder_combout\ : std_logic;
SIGNAL \fifo|Fifo[1][5]~q\ : std_logic;
SIGNAL \fifo|Fifo[0][5]~feeder_combout\ : std_logic;
SIGNAL \fifo|Fifo[0][5]~q\ : std_logic;
SIGNAL \mux_out[5]~5_combout\ : std_logic;
SIGNAL \fifo|Fifo[3][6]~q\ : std_logic;
SIGNAL \fifo|Fifo[2][6]~feeder_combout\ : std_logic;
SIGNAL \fifo|Fifo[2][6]~q\ : std_logic;
SIGNAL \fifo|Fifo[1][6]~feeder_combout\ : std_logic;
SIGNAL \fifo|Fifo[1][6]~q\ : std_logic;
SIGNAL \fifo|Fifo[0][6]~feeder_combout\ : std_logic;
SIGNAL \fifo|Fifo[0][6]~q\ : std_logic;
SIGNAL \mux_out[6]~6_combout\ : std_logic;
SIGNAL \fifo|Fifo[3][7]~q\ : std_logic;
SIGNAL \fifo|Fifo[2][7]~feeder_combout\ : std_logic;
SIGNAL \fifo|Fifo[2][7]~q\ : std_logic;
SIGNAL \fifo|Fifo[1][7]~feeder_combout\ : std_logic;
SIGNAL \fifo|Fifo[1][7]~q\ : std_logic;
SIGNAL \fifo|Fifo[0][7]~feeder_combout\ : std_logic;
SIGNAL \fifo|Fifo[0][7]~q\ : std_logic;
SIGNAL \mux_out[7]~7_combout\ : std_logic;
SIGNAL \serial|UT|Dec[7]~7_combout\ : std_logic;
SIGNAL \serial|UT|Dec~6_combout\ : std_logic;
SIGNAL \serial|UT|Dec~5_combout\ : std_logic;
SIGNAL \serial|UT|Dec~4_combout\ : std_logic;
SIGNAL \fifo|Fifo[3][3]~q\ : std_logic;
SIGNAL \fifo|Fifo[2][3]~feeder_combout\ : std_logic;
SIGNAL \fifo|Fifo[2][3]~q\ : std_logic;
SIGNAL \fifo|Fifo[1][3]~feeder_combout\ : std_logic;
SIGNAL \fifo|Fifo[1][3]~q\ : std_logic;
SIGNAL \fifo|Fifo[0][3]~feeder_combout\ : std_logic;
SIGNAL \fifo|Fifo[0][3]~q\ : std_logic;
SIGNAL \mux_out[3]~3_combout\ : std_logic;
SIGNAL \serial|UT|Dec~3_combout\ : std_logic;
SIGNAL \serial|UT|Dec~2_combout\ : std_logic;
SIGNAL \serial|UT|Dec~1_combout\ : std_logic;
SIGNAL \serial|UT|next_b~0_combout\ : std_logic;
SIGNAL \serial|UT|next_b~1_combout\ : std_logic;
SIGNAL \serial|UT|next_b~q\ : std_logic;
SIGNAL \serial|UT|stuffing~0_combout\ : std_logic;
SIGNAL \serial|UT|counter~2_combout\ : std_logic;
SIGNAL \serial|UT|Registres:counter[0]~q\ : std_logic;
SIGNAL \serial|UT|counter~3_combout\ : std_logic;
SIGNAL \serial|UT|Registres:counter[1]~q\ : std_logic;
SIGNAL \serial|UT|counter~1_combout\ : std_logic;
SIGNAL \serial|UT|Registres:counter[2]~q\ : std_logic;
SIGNAL \serial|UT|Add0~0_combout\ : std_logic;
SIGNAL \serial|UT|serialBusy~0_combout\ : std_logic;
SIGNAL \serial|UT|serialBusy~q\ : std_logic;
SIGNAL \serial|UC|Selector5~0_combout\ : std_logic;
SIGNAL \serial|UC|Etat_cr~7_combout\ : std_logic;
SIGNAL \serial|UC|Etat_cr.DRq_Serial~q\ : std_logic;
SIGNAL \machineEtat|State_cr.s_Tx_CRC~1_combout\ : std_logic;
SIGNAL \machineEtat|State_cr.s_Tx_CRC~2_combout\ : std_logic;
SIGNAL \machineEtat|State_cr.s_Tx_CRC~q\ : std_logic;
SIGNAL \machineEtat|State_cr.s_Tx_CRC~0_combout\ : std_logic;
SIGNAL \machineEtat|Selector1~0_combout\ : std_logic;
SIGNAL \machineEtat|State_cr.s_Tx_Start~q\ : std_logic;
SIGNAL \machineEtat|Selector7~0_combout\ : std_logic;
SIGNAL \machineEtat|Selector2~1_combout\ : std_logic;
SIGNAL \machineEtat|State_cr.s_Tx_Data~q\ : std_logic;
SIGNAL \rdFIFO~1_combout\ : std_logic;
SIGNAL \rdFIFO_delay~q\ : std_logic;
SIGNAL \rdFIFO~0_combout\ : std_logic;
SIGNAL \rdFIFO~q\ : std_logic;
SIGNAL \fifo|Mux34~0_combout\ : std_logic;
SIGNAL \machineEtat|Selector6~0_combout\ : std_logic;
SIGNAL \serial|UC|Etat_cr~6_combout\ : std_logic;
SIGNAL \serial|UC|Etat_cr.Idle~q\ : std_logic;
SIGNAL \machineEtat|Selector8~0_combout\ : std_logic;
SIGNAL \serial|UT|codingIn~q\ : std_logic;
SIGNAL \serial|UT|codingDec~0_combout\ : std_logic;
SIGNAL \serial|UT|codingDec~q\ : std_logic;
SIGNAL \serial|UT|State~0_combout\ : std_logic;
SIGNAL \serial|UT|State~q\ : std_logic;
SIGNAL \IRQEn~q\ : std_logic;
SIGNAL \rd~input_o\ : std_logic;
SIGNAL \int_irq~0_combout\ : std_logic;
SIGNAL \int_irq~q\ : std_logic;
SIGNAL \IRQ_ELN_n~0_combout\ : std_logic;
SIGNAL \RdOut~combout\ : std_logic;
SIGNAL \D_out~0_combout\ : std_logic;
SIGNAL \D_out~1_combout\ : std_logic;
SIGNAL \D_out~2_combout\ : std_logic;
SIGNAL \D_out~3_combout\ : std_logic;
SIGNAL \D_out~4_combout\ : std_logic;
SIGNAL \D_out~5_combout\ : std_logic;
SIGNAL \D_out~6_combout\ : std_logic;
SIGNAL \D_out~7_combout\ : std_logic;
SIGNAL \serial|UT|Data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \fifo|adrFifo\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \parite|CRC_reg\ : std_logic_vector(39 DOWNTO 0);
SIGNAL clk_div : std_logic_vector(5 DOWNTO 0);
SIGNAL \serial|UT|Dec\ : std_logic_vector(7 DOWNTO 0);
SIGNAL counter : std_logic_vector(5 DOWNTO 0);
SIGNAL \parite|level\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \serial|UT|ALT_INV_Registres:counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_D_in[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_in[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_in[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_in[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_in[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_in[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_in[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_wr~input_o\ : std_logic;
SIGNAL \ALT_INV_D_in[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Addr[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Addr[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_rd~input_o\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr30~2_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr32~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr34~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~157_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~156_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~155_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~154_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~149_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~148_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~147_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~146_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr2~1_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~143_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~142_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~141_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~140_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr3~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~139_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~136_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~135_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Decoder0~32_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~134_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~133_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr4~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~132_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector6~2_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector6~1_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Decoder0~31_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~127_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~124_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector7~3_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector7~2_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector7~1_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Decoder0~30_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~123_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr64~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector8~2_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector8~1_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Decoder0~29_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~120_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr8~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector9~2_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector9~1_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Decoder0~28_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector9~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~117_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr9~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector10~2_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector10~1_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Decoder0~27_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~114_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr10~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~111_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector11~3_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector11~2_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector11~1_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Decoder0~26_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector11~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~110_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr60~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector12~2_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector12~1_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Decoder0~25_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector12~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~107_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr12~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~104_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~103_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Decoder0~24_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~102_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~101_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr59~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr61~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~98_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector14~2_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector14~1_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Decoder0~23_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector14~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~97_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~94_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~93_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~92_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~91_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Decoder0~22_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~90_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr15~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~89_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector16~2_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector16~1_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Decoder0~21_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector16~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~86_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr55~1_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr55~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~83_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~82_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector17~2_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector17~1_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Decoder0~20_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector17~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr17~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector18~2_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector18~1_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Decoder0~19_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector18~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~79_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr53~1_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr53~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector19~2_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector19~1_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Decoder0~18_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector19~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~76_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr52~1_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr52~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector20~2_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector20~1_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Decoder0~17_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector20~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~73_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr51~1_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr51~0_combout\ : std_logic;
SIGNAL \fifo|ALT_INV_Fifo[3][7]~q\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~70_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~69_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~68_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Decoder0~16_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~67_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~66_combout\ : std_logic;
SIGNAL \fifo|ALT_INV_Fifo[3][6]~q\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~63_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~62_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~61_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Decoder0~15_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~60_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~59_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr22~0_combout\ : std_logic;
SIGNAL \fifo|ALT_INV_Fifo[3][5]~q\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~56_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector23~2_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector23~1_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Decoder0~14_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector23~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~55_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr23~0_combout\ : std_logic;
SIGNAL \fifo|ALT_INV_Fifo[3][4]~q\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~53_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~52_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~51_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Decoder0~13_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~50_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr24~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr47~0_combout\ : std_logic;
SIGNAL \fifo|ALT_INV_Fifo[3][3]~q\ : std_logic;
SIGNAL \serial|UT|ALT_INV_Data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \serial|UT|ALT_INV_Dec\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \parite|ALT_INV_Selector25~2_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector25~1_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Decoder0~12_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector25~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr46~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr25~0_combout\ : std_logic;
SIGNAL \fifo|ALT_INV_Fifo[3][2]~q\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~46_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~45_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~44_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Decoder0~11_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~43_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr26~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr45~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~40_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~39_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr37~0_combout\ : std_logic;
SIGNAL \fifo|ALT_INV_Fifo[3][1]~q\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~36_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~35_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr33~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr38~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector27~2_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector27~1_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Decoder0~10_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector27~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~32_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr27~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr44~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~29_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr35~1_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr30~1_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr36~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~26_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~25_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr39~0_combout\ : std_logic;
SIGNAL \fifo|ALT_INV_Fifo[3][0]~q\ : std_logic;
SIGNAL \parite|ALT_INV_Selector28~2_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector28~1_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Decoder0~9_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector28~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~22_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr28~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr43~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr35~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~19_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~18_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~15_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~14_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~13_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~12_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~11_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr31~1_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr30~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~10_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~7_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~6_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Decoder0~8_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~5_combout\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg~4_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr42~1_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr42~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_level~5_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Add2~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr20~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \parite|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector30~2_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Decoder0~7_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Decoder0~6_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Decoder0~5_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector30~1_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Decoder0~4_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Decoder0~3_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Decoder0~2_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Selector30~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Decoder0~1_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Decoder0~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Decoder1~1_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr31~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_WideOr41~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_Decoder1~0_combout\ : std_logic;
SIGNAL \parite|ALT_INV_level\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_Add0~4_combout\ : std_logic;
SIGNAL \serial|UT|ALT_INV_Registres~0_combout\ : std_logic;
SIGNAL \serial|UT|ALT_INV_next_b~0_combout\ : std_logic;
SIGNAL \ALT_INV_rdFIFO_delay~q\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL ALT_INV_counter : std_logic_vector(5 DOWNTO 0);
SIGNAL \serial|UC|ALT_INV_Etat_cr~9_combout\ : std_logic;
SIGNAL \serial|UT|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \serial|UT|ALT_INV_Registres:counter[1]~q\ : std_logic;
SIGNAL \serial|UT|ALT_INV_Registres:counter[0]~q\ : std_logic;
SIGNAL \serial|UT|ALT_INV_Registres:counter[2]~q\ : std_logic;
SIGNAL \serial|UT|ALT_INV_codingDec~0_combout\ : std_logic;
SIGNAL \serial|UT|ALT_INV_stuffing~0_combout\ : std_logic;
SIGNAL \serial|UT|ALT_INV_Delay_b2~q\ : std_logic;
SIGNAL \serial|UT|ALT_INV_Delay_b1~q\ : std_logic;
SIGNAL \serial|UT|ALT_INV_Delay_b0~q\ : std_logic;
SIGNAL \serial|UT|ALT_INV_next_b~q\ : std_logic;
SIGNAL \ALT_INV_wrFIFO~combout\ : std_logic;
SIGNAL \ALT_INV_rdFIFO~q\ : std_logic;
SIGNAL \machineEtat|ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \machineEtat|ALT_INV_Selector6~1_combout\ : std_logic;
SIGNAL \machineEtat|ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \machineEtat|ALT_INV_State_cr.s_Tx_CRC~1_combout\ : std_logic;
SIGNAL \machineEtat|ALT_INV_State_cr.s_Init~q\ : std_logic;
SIGNAL \machineEtat|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \serial|UC|ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \serial|UC|ALT_INV_Etat_cr.Serial~q\ : std_logic;
SIGNAL \serial|UT|ALT_INV_serialBusy~q\ : std_logic;
SIGNAL \serial|UC|ALT_INV_Etat_cr.Load~q\ : std_logic;
SIGNAL \serial|UT|ALT_INV_codingIn~q\ : std_logic;
SIGNAL \serial|UT|ALT_INV_codingDec~q\ : std_logic;
SIGNAL \serial|UT|ALT_INV_out_b~q\ : std_logic;
SIGNAL ALT_INV_clk_div : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_D_out~5_combout\ : std_logic;
SIGNAL \fifo|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \machineEtat|ALT_INV_State_cr.s_Tx_Data~q\ : std_logic;
SIGNAL \machineEtat|ALT_INV_State_cr.s_Tx_CRC~0_combout\ : std_logic;
SIGNAL \serial|UC|ALT_INV_Etat_cr.DRq_Serial~q\ : std_logic;
SIGNAL \serial|UC|ALT_INV_Etat_cr.Idle~q\ : std_logic;
SIGNAL \machineEtat|ALT_INV_State_cr.s_Tx_Start~q\ : std_logic;
SIGNAL \machineEtat|ALT_INV_State_cr.s_Tx_CRC~q\ : std_logic;
SIGNAL \ALT_INV_RdOut~combout\ : std_logic;
SIGNAL \ALT_INV_Start~q\ : std_logic;
SIGNAL \ALT_INV_IRQ_ELN_n~0_combout\ : std_logic;
SIGNAL \ALT_INV_int_irq~q\ : std_logic;
SIGNAL \ALT_INV_IRQEn~q\ : std_logic;
SIGNAL \serial|UT|ALT_INV_State~q\ : std_logic;
SIGNAL \parite|ALT_INV_CRC_reg\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \fifo|ALT_INV_Fifo[2][7]~q\ : std_logic;
SIGNAL \fifo|ALT_INV_Fifo[2][6]~q\ : std_logic;
SIGNAL \fifo|ALT_INV_Fifo[1][7]~q\ : std_logic;
SIGNAL \fifo|ALT_INV_Fifo[2][5]~q\ : std_logic;
SIGNAL \fifo|ALT_INV_Fifo[1][6]~q\ : std_logic;
SIGNAL \fifo|ALT_INV_Fifo[0][7]~q\ : std_logic;
SIGNAL \fifo|ALT_INV_Fifo[2][4]~q\ : std_logic;
SIGNAL \fifo|ALT_INV_Fifo[1][5]~q\ : std_logic;
SIGNAL \fifo|ALT_INV_Fifo[0][6]~q\ : std_logic;
SIGNAL \fifo|ALT_INV_Fifo[2][3]~q\ : std_logic;
SIGNAL \fifo|ALT_INV_Fifo[1][4]~q\ : std_logic;
SIGNAL \fifo|ALT_INV_Fifo[0][5]~q\ : std_logic;
SIGNAL \fifo|ALT_INV_Fifo[2][2]~q\ : std_logic;
SIGNAL \fifo|ALT_INV_Fifo[1][3]~q\ : std_logic;
SIGNAL \fifo|ALT_INV_Fifo[0][4]~q\ : std_logic;
SIGNAL \fifo|ALT_INV_Fifo[2][1]~q\ : std_logic;
SIGNAL \fifo|ALT_INV_Fifo[1][2]~q\ : std_logic;
SIGNAL \fifo|ALT_INV_Fifo[0][3]~q\ : std_logic;
SIGNAL \fifo|ALT_INV_Fifo[1][1]~q\ : std_logic;
SIGNAL \fifo|ALT_INV_Fifo[0][2]~q\ : std_logic;
SIGNAL \fifo|ALT_INV_Fifo[2][0]~q\ : std_logic;
SIGNAL \fifo|ALT_INV_Fifo[0][1]~q\ : std_logic;
SIGNAL \fifo|ALT_INV_Fifo[1][0]~q\ : std_logic;
SIGNAL \fifo|ALT_INV_Fifo[0][0]~q\ : std_logic;
SIGNAL \fifo|ALT_INV_adrFifo\ : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_Clk <= Clk;
ww_reset_n <= reset_n;
ww_rd <= rd;
ww_wr <= wr;
Line_ELN <= ww_Line_ELN;
IRQ_ELN_n <= ww_IRQ_ELN_n;
ww_D_in <= D_in;
D_out <= ww_D_out;
ww_Addr <= Addr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_counter[0]~DUPLICATE_q\ <= NOT \counter[0]~DUPLICATE_q\;
\ALT_INV_counter[2]~DUPLICATE_q\ <= NOT \counter[2]~DUPLICATE_q\;
\ALT_INV_counter[3]~DUPLICATE_q\ <= NOT \counter[3]~DUPLICATE_q\;
\ALT_INV_counter[4]~DUPLICATE_q\ <= NOT \counter[4]~DUPLICATE_q\;
\serial|UT|ALT_INV_Registres:counter[0]~DUPLICATE_q\ <= NOT \serial|UT|Registres:counter[0]~DUPLICATE_q\;
\ALT_INV_D_in[7]~input_o\ <= NOT \D_in[7]~input_o\;
\ALT_INV_D_in[6]~input_o\ <= NOT \D_in[6]~input_o\;
\ALT_INV_D_in[5]~input_o\ <= NOT \D_in[5]~input_o\;
\ALT_INV_D_in[4]~input_o\ <= NOT \D_in[4]~input_o\;
\ALT_INV_D_in[3]~input_o\ <= NOT \D_in[3]~input_o\;
\ALT_INV_D_in[2]~input_o\ <= NOT \D_in[2]~input_o\;
\ALT_INV_D_in[0]~input_o\ <= NOT \D_in[0]~input_o\;
\ALT_INV_wr~input_o\ <= NOT \wr~input_o\;
\ALT_INV_D_in[1]~input_o\ <= NOT \D_in[1]~input_o\;
\ALT_INV_Addr[1]~input_o\ <= NOT \Addr[1]~input_o\;
\ALT_INV_Addr[0]~input_o\ <= NOT \Addr[0]~input_o\;
\ALT_INV_rd~input_o\ <= NOT \rd~input_o\;
\parite|ALT_INV_WideOr30~2_combout\ <= NOT \parite|WideOr30~2_combout\;
\parite|ALT_INV_WideOr32~0_combout\ <= NOT \parite|WideOr32~0_combout\;
\parite|ALT_INV_WideOr34~0_combout\ <= NOT \parite|WideOr34~0_combout\;
\parite|ALT_INV_CRC_reg~157_combout\ <= NOT \parite|CRC_reg~157_combout\;
\parite|ALT_INV_CRC_reg~156_combout\ <= NOT \parite|CRC_reg~156_combout\;
\parite|ALT_INV_CRC_reg~155_combout\ <= NOT \parite|CRC_reg~155_combout\;
\parite|ALT_INV_CRC_reg~154_combout\ <= NOT \parite|CRC_reg~154_combout\;
\parite|ALT_INV_WideOr0~0_combout\ <= NOT \parite|WideOr0~0_combout\;
\parite|ALT_INV_CRC_reg~149_combout\ <= NOT \parite|CRC_reg~149_combout\;
\parite|ALT_INV_CRC_reg~148_combout\ <= NOT \parite|CRC_reg~148_combout\;
\parite|ALT_INV_CRC_reg~147_combout\ <= NOT \parite|CRC_reg~147_combout\;
\parite|ALT_INV_CRC_reg~146_combout\ <= NOT \parite|CRC_reg~146_combout\;
\parite|ALT_INV_WideOr2~1_combout\ <= NOT \parite|WideOr2~1_combout\;
\parite|ALT_INV_WideOr2~0_combout\ <= NOT \parite|WideOr2~0_combout\;
\parite|ALT_INV_CRC_reg~143_combout\ <= NOT \parite|CRC_reg~143_combout\;
\parite|ALT_INV_CRC_reg~142_combout\ <= NOT \parite|CRC_reg~142_combout\;
\parite|ALT_INV_CRC_reg~141_combout\ <= NOT \parite|CRC_reg~141_combout\;
\parite|ALT_INV_CRC_reg~140_combout\ <= NOT \parite|CRC_reg~140_combout\;
\parite|ALT_INV_WideOr3~0_combout\ <= NOT \parite|WideOr3~0_combout\;
\parite|ALT_INV_CRC_reg~139_combout\ <= NOT \parite|CRC_reg~139_combout\;
\parite|ALT_INV_CRC_reg~136_combout\ <= NOT \parite|CRC_reg~136_combout\;
\parite|ALT_INV_CRC_reg~135_combout\ <= NOT \parite|CRC_reg~135_combout\;
\parite|ALT_INV_Decoder0~32_combout\ <= NOT \parite|Decoder0~32_combout\;
\parite|ALT_INV_CRC_reg~134_combout\ <= NOT \parite|CRC_reg~134_combout\;
\parite|ALT_INV_CRC_reg~133_combout\ <= NOT \parite|CRC_reg~133_combout\;
\parite|ALT_INV_WideOr4~0_combout\ <= NOT \parite|WideOr4~0_combout\;
\parite|ALT_INV_LessThan0~0_combout\ <= NOT \parite|LessThan0~0_combout\;
\parite|ALT_INV_CRC_reg~132_combout\ <= NOT \parite|CRC_reg~132_combout\;
\parite|ALT_INV_Selector6~2_combout\ <= NOT \parite|Selector6~2_combout\;
\parite|ALT_INV_Selector6~1_combout\ <= NOT \parite|Selector6~1_combout\;
\parite|ALT_INV_Decoder0~31_combout\ <= NOT \parite|Decoder0~31_combout\;
\parite|ALT_INV_Selector6~0_combout\ <= NOT \parite|Selector6~0_combout\;
\parite|ALT_INV_CRC_reg~127_combout\ <= NOT \parite|CRC_reg~127_combout\;
\parite|ALT_INV_WideOr6~0_combout\ <= NOT \parite|WideOr6~0_combout\;
\parite|ALT_INV_CRC_reg~124_combout\ <= NOT \parite|CRC_reg~124_combout\;
\parite|ALT_INV_Selector7~3_combout\ <= NOT \parite|Selector7~3_combout\;
\parite|ALT_INV_Selector7~2_combout\ <= NOT \parite|Selector7~2_combout\;
\parite|ALT_INV_Selector7~1_combout\ <= NOT \parite|Selector7~1_combout\;
\parite|ALT_INV_Decoder0~30_combout\ <= NOT \parite|Decoder0~30_combout\;
\parite|ALT_INV_Selector7~0_combout\ <= NOT \parite|Selector7~0_combout\;
\parite|ALT_INV_CRC_reg~123_combout\ <= NOT \parite|CRC_reg~123_combout\;
\parite|ALT_INV_WideOr64~0_combout\ <= NOT \parite|WideOr64~0_combout\;
\parite|ALT_INV_Selector8~2_combout\ <= NOT \parite|Selector8~2_combout\;
\parite|ALT_INV_Selector8~1_combout\ <= NOT \parite|Selector8~1_combout\;
\parite|ALT_INV_Decoder0~29_combout\ <= NOT \parite|Decoder0~29_combout\;
\parite|ALT_INV_Selector8~0_combout\ <= NOT \parite|Selector8~0_combout\;
\parite|ALT_INV_CRC_reg~120_combout\ <= NOT \parite|CRC_reg~120_combout\;
\parite|ALT_INV_WideOr8~0_combout\ <= NOT \parite|WideOr8~0_combout\;
\parite|ALT_INV_Selector9~2_combout\ <= NOT \parite|Selector9~2_combout\;
\parite|ALT_INV_Selector9~1_combout\ <= NOT \parite|Selector9~1_combout\;
\parite|ALT_INV_Decoder0~28_combout\ <= NOT \parite|Decoder0~28_combout\;
\parite|ALT_INV_Selector9~0_combout\ <= NOT \parite|Selector9~0_combout\;
\parite|ALT_INV_CRC_reg~117_combout\ <= NOT \parite|CRC_reg~117_combout\;
\parite|ALT_INV_WideOr9~0_combout\ <= NOT \parite|WideOr9~0_combout\;
\parite|ALT_INV_Selector10~2_combout\ <= NOT \parite|Selector10~2_combout\;
\parite|ALT_INV_Selector10~1_combout\ <= NOT \parite|Selector10~1_combout\;
\parite|ALT_INV_Decoder0~27_combout\ <= NOT \parite|Decoder0~27_combout\;
\parite|ALT_INV_Selector10~0_combout\ <= NOT \parite|Selector10~0_combout\;
\parite|ALT_INV_CRC_reg~114_combout\ <= NOT \parite|CRC_reg~114_combout\;
\parite|ALT_INV_WideOr10~0_combout\ <= NOT \parite|WideOr10~0_combout\;
\parite|ALT_INV_CRC_reg~111_combout\ <= NOT \parite|CRC_reg~111_combout\;
\parite|ALT_INV_Selector11~3_combout\ <= NOT \parite|Selector11~3_combout\;
\parite|ALT_INV_Selector11~2_combout\ <= NOT \parite|Selector11~2_combout\;
\parite|ALT_INV_Selector11~1_combout\ <= NOT \parite|Selector11~1_combout\;
\parite|ALT_INV_Decoder0~26_combout\ <= NOT \parite|Decoder0~26_combout\;
\parite|ALT_INV_Selector11~0_combout\ <= NOT \parite|Selector11~0_combout\;
\parite|ALT_INV_CRC_reg~110_combout\ <= NOT \parite|CRC_reg~110_combout\;
\parite|ALT_INV_WideOr60~0_combout\ <= NOT \parite|WideOr60~0_combout\;
\parite|ALT_INV_Selector12~2_combout\ <= NOT \parite|Selector12~2_combout\;
\parite|ALT_INV_Selector12~1_combout\ <= NOT \parite|Selector12~1_combout\;
\parite|ALT_INV_Decoder0~25_combout\ <= NOT \parite|Decoder0~25_combout\;
\parite|ALT_INV_Selector12~0_combout\ <= NOT \parite|Selector12~0_combout\;
\parite|ALT_INV_CRC_reg~107_combout\ <= NOT \parite|CRC_reg~107_combout\;
\parite|ALT_INV_WideOr12~0_combout\ <= NOT \parite|WideOr12~0_combout\;
\parite|ALT_INV_CRC_reg~104_combout\ <= NOT \parite|CRC_reg~104_combout\;
\parite|ALT_INV_CRC_reg~103_combout\ <= NOT \parite|CRC_reg~103_combout\;
\parite|ALT_INV_Decoder0~24_combout\ <= NOT \parite|Decoder0~24_combout\;
\parite|ALT_INV_CRC_reg~102_combout\ <= NOT \parite|CRC_reg~102_combout\;
\parite|ALT_INV_CRC_reg~101_combout\ <= NOT \parite|CRC_reg~101_combout\;
\parite|ALT_INV_WideOr59~0_combout\ <= NOT \parite|WideOr59~0_combout\;
\parite|ALT_INV_WideOr61~0_combout\ <= NOT \parite|WideOr61~0_combout\;
\parite|ALT_INV_CRC_reg~98_combout\ <= NOT \parite|CRC_reg~98_combout\;
\parite|ALT_INV_Selector14~2_combout\ <= NOT \parite|Selector14~2_combout\;
\parite|ALT_INV_Selector14~1_combout\ <= NOT \parite|Selector14~1_combout\;
\parite|ALT_INV_Decoder0~23_combout\ <= NOT \parite|Decoder0~23_combout\;
\parite|ALT_INV_Selector14~0_combout\ <= NOT \parite|Selector14~0_combout\;
\parite|ALT_INV_CRC_reg~97_combout\ <= NOT \parite|CRC_reg~97_combout\;
\parite|ALT_INV_CRC_reg~94_combout\ <= NOT \parite|CRC_reg~94_combout\;
\parite|ALT_INV_CRC_reg~93_combout\ <= NOT \parite|CRC_reg~93_combout\;
\parite|ALT_INV_CRC_reg~92_combout\ <= NOT \parite|CRC_reg~92_combout\;
\parite|ALT_INV_CRC_reg~91_combout\ <= NOT \parite|CRC_reg~91_combout\;
\parite|ALT_INV_Decoder0~22_combout\ <= NOT \parite|Decoder0~22_combout\;
\parite|ALT_INV_CRC_reg~90_combout\ <= NOT \parite|CRC_reg~90_combout\;
\parite|ALT_INV_WideOr15~0_combout\ <= NOT \parite|WideOr15~0_combout\;
\parite|ALT_INV_CRC_reg~89_combout\ <= NOT \parite|CRC_reg~89_combout\;
\parite|ALT_INV_Selector16~2_combout\ <= NOT \parite|Selector16~2_combout\;
\parite|ALT_INV_Selector16~1_combout\ <= NOT \parite|Selector16~1_combout\;
\parite|ALT_INV_Decoder0~21_combout\ <= NOT \parite|Decoder0~21_combout\;
\parite|ALT_INV_Selector16~0_combout\ <= NOT \parite|Selector16~0_combout\;
\parite|ALT_INV_CRC_reg~86_combout\ <= NOT \parite|CRC_reg~86_combout\;
\parite|ALT_INV_WideOr55~1_combout\ <= NOT \parite|WideOr55~1_combout\;
\parite|ALT_INV_WideOr55~0_combout\ <= NOT \parite|WideOr55~0_combout\;
\parite|ALT_INV_CRC_reg~83_combout\ <= NOT \parite|CRC_reg~83_combout\;
\parite|ALT_INV_CRC_reg~82_combout\ <= NOT \parite|CRC_reg~82_combout\;
\parite|ALT_INV_Selector17~2_combout\ <= NOT \parite|Selector17~2_combout\;
\parite|ALT_INV_Selector17~1_combout\ <= NOT \parite|Selector17~1_combout\;
\parite|ALT_INV_Decoder0~20_combout\ <= NOT \parite|Decoder0~20_combout\;
\parite|ALT_INV_Selector17~0_combout\ <= NOT \parite|Selector17~0_combout\;
\parite|ALT_INV_WideOr17~0_combout\ <= NOT \parite|WideOr17~0_combout\;
\parite|ALT_INV_Selector18~2_combout\ <= NOT \parite|Selector18~2_combout\;
\parite|ALT_INV_Selector18~1_combout\ <= NOT \parite|Selector18~1_combout\;
\parite|ALT_INV_Decoder0~19_combout\ <= NOT \parite|Decoder0~19_combout\;
\parite|ALT_INV_Selector18~0_combout\ <= NOT \parite|Selector18~0_combout\;
\parite|ALT_INV_CRC_reg~79_combout\ <= NOT \parite|CRC_reg~79_combout\;
\parite|ALT_INV_WideOr53~1_combout\ <= NOT \parite|WideOr53~1_combout\;
\parite|ALT_INV_WideOr53~0_combout\ <= NOT \parite|WideOr53~0_combout\;
\parite|ALT_INV_Selector19~2_combout\ <= NOT \parite|Selector19~2_combout\;
\parite|ALT_INV_Selector19~1_combout\ <= NOT \parite|Selector19~1_combout\;
\parite|ALT_INV_Decoder0~18_combout\ <= NOT \parite|Decoder0~18_combout\;
\parite|ALT_INV_Selector19~0_combout\ <= NOT \parite|Selector19~0_combout\;
\parite|ALT_INV_CRC_reg~76_combout\ <= NOT \parite|CRC_reg~76_combout\;
\parite|ALT_INV_WideOr52~1_combout\ <= NOT \parite|WideOr52~1_combout\;
\parite|ALT_INV_WideOr52~0_combout\ <= NOT \parite|WideOr52~0_combout\;
\parite|ALT_INV_Selector20~2_combout\ <= NOT \parite|Selector20~2_combout\;
\parite|ALT_INV_Selector20~1_combout\ <= NOT \parite|Selector20~1_combout\;
\parite|ALT_INV_Decoder0~17_combout\ <= NOT \parite|Decoder0~17_combout\;
\parite|ALT_INV_Selector20~0_combout\ <= NOT \parite|Selector20~0_combout\;
\parite|ALT_INV_CRC_reg~73_combout\ <= NOT \parite|CRC_reg~73_combout\;
\parite|ALT_INV_WideOr51~1_combout\ <= NOT \parite|WideOr51~1_combout\;
\parite|ALT_INV_WideOr51~0_combout\ <= NOT \parite|WideOr51~0_combout\;
\fifo|ALT_INV_Fifo[3][7]~q\ <= NOT \fifo|Fifo[3][7]~q\;
\parite|ALT_INV_CRC_reg~70_combout\ <= NOT \parite|CRC_reg~70_combout\;
\parite|ALT_INV_CRC_reg~69_combout\ <= NOT \parite|CRC_reg~69_combout\;
\parite|ALT_INV_CRC_reg~68_combout\ <= NOT \parite|CRC_reg~68_combout\;
\parite|ALT_INV_Decoder0~16_combout\ <= NOT \parite|Decoder0~16_combout\;
\parite|ALT_INV_CRC_reg~67_combout\ <= NOT \parite|CRC_reg~67_combout\;
\parite|ALT_INV_CRC_reg~66_combout\ <= NOT \parite|CRC_reg~66_combout\;
\fifo|ALT_INV_Fifo[3][6]~q\ <= NOT \fifo|Fifo[3][6]~q\;
\parite|ALT_INV_CRC_reg~63_combout\ <= NOT \parite|CRC_reg~63_combout\;
\parite|ALT_INV_CRC_reg~62_combout\ <= NOT \parite|CRC_reg~62_combout\;
\parite|ALT_INV_CRC_reg~61_combout\ <= NOT \parite|CRC_reg~61_combout\;
\parite|ALT_INV_Decoder0~15_combout\ <= NOT \parite|Decoder0~15_combout\;
\parite|ALT_INV_CRC_reg~60_combout\ <= NOT \parite|CRC_reg~60_combout\;
\parite|ALT_INV_CRC_reg~59_combout\ <= NOT \parite|CRC_reg~59_combout\;
\parite|ALT_INV_WideOr22~0_combout\ <= NOT \parite|WideOr22~0_combout\;
\fifo|ALT_INV_Fifo[3][5]~q\ <= NOT \fifo|Fifo[3][5]~q\;
\parite|ALT_INV_CRC_reg~56_combout\ <= NOT \parite|CRC_reg~56_combout\;
\parite|ALT_INV_Selector23~2_combout\ <= NOT \parite|Selector23~2_combout\;
\parite|ALT_INV_Selector23~1_combout\ <= NOT \parite|Selector23~1_combout\;
\parite|ALT_INV_Decoder0~14_combout\ <= NOT \parite|Decoder0~14_combout\;
\parite|ALT_INV_Selector23~0_combout\ <= NOT \parite|Selector23~0_combout\;
\parite|ALT_INV_CRC_reg~55_combout\ <= NOT \parite|CRC_reg~55_combout\;
\parite|ALT_INV_WideOr23~0_combout\ <= NOT \parite|WideOr23~0_combout\;
\fifo|ALT_INV_Fifo[3][4]~q\ <= NOT \fifo|Fifo[3][4]~q\;
\parite|ALT_INV_CRC_reg~53_combout\ <= NOT \parite|CRC_reg~53_combout\;
\parite|ALT_INV_CRC_reg~52_combout\ <= NOT \parite|CRC_reg~52_combout\;
\parite|ALT_INV_CRC_reg~51_combout\ <= NOT \parite|CRC_reg~51_combout\;
\parite|ALT_INV_Decoder0~13_combout\ <= NOT \parite|Decoder0~13_combout\;
\parite|ALT_INV_CRC_reg~50_combout\ <= NOT \parite|CRC_reg~50_combout\;
\parite|ALT_INV_WideOr24~0_combout\ <= NOT \parite|WideOr24~0_combout\;
\parite|ALT_INV_WideOr47~0_combout\ <= NOT \parite|WideOr47~0_combout\;
\fifo|ALT_INV_Fifo[3][3]~q\ <= NOT \fifo|Fifo[3][3]~q\;
\serial|UT|ALT_INV_Data\(7) <= NOT \serial|UT|Data\(7);
\serial|UT|ALT_INV_Dec\(7) <= NOT \serial|UT|Dec\(7);
\parite|ALT_INV_Selector25~2_combout\ <= NOT \parite|Selector25~2_combout\;
\parite|ALT_INV_Selector25~1_combout\ <= NOT \parite|Selector25~1_combout\;
\parite|ALT_INV_Decoder0~12_combout\ <= NOT \parite|Decoder0~12_combout\;
\parite|ALT_INV_Selector25~0_combout\ <= NOT \parite|Selector25~0_combout\;
\parite|ALT_INV_WideOr46~0_combout\ <= NOT \parite|WideOr46~0_combout\;
\parite|ALT_INV_WideOr25~0_combout\ <= NOT \parite|WideOr25~0_combout\;
\fifo|ALT_INV_Fifo[3][2]~q\ <= NOT \fifo|Fifo[3][2]~q\;
\serial|UT|ALT_INV_Data\(6) <= NOT \serial|UT|Data\(6);
\serial|UT|ALT_INV_Dec\(6) <= NOT \serial|UT|Dec\(6);
\parite|ALT_INV_CRC_reg~46_combout\ <= NOT \parite|CRC_reg~46_combout\;
\parite|ALT_INV_CRC_reg~45_combout\ <= NOT \parite|CRC_reg~45_combout\;
\parite|ALT_INV_CRC_reg~44_combout\ <= NOT \parite|CRC_reg~44_combout\;
\parite|ALT_INV_Decoder0~11_combout\ <= NOT \parite|Decoder0~11_combout\;
\parite|ALT_INV_CRC_reg~43_combout\ <= NOT \parite|CRC_reg~43_combout\;
\parite|ALT_INV_WideOr26~0_combout\ <= NOT \parite|WideOr26~0_combout\;
\parite|ALT_INV_WideOr45~0_combout\ <= NOT \parite|WideOr45~0_combout\;
\parite|ALT_INV_CRC_reg~40_combout\ <= NOT \parite|CRC_reg~40_combout\;
\parite|ALT_INV_CRC_reg~39_combout\ <= NOT \parite|CRC_reg~39_combout\;
\parite|ALT_INV_WideOr37~0_combout\ <= NOT \parite|WideOr37~0_combout\;
\fifo|ALT_INV_Fifo[3][1]~q\ <= NOT \fifo|Fifo[3][1]~q\;
\parite|ALT_INV_CRC_reg~36_combout\ <= NOT \parite|CRC_reg~36_combout\;
\parite|ALT_INV_CRC_reg~35_combout\ <= NOT \parite|CRC_reg~35_combout\;
\parite|ALT_INV_WideOr33~0_combout\ <= NOT \parite|WideOr33~0_combout\;
\parite|ALT_INV_WideOr38~0_combout\ <= NOT \parite|WideOr38~0_combout\;
\serial|UT|ALT_INV_Data\(5) <= NOT \serial|UT|Data\(5);
\serial|UT|ALT_INV_Dec\(5) <= NOT \serial|UT|Dec\(5);
\parite|ALT_INV_Selector27~2_combout\ <= NOT \parite|Selector27~2_combout\;
\parite|ALT_INV_Selector27~1_combout\ <= NOT \parite|Selector27~1_combout\;
\parite|ALT_INV_Decoder0~10_combout\ <= NOT \parite|Decoder0~10_combout\;
\parite|ALT_INV_Selector27~0_combout\ <= NOT \parite|Selector27~0_combout\;
\parite|ALT_INV_CRC_reg~32_combout\ <= NOT \parite|CRC_reg~32_combout\;
\parite|ALT_INV_WideOr27~0_combout\ <= NOT \parite|WideOr27~0_combout\;
\parite|ALT_INV_WideOr44~0_combout\ <= NOT \parite|WideOr44~0_combout\;
\parite|ALT_INV_CRC_reg~29_combout\ <= NOT \parite|CRC_reg~29_combout\;
\parite|ALT_INV_WideOr35~1_combout\ <= NOT \parite|WideOr35~1_combout\;
\parite|ALT_INV_WideOr30~1_combout\ <= NOT \parite|WideOr30~1_combout\;
\parite|ALT_INV_WideOr36~0_combout\ <= NOT \parite|WideOr36~0_combout\;
\parite|ALT_INV_CRC_reg~26_combout\ <= NOT \parite|CRC_reg~26_combout\;
\parite|ALT_INV_CRC_reg~25_combout\ <= NOT \parite|CRC_reg~25_combout\;
\parite|ALT_INV_WideOr39~0_combout\ <= NOT \parite|WideOr39~0_combout\;
\serial|UT|ALT_INV_Data\(4) <= NOT \serial|UT|Data\(4);
\serial|UT|ALT_INV_Dec\(4) <= NOT \serial|UT|Dec\(4);
\fifo|ALT_INV_Fifo[3][0]~q\ <= NOT \fifo|Fifo[3][0]~q\;
\parite|ALT_INV_Selector28~2_combout\ <= NOT \parite|Selector28~2_combout\;
\parite|ALT_INV_Selector28~1_combout\ <= NOT \parite|Selector28~1_combout\;
\parite|ALT_INV_Decoder0~9_combout\ <= NOT \parite|Decoder0~9_combout\;
\parite|ALT_INV_Selector28~0_combout\ <= NOT \parite|Selector28~0_combout\;
\parite|ALT_INV_CRC_reg~22_combout\ <= NOT \parite|CRC_reg~22_combout\;
\parite|ALT_INV_WideOr28~0_combout\ <= NOT \parite|WideOr28~0_combout\;
\parite|ALT_INV_WideOr43~0_combout\ <= NOT \parite|WideOr43~0_combout\;
\parite|ALT_INV_WideOr35~0_combout\ <= NOT \parite|WideOr35~0_combout\;
\parite|ALT_INV_CRC_reg~19_combout\ <= NOT \parite|CRC_reg~19_combout\;
\parite|ALT_INV_CRC_reg~18_combout\ <= NOT \parite|CRC_reg~18_combout\;
\parite|ALT_INV_CRC_reg~15_combout\ <= NOT \parite|CRC_reg~15_combout\;
\parite|ALT_INV_CRC_reg~14_combout\ <= NOT \parite|CRC_reg~14_combout\;
\parite|ALT_INV_CRC_reg~13_combout\ <= NOT \parite|CRC_reg~13_combout\;
\parite|ALT_INV_CRC_reg~12_combout\ <= NOT \parite|CRC_reg~12_combout\;
\parite|ALT_INV_CRC_reg~11_combout\ <= NOT \parite|CRC_reg~11_combout\;
\parite|ALT_INV_WideOr31~1_combout\ <= NOT \parite|WideOr31~1_combout\;
\parite|ALT_INV_WideOr30~0_combout\ <= NOT \parite|WideOr30~0_combout\;
\parite|ALT_INV_CRC_reg~10_combout\ <= NOT \parite|CRC_reg~10_combout\;
\serial|UT|ALT_INV_Data\(3) <= NOT \serial|UT|Data\(3);
\serial|UT|ALT_INV_Dec\(3) <= NOT \serial|UT|Dec\(3);
\parite|ALT_INV_CRC_reg~7_combout\ <= NOT \parite|CRC_reg~7_combout\;
\parite|ALT_INV_CRC_reg~6_combout\ <= NOT \parite|CRC_reg~6_combout\;
\parite|ALT_INV_Decoder0~8_combout\ <= NOT \parite|Decoder0~8_combout\;
\parite|ALT_INV_CRC_reg~5_combout\ <= NOT \parite|CRC_reg~5_combout\;
\parite|ALT_INV_CRC_reg~4_combout\ <= NOT \parite|CRC_reg~4_combout\;
\parite|ALT_INV_WideOr42~1_combout\ <= NOT \parite|WideOr42~1_combout\;
\parite|ALT_INV_WideOr42~0_combout\ <= NOT \parite|WideOr42~0_combout\;
\parite|ALT_INV_level~5_combout\ <= NOT \parite|level~5_combout\;
\parite|ALT_INV_Add2~0_combout\ <= NOT \parite|Add2~0_combout\;
\parite|ALT_INV_WideOr20~0_combout\ <= NOT \parite|WideOr20~0_combout\;
\parite|ALT_INV_process_0~1_combout\ <= NOT \parite|process_0~1_combout\;
\serial|UT|ALT_INV_Data\(2) <= NOT \serial|UT|Data\(2);
\serial|UT|ALT_INV_Dec\(2) <= NOT \serial|UT|Dec\(2);
\parite|ALT_INV_process_0~0_combout\ <= NOT \parite|process_0~0_combout\;
\parite|ALT_INV_Selector30~2_combout\ <= NOT \parite|Selector30~2_combout\;
\parite|ALT_INV_Decoder0~7_combout\ <= NOT \parite|Decoder0~7_combout\;
\parite|ALT_INV_Decoder0~6_combout\ <= NOT \parite|Decoder0~6_combout\;
\parite|ALT_INV_Decoder0~5_combout\ <= NOT \parite|Decoder0~5_combout\;
\parite|ALT_INV_Selector30~1_combout\ <= NOT \parite|Selector30~1_combout\;
\parite|ALT_INV_Decoder0~4_combout\ <= NOT \parite|Decoder0~4_combout\;
\parite|ALT_INV_Decoder0~3_combout\ <= NOT \parite|Decoder0~3_combout\;
\parite|ALT_INV_Decoder0~2_combout\ <= NOT \parite|Decoder0~2_combout\;
\parite|ALT_INV_Selector30~0_combout\ <= NOT \parite|Selector30~0_combout\;
\parite|ALT_INV_Decoder0~1_combout\ <= NOT \parite|Decoder0~1_combout\;
\parite|ALT_INV_Decoder0~0_combout\ <= NOT \parite|Decoder0~0_combout\;
\parite|ALT_INV_Decoder1~1_combout\ <= NOT \parite|Decoder1~1_combout\;
\parite|ALT_INV_WideOr31~0_combout\ <= NOT \parite|WideOr31~0_combout\;
\parite|ALT_INV_WideOr41~0_combout\ <= NOT \parite|WideOr41~0_combout\;
\parite|ALT_INV_Decoder1~0_combout\ <= NOT \parite|Decoder1~0_combout\;
\parite|ALT_INV_level\(4) <= NOT \parite|level\(4);
\parite|ALT_INV_level\(5) <= NOT \parite|level\(5);
\parite|ALT_INV_level\(3) <= NOT \parite|level\(3);
\parite|ALT_INV_level\(2) <= NOT \parite|level\(2);
\parite|ALT_INV_level\(1) <= NOT \parite|level\(1);
\parite|ALT_INV_level\(0) <= NOT \parite|level\(0);
\ALT_INV_Add0~4_combout\ <= NOT \Add0~4_combout\;
\serial|UT|ALT_INV_Registres~0_combout\ <= NOT \serial|UT|Registres~0_combout\;
\serial|UT|ALT_INV_next_b~0_combout\ <= NOT \serial|UT|next_b~0_combout\;
\serial|UT|ALT_INV_Data\(1) <= NOT \serial|UT|Data\(1);
\serial|UT|ALT_INV_Dec\(1) <= NOT \serial|UT|Dec\(1);
\ALT_INV_rdFIFO_delay~q\ <= NOT \rdFIFO_delay~q\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_Add0~3_combout\ <= NOT \Add0~3_combout\;
\ALT_INV_Add0~2_combout\ <= NOT \Add0~2_combout\;
\ALT_INV_Add0~1_combout\ <= NOT \Add0~1_combout\;
\ALT_INV_Add0~0_combout\ <= NOT \Add0~0_combout\;
ALT_INV_counter(0) <= NOT counter(0);
ALT_INV_counter(1) <= NOT counter(1);
ALT_INV_counter(2) <= NOT counter(2);
ALT_INV_counter(3) <= NOT counter(3);
ALT_INV_counter(4) <= NOT counter(4);
ALT_INV_counter(5) <= NOT counter(5);
\serial|UC|ALT_INV_Etat_cr~9_combout\ <= NOT \serial|UC|Etat_cr~9_combout\;
\serial|UT|ALT_INV_Add0~0_combout\ <= NOT \serial|UT|Add0~0_combout\;
\serial|UT|ALT_INV_Registres:counter[1]~q\ <= NOT \serial|UT|Registres:counter[1]~q\;
\serial|UT|ALT_INV_Registres:counter[0]~q\ <= NOT \serial|UT|Registres:counter[0]~q\;
\serial|UT|ALT_INV_Registres:counter[2]~q\ <= NOT \serial|UT|Registres:counter[2]~q\;
\serial|UT|ALT_INV_codingDec~0_combout\ <= NOT \serial|UT|codingDec~0_combout\;
\serial|UT|ALT_INV_Dec\(0) <= NOT \serial|UT|Dec\(0);
\serial|UT|ALT_INV_stuffing~0_combout\ <= NOT \serial|UT|stuffing~0_combout\;
\serial|UT|ALT_INV_Delay_b2~q\ <= NOT \serial|UT|Delay_b2~q\;
\serial|UT|ALT_INV_Delay_b1~q\ <= NOT \serial|UT|Delay_b1~q\;
\serial|UT|ALT_INV_Delay_b0~q\ <= NOT \serial|UT|Delay_b0~q\;
\serial|UT|ALT_INV_next_b~q\ <= NOT \serial|UT|next_b~q\;
\serial|UT|ALT_INV_Data\(0) <= NOT \serial|UT|Data\(0);
\ALT_INV_wrFIFO~combout\ <= NOT \wrFIFO~combout\;
\ALT_INV_rdFIFO~q\ <= NOT \rdFIFO~q\;
\machineEtat|ALT_INV_Selector7~0_combout\ <= NOT \machineEtat|Selector7~0_combout\;
\machineEtat|ALT_INV_Selector6~1_combout\ <= NOT \machineEtat|Selector6~1_combout\;
\machineEtat|ALT_INV_Selector6~0_combout\ <= NOT \machineEtat|Selector6~0_combout\;
\machineEtat|ALT_INV_State_cr.s_Tx_CRC~1_combout\ <= NOT \machineEtat|State_cr.s_Tx_CRC~1_combout\;
\machineEtat|ALT_INV_State_cr.s_Init~q\ <= NOT \machineEtat|State_cr.s_Init~q\;
\machineEtat|ALT_INV_Selector2~0_combout\ <= NOT \machineEtat|Selector2~0_combout\;
\serial|UC|ALT_INV_Selector5~0_combout\ <= NOT \serial|UC|Selector5~0_combout\;
\serial|UC|ALT_INV_Etat_cr.Serial~q\ <= NOT \serial|UC|Etat_cr.Serial~q\;
\serial|UT|ALT_INV_serialBusy~q\ <= NOT \serial|UT|serialBusy~q\;
\serial|UC|ALT_INV_Etat_cr.Load~q\ <= NOT \serial|UC|Etat_cr.Load~q\;
\serial|UT|ALT_INV_codingIn~q\ <= NOT \serial|UT|codingIn~q\;
\serial|UT|ALT_INV_codingDec~q\ <= NOT \serial|UT|codingDec~q\;
\serial|UT|ALT_INV_out_b~q\ <= NOT \serial|UT|out_b~q\;
ALT_INV_clk_div(5) <= NOT clk_div(5);
ALT_INV_clk_div(4) <= NOT clk_div(4);
\ALT_INV_D_out~5_combout\ <= NOT \D_out~5_combout\;
ALT_INV_clk_div(3) <= NOT clk_div(3);
ALT_INV_clk_div(2) <= NOT clk_div(2);
ALT_INV_clk_div(1) <= NOT clk_div(1);
ALT_INV_clk_div(0) <= NOT clk_div(0);
\fifo|ALT_INV_Equal0~0_combout\ <= NOT \fifo|Equal0~0_combout\;
\machineEtat|ALT_INV_State_cr.s_Tx_Data~q\ <= NOT \machineEtat|State_cr.s_Tx_Data~q\;
\machineEtat|ALT_INV_State_cr.s_Tx_CRC~0_combout\ <= NOT \machineEtat|State_cr.s_Tx_CRC~0_combout\;
\serial|UC|ALT_INV_Etat_cr.DRq_Serial~q\ <= NOT \serial|UC|Etat_cr.DRq_Serial~q\;
\serial|UC|ALT_INV_Etat_cr.Idle~q\ <= NOT \serial|UC|Etat_cr.Idle~q\;
\machineEtat|ALT_INV_State_cr.s_Tx_Start~q\ <= NOT \machineEtat|State_cr.s_Tx_Start~q\;
\machineEtat|ALT_INV_State_cr.s_Tx_CRC~q\ <= NOT \machineEtat|State_cr.s_Tx_CRC~q\;
\ALT_INV_RdOut~combout\ <= NOT \RdOut~combout\;
\ALT_INV_Start~q\ <= NOT \Start~q\;
\ALT_INV_IRQ_ELN_n~0_combout\ <= NOT \IRQ_ELN_n~0_combout\;
\ALT_INV_int_irq~q\ <= NOT \int_irq~q\;
\ALT_INV_IRQEn~q\ <= NOT \IRQEn~q\;
\serial|UT|ALT_INV_State~q\ <= NOT \serial|UT|State~q\;
\parite|ALT_INV_CRC_reg\(0) <= NOT \parite|CRC_reg\(0);
\parite|ALT_INV_CRC_reg\(1) <= NOT \parite|CRC_reg\(1);
\parite|ALT_INV_CRC_reg\(2) <= NOT \parite|CRC_reg\(2);
\parite|ALT_INV_CRC_reg\(3) <= NOT \parite|CRC_reg\(3);
\parite|ALT_INV_CRC_reg\(4) <= NOT \parite|CRC_reg\(4);
\parite|ALT_INV_CRC_reg\(5) <= NOT \parite|CRC_reg\(5);
\parite|ALT_INV_CRC_reg\(6) <= NOT \parite|CRC_reg\(6);
\parite|ALT_INV_CRC_reg\(7) <= NOT \parite|CRC_reg\(7);
\parite|ALT_INV_CRC_reg\(8) <= NOT \parite|CRC_reg\(8);
\parite|ALT_INV_CRC_reg\(9) <= NOT \parite|CRC_reg\(9);
\parite|ALT_INV_CRC_reg\(10) <= NOT \parite|CRC_reg\(10);
\parite|ALT_INV_CRC_reg\(11) <= NOT \parite|CRC_reg\(11);
\parite|ALT_INV_CRC_reg\(12) <= NOT \parite|CRC_reg\(12);
\parite|ALT_INV_CRC_reg\(13) <= NOT \parite|CRC_reg\(13);
\parite|ALT_INV_CRC_reg\(14) <= NOT \parite|CRC_reg\(14);
\parite|ALT_INV_CRC_reg\(15) <= NOT \parite|CRC_reg\(15);
\parite|ALT_INV_CRC_reg\(16) <= NOT \parite|CRC_reg\(16);
\parite|ALT_INV_CRC_reg\(17) <= NOT \parite|CRC_reg\(17);
\parite|ALT_INV_CRC_reg\(18) <= NOT \parite|CRC_reg\(18);
\parite|ALT_INV_CRC_reg\(19) <= NOT \parite|CRC_reg\(19);
\parite|ALT_INV_CRC_reg\(20) <= NOT \parite|CRC_reg\(20);
\parite|ALT_INV_CRC_reg\(21) <= NOT \parite|CRC_reg\(21);
\parite|ALT_INV_CRC_reg\(22) <= NOT \parite|CRC_reg\(22);
\fifo|ALT_INV_Fifo[2][7]~q\ <= NOT \fifo|Fifo[2][7]~q\;
\parite|ALT_INV_CRC_reg\(23) <= NOT \parite|CRC_reg\(23);
\fifo|ALT_INV_Fifo[2][6]~q\ <= NOT \fifo|Fifo[2][6]~q\;
\fifo|ALT_INV_Fifo[1][7]~q\ <= NOT \fifo|Fifo[1][7]~q\;
\parite|ALT_INV_CRC_reg\(24) <= NOT \parite|CRC_reg\(24);
\fifo|ALT_INV_Fifo[2][5]~q\ <= NOT \fifo|Fifo[2][5]~q\;
\fifo|ALT_INV_Fifo[1][6]~q\ <= NOT \fifo|Fifo[1][6]~q\;
\fifo|ALT_INV_Fifo[0][7]~q\ <= NOT \fifo|Fifo[0][7]~q\;
\parite|ALT_INV_CRC_reg\(25) <= NOT \parite|CRC_reg\(25);
\fifo|ALT_INV_Fifo[2][4]~q\ <= NOT \fifo|Fifo[2][4]~q\;
\fifo|ALT_INV_Fifo[1][5]~q\ <= NOT \fifo|Fifo[1][5]~q\;
\fifo|ALT_INV_Fifo[0][6]~q\ <= NOT \fifo|Fifo[0][6]~q\;
\parite|ALT_INV_CRC_reg\(26) <= NOT \parite|CRC_reg\(26);
\fifo|ALT_INV_Fifo[2][3]~q\ <= NOT \fifo|Fifo[2][3]~q\;
\fifo|ALT_INV_Fifo[1][4]~q\ <= NOT \fifo|Fifo[1][4]~q\;
\fifo|ALT_INV_Fifo[0][5]~q\ <= NOT \fifo|Fifo[0][5]~q\;
\parite|ALT_INV_CRC_reg\(27) <= NOT \parite|CRC_reg\(27);
\fifo|ALT_INV_Fifo[2][2]~q\ <= NOT \fifo|Fifo[2][2]~q\;
\fifo|ALT_INV_Fifo[1][3]~q\ <= NOT \fifo|Fifo[1][3]~q\;
\fifo|ALT_INV_Fifo[0][4]~q\ <= NOT \fifo|Fifo[0][4]~q\;
\parite|ALT_INV_CRC_reg\(28) <= NOT \parite|CRC_reg\(28);
\parite|ALT_INV_CRC_reg\(36) <= NOT \parite|CRC_reg\(36);
\fifo|ALT_INV_Fifo[2][1]~q\ <= NOT \fifo|Fifo[2][1]~q\;
\fifo|ALT_INV_Fifo[1][2]~q\ <= NOT \fifo|Fifo[1][2]~q\;
\parite|ALT_INV_CRC_reg\(35) <= NOT \parite|CRC_reg\(35);
\fifo|ALT_INV_Fifo[0][3]~q\ <= NOT \fifo|Fifo[0][3]~q\;
\parite|ALT_INV_CRC_reg\(29) <= NOT \parite|CRC_reg\(29);
\parite|ALT_INV_CRC_reg\(37) <= NOT \parite|CRC_reg\(37);
\fifo|ALT_INV_Fifo[1][1]~q\ <= NOT \fifo|Fifo[1][1]~q\;
\parite|ALT_INV_CRC_reg\(34) <= NOT \parite|CRC_reg\(34);
\fifo|ALT_INV_Fifo[0][2]~q\ <= NOT \fifo|Fifo[0][2]~q\;
\fifo|ALT_INV_Fifo[2][0]~q\ <= NOT \fifo|Fifo[2][0]~q\;
\parite|ALT_INV_CRC_reg\(30) <= NOT \parite|CRC_reg\(30);
\parite|ALT_INV_CRC_reg\(38) <= NOT \parite|CRC_reg\(38);
\parite|ALT_INV_CRC_reg\(33) <= NOT \parite|CRC_reg\(33);
\fifo|ALT_INV_Fifo[0][1]~q\ <= NOT \fifo|Fifo[0][1]~q\;
\fifo|ALT_INV_Fifo[1][0]~q\ <= NOT \fifo|Fifo[1][0]~q\;
\parite|ALT_INV_CRC_reg\(31) <= NOT \parite|CRC_reg\(31);
\parite|ALT_INV_CRC_reg\(39) <= NOT \parite|CRC_reg\(39);
\fifo|ALT_INV_Fifo[0][0]~q\ <= NOT \fifo|Fifo[0][0]~q\;
\parite|ALT_INV_CRC_reg\(32) <= NOT \parite|CRC_reg\(32);
\fifo|ALT_INV_adrFifo\(1) <= NOT \fifo|adrFifo\(1);
\fifo|ALT_INV_adrFifo\(0) <= NOT \fifo|adrFifo\(0);
\fifo|ALT_INV_adrFifo\(2) <= NOT \fifo|adrFifo\(2);

-- Location: IOOBUF_X54_Y14_N62
\Line_ELN~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \serial|UT|State~q\,
	devoe => ww_devoe,
	o => ww_Line_ELN);

-- Location: IOOBUF_X54_Y19_N22
\IRQ_ELN_n~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_IRQ_ELN_n~0_combout\,
	devoe => ww_devoe,
	o => ww_IRQ_ELN_n);

-- Location: IOOBUF_X54_Y20_N39
\D_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D_out~0_combout\,
	devoe => ww_devoe,
	o => ww_D_out(0));

-- Location: IOOBUF_X54_Y20_N5
\D_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D_out~1_combout\,
	devoe => ww_devoe,
	o => ww_D_out(1));

-- Location: IOOBUF_X54_Y16_N39
\D_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D_out~2_combout\,
	devoe => ww_devoe,
	o => ww_D_out(2));

-- Location: IOOBUF_X54_Y17_N22
\D_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D_out~3_combout\,
	devoe => ww_devoe,
	o => ww_D_out(3));

-- Location: IOOBUF_X54_Y19_N5
\D_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D_out~4_combout\,
	devoe => ww_devoe,
	o => ww_D_out(4));

-- Location: IOOBUF_X54_Y17_N56
\D_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_D_out~5_combout\,
	devoe => ww_devoe,
	o => ww_D_out(5));

-- Location: IOOBUF_X54_Y21_N5
\D_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D_out~6_combout\,
	devoe => ww_devoe,
	o => ww_D_out(6));

-- Location: IOOBUF_X54_Y20_N56
\D_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D_out~7_combout\,
	devoe => ww_devoe,
	o => ww_D_out(7));

-- Location: IOIBUF_X54_Y18_N61
\Clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G10
\Clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~input_o\,
	outclk => \Clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X54_Y16_N55
\D_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(7),
	o => \D_in[7]~input_o\);

-- Location: LABCELL_X53_Y21_N42
\t_rst~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \t_rst~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \t_rst~feeder_combout\);

-- Location: IOIBUF_X54_Y19_N55
\reset_n~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: FF_X53_Y21_N44
t_rst : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \t_rst~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_rst~q\);

-- Location: FF_X53_Y19_N35
SynRst : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \t_rst~q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SynRst~q\);

-- Location: IOIBUF_X54_Y21_N21
\Addr[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Addr(0),
	o => \Addr[0]~input_o\);

-- Location: IOIBUF_X54_Y20_N21
\wr~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr,
	o => \wr~input_o\);

-- Location: IOIBUF_X54_Y21_N38
\Addr[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Addr(1),
	o => \Addr[1]~input_o\);

-- Location: LABCELL_X47_Y21_N30
ldCtrl : cyclonev_lcell_comb
-- Equation(s):
-- \ldCtrl~combout\ = ( !\Addr[1]~input_o\ & ( (\Addr[0]~input_o\ & \wr~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Addr[0]~input_o\,
	datac => \ALT_INV_wr~input_o\,
	dataf => \ALT_INV_Addr[1]~input_o\,
	combout => \ldCtrl~combout\);

-- Location: FF_X49_Y21_N17
\clk_div[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \D_in[7]~input_o\,
	clrn => \SynRst~q\,
	sload => VCC,
	ena => \ldCtrl~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(5));

-- Location: IOIBUF_X54_Y17_N38
\D_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(6),
	o => \D_in[6]~input_o\);

-- Location: FF_X49_Y21_N14
\clk_div[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \D_in[6]~input_o\,
	clrn => \SynRst~q\,
	sload => VCC,
	ena => \ldCtrl~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(4));

-- Location: FF_X50_Y21_N32
\counter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \counter~5_combout\,
	clrn => \SynRst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[0]~DUPLICATE_q\);

-- Location: LABCELL_X50_Y21_N18
\counter~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter~2_combout\ = ( \LessThan0~1_combout\ & ( \Add0~2_combout\ & ( (!\Add0~0_combout\ & (((!\Add0~1_combout\) # (clk_div(5))) # (clk_div(4)))) # (\Add0~0_combout\ & (clk_div(5) & ((!\Add0~1_combout\) # (clk_div(4))))) ) ) ) # ( !\LessThan0~1_combout\ 
-- & ( \Add0~2_combout\ & ( (!\Add0~0_combout\ & (((clk_div(4) & !\Add0~1_combout\)) # (clk_div(5)))) # (\Add0~0_combout\ & (clk_div(4) & (clk_div(5) & !\Add0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001001101000011001100111101001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clk_div(4),
	datab => \ALT_INV_Add0~0_combout\,
	datac => ALT_INV_clk_div(5),
	datad => \ALT_INV_Add0~1_combout\,
	datae => \ALT_INV_LessThan0~1_combout\,
	dataf => \ALT_INV_Add0~2_combout\,
	combout => \counter~2_combout\);

-- Location: FF_X50_Y21_N20
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \counter~2_combout\,
	clrn => \SynRst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LABCELL_X50_Y21_N45
\counter~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter~1_combout\ = ( \Add0~0_combout\ & ( (clk_div(5) & (\Add0~1_combout\ & (clk_div(4) & \LessThan0~1_combout\))) ) ) # ( !\Add0~0_combout\ & ( (\Add0~1_combout\ & (((clk_div(4) & \LessThan0~1_combout\)) # (clk_div(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010011000100010001001100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clk_div(5),
	datab => \ALT_INV_Add0~1_combout\,
	datac => ALT_INV_clk_div(4),
	datad => \ALT_INV_LessThan0~1_combout\,
	dataf => \ALT_INV_Add0~0_combout\,
	combout => \counter~1_combout\);

-- Location: FF_X50_Y21_N46
\counter[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \counter~1_combout\,
	clrn => \SynRst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[4]~DUPLICATE_q\);

-- Location: LABCELL_X50_Y21_N51
\Add0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = ( \counter[2]~DUPLICATE_q\ & ( counter(0) & ( !counter(1) ) ) ) # ( !\counter[2]~DUPLICATE_q\ & ( counter(0) & ( counter(1) ) ) ) # ( \counter[2]~DUPLICATE_q\ & ( !counter(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(1),
	datae => \ALT_INV_counter[2]~DUPLICATE_q\,
	dataf => ALT_INV_counter(0),
	combout => \Add0~3_combout\);

-- Location: LABCELL_X50_Y21_N21
\counter~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter~3_combout\ = ( \LessThan0~1_combout\ & ( \Add0~3_combout\ & ( (!\Add0~0_combout\ & (((!\Add0~1_combout\) # (clk_div(5))) # (clk_div(4)))) # (\Add0~0_combout\ & (clk_div(5) & ((!\Add0~1_combout\) # (clk_div(4))))) ) ) ) # ( !\LessThan0~1_combout\ 
-- & ( \Add0~3_combout\ & ( (!\Add0~0_combout\ & (((clk_div(4) & !\Add0~1_combout\)) # (clk_div(5)))) # (\Add0~0_combout\ & (clk_div(4) & (!\Add0~1_combout\ & clk_div(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000110111001100010011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clk_div(4),
	datab => \ALT_INV_Add0~0_combout\,
	datac => \ALT_INV_Add0~1_combout\,
	datad => ALT_INV_clk_div(5),
	datae => \ALT_INV_LessThan0~1_combout\,
	dataf => \ALT_INV_Add0~3_combout\,
	combout => \counter~3_combout\);

-- Location: FF_X50_Y21_N22
\counter[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \counter~3_combout\,
	clrn => \SynRst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[2]~DUPLICATE_q\);

-- Location: LABCELL_X50_Y21_N12
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = ( \counter[2]~DUPLICATE_q\ & ( !\counter[4]~DUPLICATE_q\ $ (((!counter(1)) # ((!\counter[0]~DUPLICATE_q\) # (!counter(3))))) ) ) # ( !\counter[2]~DUPLICATE_q\ & ( \counter[4]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(1),
	datab => \ALT_INV_counter[0]~DUPLICATE_q\,
	datac => ALT_INV_counter(3),
	datad => \ALT_INV_counter[4]~DUPLICATE_q\,
	dataf => \ALT_INV_counter[2]~DUPLICATE_q\,
	combout => \Add0~1_combout\);

-- Location: LABCELL_X50_Y21_N15
\Add0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = !counter(1) $ (!\counter[0]~DUPLICATE_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(1),
	datab => \ALT_INV_counter[0]~DUPLICATE_q\,
	combout => \Add0~4_combout\);

-- Location: LABCELL_X50_Y21_N24
\counter~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter~4_combout\ = ( \LessThan0~1_combout\ & ( \Add0~4_combout\ & ( (!\Add0~0_combout\ & (((!\Add0~1_combout\) # (clk_div(5))) # (clk_div(4)))) # (\Add0~0_combout\ & (clk_div(5) & ((!\Add0~1_combout\) # (clk_div(4))))) ) ) ) # ( !\LessThan0~1_combout\ 
-- & ( \Add0~4_combout\ & ( (!\Add0~0_combout\ & (((clk_div(4) & !\Add0~1_combout\)) # (clk_div(5)))) # (\Add0~0_combout\ & (clk_div(4) & (clk_div(5) & !\Add0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001001101000011001100111101001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clk_div(4),
	datab => \ALT_INV_Add0~0_combout\,
	datac => ALT_INV_clk_div(5),
	datad => \ALT_INV_Add0~1_combout\,
	datae => \ALT_INV_LessThan0~1_combout\,
	dataf => \ALT_INV_Add0~4_combout\,
	combout => \counter~4_combout\);

-- Location: FF_X50_Y21_N26
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \counter~4_combout\,
	clrn => \SynRst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: FF_X50_Y21_N19
\counter[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \counter~2_combout\,
	clrn => \SynRst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[3]~DUPLICATE_q\);

-- Location: MLABCELL_X49_Y21_N24
\Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = ( \counter[3]~DUPLICATE_q\ & ( (!counter(0)) # ((!counter(1)) # (!\counter[2]~DUPLICATE_q\)) ) ) # ( !\counter[3]~DUPLICATE_q\ & ( (counter(0) & (counter(1) & \counter[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111111110111111101111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(0),
	datab => ALT_INV_counter(1),
	datac => \ALT_INV_counter[2]~DUPLICATE_q\,
	dataf => \ALT_INV_counter[3]~DUPLICATE_q\,
	combout => \Add0~2_combout\);

-- Location: IOIBUF_X54_Y19_N38
\D_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(4),
	o => \D_in[4]~input_o\);

-- Location: FF_X49_Y21_N2
\clk_div[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \D_in[4]~input_o\,
	clrn => \SynRst~q\,
	sload => VCC,
	ena => \ldCtrl~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(2));

-- Location: IOIBUF_X54_Y16_N21
\D_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(5),
	o => \D_in[5]~input_o\);

-- Location: MLABCELL_X49_Y21_N27
\clk_div[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div[3]~0_combout\ = !\D_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_D_in[5]~input_o\,
	combout => \clk_div[3]~0_combout\);

-- Location: FF_X49_Y21_N29
\clk_div[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \clk_div[3]~0_combout\,
	clrn => \SynRst~q\,
	ena => \ldCtrl~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(3));

-- Location: IOIBUF_X54_Y15_N38
\D_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(2),
	o => \D_in[2]~input_o\);

-- Location: FF_X50_Y21_N2
\clk_div[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \D_in[2]~input_o\,
	clrn => \SynRst~q\,
	sload => VCC,
	ena => \ldCtrl~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(0));

-- Location: IOIBUF_X54_Y16_N4
\D_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(3),
	o => \D_in[3]~input_o\);

-- Location: FF_X50_Y21_N38
\clk_div[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \D_in[3]~input_o\,
	clrn => \SynRst~q\,
	sload => VCC,
	ena => \ldCtrl~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(1));

-- Location: LABCELL_X50_Y21_N36
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( clk_div(1) & ( \counter[0]~DUPLICATE_q\ & ( (clk_div(0)) # (counter(1)) ) ) ) # ( !clk_div(1) & ( \counter[0]~DUPLICATE_q\ & ( (counter(1) & clk_div(0)) ) ) ) # ( clk_div(1) & ( !\counter[0]~DUPLICATE_q\ & ( !counter(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000101000001010101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(1),
	datac => ALT_INV_clk_div(0),
	datae => ALT_INV_clk_div(1),
	dataf => \ALT_INV_counter[0]~DUPLICATE_q\,
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X50_Y21_N57
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( \LessThan0~0_combout\ & ( \Add0~3_combout\ & ( (!\Add0~2_combout\ & ((!clk_div(3)) # (clk_div(2)))) # (\Add0~2_combout\ & (clk_div(2) & !clk_div(3))) ) ) ) # ( !\LessThan0~0_combout\ & ( \Add0~3_combout\ & ( (!\Add0~2_combout\ & 
-- !clk_div(3)) ) ) ) # ( \LessThan0~0_combout\ & ( !\Add0~3_combout\ & ( (!\Add0~2_combout\) # (!clk_div(3)) ) ) ) # ( !\LessThan0~0_combout\ & ( !\Add0~3_combout\ & ( (!\Add0~2_combout\ & ((!clk_div(3)) # (clk_div(2)))) # (\Add0~2_combout\ & (clk_div(2) & 
-- !clk_div(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001010110010111110101111101010100000101000001011001010110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~2_combout\,
	datab => ALT_INV_clk_div(2),
	datac => ALT_INV_clk_div(3),
	datae => \ALT_INV_LessThan0~0_combout\,
	dataf => \ALT_INV_Add0~3_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LABCELL_X50_Y21_N30
\counter~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter~5_combout\ = ( !counter(0) & ( \Add0~0_combout\ & ( (clk_div(5) & ((!\LessThan0~1_combout\ & (clk_div(4) & !\Add0~1_combout\)) # (\LessThan0~1_combout\ & ((!\Add0~1_combout\) # (clk_div(4)))))) ) ) ) # ( !counter(0) & ( !\Add0~0_combout\ & ( 
-- ((!\LessThan0~1_combout\ & (clk_div(4) & !\Add0~1_combout\)) # (\LessThan0~1_combout\ & ((!\Add0~1_combout\) # (clk_div(4))))) # (clk_div(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101010111000000000000000000010101000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clk_div(5),
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => ALT_INV_clk_div(4),
	datad => \ALT_INV_Add0~1_combout\,
	datae => ALT_INV_counter(0),
	dataf => \ALT_INV_Add0~0_combout\,
	combout => \counter~5_combout\);

-- Location: FF_X50_Y21_N31
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \counter~5_combout\,
	clrn => \SynRst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: FF_X50_Y21_N47
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \counter~1_combout\,
	clrn => \SynRst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LABCELL_X50_Y21_N42
\counter~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter~0_combout\ = ( \Add0~0_combout\ & ( (clk_div(5) & ((!\Add0~1_combout\ & ((\LessThan0~1_combout\) # (clk_div(4)))) # (\Add0~1_combout\ & (clk_div(4) & \LessThan0~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100010001010000010001000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clk_div(5),
	datab => \ALT_INV_Add0~1_combout\,
	datac => ALT_INV_clk_div(4),
	datad => \ALT_INV_LessThan0~1_combout\,
	dataf => \ALT_INV_Add0~0_combout\,
	combout => \counter~0_combout\);

-- Location: FF_X50_Y21_N44
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \counter~0_combout\,
	clrn => \SynRst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: FF_X50_Y21_N23
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \counter~3_combout\,
	clrn => \SynRst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LABCELL_X50_Y21_N6
\Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = ( counter(2) & ( \counter[3]~DUPLICATE_q\ & ( !counter(5) $ (((!counter(0)) # ((!counter(4)) # (!counter(1))))) ) ) ) # ( !counter(2) & ( \counter[3]~DUPLICATE_q\ & ( counter(5) ) ) ) # ( counter(2) & ( !\counter[3]~DUPLICATE_q\ & ( 
-- counter(5) ) ) ) # ( !counter(2) & ( !\counter[3]~DUPLICATE_q\ & ( counter(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(0),
	datab => ALT_INV_counter(4),
	datac => ALT_INV_counter(1),
	datad => ALT_INV_counter(5),
	datae => ALT_INV_counter(2),
	dataf => \ALT_INV_counter[3]~DUPLICATE_q\,
	combout => \Add0~0_combout\);

-- Location: LABCELL_X53_Y20_N54
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( \LessThan0~1_combout\ & ( (!\Add0~0_combout\ & (!clk_div(4) & (!clk_div(5) & \Add0~1_combout\))) # (\Add0~0_combout\ & ((!clk_div(5)) # ((!clk_div(4) & \Add0~1_combout\)))) ) ) # ( !\LessThan0~1_combout\ & ( (!\Add0~0_combout\ & 
-- (!clk_div(5) & ((!clk_div(4)) # (\Add0~1_combout\)))) # (\Add0~0_combout\ & ((!clk_div(4)) # ((!clk_div(5)) # (\Add0~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010011110101110101001111010101010000110101000101000011010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~0_combout\,
	datab => ALT_INV_clk_div(4),
	datac => ALT_INV_clk_div(5),
	datad => \ALT_INV_Add0~1_combout\,
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: FF_X53_Y20_N56
sub_Clk : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \LessThan0~2_combout\,
	clrn => \SynRst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sub_Clk~q\);

-- Location: LABCELL_X53_Y21_N9
\machineEtat|State_cr.s_Init~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \machineEtat|State_cr.s_Init~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \machineEtat|State_cr.s_Init~feeder_combout\);

-- Location: FF_X53_Y21_N11
\machineEtat|State_cr.s_Init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sub_Clk~q\,
	d => \machineEtat|State_cr.s_Init~feeder_combout\,
	clrn => \SynRst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \machineEtat|State_cr.s_Init~q\);

-- Location: LABCELL_X52_Y21_N51
wrFIFO : cyclonev_lcell_comb
-- Equation(s):
-- \wrFIFO~combout\ = ( \Addr[1]~input_o\ & ( (!\Addr[0]~input_o\ & \wr~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Addr[0]~input_o\,
	datac => \ALT_INV_wr~input_o\,
	datae => \ALT_INV_Addr[1]~input_o\,
	combout => \wrFIFO~combout\);

-- Location: FF_X52_Y20_N4
\serial|UT|Registres:counter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sub_Clk~q\,
	asdata => \serial|UT|counter~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial|UT|Registres:counter[0]~DUPLICATE_q\);

-- Location: LABCELL_X52_Y21_N6
\fifo|Mux33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fifo|Mux33~0_combout\ = ( \rdFIFO~q\ & ( (!\fifo|adrFifo\(0) & ((!\wrFIFO~combout\ & (\fifo|adrFifo\(2) & !\fifo|adrFifo\(1))) # (\wrFIFO~combout\ & ((\fifo|adrFifo\(1)))))) # (\fifo|adrFifo\(0) & (((\fifo|adrFifo\(1))))) ) ) # ( !\rdFIFO~q\ & ( 
-- !\fifo|adrFifo\(1) $ (((!\fifo|adrFifo\(0)) # ((!\wrFIFO~combout\) # (\fifo|adrFifo\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011111011000001001111101100100000010111110010000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fifo|ALT_INV_adrFifo\(0),
	datab => \fifo|ALT_INV_adrFifo\(2),
	datac => \ALT_INV_wrFIFO~combout\,
	datad => \fifo|ALT_INV_adrFifo\(1),
	dataf => \ALT_INV_rdFIFO~q\,
	combout => \fifo|Mux33~0_combout\);

-- Location: FF_X52_Y21_N8
\fifo|adrFifo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \fifo|Mux33~0_combout\,
	sclr => \machineEtat|ALT_INV_State_cr.s_Init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo|adrFifo\(1));

-- Location: LABCELL_X52_Y21_N30
\fifo|Mux32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fifo|Mux32~0_combout\ = ( \fifo|adrFifo\(1) & ( ((\wrFIFO~combout\ & (!\rdFIFO~q\ & \fifo|adrFifo\(0)))) # (\fifo|adrFifo\(2)) ) ) # ( !\fifo|adrFifo\(1) & ( (\fifo|adrFifo\(2) & (((!\rdFIFO~q\) # (\fifo|adrFifo\(0))) # (\wrFIFO~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011011111000000001101111100000100111111110000010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_wrFIFO~combout\,
	datab => \ALT_INV_rdFIFO~q\,
	datac => \fifo|ALT_INV_adrFifo\(0),
	datad => \fifo|ALT_INV_adrFifo\(2),
	dataf => \fifo|ALT_INV_adrFifo\(1),
	combout => \fifo|Mux32~0_combout\);

-- Location: FF_X52_Y21_N32
\fifo|adrFifo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \fifo|Mux32~0_combout\,
	sclr => \machineEtat|ALT_INV_State_cr.s_Init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo|adrFifo\(2));

-- Location: LABCELL_X52_Y21_N9
\fifo|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fifo|Equal0~0_combout\ = ( !\fifo|adrFifo\(1) & ( (!\fifo|adrFifo\(0) & !\fifo|adrFifo\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fifo|ALT_INV_adrFifo\(0),
	datac => \fifo|ALT_INV_adrFifo\(2),
	dataf => \fifo|ALT_INV_adrFifo\(1),
	combout => \fifo|Equal0~0_combout\);

-- Location: LABCELL_X48_Y20_N0
\parite|level~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|level~0_combout\ = (!\parite|level\(0) & ((!\machineEtat|State_cr.s_Tx_CRC~q\) # ((\serial|UC|Etat_cr.Idle~q\ & !\serial|UC|Etat_cr.DRq_Serial~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110000000000110111000000000011011100000000001101110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \serial|UC|ALT_INV_Etat_cr.Idle~q\,
	datab => \machineEtat|ALT_INV_State_cr.s_Tx_CRC~q\,
	datac => \serial|UC|ALT_INV_Etat_cr.DRq_Serial~q\,
	datad => \parite|ALT_INV_level\(0),
	combout => \parite|level~0_combout\);

-- Location: IOIBUF_X54_Y18_N78
\D_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(0),
	o => \D_in[0]~input_o\);

-- Location: LABCELL_X53_Y21_N3
\machineEtat|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \machineEtat|Selector2~0_combout\ = ( \serial|UC|Etat_cr.DRq_Serial~q\ & ( \machineEtat|State_cr.s_Tx_CRC~q\ ) ) # ( !\serial|UC|Etat_cr.DRq_Serial~q\ & ( \machineEtat|State_cr.s_Tx_CRC~q\ & ( !\serial|UC|Etat_cr.Idle~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \serial|UC|ALT_INV_Etat_cr.Idle~q\,
	datae => \serial|UC|ALT_INV_Etat_cr.DRq_Serial~q\,
	dataf => \machineEtat|ALT_INV_State_cr.s_Tx_CRC~q\,
	combout => \machineEtat|Selector2~0_combout\);

-- Location: LABCELL_X47_Y21_N24
\Start~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Start~0_combout\ = ( \Start~q\ & ( \Addr[1]~input_o\ & ( !\machineEtat|Selector2~0_combout\ ) ) ) # ( \Start~q\ & ( !\Addr[1]~input_o\ & ( (!\machineEtat|Selector2~0_combout\ & ((!\wr~input_o\) # ((!\Addr[0]~input_o\) # (\D_in[0]~input_o\)))) ) ) ) # ( 
-- !\Start~q\ & ( !\Addr[1]~input_o\ & ( (\wr~input_o\ & (\D_in[0]~input_o\ & (!\machineEtat|Selector2~0_combout\ & \Addr[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000111100001011000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_wr~input_o\,
	datab => \ALT_INV_D_in[0]~input_o\,
	datac => \machineEtat|ALT_INV_Selector2~0_combout\,
	datad => \ALT_INV_Addr[0]~input_o\,
	datae => \ALT_INV_Start~q\,
	dataf => \ALT_INV_Addr[1]~input_o\,
	combout => \Start~0_combout\);

-- Location: FF_X47_Y21_N26
Start : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Start~0_combout\,
	clrn => \SynRst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Start~q\);

-- Location: LABCELL_X48_Y20_N3
\parite|level~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|level~2_combout\ = ( \parite|level\(0) & ( (!\parite|level\(1) & ((!\machineEtat|State_cr.s_Tx_CRC~q\) # ((\serial|UC|Etat_cr.Idle~q\ & !\serial|UC|Etat_cr.DRq_Serial~q\)))) ) ) # ( !\parite|level\(0) & ( (\parite|level\(1) & 
-- ((!\machineEtat|State_cr.s_Tx_CRC~q\) # ((\serial|UC|Etat_cr.Idle~q\ & !\serial|UC|Etat_cr.DRq_Serial~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011011100000000001101110011011100000000001101110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \serial|UC|ALT_INV_Etat_cr.Idle~q\,
	datab => \machineEtat|ALT_INV_State_cr.s_Tx_CRC~q\,
	datac => \serial|UC|ALT_INV_Etat_cr.DRq_Serial~q\,
	datad => \parite|ALT_INV_level\(1),
	dataf => \parite|ALT_INV_level\(0),
	combout => \parite|level~2_combout\);

-- Location: FF_X48_Y20_N5
\parite|level[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|level~2_combout\,
	clrn => \SynRst~q\,
	ena => \parite|level[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|level\(1));

-- Location: MLABCELL_X49_Y18_N57
\parite|WideOr20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr20~0_combout\ = ( \parite|level\(0) & ( (\parite|level\(2) & \parite|level\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(2),
	datac => \parite|ALT_INV_level\(1),
	dataf => \parite|ALT_INV_level\(0),
	combout => \parite|WideOr20~0_combout\);

-- Location: LABCELL_X47_Y18_N30
\parite|level[4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|level[4]~7_combout\ = ( \parite|level\(4) & ( \parite|level\(3) & ( (!\machineEtat|Selector2~0_combout\ & ((!\parite|process_0~1_combout\) # ((!\parite|WideOr20~0_combout\) # (!\parite|process_0~0_combout\)))) ) ) ) # ( !\parite|level\(4) & ( 
-- \parite|level\(3) & ( (\parite|process_0~1_combout\ & (\parite|WideOr20~0_combout\ & (\parite|process_0~0_combout\ & !\machineEtat|Selector2~0_combout\))) ) ) ) # ( \parite|level\(4) & ( !\parite|level\(3) & ( (\parite|process_0~0_combout\ & 
-- !\machineEtat|Selector2~0_combout\) ) ) ) # ( !\parite|level\(4) & ( !\parite|level\(3) & ( (!\parite|process_0~0_combout\ & !\machineEtat|Selector2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000011110000000000000001000000001111111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_process_0~1_combout\,
	datab => \parite|ALT_INV_WideOr20~0_combout\,
	datac => \parite|ALT_INV_process_0~0_combout\,
	datad => \machineEtat|ALT_INV_Selector2~0_combout\,
	datae => \parite|ALT_INV_level\(4),
	dataf => \parite|ALT_INV_level\(3),
	combout => \parite|level[4]~7_combout\);

-- Location: FF_X47_Y18_N32
\parite|level[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|level[4]~7_combout\,
	clrn => \SynRst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|level\(4));

-- Location: LABCELL_X47_Y21_N6
\parite|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|process_0~0_combout\ = ( \parite|level\(3) & ( \Addr[1]~input_o\ & ( (!\wr~input_o\) # (\Addr[0]~input_o\) ) ) ) # ( !\parite|level\(3) & ( \Addr[1]~input_o\ & ( (!\wr~input_o\) # (((!\parite|level\(4) & \parite|level\(5))) # (\Addr[0]~input_o\)) 
-- ) ) ) # ( \parite|level\(3) & ( !\Addr[1]~input_o\ ) ) # ( !\parite|level\(3) & ( !\Addr[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110101110111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_wr~input_o\,
	datab => \parite|ALT_INV_level\(4),
	datac => \parite|ALT_INV_level\(5),
	datad => \ALT_INV_Addr[0]~input_o\,
	datae => \parite|ALT_INV_level\(3),
	dataf => \ALT_INV_Addr[1]~input_o\,
	combout => \parite|process_0~0_combout\);

-- Location: LABCELL_X52_Y18_N51
\parite|level[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|level[3]~4_combout\ = ( !\machineEtat|Selector2~0_combout\ & ( !\parite|level\(3) $ (((\parite|process_0~0_combout\ & ((!\parite|process_0~1_combout\) # (!\parite|WideOr20~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110100110010110011010011001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_process_0~1_combout\,
	datab => \parite|ALT_INV_process_0~0_combout\,
	datac => \parite|ALT_INV_WideOr20~0_combout\,
	datad => \parite|ALT_INV_level\(3),
	dataf => \machineEtat|ALT_INV_Selector2~0_combout\,
	combout => \parite|level[3]~4_combout\);

-- Location: FF_X52_Y18_N53
\parite|level[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|level[3]~4_combout\,
	clrn => \SynRst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|level\(3));

-- Location: LABCELL_X48_Y19_N9
\parite|level~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|level~5_combout\ = ( \parite|level\(4) & ( (\parite|level\(5) & ((!\Start~q\) # ((!\parite|WideOr20~0_combout\) # (!\parite|level\(3))))) ) ) # ( !\parite|level\(4) & ( \parite|level\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101000101010101010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(5),
	datab => \ALT_INV_Start~q\,
	datac => \parite|ALT_INV_WideOr20~0_combout\,
	datad => \parite|ALT_INV_level\(3),
	dataf => \parite|ALT_INV_level\(4),
	combout => \parite|level~5_combout\);

-- Location: LABCELL_X47_Y19_N54
\parite|Add2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Add2~0_combout\ = !\parite|level\(5) $ (((!\parite|level\(3) & !\parite|level\(4))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100001111000011110000111100001111000011110000111100001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(3),
	datab => \parite|ALT_INV_level\(4),
	datac => \parite|ALT_INV_level\(5),
	combout => \parite|Add2~0_combout\);

-- Location: LABCELL_X48_Y20_N12
\parite|level~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|level~6_combout\ = ( \serial|UC|Etat_cr.DRq_Serial~q\ & ( \parite|process_0~0_combout\ & ( (!\machineEtat|State_cr.s_Tx_CRC~q\ & \parite|level~5_combout\) ) ) ) # ( !\serial|UC|Etat_cr.DRq_Serial~q\ & ( \parite|process_0~0_combout\ & ( 
-- (\parite|level~5_combout\ & ((!\machineEtat|State_cr.s_Tx_CRC~q\) # (\serial|UC|Etat_cr.Idle~q\))) ) ) ) # ( \serial|UC|Etat_cr.DRq_Serial~q\ & ( !\parite|process_0~0_combout\ & ( (!\machineEtat|State_cr.s_Tx_CRC~q\ & !\parite|Add2~0_combout\) ) ) ) # ( 
-- !\serial|UC|Etat_cr.DRq_Serial~q\ & ( !\parite|process_0~0_combout\ & ( (!\parite|Add2~0_combout\ & ((!\machineEtat|State_cr.s_Tx_CRC~q\) # (\serial|UC|Etat_cr.Idle~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110100000000110011000000000000001101000011010000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \serial|UC|ALT_INV_Etat_cr.Idle~q\,
	datab => \machineEtat|ALT_INV_State_cr.s_Tx_CRC~q\,
	datac => \parite|ALT_INV_level~5_combout\,
	datad => \parite|ALT_INV_Add2~0_combout\,
	datae => \serial|UC|ALT_INV_Etat_cr.DRq_Serial~q\,
	dataf => \parite|ALT_INV_process_0~0_combout\,
	combout => \parite|level~6_combout\);

-- Location: FF_X48_Y20_N14
\parite|level[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|level~6_combout\,
	clrn => \SynRst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|level\(5));

-- Location: LABCELL_X48_Y19_N30
\parite|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|process_0~1_combout\ = (\Start~q\ & \parite|level\(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Start~q\,
	datac => \parite|ALT_INV_level\(5),
	combout => \parite|process_0~1_combout\);

-- Location: LABCELL_X52_Y20_N45
\parite|level[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|level[1]~1_combout\ = ( \serial|UC|Etat_cr.DRq_Serial~q\ & ( ((\parite|process_0~1_combout\ & \parite|process_0~0_combout\)) # (\machineEtat|State_cr.s_Tx_CRC~q\) ) ) # ( !\serial|UC|Etat_cr.DRq_Serial~q\ & ( (!\parite|process_0~1_combout\ & 
-- (!\serial|UC|Etat_cr.Idle~q\ & (\machineEtat|State_cr.s_Tx_CRC~q\))) # (\parite|process_0~1_combout\ & (((!\serial|UC|Etat_cr.Idle~q\ & \machineEtat|State_cr.s_Tx_CRC~q\)) # (\parite|process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001011101000011000101110100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_process_0~1_combout\,
	datab => \serial|UC|ALT_INV_Etat_cr.Idle~q\,
	datac => \machineEtat|ALT_INV_State_cr.s_Tx_CRC~q\,
	datad => \parite|ALT_INV_process_0~0_combout\,
	dataf => \serial|UC|ALT_INV_Etat_cr.DRq_Serial~q\,
	combout => \parite|level[1]~1_combout\);

-- Location: FF_X48_Y20_N2
\parite|level[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|level~0_combout\,
	clrn => \SynRst~q\,
	ena => \parite|level[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|level\(0));

-- Location: LABCELL_X48_Y20_N6
\parite|level~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|level~3_combout\ = ( \parite|level\(2) & ( \parite|level\(1) & ( (!\parite|level\(0) & ((!\machineEtat|State_cr.s_Tx_CRC~q\) # ((!\serial|UC|Etat_cr.DRq_Serial~q\ & \serial|UC|Etat_cr.Idle~q\)))) ) ) ) # ( !\parite|level\(2) & ( \parite|level\(1) 
-- & ( (\parite|level\(0) & ((!\machineEtat|State_cr.s_Tx_CRC~q\) # ((!\serial|UC|Etat_cr.DRq_Serial~q\ & \serial|UC|Etat_cr.Idle~q\)))) ) ) ) # ( \parite|level\(2) & ( !\parite|level\(1) & ( (!\machineEtat|State_cr.s_Tx_CRC~q\) # 
-- ((!\serial|UC|Etat_cr.DRq_Serial~q\ & \serial|UC|Etat_cr.Idle~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001110111000001100000011101100000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \serial|UC|ALT_INV_Etat_cr.DRq_Serial~q\,
	datab => \machineEtat|ALT_INV_State_cr.s_Tx_CRC~q\,
	datac => \parite|ALT_INV_level\(0),
	datad => \serial|UC|ALT_INV_Etat_cr.Idle~q\,
	datae => \parite|ALT_INV_level\(2),
	dataf => \parite|ALT_INV_level\(1),
	combout => \parite|level~3_combout\);

-- Location: FF_X48_Y20_N8
\parite|level[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|level~3_combout\,
	clrn => \SynRst~q\,
	ena => \parite|level[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|level\(2));

-- Location: LABCELL_X47_Y18_N15
\parite|Decoder0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Decoder0~7_combout\ = ( !\parite|level\(0) & ( \parite|level\(4) & ( (\parite|level\(2) & (\parite|level\(5) & (\parite|level\(1) & \parite|level\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(2),
	datab => \parite|ALT_INV_level\(5),
	datac => \parite|ALT_INV_level\(1),
	datad => \parite|ALT_INV_level\(3),
	datae => \parite|ALT_INV_level\(0),
	dataf => \parite|ALT_INV_level\(4),
	combout => \parite|Decoder0~7_combout\);

-- Location: MLABCELL_X49_Y18_N6
\parite|Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Decoder0~0_combout\ = ( \parite|level\(5) & ( \parite|level\(3) & ( (\parite|level\(2) & (\parite|level\(1) & (\parite|level\(4) & \parite|level\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(2),
	datab => \parite|ALT_INV_level\(1),
	datac => \parite|ALT_INV_level\(4),
	datad => \parite|ALT_INV_level\(0),
	datae => \parite|ALT_INV_level\(5),
	dataf => \parite|ALT_INV_level\(3),
	combout => \parite|Decoder0~0_combout\);

-- Location: LABCELL_X52_Y17_N9
\parite|WideOr30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr30~0_combout\ = ( \parite|level\(3) & ( !\parite|level\(4) ) ) # ( !\parite|level\(3) & ( \parite|level\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(4),
	dataf => \parite|ALT_INV_level\(3),
	combout => \parite|WideOr30~0_combout\);

-- Location: MLABCELL_X49_Y19_N36
\parite|WideOr31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr31~0_combout\ = ( !\parite|level\(1) & ( !\parite|level\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(2),
	dataf => \parite|ALT_INV_level\(1),
	combout => \parite|WideOr31~0_combout\);

-- Location: MLABCELL_X49_Y17_N39
\parite|WideOr31~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr31~1_combout\ = ( \parite|level\(0) & ( (\parite|level\(5) & (!\parite|WideOr31~0_combout\ & \parite|level\(3))) ) ) # ( !\parite|level\(0) & ( (!\parite|level\(5) & (\parite|WideOr31~0_combout\ & !\parite|level\(3))) # (\parite|level\(5) & 
-- (!\parite|WideOr31~0_combout\ & \parite|level\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001010000000010100101000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(5),
	datac => \parite|ALT_INV_WideOr31~0_combout\,
	datad => \parite|ALT_INV_level\(3),
	dataf => \parite|ALT_INV_level\(0),
	combout => \parite|WideOr31~1_combout\);

-- Location: LABCELL_X53_Y18_N0
\parite|CRC_reg~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~12_combout\ = ( \parite|WideOr31~1_combout\ & ( \D_in[3]~input_o\ & ( (!\parite|WideOr30~0_combout\ & (((\D_in[2]~input_o\ & \parite|Decoder0~0_combout\)) # (\parite|Decoder0~7_combout\))) ) ) ) # ( \parite|WideOr31~1_combout\ & ( 
-- !\D_in[3]~input_o\ & ( (\D_in[2]~input_o\ & (\parite|Decoder0~0_combout\ & !\parite|WideOr30~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000000000000000000000000011011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[2]~input_o\,
	datab => \parite|ALT_INV_Decoder0~7_combout\,
	datac => \parite|ALT_INV_Decoder0~0_combout\,
	datad => \parite|ALT_INV_WideOr30~0_combout\,
	datae => \parite|ALT_INV_WideOr31~1_combout\,
	dataf => \ALT_INV_D_in[3]~input_o\,
	combout => \parite|CRC_reg~12_combout\);

-- Location: MLABCELL_X49_Y18_N48
\parite|Decoder0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Decoder0~6_combout\ = ( \parite|level\(5) & ( \parite|level\(3) & ( (\parite|level\(2) & (!\parite|level\(1) & (\parite|level\(4) & \parite|level\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(2),
	datab => \parite|ALT_INV_level\(1),
	datac => \parite|ALT_INV_level\(4),
	datad => \parite|ALT_INV_level\(0),
	datae => \parite|ALT_INV_level\(5),
	dataf => \parite|ALT_INV_level\(3),
	combout => \parite|Decoder0~6_combout\);

-- Location: LABCELL_X48_Y20_N18
\parite|Decoder0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Decoder0~5_combout\ = ( \parite|level\(2) & ( !\parite|level\(1) & ( (!\parite|level\(0) & (\parite|level\(4) & (\parite|level\(3) & \parite|level\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(0),
	datab => \parite|ALT_INV_level\(4),
	datac => \parite|ALT_INV_level\(3),
	datad => \parite|ALT_INV_level\(5),
	datae => \parite|ALT_INV_level\(2),
	dataf => \parite|ALT_INV_level\(1),
	combout => \parite|Decoder0~5_combout\);

-- Location: LABCELL_X53_Y18_N12
\parite|CRC_reg~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~15_combout\ = ( \parite|Decoder0~5_combout\ & ( \D_in[4]~input_o\ & ( (\parite|WideOr31~1_combout\ & (!\parite|WideOr30~0_combout\ & ((\parite|Decoder0~6_combout\) # (\D_in[5]~input_o\)))) ) ) ) # ( !\parite|Decoder0~5_combout\ & ( 
-- \D_in[4]~input_o\ & ( (\parite|WideOr31~1_combout\ & (\parite|Decoder0~6_combout\ & !\parite|WideOr30~0_combout\)) ) ) ) # ( \parite|Decoder0~5_combout\ & ( !\D_in[4]~input_o\ & ( (\D_in[5]~input_o\ & (\parite|WideOr31~1_combout\ & 
-- !\parite|WideOr30~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010000000000000011000000000001001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[5]~input_o\,
	datab => \parite|ALT_INV_WideOr31~1_combout\,
	datac => \parite|ALT_INV_Decoder0~6_combout\,
	datad => \parite|ALT_INV_WideOr30~0_combout\,
	datae => \parite|ALT_INV_Decoder0~5_combout\,
	dataf => \ALT_INV_D_in[4]~input_o\,
	combout => \parite|CRC_reg~15_combout\);

-- Location: LABCELL_X48_Y20_N21
\parite|Decoder0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Decoder0~3_combout\ = ( \parite|level\(1) & ( !\parite|level\(2) & ( (!\parite|level\(0) & (\parite|level\(4) & (\parite|level\(5) & \parite|level\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(0),
	datab => \parite|ALT_INV_level\(4),
	datac => \parite|ALT_INV_level\(5),
	datad => \parite|ALT_INV_level\(3),
	datae => \parite|ALT_INV_level\(1),
	dataf => \parite|ALT_INV_level\(2),
	combout => \parite|Decoder0~3_combout\);

-- Location: LABCELL_X53_Y18_N36
\parite|CRC_reg~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~14_combout\ = ( \D_in[7]~input_o\ & ( (!\parite|WideOr31~1_combout\ & (((\parite|CRC_reg\(33))))) # (\parite|WideOr31~1_combout\ & ((!\parite|WideOr30~0_combout\ & (\parite|Decoder0~3_combout\)) # (\parite|WideOr30~0_combout\ & 
-- ((\parite|CRC_reg\(33)))))) ) ) # ( !\D_in[7]~input_o\ & ( (\parite|CRC_reg\(33) & ((!\parite|WideOr31~1_combout\) # (\parite|WideOr30~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110011001100000011001100110101001100110011010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Decoder0~3_combout\,
	datab => \parite|ALT_INV_CRC_reg\(33),
	datac => \parite|ALT_INV_WideOr31~1_combout\,
	datad => \parite|ALT_INV_WideOr30~0_combout\,
	dataf => \ALT_INV_D_in[7]~input_o\,
	combout => \parite|CRC_reg~14_combout\);

-- Location: LABCELL_X52_Y18_N3
\parite|Decoder0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Decoder0~4_combout\ = ( !\parite|level\(2) & ( \parite|level\(3) & ( (\parite|level\(5) & (\parite|level\(1) & (\parite|level\(4) & \parite|level\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(5),
	datab => \parite|ALT_INV_level\(1),
	datac => \parite|ALT_INV_level\(4),
	datad => \parite|ALT_INV_level\(0),
	datae => \parite|ALT_INV_level\(2),
	dataf => \parite|ALT_INV_level\(3),
	combout => \parite|Decoder0~4_combout\);

-- Location: LABCELL_X53_Y18_N57
\parite|CRC_reg~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~13_combout\ = ( \D_in[6]~input_o\ & ( (!\parite|WideOr30~0_combout\ & (\parite|Decoder0~4_combout\ & \parite|WideOr31~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_WideOr30~0_combout\,
	datac => \parite|ALT_INV_Decoder0~4_combout\,
	datad => \parite|ALT_INV_WideOr31~1_combout\,
	dataf => \ALT_INV_D_in[6]~input_o\,
	combout => \parite|CRC_reg~13_combout\);

-- Location: MLABCELL_X49_Y18_N42
\parite|Decoder0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Decoder0~1_combout\ = ( !\parite|level\(5) & ( !\parite|level\(3) & ( (!\parite|level\(2) & (!\parite|level\(1) & (!\parite|level\(4) & !\parite|level\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(2),
	datab => \parite|ALT_INV_level\(1),
	datac => \parite|ALT_INV_level\(4),
	datad => \parite|ALT_INV_level\(0),
	datae => \parite|ALT_INV_level\(5),
	dataf => \parite|ALT_INV_level\(3),
	combout => \parite|Decoder0~1_combout\);

-- Location: IOIBUF_X54_Y18_N44
\D_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(1),
	o => \D_in[1]~input_o\);

-- Location: LABCELL_X53_Y18_N54
\parite|CRC_reg~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~11_combout\ = ( \D_in[1]~input_o\ & ( (!\parite|WideOr30~0_combout\ & (\parite|Decoder0~1_combout\ & \parite|WideOr31~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_WideOr30~0_combout\,
	datac => \parite|ALT_INV_Decoder0~1_combout\,
	datad => \parite|ALT_INV_WideOr31~1_combout\,
	dataf => \ALT_INV_D_in[1]~input_o\,
	combout => \parite|CRC_reg~11_combout\);

-- Location: MLABCELL_X49_Y18_N0
\parite|Decoder1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Decoder1~0_combout\ = (!\parite|level\(4) & !\parite|level\(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \parite|ALT_INV_level\(4),
	datad => \parite|ALT_INV_level\(5),
	combout => \parite|Decoder1~0_combout\);

-- Location: MLABCELL_X49_Y18_N33
\parite|CRC_reg~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~10_combout\ = ( \parite|Decoder1~0_combout\ & ( (!\parite|level\(3) & (((\parite|level\(2))) # (\parite|level\(1)))) # (\parite|level\(3) & (!\parite|level\(1) & (!\parite|level\(0) & !\parite|level\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001100010101010100110001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(3),
	datab => \parite|ALT_INV_level\(1),
	datac => \parite|ALT_INV_level\(0),
	datad => \parite|ALT_INV_level\(2),
	dataf => \parite|ALT_INV_Decoder1~0_combout\,
	combout => \parite|CRC_reg~10_combout\);

-- Location: LABCELL_X53_Y18_N30
\parite|CRC_reg~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~16_combout\ = ( \parite|CRC_reg~11_combout\ & ( !\parite|CRC_reg~10_combout\ ) ) # ( !\parite|CRC_reg~11_combout\ & ( !\parite|CRC_reg~10_combout\ & ( (((\parite|CRC_reg~13_combout\) # (\parite|CRC_reg~14_combout\)) # 
-- (\parite|CRC_reg~15_combout\)) # (\parite|CRC_reg~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_CRC_reg~12_combout\,
	datab => \parite|ALT_INV_CRC_reg~15_combout\,
	datac => \parite|ALT_INV_CRC_reg~14_combout\,
	datad => \parite|ALT_INV_CRC_reg~13_combout\,
	datae => \parite|ALT_INV_CRC_reg~11_combout\,
	dataf => \parite|ALT_INV_CRC_reg~10_combout\,
	combout => \parite|CRC_reg~16_combout\);

-- Location: LABCELL_X53_Y18_N42
\parite|Selector30~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector30~2_combout\ = ( \parite|Decoder0~5_combout\ & ( \D_in[3]~input_o\ & ( (!\parite|Decoder0~6_combout\ & (!\D_in[4]~input_o\ & ((!\D_in[2]~input_o\) # (!\parite|Decoder0~7_combout\)))) ) ) ) # ( !\parite|Decoder0~5_combout\ & ( 
-- \D_in[3]~input_o\ & ( (!\parite|Decoder0~6_combout\ & ((!\D_in[2]~input_o\) # (!\parite|Decoder0~7_combout\))) ) ) ) # ( \parite|Decoder0~5_combout\ & ( !\D_in[3]~input_o\ & ( (!\D_in[4]~input_o\ & ((!\D_in[2]~input_o\) # (!\parite|Decoder0~7_combout\))) 
-- ) ) ) # ( !\parite|Decoder0~5_combout\ & ( !\D_in[3]~input_o\ & ( (!\D_in[2]~input_o\) # (!\parite|Decoder0~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011100000000011100000111000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[2]~input_o\,
	datab => \parite|ALT_INV_Decoder0~7_combout\,
	datac => \parite|ALT_INV_Decoder0~6_combout\,
	datad => \ALT_INV_D_in[4]~input_o\,
	datae => \parite|ALT_INV_Decoder0~5_combout\,
	dataf => \ALT_INV_D_in[3]~input_o\,
	combout => \parite|Selector30~2_combout\);

-- Location: MLABCELL_X49_Y18_N24
\parite|WideOr30~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr30~2_combout\ = ( \parite|level\(5) & ( \parite|level\(3) & ( (\parite|level\(4) & (((\parite|level\(0)) # (\parite|level\(1))) # (\parite|level\(2)))) ) ) ) # ( !\parite|level\(5) & ( !\parite|level\(3) & ( (!\parite|level\(2) & 
-- (!\parite|level\(1) & (!\parite|level\(4) & !\parite|level\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(2),
	datab => \parite|ALT_INV_level\(1),
	datac => \parite|ALT_INV_level\(4),
	datad => \parite|ALT_INV_level\(0),
	datae => \parite|ALT_INV_level\(5),
	dataf => \parite|ALT_INV_level\(3),
	combout => \parite|WideOr30~2_combout\);

-- Location: LABCELL_X47_Y18_N36
\parite|Decoder0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Decoder0~2_combout\ = ( !\parite|level\(2) & ( \parite|level\(3) & ( (\parite|level\(0) & (!\parite|level\(1) & (\parite|level\(4) & \parite|level\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(0),
	datab => \parite|ALT_INV_level\(1),
	datac => \parite|ALT_INV_level\(4),
	datad => \parite|ALT_INV_level\(5),
	datae => \parite|ALT_INV_level\(2),
	dataf => \parite|ALT_INV_level\(3),
	combout => \parite|Decoder0~2_combout\);

-- Location: LABCELL_X50_Y18_N54
\parite|Selector30~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector30~1_combout\ = ( \parite|Decoder0~3_combout\ & ( \parite|Decoder0~2_combout\ & ( (!\D_in[7]~input_o\ & (!\D_in[6]~input_o\ & ((!\parite|Decoder0~4_combout\) # (!\D_in[5]~input_o\)))) ) ) ) # ( !\parite|Decoder0~3_combout\ & ( 
-- \parite|Decoder0~2_combout\ & ( (!\D_in[7]~input_o\ & ((!\parite|Decoder0~4_combout\) # (!\D_in[5]~input_o\))) ) ) ) # ( \parite|Decoder0~3_combout\ & ( !\parite|Decoder0~2_combout\ & ( (!\D_in[6]~input_o\ & ((!\parite|Decoder0~4_combout\) # 
-- (!\D_in[5]~input_o\))) ) ) ) # ( !\parite|Decoder0~3_combout\ & ( !\parite|Decoder0~2_combout\ & ( (!\parite|Decoder0~4_combout\) # (!\D_in[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110100000000011001000110010001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Decoder0~4_combout\,
	datab => \ALT_INV_D_in[7]~input_o\,
	datac => \ALT_INV_D_in[5]~input_o\,
	datad => \ALT_INV_D_in[6]~input_o\,
	datae => \parite|ALT_INV_Decoder0~3_combout\,
	dataf => \parite|ALT_INV_Decoder0~2_combout\,
	combout => \parite|Selector30~1_combout\);

-- Location: MLABCELL_X49_Y18_N3
\parite|WideOr41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr41~0_combout\ = ( \parite|level\(3) & ( (\parite|Decoder1~0_combout\ & (!\parite|level\(0) & (!\parite|level\(1) & !\parite|level\(2)))) ) ) # ( !\parite|level\(3) & ( (\parite|Decoder1~0_combout\ & (((\parite|level\(2)) # 
-- (\parite|level\(1))) # (\parite|level\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101000101010101010101000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Decoder1~0_combout\,
	datab => \parite|ALT_INV_level\(0),
	datac => \parite|ALT_INV_level\(1),
	datad => \parite|ALT_INV_level\(2),
	dataf => \parite|ALT_INV_level\(3),
	combout => \parite|WideOr41~0_combout\);

-- Location: LABCELL_X53_Y18_N6
\parite|Selector30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector30~0_combout\ = (!\D_in[1]~input_o\ & (\D_in[0]~input_o\ & (\parite|Decoder0~1_combout\))) # (\D_in[1]~input_o\ & (((\D_in[0]~input_o\ & \parite|Decoder0~1_combout\)) # (\parite|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110101011100000011010101110000001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[1]~input_o\,
	datab => \ALT_INV_D_in[0]~input_o\,
	datac => \parite|ALT_INV_Decoder0~1_combout\,
	datad => \parite|ALT_INV_Decoder0~0_combout\,
	combout => \parite|Selector30~0_combout\);

-- Location: LABCELL_X50_Y18_N0
\parite|CRC_reg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~0_combout\ = ( \parite|CRC_reg\(32) & ( \parite|Selector30~0_combout\ & ( !\parite|WideOr41~0_combout\ ) ) ) # ( !\parite|CRC_reg\(32) & ( \parite|Selector30~0_combout\ & ( (\parite|WideOr30~2_combout\ & !\parite|WideOr41~0_combout\) ) ) ) 
-- # ( \parite|CRC_reg\(32) & ( !\parite|Selector30~0_combout\ & ( (!\parite|WideOr41~0_combout\ & ((!\parite|Selector30~2_combout\) # ((!\parite|WideOr30~2_combout\) # (!\parite|Selector30~1_combout\)))) ) ) ) # ( !\parite|CRC_reg\(32) & ( 
-- !\parite|Selector30~0_combout\ & ( (\parite|WideOr30~2_combout\ & (!\parite|WideOr41~0_combout\ & ((!\parite|Selector30~2_combout\) # (!\parite|Selector30~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000000000111111100000000000110011000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Selector30~2_combout\,
	datab => \parite|ALT_INV_WideOr30~2_combout\,
	datac => \parite|ALT_INV_Selector30~1_combout\,
	datad => \parite|ALT_INV_WideOr41~0_combout\,
	datae => \parite|ALT_INV_CRC_reg\(32),
	dataf => \parite|ALT_INV_Selector30~0_combout\,
	combout => \parite|CRC_reg~0_combout\);

-- Location: LABCELL_X53_Y18_N48
\parite|CRC_reg~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~7_combout\ = ( !\parite|Decoder0~5_combout\ & ( \D_in[3]~input_o\ & ( (!\D_in[2]~input_o\ & ((!\parite|Decoder0~4_combout\) # ((!\D_in[4]~input_o\)))) # (\D_in[2]~input_o\ & (!\parite|Decoder0~6_combout\ & ((!\parite|Decoder0~4_combout\) # 
-- (!\D_in[4]~input_o\)))) ) ) ) # ( \parite|Decoder0~5_combout\ & ( !\D_in[3]~input_o\ & ( (!\D_in[2]~input_o\ & ((!\parite|Decoder0~4_combout\) # ((!\D_in[4]~input_o\)))) # (\D_in[2]~input_o\ & (!\parite|Decoder0~6_combout\ & 
-- ((!\parite|Decoder0~4_combout\) # (!\D_in[4]~input_o\)))) ) ) ) # ( !\parite|Decoder0~5_combout\ & ( !\D_in[3]~input_o\ & ( (!\D_in[2]~input_o\ & ((!\parite|Decoder0~4_combout\) # ((!\D_in[4]~input_o\)))) # (\D_in[2]~input_o\ & 
-- (!\parite|Decoder0~6_combout\ & ((!\parite|Decoder0~4_combout\) # (!\D_in[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011001000111110101100100011111010110010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[2]~input_o\,
	datab => \parite|ALT_INV_Decoder0~4_combout\,
	datac => \parite|ALT_INV_Decoder0~6_combout\,
	datad => \ALT_INV_D_in[4]~input_o\,
	datae => \parite|ALT_INV_Decoder0~5_combout\,
	dataf => \ALT_INV_D_in[3]~input_o\,
	combout => \parite|CRC_reg~7_combout\);

-- Location: LABCELL_X48_Y20_N57
\parite|Decoder0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Decoder0~8_combout\ = ( !\parite|level\(2) & ( \parite|level\(4) & ( (!\parite|level\(0) & (!\parite|level\(1) & (\parite|level\(5) & \parite|level\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(0),
	datab => \parite|ALT_INV_level\(1),
	datac => \parite|ALT_INV_level\(5),
	datad => \parite|ALT_INV_level\(3),
	datae => \parite|ALT_INV_level\(2),
	dataf => \parite|ALT_INV_level\(4),
	combout => \parite|Decoder0~8_combout\);

-- Location: MLABCELL_X49_Y20_N36
\parite|CRC_reg~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~6_combout\ = ( \D_in[6]~input_o\ & ( \D_in[5]~input_o\ & ( (!\parite|Decoder0~2_combout\ & (!\parite|Decoder0~3_combout\ & ((!\parite|Decoder0~8_combout\) # (!\D_in[7]~input_o\)))) ) ) ) # ( !\D_in[6]~input_o\ & ( \D_in[5]~input_o\ & ( 
-- (!\parite|Decoder0~3_combout\ & ((!\parite|Decoder0~8_combout\) # (!\D_in[7]~input_o\))) ) ) ) # ( \D_in[6]~input_o\ & ( !\D_in[5]~input_o\ & ( (!\parite|Decoder0~2_combout\ & ((!\parite|Decoder0~8_combout\) # (!\D_in[7]~input_o\))) ) ) ) # ( 
-- !\D_in[6]~input_o\ & ( !\D_in[5]~input_o\ & ( (!\parite|Decoder0~8_combout\) # (!\D_in[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010110011001000100011110000101000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Decoder0~8_combout\,
	datab => \parite|ALT_INV_Decoder0~2_combout\,
	datac => \parite|ALT_INV_Decoder0~3_combout\,
	datad => \ALT_INV_D_in[7]~input_o\,
	datae => \ALT_INV_D_in[6]~input_o\,
	dataf => \ALT_INV_D_in[5]~input_o\,
	combout => \parite|CRC_reg~6_combout\);

-- Location: LABCELL_X48_Y18_N18
\parite|CRC_reg~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~4_combout\ = ( \parite|level\(3) & ( (\parite|level\(5) & \parite|level\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_level\(5),
	datac => \parite|ALT_INV_level\(4),
	dataf => \parite|ALT_INV_level\(3),
	combout => \parite|CRC_reg~4_combout\);

-- Location: MLABCELL_X49_Y17_N33
\parite|WideOr42~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr42~0_combout\ = ( \parite|level\(1) & ( \parite|level\(3) ) ) # ( !\parite|level\(1) & ( (\parite|level\(3) & ((\parite|level\(2)) # (\parite|level\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(3),
	datac => \parite|ALT_INV_level\(0),
	datad => \parite|ALT_INV_level\(2),
	dataf => \parite|ALT_INV_level\(1),
	combout => \parite|WideOr42~0_combout\);

-- Location: LABCELL_X52_Y17_N33
\parite|WideOr42~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr42~1_combout\ = ( \parite|Decoder1~0_combout\ & ( !\parite|WideOr42~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_WideOr42~0_combout\,
	dataf => \parite|ALT_INV_Decoder1~0_combout\,
	combout => \parite|WideOr42~1_combout\);

-- Location: LABCELL_X53_Y18_N9
\parite|CRC_reg~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~5_combout\ = ( \parite|Decoder0~7_combout\ & ( ((\D_in[0]~input_o\ & \parite|Decoder0~0_combout\)) # (\D_in[1]~input_o\) ) ) # ( !\parite|Decoder0~7_combout\ & ( (\D_in[0]~input_o\ & \parite|Decoder0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001101010101011101110101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[1]~input_o\,
	datab => \ALT_INV_D_in[0]~input_o\,
	datad => \parite|ALT_INV_Decoder0~0_combout\,
	dataf => \parite|ALT_INV_Decoder0~7_combout\,
	combout => \parite|CRC_reg~5_combout\);

-- Location: LABCELL_X48_Y18_N30
\parite|CRC_reg~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~8_combout\ = ( \parite|CRC_reg\(31) & ( \parite|CRC_reg~5_combout\ & ( (!\parite|WideOr42~1_combout\) # (\parite|CRC_reg~4_combout\) ) ) ) # ( !\parite|CRC_reg\(31) & ( \parite|CRC_reg~5_combout\ & ( \parite|CRC_reg~4_combout\ ) ) ) # ( 
-- \parite|CRC_reg\(31) & ( !\parite|CRC_reg~5_combout\ & ( (!\parite|CRC_reg~4_combout\ & (((!\parite|WideOr42~1_combout\)))) # (\parite|CRC_reg~4_combout\ & ((!\parite|CRC_reg~7_combout\) # ((!\parite|CRC_reg~6_combout\)))) ) ) ) # ( !\parite|CRC_reg\(31) 
-- & ( !\parite|CRC_reg~5_combout\ & ( (\parite|CRC_reg~4_combout\ & ((!\parite|CRC_reg~7_combout\) # (!\parite|CRC_reg~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110111111100000111000001111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_CRC_reg~7_combout\,
	datab => \parite|ALT_INV_CRC_reg~6_combout\,
	datac => \parite|ALT_INV_CRC_reg~4_combout\,
	datad => \parite|ALT_INV_WideOr42~1_combout\,
	datae => \parite|ALT_INV_CRC_reg\(31),
	dataf => \parite|ALT_INV_CRC_reg~5_combout\,
	combout => \parite|CRC_reg~8_combout\);

-- Location: LABCELL_X48_Y20_N33
\parite|WideOr35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr35~0_combout\ = ( \parite|level\(3) & ( (\parite|level\(5) & \parite|level\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_level\(5),
	datac => \parite|ALT_INV_level\(2),
	dataf => \parite|ALT_INV_level\(3),
	combout => \parite|WideOr35~0_combout\);

-- Location: LABCELL_X48_Y18_N0
\parite|WideOr43~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr43~0_combout\ = ( \parite|level\(1) & ( \parite|WideOr42~0_combout\ & ( (\parite|WideOr35~0_combout\ & (\parite|level\(0) & (!\parite|level\(5) $ (\parite|level\(4))))) ) ) ) # ( \parite|level\(1) & ( !\parite|WideOr42~0_combout\ & ( 
-- (!\parite|level\(5) & (((!\parite|level\(4))))) # (\parite|level\(5) & (\parite|WideOr35~0_combout\ & (\parite|level\(4) & \parite|level\(0)))) ) ) ) # ( !\parite|level\(1) & ( !\parite|WideOr42~0_combout\ & ( (!\parite|level\(5) & !\parite|level\(4)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000100000000000000000000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_WideOr35~0_combout\,
	datab => \parite|ALT_INV_level\(5),
	datac => \parite|ALT_INV_level\(4),
	datad => \parite|ALT_INV_level\(0),
	datae => \parite|ALT_INV_level\(1),
	dataf => \parite|ALT_INV_WideOr42~0_combout\,
	combout => \parite|WideOr43~0_combout\);

-- Location: LABCELL_X52_Y18_N0
\parite|Decoder0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Decoder0~9_combout\ = ( !\parite|level\(3) & ( \parite|level\(2) & ( (\parite|level\(5) & (\parite|level\(1) & (\parite|level\(0) & \parite|level\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(5),
	datab => \parite|ALT_INV_level\(1),
	datac => \parite|ALT_INV_level\(0),
	datad => \parite|ALT_INV_level\(4),
	datae => \parite|ALT_INV_level\(3),
	dataf => \parite|ALT_INV_level\(2),
	combout => \parite|Decoder0~9_combout\);

-- Location: MLABCELL_X49_Y20_N12
\parite|Selector28~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector28~1_combout\ = ( \D_in[6]~input_o\ & ( \D_in[5]~input_o\ & ( (!\parite|Decoder0~8_combout\ & (!\parite|Decoder0~2_combout\ & ((!\parite|Decoder0~9_combout\) # (!\D_in[7]~input_o\)))) ) ) ) # ( !\D_in[6]~input_o\ & ( \D_in[5]~input_o\ & ( 
-- (!\parite|Decoder0~2_combout\ & ((!\parite|Decoder0~9_combout\) # (!\D_in[7]~input_o\))) ) ) ) # ( \D_in[6]~input_o\ & ( !\D_in[5]~input_o\ & ( (!\parite|Decoder0~8_combout\ & ((!\parite|Decoder0~9_combout\) # (!\D_in[7]~input_o\))) ) ) ) # ( 
-- !\D_in[6]~input_o\ & ( !\D_in[5]~input_o\ & ( (!\parite|Decoder0~9_combout\) # (!\D_in[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000101010101010000011001100110000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Decoder0~8_combout\,
	datab => \parite|ALT_INV_Decoder0~2_combout\,
	datac => \parite|ALT_INV_Decoder0~9_combout\,
	datad => \ALT_INV_D_in[7]~input_o\,
	datae => \ALT_INV_D_in[6]~input_o\,
	dataf => \ALT_INV_D_in[5]~input_o\,
	combout => \parite|Selector28~1_combout\);

-- Location: LABCELL_X53_Y18_N18
\parite|Selector28~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector28~2_combout\ = ( \parite|Decoder0~3_combout\ & ( \D_in[3]~input_o\ & ( (!\parite|Decoder0~4_combout\ & (!\D_in[4]~input_o\ & ((!\D_in[2]~input_o\) # (!\parite|Decoder0~5_combout\)))) ) ) ) # ( !\parite|Decoder0~3_combout\ & ( 
-- \D_in[3]~input_o\ & ( (!\parite|Decoder0~4_combout\ & ((!\D_in[2]~input_o\) # (!\parite|Decoder0~5_combout\))) ) ) ) # ( \parite|Decoder0~3_combout\ & ( !\D_in[3]~input_o\ & ( (!\D_in[4]~input_o\ & ((!\D_in[2]~input_o\) # (!\parite|Decoder0~5_combout\))) 
-- ) ) ) # ( !\parite|Decoder0~3_combout\ & ( !\D_in[3]~input_o\ & ( (!\D_in[2]~input_o\) # (!\parite|Decoder0~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110100000000011001000110010001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[2]~input_o\,
	datab => \parite|ALT_INV_Decoder0~4_combout\,
	datac => \parite|ALT_INV_Decoder0~5_combout\,
	datad => \ALT_INV_D_in[4]~input_o\,
	datae => \parite|ALT_INV_Decoder0~3_combout\,
	dataf => \ALT_INV_D_in[3]~input_o\,
	combout => \parite|Selector28~2_combout\);

-- Location: LABCELL_X48_Y18_N54
\parite|Selector28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector28~0_combout\ = ( \parite|Decoder0~7_combout\ & ( ((\D_in[1]~input_o\ & \parite|Decoder0~6_combout\)) # (\D_in[0]~input_o\) ) ) # ( !\parite|Decoder0~7_combout\ & ( (\D_in[1]~input_o\ & \parite|Decoder0~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D_in[0]~input_o\,
	datac => \ALT_INV_D_in[1]~input_o\,
	datad => \parite|ALT_INV_Decoder0~6_combout\,
	dataf => \parite|ALT_INV_Decoder0~7_combout\,
	combout => \parite|Selector28~0_combout\);

-- Location: MLABCELL_X49_Y19_N15
\parite|WideOr28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr28~0_combout\ = ( \parite|level\(0) & ( !\parite|level\(3) $ (((!\parite|level\(2)) # (!\parite|level\(1)))) ) ) # ( !\parite|level\(0) & ( \parite|level\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111010110100000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(2),
	datac => \parite|ALT_INV_level\(3),
	datad => \parite|ALT_INV_level\(1),
	dataf => \parite|ALT_INV_level\(0),
	combout => \parite|WideOr28~0_combout\);

-- Location: LABCELL_X48_Y18_N9
\parite|CRC_reg~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~22_combout\ = ( \parite|WideOr28~0_combout\ & ( (\parite|level\(4) & \parite|level\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(4),
	datab => \parite|ALT_INV_level\(5),
	dataf => \parite|ALT_INV_WideOr28~0_combout\,
	combout => \parite|CRC_reg~22_combout\);

-- Location: LABCELL_X48_Y18_N36
\parite|CRC_reg~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~23_combout\ = ( \parite|CRC_reg\(30) & ( \parite|CRC_reg~22_combout\ & ( (!\parite|WideOr43~0_combout\ & ((!\parite|Selector28~1_combout\) # ((!\parite|Selector28~2_combout\) # (\parite|Selector28~0_combout\)))) ) ) ) # ( 
-- !\parite|CRC_reg\(30) & ( \parite|CRC_reg~22_combout\ & ( (!\parite|WideOr43~0_combout\ & ((!\parite|Selector28~1_combout\) # ((!\parite|Selector28~2_combout\) # (\parite|Selector28~0_combout\)))) ) ) ) # ( \parite|CRC_reg\(30) & ( 
-- !\parite|CRC_reg~22_combout\ & ( !\parite|WideOr43~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101010101000101010101010100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_WideOr43~0_combout\,
	datab => \parite|ALT_INV_Selector28~1_combout\,
	datac => \parite|ALT_INV_Selector28~2_combout\,
	datad => \parite|ALT_INV_Selector28~0_combout\,
	datae => \parite|ALT_INV_CRC_reg\(30),
	dataf => \parite|ALT_INV_CRC_reg~22_combout\,
	combout => \parite|CRC_reg~23_combout\);

-- Location: MLABCELL_X49_Y19_N3
\parite|WideOr27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr27~0_combout\ = ( \parite|level\(3) & ( (\parite|level\(5) & ((!\parite|level\(2)) # (!\parite|level\(1)))) ) ) # ( !\parite|level\(3) & ( (\parite|level\(2) & (\parite|level\(1) & \parite|level\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000111011100000000011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(2),
	datab => \parite|ALT_INV_level\(1),
	datad => \parite|ALT_INV_level\(5),
	dataf => \parite|ALT_INV_level\(3),
	combout => \parite|WideOr27~0_combout\);

-- Location: LABCELL_X48_Y18_N48
\parite|CRC_reg~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~32_combout\ = ( \parite|WideOr27~0_combout\ & ( \parite|level\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \parite|ALT_INV_level\(4),
	dataf => \parite|ALT_INV_WideOr27~0_combout\,
	combout => \parite|CRC_reg~32_combout\);

-- Location: LABCELL_X48_Y18_N45
\parite|WideOr44~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr44~0_combout\ = ( \parite|WideOr42~0_combout\ & ( (\parite|level\(1) & (\parite|WideOr35~0_combout\ & (!\parite|level\(4) $ (\parite|level\(5))))) ) ) # ( !\parite|WideOr42~0_combout\ & ( (!\parite|level\(4) & (!\parite|level\(5))) # 
-- (\parite|level\(4) & (\parite|level\(5) & (\parite|level\(1) & \parite|WideOr35~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001001100010001000100100000000000010010000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(4),
	datab => \parite|ALT_INV_level\(5),
	datac => \parite|ALT_INV_level\(1),
	datad => \parite|ALT_INV_WideOr35~0_combout\,
	dataf => \parite|ALT_INV_WideOr42~0_combout\,
	combout => \parite|WideOr44~0_combout\);

-- Location: LABCELL_X48_Y20_N36
\parite|Decoder0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Decoder0~10_combout\ = ( \parite|level\(2) & ( !\parite|level\(0) & ( (\parite|level\(1) & (\parite|level\(4) & (!\parite|level\(3) & \parite|level\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(1),
	datab => \parite|ALT_INV_level\(4),
	datac => \parite|ALT_INV_level\(3),
	datad => \parite|ALT_INV_level\(5),
	datae => \parite|ALT_INV_level\(2),
	dataf => \parite|ALT_INV_level\(0),
	combout => \parite|Decoder0~10_combout\);

-- Location: MLABCELL_X49_Y20_N18
\parite|Selector27~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector27~1_combout\ = ( \parite|Decoder0~8_combout\ & ( \parite|Decoder0~10_combout\ & ( (!\D_in[7]~input_o\ & (!\D_in[5]~input_o\ & ((!\parite|Decoder0~9_combout\) # (!\D_in[6]~input_o\)))) ) ) ) # ( !\parite|Decoder0~8_combout\ & ( 
-- \parite|Decoder0~10_combout\ & ( (!\D_in[7]~input_o\ & ((!\parite|Decoder0~9_combout\) # (!\D_in[6]~input_o\))) ) ) ) # ( \parite|Decoder0~8_combout\ & ( !\parite|Decoder0~10_combout\ & ( (!\D_in[5]~input_o\ & ((!\parite|Decoder0~9_combout\) # 
-- (!\D_in[6]~input_o\))) ) ) ) # ( !\parite|Decoder0~8_combout\ & ( !\parite|Decoder0~10_combout\ & ( (!\parite|Decoder0~9_combout\) # (!\D_in[6]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010111100001010000011001100100010001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Decoder0~9_combout\,
	datab => \ALT_INV_D_in[7]~input_o\,
	datac => \ALT_INV_D_in[5]~input_o\,
	datad => \ALT_INV_D_in[6]~input_o\,
	datae => \parite|ALT_INV_Decoder0~8_combout\,
	dataf => \parite|ALT_INV_Decoder0~10_combout\,
	combout => \parite|Selector27~1_combout\);

-- Location: MLABCELL_X49_Y20_N24
\parite|Selector27~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector27~2_combout\ = ( !\parite|Decoder0~2_combout\ & ( \D_in[4]~input_o\ & ( (!\D_in[2]~input_o\ & (((!\parite|Decoder0~3_combout\) # (!\D_in[3]~input_o\)))) # (\D_in[2]~input_o\ & (!\parite|Decoder0~4_combout\ & 
-- ((!\parite|Decoder0~3_combout\) # (!\D_in[3]~input_o\)))) ) ) ) # ( \parite|Decoder0~2_combout\ & ( !\D_in[4]~input_o\ & ( (!\D_in[2]~input_o\ & (((!\parite|Decoder0~3_combout\) # (!\D_in[3]~input_o\)))) # (\D_in[2]~input_o\ & 
-- (!\parite|Decoder0~4_combout\ & ((!\parite|Decoder0~3_combout\) # (!\D_in[3]~input_o\)))) ) ) ) # ( !\parite|Decoder0~2_combout\ & ( !\D_in[4]~input_o\ & ( (!\D_in[2]~input_o\ & (((!\parite|Decoder0~3_combout\) # (!\D_in[3]~input_o\)))) # 
-- (\D_in[2]~input_o\ & (!\parite|Decoder0~4_combout\ & ((!\parite|Decoder0~3_combout\) # (!\D_in[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011100000111011101110000011101110111000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[2]~input_o\,
	datab => \parite|ALT_INV_Decoder0~4_combout\,
	datac => \parite|ALT_INV_Decoder0~3_combout\,
	datad => \ALT_INV_D_in[3]~input_o\,
	datae => \parite|ALT_INV_Decoder0~2_combout\,
	dataf => \ALT_INV_D_in[4]~input_o\,
	combout => \parite|Selector27~2_combout\);

-- Location: LABCELL_X48_Y18_N51
\parite|Selector27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector27~0_combout\ = (!\D_in[1]~input_o\ & (\parite|Decoder0~6_combout\ & ((\D_in[0]~input_o\)))) # (\D_in[1]~input_o\ & (((\parite|Decoder0~6_combout\ & \D_in[0]~input_o\)) # (\parite|Decoder0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000101001101110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[1]~input_o\,
	datab => \parite|ALT_INV_Decoder0~6_combout\,
	datac => \parite|ALT_INV_Decoder0~5_combout\,
	datad => \ALT_INV_D_in[0]~input_o\,
	combout => \parite|Selector27~0_combout\);

-- Location: LABCELL_X48_Y18_N12
\parite|CRC_reg~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~33_combout\ = ( \parite|CRC_reg\(29) & ( \parite|Selector27~0_combout\ & ( !\parite|WideOr44~0_combout\ ) ) ) # ( !\parite|CRC_reg\(29) & ( \parite|Selector27~0_combout\ & ( (\parite|CRC_reg~32_combout\ & !\parite|WideOr44~0_combout\) ) ) 
-- ) # ( \parite|CRC_reg\(29) & ( !\parite|Selector27~0_combout\ & ( (!\parite|WideOr44~0_combout\ & ((!\parite|CRC_reg~32_combout\) # ((!\parite|Selector27~1_combout\) # (!\parite|Selector27~2_combout\)))) ) ) ) # ( !\parite|CRC_reg\(29) & ( 
-- !\parite|Selector27~0_combout\ & ( (\parite|CRC_reg~32_combout\ & (!\parite|WideOr44~0_combout\ & ((!\parite|Selector27~1_combout\) # (!\parite|Selector27~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000000110011001100100001000100010001001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_CRC_reg~32_combout\,
	datab => \parite|ALT_INV_WideOr44~0_combout\,
	datac => \parite|ALT_INV_Selector27~1_combout\,
	datad => \parite|ALT_INV_Selector27~2_combout\,
	datae => \parite|ALT_INV_CRC_reg\(29),
	dataf => \parite|ALT_INV_Selector27~0_combout\,
	combout => \parite|CRC_reg~33_combout\);

-- Location: MLABCELL_X49_Y18_N54
\parite|WideOr45~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr45~0_combout\ = ( \parite|level\(3) & ( (\parite|level\(2) & ((\parite|level\(1)) # (\parite|level\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001010101010001000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(2),
	datab => \parite|ALT_INV_level\(0),
	datad => \parite|ALT_INV_level\(1),
	dataf => \parite|ALT_INV_level\(3),
	combout => \parite|WideOr45~0_combout\);

-- Location: LABCELL_X47_Y19_N0
\parite|WideOr26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr26~0_combout\ = ( \parite|level\(1) & ( !\parite|level\(2) $ (!\parite|level\(3)) ) ) # ( !\parite|level\(1) & ( !\parite|level\(3) $ (((!\parite|level\(2)) # (!\parite|level\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111100000011110011110000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_level\(2),
	datac => \parite|ALT_INV_level\(3),
	datad => \parite|ALT_INV_level\(0),
	dataf => \parite|ALT_INV_level\(1),
	combout => \parite|WideOr26~0_combout\);

-- Location: MLABCELL_X49_Y20_N30
\parite|CRC_reg~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~43_combout\ = ( \D_in[0]~input_o\ & ( ((\D_in[1]~input_o\ & \parite|Decoder0~4_combout\)) # (\parite|Decoder0~5_combout\) ) ) # ( !\D_in[0]~input_o\ & ( (\D_in[1]~input_o\ & \parite|Decoder0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[1]~input_o\,
	datac => \parite|ALT_INV_Decoder0~5_combout\,
	datad => \parite|ALT_INV_Decoder0~4_combout\,
	dataf => \ALT_INV_D_in[0]~input_o\,
	combout => \parite|CRC_reg~43_combout\);

-- Location: LABCELL_X48_Y20_N45
\parite|Decoder0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Decoder0~11_combout\ = ( !\parite|level\(1) & ( \parite|level\(4) & ( (\parite|level\(0) & (\parite|level\(5) & (\parite|level\(2) & !\parite|level\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(0),
	datab => \parite|ALT_INV_level\(5),
	datac => \parite|ALT_INV_level\(2),
	datad => \parite|ALT_INV_level\(3),
	datae => \parite|ALT_INV_level\(1),
	dataf => \parite|ALT_INV_level\(4),
	combout => \parite|Decoder0~11_combout\);

-- Location: MLABCELL_X49_Y20_N6
\parite|CRC_reg~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~44_combout\ = ( \parite|Decoder0~9_combout\ & ( \parite|Decoder0~10_combout\ & ( (!\D_in[5]~input_o\ & (!\D_in[6]~input_o\ & ((!\parite|Decoder0~11_combout\) # (!\D_in[7]~input_o\)))) ) ) ) # ( !\parite|Decoder0~9_combout\ & ( 
-- \parite|Decoder0~10_combout\ & ( (!\D_in[6]~input_o\ & ((!\parite|Decoder0~11_combout\) # (!\D_in[7]~input_o\))) ) ) ) # ( \parite|Decoder0~9_combout\ & ( !\parite|Decoder0~10_combout\ & ( (!\D_in[5]~input_o\ & ((!\parite|Decoder0~11_combout\) # 
-- (!\D_in[7]~input_o\))) ) ) ) # ( !\parite|Decoder0~9_combout\ & ( !\parite|Decoder0~10_combout\ & ( (!\parite|Decoder0~11_combout\) # (!\D_in[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111000001110000011101110000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Decoder0~11_combout\,
	datab => \ALT_INV_D_in[7]~input_o\,
	datac => \ALT_INV_D_in[5]~input_o\,
	datad => \ALT_INV_D_in[6]~input_o\,
	datae => \parite|ALT_INV_Decoder0~9_combout\,
	dataf => \parite|ALT_INV_Decoder0~10_combout\,
	combout => \parite|CRC_reg~44_combout\);

-- Location: MLABCELL_X49_Y20_N45
\parite|CRC_reg~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~45_combout\ = ( \D_in[4]~input_o\ & ( ((\parite|Decoder0~2_combout\ & \D_in[3]~input_o\)) # (\parite|Decoder0~8_combout\) ) ) # ( !\D_in[4]~input_o\ & ( (\parite|Decoder0~2_combout\ & \D_in[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Decoder0~8_combout\,
	datac => \parite|ALT_INV_Decoder0~2_combout\,
	datad => \ALT_INV_D_in[3]~input_o\,
	dataf => \ALT_INV_D_in[4]~input_o\,
	combout => \parite|CRC_reg~45_combout\);

-- Location: MLABCELL_X49_Y20_N0
\parite|CRC_reg~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~46_combout\ = ( \D_in[2]~input_o\ & ( ((!\parite|CRC_reg~44_combout\) # ((\parite|CRC_reg~45_combout\) # (\parite|Decoder0~3_combout\))) # (\parite|CRC_reg~43_combout\) ) ) # ( !\D_in[2]~input_o\ & ( ((!\parite|CRC_reg~44_combout\) # 
-- (\parite|CRC_reg~45_combout\)) # (\parite|CRC_reg~43_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111111111110111011111111111011111111111111101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_CRC_reg~43_combout\,
	datab => \parite|ALT_INV_CRC_reg~44_combout\,
	datac => \parite|ALT_INV_Decoder0~3_combout\,
	datad => \parite|ALT_INV_CRC_reg~45_combout\,
	dataf => \ALT_INV_D_in[2]~input_o\,
	combout => \parite|CRC_reg~46_combout\);

-- Location: LABCELL_X52_Y19_N30
\parite|CRC_reg~168\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~168_combout\ = ( !\parite|level\(4) & ( ((\parite|CRC_reg\(28) & (((\parite|WideOr42~0_combout\)) # (\parite|level\(5))))) ) ) # ( \parite|level\(4) & ( (!\parite|level\(5) & ((((\parite|CRC_reg\(28)))))) # (\parite|level\(5) & 
-- (!\parite|WideOr45~0_combout\ & ((!\parite|WideOr26~0_combout\ & (\parite|CRC_reg\(28))) # (\parite|WideOr26~0_combout\ & ((\parite|CRC_reg~46_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000001011111000000001110101000000000010111110000010011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(5),
	datab => \parite|ALT_INV_WideOr45~0_combout\,
	datac => \parite|ALT_INV_WideOr26~0_combout\,
	datad => \parite|ALT_INV_CRC_reg\(28),
	datae => \parite|ALT_INV_level\(4),
	dataf => \parite|ALT_INV_CRC_reg~46_combout\,
	datag => \parite|ALT_INV_WideOr42~0_combout\,
	combout => \parite|CRC_reg~168_combout\);

-- Location: MLABCELL_X49_Y19_N39
\parite|WideOr25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr25~0_combout\ = ( \parite|level\(3) & ( (!\parite|level\(2) & (\parite|level\(4) & \parite|level\(5))) ) ) # ( !\parite|level\(3) & ( (\parite|level\(2) & (\parite|level\(4) & \parite|level\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(2),
	datac => \parite|ALT_INV_level\(4),
	datad => \parite|ALT_INV_level\(5),
	dataf => \parite|ALT_INV_level\(3),
	combout => \parite|WideOr25~0_combout\);

-- Location: LABCELL_X48_Y20_N51
\parite|Decoder0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Decoder0~12_combout\ = ( !\parite|level\(1) & ( \parite|level\(4) & ( (!\parite|level\(0) & (\parite|level\(5) & (\parite|level\(2) & !\parite|level\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(0),
	datab => \parite|ALT_INV_level\(5),
	datac => \parite|ALT_INV_level\(2),
	datad => \parite|ALT_INV_level\(3),
	datae => \parite|ALT_INV_level\(1),
	dataf => \parite|ALT_INV_level\(4),
	combout => \parite|Decoder0~12_combout\);

-- Location: MLABCELL_X45_Y20_N30
\parite|Selector25~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector25~1_combout\ = ( \parite|Decoder0~10_combout\ & ( \D_in[7]~input_o\ & ( (!\parite|Decoder0~12_combout\ & (!\D_in[5]~input_o\ & ((!\D_in[6]~input_o\) # (!\parite|Decoder0~11_combout\)))) ) ) ) # ( !\parite|Decoder0~10_combout\ & ( 
-- \D_in[7]~input_o\ & ( (!\parite|Decoder0~12_combout\ & ((!\D_in[6]~input_o\) # (!\parite|Decoder0~11_combout\))) ) ) ) # ( \parite|Decoder0~10_combout\ & ( !\D_in[7]~input_o\ & ( (!\D_in[5]~input_o\ & ((!\D_in[6]~input_o\) # 
-- (!\parite|Decoder0~11_combout\))) ) ) ) # ( !\parite|Decoder0~10_combout\ & ( !\D_in[7]~input_o\ & ( (!\D_in[6]~input_o\) # (!\parite|Decoder0~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011100000000011100000111000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[6]~input_o\,
	datab => \parite|ALT_INV_Decoder0~11_combout\,
	datac => \parite|ALT_INV_Decoder0~12_combout\,
	datad => \ALT_INV_D_in[5]~input_o\,
	datae => \parite|ALT_INV_Decoder0~10_combout\,
	dataf => \ALT_INV_D_in[7]~input_o\,
	combout => \parite|Selector25~1_combout\);

-- Location: MLABCELL_X49_Y20_N42
\parite|Selector25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector25~0_combout\ = ( \D_in[0]~input_o\ & ( ((\D_in[1]~input_o\ & \parite|Decoder0~3_combout\)) # (\parite|Decoder0~4_combout\) ) ) # ( !\D_in[0]~input_o\ & ( (\D_in[1]~input_o\ & \parite|Decoder0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_Decoder0~4_combout\,
	datac => \ALT_INV_D_in[1]~input_o\,
	datad => \parite|ALT_INV_Decoder0~3_combout\,
	dataf => \ALT_INV_D_in[0]~input_o\,
	combout => \parite|Selector25~0_combout\);

-- Location: LABCELL_X47_Y21_N12
\parite|Selector25~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector25~2_combout\ = ( \D_in[4]~input_o\ & ( \D_in[3]~input_o\ & ( (!\parite|Decoder0~9_combout\ & (!\parite|Decoder0~8_combout\ & ((!\parite|Decoder0~2_combout\) # (!\D_in[2]~input_o\)))) ) ) ) # ( !\D_in[4]~input_o\ & ( \D_in[3]~input_o\ & ( 
-- (!\parite|Decoder0~8_combout\ & ((!\parite|Decoder0~2_combout\) # (!\D_in[2]~input_o\))) ) ) ) # ( \D_in[4]~input_o\ & ( !\D_in[3]~input_o\ & ( (!\parite|Decoder0~9_combout\ & ((!\parite|Decoder0~2_combout\) # (!\D_in[2]~input_o\))) ) ) ) # ( 
-- !\D_in[4]~input_o\ & ( !\D_in[3]~input_o\ & ( (!\parite|Decoder0~2_combout\) # (!\D_in[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000101010101010000011001100110000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Decoder0~9_combout\,
	datab => \parite|ALT_INV_Decoder0~8_combout\,
	datac => \parite|ALT_INV_Decoder0~2_combout\,
	datad => \ALT_INV_D_in[2]~input_o\,
	datae => \ALT_INV_D_in[4]~input_o\,
	dataf => \ALT_INV_D_in[3]~input_o\,
	combout => \parite|Selector25~2_combout\);

-- Location: LABCELL_X48_Y20_N30
\parite|WideOr46~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr46~0_combout\ = ( \parite|level\(4) & ( (\parite|level\(5) & \parite|WideOr35~0_combout\) ) ) # ( !\parite|level\(4) & ( (!\parite|level\(5) & ((!\parite|WideOr42~0_combout\) # (\parite|WideOr35~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000001100110011000000110000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_level\(5),
	datac => \parite|ALT_INV_WideOr35~0_combout\,
	datad => \parite|ALT_INV_WideOr42~0_combout\,
	dataf => \parite|ALT_INV_level\(4),
	combout => \parite|WideOr46~0_combout\);

-- Location: LABCELL_X47_Y20_N30
\parite|CRC_reg~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~48_combout\ = ( \parite|CRC_reg\(27) & ( !\parite|WideOr46~0_combout\ & ( (!\parite|WideOr25~0_combout\) # ((!\parite|Selector25~1_combout\) # ((!\parite|Selector25~2_combout\) # (\parite|Selector25~0_combout\))) ) ) ) # ( 
-- !\parite|CRC_reg\(27) & ( !\parite|WideOr46~0_combout\ & ( (\parite|WideOr25~0_combout\ & ((!\parite|Selector25~1_combout\) # ((!\parite|Selector25~2_combout\) # (\parite|Selector25~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101000101111111111110111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_WideOr25~0_combout\,
	datab => \parite|ALT_INV_Selector25~1_combout\,
	datac => \parite|ALT_INV_Selector25~0_combout\,
	datad => \parite|ALT_INV_Selector25~2_combout\,
	datae => \parite|ALT_INV_CRC_reg\(27),
	dataf => \parite|ALT_INV_WideOr46~0_combout\,
	combout => \parite|CRC_reg~48_combout\);

-- Location: MLABCELL_X49_Y17_N45
\parite|WideOr47~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr47~0_combout\ = ( \parite|level\(0) & ( (\parite|level\(3) & ((\parite|level\(1)) # (\parite|level\(2)))) ) ) # ( !\parite|level\(0) & ( (\parite|level\(2) & \parite|level\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_level\(2),
	datac => \parite|ALT_INV_level\(1),
	datad => \parite|ALT_INV_level\(3),
	dataf => \parite|ALT_INV_level\(0),
	combout => \parite|WideOr47~0_combout\);

-- Location: MLABCELL_X49_Y19_N6
\parite|WideOr24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr24~0_combout\ = ( \parite|level\(3) & ( (!\parite|level\(2) & ((!\parite|level\(0)) # (!\parite|level\(1)))) ) ) # ( !\parite|level\(3) & ( ((\parite|level\(0) & \parite|level\(1))) # (\parite|level\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111111111000100011111111111101110000000001110111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(0),
	datab => \parite|ALT_INV_level\(1),
	datad => \parite|ALT_INV_level\(2),
	dataf => \parite|ALT_INV_level\(3),
	combout => \parite|WideOr24~0_combout\);

-- Location: LABCELL_X48_Y20_N39
\parite|Decoder0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Decoder0~13_combout\ = ( \parite|level\(0) & ( !\parite|level\(2) & ( (\parite|level\(1) & (\parite|level\(4) & (\parite|level\(5) & !\parite|level\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(1),
	datab => \parite|ALT_INV_level\(4),
	datac => \parite|ALT_INV_level\(5),
	datad => \parite|ALT_INV_level\(3),
	datae => \parite|ALT_INV_level\(0),
	dataf => \parite|ALT_INV_level\(2),
	combout => \parite|Decoder0~13_combout\);

-- Location: MLABCELL_X45_Y20_N6
\parite|CRC_reg~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~51_combout\ = ( \parite|Decoder0~11_combout\ & ( \D_in[6]~input_o\ & ( (!\D_in[5]~input_o\ & (!\parite|Decoder0~12_combout\ & ((!\parite|Decoder0~13_combout\) # (!\D_in[7]~input_o\)))) ) ) ) # ( !\parite|Decoder0~11_combout\ & ( 
-- \D_in[6]~input_o\ & ( (!\parite|Decoder0~12_combout\ & ((!\parite|Decoder0~13_combout\) # (!\D_in[7]~input_o\))) ) ) ) # ( \parite|Decoder0~11_combout\ & ( !\D_in[6]~input_o\ & ( (!\D_in[5]~input_o\ & ((!\parite|Decoder0~13_combout\) # 
-- (!\D_in[7]~input_o\))) ) ) ) # ( !\parite|Decoder0~11_combout\ & ( !\D_in[6]~input_o\ & ( (!\parite|Decoder0~13_combout\) # (!\D_in[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010110011001000100011110000101000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Decoder0~13_combout\,
	datab => \ALT_INV_D_in[5]~input_o\,
	datac => \parite|ALT_INV_Decoder0~12_combout\,
	datad => \ALT_INV_D_in[7]~input_o\,
	datae => \parite|ALT_INV_Decoder0~11_combout\,
	dataf => \ALT_INV_D_in[6]~input_o\,
	combout => \parite|CRC_reg~51_combout\);

-- Location: MLABCELL_X49_Y20_N51
\parite|CRC_reg~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~52_combout\ = ( \D_in[4]~input_o\ & ( ((\D_in[3]~input_o\ & \parite|Decoder0~9_combout\)) # (\parite|Decoder0~10_combout\) ) ) # ( !\D_in[4]~input_o\ & ( (\D_in[3]~input_o\ & \parite|Decoder0~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Decoder0~10_combout\,
	datac => \ALT_INV_D_in[3]~input_o\,
	datad => \parite|ALT_INV_Decoder0~9_combout\,
	dataf => \ALT_INV_D_in[4]~input_o\,
	combout => \parite|CRC_reg~52_combout\);

-- Location: MLABCELL_X49_Y20_N48
\parite|CRC_reg~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~50_combout\ = ( \D_in[0]~input_o\ & ( ((\parite|Decoder0~2_combout\ & \D_in[1]~input_o\)) # (\parite|Decoder0~3_combout\) ) ) # ( !\D_in[0]~input_o\ & ( (\parite|Decoder0~2_combout\ & \D_in[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_Decoder0~2_combout\,
	datac => \ALT_INV_D_in[1]~input_o\,
	datad => \parite|ALT_INV_Decoder0~3_combout\,
	dataf => \ALT_INV_D_in[0]~input_o\,
	combout => \parite|CRC_reg~50_combout\);

-- Location: MLABCELL_X49_Y20_N54
\parite|CRC_reg~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~53_combout\ = ( \D_in[2]~input_o\ & ( ((!\parite|CRC_reg~51_combout\) # ((\parite|CRC_reg~50_combout\) # (\parite|CRC_reg~52_combout\))) # (\parite|Decoder0~8_combout\) ) ) # ( !\D_in[2]~input_o\ & ( (!\parite|CRC_reg~51_combout\) # 
-- ((\parite|CRC_reg~50_combout\) # (\parite|CRC_reg~52_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111111111110011111111111111011111111111111101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Decoder0~8_combout\,
	datab => \parite|ALT_INV_CRC_reg~51_combout\,
	datac => \parite|ALT_INV_CRC_reg~52_combout\,
	datad => \parite|ALT_INV_CRC_reg~50_combout\,
	dataf => \ALT_INV_D_in[2]~input_o\,
	combout => \parite|CRC_reg~53_combout\);

-- Location: LABCELL_X47_Y20_N36
\parite|CRC_reg~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~164_combout\ = ( !\parite|level\(4) & ( (\parite|CRC_reg\(26) & ((((\parite|level\(5))) # (\parite|WideOr42~0_combout\)))) ) ) # ( \parite|level\(4) & ( (!\parite|level\(5) & (\parite|CRC_reg\(26))) # (\parite|level\(5) & 
-- (!\parite|WideOr47~0_combout\ & ((!\parite|WideOr24~0_combout\ & (\parite|CRC_reg\(26))) # (\parite|WideOr24~0_combout\ & ((\parite|CRC_reg~53_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101010101010101010101010101010101010100000001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_CRC_reg\(26),
	datab => \parite|ALT_INV_WideOr47~0_combout\,
	datac => \parite|ALT_INV_WideOr24~0_combout\,
	datad => \parite|ALT_INV_CRC_reg~53_combout\,
	datae => \parite|ALT_INV_level\(4),
	dataf => \parite|ALT_INV_level\(5),
	datag => \parite|ALT_INV_WideOr42~0_combout\,
	combout => \parite|CRC_reg~164_combout\);

-- Location: MLABCELL_X49_Y20_N57
\parite|Selector23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector23~0_combout\ = ( \D_in[1]~input_o\ & ( ((\parite|Decoder0~2_combout\ & \D_in[0]~input_o\)) # (\parite|Decoder0~8_combout\) ) ) # ( !\D_in[1]~input_o\ & ( (\parite|Decoder0~2_combout\ & \D_in[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Decoder0~8_combout\,
	datac => \parite|ALT_INV_Decoder0~2_combout\,
	datad => \ALT_INV_D_in[0]~input_o\,
	dataf => \ALT_INV_D_in[1]~input_o\,
	combout => \parite|Selector23~0_combout\);

-- Location: MLABCELL_X45_Y20_N48
\parite|Selector23~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector23~2_combout\ = ( !\parite|Decoder0~10_combout\ & ( \D_in[3]~input_o\ & ( (!\D_in[2]~input_o\ & ((!\parite|Decoder0~11_combout\) # ((!\D_in[4]~input_o\)))) # (\D_in[2]~input_o\ & (!\parite|Decoder0~9_combout\ & 
-- ((!\parite|Decoder0~11_combout\) # (!\D_in[4]~input_o\)))) ) ) ) # ( \parite|Decoder0~10_combout\ & ( !\D_in[3]~input_o\ & ( (!\D_in[2]~input_o\ & ((!\parite|Decoder0~11_combout\) # ((!\D_in[4]~input_o\)))) # (\D_in[2]~input_o\ & 
-- (!\parite|Decoder0~9_combout\ & ((!\parite|Decoder0~11_combout\) # (!\D_in[4]~input_o\)))) ) ) ) # ( !\parite|Decoder0~10_combout\ & ( !\D_in[3]~input_o\ & ( (!\D_in[2]~input_o\ & ((!\parite|Decoder0~11_combout\) # ((!\D_in[4]~input_o\)))) # 
-- (\D_in[2]~input_o\ & (!\parite|Decoder0~9_combout\ & ((!\parite|Decoder0~11_combout\) # (!\D_in[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011001000111110101100100011111010110010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[2]~input_o\,
	datab => \parite|ALT_INV_Decoder0~11_combout\,
	datac => \parite|ALT_INV_Decoder0~9_combout\,
	datad => \ALT_INV_D_in[4]~input_o\,
	datae => \parite|ALT_INV_Decoder0~10_combout\,
	dataf => \ALT_INV_D_in[3]~input_o\,
	combout => \parite|Selector23~2_combout\);

-- Location: MLABCELL_X49_Y19_N45
\parite|Decoder0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Decoder0~14_combout\ = ( !\parite|level\(0) & ( \parite|level\(1) & ( (!\parite|level\(2) & (\parite|level\(4) & (!\parite|level\(3) & \parite|level\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(2),
	datab => \parite|ALT_INV_level\(4),
	datac => \parite|ALT_INV_level\(3),
	datad => \parite|ALT_INV_level\(5),
	datae => \parite|ALT_INV_level\(0),
	dataf => \parite|ALT_INV_level\(1),
	combout => \parite|Decoder0~14_combout\);

-- Location: MLABCELL_X45_Y20_N42
\parite|Selector23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector23~1_combout\ = ( \parite|Decoder0~14_combout\ & ( \D_in[6]~input_o\ & ( (!\parite|Decoder0~13_combout\ & (!\D_in[7]~input_o\ & ((!\D_in[5]~input_o\) # (!\parite|Decoder0~12_combout\)))) ) ) ) # ( !\parite|Decoder0~14_combout\ & ( 
-- \D_in[6]~input_o\ & ( (!\parite|Decoder0~13_combout\ & ((!\D_in[5]~input_o\) # (!\parite|Decoder0~12_combout\))) ) ) ) # ( \parite|Decoder0~14_combout\ & ( !\D_in[6]~input_o\ & ( (!\D_in[7]~input_o\ & ((!\D_in[5]~input_o\) # 
-- (!\parite|Decoder0~12_combout\))) ) ) ) # ( !\parite|Decoder0~14_combout\ & ( !\D_in[6]~input_o\ & ( (!\D_in[5]~input_o\) # (!\parite|Decoder0~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100111111000000000010101000101010001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Decoder0~13_combout\,
	datab => \ALT_INV_D_in[5]~input_o\,
	datac => \parite|ALT_INV_Decoder0~12_combout\,
	datad => \ALT_INV_D_in[7]~input_o\,
	datae => \parite|ALT_INV_Decoder0~14_combout\,
	dataf => \ALT_INV_D_in[6]~input_o\,
	combout => \parite|Selector23~1_combout\);

-- Location: LABCELL_X47_Y20_N12
\parite|CRC_reg~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~56_combout\ = ( \parite|level\(3) & ( (!\parite|level\(4) & (!\parite|level\(5) & ((!\parite|WideOr42~0_combout\)))) # (\parite|level\(4) & (\parite|level\(5) & (!\parite|WideOr31~0_combout\))) ) ) # ( !\parite|level\(3) & ( 
-- (!\parite|level\(4) & (!\parite|level\(5) & !\parite|WideOr42~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000010011000000100001001100000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(4),
	datab => \parite|ALT_INV_level\(5),
	datac => \parite|ALT_INV_WideOr31~0_combout\,
	datad => \parite|ALT_INV_WideOr42~0_combout\,
	dataf => \parite|ALT_INV_level\(3),
	combout => \parite|CRC_reg~56_combout\);

-- Location: MLABCELL_X49_Y17_N48
\parite|WideOr23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr23~0_combout\ = (\parite|level\(5) & (!\parite|level\(3) $ (((!\parite|level\(2) & !\parite|level\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001111000000000000111100000000000011110000000000001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(2),
	datab => \parite|ALT_INV_level\(1),
	datac => \parite|ALT_INV_level\(3),
	datad => \parite|ALT_INV_level\(5),
	combout => \parite|WideOr23~0_combout\);

-- Location: LABCELL_X47_Y20_N15
\parite|CRC_reg~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~55_combout\ = (\parite|level\(4) & \parite|WideOr23~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(4),
	datad => \parite|ALT_INV_WideOr23~0_combout\,
	combout => \parite|CRC_reg~55_combout\);

-- Location: LABCELL_X47_Y20_N42
\parite|CRC_reg~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~57_combout\ = ( \parite|CRC_reg\(25) & ( \parite|CRC_reg~55_combout\ & ( (!\parite|CRC_reg~56_combout\ & (((!\parite|Selector23~2_combout\) # (!\parite|Selector23~1_combout\)) # (\parite|Selector23~0_combout\))) ) ) ) # ( 
-- !\parite|CRC_reg\(25) & ( \parite|CRC_reg~55_combout\ & ( (!\parite|CRC_reg~56_combout\ & (((!\parite|Selector23~2_combout\) # (!\parite|Selector23~1_combout\)) # (\parite|Selector23~0_combout\))) ) ) ) # ( \parite|CRC_reg\(25) & ( 
-- !\parite|CRC_reg~55_combout\ & ( !\parite|CRC_reg~56_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000011111101000000001111110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Selector23~0_combout\,
	datab => \parite|ALT_INV_Selector23~2_combout\,
	datac => \parite|ALT_INV_Selector23~1_combout\,
	datad => \parite|ALT_INV_CRC_reg~56_combout\,
	datae => \parite|ALT_INV_CRC_reg\(25),
	dataf => \parite|ALT_INV_CRC_reg~55_combout\,
	combout => \parite|CRC_reg~57_combout\);

-- Location: MLABCELL_X45_Y20_N0
\parite|CRC_reg~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~62_combout\ = ( \parite|Decoder0~10_combout\ & ( \D_in[3]~input_o\ & ( (!\D_in[2]~input_o\ & (!\parite|Decoder0~11_combout\ & ((!\parite|Decoder0~12_combout\) # (!\D_in[4]~input_o\)))) ) ) ) # ( !\parite|Decoder0~10_combout\ & ( 
-- \D_in[3]~input_o\ & ( (!\parite|Decoder0~11_combout\ & ((!\parite|Decoder0~12_combout\) # (!\D_in[4]~input_o\))) ) ) ) # ( \parite|Decoder0~10_combout\ & ( !\D_in[3]~input_o\ & ( (!\D_in[2]~input_o\ & ((!\parite|Decoder0~12_combout\) # 
-- (!\D_in[4]~input_o\))) ) ) ) # ( !\parite|Decoder0~10_combout\ & ( !\D_in[3]~input_o\ & ( (!\parite|Decoder0~12_combout\) # (!\D_in[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000101010101010000011001100110000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[2]~input_o\,
	datab => \parite|ALT_INV_Decoder0~11_combout\,
	datac => \parite|ALT_INV_Decoder0~12_combout\,
	datad => \ALT_INV_D_in[4]~input_o\,
	datae => \parite|ALT_INV_Decoder0~10_combout\,
	dataf => \ALT_INV_D_in[3]~input_o\,
	combout => \parite|CRC_reg~62_combout\);

-- Location: MLABCELL_X49_Y19_N42
\parite|Decoder0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Decoder0~15_combout\ = ( !\parite|level\(1) & ( \parite|level\(0) & ( (!\parite|level\(2) & (\parite|level\(4) & (\parite|level\(5) & !\parite|level\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(2),
	datab => \parite|ALT_INV_level\(4),
	datac => \parite|ALT_INV_level\(5),
	datad => \parite|ALT_INV_level\(3),
	datae => \parite|ALT_INV_level\(1),
	dataf => \parite|ALT_INV_level\(0),
	combout => \parite|Decoder0~15_combout\);

-- Location: MLABCELL_X45_Y20_N24
\parite|CRC_reg~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~61_combout\ = ( !\parite|Decoder0~15_combout\ & ( \D_in[7]~input_o\ & ( (!\D_in[6]~input_o\ & (((!\parite|Decoder0~13_combout\) # (!\D_in[5]~input_o\)))) # (\D_in[6]~input_o\ & (!\parite|Decoder0~14_combout\ & 
-- ((!\parite|Decoder0~13_combout\) # (!\D_in[5]~input_o\)))) ) ) ) # ( \parite|Decoder0~15_combout\ & ( !\D_in[7]~input_o\ & ( (!\D_in[6]~input_o\ & (((!\parite|Decoder0~13_combout\) # (!\D_in[5]~input_o\)))) # (\D_in[6]~input_o\ & 
-- (!\parite|Decoder0~14_combout\ & ((!\parite|Decoder0~13_combout\) # (!\D_in[5]~input_o\)))) ) ) ) # ( !\parite|Decoder0~15_combout\ & ( !\D_in[7]~input_o\ & ( (!\D_in[6]~input_o\ & (((!\parite|Decoder0~13_combout\) # (!\D_in[5]~input_o\)))) # 
-- (\D_in[6]~input_o\ & (!\parite|Decoder0~14_combout\ & ((!\parite|Decoder0~13_combout\) # (!\D_in[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011100000111011101110000011101110111000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[6]~input_o\,
	datab => \parite|ALT_INV_Decoder0~14_combout\,
	datac => \parite|ALT_INV_Decoder0~13_combout\,
	datad => \ALT_INV_D_in[5]~input_o\,
	datae => \parite|ALT_INV_Decoder0~15_combout\,
	dataf => \ALT_INV_D_in[7]~input_o\,
	combout => \parite|CRC_reg~61_combout\);

-- Location: LABCELL_X47_Y21_N51
\parite|CRC_reg~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~60_combout\ = ( \parite|Decoder0~8_combout\ & ( ((\D_in[1]~input_o\ & \parite|Decoder0~9_combout\)) # (\D_in[0]~input_o\) ) ) # ( !\parite|Decoder0~8_combout\ & ( (\D_in[1]~input_o\ & \parite|Decoder0~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001101010101011101110101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[0]~input_o\,
	datab => \ALT_INV_D_in[1]~input_o\,
	datad => \parite|ALT_INV_Decoder0~9_combout\,
	dataf => \parite|ALT_INV_Decoder0~8_combout\,
	combout => \parite|CRC_reg~60_combout\);

-- Location: MLABCELL_X49_Y19_N54
\parite|WideOr22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr22~0_combout\ = ( \parite|level\(3) & ( (!\parite|level\(1) & (!\parite|level\(0) & !\parite|level\(2))) ) ) # ( !\parite|level\(3) & ( ((\parite|level\(2)) # (\parite|level\(0))) # (\parite|level\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111111010111111111111110100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(1),
	datac => \parite|ALT_INV_level\(0),
	datad => \parite|ALT_INV_level\(2),
	dataf => \parite|ALT_INV_level\(3),
	combout => \parite|WideOr22~0_combout\);

-- Location: LABCELL_X47_Y20_N54
\parite|CRC_reg~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~63_combout\ = ( \parite|WideOr22~0_combout\ & ( (\parite|level\(5) & (\parite|level\(4) & !\parite|WideOr42~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_level\(5),
	datac => \parite|ALT_INV_level\(4),
	datad => \parite|ALT_INV_WideOr42~0_combout\,
	dataf => \parite|ALT_INV_WideOr22~0_combout\,
	combout => \parite|CRC_reg~63_combout\);

-- Location: LABCELL_X47_Y20_N21
\parite|CRC_reg~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~59_combout\ = ( \parite|WideOr22~0_combout\ & ( (!\parite|level\(5) & (!\parite|level\(4) & !\parite|WideOr42~0_combout\)) # (\parite|level\(5) & (\parite|level\(4))) ) ) # ( !\parite|WideOr22~0_combout\ & ( (!\parite|level\(5) & 
-- (!\parite|level\(4) & !\parite|WideOr42~0_combout\)) # (\parite|level\(5) & (\parite|level\(4) & \parite|WideOr42~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000011110000000000001111000011000000111100001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_level\(5),
	datac => \parite|ALT_INV_level\(4),
	datad => \parite|ALT_INV_WideOr42~0_combout\,
	dataf => \parite|ALT_INV_WideOr22~0_combout\,
	combout => \parite|CRC_reg~59_combout\);

-- Location: LABCELL_X47_Y20_N48
\parite|CRC_reg~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~64_combout\ = ( \parite|CRC_reg\(24) & ( \parite|CRC_reg~59_combout\ & ( (\parite|CRC_reg~63_combout\ & ((!\parite|CRC_reg~62_combout\) # ((!\parite|CRC_reg~61_combout\) # (\parite|CRC_reg~60_combout\)))) ) ) ) # ( !\parite|CRC_reg\(24) & 
-- ( \parite|CRC_reg~59_combout\ & ( (\parite|CRC_reg~63_combout\ & ((!\parite|CRC_reg~62_combout\) # ((!\parite|CRC_reg~61_combout\) # (\parite|CRC_reg~60_combout\)))) ) ) ) # ( \parite|CRC_reg\(24) & ( !\parite|CRC_reg~59_combout\ ) ) # ( 
-- !\parite|CRC_reg\(24) & ( !\parite|CRC_reg~59_combout\ & ( (\parite|CRC_reg~63_combout\ & ((!\parite|CRC_reg~62_combout\) # ((!\parite|CRC_reg~61_combout\) # (\parite|CRC_reg~60_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101111111111111111111100000000111011110000000011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_CRC_reg~62_combout\,
	datab => \parite|ALT_INV_CRC_reg~61_combout\,
	datac => \parite|ALT_INV_CRC_reg~60_combout\,
	datad => \parite|ALT_INV_CRC_reg~63_combout\,
	datae => \parite|ALT_INV_CRC_reg\(24),
	dataf => \parite|ALT_INV_CRC_reg~59_combout\,
	combout => \parite|CRC_reg~64_combout\);

-- Location: LABCELL_X47_Y20_N0
\parite|CRC_reg~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~70_combout\ = ( !\parite|level\(3) & ( (\parite|level\(5) & \parite|level\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_level\(5),
	datac => \parite|ALT_INV_level\(4),
	dataf => \parite|ALT_INV_level\(3),
	combout => \parite|CRC_reg~70_combout\);

-- Location: LABCELL_X47_Y18_N18
\parite|Decoder0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Decoder0~16_combout\ = ( !\parite|level\(2) & ( !\parite|level\(3) & ( (!\parite|level\(0) & (!\parite|level\(1) & (\parite|level\(4) & \parite|level\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(0),
	datab => \parite|ALT_INV_level\(1),
	datac => \parite|ALT_INV_level\(4),
	datad => \parite|ALT_INV_level\(5),
	datae => \parite|ALT_INV_level\(2),
	dataf => \parite|ALT_INV_level\(3),
	combout => \parite|Decoder0~16_combout\);

-- Location: LABCELL_X47_Y21_N54
\parite|CRC_reg~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~68_combout\ = ( !\D_in[7]~input_o\ & ( \parite|Decoder0~16_combout\ & ( (!\parite|Decoder0~14_combout\ & ((!\D_in[6]~input_o\) # ((!\parite|Decoder0~15_combout\)))) # (\parite|Decoder0~14_combout\ & (!\D_in[5]~input_o\ & 
-- ((!\D_in[6]~input_o\) # (!\parite|Decoder0~15_combout\)))) ) ) ) # ( \D_in[7]~input_o\ & ( !\parite|Decoder0~16_combout\ & ( (!\parite|Decoder0~14_combout\ & ((!\D_in[6]~input_o\) # ((!\parite|Decoder0~15_combout\)))) # (\parite|Decoder0~14_combout\ & 
-- (!\D_in[5]~input_o\ & ((!\D_in[6]~input_o\) # (!\parite|Decoder0~15_combout\)))) ) ) ) # ( !\D_in[7]~input_o\ & ( !\parite|Decoder0~16_combout\ & ( (!\parite|Decoder0~14_combout\ & ((!\D_in[6]~input_o\) # ((!\parite|Decoder0~15_combout\)))) # 
-- (\parite|Decoder0~14_combout\ & (!\D_in[5]~input_o\ & ((!\D_in[6]~input_o\) # (!\parite|Decoder0~15_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110010101000111111001010100011111100101010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Decoder0~14_combout\,
	datab => \ALT_INV_D_in[6]~input_o\,
	datac => \parite|ALT_INV_Decoder0~15_combout\,
	datad => \ALT_INV_D_in[5]~input_o\,
	datae => \ALT_INV_D_in[7]~input_o\,
	dataf => \parite|ALT_INV_Decoder0~16_combout\,
	combout => \parite|CRC_reg~68_combout\);

-- Location: MLABCELL_X45_Y20_N36
\parite|CRC_reg~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~69_combout\ = ( \parite|Decoder0~11_combout\ & ( \D_in[3]~input_o\ & ( (!\D_in[2]~input_o\ & (!\parite|Decoder0~12_combout\ & ((!\parite|Decoder0~13_combout\) # (!\D_in[4]~input_o\)))) ) ) ) # ( !\parite|Decoder0~11_combout\ & ( 
-- \D_in[3]~input_o\ & ( (!\parite|Decoder0~12_combout\ & ((!\parite|Decoder0~13_combout\) # (!\D_in[4]~input_o\))) ) ) ) # ( \parite|Decoder0~11_combout\ & ( !\D_in[3]~input_o\ & ( (!\D_in[2]~input_o\ & ((!\parite|Decoder0~13_combout\) # 
-- (!\D_in[4]~input_o\))) ) ) ) # ( !\parite|Decoder0~11_combout\ & ( !\D_in[3]~input_o\ & ( (!\parite|Decoder0~13_combout\) # (!\D_in[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111000001110000011101110000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Decoder0~13_combout\,
	datab => \ALT_INV_D_in[4]~input_o\,
	datac => \ALT_INV_D_in[2]~input_o\,
	datad => \parite|ALT_INV_Decoder0~12_combout\,
	datae => \parite|ALT_INV_Decoder0~11_combout\,
	dataf => \ALT_INV_D_in[3]~input_o\,
	combout => \parite|CRC_reg~69_combout\);

-- Location: MLABCELL_X49_Y20_N33
\parite|CRC_reg~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~67_combout\ = ( \parite|Decoder0~10_combout\ & ( ((\D_in[0]~input_o\ & \parite|Decoder0~9_combout\)) # (\D_in[1]~input_o\) ) ) # ( !\parite|Decoder0~10_combout\ & ( (\D_in[0]~input_o\ & \parite|Decoder0~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001101010101011101110101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[1]~input_o\,
	datab => \ALT_INV_D_in[0]~input_o\,
	datad => \parite|ALT_INV_Decoder0~9_combout\,
	dataf => \parite|ALT_INV_Decoder0~10_combout\,
	combout => \parite|CRC_reg~67_combout\);

-- Location: LABCELL_X48_Y19_N42
\parite|CRC_reg~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~66_combout\ = ( \parite|level\(5) & ( \parite|level\(4) ) ) # ( !\parite|level\(5) & ( (!\parite|level\(4) & !\parite|WideOr42~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(4),
	datab => \parite|ALT_INV_WideOr42~0_combout\,
	dataf => \parite|ALT_INV_level\(5),
	combout => \parite|CRC_reg~66_combout\);

-- Location: LABCELL_X47_Y20_N24
\parite|CRC_reg~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~71_combout\ = ( \parite|CRC_reg\(23) & ( \parite|CRC_reg~66_combout\ & ( (\parite|CRC_reg~70_combout\ & ((!\parite|CRC_reg~68_combout\) # ((!\parite|CRC_reg~69_combout\) # (\parite|CRC_reg~67_combout\)))) ) ) ) # ( !\parite|CRC_reg\(23) & 
-- ( \parite|CRC_reg~66_combout\ & ( (\parite|CRC_reg~70_combout\ & ((!\parite|CRC_reg~68_combout\) # ((!\parite|CRC_reg~69_combout\) # (\parite|CRC_reg~67_combout\)))) ) ) ) # ( \parite|CRC_reg\(23) & ( !\parite|CRC_reg~66_combout\ ) ) # ( 
-- !\parite|CRC_reg\(23) & ( !\parite|CRC_reg~66_combout\ & ( (\parite|CRC_reg~70_combout\ & ((!\parite|CRC_reg~68_combout\) # ((!\parite|CRC_reg~69_combout\) # (\parite|CRC_reg~67_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010101111111111111111101010100010101010101010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_CRC_reg~70_combout\,
	datab => \parite|ALT_INV_CRC_reg~68_combout\,
	datac => \parite|ALT_INV_CRC_reg~69_combout\,
	datad => \parite|ALT_INV_CRC_reg~67_combout\,
	datae => \parite|ALT_INV_CRC_reg\(23),
	dataf => \parite|ALT_INV_CRC_reg~66_combout\,
	combout => \parite|CRC_reg~71_combout\);

-- Location: MLABCELL_X45_Y20_N18
\parite|Selector20~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector20~2_combout\ = ( \parite|Decoder0~14_combout\ & ( \D_in[3]~input_o\ & ( (!\parite|Decoder0~13_combout\ & (!\D_in[4]~input_o\ & ((!\D_in[2]~input_o\) # (!\parite|Decoder0~12_combout\)))) ) ) ) # ( !\parite|Decoder0~14_combout\ & ( 
-- \D_in[3]~input_o\ & ( (!\parite|Decoder0~13_combout\ & ((!\D_in[2]~input_o\) # (!\parite|Decoder0~12_combout\))) ) ) ) # ( \parite|Decoder0~14_combout\ & ( !\D_in[3]~input_o\ & ( (!\D_in[4]~input_o\ & ((!\D_in[2]~input_o\) # 
-- (!\parite|Decoder0~12_combout\))) ) ) ) # ( !\parite|Decoder0~14_combout\ & ( !\D_in[3]~input_o\ & ( (!\D_in[2]~input_o\) # (!\parite|Decoder0~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000110011001100000010101010101000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Decoder0~13_combout\,
	datab => \ALT_INV_D_in[4]~input_o\,
	datac => \ALT_INV_D_in[2]~input_o\,
	datad => \parite|ALT_INV_Decoder0~12_combout\,
	datae => \parite|ALT_INV_Decoder0~14_combout\,
	dataf => \ALT_INV_D_in[3]~input_o\,
	combout => \parite|Selector20~2_combout\);

-- Location: LABCELL_X47_Y18_N12
\parite|Decoder0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Decoder0~17_combout\ = ( !\parite|level\(4) & ( \parite|level\(0) & ( (\parite|level\(2) & (\parite|level\(5) & (\parite|level\(3) & \parite|level\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(2),
	datab => \parite|ALT_INV_level\(5),
	datac => \parite|ALT_INV_level\(3),
	datad => \parite|ALT_INV_level\(1),
	datae => \parite|ALT_INV_level\(4),
	dataf => \parite|ALT_INV_level\(0),
	combout => \parite|Decoder0~17_combout\);

-- Location: MLABCELL_X45_Y19_N30
\parite|Selector20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector20~1_combout\ = ( \parite|Decoder0~17_combout\ & ( \D_in[6]~input_o\ & ( (!\parite|Decoder0~16_combout\ & (!\D_in[7]~input_o\ & ((!\parite|Decoder0~15_combout\) # (!\D_in[5]~input_o\)))) ) ) ) # ( !\parite|Decoder0~17_combout\ & ( 
-- \D_in[6]~input_o\ & ( (!\parite|Decoder0~16_combout\ & ((!\parite|Decoder0~15_combout\) # (!\D_in[5]~input_o\))) ) ) ) # ( \parite|Decoder0~17_combout\ & ( !\D_in[6]~input_o\ & ( (!\D_in[7]~input_o\ & ((!\parite|Decoder0~15_combout\) # 
-- (!\D_in[5]~input_o\))) ) ) ) # ( !\parite|Decoder0~17_combout\ & ( !\D_in[6]~input_o\ & ( (!\parite|Decoder0~15_combout\) # (!\D_in[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011100000000011100000111000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Decoder0~15_combout\,
	datab => \ALT_INV_D_in[5]~input_o\,
	datac => \parite|ALT_INV_Decoder0~16_combout\,
	datad => \ALT_INV_D_in[7]~input_o\,
	datae => \parite|ALT_INV_Decoder0~17_combout\,
	dataf => \ALT_INV_D_in[6]~input_o\,
	combout => \parite|Selector20~1_combout\);

-- Location: MLABCELL_X45_Y20_N15
\parite|Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector20~0_combout\ = (!\D_in[1]~input_o\ & (\D_in[0]~input_o\ & (\parite|Decoder0~10_combout\))) # (\D_in[1]~input_o\ & (((\D_in[0]~input_o\ & \parite|Decoder0~10_combout\)) # (\parite|Decoder0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110101011100000011010101110000001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[1]~input_o\,
	datab => \ALT_INV_D_in[0]~input_o\,
	datac => \parite|ALT_INV_Decoder0~10_combout\,
	datad => \parite|ALT_INV_Decoder0~11_combout\,
	combout => \parite|Selector20~0_combout\);

-- Location: LABCELL_X47_Y19_N9
\parite|CRC_reg~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~73_combout\ = ( \parite|WideOr20~0_combout\ & ( (\parite|level\(5) & (!\parite|level\(4) & \parite|level\(3))) ) ) # ( !\parite|WideOr20~0_combout\ & ( (\parite|level\(5) & (\parite|level\(4) & !\parite|level\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(5),
	datac => \parite|ALT_INV_level\(4),
	datad => \parite|ALT_INV_level\(3),
	dataf => \parite|ALT_INV_WideOr20~0_combout\,
	combout => \parite|CRC_reg~73_combout\);

-- Location: MLABCELL_X49_Y19_N9
\parite|WideOr51~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr51~0_combout\ = ( !\parite|level\(3) & ( (!\parite|level\(0)) # ((!\parite|level\(1)) # (!\parite|level\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101110111111111110111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(0),
	datab => \parite|ALT_INV_level\(1),
	datad => \parite|ALT_INV_level\(2),
	dataf => \parite|ALT_INV_level\(3),
	combout => \parite|WideOr51~0_combout\);

-- Location: MLABCELL_X49_Y19_N12
\parite|WideOr51~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr51~1_combout\ = ( \parite|WideOr51~0_combout\ & ( (!\parite|level\(4) & (!\parite|level\(5) & !\parite|WideOr42~0_combout\)) ) ) # ( !\parite|WideOr51~0_combout\ & ( (!\parite|level\(4) & (!\parite|level\(5) & !\parite|WideOr42~0_combout\)) 
-- # (\parite|level\(4) & (\parite|level\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000011110000110000001111000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_level\(4),
	datac => \parite|ALT_INV_level\(5),
	datad => \parite|ALT_INV_WideOr42~0_combout\,
	dataf => \parite|ALT_INV_WideOr51~0_combout\,
	combout => \parite|WideOr51~1_combout\);

-- Location: LABCELL_X47_Y19_N30
\parite|CRC_reg~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~74_combout\ = ( \parite|CRC_reg\(22) & ( !\parite|WideOr51~1_combout\ & ( (!\parite|Selector20~2_combout\) # ((!\parite|Selector20~1_combout\) # ((!\parite|CRC_reg~73_combout\) # (\parite|Selector20~0_combout\))) ) ) ) # ( 
-- !\parite|CRC_reg\(22) & ( !\parite|WideOr51~1_combout\ & ( (\parite|CRC_reg~73_combout\ & ((!\parite|Selector20~2_combout\) # ((!\parite|Selector20~1_combout\) # (\parite|Selector20~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101111111111111110111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Selector20~2_combout\,
	datab => \parite|ALT_INV_Selector20~1_combout\,
	datac => \parite|ALT_INV_Selector20~0_combout\,
	datad => \parite|ALT_INV_CRC_reg~73_combout\,
	datae => \parite|ALT_INV_CRC_reg\(22),
	dataf => \parite|ALT_INV_WideOr51~1_combout\,
	combout => \parite|CRC_reg~74_combout\);

-- Location: LABCELL_X50_Y17_N39
\parite|WideOr52~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr52~0_combout\ = ( \parite|level\(2) & ( (!\parite|level\(1) & !\parite|level\(3)) ) ) # ( !\parite|level\(2) & ( !\parite|level\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \parite|ALT_INV_level\(1),
	datad => \parite|ALT_INV_level\(3),
	dataf => \parite|ALT_INV_level\(2),
	combout => \parite|WideOr52~0_combout\);

-- Location: MLABCELL_X49_Y17_N42
\parite|WideOr52~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr52~1_combout\ = ( \parite|WideOr52~0_combout\ & ( (!\parite|level\(5) & (!\parite|level\(4) & !\parite|WideOr42~0_combout\)) ) ) # ( !\parite|WideOr52~0_combout\ & ( (!\parite|level\(5) & (!\parite|level\(4) & !\parite|WideOr42~0_combout\)) 
-- # (\parite|level\(5) & (\parite|level\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010100000101101001010000010110100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(5),
	datac => \parite|ALT_INV_level\(4),
	datad => \parite|ALT_INV_WideOr42~0_combout\,
	dataf => \parite|ALT_INV_WideOr52~0_combout\,
	combout => \parite|WideOr52~1_combout\);

-- Location: MLABCELL_X45_Y19_N42
\parite|Selector19~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector19~2_combout\ = ( \parite|Decoder0~13_combout\ & ( \D_in[3]~input_o\ & ( (!\parite|Decoder0~14_combout\ & (!\D_in[2]~input_o\ & ((!\parite|Decoder0~15_combout\) # (!\D_in[4]~input_o\)))) ) ) ) # ( !\parite|Decoder0~13_combout\ & ( 
-- \D_in[3]~input_o\ & ( (!\parite|Decoder0~14_combout\ & ((!\parite|Decoder0~15_combout\) # (!\D_in[4]~input_o\))) ) ) ) # ( \parite|Decoder0~13_combout\ & ( !\D_in[3]~input_o\ & ( (!\D_in[2]~input_o\ & ((!\parite|Decoder0~15_combout\) # 
-- (!\D_in[4]~input_o\))) ) ) ) # ( !\parite|Decoder0~13_combout\ & ( !\D_in[3]~input_o\ & ( (!\parite|Decoder0~15_combout\) # (!\D_in[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000110011001100000010101010101000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Decoder0~14_combout\,
	datab => \ALT_INV_D_in[2]~input_o\,
	datac => \parite|ALT_INV_Decoder0~15_combout\,
	datad => \ALT_INV_D_in[4]~input_o\,
	datae => \parite|ALT_INV_Decoder0~13_combout\,
	dataf => \ALT_INV_D_in[3]~input_o\,
	combout => \parite|Selector19~2_combout\);

-- Location: LABCELL_X48_Y20_N27
\parite|Decoder0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Decoder0~18_combout\ = ( !\parite|level\(0) & ( \parite|level\(1) & ( (\parite|level\(2) & (!\parite|level\(4) & (\parite|level\(5) & \parite|level\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(2),
	datab => \parite|ALT_INV_level\(4),
	datac => \parite|ALT_INV_level\(5),
	datad => \parite|ALT_INV_level\(3),
	datae => \parite|ALT_INV_level\(0),
	dataf => \parite|ALT_INV_level\(1),
	combout => \parite|Decoder0~18_combout\);

-- Location: MLABCELL_X45_Y19_N6
\parite|Selector19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector19~1_combout\ = ( !\parite|Decoder0~17_combout\ & ( \D_in[6]~input_o\ & ( (!\D_in[5]~input_o\ & ((!\parite|Decoder0~18_combout\) # ((!\D_in[7]~input_o\)))) # (\D_in[5]~input_o\ & (!\parite|Decoder0~16_combout\ & 
-- ((!\parite|Decoder0~18_combout\) # (!\D_in[7]~input_o\)))) ) ) ) # ( \parite|Decoder0~17_combout\ & ( !\D_in[6]~input_o\ & ( (!\D_in[5]~input_o\ & ((!\parite|Decoder0~18_combout\) # ((!\D_in[7]~input_o\)))) # (\D_in[5]~input_o\ & 
-- (!\parite|Decoder0~16_combout\ & ((!\parite|Decoder0~18_combout\) # (!\D_in[7]~input_o\)))) ) ) ) # ( !\parite|Decoder0~17_combout\ & ( !\D_in[6]~input_o\ & ( (!\D_in[5]~input_o\ & ((!\parite|Decoder0~18_combout\) # ((!\D_in[7]~input_o\)))) # 
-- (\D_in[5]~input_o\ & (!\parite|Decoder0~16_combout\ & ((!\parite|Decoder0~18_combout\) # (!\D_in[7]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011001000111110101100100011111010110010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[5]~input_o\,
	datab => \parite|ALT_INV_Decoder0~18_combout\,
	datac => \parite|ALT_INV_Decoder0~16_combout\,
	datad => \ALT_INV_D_in[7]~input_o\,
	datae => \parite|ALT_INV_Decoder0~17_combout\,
	dataf => \ALT_INV_D_in[6]~input_o\,
	combout => \parite|Selector19~1_combout\);

-- Location: LABCELL_X47_Y19_N57
\parite|CRC_reg~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~76_combout\ = ( \parite|level\(1) & ( (\parite|level\(5) & ((!\parite|level\(3) & (\parite|level\(4) & !\parite|level\(2))) # (\parite|level\(3) & (!\parite|level\(4) & \parite|level\(2))))) ) ) # ( !\parite|level\(1) & ( 
-- (!\parite|level\(3) & (\parite|level\(4) & \parite|level\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000000001001000000000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(3),
	datab => \parite|ALT_INV_level\(4),
	datac => \parite|ALT_INV_level\(2),
	datad => \parite|ALT_INV_level\(5),
	dataf => \parite|ALT_INV_level\(1),
	combout => \parite|CRC_reg~76_combout\);

-- Location: MLABCELL_X45_Y20_N57
\parite|Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector19~0_combout\ = ( \parite|Decoder0~12_combout\ & ( ((\D_in[0]~input_o\ & \parite|Decoder0~11_combout\)) # (\D_in[1]~input_o\) ) ) # ( !\parite|Decoder0~12_combout\ & ( (\D_in[0]~input_o\ & \parite|Decoder0~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[1]~input_o\,
	datab => \ALT_INV_D_in[0]~input_o\,
	datac => \parite|ALT_INV_Decoder0~11_combout\,
	dataf => \parite|ALT_INV_Decoder0~12_combout\,
	combout => \parite|Selector19~0_combout\);

-- Location: LABCELL_X47_Y19_N36
\parite|CRC_reg~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~77_combout\ = ( \parite|CRC_reg\(21) & ( \parite|Selector19~0_combout\ & ( !\parite|WideOr52~1_combout\ ) ) ) # ( !\parite|CRC_reg\(21) & ( \parite|Selector19~0_combout\ & ( (!\parite|WideOr52~1_combout\ & \parite|CRC_reg~76_combout\) ) ) 
-- ) # ( \parite|CRC_reg\(21) & ( !\parite|Selector19~0_combout\ & ( (!\parite|WideOr52~1_combout\ & ((!\parite|Selector19~2_combout\) # ((!\parite|Selector19~1_combout\) # (!\parite|CRC_reg~76_combout\)))) ) ) ) # ( !\parite|CRC_reg\(21) & ( 
-- !\parite|Selector19~0_combout\ & ( (!\parite|WideOr52~1_combout\ & (\parite|CRC_reg~76_combout\ & ((!\parite|Selector19~2_combout\) # (!\parite|Selector19~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000101010101010100000000000101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_WideOr52~1_combout\,
	datab => \parite|ALT_INV_Selector19~2_combout\,
	datac => \parite|ALT_INV_Selector19~1_combout\,
	datad => \parite|ALT_INV_CRC_reg~76_combout\,
	datae => \parite|ALT_INV_CRC_reg\(21),
	dataf => \parite|ALT_INV_Selector19~0_combout\,
	combout => \parite|CRC_reg~77_combout\);

-- Location: MLABCELL_X45_Y19_N24
\parite|Selector18~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector18~2_combout\ = ( \parite|Decoder0~16_combout\ & ( \D_in[3]~input_o\ & ( (!\parite|Decoder0~15_combout\ & (!\D_in[4]~input_o\ & ((!\parite|Decoder0~14_combout\) # (!\D_in[2]~input_o\)))) ) ) ) # ( !\parite|Decoder0~16_combout\ & ( 
-- \D_in[3]~input_o\ & ( (!\parite|Decoder0~15_combout\ & ((!\parite|Decoder0~14_combout\) # (!\D_in[2]~input_o\))) ) ) ) # ( \parite|Decoder0~16_combout\ & ( !\D_in[3]~input_o\ & ( (!\D_in[4]~input_o\ & ((!\parite|Decoder0~14_combout\) # 
-- (!\D_in[2]~input_o\))) ) ) ) # ( !\parite|Decoder0~16_combout\ & ( !\D_in[3]~input_o\ & ( (!\parite|Decoder0~14_combout\) # (!\D_in[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011100000000011100000111000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Decoder0~14_combout\,
	datab => \ALT_INV_D_in[2]~input_o\,
	datac => \parite|ALT_INV_Decoder0~15_combout\,
	datad => \ALT_INV_D_in[4]~input_o\,
	datae => \parite|ALT_INV_Decoder0~16_combout\,
	dataf => \ALT_INV_D_in[3]~input_o\,
	combout => \parite|Selector18~2_combout\);

-- Location: MLABCELL_X45_Y20_N54
\parite|Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector18~0_combout\ = ( \parite|Decoder0~12_combout\ & ( ((\D_in[1]~input_o\ & \parite|Decoder0~13_combout\)) # (\D_in[0]~input_o\) ) ) # ( !\parite|Decoder0~12_combout\ & ( (\D_in[1]~input_o\ & \parite|Decoder0~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100110111001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[1]~input_o\,
	datab => \ALT_INV_D_in[0]~input_o\,
	datac => \parite|ALT_INV_Decoder0~13_combout\,
	dataf => \parite|ALT_INV_Decoder0~12_combout\,
	combout => \parite|Selector18~0_combout\);

-- Location: MLABCELL_X49_Y19_N0
\parite|WideOr53~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr53~0_combout\ = ( !\parite|level\(3) & ( (!\parite|level\(2)) # ((!\parite|level\(1) & !\parite|level\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101011101010111010101110101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(2),
	datab => \parite|ALT_INV_level\(1),
	datac => \parite|ALT_INV_level\(0),
	dataf => \parite|ALT_INV_level\(3),
	combout => \parite|WideOr53~0_combout\);

-- Location: LABCELL_X47_Y19_N3
\parite|WideOr53~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr53~1_combout\ = ( \parite|WideOr53~0_combout\ & ( (!\parite|WideOr42~0_combout\ & (!\parite|level\(4) & !\parite|level\(5))) ) ) # ( !\parite|WideOr53~0_combout\ & ( (!\parite|level\(4) & (!\parite|WideOr42~0_combout\ & !\parite|level\(5))) 
-- # (\parite|level\(4) & ((\parite|level\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001111101000000000111110100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_WideOr42~0_combout\,
	datac => \parite|ALT_INV_level\(4),
	datad => \parite|ALT_INV_level\(5),
	dataf => \parite|ALT_INV_WideOr53~0_combout\,
	combout => \parite|WideOr53~1_combout\);

-- Location: LABCELL_X48_Y20_N24
\parite|Decoder0~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Decoder0~19_combout\ = ( !\parite|level\(1) & ( \parite|level\(0) & ( (\parite|level\(2) & (!\parite|level\(4) & (\parite|level\(3) & \parite|level\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(2),
	datab => \parite|ALT_INV_level\(4),
	datac => \parite|ALT_INV_level\(3),
	datad => \parite|ALT_INV_level\(5),
	datae => \parite|ALT_INV_level\(1),
	dataf => \parite|ALT_INV_level\(0),
	combout => \parite|Decoder0~19_combout\);

-- Location: MLABCELL_X45_Y19_N18
\parite|Selector18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector18~1_combout\ = ( \D_in[5]~input_o\ & ( \parite|Decoder0~18_combout\ & ( (!\parite|Decoder0~17_combout\ & (!\D_in[6]~input_o\ & ((!\parite|Decoder0~19_combout\) # (!\D_in[7]~input_o\)))) ) ) ) # ( !\D_in[5]~input_o\ & ( 
-- \parite|Decoder0~18_combout\ & ( (!\D_in[6]~input_o\ & ((!\parite|Decoder0~19_combout\) # (!\D_in[7]~input_o\))) ) ) ) # ( \D_in[5]~input_o\ & ( !\parite|Decoder0~18_combout\ & ( (!\parite|Decoder0~17_combout\ & ((!\parite|Decoder0~19_combout\) # 
-- (!\D_in[7]~input_o\))) ) ) ) # ( !\D_in[5]~input_o\ & ( !\parite|Decoder0~18_combout\ & ( (!\parite|Decoder0~19_combout\) # (!\D_in[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010110011001000100011110000101000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Decoder0~19_combout\,
	datab => \parite|ALT_INV_Decoder0~17_combout\,
	datac => \ALT_INV_D_in[6]~input_o\,
	datad => \ALT_INV_D_in[7]~input_o\,
	datae => \ALT_INV_D_in[5]~input_o\,
	dataf => \parite|ALT_INV_Decoder0~18_combout\,
	combout => \parite|Selector18~1_combout\);

-- Location: LABCELL_X47_Y19_N18
\parite|CRC_reg~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~79_combout\ = ( \parite|level\(3) & ( \parite|level\(2) & ( (\parite|level\(5) & (!\parite|level\(4) & ((\parite|level\(0)) # (\parite|level\(1))))) ) ) ) # ( !\parite|level\(3) & ( \parite|level\(2) & ( (\parite|level\(5) & 
-- (\parite|level\(4) & (!\parite|level\(1) & !\parite|level\(0)))) ) ) ) # ( !\parite|level\(3) & ( !\parite|level\(2) & ( (\parite|level\(5) & \parite|level\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000000000000000000010000000000000000010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(5),
	datab => \parite|ALT_INV_level\(4),
	datac => \parite|ALT_INV_level\(1),
	datad => \parite|ALT_INV_level\(0),
	datae => \parite|ALT_INV_level\(3),
	dataf => \parite|ALT_INV_level\(2),
	combout => \parite|CRC_reg~79_combout\);

-- Location: LABCELL_X47_Y19_N42
\parite|CRC_reg~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~80_combout\ = ( \parite|CRC_reg\(20) & ( \parite|CRC_reg~79_combout\ & ( (!\parite|WideOr53~1_combout\ & ((!\parite|Selector18~2_combout\) # ((!\parite|Selector18~1_combout\) # (\parite|Selector18~0_combout\)))) ) ) ) # ( 
-- !\parite|CRC_reg\(20) & ( \parite|CRC_reg~79_combout\ & ( (!\parite|WideOr53~1_combout\ & ((!\parite|Selector18~2_combout\) # ((!\parite|Selector18~1_combout\) # (\parite|Selector18~0_combout\)))) ) ) ) # ( \parite|CRC_reg\(20) & ( 
-- !\parite|CRC_reg~79_combout\ & ( !\parite|WideOr53~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000011110000101100001111000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Selector18~2_combout\,
	datab => \parite|ALT_INV_Selector18~0_combout\,
	datac => \parite|ALT_INV_WideOr53~1_combout\,
	datad => \parite|ALT_INV_Selector18~1_combout\,
	datae => \parite|ALT_INV_CRC_reg\(20),
	dataf => \parite|ALT_INV_CRC_reg~79_combout\,
	combout => \parite|CRC_reg~80_combout\);

-- Location: MLABCELL_X45_Y20_N12
\parite|Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector17~0_combout\ = (!\D_in[1]~input_o\ & (\D_in[0]~input_o\ & (\parite|Decoder0~13_combout\))) # (\D_in[1]~input_o\ & (((\D_in[0]~input_o\ & \parite|Decoder0~13_combout\)) # (\parite|Decoder0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110101011100000011010101110000001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[1]~input_o\,
	datab => \ALT_INV_D_in[0]~input_o\,
	datac => \parite|ALT_INV_Decoder0~13_combout\,
	datad => \parite|ALT_INV_Decoder0~14_combout\,
	combout => \parite|Selector17~0_combout\);

-- Location: LABCELL_X47_Y17_N18
\parite|CRC_reg~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~82_combout\ = (!\parite|level\(2) & !\parite|level\(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \parite|ALT_INV_level\(2),
	datad => \parite|ALT_INV_level\(3),
	combout => \parite|CRC_reg~82_combout\);

-- Location: LABCELL_X47_Y17_N24
\parite|CRC_reg~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~83_combout\ = ( \parite|WideOr42~0_combout\ & ( (!\parite|CRC_reg~82_combout\ & (\parite|level\(5) & \parite|level\(4))) ) ) # ( !\parite|WideOr42~0_combout\ & ( (!\parite|level\(5) & ((!\parite|level\(4)))) # (\parite|level\(5) & 
-- (!\parite|CRC_reg~82_combout\ & \parite|level\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000100010110011000010001000000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_CRC_reg~82_combout\,
	datab => \parite|ALT_INV_level\(5),
	datad => \parite|ALT_INV_level\(4),
	dataf => \parite|ALT_INV_WideOr42~0_combout\,
	combout => \parite|CRC_reg~83_combout\);

-- Location: LABCELL_X47_Y19_N27
\parite|WideOr17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr17~0_combout\ = ( \parite|level\(2) & ( (\parite|level\(5) & (!\parite|level\(4) & \parite|level\(3))) ) ) # ( !\parite|level\(2) & ( (\parite|level\(5) & (\parite|level\(4) & !\parite|level\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(5),
	datac => \parite|ALT_INV_level\(4),
	datad => \parite|ALT_INV_level\(3),
	dataf => \parite|ALT_INV_level\(2),
	combout => \parite|WideOr17~0_combout\);

-- Location: MLABCELL_X45_Y19_N0
\parite|Selector17~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector17~2_combout\ = ( \parite|Decoder0~17_combout\ & ( \D_in[3]~input_o\ & ( (!\parite|Decoder0~16_combout\ & (!\D_in[4]~input_o\ & ((!\parite|Decoder0~15_combout\) # (!\D_in[2]~input_o\)))) ) ) ) # ( !\parite|Decoder0~17_combout\ & ( 
-- \D_in[3]~input_o\ & ( (!\parite|Decoder0~16_combout\ & ((!\parite|Decoder0~15_combout\) # (!\D_in[2]~input_o\))) ) ) ) # ( \parite|Decoder0~17_combout\ & ( !\D_in[3]~input_o\ & ( (!\D_in[4]~input_o\ & ((!\parite|Decoder0~15_combout\) # 
-- (!\D_in[2]~input_o\))) ) ) ) # ( !\parite|Decoder0~17_combout\ & ( !\D_in[3]~input_o\ & ( (!\parite|Decoder0~15_combout\) # (!\D_in[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011100000000011100000111000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Decoder0~15_combout\,
	datab => \ALT_INV_D_in[2]~input_o\,
	datac => \parite|ALT_INV_Decoder0~16_combout\,
	datad => \ALT_INV_D_in[4]~input_o\,
	datae => \parite|ALT_INV_Decoder0~17_combout\,
	dataf => \ALT_INV_D_in[3]~input_o\,
	combout => \parite|Selector17~2_combout\);

-- Location: LABCELL_X48_Y20_N54
\parite|Decoder0~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Decoder0~20_combout\ = ( !\parite|level\(4) & ( \parite|level\(2) & ( (!\parite|level\(0) & (!\parite|level\(1) & (\parite|level\(3) & \parite|level\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(0),
	datab => \parite|ALT_INV_level\(1),
	datac => \parite|ALT_INV_level\(3),
	datad => \parite|ALT_INV_level\(5),
	datae => \parite|ALT_INV_level\(4),
	dataf => \parite|ALT_INV_level\(2),
	combout => \parite|Decoder0~20_combout\);

-- Location: LABCELL_X48_Y21_N24
\parite|Selector17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector17~1_combout\ = ( \D_in[7]~input_o\ & ( \parite|Decoder0~19_combout\ & ( (!\D_in[6]~input_o\ & (!\parite|Decoder0~20_combout\ & ((!\parite|Decoder0~18_combout\) # (!\D_in[5]~input_o\)))) ) ) ) # ( !\D_in[7]~input_o\ & ( 
-- \parite|Decoder0~19_combout\ & ( (!\D_in[6]~input_o\ & ((!\parite|Decoder0~18_combout\) # (!\D_in[5]~input_o\))) ) ) ) # ( \D_in[7]~input_o\ & ( !\parite|Decoder0~19_combout\ & ( (!\parite|Decoder0~20_combout\ & ((!\parite|Decoder0~18_combout\) # 
-- (!\D_in[5]~input_o\))) ) ) ) # ( !\D_in[7]~input_o\ & ( !\parite|Decoder0~19_combout\ & ( (!\parite|Decoder0~18_combout\) # (!\D_in[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011100000000011100000111000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Decoder0~18_combout\,
	datab => \ALT_INV_D_in[5]~input_o\,
	datac => \ALT_INV_D_in[6]~input_o\,
	datad => \parite|ALT_INV_Decoder0~20_combout\,
	datae => \ALT_INV_D_in[7]~input_o\,
	dataf => \parite|ALT_INV_Decoder0~19_combout\,
	combout => \parite|Selector17~1_combout\);

-- Location: LABCELL_X47_Y19_N48
\parite|CRC_reg~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~84_combout\ = ( \parite|CRC_reg\(19) & ( \parite|Selector17~1_combout\ & ( (!\parite|CRC_reg~83_combout\ & (((!\parite|WideOr17~0_combout\) # (!\parite|Selector17~2_combout\)) # (\parite|Selector17~0_combout\))) ) ) ) # ( 
-- !\parite|CRC_reg\(19) & ( \parite|Selector17~1_combout\ & ( (!\parite|CRC_reg~83_combout\ & (\parite|WideOr17~0_combout\ & ((!\parite|Selector17~2_combout\) # (\parite|Selector17~0_combout\)))) ) ) ) # ( \parite|CRC_reg\(19) & ( 
-- !\parite|Selector17~1_combout\ & ( !\parite|CRC_reg~83_combout\ ) ) ) # ( !\parite|CRC_reg\(19) & ( !\parite|Selector17~1_combout\ & ( (!\parite|CRC_reg~83_combout\ & \parite|WideOr17~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100110011001100110000001100000001001100110011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Selector17~0_combout\,
	datab => \parite|ALT_INV_CRC_reg~83_combout\,
	datac => \parite|ALT_INV_WideOr17~0_combout\,
	datad => \parite|ALT_INV_Selector17~2_combout\,
	datae => \parite|ALT_INV_CRC_reg\(19),
	dataf => \parite|ALT_INV_Selector17~1_combout\,
	combout => \parite|CRC_reg~84_combout\);

-- Location: LABCELL_X47_Y18_N3
\parite|Decoder0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Decoder0~21_combout\ = ( !\parite|level\(2) & ( \parite|level\(3) & ( (!\parite|level\(4) & (\parite|level\(5) & (\parite|level\(1) & \parite|level\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(4),
	datab => \parite|ALT_INV_level\(5),
	datac => \parite|ALT_INV_level\(1),
	datad => \parite|ALT_INV_level\(0),
	datae => \parite|ALT_INV_level\(2),
	dataf => \parite|ALT_INV_level\(3),
	combout => \parite|Decoder0~21_combout\);

-- Location: LABCELL_X48_Y21_N30
\parite|Selector16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector16~1_combout\ = ( \D_in[7]~input_o\ & ( \parite|Decoder0~19_combout\ & ( (!\D_in[5]~input_o\ & (!\parite|Decoder0~21_combout\ & ((!\D_in[6]~input_o\) # (!\parite|Decoder0~20_combout\)))) ) ) ) # ( !\D_in[7]~input_o\ & ( 
-- \parite|Decoder0~19_combout\ & ( (!\D_in[5]~input_o\ & ((!\D_in[6]~input_o\) # (!\parite|Decoder0~20_combout\))) ) ) ) # ( \D_in[7]~input_o\ & ( !\parite|Decoder0~19_combout\ & ( (!\parite|Decoder0~21_combout\ & ((!\D_in[6]~input_o\) # 
-- (!\parite|Decoder0~20_combout\))) ) ) ) # ( !\D_in[7]~input_o\ & ( !\parite|Decoder0~19_combout\ & ( (!\D_in[6]~input_o\) # (!\parite|Decoder0~20_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110100000000011001000110010001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[6]~input_o\,
	datab => \ALT_INV_D_in[5]~input_o\,
	datac => \parite|ALT_INV_Decoder0~20_combout\,
	datad => \parite|ALT_INV_Decoder0~21_combout\,
	datae => \ALT_INV_D_in[7]~input_o\,
	dataf => \parite|ALT_INV_Decoder0~19_combout\,
	combout => \parite|Selector16~1_combout\);

-- Location: LABCELL_X47_Y18_N24
\parite|CRC_reg~86\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~86_combout\ = ( \parite|level\(2) & ( \parite|level\(3) & ( (!\parite|level\(4) & \parite|level\(5)) ) ) ) # ( !\parite|level\(2) & ( \parite|level\(3) & ( (\parite|level\(0) & (\parite|level\(1) & (!\parite|level\(4) & 
-- \parite|level\(5)))) ) ) ) # ( !\parite|level\(2) & ( !\parite|level\(3) & ( (\parite|level\(4) & (\parite|level\(5) & ((!\parite|level\(0)) # (!\parite|level\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001110000000000000000000000000000100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(0),
	datab => \parite|ALT_INV_level\(1),
	datac => \parite|ALT_INV_level\(4),
	datad => \parite|ALT_INV_level\(5),
	datae => \parite|ALT_INV_level\(2),
	dataf => \parite|ALT_INV_level\(3),
	combout => \parite|CRC_reg~86_combout\);

-- Location: MLABCELL_X45_Y19_N36
\parite|Selector16~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector16~2_combout\ = ( \parite|Decoder0~17_combout\ & ( \parite|Decoder0~18_combout\ & ( (!\D_in[3]~input_o\ & (!\D_in[4]~input_o\ & ((!\D_in[2]~input_o\) # (!\parite|Decoder0~16_combout\)))) ) ) ) # ( !\parite|Decoder0~17_combout\ & ( 
-- \parite|Decoder0~18_combout\ & ( (!\D_in[4]~input_o\ & ((!\D_in[2]~input_o\) # (!\parite|Decoder0~16_combout\))) ) ) ) # ( \parite|Decoder0~17_combout\ & ( !\parite|Decoder0~18_combout\ & ( (!\D_in[3]~input_o\ & ((!\D_in[2]~input_o\) # 
-- (!\parite|Decoder0~16_combout\))) ) ) ) # ( !\parite|Decoder0~17_combout\ & ( !\parite|Decoder0~18_combout\ & ( (!\D_in[2]~input_o\) # (!\parite|Decoder0~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100101010001010100011111100000000001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[3]~input_o\,
	datab => \ALT_INV_D_in[2]~input_o\,
	datac => \parite|ALT_INV_Decoder0~16_combout\,
	datad => \ALT_INV_D_in[4]~input_o\,
	datae => \parite|ALT_INV_Decoder0~17_combout\,
	dataf => \parite|ALT_INV_Decoder0~18_combout\,
	combout => \parite|Selector16~2_combout\);

-- Location: LABCELL_X47_Y21_N48
\parite|Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector16~0_combout\ = ( \parite|Decoder0~15_combout\ & ( ((\D_in[0]~input_o\ & \parite|Decoder0~14_combout\)) # (\D_in[1]~input_o\) ) ) # ( !\parite|Decoder0~15_combout\ & ( (\D_in[0]~input_o\ & \parite|Decoder0~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100110011011101110011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[0]~input_o\,
	datab => \ALT_INV_D_in[1]~input_o\,
	datad => \parite|ALT_INV_Decoder0~14_combout\,
	dataf => \parite|ALT_INV_Decoder0~15_combout\,
	combout => \parite|Selector16~0_combout\);

-- Location: LABCELL_X50_Y17_N15
\parite|WideOr55~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr55~0_combout\ = ( \parite|level\(0) & ( (!\parite|level\(2) & (!\parite|level\(1) & !\parite|level\(3))) ) ) # ( !\parite|level\(0) & ( (!\parite|level\(2) & !\parite|level\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(2),
	datac => \parite|ALT_INV_level\(1),
	datad => \parite|ALT_INV_level\(3),
	dataf => \parite|ALT_INV_level\(0),
	combout => \parite|WideOr55~0_combout\);

-- Location: LABCELL_X50_Y17_N18
\parite|WideOr55~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr55~1_combout\ = ( \parite|WideOr55~0_combout\ & ( (!\parite|WideOr42~0_combout\ & (!\parite|level\(5) & !\parite|level\(4))) ) ) # ( !\parite|WideOr55~0_combout\ & ( (!\parite|level\(5) & (!\parite|WideOr42~0_combout\ & !\parite|level\(4))) 
-- # (\parite|level\(5) & ((\parite|level\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001110000011100000111000001110000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_WideOr42~0_combout\,
	datab => \parite|ALT_INV_level\(5),
	datac => \parite|ALT_INV_level\(4),
	dataf => \parite|ALT_INV_WideOr55~0_combout\,
	combout => \parite|WideOr55~1_combout\);

-- Location: LABCELL_X48_Y19_N0
\parite|CRC_reg~87\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~87_combout\ = ( \parite|CRC_reg\(18) & ( !\parite|WideOr55~1_combout\ & ( (!\parite|Selector16~1_combout\) # ((!\parite|CRC_reg~86_combout\) # ((!\parite|Selector16~2_combout\) # (\parite|Selector16~0_combout\))) ) ) ) # ( 
-- !\parite|CRC_reg\(18) & ( !\parite|WideOr55~1_combout\ & ( (\parite|CRC_reg~86_combout\ & ((!\parite|Selector16~1_combout\) # ((!\parite|Selector16~2_combout\) # (\parite|Selector16~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000110011111111101111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Selector16~1_combout\,
	datab => \parite|ALT_INV_CRC_reg~86_combout\,
	datac => \parite|ALT_INV_Selector16~2_combout\,
	datad => \parite|ALT_INV_Selector16~0_combout\,
	datae => \parite|ALT_INV_CRC_reg\(18),
	dataf => \parite|ALT_INV_WideOr55~1_combout\,
	combout => \parite|CRC_reg~87_combout\);

-- Location: LABCELL_X47_Y18_N6
\parite|Decoder0~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Decoder0~22_combout\ = ( \parite|level\(1) & ( !\parite|level\(0) & ( (!\parite|level\(2) & (\parite|level\(5) & (\parite|level\(3) & !\parite|level\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(2),
	datab => \parite|ALT_INV_level\(5),
	datac => \parite|ALT_INV_level\(3),
	datad => \parite|ALT_INV_level\(4),
	datae => \parite|ALT_INV_level\(1),
	dataf => \parite|ALT_INV_level\(0),
	combout => \parite|Decoder0~22_combout\);

-- Location: LABCELL_X47_Y18_N42
\parite|CRC_reg~91\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~91_combout\ = ( !\parite|Decoder0~21_combout\ & ( \D_in[6]~input_o\ & ( (!\D_in[5]~input_o\ & ((!\parite|Decoder0~22_combout\) # ((!\D_in[7]~input_o\)))) # (\D_in[5]~input_o\ & (!\parite|Decoder0~20_combout\ & 
-- ((!\parite|Decoder0~22_combout\) # (!\D_in[7]~input_o\)))) ) ) ) # ( \parite|Decoder0~21_combout\ & ( !\D_in[6]~input_o\ & ( (!\D_in[5]~input_o\ & ((!\parite|Decoder0~22_combout\) # ((!\D_in[7]~input_o\)))) # (\D_in[5]~input_o\ & 
-- (!\parite|Decoder0~20_combout\ & ((!\parite|Decoder0~22_combout\) # (!\D_in[7]~input_o\)))) ) ) ) # ( !\parite|Decoder0~21_combout\ & ( !\D_in[6]~input_o\ & ( (!\D_in[5]~input_o\ & ((!\parite|Decoder0~22_combout\) # ((!\D_in[7]~input_o\)))) # 
-- (\D_in[5]~input_o\ & (!\parite|Decoder0~20_combout\ & ((!\parite|Decoder0~22_combout\) # (!\D_in[7]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011001000111110101100100011111010110010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[5]~input_o\,
	datab => \parite|ALT_INV_Decoder0~22_combout\,
	datac => \parite|ALT_INV_Decoder0~20_combout\,
	datad => \ALT_INV_D_in[7]~input_o\,
	datae => \parite|ALT_INV_Decoder0~21_combout\,
	dataf => \ALT_INV_D_in[6]~input_o\,
	combout => \parite|CRC_reg~91_combout\);

-- Location: MLABCELL_X45_Y19_N15
\parite|CRC_reg~92\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~92_combout\ = ( \D_in[3]~input_o\ & ( ((\D_in[4]~input_o\ & \parite|Decoder0~19_combout\)) # (\parite|Decoder0~18_combout\) ) ) # ( !\D_in[3]~input_o\ & ( (\D_in[4]~input_o\ & \parite|Decoder0~19_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D_in[4]~input_o\,
	datac => \parite|ALT_INV_Decoder0~18_combout\,
	datad => \parite|ALT_INV_Decoder0~19_combout\,
	dataf => \ALT_INV_D_in[3]~input_o\,
	combout => \parite|CRC_reg~92_combout\);

-- Location: MLABCELL_X45_Y19_N12
\parite|CRC_reg~90\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~90_combout\ = ( \D_in[0]~input_o\ & ( ((\parite|Decoder0~16_combout\ & \D_in[1]~input_o\)) # (\parite|Decoder0~15_combout\) ) ) # ( !\D_in[0]~input_o\ & ( (\parite|Decoder0~16_combout\ & \D_in[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Decoder0~16_combout\,
	datac => \parite|ALT_INV_Decoder0~15_combout\,
	datad => \ALT_INV_D_in[1]~input_o\,
	dataf => \ALT_INV_D_in[0]~input_o\,
	combout => \parite|CRC_reg~90_combout\);

-- Location: MLABCELL_X45_Y19_N48
\parite|CRC_reg~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~93_combout\ = ( \D_in[2]~input_o\ & ( !\parite|CRC_reg~90_combout\ & ( (\parite|CRC_reg~91_combout\ & (!\parite|Decoder0~17_combout\ & !\parite|CRC_reg~92_combout\)) ) ) ) # ( !\D_in[2]~input_o\ & ( !\parite|CRC_reg~90_combout\ & ( 
-- (\parite|CRC_reg~91_combout\ & !\parite|CRC_reg~92_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_CRC_reg~91_combout\,
	datab => \parite|ALT_INV_Decoder0~17_combout\,
	datad => \parite|ALT_INV_CRC_reg~92_combout\,
	datae => \ALT_INV_D_in[2]~input_o\,
	dataf => \parite|ALT_INV_CRC_reg~90_combout\,
	combout => \parite|CRC_reg~93_combout\);

-- Location: LABCELL_X48_Y19_N45
\parite|CRC_reg~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~89_combout\ = ( !\parite|level\(5) & ( (\parite|WideOr42~0_combout\) # (\parite|level\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(4),
	datab => \parite|ALT_INV_WideOr42~0_combout\,
	dataf => \parite|ALT_INV_level\(5),
	combout => \parite|CRC_reg~89_combout\);

-- Location: LABCELL_X47_Y17_N27
\parite|CRC_reg~94\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~94_combout\ = ( \parite|level\(1) & ( (\parite|level\(5) & !\parite|level\(4)) ) ) # ( !\parite|level\(1) & ( (\parite|level\(5) & ((!\parite|level\(4)) # (\parite|CRC_reg~82_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100110001001100010011000100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_CRC_reg~82_combout\,
	datab => \parite|ALT_INV_level\(5),
	datac => \parite|ALT_INV_level\(4),
	dataf => \parite|ALT_INV_level\(1),
	combout => \parite|CRC_reg~94_combout\);

-- Location: MLABCELL_X49_Y19_N51
\parite|WideOr15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr15~0_combout\ = ( \parite|level\(1) & ( (\parite|level\(3) & !\parite|level\(4)) ) ) # ( !\parite|level\(1) & ( (!\parite|level\(3) & (\parite|level\(4) & !\parite|level\(2))) # (\parite|level\(3) & (!\parite|level\(4) & \parite|level\(2))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000110000000011000011000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_level\(3),
	datac => \parite|ALT_INV_level\(4),
	datad => \parite|ALT_INV_level\(2),
	dataf => \parite|ALT_INV_level\(1),
	combout => \parite|WideOr15~0_combout\);

-- Location: LABCELL_X48_Y19_N36
\parite|CRC_reg~95\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~95_combout\ = ( \parite|WideOr15~0_combout\ & ( (!\parite|CRC_reg~93_combout\ & (((\parite|CRC_reg~89_combout\ & \parite|CRC_reg\(17))) # (\parite|CRC_reg~94_combout\))) # (\parite|CRC_reg~93_combout\ & (\parite|CRC_reg~89_combout\ & 
-- ((\parite|CRC_reg\(17))))) ) ) # ( !\parite|WideOr15~0_combout\ & ( (\parite|CRC_reg\(17) & ((\parite|CRC_reg~94_combout\) # (\parite|CRC_reg~89_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111100001010001110110000101000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_CRC_reg~93_combout\,
	datab => \parite|ALT_INV_CRC_reg~89_combout\,
	datac => \parite|ALT_INV_CRC_reg~94_combout\,
	datad => \parite|ALT_INV_CRC_reg\(17),
	dataf => \parite|ALT_INV_WideOr15~0_combout\,
	combout => \parite|CRC_reg~95_combout\);

-- Location: LABCELL_X52_Y18_N57
\parite|Decoder1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Decoder1~1_combout\ = ( !\parite|level\(2) & ( (!\parite|level\(0) & !\parite|level\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(0),
	datac => \parite|ALT_INV_level\(1),
	dataf => \parite|ALT_INV_level\(2),
	combout => \parite|Decoder1~1_combout\);

-- Location: MLABCELL_X49_Y19_N48
\parite|WideOr30~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr30~1_combout\ = ( \parite|Decoder1~1_combout\ & ( !\parite|level\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_level\(3),
	dataf => \parite|ALT_INV_Decoder1~1_combout\,
	combout => \parite|WideOr30~1_combout\);

-- Location: MLABCELL_X49_Y19_N27
\parite|CRC_reg~98\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~98_combout\ = ( \parite|WideOr30~1_combout\ & ( (!\parite|level\(5) & (!\parite|level\(4) & !\parite|WideOr42~0_combout\)) ) ) # ( !\parite|WideOr30~1_combout\ & ( (!\parite|level\(5) & (!\parite|level\(4) & !\parite|WideOr42~0_combout\)) 
-- # (\parite|level\(5) & (\parite|level\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010100000101101001010000010110100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(5),
	datac => \parite|ALT_INV_level\(4),
	datad => \parite|ALT_INV_WideOr42~0_combout\,
	dataf => \parite|ALT_INV_WideOr30~1_combout\,
	combout => \parite|CRC_reg~98_combout\);

-- Location: LABCELL_X48_Y21_N6
\parite|Selector14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector14~2_combout\ = ( !\D_in[4]~input_o\ & ( \parite|Decoder0~20_combout\ & ( (!\parite|Decoder0~19_combout\ & ((!\parite|Decoder0~18_combout\) # ((!\D_in[2]~input_o\)))) # (\parite|Decoder0~19_combout\ & (!\D_in[3]~input_o\ & 
-- ((!\parite|Decoder0~18_combout\) # (!\D_in[2]~input_o\)))) ) ) ) # ( \D_in[4]~input_o\ & ( !\parite|Decoder0~20_combout\ & ( (!\parite|Decoder0~19_combout\ & ((!\parite|Decoder0~18_combout\) # ((!\D_in[2]~input_o\)))) # (\parite|Decoder0~19_combout\ & 
-- (!\D_in[3]~input_o\ & ((!\parite|Decoder0~18_combout\) # (!\D_in[2]~input_o\)))) ) ) ) # ( !\D_in[4]~input_o\ & ( !\parite|Decoder0~20_combout\ & ( (!\parite|Decoder0~19_combout\ & ((!\parite|Decoder0~18_combout\) # ((!\D_in[2]~input_o\)))) # 
-- (\parite|Decoder0~19_combout\ & (!\D_in[3]~input_o\ & ((!\parite|Decoder0~18_combout\) # (!\D_in[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110010101000111111001010100011111100101010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Decoder0~19_combout\,
	datab => \parite|ALT_INV_Decoder0~18_combout\,
	datac => \ALT_INV_D_in[2]~input_o\,
	datad => \ALT_INV_D_in[3]~input_o\,
	datae => \ALT_INV_D_in[4]~input_o\,
	dataf => \parite|ALT_INV_Decoder0~20_combout\,
	combout => \parite|Selector14~2_combout\);

-- Location: MLABCELL_X49_Y19_N21
\parite|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector14~0_combout\ = ( \D_in[0]~input_o\ & ( ((\parite|Decoder0~17_combout\ & \D_in[1]~input_o\)) # (\parite|Decoder0~16_combout\) ) ) # ( !\D_in[0]~input_o\ & ( (\parite|Decoder0~17_combout\ & \D_in[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Decoder0~16_combout\,
	datac => \parite|ALT_INV_Decoder0~17_combout\,
	datad => \ALT_INV_D_in[1]~input_o\,
	dataf => \ALT_INV_D_in[0]~input_o\,
	combout => \parite|Selector14~0_combout\);

-- Location: LABCELL_X47_Y18_N9
\parite|Decoder0~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Decoder0~23_combout\ = ( \parite|level\(0) & ( !\parite|level\(1) & ( (!\parite|level\(2) & (\parite|level\(5) & (!\parite|level\(4) & \parite|level\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(2),
	datab => \parite|ALT_INV_level\(5),
	datac => \parite|ALT_INV_level\(4),
	datad => \parite|ALT_INV_level\(3),
	datae => \parite|ALT_INV_level\(0),
	dataf => \parite|ALT_INV_level\(1),
	combout => \parite|Decoder0~23_combout\);

-- Location: LABCELL_X53_Y19_N42
\parite|Selector14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector14~1_combout\ = ( \parite|Decoder0~21_combout\ & ( \D_in[7]~input_o\ & ( (!\D_in[5]~input_o\ & (!\parite|Decoder0~23_combout\ & ((!\parite|Decoder0~22_combout\) # (!\D_in[6]~input_o\)))) ) ) ) # ( !\parite|Decoder0~21_combout\ & ( 
-- \D_in[7]~input_o\ & ( (!\parite|Decoder0~23_combout\ & ((!\parite|Decoder0~22_combout\) # (!\D_in[6]~input_o\))) ) ) ) # ( \parite|Decoder0~21_combout\ & ( !\D_in[7]~input_o\ & ( (!\D_in[5]~input_o\ & ((!\parite|Decoder0~22_combout\) # 
-- (!\D_in[6]~input_o\))) ) ) ) # ( !\parite|Decoder0~21_combout\ & ( !\D_in[7]~input_o\ & ( (!\parite|Decoder0~22_combout\) # (!\D_in[6]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010110011001000100011110000101000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Decoder0~22_combout\,
	datab => \ALT_INV_D_in[5]~input_o\,
	datac => \parite|ALT_INV_Decoder0~23_combout\,
	datad => \ALT_INV_D_in[6]~input_o\,
	datae => \parite|ALT_INV_Decoder0~21_combout\,
	dataf => \ALT_INV_D_in[7]~input_o\,
	combout => \parite|Selector14~1_combout\);

-- Location: MLABCELL_X49_Y19_N18
\parite|CRC_reg~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~97_combout\ = ( \parite|level\(3) & ( (!\parite|level\(4) & (\parite|level\(5) & !\parite|Decoder1~1_combout\)) ) ) # ( !\parite|level\(3) & ( (\parite|level\(4) & (\parite|level\(5) & \parite|Decoder1~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_level\(4),
	datac => \parite|ALT_INV_level\(5),
	datad => \parite|ALT_INV_Decoder1~1_combout\,
	dataf => \parite|ALT_INV_level\(3),
	combout => \parite|CRC_reg~97_combout\);

-- Location: MLABCELL_X49_Y19_N30
\parite|CRC_reg~99\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~99_combout\ = ( \parite|CRC_reg\(16) & ( \parite|CRC_reg~97_combout\ & ( (!\parite|CRC_reg~98_combout\ & ((!\parite|Selector14~2_combout\) # ((!\parite|Selector14~1_combout\) # (\parite|Selector14~0_combout\)))) ) ) ) # ( 
-- !\parite|CRC_reg\(16) & ( \parite|CRC_reg~97_combout\ & ( (!\parite|CRC_reg~98_combout\ & ((!\parite|Selector14~2_combout\) # ((!\parite|Selector14~1_combout\) # (\parite|Selector14~0_combout\)))) ) ) ) # ( \parite|CRC_reg\(16) & ( 
-- !\parite|CRC_reg~97_combout\ & ( !\parite|CRC_reg~98_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101010101010100010101010101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_CRC_reg~98_combout\,
	datab => \parite|ALT_INV_Selector14~2_combout\,
	datac => \parite|ALT_INV_Selector14~0_combout\,
	datad => \parite|ALT_INV_Selector14~1_combout\,
	datae => \parite|ALT_INV_CRC_reg\(16),
	dataf => \parite|ALT_INV_CRC_reg~97_combout\,
	combout => \parite|CRC_reg~99_combout\);

-- Location: MLABCELL_X45_Y19_N57
\parite|CRC_reg~102\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~102_combout\ = ( \parite|Decoder0~18_combout\ & ( ((\D_in[0]~input_o\ & \parite|Decoder0~17_combout\)) # (\D_in[1]~input_o\) ) ) # ( !\parite|Decoder0~18_combout\ & ( (\D_in[0]~input_o\ & \parite|Decoder0~17_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[0]~input_o\,
	datab => \parite|ALT_INV_Decoder0~17_combout\,
	datad => \ALT_INV_D_in[1]~input_o\,
	dataf => \parite|ALT_INV_Decoder0~18_combout\,
	combout => \parite|CRC_reg~102_combout\);

-- Location: LABCELL_X48_Y19_N57
\parite|CRC_reg~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~101_combout\ = (!\parite|level\(4) & ((!\parite|level\(5) & (\parite|WideOr42~0_combout\)) # (\parite|level\(5) & ((!\parite|level\(3)))))) # (\parite|level\(4) & (!\parite|level\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110111001001100011011100100110001101110010011000110111001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(4),
	datab => \parite|ALT_INV_level\(5),
	datac => \parite|ALT_INV_WideOr42~0_combout\,
	datad => \parite|ALT_INV_level\(3),
	combout => \parite|CRC_reg~101_combout\);

-- Location: LABCELL_X52_Y19_N3
\parite|WideOr59~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr59~0_combout\ = ( \parite|level\(3) & ( (\parite|level\(5) & !\parite|level\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(5),
	datab => \parite|ALT_INV_level\(4),
	dataf => \parite|ALT_INV_level\(3),
	combout => \parite|WideOr59~0_combout\);

-- Location: LABCELL_X47_Y18_N51
\parite|Decoder0~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Decoder0~24_combout\ = ( !\parite|level\(2) & ( \parite|level\(3) & ( (!\parite|level\(4) & (!\parite|level\(1) & (\parite|level\(5) & !\parite|level\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(4),
	datab => \parite|ALT_INV_level\(1),
	datac => \parite|ALT_INV_level\(5),
	datad => \parite|ALT_INV_level\(0),
	datae => \parite|ALT_INV_level\(2),
	dataf => \parite|ALT_INV_level\(3),
	combout => \parite|Decoder0~24_combout\);

-- Location: LABCELL_X53_Y19_N48
\parite|CRC_reg~103\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~103_combout\ = ( \parite|Decoder0~22_combout\ & ( \D_in[6]~input_o\ & ( (!\parite|Decoder0~23_combout\ & (!\D_in[5]~input_o\ & ((!\D_in[7]~input_o\) # (!\parite|Decoder0~24_combout\)))) ) ) ) # ( !\parite|Decoder0~22_combout\ & ( 
-- \D_in[6]~input_o\ & ( (!\parite|Decoder0~23_combout\ & ((!\D_in[7]~input_o\) # (!\parite|Decoder0~24_combout\))) ) ) ) # ( \parite|Decoder0~22_combout\ & ( !\D_in[6]~input_o\ & ( (!\D_in[5]~input_o\ & ((!\D_in[7]~input_o\) # 
-- (!\parite|Decoder0~24_combout\))) ) ) ) # ( !\parite|Decoder0~22_combout\ & ( !\D_in[6]~input_o\ & ( (!\D_in[7]~input_o\) # (!\parite|Decoder0~24_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011100000000011100000111000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[7]~input_o\,
	datab => \parite|ALT_INV_Decoder0~24_combout\,
	datac => \parite|ALT_INV_Decoder0~23_combout\,
	datad => \ALT_INV_D_in[5]~input_o\,
	datae => \parite|ALT_INV_Decoder0~22_combout\,
	dataf => \ALT_INV_D_in[6]~input_o\,
	combout => \parite|CRC_reg~103_combout\);

-- Location: LABCELL_X48_Y21_N42
\parite|CRC_reg~104\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~104_combout\ = ( \D_in[4]~input_o\ & ( \parite|Decoder0~20_combout\ & ( (!\parite|Decoder0~21_combout\ & (!\D_in[3]~input_o\ & ((!\parite|Decoder0~19_combout\) # (!\D_in[2]~input_o\)))) ) ) ) # ( !\D_in[4]~input_o\ & ( 
-- \parite|Decoder0~20_combout\ & ( (!\D_in[3]~input_o\ & ((!\parite|Decoder0~19_combout\) # (!\D_in[2]~input_o\))) ) ) ) # ( \D_in[4]~input_o\ & ( !\parite|Decoder0~20_combout\ & ( (!\parite|Decoder0~21_combout\ & ((!\parite|Decoder0~19_combout\) # 
-- (!\D_in[2]~input_o\))) ) ) ) # ( !\D_in[4]~input_o\ & ( !\parite|Decoder0~20_combout\ & ( (!\parite|Decoder0~19_combout\) # (!\D_in[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010110010001100100011111010000000001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Decoder0~19_combout\,
	datab => \parite|ALT_INV_Decoder0~21_combout\,
	datac => \ALT_INV_D_in[2]~input_o\,
	datad => \ALT_INV_D_in[3]~input_o\,
	datae => \ALT_INV_D_in[4]~input_o\,
	dataf => \parite|ALT_INV_Decoder0~20_combout\,
	combout => \parite|CRC_reg~104_combout\);

-- Location: LABCELL_X48_Y19_N12
\parite|CRC_reg~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~105_combout\ = ( \parite|CRC_reg\(15) & ( \parite|CRC_reg~104_combout\ & ( ((\parite|WideOr59~0_combout\ & ((!\parite|CRC_reg~103_combout\) # (\parite|CRC_reg~102_combout\)))) # (\parite|CRC_reg~101_combout\) ) ) ) # ( 
-- !\parite|CRC_reg\(15) & ( \parite|CRC_reg~104_combout\ & ( (\parite|WideOr59~0_combout\ & ((!\parite|CRC_reg~103_combout\) # (\parite|CRC_reg~102_combout\))) ) ) ) # ( \parite|CRC_reg\(15) & ( !\parite|CRC_reg~104_combout\ & ( 
-- (\parite|WideOr59~0_combout\) # (\parite|CRC_reg~101_combout\) ) ) ) # ( !\parite|CRC_reg\(15) & ( !\parite|CRC_reg~104_combout\ & ( \parite|WideOr59~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001111110011111100001111000001010011111100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_CRC_reg~102_combout\,
	datab => \parite|ALT_INV_CRC_reg~101_combout\,
	datac => \parite|ALT_INV_WideOr59~0_combout\,
	datad => \parite|ALT_INV_CRC_reg~103_combout\,
	datae => \parite|ALT_INV_CRC_reg\(15),
	dataf => \parite|ALT_INV_CRC_reg~104_combout\,
	combout => \parite|CRC_reg~105_combout\);

-- Location: LABCELL_X48_Y20_N42
\parite|Decoder0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Decoder0~25_combout\ = ( !\parite|level\(4) & ( \parite|level\(1) & ( (\parite|level\(0) & (\parite|level\(5) & (!\parite|level\(3) & \parite|level\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(0),
	datab => \parite|ALT_INV_level\(5),
	datac => \parite|ALT_INV_level\(3),
	datad => \parite|ALT_INV_level\(2),
	datae => \parite|ALT_INV_level\(4),
	dataf => \parite|ALT_INV_level\(1),
	combout => \parite|Decoder0~25_combout\);

-- Location: LABCELL_X53_Y19_N36
\parite|Selector12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector12~1_combout\ = ( \parite|Decoder0~25_combout\ & ( \D_in[6]~input_o\ & ( (!\D_in[7]~input_o\ & (!\parite|Decoder0~24_combout\ & ((!\parite|Decoder0~23_combout\) # (!\D_in[5]~input_o\)))) ) ) ) # ( !\parite|Decoder0~25_combout\ & ( 
-- \D_in[6]~input_o\ & ( (!\parite|Decoder0~24_combout\ & ((!\parite|Decoder0~23_combout\) # (!\D_in[5]~input_o\))) ) ) ) # ( \parite|Decoder0~25_combout\ & ( !\D_in[6]~input_o\ & ( (!\D_in[7]~input_o\ & ((!\parite|Decoder0~23_combout\) # 
-- (!\D_in[5]~input_o\))) ) ) ) # ( !\parite|Decoder0~25_combout\ & ( !\D_in[6]~input_o\ & ( (!\parite|Decoder0~23_combout\) # (!\D_in[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000101010101010000011001100110000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[7]~input_o\,
	datab => \parite|ALT_INV_Decoder0~24_combout\,
	datac => \parite|ALT_INV_Decoder0~23_combout\,
	datad => \ALT_INV_D_in[5]~input_o\,
	datae => \parite|ALT_INV_Decoder0~25_combout\,
	dataf => \ALT_INV_D_in[6]~input_o\,
	combout => \parite|Selector12~1_combout\);

-- Location: LABCELL_X48_Y19_N39
\parite|CRC_reg~107\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~107_combout\ = ( \parite|WideOr20~0_combout\ & ( (!\parite|CRC_reg~66_combout\ & !\parite|WideOr59~0_combout\) ) ) # ( !\parite|WideOr20~0_combout\ & ( !\parite|CRC_reg~66_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \parite|ALT_INV_CRC_reg~66_combout\,
	datad => \parite|ALT_INV_WideOr59~0_combout\,
	dataf => \parite|ALT_INV_WideOr20~0_combout\,
	combout => \parite|CRC_reg~107_combout\);

-- Location: LABCELL_X48_Y21_N54
\parite|Selector12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector12~2_combout\ = ( \D_in[4]~input_o\ & ( \D_in[2]~input_o\ & ( (!\parite|Decoder0~20_combout\ & (!\parite|Decoder0~22_combout\ & ((!\D_in[3]~input_o\) # (!\parite|Decoder0~21_combout\)))) ) ) ) # ( !\D_in[4]~input_o\ & ( \D_in[2]~input_o\ & 
-- ( (!\parite|Decoder0~20_combout\ & ((!\D_in[3]~input_o\) # (!\parite|Decoder0~21_combout\))) ) ) ) # ( \D_in[4]~input_o\ & ( !\D_in[2]~input_o\ & ( (!\parite|Decoder0~22_combout\ & ((!\D_in[3]~input_o\) # (!\parite|Decoder0~21_combout\))) ) ) ) # ( 
-- !\D_in[4]~input_o\ & ( !\D_in[2]~input_o\ & ( (!\D_in[3]~input_o\) # (!\parite|Decoder0~21_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010111100001010000011001100100010001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[3]~input_o\,
	datab => \parite|ALT_INV_Decoder0~20_combout\,
	datac => \parite|ALT_INV_Decoder0~22_combout\,
	datad => \parite|ALT_INV_Decoder0~21_combout\,
	datae => \ALT_INV_D_in[4]~input_o\,
	dataf => \ALT_INV_D_in[2]~input_o\,
	combout => \parite|Selector12~2_combout\);

-- Location: LABCELL_X48_Y21_N21
\parite|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector12~0_combout\ = ( \parite|Decoder0~19_combout\ & ( ((\D_in[0]~input_o\ & \parite|Decoder0~18_combout\)) # (\D_in[1]~input_o\) ) ) # ( !\parite|Decoder0~19_combout\ & ( (\D_in[0]~input_o\ & \parite|Decoder0~18_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100110111001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[0]~input_o\,
	datab => \ALT_INV_D_in[1]~input_o\,
	datac => \parite|ALT_INV_Decoder0~18_combout\,
	dataf => \parite|ALT_INV_Decoder0~19_combout\,
	combout => \parite|Selector12~0_combout\);

-- Location: LABCELL_X50_Y17_N27
\parite|WideOr61~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr61~0_combout\ = ( \parite|level\(5) & ( !\parite|level\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(4),
	dataf => \parite|ALT_INV_level\(5),
	combout => \parite|WideOr61~0_combout\);

-- Location: MLABCELL_X49_Y19_N24
\parite|WideOr12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr12~0_combout\ = ( \parite|WideOr61~0_combout\ & ( \parite|WideOr28~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_WideOr28~0_combout\,
	dataf => \parite|ALT_INV_WideOr61~0_combout\,
	combout => \parite|WideOr12~0_combout\);

-- Location: LABCELL_X48_Y19_N48
\parite|CRC_reg~108\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~108_combout\ = ( \parite|CRC_reg\(14) & ( \parite|WideOr12~0_combout\ & ( (\parite|CRC_reg~107_combout\ & ((!\parite|Selector12~1_combout\) # ((!\parite|Selector12~2_combout\) # (\parite|Selector12~0_combout\)))) ) ) ) # ( 
-- !\parite|CRC_reg\(14) & ( \parite|WideOr12~0_combout\ & ( (\parite|CRC_reg~107_combout\ & ((!\parite|Selector12~1_combout\) # ((!\parite|Selector12~2_combout\) # (\parite|Selector12~0_combout\)))) ) ) ) # ( \parite|CRC_reg\(14) & ( 
-- !\parite|WideOr12~0_combout\ & ( \parite|CRC_reg~107_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100110010001100110011001000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Selector12~1_combout\,
	datab => \parite|ALT_INV_CRC_reg~107_combout\,
	datac => \parite|ALT_INV_Selector12~2_combout\,
	datad => \parite|ALT_INV_Selector12~0_combout\,
	datae => \parite|ALT_INV_CRC_reg\(14),
	dataf => \parite|ALT_INV_WideOr12~0_combout\,
	combout => \parite|CRC_reg~108_combout\);

-- Location: LABCELL_X52_Y19_N39
\parite|WideOr60~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr60~0_combout\ = ( \parite|level\(1) & ( (\parite|WideOr59~0_combout\ & \parite|level\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_WideOr59~0_combout\,
	datad => \parite|ALT_INV_level\(2),
	dataf => \parite|ALT_INV_level\(1),
	combout => \parite|WideOr60~0_combout\);

-- Location: LABCELL_X52_Y19_N12
\parite|CRC_reg~111\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~111_combout\ = ( !\parite|WideOr60~0_combout\ & ( (\parite|WideOr27~0_combout\ & (!\parite|level\(4) & !\parite|WideOr42~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_WideOr27~0_combout\,
	datab => \parite|ALT_INV_level\(4),
	datad => \parite|ALT_INV_WideOr42~1_combout\,
	dataf => \parite|ALT_INV_WideOr60~0_combout\,
	combout => \parite|CRC_reg~111_combout\);

-- Location: LABCELL_X48_Y20_N48
\parite|Decoder0~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Decoder0~26_combout\ = ( !\parite|level\(4) & ( \parite|level\(1) & ( (!\parite|level\(0) & (\parite|level\(5) & (!\parite|level\(3) & \parite|level\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(0),
	datab => \parite|ALT_INV_level\(5),
	datac => \parite|ALT_INV_level\(3),
	datad => \parite|ALT_INV_level\(2),
	datae => \parite|ALT_INV_level\(4),
	dataf => \parite|ALT_INV_level\(1),
	combout => \parite|Decoder0~26_combout\);

-- Location: LABCELL_X53_Y19_N0
\parite|Selector11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector11~1_combout\ = ( !\parite|Decoder0~25_combout\ & ( \D_in[6]~input_o\ & ( (!\D_in[7]~input_o\ & ((!\parite|Decoder0~24_combout\) # ((!\D_in[5]~input_o\)))) # (\D_in[7]~input_o\ & (!\parite|Decoder0~26_combout\ & 
-- ((!\parite|Decoder0~24_combout\) # (!\D_in[5]~input_o\)))) ) ) ) # ( \parite|Decoder0~25_combout\ & ( !\D_in[6]~input_o\ & ( (!\D_in[7]~input_o\ & ((!\parite|Decoder0~24_combout\) # ((!\D_in[5]~input_o\)))) # (\D_in[7]~input_o\ & 
-- (!\parite|Decoder0~26_combout\ & ((!\parite|Decoder0~24_combout\) # (!\D_in[5]~input_o\)))) ) ) ) # ( !\parite|Decoder0~25_combout\ & ( !\D_in[6]~input_o\ & ( (!\D_in[7]~input_o\ & ((!\parite|Decoder0~24_combout\) # ((!\D_in[5]~input_o\)))) # 
-- (\D_in[7]~input_o\ & (!\parite|Decoder0~26_combout\ & ((!\parite|Decoder0~24_combout\) # (!\D_in[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011001000111110101100100011111010110010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[7]~input_o\,
	datab => \parite|ALT_INV_Decoder0~24_combout\,
	datac => \parite|ALT_INV_Decoder0~26_combout\,
	datad => \ALT_INV_D_in[5]~input_o\,
	datae => \parite|ALT_INV_Decoder0~25_combout\,
	dataf => \ALT_INV_D_in[6]~input_o\,
	combout => \parite|Selector11~1_combout\);

-- Location: LABCELL_X53_Y19_N27
\parite|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector11~0_combout\ = ( \parite|Decoder0~19_combout\ & ( ((\parite|Decoder0~20_combout\ & \D_in[1]~input_o\)) # (\D_in[0]~input_o\) ) ) # ( !\parite|Decoder0~19_combout\ & ( (\parite|Decoder0~20_combout\ & \D_in[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_Decoder0~20_combout\,
	datac => \ALT_INV_D_in[0]~input_o\,
	datad => \ALT_INV_D_in[1]~input_o\,
	dataf => \parite|ALT_INV_Decoder0~19_combout\,
	combout => \parite|Selector11~0_combout\);

-- Location: LABCELL_X53_Y19_N24
\parite|Selector11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector11~2_combout\ = ( \parite|Decoder0~23_combout\ & ( ((\parite|Decoder0~22_combout\ & \D_in[3]~input_o\)) # (\D_in[4]~input_o\) ) ) # ( !\parite|Decoder0~23_combout\ & ( (\parite|Decoder0~22_combout\ & \D_in[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Decoder0~22_combout\,
	datac => \ALT_INV_D_in[4]~input_o\,
	datad => \ALT_INV_D_in[3]~input_o\,
	dataf => \parite|ALT_INV_Decoder0~23_combout\,
	combout => \parite|Selector11~2_combout\);

-- Location: LABCELL_X53_Y19_N6
\parite|Selector11~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector11~3_combout\ = ( !\parite|Selector11~2_combout\ & ( (\parite|Selector11~1_combout\ & (!\parite|Selector11~0_combout\ & ((!\parite|Decoder0~21_combout\) # (!\D_in[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001000000010100000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Selector11~1_combout\,
	datab => \parite|ALT_INV_Decoder0~21_combout\,
	datac => \parite|ALT_INV_Selector11~0_combout\,
	datad => \ALT_INV_D_in[2]~input_o\,
	dataf => \parite|ALT_INV_Selector11~2_combout\,
	combout => \parite|Selector11~3_combout\);

-- Location: LABCELL_X52_Y19_N15
\parite|CRC_reg~110\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~110_combout\ = (\parite|WideOr27~0_combout\ & !\parite|level\(4))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_WideOr27~0_combout\,
	datab => \parite|ALT_INV_level\(4),
	combout => \parite|CRC_reg~110_combout\);

-- Location: LABCELL_X52_Y19_N6
\parite|CRC_reg~112\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~112_combout\ = ( \parite|CRC_reg\(13) & ( \parite|CRC_reg~110_combout\ & ( (\parite|CRC_reg~111_combout\ & !\parite|Selector11~3_combout\) ) ) ) # ( !\parite|CRC_reg\(13) & ( \parite|CRC_reg~110_combout\ & ( (\parite|CRC_reg~111_combout\ & 
-- !\parite|Selector11~3_combout\) ) ) ) # ( \parite|CRC_reg\(13) & ( !\parite|CRC_reg~110_combout\ & ( (!\parite|CRC_reg~111_combout\ & (!\parite|CRC_reg~66_combout\ & ((!\parite|WideOr60~0_combout\)))) # (\parite|CRC_reg~111_combout\ & 
-- ((!\parite|Selector11~3_combout\) # ((!\parite|CRC_reg~66_combout\ & !\parite|WideOr60~0_combout\)))) ) ) ) # ( !\parite|CRC_reg\(13) & ( !\parite|CRC_reg~110_combout\ & ( (\parite|CRC_reg~111_combout\ & !\parite|Selector11~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000110111000101000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_CRC_reg~111_combout\,
	datab => \parite|ALT_INV_CRC_reg~66_combout\,
	datac => \parite|ALT_INV_Selector11~3_combout\,
	datad => \parite|ALT_INV_WideOr60~0_combout\,
	datae => \parite|ALT_INV_CRC_reg\(13),
	dataf => \parite|ALT_INV_CRC_reg~110_combout\,
	combout => \parite|CRC_reg~112_combout\);

-- Location: LABCELL_X52_Y19_N21
\parite|CRC_reg~114\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~114_combout\ = ( \parite|WideOr61~0_combout\ & ( (!\parite|WideOr45~0_combout\ & !\parite|CRC_reg~66_combout\) ) ) # ( !\parite|WideOr61~0_combout\ & ( !\parite|CRC_reg~66_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_WideOr45~0_combout\,
	datac => \parite|ALT_INV_CRC_reg~66_combout\,
	dataf => \parite|ALT_INV_WideOr61~0_combout\,
	combout => \parite|CRC_reg~114_combout\);

-- Location: MLABCELL_X49_Y17_N27
\parite|Decoder0~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Decoder0~27_combout\ = ( !\parite|level\(1) & ( \parite|level\(2) & ( (\parite|level\(5) & (!\parite|level\(4) & (\parite|level\(0) & !\parite|level\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(5),
	datab => \parite|ALT_INV_level\(4),
	datac => \parite|ALT_INV_level\(0),
	datad => \parite|ALT_INV_level\(3),
	datae => \parite|ALT_INV_level\(1),
	dataf => \parite|ALT_INV_level\(2),
	combout => \parite|Decoder0~27_combout\);

-- Location: LABCELL_X53_Y19_N12
\parite|Selector10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector10~1_combout\ = ( \parite|Decoder0~25_combout\ & ( \D_in[7]~input_o\ & ( (!\parite|Decoder0~27_combout\ & (!\D_in[5]~input_o\ & ((!\parite|Decoder0~26_combout\) # (!\D_in[6]~input_o\)))) ) ) ) # ( !\parite|Decoder0~25_combout\ & ( 
-- \D_in[7]~input_o\ & ( (!\parite|Decoder0~27_combout\ & ((!\parite|Decoder0~26_combout\) # (!\D_in[6]~input_o\))) ) ) ) # ( \parite|Decoder0~25_combout\ & ( !\D_in[7]~input_o\ & ( (!\D_in[5]~input_o\ & ((!\parite|Decoder0~26_combout\) # 
-- (!\D_in[6]~input_o\))) ) ) ) # ( !\parite|Decoder0~25_combout\ & ( !\D_in[7]~input_o\ & ( (!\parite|Decoder0~26_combout\) # (!\D_in[6]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000110011001100000010101010101000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Decoder0~27_combout\,
	datab => \ALT_INV_D_in[5]~input_o\,
	datac => \parite|ALT_INV_Decoder0~26_combout\,
	datad => \ALT_INV_D_in[6]~input_o\,
	datae => \parite|ALT_INV_Decoder0~25_combout\,
	dataf => \ALT_INV_D_in[7]~input_o\,
	combout => \parite|Selector10~1_combout\);

-- Location: LABCELL_X52_Y19_N54
\parite|WideOr10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr10~0_combout\ = ( \parite|WideOr61~0_combout\ & ( \parite|WideOr26~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \parite|ALT_INV_WideOr26~0_combout\,
	dataf => \parite|ALT_INV_WideOr61~0_combout\,
	combout => \parite|WideOr10~0_combout\);

-- Location: LABCELL_X48_Y21_N18
\parite|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector10~0_combout\ = ( \parite|Decoder0~21_combout\ & ( ((\D_in[0]~input_o\ & \parite|Decoder0~20_combout\)) # (\D_in[1]~input_o\) ) ) # ( !\parite|Decoder0~21_combout\ & ( (\D_in[0]~input_o\ & \parite|Decoder0~20_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100110111001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[0]~input_o\,
	datab => \ALT_INV_D_in[1]~input_o\,
	datac => \parite|ALT_INV_Decoder0~20_combout\,
	dataf => \parite|ALT_INV_Decoder0~21_combout\,
	combout => \parite|Selector10~0_combout\);

-- Location: LABCELL_X53_Y19_N30
\parite|Selector10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector10~2_combout\ = ( \D_in[4]~input_o\ & ( \parite|Decoder0~23_combout\ & ( (!\parite|Decoder0~24_combout\ & (!\D_in[3]~input_o\ & ((!\D_in[2]~input_o\) # (!\parite|Decoder0~22_combout\)))) ) ) ) # ( !\D_in[4]~input_o\ & ( 
-- \parite|Decoder0~23_combout\ & ( (!\D_in[3]~input_o\ & ((!\D_in[2]~input_o\) # (!\parite|Decoder0~22_combout\))) ) ) ) # ( \D_in[4]~input_o\ & ( !\parite|Decoder0~23_combout\ & ( (!\parite|Decoder0~24_combout\ & ((!\D_in[2]~input_o\) # 
-- (!\parite|Decoder0~22_combout\))) ) ) ) # ( !\D_in[4]~input_o\ & ( !\parite|Decoder0~23_combout\ & ( (!\D_in[2]~input_o\) # (!\parite|Decoder0~22_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010110010001100100011111010000000001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[2]~input_o\,
	datab => \parite|ALT_INV_Decoder0~24_combout\,
	datac => \parite|ALT_INV_Decoder0~22_combout\,
	datad => \ALT_INV_D_in[3]~input_o\,
	datae => \ALT_INV_D_in[4]~input_o\,
	dataf => \parite|ALT_INV_Decoder0~23_combout\,
	combout => \parite|Selector10~2_combout\);

-- Location: LABCELL_X52_Y19_N42
\parite|CRC_reg~115\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~115_combout\ = ( \parite|CRC_reg\(12) & ( \parite|Selector10~2_combout\ & ( (\parite|CRC_reg~114_combout\ & ((!\parite|Selector10~1_combout\) # ((!\parite|WideOr10~0_combout\) # (\parite|Selector10~0_combout\)))) ) ) ) # ( 
-- !\parite|CRC_reg\(12) & ( \parite|Selector10~2_combout\ & ( (\parite|CRC_reg~114_combout\ & (\parite|WideOr10~0_combout\ & ((!\parite|Selector10~1_combout\) # (\parite|Selector10~0_combout\)))) ) ) ) # ( \parite|CRC_reg\(12) & ( 
-- !\parite|Selector10~2_combout\ & ( \parite|CRC_reg~114_combout\ ) ) ) # ( !\parite|CRC_reg\(12) & ( !\parite|Selector10~2_combout\ & ( (\parite|CRC_reg~114_combout\ & \parite|WideOr10~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010101010101010100000100000001010101010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_CRC_reg~114_combout\,
	datab => \parite|ALT_INV_Selector10~1_combout\,
	datac => \parite|ALT_INV_WideOr10~0_combout\,
	datad => \parite|ALT_INV_Selector10~0_combout\,
	datae => \parite|ALT_INV_CRC_reg\(12),
	dataf => \parite|ALT_INV_Selector10~2_combout\,
	combout => \parite|CRC_reg~115_combout\);

-- Location: LABCELL_X52_Y19_N0
\parite|WideOr9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr9~0_combout\ = ( \parite|level\(3) & ( (\parite|level\(5) & (!\parite|level\(4) & !\parite|level\(2))) ) ) # ( !\parite|level\(3) & ( (\parite|level\(5) & (!\parite|level\(4) & \parite|level\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(5),
	datab => \parite|ALT_INV_level\(4),
	datac => \parite|ALT_INV_level\(2),
	dataf => \parite|ALT_INV_level\(3),
	combout => \parite|WideOr9~0_combout\);

-- Location: LABCELL_X47_Y18_N48
\parite|Decoder0~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Decoder0~28_combout\ = ( !\parite|level\(3) & ( \parite|level\(2) & ( (!\parite|level\(4) & (!\parite|level\(1) & (!\parite|level\(0) & \parite|level\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(4),
	datab => \parite|ALT_INV_level\(1),
	datac => \parite|ALT_INV_level\(0),
	datad => \parite|ALT_INV_level\(5),
	datae => \parite|ALT_INV_level\(3),
	dataf => \parite|ALT_INV_level\(2),
	combout => \parite|Decoder0~28_combout\);

-- Location: LABCELL_X48_Y17_N24
\parite|Selector9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector9~1_combout\ = ( \D_in[7]~input_o\ & ( \parite|Decoder0~26_combout\ & ( (!\parite|Decoder0~28_combout\ & (!\D_in[5]~input_o\ & ((!\D_in[6]~input_o\) # (!\parite|Decoder0~27_combout\)))) ) ) ) # ( !\D_in[7]~input_o\ & ( 
-- \parite|Decoder0~26_combout\ & ( (!\D_in[5]~input_o\ & ((!\D_in[6]~input_o\) # (!\parite|Decoder0~27_combout\))) ) ) ) # ( \D_in[7]~input_o\ & ( !\parite|Decoder0~26_combout\ & ( (!\parite|Decoder0~28_combout\ & ((!\D_in[6]~input_o\) # 
-- (!\parite|Decoder0~27_combout\))) ) ) ) # ( !\D_in[7]~input_o\ & ( !\parite|Decoder0~26_combout\ & ( (!\D_in[6]~input_o\) # (!\parite|Decoder0~27_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010110010001100100011111010000000001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[6]~input_o\,
	datab => \parite|ALT_INV_Decoder0~28_combout\,
	datac => \parite|ALT_INV_Decoder0~27_combout\,
	datad => \ALT_INV_D_in[5]~input_o\,
	datae => \ALT_INV_D_in[7]~input_o\,
	dataf => \parite|ALT_INV_Decoder0~26_combout\,
	combout => \parite|Selector9~1_combout\);

-- Location: LABCELL_X52_Y19_N24
\parite|CRC_reg~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~117_combout\ = (!\parite|CRC_reg~66_combout\ & ((!\parite|level\(2)) # (!\parite|WideOr59~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000000110011001100000011001100110000001100110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_CRC_reg~66_combout\,
	datac => \parite|ALT_INV_level\(2),
	datad => \parite|ALT_INV_WideOr59~0_combout\,
	combout => \parite|CRC_reg~117_combout\);

-- Location: LABCELL_X53_Y19_N18
\parite|Selector9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector9~2_combout\ = ( \D_in[4]~input_o\ & ( \parite|Decoder0~23_combout\ & ( (!\D_in[2]~input_o\ & (!\parite|Decoder0~25_combout\ & ((!\parite|Decoder0~24_combout\) # (!\D_in[3]~input_o\)))) ) ) ) # ( !\D_in[4]~input_o\ & ( 
-- \parite|Decoder0~23_combout\ & ( (!\D_in[2]~input_o\ & ((!\parite|Decoder0~24_combout\) # (!\D_in[3]~input_o\))) ) ) ) # ( \D_in[4]~input_o\ & ( !\parite|Decoder0~23_combout\ & ( (!\parite|Decoder0~25_combout\ & ((!\parite|Decoder0~24_combout\) # 
-- (!\D_in[3]~input_o\))) ) ) ) # ( !\D_in[4]~input_o\ & ( !\parite|Decoder0~23_combout\ & ( (!\parite|Decoder0~24_combout\) # (!\D_in[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100111100001100000010101010100010001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[2]~input_o\,
	datab => \parite|ALT_INV_Decoder0~24_combout\,
	datac => \parite|ALT_INV_Decoder0~25_combout\,
	datad => \ALT_INV_D_in[3]~input_o\,
	datae => \ALT_INV_D_in[4]~input_o\,
	dataf => \parite|ALT_INV_Decoder0~23_combout\,
	combout => \parite|Selector9~2_combout\);

-- Location: LABCELL_X53_Y19_N9
\parite|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector9~0_combout\ = ( \D_in[1]~input_o\ & ( ((\parite|Decoder0~21_combout\ & \D_in[0]~input_o\)) # (\parite|Decoder0~22_combout\) ) ) # ( !\D_in[1]~input_o\ & ( (\parite|Decoder0~21_combout\ & \D_in[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_Decoder0~21_combout\,
	datac => \ALT_INV_D_in[0]~input_o\,
	datad => \parite|ALT_INV_Decoder0~22_combout\,
	dataf => \ALT_INV_D_in[1]~input_o\,
	combout => \parite|Selector9~0_combout\);

-- Location: LABCELL_X52_Y19_N48
\parite|CRC_reg~118\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~118_combout\ = ( \parite|CRC_reg\(11) & ( \parite|Selector9~0_combout\ & ( \parite|CRC_reg~117_combout\ ) ) ) # ( !\parite|CRC_reg\(11) & ( \parite|Selector9~0_combout\ & ( (\parite|WideOr9~0_combout\ & \parite|CRC_reg~117_combout\) ) ) ) 
-- # ( \parite|CRC_reg\(11) & ( !\parite|Selector9~0_combout\ & ( (\parite|CRC_reg~117_combout\ & ((!\parite|WideOr9~0_combout\) # ((!\parite|Selector9~1_combout\) # (!\parite|Selector9~2_combout\)))) ) ) ) # ( !\parite|CRC_reg\(11) & ( 
-- !\parite|Selector9~0_combout\ & ( (\parite|WideOr9~0_combout\ & (\parite|CRC_reg~117_combout\ & ((!\parite|Selector9~1_combout\) # (!\parite|Selector9~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000100000011110000111000000101000001010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_WideOr9~0_combout\,
	datab => \parite|ALT_INV_Selector9~1_combout\,
	datac => \parite|ALT_INV_CRC_reg~117_combout\,
	datad => \parite|ALT_INV_Selector9~2_combout\,
	datae => \parite|ALT_INV_CRC_reg\(11),
	dataf => \parite|ALT_INV_Selector9~0_combout\,
	combout => \parite|CRC_reg~118_combout\);

-- Location: LABCELL_X48_Y18_N27
\parite|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector8~0_combout\ = ( \parite|Decoder0~23_combout\ & ( ((\D_in[0]~input_o\ & \parite|Decoder0~22_combout\)) # (\D_in[1]~input_o\) ) ) # ( !\parite|Decoder0~23_combout\ & ( (\D_in[0]~input_o\ & \parite|Decoder0~22_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[1]~input_o\,
	datac => \ALT_INV_D_in[0]~input_o\,
	datad => \parite|ALT_INV_Decoder0~22_combout\,
	dataf => \parite|ALT_INV_Decoder0~23_combout\,
	combout => \parite|Selector8~0_combout\);

-- Location: LABCELL_X48_Y17_N39
\parite|CRC_reg~120\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~120_combout\ = ( \parite|WideOr61~0_combout\ & ( (!\parite|CRC_reg~66_combout\ & !\parite|WideOr47~0_combout\) ) ) # ( !\parite|WideOr61~0_combout\ & ( !\parite|CRC_reg~66_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \parite|ALT_INV_CRC_reg~66_combout\,
	datad => \parite|ALT_INV_WideOr47~0_combout\,
	dataf => \parite|ALT_INV_WideOr61~0_combout\,
	combout => \parite|CRC_reg~120_combout\);

-- Location: LABCELL_X48_Y17_N0
\parite|WideOr8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr8~0_combout\ = ( \parite|WideOr61~0_combout\ & ( \parite|WideOr24~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \parite|ALT_INV_WideOr24~0_combout\,
	dataf => \parite|ALT_INV_WideOr61~0_combout\,
	combout => \parite|WideOr8~0_combout\);

-- Location: MLABCELL_X49_Y17_N24
\parite|Decoder0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Decoder0~29_combout\ = ( !\parite|level\(2) & ( \parite|level\(1) & ( (\parite|level\(5) & (!\parite|level\(4) & (!\parite|level\(3) & \parite|level\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(5),
	datab => \parite|ALT_INV_level\(4),
	datac => \parite|ALT_INV_level\(3),
	datad => \parite|ALT_INV_level\(0),
	datae => \parite|ALT_INV_level\(2),
	dataf => \parite|ALT_INV_level\(1),
	combout => \parite|Decoder0~29_combout\);

-- Location: LABCELL_X48_Y17_N42
\parite|Selector8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector8~1_combout\ = ( \D_in[7]~input_o\ & ( \D_in[6]~input_o\ & ( (!\parite|Decoder0~28_combout\ & (!\parite|Decoder0~29_combout\ & ((!\parite|Decoder0~27_combout\) # (!\D_in[5]~input_o\)))) ) ) ) # ( !\D_in[7]~input_o\ & ( \D_in[6]~input_o\ & 
-- ( (!\parite|Decoder0~28_combout\ & ((!\parite|Decoder0~27_combout\) # (!\D_in[5]~input_o\))) ) ) ) # ( \D_in[7]~input_o\ & ( !\D_in[6]~input_o\ & ( (!\parite|Decoder0~29_combout\ & ((!\parite|Decoder0~27_combout\) # (!\D_in[5]~input_o\))) ) ) ) # ( 
-- !\D_in[7]~input_o\ & ( !\D_in[6]~input_o\ & ( (!\parite|Decoder0~27_combout\) # (!\D_in[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010111100001010000011001100100010001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Decoder0~27_combout\,
	datab => \parite|ALT_INV_Decoder0~28_combout\,
	datac => \parite|ALT_INV_Decoder0~29_combout\,
	datad => \ALT_INV_D_in[5]~input_o\,
	datae => \ALT_INV_D_in[7]~input_o\,
	dataf => \ALT_INV_D_in[6]~input_o\,
	combout => \parite|Selector8~1_combout\);

-- Location: LABCELL_X53_Y19_N54
\parite|Selector8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector8~2_combout\ = ( !\D_in[4]~input_o\ & ( \parite|Decoder0~26_combout\ & ( (!\D_in[2]~input_o\ & (((!\parite|Decoder0~25_combout\) # (!\D_in[3]~input_o\)))) # (\D_in[2]~input_o\ & (!\parite|Decoder0~24_combout\ & 
-- ((!\parite|Decoder0~25_combout\) # (!\D_in[3]~input_o\)))) ) ) ) # ( \D_in[4]~input_o\ & ( !\parite|Decoder0~26_combout\ & ( (!\D_in[2]~input_o\ & (((!\parite|Decoder0~25_combout\) # (!\D_in[3]~input_o\)))) # (\D_in[2]~input_o\ & 
-- (!\parite|Decoder0~24_combout\ & ((!\parite|Decoder0~25_combout\) # (!\D_in[3]~input_o\)))) ) ) ) # ( !\D_in[4]~input_o\ & ( !\parite|Decoder0~26_combout\ & ( (!\D_in[2]~input_o\ & (((!\parite|Decoder0~25_combout\) # (!\D_in[3]~input_o\)))) # 
-- (\D_in[2]~input_o\ & (!\parite|Decoder0~24_combout\ & ((!\parite|Decoder0~25_combout\) # (!\D_in[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011100000111011101110000011101110111000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[2]~input_o\,
	datab => \parite|ALT_INV_Decoder0~24_combout\,
	datac => \parite|ALT_INV_Decoder0~25_combout\,
	datad => \ALT_INV_D_in[3]~input_o\,
	datae => \ALT_INV_D_in[4]~input_o\,
	dataf => \parite|ALT_INV_Decoder0~26_combout\,
	combout => \parite|Selector8~2_combout\);

-- Location: LABCELL_X48_Y17_N30
\parite|CRC_reg~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~121_combout\ = ( \parite|CRC_reg\(10) & ( \parite|Selector8~2_combout\ & ( (\parite|CRC_reg~120_combout\ & (((!\parite|WideOr8~0_combout\) # (!\parite|Selector8~1_combout\)) # (\parite|Selector8~0_combout\))) ) ) ) # ( 
-- !\parite|CRC_reg\(10) & ( \parite|Selector8~2_combout\ & ( (\parite|CRC_reg~120_combout\ & (\parite|WideOr8~0_combout\ & ((!\parite|Selector8~1_combout\) # (\parite|Selector8~0_combout\)))) ) ) ) # ( \parite|CRC_reg\(10) & ( !\parite|Selector8~2_combout\ 
-- & ( \parite|CRC_reg~120_combout\ ) ) ) # ( !\parite|CRC_reg\(10) & ( !\parite|Selector8~2_combout\ & ( (\parite|CRC_reg~120_combout\ & \parite|WideOr8~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001100110011001100000011000000010011001100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Selector8~0_combout\,
	datab => \parite|ALT_INV_CRC_reg~120_combout\,
	datac => \parite|ALT_INV_WideOr8~0_combout\,
	datad => \parite|ALT_INV_Selector8~1_combout\,
	datae => \parite|ALT_INV_CRC_reg\(10),
	dataf => \parite|ALT_INV_Selector8~2_combout\,
	combout => \parite|CRC_reg~121_combout\);

-- Location: LABCELL_X50_Y19_N39
\parite|WideOr64~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr64~0_combout\ = ( !\parite|WideOr31~0_combout\ & ( \parite|WideOr59~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \parite|ALT_INV_WideOr59~0_combout\,
	dataf => \parite|ALT_INV_WideOr31~0_combout\,
	combout => \parite|WideOr64~0_combout\);

-- Location: LABCELL_X50_Y19_N12
\parite|CRC_reg~124\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~124_combout\ = ( !\parite|WideOr64~0_combout\ & ( (\parite|WideOr23~0_combout\ & (!\parite|level\(4) & !\parite|WideOr42~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_WideOr23~0_combout\,
	datab => \parite|ALT_INV_level\(4),
	datad => \parite|ALT_INV_WideOr42~1_combout\,
	dataf => \parite|ALT_INV_WideOr64~0_combout\,
	combout => \parite|CRC_reg~124_combout\);

-- Location: LABCELL_X50_Y19_N21
\parite|Selector7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector7~2_combout\ = ( \D_in[4]~input_o\ & ( ((\D_in[3]~input_o\ & \parite|Decoder0~26_combout\)) # (\parite|Decoder0~27_combout\) ) ) # ( !\D_in[4]~input_o\ & ( (\D_in[3]~input_o\ & \parite|Decoder0~26_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Decoder0~27_combout\,
	datac => \ALT_INV_D_in[3]~input_o\,
	datad => \parite|ALT_INV_Decoder0~26_combout\,
	dataf => \ALT_INV_D_in[4]~input_o\,
	combout => \parite|Selector7~2_combout\);

-- Location: LABCELL_X47_Y18_N54
\parite|Decoder0~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Decoder0~30_combout\ = ( \parite|level\(1) & ( !\parite|level\(0) & ( (!\parite|level\(4) & (\parite|level\(5) & (!\parite|level\(3) & !\parite|level\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(4),
	datab => \parite|ALT_INV_level\(5),
	datac => \parite|ALT_INV_level\(3),
	datad => \parite|ALT_INV_level\(2),
	datae => \parite|ALT_INV_level\(1),
	dataf => \parite|ALT_INV_level\(0),
	combout => \parite|Decoder0~30_combout\);

-- Location: LABCELL_X50_Y19_N24
\parite|Selector7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector7~1_combout\ = ( \D_in[6]~input_o\ & ( \D_in[5]~input_o\ & ( (!\parite|Decoder0~29_combout\ & (!\parite|Decoder0~28_combout\ & ((!\parite|Decoder0~30_combout\) # (!\D_in[7]~input_o\)))) ) ) ) # ( !\D_in[6]~input_o\ & ( \D_in[5]~input_o\ & 
-- ( (!\parite|Decoder0~28_combout\ & ((!\parite|Decoder0~30_combout\) # (!\D_in[7]~input_o\))) ) ) ) # ( \D_in[6]~input_o\ & ( !\D_in[5]~input_o\ & ( (!\parite|Decoder0~29_combout\ & ((!\parite|Decoder0~30_combout\) # (!\D_in[7]~input_o\))) ) ) ) # ( 
-- !\D_in[6]~input_o\ & ( !\D_in[5]~input_o\ & ( (!\parite|Decoder0~30_combout\) # (!\D_in[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010110011001000100011110000101000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Decoder0~30_combout\,
	datab => \parite|ALT_INV_Decoder0~29_combout\,
	datac => \parite|ALT_INV_Decoder0~28_combout\,
	datad => \ALT_INV_D_in[7]~input_o\,
	datae => \ALT_INV_D_in[6]~input_o\,
	dataf => \ALT_INV_D_in[5]~input_o\,
	combout => \parite|Selector7~1_combout\);

-- Location: LABCELL_X48_Y18_N24
\parite|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector7~0_combout\ = ( \parite|Decoder0~23_combout\ & ( ((\D_in[1]~input_o\ & \parite|Decoder0~24_combout\)) # (\D_in[0]~input_o\) ) ) # ( !\parite|Decoder0~23_combout\ & ( (\D_in[1]~input_o\ & \parite|Decoder0~24_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100110111001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[1]~input_o\,
	datab => \ALT_INV_D_in[0]~input_o\,
	datac => \parite|ALT_INV_Decoder0~24_combout\,
	dataf => \parite|ALT_INV_Decoder0~23_combout\,
	combout => \parite|Selector7~0_combout\);

-- Location: LABCELL_X50_Y19_N54
\parite|Selector7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector7~3_combout\ = ( !\parite|Selector7~0_combout\ & ( (!\parite|Selector7~2_combout\ & (\parite|Selector7~1_combout\ & ((!\parite|Decoder0~25_combout\) # (!\D_in[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001000000010100000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Selector7~2_combout\,
	datab => \parite|ALT_INV_Decoder0~25_combout\,
	datac => \parite|ALT_INV_Selector7~1_combout\,
	datad => \ALT_INV_D_in[2]~input_o\,
	dataf => \parite|ALT_INV_Selector7~0_combout\,
	combout => \parite|Selector7~3_combout\);

-- Location: LABCELL_X50_Y19_N15
\parite|CRC_reg~123\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~123_combout\ = (\parite|WideOr23~0_combout\ & !\parite|level\(4))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_WideOr23~0_combout\,
	datab => \parite|ALT_INV_level\(4),
	combout => \parite|CRC_reg~123_combout\);

-- Location: LABCELL_X50_Y19_N30
\parite|CRC_reg~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~125_combout\ = ( \parite|CRC_reg\(9) & ( \parite|WideOr64~0_combout\ & ( (\parite|CRC_reg~124_combout\ & !\parite|Selector7~3_combout\) ) ) ) # ( !\parite|CRC_reg\(9) & ( \parite|WideOr64~0_combout\ & ( (\parite|CRC_reg~124_combout\ & 
-- !\parite|Selector7~3_combout\) ) ) ) # ( \parite|CRC_reg\(9) & ( !\parite|WideOr64~0_combout\ & ( (!\parite|CRC_reg~66_combout\ & ((!\parite|CRC_reg~123_combout\) # ((\parite|CRC_reg~124_combout\ & !\parite|Selector7~3_combout\)))) # 
-- (\parite|CRC_reg~66_combout\ & (\parite|CRC_reg~124_combout\ & (!\parite|Selector7~3_combout\))) ) ) ) # ( !\parite|CRC_reg\(9) & ( !\parite|WideOr64~0_combout\ & ( (\parite|CRC_reg~124_combout\ & !\parite|Selector7~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000101110100011000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_CRC_reg~66_combout\,
	datab => \parite|ALT_INV_CRC_reg~124_combout\,
	datac => \parite|ALT_INV_Selector7~3_combout\,
	datad => \parite|ALT_INV_CRC_reg~123_combout\,
	datae => \parite|ALT_INV_CRC_reg\(9),
	dataf => \parite|ALT_INV_WideOr64~0_combout\,
	combout => \parite|CRC_reg~125_combout\);

-- Location: LABCELL_X50_Y19_N18
\parite|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector6~0_combout\ = ( \D_in[0]~input_o\ & ( ((\D_in[1]~input_o\ & \parite|Decoder0~25_combout\)) # (\parite|Decoder0~24_combout\) ) ) # ( !\D_in[0]~input_o\ & ( (\D_in[1]~input_o\ & \parite|Decoder0~25_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D_in[1]~input_o\,
	datac => \parite|ALT_INV_Decoder0~24_combout\,
	datad => \parite|ALT_INV_Decoder0~25_combout\,
	dataf => \ALT_INV_D_in[0]~input_o\,
	combout => \parite|Selector6~0_combout\);

-- Location: LABCELL_X50_Y19_N57
\parite|CRC_reg~127\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~127_combout\ = ( \parite|WideOr42~0_combout\ & ( !\parite|level\(5) ) ) # ( !\parite|WideOr42~0_combout\ & ( !\parite|level\(4) $ (!\parite|level\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \parite|ALT_INV_level\(4),
	datad => \parite|ALT_INV_level\(5),
	dataf => \parite|ALT_INV_WideOr42~0_combout\,
	combout => \parite|CRC_reg~127_combout\);

-- Location: LABCELL_X50_Y19_N3
\parite|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr6~0_combout\ = (\parite|WideOr22~0_combout\ & \parite|WideOr61~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_WideOr22~0_combout\,
	datac => \parite|ALT_INV_WideOr61~0_combout\,
	combout => \parite|WideOr6~0_combout\);

-- Location: LABCELL_X50_Y19_N42
\parite|Selector6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector6~2_combout\ = ( \D_in[2]~input_o\ & ( \parite|Decoder0~28_combout\ & ( (!\parite|Decoder0~26_combout\ & (!\D_in[4]~input_o\ & ((!\parite|Decoder0~27_combout\) # (!\D_in[3]~input_o\)))) ) ) ) # ( !\D_in[2]~input_o\ & ( 
-- \parite|Decoder0~28_combout\ & ( (!\D_in[4]~input_o\ & ((!\parite|Decoder0~27_combout\) # (!\D_in[3]~input_o\))) ) ) ) # ( \D_in[2]~input_o\ & ( !\parite|Decoder0~28_combout\ & ( (!\parite|Decoder0~26_combout\ & ((!\parite|Decoder0~27_combout\) # 
-- (!\D_in[3]~input_o\))) ) ) ) # ( !\D_in[2]~input_o\ & ( !\parite|Decoder0~28_combout\ & ( (!\parite|Decoder0~27_combout\) # (!\D_in[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000101010101010000011001100110000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Decoder0~26_combout\,
	datab => \ALT_INV_D_in[4]~input_o\,
	datac => \parite|ALT_INV_Decoder0~27_combout\,
	datad => \ALT_INV_D_in[3]~input_o\,
	datae => \ALT_INV_D_in[2]~input_o\,
	dataf => \parite|ALT_INV_Decoder0~28_combout\,
	combout => \parite|Selector6~2_combout\);

-- Location: LABCELL_X47_Y18_N57
\parite|Decoder0~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Decoder0~31_combout\ = ( \parite|level\(0) & ( !\parite|level\(1) & ( (!\parite|level\(4) & (\parite|level\(5) & (!\parite|level\(2) & !\parite|level\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(4),
	datab => \parite|ALT_INV_level\(5),
	datac => \parite|ALT_INV_level\(2),
	datad => \parite|ALT_INV_level\(3),
	datae => \parite|ALT_INV_level\(0),
	dataf => \parite|ALT_INV_level\(1),
	combout => \parite|Decoder0~31_combout\);

-- Location: LABCELL_X50_Y19_N48
\parite|Selector6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Selector6~1_combout\ = ( \parite|Decoder0~30_combout\ & ( \parite|Decoder0~31_combout\ & ( (!\D_in[6]~input_o\ & (!\D_in[7]~input_o\ & ((!\D_in[5]~input_o\) # (!\parite|Decoder0~29_combout\)))) ) ) ) # ( !\parite|Decoder0~30_combout\ & ( 
-- \parite|Decoder0~31_combout\ & ( (!\D_in[7]~input_o\ & ((!\D_in[5]~input_o\) # (!\parite|Decoder0~29_combout\))) ) ) ) # ( \parite|Decoder0~30_combout\ & ( !\parite|Decoder0~31_combout\ & ( (!\D_in[6]~input_o\ & ((!\D_in[5]~input_o\) # 
-- (!\parite|Decoder0~29_combout\))) ) ) ) # ( !\parite|Decoder0~30_combout\ & ( !\parite|Decoder0~31_combout\ & ( (!\D_in[5]~input_o\) # (!\parite|Decoder0~29_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000101010101010000011001100110000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[6]~input_o\,
	datab => \ALT_INV_D_in[7]~input_o\,
	datac => \ALT_INV_D_in[5]~input_o\,
	datad => \parite|ALT_INV_Decoder0~29_combout\,
	datae => \parite|ALT_INV_Decoder0~30_combout\,
	dataf => \parite|ALT_INV_Decoder0~31_combout\,
	combout => \parite|Selector6~1_combout\);

-- Location: LABCELL_X50_Y19_N6
\parite|CRC_reg~128\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~128_combout\ = ( \parite|CRC_reg\(8) & ( \parite|Selector6~1_combout\ & ( (\parite|CRC_reg~127_combout\ & (((!\parite|WideOr6~0_combout\) # (!\parite|Selector6~2_combout\)) # (\parite|Selector6~0_combout\))) ) ) ) # ( !\parite|CRC_reg\(8) 
-- & ( \parite|Selector6~1_combout\ & ( (\parite|CRC_reg~127_combout\ & (\parite|WideOr6~0_combout\ & ((!\parite|Selector6~2_combout\) # (\parite|Selector6~0_combout\)))) ) ) ) # ( \parite|CRC_reg\(8) & ( !\parite|Selector6~1_combout\ & ( 
-- \parite|CRC_reg~127_combout\ ) ) ) # ( !\parite|CRC_reg\(8) & ( !\parite|Selector6~1_combout\ & ( (\parite|CRC_reg~127_combout\ & \parite|WideOr6~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001100110011001100000011000000010011001100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Selector6~0_combout\,
	datab => \parite|ALT_INV_CRC_reg~127_combout\,
	datac => \parite|ALT_INV_WideOr6~0_combout\,
	datad => \parite|ALT_INV_Selector6~2_combout\,
	datae => \parite|ALT_INV_CRC_reg\(8),
	dataf => \parite|ALT_INV_Selector6~1_combout\,
	combout => \parite|CRC_reg~128_combout\);

-- Location: LABCELL_X48_Y19_N27
\parite|CRC_reg~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~130_combout\ = (!\parite|level\(5) & (\parite|CRC_reg\(7) & ((\parite|WideOr42~0_combout\) # (\parite|level\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001001100000000000100110000000000010011000000000001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(4),
	datab => \parite|ALT_INV_level\(5),
	datac => \parite|ALT_INV_WideOr42~0_combout\,
	datad => \parite|ALT_INV_CRC_reg\(7),
	combout => \parite|CRC_reg~130_combout\);

-- Location: LABCELL_X50_Y17_N24
\parite|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|LessThan0~0_combout\ = (!\parite|level\(4) & !\parite|level\(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(4),
	datac => \parite|ALT_INV_level\(3),
	combout => \parite|LessThan0~0_combout\);

-- Location: MLABCELL_X49_Y17_N3
\parite|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr4~0_combout\ = ( \parite|level\(0) & ( (\parite|level\(5) & ((!\parite|level\(1)) # (!\parite|level\(2)))) ) ) # ( !\parite|level\(0) & ( \parite|level\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111011100000000011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(1),
	datab => \parite|ALT_INV_level\(2),
	datad => \parite|ALT_INV_level\(5),
	dataf => \parite|ALT_INV_level\(0),
	combout => \parite|WideOr4~0_combout\);

-- Location: LABCELL_X50_Y17_N48
\parite|CRC_reg~136\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~136_combout\ = ( \parite|Decoder0~30_combout\ & ( \parite|Decoder0~31_combout\ & ( (\parite|LessThan0~0_combout\ & (\parite|WideOr4~0_combout\ & ((\D_in[4]~input_o\) # (\D_in[5]~input_o\)))) ) ) ) # ( !\parite|Decoder0~30_combout\ & ( 
-- \parite|Decoder0~31_combout\ & ( (\D_in[5]~input_o\ & (\parite|LessThan0~0_combout\ & \parite|WideOr4~0_combout\)) ) ) ) # ( \parite|Decoder0~30_combout\ & ( !\parite|Decoder0~31_combout\ & ( (\D_in[4]~input_o\ & (\parite|LessThan0~0_combout\ & 
-- \parite|WideOr4~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001100000000000001010000000000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[5]~input_o\,
	datab => \ALT_INV_D_in[4]~input_o\,
	datac => \parite|ALT_INV_LessThan0~0_combout\,
	datad => \parite|ALT_INV_WideOr4~0_combout\,
	datae => \parite|ALT_INV_Decoder0~30_combout\,
	dataf => \parite|ALT_INV_Decoder0~31_combout\,
	combout => \parite|CRC_reg~136_combout\);

-- Location: LABCELL_X50_Y17_N6
\parite|CRC_reg~134\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~134_combout\ = ( \parite|WideOr4~0_combout\ & ( \D_in[2]~input_o\ & ( (\parite|LessThan0~0_combout\ & (((\parite|Decoder0~29_combout\ & \D_in[3]~input_o\)) # (\parite|Decoder0~28_combout\))) ) ) ) # ( \parite|WideOr4~0_combout\ & ( 
-- !\D_in[2]~input_o\ & ( (\parite|LessThan0~0_combout\ & (\parite|Decoder0~29_combout\ & \D_in[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010100000000000000000001000100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_LessThan0~0_combout\,
	datab => \parite|ALT_INV_Decoder0~28_combout\,
	datac => \parite|ALT_INV_Decoder0~29_combout\,
	datad => \ALT_INV_D_in[3]~input_o\,
	datae => \parite|ALT_INV_WideOr4~0_combout\,
	dataf => \ALT_INV_D_in[2]~input_o\,
	combout => \parite|CRC_reg~134_combout\);

-- Location: LABCELL_X50_Y17_N33
\parite|CRC_reg~132\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~132_combout\ = ( \parite|WideOr61~0_combout\ & ( \parite|WideOr51~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \parite|ALT_INV_WideOr51~0_combout\,
	dataf => \parite|ALT_INV_WideOr61~0_combout\,
	combout => \parite|CRC_reg~132_combout\);

-- Location: MLABCELL_X49_Y17_N6
\parite|CRC_reg~133\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~133_combout\ = ( \parite|Decoder0~27_combout\ & ( \D_in[0]~input_o\ & ( (\parite|WideOr4~0_combout\ & (\parite|LessThan0~0_combout\ & ((\D_in[1]~input_o\) # (\parite|Decoder0~26_combout\)))) ) ) ) # ( !\parite|Decoder0~27_combout\ & ( 
-- \D_in[0]~input_o\ & ( (\parite|Decoder0~26_combout\ & (\parite|WideOr4~0_combout\ & \parite|LessThan0~0_combout\)) ) ) ) # ( \parite|Decoder0~27_combout\ & ( !\D_in[0]~input_o\ & ( (\D_in[1]~input_o\ & (\parite|WideOr4~0_combout\ & 
-- \parite|LessThan0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001100000000000001010000000000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Decoder0~26_combout\,
	datab => \ALT_INV_D_in[1]~input_o\,
	datac => \parite|ALT_INV_WideOr4~0_combout\,
	datad => \parite|ALT_INV_LessThan0~0_combout\,
	datae => \parite|ALT_INV_Decoder0~27_combout\,
	dataf => \ALT_INV_D_in[0]~input_o\,
	combout => \parite|CRC_reg~133_combout\);

-- Location: LABCELL_X50_Y17_N42
\parite|Decoder0~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|Decoder0~32_combout\ = ( !\parite|level\(3) & ( !\parite|level\(0) & ( (!\parite|level\(2) & (\parite|level\(5) & (!\parite|level\(1) & !\parite|level\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(2),
	datab => \parite|ALT_INV_level\(5),
	datac => \parite|ALT_INV_level\(1),
	datad => \parite|ALT_INV_level\(4),
	datae => \parite|ALT_INV_level\(3),
	dataf => \parite|ALT_INV_level\(0),
	combout => \parite|Decoder0~32_combout\);

-- Location: LABCELL_X50_Y17_N30
\parite|CRC_reg~135\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~135_combout\ = ( \parite|LessThan0~0_combout\ & ( (!\parite|WideOr4~0_combout\ & (((\parite|CRC_reg\(6))))) # (\parite|WideOr4~0_combout\ & (\D_in[6]~input_o\ & ((\parite|Decoder0~32_combout\)))) ) ) # ( !\parite|LessThan0~0_combout\ & ( 
-- \parite|CRC_reg\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001010000110110000101000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_WideOr4~0_combout\,
	datab => \ALT_INV_D_in[6]~input_o\,
	datac => \parite|ALT_INV_CRC_reg\(6),
	datad => \parite|ALT_INV_Decoder0~32_combout\,
	dataf => \parite|ALT_INV_LessThan0~0_combout\,
	combout => \parite|CRC_reg~135_combout\);

-- Location: LABCELL_X50_Y17_N0
\parite|CRC_reg~137\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~137_combout\ = ( \parite|CRC_reg~133_combout\ & ( \parite|CRC_reg~135_combout\ & ( (\parite|CRC_reg~89_combout\) # (\parite|CRC_reg~132_combout\) ) ) ) # ( !\parite|CRC_reg~133_combout\ & ( \parite|CRC_reg~135_combout\ & ( 
-- (\parite|CRC_reg~89_combout\) # (\parite|CRC_reg~132_combout\) ) ) ) # ( \parite|CRC_reg~133_combout\ & ( !\parite|CRC_reg~135_combout\ & ( (\parite|CRC_reg~89_combout\) # (\parite|CRC_reg~132_combout\) ) ) ) # ( !\parite|CRC_reg~133_combout\ & ( 
-- !\parite|CRC_reg~135_combout\ & ( (!\parite|CRC_reg~136_combout\ & (\parite|CRC_reg~134_combout\ & ((\parite|CRC_reg~89_combout\) # (\parite|CRC_reg~132_combout\)))) # (\parite|CRC_reg~136_combout\ & (((\parite|CRC_reg~89_combout\) # 
-- (\parite|CRC_reg~132_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101110111000011111111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_CRC_reg~136_combout\,
	datab => \parite|ALT_INV_CRC_reg~134_combout\,
	datac => \parite|ALT_INV_CRC_reg~132_combout\,
	datad => \parite|ALT_INV_CRC_reg~89_combout\,
	datae => \parite|ALT_INV_CRC_reg~133_combout\,
	dataf => \parite|ALT_INV_CRC_reg~135_combout\,
	combout => \parite|CRC_reg~137_combout\);

-- Location: MLABCELL_X49_Y17_N0
\parite|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr3~0_combout\ = (!\parite|level\(4) & (\parite|level\(5) & ((!\parite|level\(1)) # (!\parite|level\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100000000000001110000000000000111000000000000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(1),
	datab => \parite|ALT_INV_level\(2),
	datac => \parite|ALT_INV_level\(4),
	datad => \parite|ALT_INV_level\(5),
	combout => \parite|WideOr3~0_combout\);

-- Location: MLABCELL_X49_Y17_N30
\parite|CRC_reg~140\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~140_combout\ = ( \D_in[0]~input_o\ & ( (!\parite|level\(3) & (\parite|WideOr3~0_combout\ & \parite|Decoder0~27_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(3),
	datac => \parite|ALT_INV_WideOr3~0_combout\,
	datad => \parite|ALT_INV_Decoder0~27_combout\,
	dataf => \ALT_INV_D_in[0]~input_o\,
	combout => \parite|CRC_reg~140_combout\);

-- Location: MLABCELL_X49_Y17_N18
\parite|CRC_reg~143\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~143_combout\ = ( \D_in[3]~input_o\ & ( \D_in[4]~input_o\ & ( (!\parite|level\(3) & (\parite|WideOr3~0_combout\ & ((\parite|Decoder0~30_combout\) # (\parite|Decoder0~31_combout\)))) ) ) ) # ( !\D_in[3]~input_o\ & ( \D_in[4]~input_o\ & ( 
-- (!\parite|level\(3) & (\parite|Decoder0~31_combout\ & \parite|WideOr3~0_combout\)) ) ) ) # ( \D_in[3]~input_o\ & ( !\D_in[4]~input_o\ & ( (!\parite|level\(3) & (\parite|WideOr3~0_combout\ & \parite|Decoder0~30_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000101000000010000000100000001000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(3),
	datab => \parite|ALT_INV_Decoder0~31_combout\,
	datac => \parite|ALT_INV_WideOr3~0_combout\,
	datad => \parite|ALT_INV_Decoder0~30_combout\,
	datae => \ALT_INV_D_in[3]~input_o\,
	dataf => \ALT_INV_D_in[4]~input_o\,
	combout => \parite|CRC_reg~143_combout\);

-- Location: MLABCELL_X49_Y17_N12
\parite|CRC_reg~141\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~141_combout\ = ( \parite|WideOr3~0_combout\ & ( \D_in[2]~input_o\ & ( (!\parite|level\(3) & (((\parite|Decoder0~28_combout\ & \D_in[1]~input_o\)) # (\parite|Decoder0~29_combout\))) ) ) ) # ( \parite|WideOr3~0_combout\ & ( 
-- !\D_in[2]~input_o\ & ( (!\parite|level\(3) & (\parite|Decoder0~28_combout\ & \D_in[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010001000000000000000000000101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(3),
	datab => \parite|ALT_INV_Decoder0~28_combout\,
	datac => \parite|ALT_INV_Decoder0~29_combout\,
	datad => \ALT_INV_D_in[1]~input_o\,
	datae => \parite|ALT_INV_WideOr3~0_combout\,
	dataf => \ALT_INV_D_in[2]~input_o\,
	combout => \parite|CRC_reg~141_combout\);

-- Location: LABCELL_X50_Y17_N36
\parite|CRC_reg~139\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~139_combout\ = ( \parite|WideOr61~0_combout\ & ( \parite|WideOr52~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_WideOr52~0_combout\,
	dataf => \parite|ALT_INV_WideOr61~0_combout\,
	combout => \parite|CRC_reg~139_combout\);

-- Location: LABCELL_X48_Y17_N51
\parite|CRC_reg~142\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~142_combout\ = ( \D_in[5]~input_o\ & ( (!\parite|WideOr3~0_combout\ & (((\parite|CRC_reg\(5))))) # (\parite|WideOr3~0_combout\ & ((!\parite|level\(3) & (\parite|Decoder0~32_combout\)) # (\parite|level\(3) & ((\parite|CRC_reg\(5)))))) ) ) # 
-- ( !\D_in[5]~input_o\ & ( (\parite|CRC_reg\(5) & ((!\parite|WideOr3~0_combout\) # (\parite|level\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001111000010100000111100011011000011110001101100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_WideOr3~0_combout\,
	datab => \parite|ALT_INV_Decoder0~32_combout\,
	datac => \parite|ALT_INV_CRC_reg\(5),
	datad => \parite|ALT_INV_level\(3),
	dataf => \ALT_INV_D_in[5]~input_o\,
	combout => \parite|CRC_reg~142_combout\);

-- Location: LABCELL_X48_Y17_N6
\parite|CRC_reg~144\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~144_combout\ = ( \parite|CRC_reg~89_combout\ & ( \parite|CRC_reg~142_combout\ ) ) # ( !\parite|CRC_reg~89_combout\ & ( \parite|CRC_reg~142_combout\ & ( \parite|CRC_reg~139_combout\ ) ) ) # ( \parite|CRC_reg~89_combout\ & ( 
-- !\parite|CRC_reg~142_combout\ & ( ((\parite|CRC_reg~141_combout\) # (\parite|CRC_reg~143_combout\)) # (\parite|CRC_reg~140_combout\) ) ) ) # ( !\parite|CRC_reg~89_combout\ & ( !\parite|CRC_reg~142_combout\ & ( (\parite|CRC_reg~139_combout\ & 
-- (((\parite|CRC_reg~141_combout\) # (\parite|CRC_reg~143_combout\)) # (\parite|CRC_reg~140_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001111111011111110111111100000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_CRC_reg~140_combout\,
	datab => \parite|ALT_INV_CRC_reg~143_combout\,
	datac => \parite|ALT_INV_CRC_reg~141_combout\,
	datad => \parite|ALT_INV_CRC_reg~139_combout\,
	datae => \parite|ALT_INV_CRC_reg~89_combout\,
	dataf => \parite|ALT_INV_CRC_reg~142_combout\,
	combout => \parite|CRC_reg~144_combout\);

-- Location: MLABCELL_X49_Y17_N51
\parite|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr2~0_combout\ = ( \parite|level\(0) & ( (!\parite|level\(2) & \parite|level\(5)) ) ) # ( !\parite|level\(0) & ( (\parite|level\(5) & ((!\parite|level\(2)) # (!\parite|level\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000000001110111000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(2),
	datab => \parite|ALT_INV_level\(1),
	datad => \parite|ALT_INV_level\(5),
	dataf => \parite|ALT_INV_level\(0),
	combout => \parite|WideOr2~0_combout\);

-- Location: LABCELL_X48_Y17_N48
\parite|WideOr2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr2~1_combout\ = ( \parite|LessThan0~0_combout\ & ( \parite|WideOr2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \parite|ALT_INV_WideOr2~0_combout\,
	dataf => \parite|ALT_INV_LessThan0~0_combout\,
	combout => \parite|WideOr2~1_combout\);

-- Location: MLABCELL_X49_Y17_N57
\parite|CRC_reg~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~148_combout\ = ( \D_in[4]~input_o\ & ( \parite|Decoder0~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \parite|ALT_INV_Decoder0~32_combout\,
	dataf => \ALT_INV_D_in[4]~input_o\,
	combout => \parite|CRC_reg~148_combout\);

-- Location: LABCELL_X47_Y17_N30
\parite|CRC_reg~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~147_combout\ = ( \parite|Decoder0~29_combout\ & ( \D_in[0]~input_o\ & ( (\parite|WideOr2~0_combout\ & (\parite|LessThan0~0_combout\ & ((\D_in[1]~input_o\) # (\parite|Decoder0~28_combout\)))) ) ) ) # ( !\parite|Decoder0~29_combout\ & ( 
-- \D_in[0]~input_o\ & ( (\parite|WideOr2~0_combout\ & (\parite|Decoder0~28_combout\ & \parite|LessThan0~0_combout\)) ) ) ) # ( \parite|Decoder0~29_combout\ & ( !\D_in[0]~input_o\ & ( (\parite|WideOr2~0_combout\ & (\parite|LessThan0~0_combout\ & 
-- \D_in[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010100000001000000010000000100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_WideOr2~0_combout\,
	datab => \parite|ALT_INV_Decoder0~28_combout\,
	datac => \parite|ALT_INV_LessThan0~0_combout\,
	datad => \ALT_INV_D_in[1]~input_o\,
	datae => \parite|ALT_INV_Decoder0~29_combout\,
	dataf => \ALT_INV_D_in[0]~input_o\,
	combout => \parite|CRC_reg~147_combout\);

-- Location: LABCELL_X48_Y17_N57
\parite|CRC_reg~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~146_combout\ = ( \parite|WideOr61~0_combout\ & ( (!\parite|CRC_reg~89_combout\ & !\parite|WideOr53~0_combout\) ) ) # ( !\parite|WideOr61~0_combout\ & ( !\parite|CRC_reg~89_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \parite|ALT_INV_CRC_reg~89_combout\,
	datad => \parite|ALT_INV_WideOr53~0_combout\,
	dataf => \parite|ALT_INV_WideOr61~0_combout\,
	combout => \parite|CRC_reg~146_combout\);

-- Location: LABCELL_X47_Y17_N36
\parite|CRC_reg~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~149_combout\ = ( \parite|Decoder0~31_combout\ & ( \D_in[3]~input_o\ & ( (\parite|LessThan0~0_combout\ & \parite|WideOr2~0_combout\) ) ) ) # ( !\parite|Decoder0~31_combout\ & ( \D_in[3]~input_o\ & ( (\parite|LessThan0~0_combout\ & 
-- (\parite|Decoder0~30_combout\ & (\parite|WideOr2~0_combout\ & \D_in[2]~input_o\))) ) ) ) # ( \parite|Decoder0~31_combout\ & ( !\D_in[3]~input_o\ & ( (\parite|LessThan0~0_combout\ & (\parite|Decoder0~30_combout\ & (\parite|WideOr2~0_combout\ & 
-- \D_in[2]~input_o\))) ) ) ) # ( !\parite|Decoder0~31_combout\ & ( !\D_in[3]~input_o\ & ( (\parite|LessThan0~0_combout\ & (\parite|Decoder0~30_combout\ & (\parite|WideOr2~0_combout\ & \D_in[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_LessThan0~0_combout\,
	datab => \parite|ALT_INV_Decoder0~30_combout\,
	datac => \parite|ALT_INV_WideOr2~0_combout\,
	datad => \ALT_INV_D_in[2]~input_o\,
	datae => \parite|ALT_INV_Decoder0~31_combout\,
	dataf => \ALT_INV_D_in[3]~input_o\,
	combout => \parite|CRC_reg~149_combout\);

-- Location: LABCELL_X48_Y17_N12
\parite|CRC_reg~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~150_combout\ = ( \parite|CRC_reg\(4) & ( \parite|CRC_reg~149_combout\ & ( !\parite|CRC_reg~146_combout\ ) ) ) # ( !\parite|CRC_reg\(4) & ( \parite|CRC_reg~149_combout\ & ( !\parite|CRC_reg~146_combout\ ) ) ) # ( \parite|CRC_reg\(4) & ( 
-- !\parite|CRC_reg~149_combout\ & ( (!\parite|CRC_reg~146_combout\ & ((!\parite|WideOr2~1_combout\) # ((\parite|CRC_reg~147_combout\) # (\parite|CRC_reg~148_combout\)))) ) ) ) # ( !\parite|CRC_reg\(4) & ( !\parite|CRC_reg~149_combout\ & ( 
-- (!\parite|CRC_reg~146_combout\ & (((\parite|WideOr2~1_combout\ & \parite|CRC_reg~148_combout\)) # (\parite|CRC_reg~147_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100000000101111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_WideOr2~1_combout\,
	datab => \parite|ALT_INV_CRC_reg~148_combout\,
	datac => \parite|ALT_INV_CRC_reg~147_combout\,
	datad => \parite|ALT_INV_CRC_reg~146_combout\,
	datae => \parite|ALT_INV_CRC_reg\(4),
	dataf => \parite|ALT_INV_CRC_reg~149_combout\,
	combout => \parite|CRC_reg~150_combout\);

-- Location: LABCELL_X47_Y17_N3
\parite|CRC_reg~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~152_combout\ = ( \parite|WideOr42~0_combout\ & ( (!\parite|level\(5) & \parite|CRC_reg\(3)) ) ) # ( !\parite|WideOr42~0_combout\ & ( (!\parite|level\(5) & (\parite|level\(4) & \parite|CRC_reg\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_level\(5),
	datac => \parite|ALT_INV_level\(4),
	datad => \parite|ALT_INV_CRC_reg\(3),
	dataf => \parite|ALT_INV_WideOr42~0_combout\,
	combout => \parite|CRC_reg~152_combout\);

-- Location: LABCELL_X47_Y17_N21
\parite|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr0~0_combout\ = ( \parite|level\(1) & ( (\parite|level\(5) & (!\parite|level\(4) & !\parite|level\(0))) ) ) # ( !\parite|level\(1) & ( (\parite|level\(5) & !\parite|level\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_level\(5),
	datac => \parite|ALT_INV_level\(4),
	datad => \parite|ALT_INV_level\(0),
	dataf => \parite|ALT_INV_level\(1),
	combout => \parite|WideOr0~0_combout\);

-- Location: LABCELL_X47_Y17_N54
\parite|CRC_reg~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~156_combout\ = ( \parite|Decoder0~31_combout\ & ( \D_in[1]~input_o\ & ( (\parite|WideOr0~0_combout\ & (!\parite|Decoder0~30_combout\ & \parite|CRC_reg~82_combout\)) ) ) ) # ( !\parite|Decoder0~31_combout\ & ( \D_in[1]~input_o\ & ( 
-- (\parite|WideOr0~0_combout\ & (!\parite|Decoder0~30_combout\ & (\parite|CRC_reg~82_combout\ & \D_in[2]~input_o\))) ) ) ) # ( !\parite|Decoder0~31_combout\ & ( !\D_in[1]~input_o\ & ( (\parite|WideOr0~0_combout\ & (!\parite|Decoder0~30_combout\ & 
-- (\parite|CRC_reg~82_combout\ & \D_in[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_WideOr0~0_combout\,
	datab => \parite|ALT_INV_Decoder0~30_combout\,
	datac => \parite|ALT_INV_CRC_reg~82_combout\,
	datad => \ALT_INV_D_in[2]~input_o\,
	datae => \parite|ALT_INV_Decoder0~31_combout\,
	dataf => \ALT_INV_D_in[1]~input_o\,
	combout => \parite|CRC_reg~156_combout\);

-- Location: LABCELL_X47_Y17_N12
\parite|CRC_reg~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~154_combout\ = ( \parite|CRC_reg~82_combout\ & ( \parite|WideOr0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \parite|ALT_INV_WideOr0~0_combout\,
	dataf => \parite|ALT_INV_CRC_reg~82_combout\,
	combout => \parite|CRC_reg~154_combout\);

-- Location: LABCELL_X47_Y17_N48
\parite|CRC_reg~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~155_combout\ = ( \parite|WideOr61~0_combout\ & ( \parite|WideOr55~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \parite|ALT_INV_WideOr55~0_combout\,
	dataf => \parite|ALT_INV_WideOr61~0_combout\,
	combout => \parite|CRC_reg~155_combout\);

-- Location: LABCELL_X47_Y17_N15
\parite|CRC_reg~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~157_combout\ = ( \D_in[0]~input_o\ & ( \parite|Decoder0~30_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \parite|ALT_INV_Decoder0~30_combout\,
	dataf => \ALT_INV_D_in[0]~input_o\,
	combout => \parite|CRC_reg~157_combout\);

-- Location: LABCELL_X47_Y17_N6
\parite|CRC_reg~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~158_combout\ = ( \parite|CRC_reg\(2) & ( \parite|CRC_reg~89_combout\ & ( ((!\parite|CRC_reg~154_combout\) # (\parite|CRC_reg~157_combout\)) # (\parite|CRC_reg~156_combout\) ) ) ) # ( !\parite|CRC_reg\(2) & ( \parite|CRC_reg~89_combout\ & ( 
-- ((\parite|CRC_reg~154_combout\ & \parite|CRC_reg~157_combout\)) # (\parite|CRC_reg~156_combout\) ) ) ) # ( \parite|CRC_reg\(2) & ( !\parite|CRC_reg~89_combout\ & ( (\parite|CRC_reg~155_combout\ & (((!\parite|CRC_reg~154_combout\) # 
-- (\parite|CRC_reg~157_combout\)) # (\parite|CRC_reg~156_combout\))) ) ) ) # ( !\parite|CRC_reg\(2) & ( !\parite|CRC_reg~89_combout\ & ( (\parite|CRC_reg~155_combout\ & (((\parite|CRC_reg~154_combout\ & \parite|CRC_reg~157_combout\)) # 
-- (\parite|CRC_reg~156_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000111000011010000111101010101011101111101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_CRC_reg~156_combout\,
	datab => \parite|ALT_INV_CRC_reg~154_combout\,
	datac => \parite|ALT_INV_CRC_reg~155_combout\,
	datad => \parite|ALT_INV_CRC_reg~157_combout\,
	datae => \parite|ALT_INV_CRC_reg\(2),
	dataf => \parite|ALT_INV_CRC_reg~89_combout\,
	combout => \parite|CRC_reg~158_combout\);

-- Location: LABCELL_X47_Y17_N42
\parite|CRC_reg~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~160_combout\ = ( \parite|WideOr42~0_combout\ & ( (!\parite|level\(5) & \parite|CRC_reg\(1)) ) ) # ( !\parite|WideOr42~0_combout\ & ( (!\parite|level\(5) & (\parite|level\(4) & \parite|CRC_reg\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_level\(5),
	datac => \parite|ALT_INV_level\(4),
	datad => \parite|ALT_INV_CRC_reg\(1),
	dataf => \parite|ALT_INV_WideOr42~0_combout\,
	combout => \parite|CRC_reg~160_combout\);

-- Location: LABCELL_X48_Y17_N18
\parite|CRC_reg~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~162_combout\ = ( \parite|CRC_reg\(0) & ( \parite|WideOr61~0_combout\ & ( (!\parite|CRC_reg~89_combout\ & (\parite|WideOr30~1_combout\ & ((!\parite|Decoder0~32_combout\) # (\D_in[0]~input_o\)))) # (\parite|CRC_reg~89_combout\ & 
-- ((!\parite|Decoder0~32_combout\) # ((\D_in[0]~input_o\)))) ) ) ) # ( !\parite|CRC_reg\(0) & ( \parite|WideOr61~0_combout\ & ( (\parite|Decoder0~32_combout\ & (\D_in[0]~input_o\ & ((\parite|WideOr30~1_combout\) # (\parite|CRC_reg~89_combout\)))) ) ) ) # ( 
-- \parite|CRC_reg\(0) & ( !\parite|WideOr61~0_combout\ & ( (\parite|CRC_reg~89_combout\ & ((!\parite|Decoder0~32_combout\) # (\D_in[0]~input_o\))) ) ) ) # ( !\parite|CRC_reg\(0) & ( !\parite|WideOr61~0_combout\ & ( (\parite|CRC_reg~89_combout\ & 
-- (\parite|Decoder0~32_combout\ & \D_in[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001010001010100010100000001000000110100010111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_CRC_reg~89_combout\,
	datab => \parite|ALT_INV_Decoder0~32_combout\,
	datac => \ALT_INV_D_in[0]~input_o\,
	datad => \parite|ALT_INV_WideOr30~1_combout\,
	datae => \parite|ALT_INV_CRC_reg\(0),
	dataf => \parite|ALT_INV_WideOr61~0_combout\,
	combout => \parite|CRC_reg~162_combout\);

-- Location: MLABCELL_X49_Y17_N54
\parite|CRC_reg~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~163_combout\ = ( \Start~q\ & ( (\parite|CRC_reg\(0) & !\parite|level\(5)) ) ) # ( !\Start~q\ & ( \parite|CRC_reg\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_CRC_reg\(0),
	datad => \parite|ALT_INV_level\(5),
	dataf => \ALT_INV_Start~q\,
	combout => \parite|CRC_reg~163_combout\);

-- Location: FF_X48_Y17_N20
\parite|CRC_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|CRC_reg~162_combout\,
	asdata => \parite|CRC_reg~163_combout\,
	clrn => \SynRst~q\,
	sclr => \machineEtat|Selector2~0_combout\,
	sload => \parite|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|CRC_reg\(0));

-- Location: LABCELL_X47_Y17_N45
\parite|CRC_reg~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~161_combout\ = ( \parite|CRC_reg\(0) & ( ((\parite|level\(5) & \Start~q\)) # (\parite|CRC_reg\(1)) ) ) # ( !\parite|CRC_reg\(0) & ( (\parite|CRC_reg\(1) & ((!\parite|level\(5)) # (!\Start~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110000001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_level\(5),
	datac => \parite|ALT_INV_CRC_reg\(1),
	datad => \ALT_INV_Start~q\,
	dataf => \parite|ALT_INV_CRC_reg\(0),
	combout => \parite|CRC_reg~161_combout\);

-- Location: FF_X47_Y17_N44
\parite|CRC_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|CRC_reg~160_combout\,
	asdata => \parite|CRC_reg~161_combout\,
	clrn => \SynRst~q\,
	sclr => \machineEtat|Selector2~0_combout\,
	sload => \parite|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|CRC_reg\(1));

-- Location: LABCELL_X47_Y17_N51
\parite|CRC_reg~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~159_combout\ = ( \parite|level\(5) & ( (!\Start~q\ & (\parite|CRC_reg\(2))) # (\Start~q\ & ((\parite|CRC_reg\(1)))) ) ) # ( !\parite|level\(5) & ( \parite|CRC_reg\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Start~q\,
	datab => \parite|ALT_INV_CRC_reg\(2),
	datac => \parite|ALT_INV_CRC_reg\(1),
	dataf => \parite|ALT_INV_level\(5),
	combout => \parite|CRC_reg~159_combout\);

-- Location: FF_X47_Y17_N8
\parite|CRC_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|CRC_reg~158_combout\,
	asdata => \parite|CRC_reg~159_combout\,
	clrn => \SynRst~q\,
	sclr => \machineEtat|Selector2~0_combout\,
	sload => \parite|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|CRC_reg\(2));

-- Location: LABCELL_X47_Y17_N0
\parite|CRC_reg~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~153_combout\ = ( \parite|CRC_reg\(2) & ( ((\parite|level\(5) & \Start~q\)) # (\parite|CRC_reg\(3)) ) ) # ( !\parite|CRC_reg\(2) & ( (\parite|CRC_reg\(3) & ((!\parite|level\(5)) # (!\Start~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110000001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_level\(5),
	datac => \parite|ALT_INV_CRC_reg\(3),
	datad => \ALT_INV_Start~q\,
	dataf => \parite|ALT_INV_CRC_reg\(2),
	combout => \parite|CRC_reg~153_combout\);

-- Location: FF_X47_Y17_N5
\parite|CRC_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|CRC_reg~152_combout\,
	asdata => \parite|CRC_reg~153_combout\,
	clrn => \SynRst~q\,
	sclr => \machineEtat|Selector2~0_combout\,
	sload => \parite|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|CRC_reg\(3));

-- Location: LABCELL_X48_Y17_N54
\parite|CRC_reg~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~151_combout\ = ( \Start~q\ & ( (!\parite|level\(5) & (\parite|CRC_reg\(4))) # (\parite|level\(5) & ((\parite|CRC_reg\(3)))) ) ) # ( !\Start~q\ & ( \parite|CRC_reg\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_CRC_reg\(4),
	datac => \parite|ALT_INV_CRC_reg\(3),
	datad => \parite|ALT_INV_level\(5),
	dataf => \ALT_INV_Start~q\,
	combout => \parite|CRC_reg~151_combout\);

-- Location: FF_X48_Y17_N14
\parite|CRC_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|CRC_reg~150_combout\,
	asdata => \parite|CRC_reg~151_combout\,
	clrn => \SynRst~q\,
	sclr => \machineEtat|Selector2~0_combout\,
	sload => \parite|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|CRC_reg\(4));

-- Location: LABCELL_X48_Y17_N3
\parite|CRC_reg~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~145_combout\ = ( \Start~q\ & ( (!\parite|level\(5) & (\parite|CRC_reg\(5))) # (\parite|level\(5) & ((\parite|CRC_reg\(4)))) ) ) # ( !\Start~q\ & ( \parite|CRC_reg\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_CRC_reg\(5),
	datac => \parite|ALT_INV_CRC_reg\(4),
	datad => \parite|ALT_INV_level\(5),
	dataf => \ALT_INV_Start~q\,
	combout => \parite|CRC_reg~145_combout\);

-- Location: FF_X48_Y17_N8
\parite|CRC_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|CRC_reg~144_combout\,
	asdata => \parite|CRC_reg~145_combout\,
	clrn => \SynRst~q\,
	sclr => \machineEtat|Selector2~0_combout\,
	sload => \parite|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|CRC_reg\(5));

-- Location: MLABCELL_X49_Y17_N36
\parite|CRC_reg~138\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~138_combout\ = ( \Start~q\ & ( (!\parite|level\(5) & ((\parite|CRC_reg\(6)))) # (\parite|level\(5) & (\parite|CRC_reg\(5))) ) ) # ( !\Start~q\ & ( \parite|CRC_reg\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(5),
	datac => \parite|ALT_INV_CRC_reg\(5),
	datad => \parite|ALT_INV_CRC_reg\(6),
	dataf => \ALT_INV_Start~q\,
	combout => \parite|CRC_reg~138_combout\);

-- Location: FF_X50_Y17_N2
\parite|CRC_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|CRC_reg~137_combout\,
	asdata => \parite|CRC_reg~138_combout\,
	clrn => \SynRst~q\,
	sclr => \machineEtat|Selector2~0_combout\,
	sload => \parite|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|CRC_reg\(6));

-- Location: LABCELL_X48_Y19_N6
\parite|CRC_reg~131\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~131_combout\ = ( \parite|CRC_reg\(6) & ( ((\parite|level\(5) & \Start~q\)) # (\parite|CRC_reg\(7)) ) ) # ( !\parite|CRC_reg\(6) & ( (\parite|CRC_reg\(7) & ((!\parite|level\(5)) # (!\Start~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011100000111000011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(5),
	datab => \ALT_INV_Start~q\,
	datac => \parite|ALT_INV_CRC_reg\(7),
	dataf => \parite|ALT_INV_CRC_reg\(6),
	combout => \parite|CRC_reg~131_combout\);

-- Location: FF_X48_Y19_N29
\parite|CRC_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|CRC_reg~130_combout\,
	asdata => \parite|CRC_reg~131_combout\,
	clrn => \SynRst~q\,
	sclr => \machineEtat|Selector2~0_combout\,
	sload => \parite|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|CRC_reg\(7));

-- Location: LABCELL_X50_Y19_N0
\parite|CRC_reg~129\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~129_combout\ = ( \parite|CRC_reg\(8) & ( (!\Start~q\) # ((!\parite|level\(5)) # (\parite|CRC_reg\(7))) ) ) # ( !\parite|CRC_reg\(8) & ( (\Start~q\ & (\parite|CRC_reg\(7) & \parite|level\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001111111111110011111111111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Start~q\,
	datac => \parite|ALT_INV_CRC_reg\(7),
	datad => \parite|ALT_INV_level\(5),
	dataf => \parite|ALT_INV_CRC_reg\(8),
	combout => \parite|CRC_reg~129_combout\);

-- Location: FF_X50_Y19_N8
\parite|CRC_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|CRC_reg~128_combout\,
	asdata => \parite|CRC_reg~129_combout\,
	clrn => \SynRst~q\,
	sclr => \machineEtat|Selector2~0_combout\,
	sload => \parite|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|CRC_reg\(8));

-- Location: LABCELL_X50_Y19_N36
\parite|CRC_reg~126\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~126_combout\ = ( \parite|CRC_reg\(9) & ( ((!\parite|level\(5)) # (!\Start~q\)) # (\parite|CRC_reg\(8)) ) ) # ( !\parite|CRC_reg\(9) & ( (\parite|CRC_reg\(8) & (\parite|level\(5) & \Start~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001111111111111100111111111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_CRC_reg\(8),
	datac => \parite|ALT_INV_level\(5),
	datad => \ALT_INV_Start~q\,
	dataf => \parite|ALT_INV_CRC_reg\(9),
	combout => \parite|CRC_reg~126_combout\);

-- Location: FF_X50_Y19_N32
\parite|CRC_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|CRC_reg~125_combout\,
	asdata => \parite|CRC_reg~126_combout\,
	clrn => \SynRst~q\,
	sclr => \machineEtat|Selector2~0_combout\,
	sload => \parite|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|CRC_reg\(9));

-- Location: LABCELL_X48_Y17_N36
\parite|CRC_reg~122\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~122_combout\ = ( \Start~q\ & ( (!\parite|level\(5) & (\parite|CRC_reg\(10))) # (\parite|level\(5) & ((\parite|CRC_reg\(9)))) ) ) # ( !\Start~q\ & ( \parite|CRC_reg\(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(5),
	datab => \parite|ALT_INV_CRC_reg\(10),
	datac => \parite|ALT_INV_CRC_reg\(9),
	dataf => \ALT_INV_Start~q\,
	combout => \parite|CRC_reg~122_combout\);

-- Location: FF_X48_Y17_N32
\parite|CRC_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|CRC_reg~121_combout\,
	asdata => \parite|CRC_reg~122_combout\,
	clrn => \SynRst~q\,
	sclr => \machineEtat|Selector2~0_combout\,
	sload => \parite|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|CRC_reg\(10));

-- Location: LABCELL_X52_Y19_N27
\parite|CRC_reg~119\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~119_combout\ = ( \parite|CRC_reg\(11) & ( ((!\Start~q\) # (!\parite|level\(5))) # (\parite|CRC_reg\(10)) ) ) # ( !\parite|CRC_reg\(11) & ( (\parite|CRC_reg\(10) & (\Start~q\ & \parite|level\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010111111111111101011111111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_CRC_reg\(10),
	datac => \ALT_INV_Start~q\,
	datad => \parite|ALT_INV_level\(5),
	dataf => \parite|ALT_INV_CRC_reg\(11),
	combout => \parite|CRC_reg~119_combout\);

-- Location: FF_X52_Y19_N50
\parite|CRC_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|CRC_reg~118_combout\,
	asdata => \parite|CRC_reg~119_combout\,
	clrn => \SynRst~q\,
	sclr => \machineEtat|Selector2~0_combout\,
	sload => \parite|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|CRC_reg\(11));

-- Location: LABCELL_X52_Y19_N18
\parite|CRC_reg~116\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~116_combout\ = ( \parite|CRC_reg\(12) & ( (!\Start~q\) # ((!\parite|level\(5)) # (\parite|CRC_reg\(11))) ) ) # ( !\parite|CRC_reg\(12) & ( (\Start~q\ & (\parite|CRC_reg\(11) & \parite|level\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010111111111101011111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Start~q\,
	datac => \parite|ALT_INV_CRC_reg\(11),
	datad => \parite|ALT_INV_level\(5),
	dataf => \parite|ALT_INV_CRC_reg\(12),
	combout => \parite|CRC_reg~116_combout\);

-- Location: FF_X52_Y19_N44
\parite|CRC_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|CRC_reg~115_combout\,
	asdata => \parite|CRC_reg~116_combout\,
	clrn => \SynRst~q\,
	sclr => \machineEtat|Selector2~0_combout\,
	sload => \parite|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|CRC_reg\(12));

-- Location: LABCELL_X52_Y19_N36
\parite|CRC_reg~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~113_combout\ = ( \parite|CRC_reg\(13) & ( ((!\Start~q\) # (!\parite|level\(5))) # (\parite|CRC_reg\(12)) ) ) # ( !\parite|CRC_reg\(13) & ( (\parite|CRC_reg\(12) & (\Start~q\ & \parite|level\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001111111111111100111111111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_CRC_reg\(12),
	datac => \ALT_INV_Start~q\,
	datad => \parite|ALT_INV_level\(5),
	dataf => \parite|ALT_INV_CRC_reg\(13),
	combout => \parite|CRC_reg~113_combout\);

-- Location: FF_X52_Y19_N8
\parite|CRC_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|CRC_reg~112_combout\,
	asdata => \parite|CRC_reg~113_combout\,
	clrn => \SynRst~q\,
	sclr => \machineEtat|Selector2~0_combout\,
	sload => \parite|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|CRC_reg\(13));

-- Location: LABCELL_X48_Y19_N24
\parite|CRC_reg~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~109_combout\ = ( \parite|CRC_reg\(13) & ( ((\parite|level\(5) & \Start~q\)) # (\parite|CRC_reg\(14)) ) ) # ( !\parite|CRC_reg\(13) & ( (\parite|CRC_reg\(14) & ((!\parite|level\(5)) # (!\Start~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110000001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_level\(5),
	datac => \parite|ALT_INV_CRC_reg\(14),
	datad => \ALT_INV_Start~q\,
	dataf => \parite|ALT_INV_CRC_reg\(13),
	combout => \parite|CRC_reg~109_combout\);

-- Location: FF_X48_Y19_N50
\parite|CRC_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|CRC_reg~108_combout\,
	asdata => \parite|CRC_reg~109_combout\,
	clrn => \SynRst~q\,
	sclr => \machineEtat|Selector2~0_combout\,
	sload => \parite|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|CRC_reg\(14));

-- Location: LABCELL_X48_Y19_N54
\parite|CRC_reg~106\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~106_combout\ = ( \parite|CRC_reg\(15) & ( (!\parite|level\(5)) # ((!\Start~q\) # (\parite|CRC_reg\(14))) ) ) # ( !\parite|CRC_reg\(15) & ( (\parite|level\(5) & (\parite|CRC_reg\(14) & \Start~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001111111111110011111111111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_level\(5),
	datac => \parite|ALT_INV_CRC_reg\(14),
	datad => \ALT_INV_Start~q\,
	dataf => \parite|ALT_INV_CRC_reg\(15),
	combout => \parite|CRC_reg~106_combout\);

-- Location: FF_X48_Y19_N14
\parite|CRC_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|CRC_reg~105_combout\,
	asdata => \parite|CRC_reg~106_combout\,
	clrn => \SynRst~q\,
	sclr => \machineEtat|Selector2~0_combout\,
	sload => \parite|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|CRC_reg\(15));

-- Location: LABCELL_X48_Y19_N21
\parite|CRC_reg~100\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~100_combout\ = ( \parite|CRC_reg\(16) & ( (!\parite|level\(5)) # ((!\Start~q\) # (\parite|CRC_reg\(15))) ) ) # ( !\parite|CRC_reg\(16) & ( (\parite|level\(5) & (\Start~q\ & \parite|CRC_reg\(15))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111101111111011111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(5),
	datab => \ALT_INV_Start~q\,
	datac => \parite|ALT_INV_CRC_reg\(15),
	dataf => \parite|ALT_INV_CRC_reg\(16),
	combout => \parite|CRC_reg~100_combout\);

-- Location: FF_X49_Y19_N32
\parite|CRC_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|CRC_reg~99_combout\,
	asdata => \parite|CRC_reg~100_combout\,
	clrn => \SynRst~q\,
	sclr => \machineEtat|Selector2~0_combout\,
	sload => \parite|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|CRC_reg\(16));

-- Location: LABCELL_X48_Y19_N18
\parite|CRC_reg~96\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~96_combout\ = ( \parite|CRC_reg\(16) & ( ((\parite|level\(5) & \Start~q\)) # (\parite|CRC_reg\(17)) ) ) # ( !\parite|CRC_reg\(16) & ( (\parite|CRC_reg\(17) & ((!\parite|level\(5)) # (!\Start~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011100000111000011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(5),
	datab => \ALT_INV_Start~q\,
	datac => \parite|ALT_INV_CRC_reg\(17),
	dataf => \parite|ALT_INV_CRC_reg\(16),
	combout => \parite|CRC_reg~96_combout\);

-- Location: FF_X48_Y19_N38
\parite|CRC_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|CRC_reg~95_combout\,
	asdata => \parite|CRC_reg~96_combout\,
	clrn => \SynRst~q\,
	sclr => \machineEtat|Selector2~0_combout\,
	sload => \parite|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|CRC_reg\(17));

-- Location: LABCELL_X48_Y19_N33
\parite|CRC_reg~88\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~88_combout\ = ( \parite|level\(5) & ( (!\Start~q\ & (\parite|CRC_reg\(18))) # (\Start~q\ & ((\parite|CRC_reg\(17)))) ) ) # ( !\parite|level\(5) & ( \parite|CRC_reg\(18) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_CRC_reg\(18),
	datab => \ALT_INV_Start~q\,
	datad => \parite|ALT_INV_CRC_reg\(17),
	dataf => \parite|ALT_INV_level\(5),
	combout => \parite|CRC_reg~88_combout\);

-- Location: FF_X48_Y19_N2
\parite|CRC_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|CRC_reg~87_combout\,
	asdata => \parite|CRC_reg~88_combout\,
	clrn => \SynRst~q\,
	sclr => \machineEtat|Selector2~0_combout\,
	sload => \parite|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|CRC_reg\(18));

-- Location: LABCELL_X47_Y19_N24
\parite|CRC_reg~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~85_combout\ = ( \parite|CRC_reg\(19) & ( (!\parite|level\(5)) # ((!\Start~q\) # (\parite|CRC_reg\(18))) ) ) # ( !\parite|CRC_reg\(19) & ( (\parite|level\(5) & (\parite|CRC_reg\(18) & \Start~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010111111111101011111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(5),
	datac => \parite|ALT_INV_CRC_reg\(18),
	datad => \ALT_INV_Start~q\,
	dataf => \parite|ALT_INV_CRC_reg\(19),
	combout => \parite|CRC_reg~85_combout\);

-- Location: FF_X47_Y19_N50
\parite|CRC_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|CRC_reg~84_combout\,
	asdata => \parite|CRC_reg~85_combout\,
	clrn => \SynRst~q\,
	sclr => \machineEtat|Selector2~0_combout\,
	sload => \parite|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|CRC_reg\(19));

-- Location: LABCELL_X47_Y19_N6
\parite|CRC_reg~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~81_combout\ = (!\parite|level\(5) & (\parite|CRC_reg\(20))) # (\parite|level\(5) & ((!\Start~q\ & (\parite|CRC_reg\(20))) # (\Start~q\ & ((\parite|CRC_reg\(19))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100111001100110010011100110011001001110011001100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(5),
	datab => \parite|ALT_INV_CRC_reg\(20),
	datac => \parite|ALT_INV_CRC_reg\(19),
	datad => \ALT_INV_Start~q\,
	combout => \parite|CRC_reg~81_combout\);

-- Location: FF_X47_Y19_N44
\parite|CRC_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|CRC_reg~80_combout\,
	asdata => \parite|CRC_reg~81_combout\,
	clrn => \SynRst~q\,
	sclr => \machineEtat|Selector2~0_combout\,
	sload => \parite|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|CRC_reg\(20));

-- Location: LABCELL_X47_Y19_N15
\parite|CRC_reg~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~78_combout\ = (!\parite|level\(5) & (((\parite|CRC_reg\(21))))) # (\parite|level\(5) & ((!\Start~q\ & ((\parite|CRC_reg\(21)))) # (\Start~q\ & (\parite|CRC_reg\(20)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(5),
	datab => \ALT_INV_Start~q\,
	datac => \parite|ALT_INV_CRC_reg\(20),
	datad => \parite|ALT_INV_CRC_reg\(21),
	combout => \parite|CRC_reg~78_combout\);

-- Location: FF_X47_Y19_N38
\parite|CRC_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|CRC_reg~77_combout\,
	asdata => \parite|CRC_reg~78_combout\,
	clrn => \SynRst~q\,
	sclr => \machineEtat|Selector2~0_combout\,
	sload => \parite|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|CRC_reg\(21));

-- Location: LABCELL_X47_Y19_N12
\parite|CRC_reg~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~75_combout\ = ( \parite|CRC_reg\(22) & ( (!\parite|level\(5)) # ((!\Start~q\) # (\parite|CRC_reg\(21))) ) ) # ( !\parite|CRC_reg\(22) & ( (\parite|level\(5) & (\Start~q\ & \parite|CRC_reg\(21))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111101111111011111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(5),
	datab => \ALT_INV_Start~q\,
	datac => \parite|ALT_INV_CRC_reg\(21),
	dataf => \parite|ALT_INV_CRC_reg\(22),
	combout => \parite|CRC_reg~75_combout\);

-- Location: FF_X47_Y19_N32
\parite|CRC_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|CRC_reg~74_combout\,
	asdata => \parite|CRC_reg~75_combout\,
	clrn => \SynRst~q\,
	sclr => \machineEtat|Selector2~0_combout\,
	sload => \parite|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|CRC_reg\(22));

-- Location: LABCELL_X47_Y20_N57
\parite|CRC_reg~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~72_combout\ = ( \parite|CRC_reg\(23) & ( ((!\parite|level\(5)) # (!\Start~q\)) # (\parite|CRC_reg\(22)) ) ) # ( !\parite|CRC_reg\(23) & ( (\parite|CRC_reg\(22) & (\parite|level\(5) & \Start~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111111101111111011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_CRC_reg\(22),
	datab => \parite|ALT_INV_level\(5),
	datac => \ALT_INV_Start~q\,
	dataf => \parite|ALT_INV_CRC_reg\(23),
	combout => \parite|CRC_reg~72_combout\);

-- Location: FF_X47_Y20_N26
\parite|CRC_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|CRC_reg~71_combout\,
	asdata => \parite|CRC_reg~72_combout\,
	clrn => \SynRst~q\,
	sclr => \machineEtat|Selector2~0_combout\,
	sload => \parite|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|CRC_reg\(23));

-- Location: LABCELL_X47_Y20_N18
\parite|CRC_reg~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~65_combout\ = ( \parite|CRC_reg\(24) & ( (!\parite|level\(5)) # ((!\Start~q\) # (\parite|CRC_reg\(23))) ) ) # ( !\parite|CRC_reg\(24) & ( (\parite|level\(5) & (\parite|CRC_reg\(23) & \Start~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001111111111110011111111111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_level\(5),
	datac => \parite|ALT_INV_CRC_reg\(23),
	datad => \ALT_INV_Start~q\,
	dataf => \parite|ALT_INV_CRC_reg\(24),
	combout => \parite|CRC_reg~65_combout\);

-- Location: FF_X47_Y20_N50
\parite|CRC_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|CRC_reg~64_combout\,
	asdata => \parite|CRC_reg~65_combout\,
	clrn => \SynRst~q\,
	sclr => \machineEtat|Selector2~0_combout\,
	sload => \parite|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|CRC_reg\(24));

-- Location: LABCELL_X47_Y20_N9
\parite|CRC_reg~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~58_combout\ = ( \parite|level\(5) & ( (!\Start~q\ & ((\parite|CRC_reg\(25)))) # (\Start~q\ & (\parite|CRC_reg\(24))) ) ) # ( !\parite|level\(5) & ( \parite|CRC_reg\(25) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_CRC_reg\(24),
	datab => \parite|ALT_INV_CRC_reg\(25),
	datac => \ALT_INV_Start~q\,
	dataf => \parite|ALT_INV_level\(5),
	combout => \parite|CRC_reg~58_combout\);

-- Location: FF_X47_Y20_N44
\parite|CRC_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|CRC_reg~57_combout\,
	asdata => \parite|CRC_reg~58_combout\,
	clrn => \SynRst~q\,
	sclr => \machineEtat|Selector2~0_combout\,
	sload => \parite|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|CRC_reg\(25));

-- Location: LABCELL_X47_Y20_N6
\parite|CRC_reg~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~54_combout\ = ( \parite|level\(5) & ( (!\Start~q\ & ((\parite|CRC_reg\(26)))) # (\Start~q\ & (\parite|CRC_reg\(25))) ) ) # ( !\parite|level\(5) & ( \parite|CRC_reg\(26) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_CRC_reg\(25),
	datac => \parite|ALT_INV_CRC_reg\(26),
	datad => \ALT_INV_Start~q\,
	dataf => \parite|ALT_INV_level\(5),
	combout => \parite|CRC_reg~54_combout\);

-- Location: FF_X47_Y20_N38
\parite|CRC_reg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|CRC_reg~164_combout\,
	asdata => \parite|CRC_reg~54_combout\,
	clrn => \SynRst~q\,
	sclr => \machineEtat|Selector2~0_combout\,
	sload => \parite|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|CRC_reg\(26));

-- Location: LABCELL_X47_Y20_N3
\parite|CRC_reg~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~49_combout\ = ( \parite|CRC_reg\(27) & ( (!\parite|level\(5)) # ((!\Start~q\) # (\parite|CRC_reg\(26))) ) ) # ( !\parite|CRC_reg\(27) & ( (\parite|level\(5) & (\Start~q\ & \parite|CRC_reg\(26))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001111111100111111111111110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_level\(5),
	datac => \ALT_INV_Start~q\,
	datad => \parite|ALT_INV_CRC_reg\(26),
	dataf => \parite|ALT_INV_CRC_reg\(27),
	combout => \parite|CRC_reg~49_combout\);

-- Location: FF_X47_Y20_N32
\parite|CRC_reg[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|CRC_reg~48_combout\,
	asdata => \parite|CRC_reg~49_combout\,
	clrn => \SynRst~q\,
	sclr => \machineEtat|Selector2~0_combout\,
	sload => \parite|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|CRC_reg\(27));

-- Location: LABCELL_X52_Y19_N57
\parite|CRC_reg~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~47_combout\ = ( \parite|CRC_reg\(28) & ( (!\Start~q\) # ((!\parite|level\(5)) # (\parite|CRC_reg\(27))) ) ) # ( !\parite|CRC_reg\(28) & ( (\Start~q\ & (\parite|CRC_reg\(27) & \parite|level\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010111111111101011111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Start~q\,
	datac => \parite|ALT_INV_CRC_reg\(27),
	datad => \parite|ALT_INV_level\(5),
	dataf => \parite|ALT_INV_CRC_reg\(28),
	combout => \parite|CRC_reg~47_combout\);

-- Location: FF_X52_Y19_N32
\parite|CRC_reg[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|CRC_reg~168_combout\,
	asdata => \parite|CRC_reg~47_combout\,
	clrn => \SynRst~q\,
	sclr => \machineEtat|Selector2~0_combout\,
	sload => \parite|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|CRC_reg\(28));

-- Location: LABCELL_X48_Y18_N42
\parite|CRC_reg~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~34_combout\ = ( \parite|CRC_reg\(29) & ( (!\parite|level\(5)) # ((!\Start~q\) # (\parite|CRC_reg\(28))) ) ) # ( !\parite|CRC_reg\(29) & ( (\parite|level\(5) & (\Start~q\ & \parite|CRC_reg\(28))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001111111100111111111111110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_level\(5),
	datac => \ALT_INV_Start~q\,
	datad => \parite|ALT_INV_CRC_reg\(28),
	dataf => \parite|ALT_INV_CRC_reg\(29),
	combout => \parite|CRC_reg~34_combout\);

-- Location: FF_X48_Y18_N14
\parite|CRC_reg[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|CRC_reg~33_combout\,
	asdata => \parite|CRC_reg~34_combout\,
	clrn => \SynRst~q\,
	sclr => \machineEtat|Selector2~0_combout\,
	sload => \parite|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|CRC_reg\(29));

-- Location: LABCELL_X48_Y18_N6
\parite|CRC_reg~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~24_combout\ = ( \parite|CRC_reg\(29) & ( ((\parite|level\(5) & \Start~q\)) # (\parite|CRC_reg\(30)) ) ) # ( !\parite|CRC_reg\(29) & ( (\parite|CRC_reg\(30) & ((!\parite|level\(5)) # (!\Start~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111100000000001111110000000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_level\(5),
	datac => \ALT_INV_Start~q\,
	datad => \parite|ALT_INV_CRC_reg\(30),
	dataf => \parite|ALT_INV_CRC_reg\(29),
	combout => \parite|CRC_reg~24_combout\);

-- Location: FF_X48_Y18_N38
\parite|CRC_reg[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|CRC_reg~23_combout\,
	asdata => \parite|CRC_reg~24_combout\,
	clrn => \SynRst~q\,
	sclr => \machineEtat|Selector2~0_combout\,
	sload => \parite|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|CRC_reg\(30));

-- Location: LABCELL_X48_Y18_N57
\parite|CRC_reg~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~9_combout\ = ( \parite|CRC_reg\(31) & ( (!\Start~q\) # ((!\parite|level\(5)) # (\parite|CRC_reg\(30))) ) ) # ( !\parite|CRC_reg\(31) & ( (\Start~q\ & (\parite|level\(5) & \parite|CRC_reg\(30))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010111111010111111111111101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Start~q\,
	datac => \parite|ALT_INV_level\(5),
	datad => \parite|ALT_INV_CRC_reg\(30),
	dataf => \parite|ALT_INV_CRC_reg\(31),
	combout => \parite|CRC_reg~9_combout\);

-- Location: FF_X48_Y18_N32
\parite|CRC_reg[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|CRC_reg~8_combout\,
	asdata => \parite|CRC_reg~9_combout\,
	clrn => \SynRst~q\,
	sclr => \machineEtat|Selector2~0_combout\,
	sload => \parite|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|CRC_reg\(31));

-- Location: LABCELL_X52_Y18_N30
\parite|CRC_reg~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~2_combout\ = ( \parite|CRC_reg\(39) & ( \parite|level\(3) & ( (!\parite|Decoder1~0_combout\ & (((!\parite|Decoder0~1_combout\) # (\D_in[7]~input_o\)))) # (\parite|Decoder1~0_combout\ & (!\parite|Decoder1~1_combout\ & 
-- ((!\parite|Decoder0~1_combout\) # (\D_in[7]~input_o\)))) ) ) ) # ( !\parite|CRC_reg\(39) & ( \parite|level\(3) & ( (\D_in[7]~input_o\ & (\parite|Decoder0~1_combout\ & ((!\parite|Decoder1~0_combout\) # (!\parite|Decoder1~1_combout\)))) ) ) ) # ( 
-- \parite|CRC_reg\(39) & ( !\parite|level\(3) & ( (!\parite|Decoder0~1_combout\) # (\D_in[7]~input_o\) ) ) ) # ( !\parite|CRC_reg\(39) & ( !\parite|level\(3) & ( (\D_in[7]~input_o\ & \parite|Decoder0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111100000000000011101110111000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Decoder1~0_combout\,
	datab => \parite|ALT_INV_Decoder1~1_combout\,
	datac => \ALT_INV_D_in[7]~input_o\,
	datad => \parite|ALT_INV_Decoder0~1_combout\,
	datae => \parite|ALT_INV_CRC_reg\(39),
	dataf => \parite|ALT_INV_level\(3),
	combout => \parite|CRC_reg~2_combout\);

-- Location: MLABCELL_X49_Y18_N36
\parite|CRC_reg~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~18_combout\ = ( \parite|level\(3) & ( (!\parite|level\(2) & (!\parite|level\(0) & (\parite|Decoder1~0_combout\ & !\parite|level\(1)))) ) ) # ( !\parite|level\(3) & ( (\parite|level\(2) & (\parite|level\(0) & (\parite|Decoder1~0_combout\ & 
-- \parite|level\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(2),
	datab => \parite|ALT_INV_level\(0),
	datac => \parite|ALT_INV_Decoder1~0_combout\,
	datad => \parite|ALT_INV_level\(1),
	dataf => \parite|ALT_INV_level\(3),
	combout => \parite|CRC_reg~18_combout\);

-- Location: MLABCELL_X49_Y18_N12
\parite|CRC_reg~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~19_combout\ = ( \parite|level\(5) & ( \parite|level\(3) & ( (\parite|level\(2) & (\parite|level\(1) & (\parite|level\(4) & \parite|level\(0)))) ) ) ) # ( !\parite|level\(5) & ( !\parite|level\(3) & ( (!\parite|level\(2) & 
-- (!\parite|level\(1) & (!\parite|level\(4) & !\parite|level\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(2),
	datab => \parite|ALT_INV_level\(1),
	datac => \parite|ALT_INV_level\(4),
	datad => \parite|ALT_INV_level\(0),
	datae => \parite|ALT_INV_level\(5),
	dataf => \parite|ALT_INV_level\(3),
	combout => \parite|CRC_reg~19_combout\);

-- Location: LABCELL_X50_Y18_N6
\parite|CRC_reg~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~20_combout\ = ( \parite|CRC_reg\(38) & ( \parite|Decoder0~1_combout\ & ( (!\parite|CRC_reg~18_combout\ & ((!\parite|CRC_reg~19_combout\) # (\D_in[6]~input_o\))) ) ) ) # ( !\parite|CRC_reg\(38) & ( \parite|Decoder0~1_combout\ & ( 
-- (!\parite|CRC_reg~18_combout\ & (\D_in[6]~input_o\ & \parite|CRC_reg~19_combout\)) ) ) ) # ( \parite|CRC_reg\(38) & ( !\parite|Decoder0~1_combout\ & ( (!\parite|CRC_reg~18_combout\ & ((!\parite|CRC_reg~19_combout\) # (\D_in[7]~input_o\))) ) ) ) # ( 
-- !\parite|CRC_reg\(38) & ( !\parite|Decoder0~1_combout\ & ( (!\parite|CRC_reg~18_combout\ & (\parite|CRC_reg~19_combout\ & \D_in[7]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010101000001010101000000010000000101010001010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_CRC_reg~18_combout\,
	datab => \ALT_INV_D_in[6]~input_o\,
	datac => \parite|ALT_INV_CRC_reg~19_combout\,
	datad => \ALT_INV_D_in[7]~input_o\,
	datae => \parite|ALT_INV_CRC_reg\(38),
	dataf => \parite|ALT_INV_Decoder0~1_combout\,
	combout => \parite|CRC_reg~20_combout\);

-- Location: MLABCELL_X49_Y18_N30
\parite|WideOr36~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr36~0_combout\ = ( \parite|level\(0) & ( (!\parite|level\(3) & (\parite|level\(1) & (\parite|level\(2) & \parite|Decoder1~0_combout\))) ) ) # ( !\parite|level\(0) & ( (\parite|Decoder1~0_combout\ & ((!\parite|level\(3) & (\parite|level\(1) & 
-- \parite|level\(2))) # (\parite|level\(3) & (!\parite|level\(1) & !\parite|level\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000010000000000100001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(3),
	datab => \parite|ALT_INV_level\(1),
	datac => \parite|ALT_INV_level\(2),
	datad => \parite|ALT_INV_Decoder1~0_combout\,
	dataf => \parite|ALT_INV_level\(0),
	combout => \parite|WideOr36~0_combout\);

-- Location: MLABCELL_X49_Y19_N57
\parite|WideOr35~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr35~1_combout\ = ( \parite|WideOr30~1_combout\ & ( (!\parite|level\(4) & (((!\parite|level\(5))))) # (\parite|level\(4) & (\parite|level\(1) & (\parite|WideOr35~0_combout\))) ) ) # ( !\parite|WideOr30~1_combout\ & ( (\parite|level\(1) & 
-- (\parite|WideOr35~0_combout\ & \parite|level\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111110001000000011111000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(1),
	datab => \parite|ALT_INV_WideOr35~0_combout\,
	datac => \parite|ALT_INV_level\(4),
	datad => \parite|ALT_INV_level\(5),
	dataf => \parite|ALT_INV_WideOr30~1_combout\,
	combout => \parite|WideOr35~1_combout\);

-- Location: LABCELL_X50_Y18_N15
\parite|CRC_reg~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~29_combout\ = ( \D_in[6]~input_o\ & ( (!\parite|Decoder0~7_combout\) # (\D_in[7]~input_o\) ) ) # ( !\D_in[6]~input_o\ & ( (\parite|Decoder0~7_combout\ & \D_in[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Decoder0~7_combout\,
	datac => \ALT_INV_D_in[7]~input_o\,
	dataf => \ALT_INV_D_in[6]~input_o\,
	combout => \parite|CRC_reg~29_combout\);

-- Location: LABCELL_X50_Y18_N48
\parite|CRC_reg~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~30_combout\ = ( \parite|CRC_reg\(37) & ( \parite|Decoder0~1_combout\ & ( (!\parite|WideOr36~0_combout\ & ((!\parite|WideOr35~1_combout\) # (\D_in[5]~input_o\))) ) ) ) # ( !\parite|CRC_reg\(37) & ( \parite|Decoder0~1_combout\ & ( 
-- (\D_in[5]~input_o\ & (!\parite|WideOr36~0_combout\ & \parite|WideOr35~1_combout\)) ) ) ) # ( \parite|CRC_reg\(37) & ( !\parite|Decoder0~1_combout\ & ( (!\parite|WideOr36~0_combout\ & ((!\parite|WideOr35~1_combout\) # (\parite|CRC_reg~29_combout\))) ) ) ) 
-- # ( !\parite|CRC_reg\(37) & ( !\parite|Decoder0~1_combout\ & ( (!\parite|WideOr36~0_combout\ & (\parite|WideOr35~1_combout\ & \parite|CRC_reg~29_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100110000001100110000000100000001001100010011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[5]~input_o\,
	datab => \parite|ALT_INV_WideOr36~0_combout\,
	datac => \parite|ALT_INV_WideOr35~1_combout\,
	datad => \parite|ALT_INV_CRC_reg~29_combout\,
	datae => \parite|ALT_INV_CRC_reg\(37),
	dataf => \parite|ALT_INV_Decoder0~1_combout\,
	combout => \parite|CRC_reg~30_combout\);

-- Location: LABCELL_X52_Y18_N48
\parite|CRC_reg~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~39_combout\ = ( \D_in[4]~input_o\ & ( \parite|Decoder0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \parite|ALT_INV_Decoder0~1_combout\,
	dataf => \ALT_INV_D_in[4]~input_o\,
	combout => \parite|CRC_reg~39_combout\);

-- Location: LABCELL_X50_Y18_N24
\parite|CRC_reg~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~40_combout\ = ( !\parite|Decoder0~7_combout\ & ( \D_in[6]~input_o\ & ( (!\D_in[5]~input_o\ & ((!\parite|Decoder0~6_combout\) # ((!\D_in[7]~input_o\)))) # (\D_in[5]~input_o\ & (!\parite|Decoder0~0_combout\ & ((!\parite|Decoder0~6_combout\) 
-- # (!\D_in[7]~input_o\)))) ) ) ) # ( \parite|Decoder0~7_combout\ & ( !\D_in[6]~input_o\ & ( (!\D_in[5]~input_o\ & ((!\parite|Decoder0~6_combout\) # ((!\D_in[7]~input_o\)))) # (\D_in[5]~input_o\ & (!\parite|Decoder0~0_combout\ & 
-- ((!\parite|Decoder0~6_combout\) # (!\D_in[7]~input_o\)))) ) ) ) # ( !\parite|Decoder0~7_combout\ & ( !\D_in[6]~input_o\ & ( (!\D_in[5]~input_o\ & ((!\parite|Decoder0~6_combout\) # ((!\D_in[7]~input_o\)))) # (\D_in[5]~input_o\ & 
-- (!\parite|Decoder0~0_combout\ & ((!\parite|Decoder0~6_combout\) # (!\D_in[7]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011001000111110101100100011111010110010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[5]~input_o\,
	datab => \parite|ALT_INV_Decoder0~6_combout\,
	datac => \parite|ALT_INV_Decoder0~0_combout\,
	datad => \ALT_INV_D_in[7]~input_o\,
	datae => \parite|ALT_INV_Decoder0~7_combout\,
	dataf => \ALT_INV_D_in[6]~input_o\,
	combout => \parite|CRC_reg~40_combout\);

-- Location: LABCELL_X52_Y18_N24
\parite|WideOr34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr34~0_combout\ = ( \parite|level\(3) & ( \parite|level\(2) & ( (\parite|level\(5) & (\parite|level\(4) & ((\parite|level\(1)) # (\parite|level\(0))))) ) ) ) # ( !\parite|level\(3) & ( !\parite|level\(2) & ( (!\parite|level\(0) & 
-- (!\parite|level\(1) & (!\parite|level\(5) & !\parite|level\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(0),
	datab => \parite|ALT_INV_level\(1),
	datac => \parite|ALT_INV_level\(5),
	datad => \parite|ALT_INV_level\(4),
	datae => \parite|ALT_INV_level\(3),
	dataf => \parite|ALT_INV_level\(2),
	combout => \parite|WideOr34~0_combout\);

-- Location: LABCELL_X52_Y18_N18
\parite|WideOr37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr37~0_combout\ = ( \parite|level\(3) & ( (!\parite|level\(2) & (!\parite|level\(0) & !\parite|level\(1))) ) ) # ( !\parite|level\(3) & ( (\parite|level\(2) & ((\parite|level\(1)) # (\parite|level\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001111000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_level\(2),
	datac => \parite|ALT_INV_level\(0),
	datad => \parite|ALT_INV_level\(1),
	dataf => \parite|ALT_INV_level\(3),
	combout => \parite|WideOr37~0_combout\);

-- Location: LABCELL_X52_Y18_N12
\parite|CRC_reg~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~41_combout\ = ( \parite|CRC_reg\(36) & ( \parite|WideOr37~0_combout\ & ( (!\parite|Decoder1~0_combout\ & (((!\parite|CRC_reg~40_combout\) # (!\parite|WideOr34~0_combout\)) # (\parite|CRC_reg~39_combout\))) ) ) ) # ( !\parite|CRC_reg\(36) & 
-- ( \parite|WideOr37~0_combout\ & ( (\parite|WideOr34~0_combout\ & (!\parite|Decoder1~0_combout\ & ((!\parite|CRC_reg~40_combout\) # (\parite|CRC_reg~39_combout\)))) ) ) ) # ( \parite|CRC_reg\(36) & ( !\parite|WideOr37~0_combout\ & ( 
-- ((!\parite|CRC_reg~40_combout\) # (!\parite|WideOr34~0_combout\)) # (\parite|CRC_reg~39_combout\) ) ) ) # ( !\parite|CRC_reg\(36) & ( !\parite|WideOr37~0_combout\ & ( (\parite|WideOr34~0_combout\ & ((!\parite|CRC_reg~40_combout\) # 
-- (\parite|CRC_reg~39_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101111111011111110100001101000000001111110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_CRC_reg~39_combout\,
	datab => \parite|ALT_INV_CRC_reg~40_combout\,
	datac => \parite|ALT_INV_WideOr34~0_combout\,
	datad => \parite|ALT_INV_Decoder1~0_combout\,
	datae => \parite|ALT_INV_CRC_reg\(36),
	dataf => \parite|ALT_INV_WideOr37~0_combout\,
	combout => \parite|CRC_reg~41_combout\);

-- Location: LABCELL_X52_Y18_N36
\parite|CRC_reg~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~36_combout\ = ( \D_in[3]~input_o\ & ( ((\D_in[4]~input_o\ & \parite|Decoder0~0_combout\)) # (\parite|Decoder0~1_combout\) ) ) # ( !\D_in[3]~input_o\ & ( (\D_in[4]~input_o\ & \parite|Decoder0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D_in[4]~input_o\,
	datac => \parite|ALT_INV_Decoder0~1_combout\,
	datad => \parite|ALT_INV_Decoder0~0_combout\,
	dataf => \ALT_INV_D_in[3]~input_o\,
	combout => \parite|CRC_reg~36_combout\);

-- Location: LABCELL_X50_Y18_N18
\parite|CRC_reg~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~35_combout\ = ( \parite|Decoder0~7_combout\ & ( \D_in[6]~input_o\ & ( (!\D_in[5]~input_o\ & (!\parite|Decoder0~6_combout\ & ((!\parite|Decoder0~5_combout\) # (!\D_in[7]~input_o\)))) ) ) ) # ( !\parite|Decoder0~7_combout\ & ( 
-- \D_in[6]~input_o\ & ( (!\parite|Decoder0~6_combout\ & ((!\parite|Decoder0~5_combout\) # (!\D_in[7]~input_o\))) ) ) ) # ( \parite|Decoder0~7_combout\ & ( !\D_in[6]~input_o\ & ( (!\D_in[5]~input_o\ & ((!\parite|Decoder0~5_combout\) # (!\D_in[7]~input_o\))) 
-- ) ) ) # ( !\parite|Decoder0~7_combout\ & ( !\D_in[6]~input_o\ & ( (!\parite|Decoder0~5_combout\) # (!\D_in[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111000001110000011101110000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Decoder0~5_combout\,
	datab => \ALT_INV_D_in[7]~input_o\,
	datac => \ALT_INV_D_in[5]~input_o\,
	datad => \parite|ALT_INV_Decoder0~6_combout\,
	datae => \parite|ALT_INV_Decoder0~7_combout\,
	dataf => \ALT_INV_D_in[6]~input_o\,
	combout => \parite|CRC_reg~35_combout\);

-- Location: LABCELL_X52_Y18_N21
\parite|WideOr33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr33~0_combout\ = ( \parite|level\(3) & ( (\parite|level\(2) & ((!\parite|level\(5) & (\parite|Decoder1~1_combout\ & !\parite|level\(4))) # (\parite|level\(5) & ((\parite|level\(4)))))) ) ) # ( !\parite|level\(3) & ( (!\parite|level\(5) & 
-- (!\parite|level\(2) & (\parite|Decoder1~1_combout\ & !\parite|level\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000010000100010000001000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(5),
	datab => \parite|ALT_INV_level\(2),
	datac => \parite|ALT_INV_Decoder1~1_combout\,
	datad => \parite|ALT_INV_level\(4),
	dataf => \parite|ALT_INV_level\(3),
	combout => \parite|WideOr33~0_combout\);

-- Location: LABCELL_X52_Y18_N42
\parite|WideOr38~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr38~0_combout\ = ( \parite|level\(2) & ( !\parite|level\(3) ) ) # ( !\parite|level\(2) & ( (!\parite|level\(1) & (!\parite|level\(0) & \parite|level\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_level\(1),
	datac => \parite|ALT_INV_level\(0),
	datad => \parite|ALT_INV_level\(3),
	dataf => \parite|ALT_INV_level\(2),
	combout => \parite|WideOr38~0_combout\);

-- Location: LABCELL_X52_Y18_N6
\parite|CRC_reg~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~37_combout\ = ( \parite|CRC_reg\(35) & ( \parite|WideOr38~0_combout\ & ( (!\parite|Decoder1~0_combout\ & (((!\parite|CRC_reg~35_combout\) # (!\parite|WideOr33~0_combout\)) # (\parite|CRC_reg~36_combout\))) ) ) ) # ( !\parite|CRC_reg\(35) & 
-- ( \parite|WideOr38~0_combout\ & ( (\parite|WideOr33~0_combout\ & (!\parite|Decoder1~0_combout\ & ((!\parite|CRC_reg~35_combout\) # (\parite|CRC_reg~36_combout\)))) ) ) ) # ( \parite|CRC_reg\(35) & ( !\parite|WideOr38~0_combout\ & ( 
-- ((!\parite|CRC_reg~35_combout\) # (!\parite|WideOr33~0_combout\)) # (\parite|CRC_reg~36_combout\) ) ) ) # ( !\parite|CRC_reg\(35) & ( !\parite|WideOr38~0_combout\ & ( (\parite|WideOr33~0_combout\ & ((!\parite|CRC_reg~35_combout\) # 
-- (\parite|CRC_reg~36_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101111111011111110100001101000000001111110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_CRC_reg~36_combout\,
	datab => \parite|ALT_INV_CRC_reg~35_combout\,
	datac => \parite|ALT_INV_WideOr33~0_combout\,
	datad => \parite|ALT_INV_Decoder1~0_combout\,
	datae => \parite|ALT_INV_CRC_reg\(35),
	dataf => \parite|ALT_INV_WideOr38~0_combout\,
	combout => \parite|CRC_reg~37_combout\);

-- Location: MLABCELL_X49_Y18_N18
\parite|WideOr32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr32~0_combout\ = ( \parite|level\(5) & ( \parite|level\(3) & ( (\parite|level\(4) & (((\parite|level\(1) & \parite|level\(0))) # (\parite|level\(2)))) ) ) ) # ( !\parite|level\(5) & ( !\parite|level\(3) & ( (!\parite|level\(2) & 
-- (!\parite|level\(1) & (!\parite|level\(4) & !\parite|level\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000010100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(2),
	datab => \parite|ALT_INV_level\(1),
	datac => \parite|ALT_INV_level\(4),
	datad => \parite|ALT_INV_level\(0),
	datae => \parite|ALT_INV_level\(5),
	dataf => \parite|ALT_INV_level\(3),
	combout => \parite|WideOr32~0_combout\);

-- Location: LABCELL_X50_Y18_N36
\parite|CRC_reg~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~25_combout\ = ( \parite|Decoder0~6_combout\ & ( \D_in[6]~input_o\ & ( (!\D_in[5]~input_o\ & (!\parite|Decoder0~5_combout\ & ((!\parite|Decoder0~4_combout\) # (!\D_in[7]~input_o\)))) ) ) ) # ( !\parite|Decoder0~6_combout\ & ( 
-- \D_in[6]~input_o\ & ( (!\parite|Decoder0~5_combout\ & ((!\parite|Decoder0~4_combout\) # (!\D_in[7]~input_o\))) ) ) ) # ( \parite|Decoder0~6_combout\ & ( !\D_in[6]~input_o\ & ( (!\D_in[5]~input_o\ & ((!\parite|Decoder0~4_combout\) # (!\D_in[7]~input_o\))) 
-- ) ) ) # ( !\parite|Decoder0~6_combout\ & ( !\D_in[6]~input_o\ & ( (!\parite|Decoder0~4_combout\) # (!\D_in[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000101010101010000011001100110000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[5]~input_o\,
	datab => \parite|ALT_INV_Decoder0~5_combout\,
	datac => \parite|ALT_INV_Decoder0~4_combout\,
	datad => \ALT_INV_D_in[7]~input_o\,
	datae => \parite|ALT_INV_Decoder0~6_combout\,
	dataf => \ALT_INV_D_in[6]~input_o\,
	combout => \parite|CRC_reg~25_combout\);

-- Location: MLABCELL_X49_Y18_N39
\parite|WideOr39~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|WideOr39~0_combout\ = ( \parite|level\(3) & ( (!\parite|level\(2) & (!\parite|level\(0) & !\parite|level\(1))) ) ) # ( !\parite|level\(3) & ( ((\parite|level\(0) & \parite|level\(1))) # (\parite|level\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101010111010101110101011110000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_level\(2),
	datab => \parite|ALT_INV_level\(0),
	datac => \parite|ALT_INV_level\(1),
	dataf => \parite|ALT_INV_level\(3),
	combout => \parite|WideOr39~0_combout\);

-- Location: LABCELL_X53_Y18_N24
\parite|CRC_reg~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~26_combout\ = ( !\parite|Decoder0~0_combout\ & ( \D_in[3]~input_o\ & ( (!\D_in[2]~input_o\ & ((!\parite|Decoder0~7_combout\) # ((!\D_in[4]~input_o\)))) # (\D_in[2]~input_o\ & (!\parite|Decoder0~1_combout\ & ((!\parite|Decoder0~7_combout\) 
-- # (!\D_in[4]~input_o\)))) ) ) ) # ( \parite|Decoder0~0_combout\ & ( !\D_in[3]~input_o\ & ( (!\D_in[2]~input_o\ & ((!\parite|Decoder0~7_combout\) # ((!\D_in[4]~input_o\)))) # (\D_in[2]~input_o\ & (!\parite|Decoder0~1_combout\ & 
-- ((!\parite|Decoder0~7_combout\) # (!\D_in[4]~input_o\)))) ) ) ) # ( !\parite|Decoder0~0_combout\ & ( !\D_in[3]~input_o\ & ( (!\D_in[2]~input_o\ & ((!\parite|Decoder0~7_combout\) # ((!\D_in[4]~input_o\)))) # (\D_in[2]~input_o\ & 
-- (!\parite|Decoder0~1_combout\ & ((!\parite|Decoder0~7_combout\) # (!\D_in[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011001000111110101100100011111010110010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[2]~input_o\,
	datab => \parite|ALT_INV_Decoder0~7_combout\,
	datac => \parite|ALT_INV_Decoder0~1_combout\,
	datad => \ALT_INV_D_in[4]~input_o\,
	datae => \parite|ALT_INV_Decoder0~0_combout\,
	dataf => \ALT_INV_D_in[3]~input_o\,
	combout => \parite|CRC_reg~26_combout\);

-- Location: LABCELL_X50_Y18_N42
\parite|CRC_reg~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~27_combout\ = ( \parite|CRC_reg\(34) & ( \parite|CRC_reg~26_combout\ & ( (!\parite|Decoder1~0_combout\ & ((!\parite|WideOr32~0_combout\) # ((!\parite|CRC_reg~25_combout\)))) # (\parite|Decoder1~0_combout\ & (!\parite|WideOr39~0_combout\ & 
-- ((!\parite|WideOr32~0_combout\) # (!\parite|CRC_reg~25_combout\)))) ) ) ) # ( !\parite|CRC_reg\(34) & ( \parite|CRC_reg~26_combout\ & ( (\parite|WideOr32~0_combout\ & (!\parite|CRC_reg~25_combout\ & ((!\parite|Decoder1~0_combout\) # 
-- (!\parite|WideOr39~0_combout\)))) ) ) ) # ( \parite|CRC_reg\(34) & ( !\parite|CRC_reg~26_combout\ & ( (!\parite|Decoder1~0_combout\) # (!\parite|WideOr39~0_combout\) ) ) ) # ( !\parite|CRC_reg\(34) & ( !\parite|CRC_reg~26_combout\ & ( 
-- (\parite|WideOr32~0_combout\ & ((!\parite|Decoder1~0_combout\) # (!\parite|WideOr39~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100010111111111010101000110000001000001111110010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \parite|ALT_INV_Decoder1~0_combout\,
	datab => \parite|ALT_INV_WideOr32~0_combout\,
	datac => \parite|ALT_INV_CRC_reg~25_combout\,
	datad => \parite|ALT_INV_WideOr39~0_combout\,
	datae => \parite|ALT_INV_CRC_reg\(34),
	dataf => \parite|ALT_INV_CRC_reg~26_combout\,
	combout => \parite|CRC_reg~27_combout\);

-- Location: LABCELL_X50_Y18_N30
\parite|CRC_reg~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~28_combout\ = ( \parite|CRC_reg\(34) & ( (!\Start~q\) # ((!\parite|level\(5)) # (\parite|CRC_reg\(33))) ) ) # ( !\parite|CRC_reg\(34) & ( (\Start~q\ & (\parite|level\(5) & \parite|CRC_reg\(33))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000111101110111111111110111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Start~q\,
	datab => \parite|ALT_INV_level\(5),
	datad => \parite|ALT_INV_CRC_reg\(33),
	dataf => \parite|ALT_INV_CRC_reg\(34),
	combout => \parite|CRC_reg~28_combout\);

-- Location: FF_X50_Y18_N44
\parite|CRC_reg[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|CRC_reg~27_combout\,
	asdata => \parite|CRC_reg~28_combout\,
	clrn => \SynRst~q\,
	sclr => \machineEtat|Selector2~0_combout\,
	sload => \parite|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|CRC_reg\(34));

-- Location: LABCELL_X52_Y18_N45
\parite|CRC_reg~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~38_combout\ = ( \parite|CRC_reg\(35) & ( (!\Start~q\) # ((!\parite|level\(5)) # (\parite|CRC_reg\(34))) ) ) # ( !\parite|CRC_reg\(35) & ( (\Start~q\ & (\parite|CRC_reg\(34) & \parite|level\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010111111111101011111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Start~q\,
	datac => \parite|ALT_INV_CRC_reg\(34),
	datad => \parite|ALT_INV_level\(5),
	dataf => \parite|ALT_INV_CRC_reg\(35),
	combout => \parite|CRC_reg~38_combout\);

-- Location: FF_X52_Y18_N8
\parite|CRC_reg[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|CRC_reg~37_combout\,
	asdata => \parite|CRC_reg~38_combout\,
	clrn => \SynRst~q\,
	sclr => \machineEtat|Selector2~0_combout\,
	sload => \parite|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|CRC_reg\(35));

-- Location: LABCELL_X52_Y18_N54
\parite|CRC_reg~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~42_combout\ = ( \parite|CRC_reg\(35) & ( ((\Start~q\ & \parite|level\(5))) # (\parite|CRC_reg\(36)) ) ) # ( !\parite|CRC_reg\(35) & ( (\parite|CRC_reg\(36) & ((!\Start~q\) # (!\parite|level\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110000001100110011000000110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_CRC_reg\(36),
	datac => \ALT_INV_Start~q\,
	datad => \parite|ALT_INV_level\(5),
	dataf => \parite|ALT_INV_CRC_reg\(35),
	combout => \parite|CRC_reg~42_combout\);

-- Location: FF_X52_Y18_N14
\parite|CRC_reg[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|CRC_reg~41_combout\,
	asdata => \parite|CRC_reg~42_combout\,
	clrn => \SynRst~q\,
	sclr => \machineEtat|Selector2~0_combout\,
	sload => \parite|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|CRC_reg\(36));

-- Location: LABCELL_X50_Y18_N12
\parite|CRC_reg~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~31_combout\ = ( \parite|CRC_reg\(37) & ( ((!\parite|level\(5)) # (!\Start~q\)) # (\parite|CRC_reg\(36)) ) ) # ( !\parite|CRC_reg\(37) & ( (\parite|CRC_reg\(36) & (\parite|level\(5) & \Start~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001111111111111100111111111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_CRC_reg\(36),
	datac => \parite|ALT_INV_level\(5),
	datad => \ALT_INV_Start~q\,
	dataf => \parite|ALT_INV_CRC_reg\(37),
	combout => \parite|CRC_reg~31_combout\);

-- Location: FF_X50_Y18_N50
\parite|CRC_reg[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|CRC_reg~30_combout\,
	asdata => \parite|CRC_reg~31_combout\,
	clrn => \SynRst~q\,
	sclr => \machineEtat|Selector2~0_combout\,
	sload => \parite|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|CRC_reg\(37));

-- Location: LABCELL_X50_Y18_N33
\parite|CRC_reg~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~21_combout\ = ( \parite|CRC_reg\(37) & ( ((\Start~q\ & \parite|level\(5))) # (\parite|CRC_reg\(38)) ) ) # ( !\parite|CRC_reg\(37) & ( (\parite|CRC_reg\(38) & ((!\Start~q\) # (!\parite|level\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011100000111000011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Start~q\,
	datab => \parite|ALT_INV_level\(5),
	datac => \parite|ALT_INV_CRC_reg\(38),
	dataf => \parite|ALT_INV_CRC_reg\(37),
	combout => \parite|CRC_reg~21_combout\);

-- Location: FF_X50_Y18_N8
\parite|CRC_reg[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|CRC_reg~20_combout\,
	asdata => \parite|CRC_reg~21_combout\,
	clrn => \SynRst~q\,
	sclr => \machineEtat|Selector2~0_combout\,
	sload => \parite|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|CRC_reg\(38));

-- Location: LABCELL_X52_Y18_N39
\parite|CRC_reg~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~3_combout\ = ( \parite|CRC_reg\(39) & ( (!\Start~q\) # ((!\parite|level\(5)) # (\parite|CRC_reg\(38))) ) ) # ( !\parite|CRC_reg\(39) & ( (\Start~q\ & (\parite|CRC_reg\(38) & \parite|level\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010111111111101011111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Start~q\,
	datac => \parite|ALT_INV_CRC_reg\(38),
	datad => \parite|ALT_INV_level\(5),
	dataf => \parite|ALT_INV_CRC_reg\(39),
	combout => \parite|CRC_reg~3_combout\);

-- Location: FF_X52_Y18_N32
\parite|CRC_reg[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|CRC_reg~2_combout\,
	asdata => \parite|CRC_reg~3_combout\,
	clrn => \SynRst~q\,
	sclr => \machineEtat|Selector2~0_combout\,
	sload => \parite|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|CRC_reg\(39));

-- Location: LABCELL_X48_Y18_N21
\parite|CRC_reg~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~1_combout\ = ( \parite|CRC_reg\(39) & ( (!\Start~q\ & (((\parite|CRC_reg\(32))))) # (\Start~q\ & ((!\parite|level\(5) & ((\parite|CRC_reg\(32)))) # (\parite|level\(5) & (!\parite|CRC_reg\(31))))) ) ) # ( !\parite|CRC_reg\(39) & ( 
-- (!\Start~q\ & (((\parite|CRC_reg\(32))))) # (\Start~q\ & ((!\parite|level\(5) & ((\parite|CRC_reg\(32)))) # (\parite|level\(5) & (\parite|CRC_reg\(31))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100010000111111100001000011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Start~q\,
	datab => \parite|ALT_INV_level\(5),
	datac => \parite|ALT_INV_CRC_reg\(31),
	datad => \parite|ALT_INV_CRC_reg\(32),
	dataf => \parite|ALT_INV_CRC_reg\(39),
	combout => \parite|CRC_reg~1_combout\);

-- Location: FF_X50_Y18_N2
\parite|CRC_reg[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|CRC_reg~0_combout\,
	asdata => \parite|CRC_reg~1_combout\,
	clrn => \SynRst~q\,
	sclr => \machineEtat|Selector2~0_combout\,
	sload => \parite|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|CRC_reg\(32));

-- Location: LABCELL_X53_Y18_N39
\parite|CRC_reg~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \parite|CRC_reg~17_combout\ = ( \parite|level\(5) & ( (!\Start~q\ & (\parite|CRC_reg\(33))) # (\Start~q\ & ((\parite|CRC_reg\(32)))) ) ) # ( !\parite|level\(5) & ( \parite|CRC_reg\(33) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \parite|ALT_INV_CRC_reg\(33),
	datac => \ALT_INV_Start~q\,
	datad => \parite|ALT_INV_CRC_reg\(32),
	dataf => \parite|ALT_INV_level\(5),
	combout => \parite|CRC_reg~17_combout\);

-- Location: FF_X53_Y18_N32
\parite|CRC_reg[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \parite|CRC_reg~16_combout\,
	asdata => \parite|CRC_reg~17_combout\,
	clrn => \SynRst~q\,
	sclr => \machineEtat|Selector2~0_combout\,
	sload => \parite|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parite|CRC_reg\(33));

-- Location: LABCELL_X52_Y21_N24
\fifo|Fifo[3][0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \fifo|Fifo[3][0]~6_combout\ = ( !\fifo|adrFifo\(0) & ( \rdFIFO~q\ & ( (!\fifo|adrFifo\(1) & (\wrFIFO~combout\ & \machineEtat|State_cr.s_Init~q\)) ) ) ) # ( \fifo|adrFifo\(0) & ( !\rdFIFO~q\ & ( (!\fifo|adrFifo\(2) & (\fifo|adrFifo\(1) & (\wrFIFO~combout\ 
-- & \machineEtat|State_cr.s_Init~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fifo|ALT_INV_adrFifo\(2),
	datab => \fifo|ALT_INV_adrFifo\(1),
	datac => \ALT_INV_wrFIFO~combout\,
	datad => \machineEtat|ALT_INV_State_cr.s_Init~q\,
	datae => \fifo|ALT_INV_adrFifo\(0),
	dataf => \ALT_INV_rdFIFO~q\,
	combout => \fifo|Fifo[3][0]~6_combout\);

-- Location: FF_X50_Y19_N52
\fifo|Fifo[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \D_in[1]~input_o\,
	sload => VCC,
	ena => \fifo|Fifo[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo|Fifo[3][1]~q\);

-- Location: LABCELL_X47_Y21_N0
\fifo|Fifo[2][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fifo|Fifo[2][1]~feeder_combout\ = ( \fifo|Fifo[3][1]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \fifo|ALT_INV_Fifo[3][1]~q\,
	combout => \fifo|Fifo[2][1]~feeder_combout\);

-- Location: LABCELL_X52_Y21_N18
\fifo|Fifo[2][3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \fifo|Fifo[2][3]~4_combout\ = ( \Addr[1]~input_o\ & ( \rdFIFO~q\ & ( (!\Addr[0]~input_o\ & (\fifo|adrFifo\(1) & (\fifo|adrFifo\(0) & \wr~input_o\))) ) ) ) # ( \Addr[1]~input_o\ & ( !\rdFIFO~q\ & ( (!\Addr[0]~input_o\ & \wr~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Addr[0]~input_o\,
	datab => \fifo|ALT_INV_adrFifo\(1),
	datac => \fifo|ALT_INV_adrFifo\(0),
	datad => \ALT_INV_wr~input_o\,
	datae => \ALT_INV_Addr[1]~input_o\,
	dataf => \ALT_INV_rdFIFO~q\,
	combout => \fifo|Fifo[2][3]~4_combout\);

-- Location: LABCELL_X52_Y21_N45
\fifo|Fifo[2][0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \fifo|Fifo[2][0]~5_combout\ = ( \fifo|adrFifo\(1) & ( \fifo|adrFifo\(0) & ( (\rdFIFO~q\ & \machineEtat|State_cr.s_Init~q\) ) ) ) # ( !\fifo|adrFifo\(1) & ( \fifo|adrFifo\(0) & ( (\rdFIFO~q\ & \machineEtat|State_cr.s_Init~q\) ) ) ) # ( \fifo|adrFifo\(1) & 
-- ( !\fifo|adrFifo\(0) & ( (\machineEtat|State_cr.s_Init~q\ & (((!\fifo|adrFifo\(2) & \wrFIFO~combout\)) # (\rdFIFO~q\))) ) ) ) # ( !\fifo|adrFifo\(1) & ( !\fifo|adrFifo\(0) & ( (\rdFIFO~q\ & (\machineEtat|State_cr.s_Init~q\ & ((\wrFIFO~combout\) # 
-- (\fifo|adrFifo\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000011000000110000101100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fifo|ALT_INV_adrFifo\(2),
	datab => \ALT_INV_rdFIFO~q\,
	datac => \machineEtat|ALT_INV_State_cr.s_Init~q\,
	datad => \ALT_INV_wrFIFO~combout\,
	datae => \fifo|ALT_INV_adrFifo\(1),
	dataf => \fifo|ALT_INV_adrFifo\(0),
	combout => \fifo|Fifo[2][0]~5_combout\);

-- Location: FF_X47_Y21_N1
\fifo|Fifo[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \fifo|Fifo[2][1]~feeder_combout\,
	asdata => \D_in[1]~input_o\,
	sload => \fifo|Fifo[2][3]~4_combout\,
	ena => \fifo|Fifo[2][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo|Fifo[2][1]~q\);

-- Location: LABCELL_X48_Y21_N3
\fifo|Fifo[1][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fifo|Fifo[1][1]~feeder_combout\ = \fifo|Fifo[2][1]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fifo|ALT_INV_Fifo[2][1]~q\,
	combout => \fifo|Fifo[1][1]~feeder_combout\);

-- Location: LABCELL_X52_Y21_N3
\fifo|Fifo[1][2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fifo|Fifo[1][2]~2_combout\ = ( \fifo|adrFifo\(1) & ( \fifo|adrFifo\(0) & ( (!\rdFIFO~q\ & (\wr~input_o\ & (\Addr[1]~input_o\ & !\Addr[0]~input_o\))) ) ) ) # ( !\fifo|adrFifo\(1) & ( \fifo|adrFifo\(0) & ( (!\rdFIFO~q\ & (\wr~input_o\ & (\Addr[1]~input_o\ 
-- & !\Addr[0]~input_o\))) ) ) ) # ( \fifo|adrFifo\(1) & ( !\fifo|adrFifo\(0) & ( (\wr~input_o\ & (\Addr[1]~input_o\ & !\Addr[0]~input_o\)) ) ) ) # ( !\fifo|adrFifo\(1) & ( !\fifo|adrFifo\(0) & ( (!\rdFIFO~q\ & (\wr~input_o\ & (\Addr[1]~input_o\ & 
-- !\Addr[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000110000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rdFIFO~q\,
	datab => \ALT_INV_wr~input_o\,
	datac => \ALT_INV_Addr[1]~input_o\,
	datad => \ALT_INV_Addr[0]~input_o\,
	datae => \fifo|ALT_INV_adrFifo\(1),
	dataf => \fifo|ALT_INV_adrFifo\(0),
	combout => \fifo|Fifo[1][2]~2_combout\);

-- Location: LABCELL_X52_Y21_N42
\fifo|Fifo[1][0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \fifo|Fifo[1][0]~3_combout\ = ( \fifo|adrFifo\(0) & ( \fifo|adrFifo\(1) & ( (\rdFIFO~q\ & \machineEtat|State_cr.s_Init~q\) ) ) ) # ( !\fifo|adrFifo\(0) & ( \fifo|adrFifo\(1) & ( (\rdFIFO~q\ & \machineEtat|State_cr.s_Init~q\) ) ) ) # ( \fifo|adrFifo\(0) & 
-- ( !\fifo|adrFifo\(1) & ( (\machineEtat|State_cr.s_Init~q\ & (((!\fifo|adrFifo\(2) & \wrFIFO~combout\)) # (\rdFIFO~q\))) ) ) ) # ( !\fifo|adrFifo\(0) & ( !\fifo|adrFifo\(1) & ( (\rdFIFO~q\ & (\machineEtat|State_cr.s_Init~q\ & ((\wrFIFO~combout\) # 
-- (\fifo|adrFifo\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000011101100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fifo|ALT_INV_adrFifo\(2),
	datab => \ALT_INV_rdFIFO~q\,
	datac => \ALT_INV_wrFIFO~combout\,
	datad => \machineEtat|ALT_INV_State_cr.s_Init~q\,
	datae => \fifo|ALT_INV_adrFifo\(0),
	dataf => \fifo|ALT_INV_adrFifo\(1),
	combout => \fifo|Fifo[1][0]~3_combout\);

-- Location: FF_X48_Y21_N4
\fifo|Fifo[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \fifo|Fifo[1][1]~feeder_combout\,
	asdata => \D_in[1]~input_o\,
	sload => \fifo|Fifo[1][2]~2_combout\,
	ena => \fifo|Fifo[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo|Fifo[1][1]~q\);

-- Location: MLABCELL_X49_Y21_N9
\fifo|Fifo[0][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fifo|Fifo[0][1]~feeder_combout\ = ( \fifo|Fifo[1][1]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \fifo|ALT_INV_Fifo[1][1]~q\,
	combout => \fifo|Fifo[0][1]~feeder_combout\);

-- Location: LABCELL_X52_Y21_N0
\fifo|Fifo[0][3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fifo|Fifo[0][3]~0_combout\ = ( \fifo|adrFifo\(0) & ( \fifo|adrFifo\(1) & ( (!\rdFIFO~q\ & (\wr~input_o\ & (!\Addr[0]~input_o\ & \Addr[1]~input_o\))) ) ) ) # ( !\fifo|adrFifo\(0) & ( \fifo|adrFifo\(1) & ( (!\rdFIFO~q\ & (\wr~input_o\ & (!\Addr[0]~input_o\ 
-- & \Addr[1]~input_o\))) ) ) ) # ( \fifo|adrFifo\(0) & ( !\fifo|adrFifo\(1) & ( (\wr~input_o\ & (!\Addr[0]~input_o\ & \Addr[1]~input_o\)) ) ) ) # ( !\fifo|adrFifo\(0) & ( !\fifo|adrFifo\(1) & ( (!\rdFIFO~q\ & (\wr~input_o\ & (!\Addr[0]~input_o\ & 
-- \Addr[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000011000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rdFIFO~q\,
	datab => \ALT_INV_wr~input_o\,
	datac => \ALT_INV_Addr[0]~input_o\,
	datad => \ALT_INV_Addr[1]~input_o\,
	datae => \fifo|ALT_INV_adrFifo\(0),
	dataf => \fifo|ALT_INV_adrFifo\(1),
	combout => \fifo|Fifo[0][3]~0_combout\);

-- Location: LABCELL_X52_Y21_N36
\fifo|Fifo[0][0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fifo|Fifo[0][0]~1_combout\ = ( \fifo|adrFifo\(0) & ( \rdFIFO~q\ & ( \machineEtat|State_cr.s_Init~q\ ) ) ) # ( !\fifo|adrFifo\(0) & ( \rdFIFO~q\ & ( (\machineEtat|State_cr.s_Init~q\ & (((\wrFIFO~combout\) # (\fifo|adrFifo\(1))) # (\fifo|adrFifo\(2)))) ) ) 
-- ) # ( !\fifo|adrFifo\(0) & ( !\rdFIFO~q\ & ( (!\fifo|adrFifo\(2) & (!\fifo|adrFifo\(1) & (\wrFIFO~combout\ & \machineEtat|State_cr.s_Init~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000011111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fifo|ALT_INV_adrFifo\(2),
	datab => \fifo|ALT_INV_adrFifo\(1),
	datac => \ALT_INV_wrFIFO~combout\,
	datad => \machineEtat|ALT_INV_State_cr.s_Init~q\,
	datae => \fifo|ALT_INV_adrFifo\(0),
	dataf => \ALT_INV_rdFIFO~q\,
	combout => \fifo|Fifo[0][0]~1_combout\);

-- Location: FF_X49_Y21_N10
\fifo|Fifo[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \fifo|Fifo[0][1]~feeder_combout\,
	asdata => \D_in[1]~input_o\,
	sload => \fifo|Fifo[0][3]~0_combout\,
	ena => \fifo|Fifo[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo|Fifo[0][1]~q\);

-- Location: LABCELL_X53_Y20_N51
\mux_out[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux_out[1]~1_combout\ = ( \parite|CRC_reg\(33) & ( \fifo|Fifo[0][1]~q\ ) ) # ( !\parite|CRC_reg\(33) & ( \fifo|Fifo[0][1]~q\ & ( ((!\machineEtat|State_cr.s_Tx_Data~q\ & (!\machineEtat|State_cr.s_Tx_CRC~1_combout\)) # (\machineEtat|State_cr.s_Tx_Data~q\ & 
-- ((!\fifo|Equal0~0_combout\)))) # (\machineEtat|Selector7~0_combout\) ) ) ) # ( \parite|CRC_reg\(33) & ( !\fifo|Fifo[0][1]~q\ & ( ((!\machineEtat|State_cr.s_Tx_Data~q\ & (!\machineEtat|Selector7~0_combout\)) # (\machineEtat|State_cr.s_Tx_Data~q\ & 
-- ((\fifo|Equal0~0_combout\)))) # (\machineEtat|State_cr.s_Tx_CRC~1_combout\) ) ) ) # ( !\parite|CRC_reg\(33) & ( !\fifo|Fifo[0][1]~q\ & ( (!\machineEtat|State_cr.s_Tx_Data~q\ & (!\machineEtat|Selector7~0_combout\ $ 
-- ((\machineEtat|State_cr.s_Tx_CRC~1_combout\)))) # (\machineEtat|State_cr.s_Tx_Data~q\ & ((!\fifo|Equal0~0_combout\ & ((\machineEtat|State_cr.s_Tx_CRC~1_combout\))) # (\fifo|Equal0~0_combout\ & (\machineEtat|Selector7~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001001110010101101100111011111111011111110101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \machineEtat|ALT_INV_Selector7~0_combout\,
	datab => \machineEtat|ALT_INV_State_cr.s_Tx_CRC~1_combout\,
	datac => \machineEtat|ALT_INV_State_cr.s_Tx_Data~q\,
	datad => \fifo|ALT_INV_Equal0~0_combout\,
	datae => \parite|ALT_INV_CRC_reg\(33),
	dataf => \fifo|ALT_INV_Fifo[0][1]~q\,
	combout => \mux_out[1]~1_combout\);

-- Location: LABCELL_X53_Y20_N0
\machineEtat|Selector6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \machineEtat|Selector6~1_combout\ = ( !\machineEtat|State_cr.s_Tx_CRC~q\ & ( (!\machineEtat|State_cr.s_Tx_Start~q\ & ((!\machineEtat|State_cr.s_Tx_Data~q\) # ((\serial|UC|Etat_cr.Idle~q\ & !\serial|UC|Etat_cr.DRq_Serial~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110001000000110011000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \serial|UC|ALT_INV_Etat_cr.Idle~q\,
	datab => \machineEtat|ALT_INV_State_cr.s_Tx_Start~q\,
	datac => \serial|UC|ALT_INV_Etat_cr.DRq_Serial~q\,
	datad => \machineEtat|ALT_INV_State_cr.s_Tx_Data~q\,
	dataf => \machineEtat|ALT_INV_State_cr.s_Tx_CRC~q\,
	combout => \machineEtat|Selector6~1_combout\);

-- Location: LABCELL_X52_Y20_N12
\serial|UC|Etat_cr~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \serial|UC|Etat_cr~8_combout\ = ( \serial|UT|serialBusy~q\ & ( \serial|UC|Etat_cr.DRq_Serial~q\ & ( (\machineEtat|State_cr.s_Init~q\ & ((!\machineEtat|Selector6~1_combout\) # (\machineEtat|Selector6~0_combout\))) ) ) ) # ( \serial|UT|serialBusy~q\ & ( 
-- !\serial|UC|Etat_cr.DRq_Serial~q\ & ( (!\serial|UC|Etat_cr.Idle~q\ & (\machineEtat|State_cr.s_Init~q\ & ((!\machineEtat|Selector6~1_combout\) # (\machineEtat|Selector6~0_combout\)))) ) ) ) # ( !\serial|UT|serialBusy~q\ & ( 
-- !\serial|UC|Etat_cr.DRq_Serial~q\ & ( (!\serial|UC|Etat_cr.Idle~q\ & (\machineEtat|State_cr.s_Init~q\ & ((!\machineEtat|Selector6~1_combout\) # (\machineEtat|Selector6~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000010001000100000001000000000000000000011001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \serial|UC|ALT_INV_Etat_cr.Idle~q\,
	datab => \machineEtat|ALT_INV_State_cr.s_Init~q\,
	datac => \machineEtat|ALT_INV_Selector6~0_combout\,
	datad => \machineEtat|ALT_INV_Selector6~1_combout\,
	datae => \serial|UT|ALT_INV_serialBusy~q\,
	dataf => \serial|UC|ALT_INV_Etat_cr.DRq_Serial~q\,
	combout => \serial|UC|Etat_cr~8_combout\);

-- Location: FF_X52_Y20_N14
\serial|UC|Etat_cr.Load\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sub_Clk~q\,
	d => \serial|UC|Etat_cr~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial|UC|Etat_cr.Load~q\);

-- Location: LABCELL_X52_Y20_N42
\serial|UC|Etat_cr~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \serial|UC|Etat_cr~9_combout\ = ( !\serial|UC|Etat_cr.Load~q\ & ( (!\serial|UT|serialBusy~q\ & \machineEtat|State_cr.s_Init~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \serial|UT|ALT_INV_serialBusy~q\,
	datad => \machineEtat|ALT_INV_State_cr.s_Init~q\,
	dataf => \serial|UC|ALT_INV_Etat_cr.Load~q\,
	combout => \serial|UC|Etat_cr~9_combout\);

-- Location: LABCELL_X52_Y20_N48
\serial|UC|Etat_cr~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \serial|UC|Etat_cr~10_combout\ = ( \machineEtat|Selector6~1_combout\ & ( \serial|UC|Etat_cr.Idle~q\ & ( (\serial|UC|Etat_cr~9_combout\ & (((\machineEtat|Selector6~0_combout\ & \serial|UC|Etat_cr.DRq_Serial~q\)) # (\serial|UC|Etat_cr.Serial~q\))) ) ) ) # ( 
-- !\machineEtat|Selector6~1_combout\ & ( \serial|UC|Etat_cr.Idle~q\ & ( (\serial|UC|Etat_cr~9_combout\ & ((\serial|UC|Etat_cr.DRq_Serial~q\) # (\serial|UC|Etat_cr.Serial~q\))) ) ) ) # ( \machineEtat|Selector6~1_combout\ & ( !\serial|UC|Etat_cr.Idle~q\ & ( 
-- (!\machineEtat|Selector6~0_combout\ & (\serial|UC|Etat_cr.Serial~q\ & \serial|UC|Etat_cr~9_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010001000000000001111110000000000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \machineEtat|ALT_INV_Selector6~0_combout\,
	datab => \serial|UC|ALT_INV_Etat_cr.Serial~q\,
	datac => \serial|UC|ALT_INV_Etat_cr.DRq_Serial~q\,
	datad => \serial|UC|ALT_INV_Etat_cr~9_combout\,
	datae => \machineEtat|ALT_INV_Selector6~1_combout\,
	dataf => \serial|UC|ALT_INV_Etat_cr.Idle~q\,
	combout => \serial|UC|Etat_cr~10_combout\);

-- Location: FF_X52_Y20_N11
\serial|UC|Etat_cr.Serial\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sub_Clk~q\,
	asdata => \serial|UC|Etat_cr~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial|UC|Etat_cr.Serial~q\);

-- Location: LABCELL_X52_Y20_N30
\serial|UC|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \serial|UC|Selector0~0_combout\ = ( \machineEtat|Selector6~1_combout\ & ( \serial|UT|serialBusy~q\ & ( ((\machineEtat|Selector6~0_combout\ & ((!\serial|UC|Etat_cr.Idle~q\) # (\serial|UC|Etat_cr.DRq_Serial~q\)))) # (\serial|UC|Etat_cr.Serial~q\) ) ) ) # ( 
-- !\machineEtat|Selector6~1_combout\ & ( \serial|UT|serialBusy~q\ & ( (!\serial|UC|Etat_cr.Idle~q\) # ((\serial|UC|Etat_cr.Serial~q\) # (\serial|UC|Etat_cr.DRq_Serial~q\)) ) ) ) # ( \machineEtat|Selector6~1_combout\ & ( !\serial|UT|serialBusy~q\ & ( 
-- (\machineEtat|Selector6~0_combout\ & !\serial|UC|Etat_cr.Idle~q\) ) ) ) # ( !\machineEtat|Selector6~1_combout\ & ( !\serial|UT|serialBusy~q\ & ( !\serial|UC|Etat_cr.Idle~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100010001000100010011001111111111110100010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \machineEtat|ALT_INV_Selector6~0_combout\,
	datab => \serial|UC|ALT_INV_Etat_cr.Idle~q\,
	datac => \serial|UC|ALT_INV_Etat_cr.DRq_Serial~q\,
	datad => \serial|UC|ALT_INV_Etat_cr.Serial~q\,
	datae => \machineEtat|ALT_INV_Selector6~1_combout\,
	dataf => \serial|UT|ALT_INV_serialBusy~q\,
	combout => \serial|UC|Selector0~0_combout\);

-- Location: FF_X53_Y20_N53
\serial|UT|Data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sub_Clk~q\,
	d => \mux_out[1]~1_combout\,
	ena => \serial|UC|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial|UT|Data\(1));

-- Location: FF_X50_Y19_N46
\fifo|Fifo[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \D_in[0]~input_o\,
	sload => VCC,
	ena => \fifo|Fifo[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo|Fifo[3][0]~q\);

-- Location: LABCELL_X47_Y21_N3
\fifo|Fifo[2][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fifo|Fifo[2][0]~feeder_combout\ = ( \fifo|Fifo[3][0]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \fifo|ALT_INV_Fifo[3][0]~q\,
	combout => \fifo|Fifo[2][0]~feeder_combout\);

-- Location: FF_X47_Y21_N5
\fifo|Fifo[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \fifo|Fifo[2][0]~feeder_combout\,
	asdata => \D_in[0]~input_o\,
	sload => \fifo|Fifo[2][3]~4_combout\,
	ena => \fifo|Fifo[2][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo|Fifo[2][0]~q\);

-- Location: LABCELL_X48_Y21_N0
\fifo|Fifo[1][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fifo|Fifo[1][0]~feeder_combout\ = ( \fifo|Fifo[2][0]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \fifo|ALT_INV_Fifo[2][0]~q\,
	combout => \fifo|Fifo[1][0]~feeder_combout\);

-- Location: FF_X48_Y21_N1
\fifo|Fifo[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \fifo|Fifo[1][0]~feeder_combout\,
	asdata => \D_in[0]~input_o\,
	sload => \fifo|Fifo[1][2]~2_combout\,
	ena => \fifo|Fifo[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo|Fifo[1][0]~q\);

-- Location: MLABCELL_X49_Y21_N30
\fifo|Fifo[0][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fifo|Fifo[0][0]~feeder_combout\ = \fifo|Fifo[1][0]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fifo|ALT_INV_Fifo[1][0]~q\,
	combout => \fifo|Fifo[0][0]~feeder_combout\);

-- Location: FF_X49_Y21_N31
\fifo|Fifo[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \fifo|Fifo[0][0]~feeder_combout\,
	asdata => \D_in[0]~input_o\,
	sload => \fifo|Fifo[0][3]~0_combout\,
	ena => \fifo|Fifo[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo|Fifo[0][0]~q\);

-- Location: LABCELL_X53_Y20_N12
\mux_out[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux_out[0]~0_combout\ = ( \parite|CRC_reg\(32) & ( \fifo|Fifo[0][0]~q\ & ( (!\machineEtat|State_cr.s_Tx_Data~q\ & (!\machineEtat|Selector7~0_combout\ $ ((!\machineEtat|State_cr.s_Tx_CRC~1_combout\)))) # (\machineEtat|State_cr.s_Tx_Data~q\ & 
-- ((!\fifo|Equal0~0_combout\ & ((!\machineEtat|State_cr.s_Tx_CRC~1_combout\))) # (\fifo|Equal0~0_combout\ & (!\machineEtat|Selector7~0_combout\)))) ) ) ) # ( !\parite|CRC_reg\(32) & ( \fifo|Fifo[0][0]~q\ & ( (!\machineEtat|State_cr.s_Tx_CRC~1_combout\ & 
-- ((!\machineEtat|State_cr.s_Tx_Data~q\ & (\machineEtat|Selector7~0_combout\)) # (\machineEtat|State_cr.s_Tx_Data~q\ & ((!\fifo|Equal0~0_combout\))))) ) ) ) # ( \parite|CRC_reg\(32) & ( !\fifo|Fifo[0][0]~q\ & ( (!\machineEtat|Selector7~0_combout\ & 
-- ((!\machineEtat|State_cr.s_Tx_Data~q\ & (\machineEtat|State_cr.s_Tx_CRC~1_combout\)) # (\machineEtat|State_cr.s_Tx_Data~q\ & ((\fifo|Equal0~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000100000101001000100110000000110011011001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \machineEtat|ALT_INV_Selector7~0_combout\,
	datab => \machineEtat|ALT_INV_State_cr.s_Tx_CRC~1_combout\,
	datac => \fifo|ALT_INV_Equal0~0_combout\,
	datad => \machineEtat|ALT_INV_State_cr.s_Tx_Data~q\,
	datae => \parite|ALT_INV_CRC_reg\(32),
	dataf => \fifo|ALT_INV_Fifo[0][0]~q\,
	combout => \mux_out[0]~0_combout\);

-- Location: FF_X53_Y20_N14
\serial|UT|Data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sub_Clk~q\,
	d => \mux_out[0]~0_combout\,
	ena => \serial|UC|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial|UT|Data\(0));

-- Location: LABCELL_X50_Y20_N39
\serial|UT|Dec~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \serial|UT|Dec~0_combout\ = ( \serial|UT|Registres~0_combout\ & ( (!\serial|UC|Selector5~0_combout\ & ((\serial|UT|Data\(0)))) # (\serial|UC|Selector5~0_combout\ & (\serial|UT|Dec\(1))) ) ) # ( !\serial|UT|Registres~0_combout\ & ( 
-- (!\serial|UC|Selector5~0_combout\ & ((\serial|UT|Data\(1)))) # (\serial|UC|Selector5~0_combout\ & (\serial|UT|Dec\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \serial|UT|ALT_INV_Dec\(1),
	datab => \serial|UT|ALT_INV_Data\(1),
	datac => \serial|UC|ALT_INV_Selector5~0_combout\,
	datad => \serial|UT|ALT_INV_Data\(0),
	dataf => \serial|UT|ALT_INV_Registres~0_combout\,
	combout => \serial|UT|Dec~0_combout\);

-- Location: LABCELL_X50_Y20_N33
\serial|UT|counter~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \serial|UT|counter~0_combout\ = ( \serial|UC|Selector5~0_combout\ & ( (!\serial|UT|stuffing~0_combout\) # (!\serial|UT|codingDec~q\) ) ) # ( !\serial|UC|Selector5~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \serial|UT|ALT_INV_stuffing~0_combout\,
	datad => \serial|UT|ALT_INV_codingDec~q\,
	dataf => \serial|UC|ALT_INV_Selector5~0_combout\,
	combout => \serial|UT|counter~0_combout\);

-- Location: FF_X50_Y20_N41
\serial|UT|Dec[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sub_Clk~q\,
	d => \serial|UT|Dec~0_combout\,
	ena => \serial|UT|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial|UT|Dec\(0));

-- Location: LABCELL_X50_Y20_N0
\serial|UT|out_b~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \serial|UT|out_b~0_combout\ = ( \serial|UT|codingDec~q\ & ( \serial|UT|stuffing~0_combout\ & ( (!\serial|UT|codingIn~q\ & (\serial|UT|Data\(0) & !\serial|UC|Selector5~0_combout\)) ) ) ) # ( !\serial|UT|codingDec~q\ & ( \serial|UT|stuffing~0_combout\ & ( 
-- (!\serial|UC|Selector5~0_combout\ & (((!\serial|UT|codingIn~q\ & \serial|UT|Data\(0))))) # (\serial|UC|Selector5~0_combout\ & (\serial|UT|Dec\(0))) ) ) ) # ( \serial|UT|codingDec~q\ & ( !\serial|UT|stuffing~0_combout\ & ( (!\serial|UC|Selector5~0_combout\ 
-- & ((\serial|UT|Data\(0)))) # (\serial|UC|Selector5~0_combout\ & (\serial|UT|Dec\(0))) ) ) ) # ( !\serial|UT|codingDec~q\ & ( !\serial|UT|stuffing~0_combout\ & ( (!\serial|UC|Selector5~0_combout\ & ((\serial|UT|Data\(0)))) # 
-- (\serial|UC|Selector5~0_combout\ & (\serial|UT|Dec\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100001100010101010000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \serial|UT|ALT_INV_Dec\(0),
	datab => \serial|UT|ALT_INV_codingIn~q\,
	datac => \serial|UT|ALT_INV_Data\(0),
	datad => \serial|UC|ALT_INV_Selector5~0_combout\,
	datae => \serial|UT|ALT_INV_codingDec~q\,
	dataf => \serial|UT|ALT_INV_stuffing~0_combout\,
	combout => \serial|UT|out_b~0_combout\);

-- Location: FF_X50_Y20_N1
\serial|UT|out_b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sub_Clk~q\,
	d => \serial|UT|out_b~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial|UT|out_b~q\);

-- Location: FF_X50_Y20_N28
\serial|UT|Delay_b0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sub_Clk~q\,
	asdata => \serial|UT|out_b~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial|UT|Delay_b0~q\);

-- Location: FF_X50_Y20_N26
\serial|UT|Delay_b1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sub_Clk~q\,
	asdata => \serial|UT|Delay_b0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial|UT|Delay_b1~q\);

-- Location: FF_X50_Y20_N22
\serial|UT|Delay_b2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sub_Clk~q\,
	asdata => \serial|UT|Delay_b1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial|UT|Delay_b2~q\);

-- Location: LABCELL_X50_Y20_N24
\serial|UT|Registres~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \serial|UT|Registres~0_combout\ = ( \serial|UT|Delay_b0~q\ & ( \serial|UT|out_b~q\ & ( (\serial|UT|Delay_b1~q\ & (\serial|UT|Delay_b2~q\ & (\serial|UT|codingIn~q\ & \serial|UT|next_b~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \serial|UT|ALT_INV_Delay_b1~q\,
	datab => \serial|UT|ALT_INV_Delay_b2~q\,
	datac => \serial|UT|ALT_INV_codingIn~q\,
	datad => \serial|UT|ALT_INV_next_b~q\,
	datae => \serial|UT|ALT_INV_Delay_b0~q\,
	dataf => \serial|UT|ALT_INV_out_b~q\,
	combout => \serial|UT|Registres~0_combout\);

-- Location: FF_X47_Y21_N32
\fifo|Fifo[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \D_in[2]~input_o\,
	sload => VCC,
	ena => \fifo|Fifo[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo|Fifo[3][2]~q\);

-- Location: LABCELL_X47_Y21_N36
\fifo|Fifo[2][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fifo|Fifo[2][2]~feeder_combout\ = \fifo|Fifo[3][2]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fifo|ALT_INV_Fifo[3][2]~q\,
	combout => \fifo|Fifo[2][2]~feeder_combout\);

-- Location: FF_X47_Y21_N37
\fifo|Fifo[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \fifo|Fifo[2][2]~feeder_combout\,
	asdata => \D_in[2]~input_o\,
	sload => \fifo|Fifo[2][3]~4_combout\,
	ena => \fifo|Fifo[2][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo|Fifo[2][2]~q\);

-- Location: LABCELL_X48_Y21_N36
\fifo|Fifo[1][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fifo|Fifo[1][2]~feeder_combout\ = \fifo|Fifo[2][2]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fifo|ALT_INV_Fifo[2][2]~q\,
	combout => \fifo|Fifo[1][2]~feeder_combout\);

-- Location: FF_X48_Y21_N37
\fifo|Fifo[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \fifo|Fifo[1][2]~feeder_combout\,
	asdata => \D_in[2]~input_o\,
	sload => \fifo|Fifo[1][2]~2_combout\,
	ena => \fifo|Fifo[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo|Fifo[1][2]~q\);

-- Location: MLABCELL_X49_Y20_N3
\fifo|Fifo[0][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fifo|Fifo[0][2]~feeder_combout\ = ( \fifo|Fifo[1][2]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \fifo|ALT_INV_Fifo[1][2]~q\,
	combout => \fifo|Fifo[0][2]~feeder_combout\);

-- Location: FF_X49_Y20_N4
\fifo|Fifo[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \fifo|Fifo[0][2]~feeder_combout\,
	asdata => \D_in[2]~input_o\,
	sload => \fifo|Fifo[0][3]~0_combout\,
	ena => \fifo|Fifo[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo|Fifo[0][2]~q\);

-- Location: LABCELL_X53_Y20_N36
\mux_out[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux_out[2]~2_combout\ = ( \fifo|Fifo[0][2]~q\ & ( \parite|CRC_reg\(34) ) ) # ( !\fifo|Fifo[0][2]~q\ & ( \parite|CRC_reg\(34) & ( ((!\machineEtat|State_cr.s_Tx_Data~q\ & (!\machineEtat|Selector7~0_combout\)) # (\machineEtat|State_cr.s_Tx_Data~q\ & 
-- ((\fifo|Equal0~0_combout\)))) # (\machineEtat|State_cr.s_Tx_CRC~1_combout\) ) ) ) # ( \fifo|Fifo[0][2]~q\ & ( !\parite|CRC_reg\(34) & ( ((!\machineEtat|State_cr.s_Tx_Data~q\ & (!\machineEtat|State_cr.s_Tx_CRC~1_combout\)) # 
-- (\machineEtat|State_cr.s_Tx_Data~q\ & ((!\fifo|Equal0~0_combout\)))) # (\machineEtat|Selector7~0_combout\) ) ) ) # ( !\fifo|Fifo[0][2]~q\ & ( !\parite|CRC_reg\(34) & ( (!\machineEtat|State_cr.s_Tx_Data~q\ & (!\machineEtat|Selector7~0_combout\ $ 
-- ((\machineEtat|State_cr.s_Tx_CRC~1_combout\)))) # (\machineEtat|State_cr.s_Tx_Data~q\ & ((!\fifo|Equal0~0_combout\ & ((\machineEtat|State_cr.s_Tx_CRC~1_combout\))) # (\fifo|Equal0~0_combout\ & (\machineEtat|Selector7~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100100110101110111011111010110111011001111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \machineEtat|ALT_INV_Selector7~0_combout\,
	datab => \machineEtat|ALT_INV_State_cr.s_Tx_CRC~1_combout\,
	datac => \fifo|ALT_INV_Equal0~0_combout\,
	datad => \machineEtat|ALT_INV_State_cr.s_Tx_Data~q\,
	datae => \fifo|ALT_INV_Fifo[0][2]~q\,
	dataf => \parite|ALT_INV_CRC_reg\(34),
	combout => \mux_out[2]~2_combout\);

-- Location: FF_X53_Y20_N38
\serial|UT|Data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sub_Clk~q\,
	d => \mux_out[2]~2_combout\,
	ena => \serial|UC|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial|UT|Data\(2));

-- Location: FF_X53_Y19_N40
\fifo|Fifo[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \D_in[4]~input_o\,
	sload => VCC,
	ena => \fifo|Fifo[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo|Fifo[3][4]~q\);

-- Location: LABCELL_X47_Y21_N42
\fifo|Fifo[2][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fifo|Fifo[2][4]~feeder_combout\ = ( \fifo|Fifo[3][4]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \fifo|ALT_INV_Fifo[3][4]~q\,
	combout => \fifo|Fifo[2][4]~feeder_combout\);

-- Location: FF_X47_Y21_N43
\fifo|Fifo[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \fifo|Fifo[2][4]~feeder_combout\,
	asdata => \D_in[4]~input_o\,
	sload => \fifo|Fifo[2][3]~4_combout\,
	ena => \fifo|Fifo[2][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo|Fifo[2][4]~q\);

-- Location: LABCELL_X48_Y21_N12
\fifo|Fifo[1][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fifo|Fifo[1][4]~feeder_combout\ = \fifo|Fifo[2][4]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fifo|ALT_INV_Fifo[2][4]~q\,
	combout => \fifo|Fifo[1][4]~feeder_combout\);

-- Location: FF_X48_Y21_N13
\fifo|Fifo[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \fifo|Fifo[1][4]~feeder_combout\,
	asdata => \D_in[4]~input_o\,
	sload => \fifo|Fifo[1][2]~2_combout\,
	ena => \fifo|Fifo[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo|Fifo[1][4]~q\);

-- Location: MLABCELL_X49_Y21_N45
\fifo|Fifo[0][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fifo|Fifo[0][4]~feeder_combout\ = \fifo|Fifo[1][4]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fifo|ALT_INV_Fifo[1][4]~q\,
	combout => \fifo|Fifo[0][4]~feeder_combout\);

-- Location: FF_X49_Y21_N46
\fifo|Fifo[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \fifo|Fifo[0][4]~feeder_combout\,
	asdata => \D_in[4]~input_o\,
	sload => \fifo|Fifo[0][3]~0_combout\,
	ena => \fifo|Fifo[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo|Fifo[0][4]~q\);

-- Location: LABCELL_X53_Y20_N48
\mux_out[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux_out[4]~4_combout\ = ( \parite|CRC_reg\(36) & ( \fifo|Fifo[0][4]~q\ ) ) # ( !\parite|CRC_reg\(36) & ( \fifo|Fifo[0][4]~q\ & ( ((!\machineEtat|State_cr.s_Tx_Data~q\ & (!\machineEtat|State_cr.s_Tx_CRC~1_combout\)) # (\machineEtat|State_cr.s_Tx_Data~q\ & 
-- ((!\fifo|Equal0~0_combout\)))) # (\machineEtat|Selector7~0_combout\) ) ) ) # ( \parite|CRC_reg\(36) & ( !\fifo|Fifo[0][4]~q\ & ( ((!\machineEtat|State_cr.s_Tx_Data~q\ & (!\machineEtat|Selector7~0_combout\)) # (\machineEtat|State_cr.s_Tx_Data~q\ & 
-- ((\fifo|Equal0~0_combout\)))) # (\machineEtat|State_cr.s_Tx_CRC~1_combout\) ) ) ) # ( !\parite|CRC_reg\(36) & ( !\fifo|Fifo[0][4]~q\ & ( (!\machineEtat|State_cr.s_Tx_Data~q\ & (!\machineEtat|Selector7~0_combout\ $ 
-- ((\machineEtat|State_cr.s_Tx_CRC~1_combout\)))) # (\machineEtat|State_cr.s_Tx_Data~q\ & ((!\fifo|Equal0~0_combout\ & ((\machineEtat|State_cr.s_Tx_CRC~1_combout\))) # (\fifo|Equal0~0_combout\ & (\machineEtat|Selector7~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100100110101101110110011111111011101111101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \machineEtat|ALT_INV_Selector7~0_combout\,
	datab => \machineEtat|ALT_INV_State_cr.s_Tx_CRC~1_combout\,
	datac => \fifo|ALT_INV_Equal0~0_combout\,
	datad => \machineEtat|ALT_INV_State_cr.s_Tx_Data~q\,
	datae => \parite|ALT_INV_CRC_reg\(36),
	dataf => \fifo|ALT_INV_Fifo[0][4]~q\,
	combout => \mux_out[4]~4_combout\);

-- Location: FF_X53_Y20_N50
\serial|UT|Data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sub_Clk~q\,
	d => \mux_out[4]~4_combout\,
	ena => \serial|UC|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial|UT|Data\(4));

-- Location: FF_X50_Y19_N1
\fifo|Fifo[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \D_in[5]~input_o\,
	sload => VCC,
	ena => \fifo|Fifo[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo|Fifo[3][5]~q\);

-- Location: LABCELL_X47_Y21_N45
\fifo|Fifo[2][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fifo|Fifo[2][5]~feeder_combout\ = \fifo|Fifo[3][5]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fifo|ALT_INV_Fifo[3][5]~q\,
	combout => \fifo|Fifo[2][5]~feeder_combout\);

-- Location: FF_X47_Y21_N47
\fifo|Fifo[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \fifo|Fifo[2][5]~feeder_combout\,
	asdata => \D_in[5]~input_o\,
	sload => \fifo|Fifo[2][3]~4_combout\,
	ena => \fifo|Fifo[2][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo|Fifo[2][5]~q\);

-- Location: LABCELL_X48_Y21_N15
\fifo|Fifo[1][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fifo|Fifo[1][5]~feeder_combout\ = ( \fifo|Fifo[2][5]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \fifo|ALT_INV_Fifo[2][5]~q\,
	combout => \fifo|Fifo[1][5]~feeder_combout\);

-- Location: FF_X48_Y21_N16
\fifo|Fifo[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \fifo|Fifo[1][5]~feeder_combout\,
	asdata => \D_in[5]~input_o\,
	sload => \fifo|Fifo[1][2]~2_combout\,
	ena => \fifo|Fifo[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo|Fifo[1][5]~q\);

-- Location: MLABCELL_X49_Y21_N18
\fifo|Fifo[0][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fifo|Fifo[0][5]~feeder_combout\ = ( \fifo|Fifo[1][5]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \fifo|ALT_INV_Fifo[1][5]~q\,
	combout => \fifo|Fifo[0][5]~feeder_combout\);

-- Location: FF_X49_Y21_N19
\fifo|Fifo[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \fifo|Fifo[0][5]~feeder_combout\,
	asdata => \D_in[5]~input_o\,
	sload => \fifo|Fifo[0][3]~0_combout\,
	ena => \fifo|Fifo[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo|Fifo[0][5]~q\);

-- Location: LABCELL_X53_Y20_N42
\mux_out[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux_out[5]~5_combout\ = ( \parite|CRC_reg\(37) & ( \fifo|Fifo[0][5]~q\ ) ) # ( !\parite|CRC_reg\(37) & ( \fifo|Fifo[0][5]~q\ & ( ((!\machineEtat|State_cr.s_Tx_Data~q\ & (!\machineEtat|State_cr.s_Tx_CRC~1_combout\)) # (\machineEtat|State_cr.s_Tx_Data~q\ & 
-- ((!\fifo|Equal0~0_combout\)))) # (\machineEtat|Selector7~0_combout\) ) ) ) # ( \parite|CRC_reg\(37) & ( !\fifo|Fifo[0][5]~q\ & ( ((!\machineEtat|State_cr.s_Tx_Data~q\ & (!\machineEtat|Selector7~0_combout\)) # (\machineEtat|State_cr.s_Tx_Data~q\ & 
-- ((\fifo|Equal0~0_combout\)))) # (\machineEtat|State_cr.s_Tx_CRC~1_combout\) ) ) ) # ( !\parite|CRC_reg\(37) & ( !\fifo|Fifo[0][5]~q\ & ( (!\machineEtat|State_cr.s_Tx_Data~q\ & (!\machineEtat|Selector7~0_combout\ $ 
-- ((\machineEtat|State_cr.s_Tx_CRC~1_combout\)))) # (\machineEtat|State_cr.s_Tx_Data~q\ & ((!\fifo|Equal0~0_combout\ & ((\machineEtat|State_cr.s_Tx_CRC~1_combout\))) # (\fifo|Equal0~0_combout\ & (\machineEtat|Selector7~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100100110101101110110011111111011101111101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \machineEtat|ALT_INV_Selector7~0_combout\,
	datab => \machineEtat|ALT_INV_State_cr.s_Tx_CRC~1_combout\,
	datac => \fifo|ALT_INV_Equal0~0_combout\,
	datad => \machineEtat|ALT_INV_State_cr.s_Tx_Data~q\,
	datae => \parite|ALT_INV_CRC_reg\(37),
	dataf => \fifo|ALT_INV_Fifo[0][5]~q\,
	combout => \mux_out[5]~5_combout\);

-- Location: FF_X53_Y20_N44
\serial|UT|Data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sub_Clk~q\,
	d => \mux_out[5]~5_combout\,
	ena => \serial|UC|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial|UT|Data\(5));

-- Location: FF_X52_Y21_N26
\fifo|Fifo[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \D_in[6]~input_o\,
	sload => VCC,
	ena => \fifo|Fifo[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo|Fifo[3][6]~q\);

-- Location: LABCELL_X47_Y21_N18
\fifo|Fifo[2][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fifo|Fifo[2][6]~feeder_combout\ = ( \fifo|Fifo[3][6]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \fifo|ALT_INV_Fifo[3][6]~q\,
	combout => \fifo|Fifo[2][6]~feeder_combout\);

-- Location: FF_X47_Y21_N19
\fifo|Fifo[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \fifo|Fifo[2][6]~feeder_combout\,
	asdata => \D_in[6]~input_o\,
	sload => \fifo|Fifo[2][3]~4_combout\,
	ena => \fifo|Fifo[2][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo|Fifo[2][6]~q\);

-- Location: LABCELL_X48_Y21_N48
\fifo|Fifo[1][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fifo|Fifo[1][6]~feeder_combout\ = \fifo|Fifo[2][6]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fifo|ALT_INV_Fifo[2][6]~q\,
	combout => \fifo|Fifo[1][6]~feeder_combout\);

-- Location: FF_X48_Y21_N49
\fifo|Fifo[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \fifo|Fifo[1][6]~feeder_combout\,
	asdata => \D_in[6]~input_o\,
	sload => \fifo|Fifo[1][2]~2_combout\,
	ena => \fifo|Fifo[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo|Fifo[1][6]~q\);

-- Location: MLABCELL_X49_Y21_N21
\fifo|Fifo[0][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fifo|Fifo[0][6]~feeder_combout\ = \fifo|Fifo[1][6]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fifo|ALT_INV_Fifo[1][6]~q\,
	combout => \fifo|Fifo[0][6]~feeder_combout\);

-- Location: FF_X49_Y21_N22
\fifo|Fifo[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \fifo|Fifo[0][6]~feeder_combout\,
	asdata => \D_in[6]~input_o\,
	sload => \fifo|Fifo[0][3]~0_combout\,
	ena => \fifo|Fifo[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo|Fifo[0][6]~q\);

-- Location: LABCELL_X53_Y20_N45
\mux_out[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux_out[6]~6_combout\ = ( \parite|CRC_reg\(38) & ( \fifo|Fifo[0][6]~q\ ) ) # ( !\parite|CRC_reg\(38) & ( \fifo|Fifo[0][6]~q\ & ( ((!\machineEtat|State_cr.s_Tx_Data~q\ & (!\machineEtat|State_cr.s_Tx_CRC~1_combout\)) # (\machineEtat|State_cr.s_Tx_Data~q\ & 
-- ((!\fifo|Equal0~0_combout\)))) # (\machineEtat|Selector7~0_combout\) ) ) ) # ( \parite|CRC_reg\(38) & ( !\fifo|Fifo[0][6]~q\ & ( ((!\machineEtat|State_cr.s_Tx_Data~q\ & (!\machineEtat|Selector7~0_combout\)) # (\machineEtat|State_cr.s_Tx_Data~q\ & 
-- ((\fifo|Equal0~0_combout\)))) # (\machineEtat|State_cr.s_Tx_CRC~1_combout\) ) ) ) # ( !\parite|CRC_reg\(38) & ( !\fifo|Fifo[0][6]~q\ & ( (!\machineEtat|State_cr.s_Tx_Data~q\ & (!\machineEtat|Selector7~0_combout\ $ 
-- ((\machineEtat|State_cr.s_Tx_CRC~1_combout\)))) # (\machineEtat|State_cr.s_Tx_Data~q\ & ((!\fifo|Equal0~0_combout\ & ((\machineEtat|State_cr.s_Tx_CRC~1_combout\))) # (\fifo|Equal0~0_combout\ & (\machineEtat|Selector7~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001001110010101101100111011111111011111110101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \machineEtat|ALT_INV_Selector7~0_combout\,
	datab => \machineEtat|ALT_INV_State_cr.s_Tx_CRC~1_combout\,
	datac => \machineEtat|ALT_INV_State_cr.s_Tx_Data~q\,
	datad => \fifo|ALT_INV_Equal0~0_combout\,
	datae => \parite|ALT_INV_CRC_reg\(38),
	dataf => \fifo|ALT_INV_Fifo[0][6]~q\,
	combout => \mux_out[6]~6_combout\);

-- Location: FF_X53_Y20_N47
\serial|UT|Data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sub_Clk~q\,
	d => \mux_out[6]~6_combout\,
	ena => \serial|UC|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial|UT|Data\(6));

-- Location: FF_X53_Y19_N47
\fifo|Fifo[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \D_in[7]~input_o\,
	sload => VCC,
	ena => \fifo|Fifo[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo|Fifo[3][7]~q\);

-- Location: LABCELL_X47_Y21_N21
\fifo|Fifo[2][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fifo|Fifo[2][7]~feeder_combout\ = \fifo|Fifo[3][7]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fifo|ALT_INV_Fifo[3][7]~q\,
	combout => \fifo|Fifo[2][7]~feeder_combout\);

-- Location: FF_X47_Y21_N22
\fifo|Fifo[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \fifo|Fifo[2][7]~feeder_combout\,
	asdata => \D_in[7]~input_o\,
	sload => \fifo|Fifo[2][3]~4_combout\,
	ena => \fifo|Fifo[2][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo|Fifo[2][7]~q\);

-- Location: LABCELL_X48_Y21_N51
\fifo|Fifo[1][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fifo|Fifo[1][7]~feeder_combout\ = \fifo|Fifo[2][7]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fifo|ALT_INV_Fifo[2][7]~q\,
	combout => \fifo|Fifo[1][7]~feeder_combout\);

-- Location: FF_X48_Y21_N52
\fifo|Fifo[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \fifo|Fifo[1][7]~feeder_combout\,
	asdata => \D_in[7]~input_o\,
	sload => \fifo|Fifo[1][2]~2_combout\,
	ena => \fifo|Fifo[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo|Fifo[1][7]~q\);

-- Location: MLABCELL_X49_Y21_N54
\fifo|Fifo[0][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fifo|Fifo[0][7]~feeder_combout\ = ( \fifo|Fifo[1][7]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \fifo|ALT_INV_Fifo[1][7]~q\,
	combout => \fifo|Fifo[0][7]~feeder_combout\);

-- Location: FF_X49_Y21_N55
\fifo|Fifo[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \fifo|Fifo[0][7]~feeder_combout\,
	asdata => \D_in[7]~input_o\,
	sload => \fifo|Fifo[0][3]~0_combout\,
	ena => \fifo|Fifo[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo|Fifo[0][7]~q\);

-- Location: LABCELL_X53_Y20_N15
\mux_out[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux_out[7]~7_combout\ = ( \parite|CRC_reg\(39) & ( \fifo|Fifo[0][7]~q\ & ( (!\machineEtat|State_cr.s_Tx_Data~q\ & (!\machineEtat|Selector7~0_combout\ $ ((!\machineEtat|State_cr.s_Tx_CRC~1_combout\)))) # (\machineEtat|State_cr.s_Tx_Data~q\ & 
-- ((!\fifo|Equal0~0_combout\ & ((!\machineEtat|State_cr.s_Tx_CRC~1_combout\))) # (\fifo|Equal0~0_combout\ & (!\machineEtat|Selector7~0_combout\)))) ) ) ) # ( !\parite|CRC_reg\(39) & ( \fifo|Fifo[0][7]~q\ & ( (!\machineEtat|State_cr.s_Tx_CRC~1_combout\ & 
-- ((!\machineEtat|State_cr.s_Tx_Data~q\ & (\machineEtat|Selector7~0_combout\)) # (\machineEtat|State_cr.s_Tx_Data~q\ & ((!\fifo|Equal0~0_combout\))))) ) ) ) # ( \parite|CRC_reg\(39) & ( !\fifo|Fifo[0][7]~q\ & ( (!\machineEtat|Selector7~0_combout\ & 
-- ((!\machineEtat|State_cr.s_Tx_Data~q\ & (\machineEtat|State_cr.s_Tx_CRC~1_combout\)) # (\machineEtat|State_cr.s_Tx_Data~q\ & ((\fifo|Equal0~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000010101001001100010000000110110001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \machineEtat|ALT_INV_Selector7~0_combout\,
	datab => \machineEtat|ALT_INV_State_cr.s_Tx_CRC~1_combout\,
	datac => \machineEtat|ALT_INV_State_cr.s_Tx_Data~q\,
	datad => \fifo|ALT_INV_Equal0~0_combout\,
	datae => \parite|ALT_INV_CRC_reg\(39),
	dataf => \fifo|ALT_INV_Fifo[0][7]~q\,
	combout => \mux_out[7]~7_combout\);

-- Location: FF_X53_Y20_N17
\serial|UT|Data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sub_Clk~q\,
	d => \mux_out[7]~7_combout\,
	ena => \serial|UC|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial|UT|Data\(7));

-- Location: LABCELL_X50_Y22_N3
\serial|UT|Dec[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \serial|UT|Dec[7]~7_combout\ = ( \serial|UT|stuffing~0_combout\ & ( \serial|UT|codingDec~q\ & ( (!\serial|UC|Selector5~0_combout\ & (\serial|UT|codingIn~q\ & ((\serial|UT|Data\(7))))) # (\serial|UC|Selector5~0_combout\ & (((\serial|UT|Dec\(7))))) ) ) ) # 
-- ( \serial|UT|stuffing~0_combout\ & ( !\serial|UT|codingDec~q\ & ( (\serial|UT|codingIn~q\ & (!\serial|UC|Selector5~0_combout\ & \serial|UT|Data\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101000000000000000000000000001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \serial|UT|ALT_INV_codingIn~q\,
	datab => \serial|UT|ALT_INV_Dec\(7),
	datac => \serial|UC|ALT_INV_Selector5~0_combout\,
	datad => \serial|UT|ALT_INV_Data\(7),
	datae => \serial|UT|ALT_INV_stuffing~0_combout\,
	dataf => \serial|UT|ALT_INV_codingDec~q\,
	combout => \serial|UT|Dec[7]~7_combout\);

-- Location: FF_X52_Y20_N32
\serial|UT|Dec[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sub_Clk~q\,
	asdata => \serial|UT|Dec[7]~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial|UT|Dec\(7));

-- Location: LABCELL_X52_Y20_N24
\serial|UT|Dec~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \serial|UT|Dec~6_combout\ = ( \serial|UT|Dec\(7) & ( ((!\serial|UT|Registres~0_combout\ & ((\serial|UT|Data\(7)))) # (\serial|UT|Registres~0_combout\ & (\serial|UT|Data\(6)))) # (\serial|UC|Selector5~0_combout\) ) ) # ( !\serial|UT|Dec\(7) & ( 
-- (!\serial|UC|Selector5~0_combout\ & ((!\serial|UT|Registres~0_combout\ & ((\serial|UT|Data\(7)))) # (\serial|UT|Registres~0_combout\ & (\serial|UT|Data\(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111010000000000011101111111110001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \serial|UT|ALT_INV_Data\(6),
	datab => \serial|UT|ALT_INV_Registres~0_combout\,
	datac => \serial|UT|ALT_INV_Data\(7),
	datad => \serial|UC|ALT_INV_Selector5~0_combout\,
	dataf => \serial|UT|ALT_INV_Dec\(7),
	combout => \serial|UT|Dec~6_combout\);

-- Location: FF_X52_Y20_N25
\serial|UT|Dec[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sub_Clk~q\,
	d => \serial|UT|Dec~6_combout\,
	ena => \serial|UT|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial|UT|Dec\(6));

-- Location: LABCELL_X52_Y20_N27
\serial|UT|Dec~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \serial|UT|Dec~5_combout\ = ( \serial|UT|Dec\(6) & ( ((!\serial|UT|Registres~0_combout\ & (\serial|UT|Data\(6))) # (\serial|UT|Registres~0_combout\ & ((\serial|UT|Data\(5))))) # (\serial|UC|Selector5~0_combout\) ) ) # ( !\serial|UT|Dec\(6) & ( 
-- (!\serial|UC|Selector5~0_combout\ & ((!\serial|UT|Registres~0_combout\ & (\serial|UT|Data\(6))) # (\serial|UT|Registres~0_combout\ & ((\serial|UT|Data\(5)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001110000000001000111111111110100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \serial|UT|ALT_INV_Data\(6),
	datab => \serial|UT|ALT_INV_Registres~0_combout\,
	datac => \serial|UT|ALT_INV_Data\(5),
	datad => \serial|UC|ALT_INV_Selector5~0_combout\,
	dataf => \serial|UT|ALT_INV_Dec\(6),
	combout => \serial|UT|Dec~5_combout\);

-- Location: FF_X52_Y20_N28
\serial|UT|Dec[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sub_Clk~q\,
	d => \serial|UT|Dec~5_combout\,
	ena => \serial|UT|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial|UT|Dec\(5));

-- Location: LABCELL_X50_Y20_N54
\serial|UT|Dec~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \serial|UT|Dec~4_combout\ = ( \serial|UC|Selector5~0_combout\ & ( \serial|UT|Dec\(5) ) ) # ( !\serial|UC|Selector5~0_combout\ & ( (!\serial|UT|Registres~0_combout\ & ((\serial|UT|Data\(5)))) # (\serial|UT|Registres~0_combout\ & (\serial|UT|Data\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \serial|UT|ALT_INV_Data\(4),
	datab => \serial|UT|ALT_INV_Registres~0_combout\,
	datac => \serial|UT|ALT_INV_Data\(5),
	datad => \serial|UT|ALT_INV_Dec\(5),
	dataf => \serial|UC|ALT_INV_Selector5~0_combout\,
	combout => \serial|UT|Dec~4_combout\);

-- Location: FF_X50_Y20_N55
\serial|UT|Dec[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sub_Clk~q\,
	d => \serial|UT|Dec~4_combout\,
	ena => \serial|UT|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial|UT|Dec\(4));

-- Location: FF_X50_Y19_N28
\fifo|Fifo[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \D_in[3]~input_o\,
	sload => VCC,
	ena => \fifo|Fifo[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo|Fifo[3][3]~q\);

-- Location: LABCELL_X47_Y21_N39
\fifo|Fifo[2][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fifo|Fifo[2][3]~feeder_combout\ = \fifo|Fifo[3][3]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fifo|ALT_INV_Fifo[3][3]~q\,
	combout => \fifo|Fifo[2][3]~feeder_combout\);

-- Location: FF_X47_Y21_N40
\fifo|Fifo[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \fifo|Fifo[2][3]~feeder_combout\,
	asdata => \D_in[3]~input_o\,
	sload => \fifo|Fifo[2][3]~4_combout\,
	ena => \fifo|Fifo[2][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo|Fifo[2][3]~q\);

-- Location: LABCELL_X48_Y21_N39
\fifo|Fifo[1][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fifo|Fifo[1][3]~feeder_combout\ = \fifo|Fifo[2][3]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fifo|ALT_INV_Fifo[2][3]~q\,
	combout => \fifo|Fifo[1][3]~feeder_combout\);

-- Location: FF_X48_Y21_N40
\fifo|Fifo[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \fifo|Fifo[1][3]~feeder_combout\,
	asdata => \D_in[3]~input_o\,
	sload => \fifo|Fifo[1][2]~2_combout\,
	ena => \fifo|Fifo[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo|Fifo[1][3]~q\);

-- Location: MLABCELL_X49_Y21_N42
\fifo|Fifo[0][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fifo|Fifo[0][3]~feeder_combout\ = ( \fifo|Fifo[1][3]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \fifo|ALT_INV_Fifo[1][3]~q\,
	combout => \fifo|Fifo[0][3]~feeder_combout\);

-- Location: FF_X49_Y21_N43
\fifo|Fifo[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \fifo|Fifo[0][3]~feeder_combout\,
	asdata => \D_in[3]~input_o\,
	sload => \fifo|Fifo[0][3]~0_combout\,
	ena => \fifo|Fifo[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo|Fifo[0][3]~q\);

-- Location: LABCELL_X53_Y20_N39
\mux_out[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux_out[3]~3_combout\ = ( \fifo|Fifo[0][3]~q\ & ( \parite|CRC_reg\(35) ) ) # ( !\fifo|Fifo[0][3]~q\ & ( \parite|CRC_reg\(35) & ( ((!\machineEtat|State_cr.s_Tx_Data~q\ & (!\machineEtat|Selector7~0_combout\)) # (\machineEtat|State_cr.s_Tx_Data~q\ & 
-- ((\fifo|Equal0~0_combout\)))) # (\machineEtat|State_cr.s_Tx_CRC~1_combout\) ) ) ) # ( \fifo|Fifo[0][3]~q\ & ( !\parite|CRC_reg\(35) & ( ((!\machineEtat|State_cr.s_Tx_Data~q\ & (!\machineEtat|State_cr.s_Tx_CRC~1_combout\)) # 
-- (\machineEtat|State_cr.s_Tx_Data~q\ & ((!\fifo|Equal0~0_combout\)))) # (\machineEtat|Selector7~0_combout\) ) ) ) # ( !\fifo|Fifo[0][3]~q\ & ( !\parite|CRC_reg\(35) & ( (!\machineEtat|State_cr.s_Tx_Data~q\ & (!\machineEtat|Selector7~0_combout\ $ 
-- ((\machineEtat|State_cr.s_Tx_CRC~1_combout\)))) # (\machineEtat|State_cr.s_Tx_Data~q\ & ((!\fifo|Equal0~0_combout\ & ((\machineEtat|State_cr.s_Tx_CRC~1_combout\))) # (\fifo|Equal0~0_combout\ & (\machineEtat|Selector7~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001001110010101110111111101010110110011101111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \machineEtat|ALT_INV_Selector7~0_combout\,
	datab => \machineEtat|ALT_INV_State_cr.s_Tx_CRC~1_combout\,
	datac => \machineEtat|ALT_INV_State_cr.s_Tx_Data~q\,
	datad => \fifo|ALT_INV_Equal0~0_combout\,
	datae => \fifo|ALT_INV_Fifo[0][3]~q\,
	dataf => \parite|ALT_INV_CRC_reg\(35),
	combout => \mux_out[3]~3_combout\);

-- Location: FF_X53_Y20_N41
\serial|UT|Data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sub_Clk~q\,
	d => \mux_out[3]~3_combout\,
	ena => \serial|UC|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial|UT|Data\(3));

-- Location: LABCELL_X50_Y20_N57
\serial|UT|Dec~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \serial|UT|Dec~3_combout\ = ( \serial|UT|Data\(3) & ( (!\serial|UC|Selector5~0_combout\ & (((\serial|UT|Registres~0_combout\)) # (\serial|UT|Data\(4)))) # (\serial|UC|Selector5~0_combout\ & (((\serial|UT|Dec\(4))))) ) ) # ( !\serial|UT|Data\(3) & ( 
-- (!\serial|UC|Selector5~0_combout\ & (\serial|UT|Data\(4) & (!\serial|UT|Registres~0_combout\))) # (\serial|UC|Selector5~0_combout\ & (((\serial|UT|Dec\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001111010001000000111101110111000011110111011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \serial|UT|ALT_INV_Data\(4),
	datab => \serial|UT|ALT_INV_Registres~0_combout\,
	datac => \serial|UT|ALT_INV_Dec\(4),
	datad => \serial|UC|ALT_INV_Selector5~0_combout\,
	dataf => \serial|UT|ALT_INV_Data\(3),
	combout => \serial|UT|Dec~3_combout\);

-- Location: FF_X52_Y20_N38
\serial|UT|Dec[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sub_Clk~q\,
	asdata => \serial|UT|Dec~3_combout\,
	sload => VCC,
	ena => \serial|UT|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial|UT|Dec\(3));

-- Location: LABCELL_X50_Y20_N51
\serial|UT|Dec~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \serial|UT|Dec~2_combout\ = ( \serial|UT|Data\(3) & ( (!\serial|UC|Selector5~0_combout\ & ((!\serial|UT|Registres~0_combout\) # ((\serial|UT|Data\(2))))) # (\serial|UC|Selector5~0_combout\ & (((\serial|UT|Dec\(3))))) ) ) # ( !\serial|UT|Data\(3) & ( 
-- (!\serial|UC|Selector5~0_combout\ & (\serial|UT|Registres~0_combout\ & (\serial|UT|Data\(2)))) # (\serial|UC|Selector5~0_combout\ & (((\serial|UT|Dec\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011111000100000001111110110000101111111011000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \serial|UT|ALT_INV_Registres~0_combout\,
	datab => \serial|UT|ALT_INV_Data\(2),
	datac => \serial|UC|ALT_INV_Selector5~0_combout\,
	datad => \serial|UT|ALT_INV_Dec\(3),
	dataf => \serial|UT|ALT_INV_Data\(3),
	combout => \serial|UT|Dec~2_combout\);

-- Location: FF_X50_Y20_N52
\serial|UT|Dec[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sub_Clk~q\,
	d => \serial|UT|Dec~2_combout\,
	ena => \serial|UT|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial|UT|Dec\(2));

-- Location: LABCELL_X50_Y20_N48
\serial|UT|Dec~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \serial|UT|Dec~1_combout\ = ( \serial|UC|Selector5~0_combout\ & ( \serial|UT|Dec\(2) ) ) # ( !\serial|UC|Selector5~0_combout\ & ( (!\serial|UT|Registres~0_combout\ & (\serial|UT|Data\(2))) # (\serial|UT|Registres~0_combout\ & ((\serial|UT|Data\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \serial|UT|ALT_INV_Registres~0_combout\,
	datab => \serial|UT|ALT_INV_Data\(2),
	datac => \serial|UT|ALT_INV_Dec\(2),
	datad => \serial|UT|ALT_INV_Data\(1),
	dataf => \serial|UC|ALT_INV_Selector5~0_combout\,
	combout => \serial|UT|Dec~1_combout\);

-- Location: FF_X50_Y20_N49
\serial|UT|Dec[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sub_Clk~q\,
	d => \serial|UT|Dec~1_combout\,
	ena => \serial|UT|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial|UT|Dec\(1));

-- Location: LABCELL_X50_Y20_N36
\serial|UT|next_b~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \serial|UT|next_b~0_combout\ = ( \serial|UC|Selector5~0_combout\ & ( (!\serial|UT|Add0~0_combout\ & ((\serial|UT|Data\(0)))) # (\serial|UT|Add0~0_combout\ & (\serial|UT|Dec\(1))) ) ) # ( !\serial|UC|Selector5~0_combout\ & ( \serial|UT|Data\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \serial|UT|ALT_INV_Dec\(1),
	datab => \serial|UT|ALT_INV_Data\(1),
	datac => \serial|UT|ALT_INV_Add0~0_combout\,
	datad => \serial|UT|ALT_INV_Data\(0),
	dataf => \serial|UC|ALT_INV_Selector5~0_combout\,
	combout => \serial|UT|next_b~0_combout\);

-- Location: LABCELL_X50_Y20_N42
\serial|UT|next_b~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \serial|UT|next_b~1_combout\ = ( \serial|UT|codingDec~0_combout\ & ( (!\serial|UT|stuffing~0_combout\ & ((\serial|UT|next_b~0_combout\))) # (\serial|UT|stuffing~0_combout\ & (\serial|UT|next_b~q\)) ) ) # ( !\serial|UT|codingDec~0_combout\ & ( 
-- \serial|UT|next_b~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \serial|UT|ALT_INV_stuffing~0_combout\,
	datac => \serial|UT|ALT_INV_next_b~q\,
	datad => \serial|UT|ALT_INV_next_b~0_combout\,
	dataf => \serial|UT|ALT_INV_codingDec~0_combout\,
	combout => \serial|UT|next_b~1_combout\);

-- Location: FF_X52_Y20_N22
\serial|UT|next_b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sub_Clk~q\,
	asdata => \serial|UT|next_b~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial|UT|next_b~q\);

-- Location: LABCELL_X50_Y20_N30
\serial|UT|stuffing~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \serial|UT|stuffing~0_combout\ = ( \serial|UT|out_b~q\ & ( (\serial|UT|next_b~q\ & (\serial|UT|Delay_b2~q\ & (\serial|UT|Delay_b1~q\ & \serial|UT|Delay_b0~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \serial|UT|ALT_INV_next_b~q\,
	datab => \serial|UT|ALT_INV_Delay_b2~q\,
	datac => \serial|UT|ALT_INV_Delay_b1~q\,
	datad => \serial|UT|ALT_INV_Delay_b0~q\,
	dataf => \serial|UT|ALT_INV_out_b~q\,
	combout => \serial|UT|stuffing~0_combout\);

-- Location: LABCELL_X50_Y20_N6
\serial|UT|counter~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \serial|UT|counter~2_combout\ = ( \serial|UC|Selector5~0_combout\ & ( !\serial|UT|Registres:counter[0]~DUPLICATE_q\ $ (((\serial|UT|stuffing~0_combout\ & \serial|UT|codingDec~q\))) ) ) # ( !\serial|UC|Selector5~0_combout\ & ( (!\serial|UT|codingIn~q\) # 
-- (!\serial|UT|stuffing~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100111111001111110010101010101001011010101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \serial|UT|ALT_INV_Registres:counter[0]~DUPLICATE_q\,
	datab => \serial|UT|ALT_INV_codingIn~q\,
	datac => \serial|UT|ALT_INV_stuffing~0_combout\,
	datad => \serial|UT|ALT_INV_codingDec~q\,
	dataf => \serial|UC|ALT_INV_Selector5~0_combout\,
	combout => \serial|UT|counter~2_combout\);

-- Location: FF_X52_Y20_N5
\serial|UT|Registres:counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sub_Clk~q\,
	asdata => \serial|UT|counter~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial|UT|Registres:counter[0]~q\);

-- Location: LABCELL_X52_Y20_N36
\serial|UT|counter~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \serial|UT|counter~3_combout\ = ( !\serial|UC|Etat_cr.Load~q\ & ( (!\serial|UT|serialBusy~q\ & (!\serial|UT|Registres:counter[0]~q\ $ (((!\serial|UT|Registres:counter[1]~q\))))) # (\serial|UT|serialBusy~q\ & (!\serial|UC|Etat_cr.Serial~q\ & 
-- (!\serial|UT|Registres:counter[0]~q\ $ (!\serial|UT|Registres:counter[1]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001011001000001100101100100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \serial|UT|ALT_INV_serialBusy~q\,
	datab => \serial|UT|ALT_INV_Registres:counter[0]~q\,
	datac => \serial|UC|ALT_INV_Etat_cr.Serial~q\,
	datad => \serial|UT|ALT_INV_Registres:counter[1]~q\,
	dataf => \serial|UC|ALT_INV_Etat_cr.Load~q\,
	combout => \serial|UT|counter~3_combout\);

-- Location: FF_X52_Y20_N59
\serial|UT|Registres:counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sub_Clk~q\,
	asdata => \serial|UT|counter~3_combout\,
	sload => VCC,
	ena => \serial|UT|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial|UT|Registres:counter[1]~q\);

-- Location: LABCELL_X52_Y20_N6
\serial|UT|counter~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \serial|UT|counter~1_combout\ = ( \serial|UT|Registres:counter[1]~q\ & ( !\serial|UC|Etat_cr.Load~q\ & ( (!\serial|UT|serialBusy~q\ & ((!\serial|UT|Registres:counter[0]~q\ $ (!\serial|UT|Registres:counter[2]~q\)))) # (\serial|UT|serialBusy~q\ & 
-- (!\serial|UC|Etat_cr.Serial~q\ & (!\serial|UT|Registres:counter[0]~q\ $ (!\serial|UT|Registres:counter[2]~q\)))) ) ) ) # ( !\serial|UT|Registres:counter[1]~q\ & ( !\serial|UC|Etat_cr.Load~q\ & ( (\serial|UT|Registres:counter[2]~q\ & 
-- ((!\serial|UT|serialBusy~q\) # (!\serial|UC|Etat_cr.Serial~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000011101110000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \serial|UT|ALT_INV_serialBusy~q\,
	datab => \serial|UC|ALT_INV_Etat_cr.Serial~q\,
	datac => \serial|UT|ALT_INV_Registres:counter[0]~q\,
	datad => \serial|UT|ALT_INV_Registres:counter[2]~q\,
	datae => \serial|UT|ALT_INV_Registres:counter[1]~q\,
	dataf => \serial|UC|ALT_INV_Etat_cr.Load~q\,
	combout => \serial|UT|counter~1_combout\);

-- Location: FF_X52_Y20_N41
\serial|UT|Registres:counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sub_Clk~q\,
	asdata => \serial|UT|counter~1_combout\,
	sload => VCC,
	ena => \serial|UT|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial|UT|Registres:counter[2]~q\);

-- Location: LABCELL_X52_Y20_N39
\serial|UT|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \serial|UT|Add0~0_combout\ = !\serial|UT|serialBusy~q\ $ (((\serial|UT|Registres:counter[0]~q\ & (\serial|UT|Registres:counter[1]~q\ & \serial|UT|Registres:counter[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101001101010101010100110101010101010011010101010101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \serial|UT|ALT_INV_serialBusy~q\,
	datab => \serial|UT|ALT_INV_Registres:counter[0]~q\,
	datac => \serial|UT|ALT_INV_Registres:counter[1]~q\,
	datad => \serial|UT|ALT_INV_Registres:counter[2]~q\,
	combout => \serial|UT|Add0~0_combout\);

-- Location: LABCELL_X50_Y20_N45
\serial|UT|serialBusy~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \serial|UT|serialBusy~0_combout\ = ( \serial|UC|Selector5~0_combout\ & ( (!\serial|UT|stuffing~0_combout\ & (!\serial|UT|Add0~0_combout\)) # (\serial|UT|stuffing~0_combout\ & ((!\serial|UT|codingDec~q\ & (!\serial|UT|Add0~0_combout\)) # 
-- (\serial|UT|codingDec~q\ & ((\serial|UT|serialBusy~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010100010111010101010001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \serial|UT|ALT_INV_Add0~0_combout\,
	datab => \serial|UT|ALT_INV_stuffing~0_combout\,
	datac => \serial|UT|ALT_INV_serialBusy~q\,
	datad => \serial|UT|ALT_INV_codingDec~q\,
	dataf => \serial|UC|ALT_INV_Selector5~0_combout\,
	combout => \serial|UT|serialBusy~0_combout\);

-- Location: FF_X52_Y20_N20
\serial|UT|serialBusy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sub_Clk~q\,
	asdata => \serial|UT|serialBusy~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial|UT|serialBusy~q\);

-- Location: LABCELL_X50_Y20_N9
\serial|UC|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \serial|UC|Selector5~0_combout\ = ( !\serial|UC|Etat_cr.Load~q\ & ( (!\serial|UT|serialBusy~q\) # (!\serial|UC|Etat_cr.Serial~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \serial|UT|ALT_INV_serialBusy~q\,
	datad => \serial|UC|ALT_INV_Etat_cr.Serial~q\,
	dataf => \serial|UC|ALT_INV_Etat_cr.Load~q\,
	combout => \serial|UC|Selector5~0_combout\);

-- Location: LABCELL_X50_Y20_N18
\serial|UC|Etat_cr~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \serial|UC|Etat_cr~7_combout\ = ( \machineEtat|State_cr.s_Init~q\ & ( \machineEtat|Selector6~1_combout\ & ( (!\serial|UC|Selector5~0_combout\) # ((!\machineEtat|Selector6~0_combout\ & (\serial|UC|Etat_cr.DRq_Serial~q\ & !\serial|UT|serialBusy~q\))) ) ) ) 
-- # ( \machineEtat|State_cr.s_Init~q\ & ( !\machineEtat|Selector6~1_combout\ & ( !\serial|UC|Selector5~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001100111011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \machineEtat|ALT_INV_Selector6~0_combout\,
	datab => \serial|UC|ALT_INV_Selector5~0_combout\,
	datac => \serial|UC|ALT_INV_Etat_cr.DRq_Serial~q\,
	datad => \serial|UT|ALT_INV_serialBusy~q\,
	datae => \machineEtat|ALT_INV_State_cr.s_Init~q\,
	dataf => \machineEtat|ALT_INV_Selector6~1_combout\,
	combout => \serial|UC|Etat_cr~7_combout\);

-- Location: FF_X53_Y20_N5
\serial|UC|Etat_cr.DRq_Serial\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sub_Clk~q\,
	asdata => \serial|UC|Etat_cr~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial|UC|Etat_cr.DRq_Serial~q\);

-- Location: LABCELL_X53_Y20_N30
\machineEtat|State_cr.s_Tx_CRC~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \machineEtat|State_cr.s_Tx_CRC~1_combout\ = ( \machineEtat|State_cr.s_Tx_CRC~q\ & ( (!\serial|UC|Etat_cr.DRq_Serial~q\ & \serial|UC|Etat_cr.Idle~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \serial|UC|ALT_INV_Etat_cr.DRq_Serial~q\,
	datad => \serial|UC|ALT_INV_Etat_cr.Idle~q\,
	dataf => \machineEtat|ALT_INV_State_cr.s_Tx_CRC~q\,
	combout => \machineEtat|State_cr.s_Tx_CRC~1_combout\);

-- Location: LABCELL_X53_Y20_N18
\machineEtat|State_cr.s_Tx_CRC~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \machineEtat|State_cr.s_Tx_CRC~2_combout\ = ( \fifo|adrFifo\(2) & ( \machineEtat|State_cr.s_Tx_Data~q\ & ( (\machineEtat|State_cr.s_Init~q\ & \machineEtat|State_cr.s_Tx_CRC~1_combout\) ) ) ) # ( !\fifo|adrFifo\(2) & ( \machineEtat|State_cr.s_Tx_Data~q\ & 
-- ( (!\machineEtat|State_cr.s_Init~q\ & (((!\fifo|adrFifo\(0) & !\fifo|adrFifo\(1))))) # (\machineEtat|State_cr.s_Init~q\ & (((!\fifo|adrFifo\(0) & !\fifo|adrFifo\(1))) # (\machineEtat|State_cr.s_Tx_CRC~1_combout\))) ) ) ) # ( \fifo|adrFifo\(2) & ( 
-- !\machineEtat|State_cr.s_Tx_Data~q\ & ( (\machineEtat|State_cr.s_Init~q\ & \machineEtat|State_cr.s_Tx_CRC~1_combout\) ) ) ) # ( !\fifo|adrFifo\(2) & ( !\machineEtat|State_cr.s_Tx_Data~q\ & ( (\machineEtat|State_cr.s_Init~q\ & 
-- \machineEtat|State_cr.s_Tx_CRC~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111110001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \machineEtat|ALT_INV_State_cr.s_Init~q\,
	datab => \machineEtat|ALT_INV_State_cr.s_Tx_CRC~1_combout\,
	datac => \fifo|ALT_INV_adrFifo\(0),
	datad => \fifo|ALT_INV_adrFifo\(1),
	datae => \fifo|ALT_INV_adrFifo\(2),
	dataf => \machineEtat|ALT_INV_State_cr.s_Tx_Data~q\,
	combout => \machineEtat|State_cr.s_Tx_CRC~2_combout\);

-- Location: FF_X53_Y20_N20
\machineEtat|State_cr.s_Tx_CRC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sub_Clk~q\,
	d => \machineEtat|State_cr.s_Tx_CRC~2_combout\,
	clrn => \SynRst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \machineEtat|State_cr.s_Tx_CRC~q\);

-- Location: LABCELL_X53_Y20_N57
\machineEtat|State_cr.s_Tx_CRC~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \machineEtat|State_cr.s_Tx_CRC~0_combout\ = ( \serial|UC|Etat_cr.Idle~q\ & ( !\serial|UC|Etat_cr.DRq_Serial~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \serial|UC|ALT_INV_Etat_cr.DRq_Serial~q\,
	dataf => \serial|UC|ALT_INV_Etat_cr.Idle~q\,
	combout => \machineEtat|State_cr.s_Tx_CRC~0_combout\);

-- Location: LABCELL_X52_Y20_N54
\machineEtat|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \machineEtat|Selector1~0_combout\ = ( \machineEtat|State_cr.s_Tx_Start~q\ & ( \machineEtat|State_cr.s_Tx_CRC~0_combout\ & ( !\machineEtat|Selector6~0_combout\ ) ) ) # ( !\machineEtat|State_cr.s_Tx_Start~q\ & ( \machineEtat|State_cr.s_Tx_CRC~0_combout\ & ( 
-- (!\machineEtat|Selector6~0_combout\ & !\machineEtat|State_cr.s_Init~q\) ) ) ) # ( \machineEtat|State_cr.s_Tx_Start~q\ & ( !\machineEtat|State_cr.s_Tx_CRC~0_combout\ & ( ((!\machineEtat|Selector6~0_combout\ & !\Start~q\)) # 
-- (\machineEtat|State_cr.s_Tx_CRC~q\) ) ) ) # ( !\machineEtat|State_cr.s_Tx_Start~q\ & ( !\machineEtat|State_cr.s_Tx_CRC~0_combout\ & ( ((!\machineEtat|Selector6~0_combout\ & !\machineEtat|State_cr.s_Init~q\)) # (\machineEtat|State_cr.s_Tx_CRC~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001110110011101110110011001110100000101000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \machineEtat|ALT_INV_Selector6~0_combout\,
	datab => \machineEtat|ALT_INV_State_cr.s_Tx_CRC~q\,
	datac => \machineEtat|ALT_INV_State_cr.s_Init~q\,
	datad => \ALT_INV_Start~q\,
	datae => \machineEtat|ALT_INV_State_cr.s_Tx_Start~q\,
	dataf => \machineEtat|ALT_INV_State_cr.s_Tx_CRC~0_combout\,
	combout => \machineEtat|Selector1~0_combout\);

-- Location: FF_X53_Y20_N11
\machineEtat|State_cr.s_Tx_Start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sub_Clk~q\,
	asdata => \machineEtat|Selector1~0_combout\,
	clrn => \SynRst~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \machineEtat|State_cr.s_Tx_Start~q\);

-- Location: LABCELL_X53_Y20_N3
\machineEtat|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \machineEtat|Selector7~0_combout\ = ( \serial|UC|Etat_cr.Idle~q\ & ( (\machineEtat|State_cr.s_Tx_Start~q\ & (\Start~q\ & \serial|UC|Etat_cr.DRq_Serial~q\)) ) ) # ( !\serial|UC|Etat_cr.Idle~q\ & ( (\machineEtat|State_cr.s_Tx_Start~q\ & \Start~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \machineEtat|ALT_INV_State_cr.s_Tx_Start~q\,
	datac => \ALT_INV_Start~q\,
	datad => \serial|UC|ALT_INV_Etat_cr.DRq_Serial~q\,
	dataf => \serial|UC|ALT_INV_Etat_cr.Idle~q\,
	combout => \machineEtat|Selector7~0_combout\);

-- Location: LABCELL_X53_Y20_N6
\machineEtat|Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \machineEtat|Selector2~1_combout\ = ( \fifo|adrFifo\(2) & ( !\machineEtat|Selector2~0_combout\ & ( (\machineEtat|Selector7~0_combout\) # (\machineEtat|State_cr.s_Tx_Data~q\) ) ) ) # ( !\fifo|adrFifo\(2) & ( !\machineEtat|Selector2~0_combout\ & ( 
-- (!\machineEtat|State_cr.s_Tx_Data~q\ & (((\machineEtat|Selector7~0_combout\)))) # (\machineEtat|State_cr.s_Tx_Data~q\ & (((\fifo|adrFifo\(1))) # (\fifo|adrFifo\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100111111001111110011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fifo|ALT_INV_adrFifo\(0),
	datab => \machineEtat|ALT_INV_State_cr.s_Tx_Data~q\,
	datac => \machineEtat|ALT_INV_Selector7~0_combout\,
	datad => \fifo|ALT_INV_adrFifo\(1),
	datae => \fifo|ALT_INV_adrFifo\(2),
	dataf => \machineEtat|ALT_INV_Selector2~0_combout\,
	combout => \machineEtat|Selector2~1_combout\);

-- Location: FF_X53_Y20_N23
\machineEtat|State_cr.s_Tx_Data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sub_Clk~q\,
	asdata => \machineEtat|Selector2~1_combout\,
	clrn => \SynRst~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \machineEtat|State_cr.s_Tx_Data~q\);

-- Location: LABCELL_X52_Y21_N54
\rdFIFO~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdFIFO~1_combout\ = ( \fifo|adrFifo\(0) & ( \fifo|adrFifo\(2) & ( (\machineEtat|State_cr.s_Tx_Data~q\ & ((!\serial|UC|Etat_cr.Idle~q\) # (\serial|UC|Etat_cr.DRq_Serial~q\))) ) ) ) # ( !\fifo|adrFifo\(0) & ( \fifo|adrFifo\(2) & ( 
-- (\machineEtat|State_cr.s_Tx_Data~q\ & ((!\serial|UC|Etat_cr.Idle~q\) # (\serial|UC|Etat_cr.DRq_Serial~q\))) ) ) ) # ( \fifo|adrFifo\(0) & ( !\fifo|adrFifo\(2) & ( (\machineEtat|State_cr.s_Tx_Data~q\ & ((!\serial|UC|Etat_cr.Idle~q\) # 
-- (\serial|UC|Etat_cr.DRq_Serial~q\))) ) ) ) # ( !\fifo|adrFifo\(0) & ( !\fifo|adrFifo\(2) & ( (\machineEtat|State_cr.s_Tx_Data~q\ & (\fifo|adrFifo\(1) & ((!\serial|UC|Etat_cr.Idle~q\) # (\serial|UC|Etat_cr.DRq_Serial~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100011001000110010001100100011001000110010001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \serial|UC|ALT_INV_Etat_cr.Idle~q\,
	datab => \machineEtat|ALT_INV_State_cr.s_Tx_Data~q\,
	datac => \serial|UC|ALT_INV_Etat_cr.DRq_Serial~q\,
	datad => \fifo|ALT_INV_adrFifo\(1),
	datae => \fifo|ALT_INV_adrFifo\(0),
	dataf => \fifo|ALT_INV_adrFifo\(2),
	combout => \rdFIFO~1_combout\);

-- Location: FF_X52_Y21_N56
rdFIFO_delay : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \rdFIFO~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdFIFO_delay~q\);

-- Location: LABCELL_X52_Y21_N12
\rdFIFO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdFIFO~0_combout\ = ( !\rdFIFO_delay~q\ & ( !\fifo|Equal0~0_combout\ & ( (\machineEtat|State_cr.s_Tx_Data~q\ & ((!\serial|UC|Etat_cr.Idle~q\) # (\serial|UC|Etat_cr.DRq_Serial~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100100011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \serial|UC|ALT_INV_Etat_cr.Idle~q\,
	datab => \machineEtat|ALT_INV_State_cr.s_Tx_Data~q\,
	datac => \serial|UC|ALT_INV_Etat_cr.DRq_Serial~q\,
	datae => \ALT_INV_rdFIFO_delay~q\,
	dataf => \fifo|ALT_INV_Equal0~0_combout\,
	combout => \rdFIFO~0_combout\);

-- Location: FF_X52_Y21_N14
rdFIFO : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \rdFIFO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdFIFO~q\);

-- Location: LABCELL_X52_Y21_N33
\fifo|Mux34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fifo|Mux34~0_combout\ = ( \fifo|adrFifo\(2) & ( !\fifo|adrFifo\(0) $ (((!\rdFIFO~q\) # (\wrFIFO~combout\))) ) ) # ( !\fifo|adrFifo\(2) & ( (!\wrFIFO~combout\ & ((!\rdFIFO~q\ & ((\fifo|adrFifo\(0)))) # (\rdFIFO~q\ & (\fifo|adrFifo\(1) & 
-- !\fifo|adrFifo\(0))))) # (\wrFIFO~combout\ & (!\rdFIFO~q\ $ (((\fifo|adrFifo\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011010011001010001101001100100100010110111010010001011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_wrFIFO~combout\,
	datab => \ALT_INV_rdFIFO~q\,
	datac => \fifo|ALT_INV_adrFifo\(1),
	datad => \fifo|ALT_INV_adrFifo\(0),
	dataf => \fifo|ALT_INV_adrFifo\(2),
	combout => \fifo|Mux34~0_combout\);

-- Location: FF_X52_Y21_N35
\fifo|adrFifo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \fifo|Mux34~0_combout\,
	sclr => \machineEtat|ALT_INV_State_cr.s_Init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo|adrFifo\(0));

-- Location: LABCELL_X53_Y20_N33
\machineEtat|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \machineEtat|Selector6~0_combout\ = ( \machineEtat|State_cr.s_Tx_Data~q\ & ( (!\fifo|adrFifo\(0) & (!\fifo|adrFifo\(1) & !\fifo|adrFifo\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fifo|ALT_INV_adrFifo\(0),
	datab => \fifo|ALT_INV_adrFifo\(1),
	datac => \fifo|ALT_INV_adrFifo\(2),
	dataf => \machineEtat|ALT_INV_State_cr.s_Tx_Data~q\,
	combout => \machineEtat|Selector6~0_combout\);

-- Location: LABCELL_X52_Y20_N18
\serial|UC|Etat_cr~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \serial|UC|Etat_cr~6_combout\ = ( \serial|UT|serialBusy~q\ & ( \serial|UC|Etat_cr.DRq_Serial~q\ & ( (\machineEtat|State_cr.s_Init~q\ & ((!\machineEtat|Selector6~1_combout\) # (\machineEtat|Selector6~0_combout\))) ) ) ) # ( !\serial|UT|serialBusy~q\ & ( 
-- \serial|UC|Etat_cr.DRq_Serial~q\ & ( (\machineEtat|State_cr.s_Init~q\ & (((!\machineEtat|Selector6~1_combout\) # (\machineEtat|Selector6~0_combout\)) # (\serial|UC|Etat_cr.Idle~q\))) ) ) ) # ( \serial|UT|serialBusy~q\ & ( !\serial|UC|Etat_cr.DRq_Serial~q\ 
-- & ( (\machineEtat|State_cr.s_Init~q\ & (((!\machineEtat|Selector6~1_combout\) # (\machineEtat|Selector6~0_combout\)) # (\serial|UC|Etat_cr.Idle~q\))) ) ) ) # ( !\serial|UT|serialBusy~q\ & ( !\serial|UC|Etat_cr.DRq_Serial~q\ & ( 
-- (\machineEtat|State_cr.s_Init~q\ & (((!\machineEtat|Selector6~1_combout\) # (\machineEtat|Selector6~0_combout\)) # (\serial|UC|Etat_cr.Idle~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100010101010101010001010101010101000101010101010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \machineEtat|ALT_INV_State_cr.s_Init~q\,
	datab => \serial|UC|ALT_INV_Etat_cr.Idle~q\,
	datac => \machineEtat|ALT_INV_Selector6~0_combout\,
	datad => \machineEtat|ALT_INV_Selector6~1_combout\,
	datae => \serial|UT|ALT_INV_serialBusy~q\,
	dataf => \serial|UC|ALT_INV_Etat_cr.DRq_Serial~q\,
	combout => \serial|UC|Etat_cr~6_combout\);

-- Location: FF_X53_Y20_N32
\serial|UC|Etat_cr.Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sub_Clk~q\,
	asdata => \serial|UC|Etat_cr~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial|UC|Etat_cr.Idle~q\);

-- Location: LABCELL_X53_Y20_N24
\machineEtat|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \machineEtat|Selector8~0_combout\ = ( \Start~q\ & ( \machineEtat|State_cr.s_Tx_CRC~q\ & ( (((\serial|UC|Etat_cr.Idle~q\ & !\serial|UC|Etat_cr.DRq_Serial~q\)) # (\machineEtat|State_cr.s_Tx_Data~q\)) # (\machineEtat|State_cr.s_Tx_Start~q\) ) ) ) # ( 
-- !\Start~q\ & ( \machineEtat|State_cr.s_Tx_CRC~q\ & ( ((\serial|UC|Etat_cr.Idle~q\ & !\serial|UC|Etat_cr.DRq_Serial~q\)) # (\machineEtat|State_cr.s_Tx_Data~q\) ) ) ) # ( \Start~q\ & ( !\machineEtat|State_cr.s_Tx_CRC~q\ & ( 
-- ((\machineEtat|State_cr.s_Tx_Start~q\ & ((!\serial|UC|Etat_cr.Idle~q\) # (\serial|UC|Etat_cr.DRq_Serial~q\)))) # (\machineEtat|State_cr.s_Tx_Data~q\) ) ) ) # ( !\Start~q\ & ( !\machineEtat|State_cr.s_Tx_CRC~q\ & ( \machineEtat|State_cr.s_Tx_Data~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000010111111111101000100111111110100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \serial|UC|ALT_INV_Etat_cr.Idle~q\,
	datab => \serial|UC|ALT_INV_Etat_cr.DRq_Serial~q\,
	datac => \machineEtat|ALT_INV_State_cr.s_Tx_Start~q\,
	datad => \machineEtat|ALT_INV_State_cr.s_Tx_Data~q\,
	datae => \ALT_INV_Start~q\,
	dataf => \machineEtat|ALT_INV_State_cr.s_Tx_CRC~q\,
	combout => \machineEtat|Selector8~0_combout\);

-- Location: FF_X53_Y20_N26
\serial|UT|codingIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sub_Clk~q\,
	d => \machineEtat|Selector8~0_combout\,
	ena => \serial|UC|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial|UT|codingIn~q\);

-- Location: LABCELL_X50_Y20_N12
\serial|UT|codingDec~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \serial|UT|codingDec~0_combout\ = ( \serial|UT|serialBusy~q\ & ( (!\serial|UC|Etat_cr.Load~q\ & ((!\serial|UC|Etat_cr.Serial~q\ & (\serial|UT|codingDec~q\)) # (\serial|UC|Etat_cr.Serial~q\ & ((\serial|UT|codingIn~q\))))) # (\serial|UC|Etat_cr.Load~q\ & 
-- (((\serial|UT|codingIn~q\)))) ) ) # ( !\serial|UT|serialBusy~q\ & ( (!\serial|UC|Etat_cr.Load~q\ & (\serial|UT|codingDec~q\)) # (\serial|UC|Etat_cr.Load~q\ & ((\serial|UT|codingIn~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011001100110101001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \serial|UT|ALT_INV_codingDec~q\,
	datab => \serial|UT|ALT_INV_codingIn~q\,
	datac => \serial|UC|ALT_INV_Etat_cr.Load~q\,
	datad => \serial|UC|ALT_INV_Etat_cr.Serial~q\,
	dataf => \serial|UT|ALT_INV_serialBusy~q\,
	combout => \serial|UT|codingDec~0_combout\);

-- Location: FF_X52_Y20_N8
\serial|UT|codingDec\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sub_Clk~q\,
	asdata => \serial|UT|codingDec~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial|UT|codingDec~q\);

-- Location: LABCELL_X50_Y20_N15
\serial|UT|State~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \serial|UT|State~0_combout\ = ( \serial|UT|out_b~q\ & ( ((!\serial|UT|codingDec~q\ & ((!\serial|UT|codingIn~q\) # (\serial|UC|Selector5~0_combout\)))) # (\serial|UT|State~q\) ) ) # ( !\serial|UT|out_b~q\ & ( (!\serial|UT|State~q\ & 
-- (((\serial|UT|codingIn~q\ & !\serial|UC|Selector5~0_combout\)) # (\serial|UT|codingDec~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010100000000011101010000000010001010111111111000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \serial|UT|ALT_INV_codingDec~q\,
	datab => \serial|UT|ALT_INV_codingIn~q\,
	datac => \serial|UC|ALT_INV_Selector5~0_combout\,
	datad => \serial|UT|ALT_INV_State~q\,
	dataf => \serial|UT|ALT_INV_out_b~q\,
	combout => \serial|UT|State~0_combout\);

-- Location: FF_X52_Y20_N2
\serial|UT|State\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sub_Clk~q\,
	asdata => \serial|UT|State~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial|UT|State~q\);

-- Location: FF_X49_Y21_N5
IRQEn : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \D_in[1]~input_o\,
	clrn => \SynRst~q\,
	sload => VCC,
	ena => \ldCtrl~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IRQEn~q\);

-- Location: IOIBUF_X54_Y21_N55
\rd~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rd,
	o => \rd~input_o\);

-- Location: MLABCELL_X49_Y21_N36
\int_irq~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \int_irq~0_combout\ = ( \machineEtat|Selector2~0_combout\ & ( ((!\rd~input_o\) # (\Addr[0]~input_o\)) # (\Addr[1]~input_o\) ) ) # ( !\machineEtat|Selector2~0_combout\ & ( (\int_irq~q\ & (((!\rd~input_o\) # (\Addr[0]~input_o\)) # (\Addr[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011011111000000001101111111011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Addr[1]~input_o\,
	datab => \ALT_INV_rd~input_o\,
	datac => \ALT_INV_Addr[0]~input_o\,
	datad => \ALT_INV_int_irq~q\,
	dataf => \machineEtat|ALT_INV_Selector2~0_combout\,
	combout => \int_irq~0_combout\);

-- Location: FF_X49_Y21_N38
int_irq : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \int_irq~0_combout\,
	clrn => \SynRst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_irq~q\);

-- Location: MLABCELL_X49_Y21_N39
\IRQ_ELN_n~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \IRQ_ELN_n~0_combout\ = ( \int_irq~q\ & ( \IRQEn~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_IRQEn~q\,
	dataf => \ALT_INV_int_irq~q\,
	combout => \IRQ_ELN_n~0_combout\);

-- Location: MLABCELL_X49_Y21_N12
RdOut : cyclonev_lcell_comb
-- Equation(s):
-- \RdOut~combout\ = (!\Addr[1]~input_o\ & (\rd~input_o\ & !\Addr[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Addr[1]~input_o\,
	datab => \ALT_INV_rd~input_o\,
	datac => \ALT_INV_Addr[0]~input_o\,
	combout => \RdOut~combout\);

-- Location: LABCELL_X52_Y20_N0
\D_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D_out~0_combout\ = ( \machineEtat|State_cr.s_Tx_Start~q\ & ( \machineEtat|State_cr.s_Tx_CRC~q\ & ( (\Start~q\) # (\RdOut~combout\) ) ) ) # ( !\machineEtat|State_cr.s_Tx_Start~q\ & ( \machineEtat|State_cr.s_Tx_CRC~q\ & ( (\Start~q\) # (\RdOut~combout\) ) 
-- ) ) # ( \machineEtat|State_cr.s_Tx_Start~q\ & ( !\machineEtat|State_cr.s_Tx_CRC~q\ & ( (!\RdOut~combout\ & (((\Start~q\)))) # (\RdOut~combout\ & (((!\machineEtat|State_cr.s_Tx_CRC~0_combout\ & \Start~q\)) # (\machineEtat|State_cr.s_Tx_Data~q\))) ) ) ) # ( 
-- !\machineEtat|State_cr.s_Tx_Start~q\ & ( !\machineEtat|State_cr.s_Tx_CRC~q\ & ( (!\RdOut~combout\ & ((\Start~q\))) # (\RdOut~combout\ & (\machineEtat|State_cr.s_Tx_Data~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011111110100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \machineEtat|ALT_INV_State_cr.s_Tx_Data~q\,
	datab => \ALT_INV_RdOut~combout\,
	datac => \machineEtat|ALT_INV_State_cr.s_Tx_CRC~0_combout\,
	datad => \ALT_INV_Start~q\,
	datae => \machineEtat|ALT_INV_State_cr.s_Tx_Start~q\,
	dataf => \machineEtat|ALT_INV_State_cr.s_Tx_CRC~q\,
	combout => \D_out~0_combout\);

-- Location: MLABCELL_X49_Y21_N3
\D_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D_out~1_combout\ = ( \Addr[0]~input_o\ & ( \IRQEn~q\ ) ) # ( !\Addr[0]~input_o\ & ( (!\Addr[1]~input_o\ & ((!\rd~input_o\ & ((\IRQEn~q\))) # (\rd~input_o\ & (\fifo|Equal0~0_combout\)))) # (\Addr[1]~input_o\ & (((\IRQEn~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011011111000000101101111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Addr[1]~input_o\,
	datab => \ALT_INV_rd~input_o\,
	datac => \fifo|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_IRQEn~q\,
	dataf => \ALT_INV_Addr[0]~input_o\,
	combout => \D_out~1_combout\);

-- Location: LABCELL_X50_Y21_N0
\D_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \D_out~2_combout\ = ( clk_div(0) & ( (!\RdOut~combout\) # ((!\fifo|adrFifo\(1) & (\fifo|adrFifo\(2) & !\fifo|adrFifo\(0)))) ) ) # ( !clk_div(0) & ( (!\fifo|adrFifo\(1) & (\fifo|adrFifo\(2) & (\RdOut~combout\ & !\fifo|adrFifo\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000111100101111000000000010000000001111001011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fifo|ALT_INV_adrFifo\(1),
	datab => \fifo|ALT_INV_adrFifo\(2),
	datac => \ALT_INV_RdOut~combout\,
	datad => \fifo|ALT_INV_adrFifo\(0),
	datae => ALT_INV_clk_div(0),
	combout => \D_out~2_combout\);

-- Location: MLABCELL_X49_Y21_N48
\D_out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \D_out~3_combout\ = ( clk_div(1) & ( \int_irq~q\ ) ) # ( !clk_div(1) & ( \int_irq~q\ & ( (!\Addr[1]~input_o\ & (!\Addr[0]~input_o\ & \rd~input_o\)) ) ) ) # ( clk_div(1) & ( !\int_irq~q\ & ( ((!\rd~input_o\) # (\Addr[0]~input_o\)) # (\Addr[1]~input_o\) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110101111100000000101000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Addr[1]~input_o\,
	datac => \ALT_INV_Addr[0]~input_o\,
	datad => \ALT_INV_rd~input_o\,
	datae => ALT_INV_clk_div(1),
	dataf => \ALT_INV_int_irq~q\,
	combout => \D_out~3_combout\);

-- Location: MLABCELL_X49_Y21_N0
\D_out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \D_out~4_combout\ = ( \Addr[0]~input_o\ & ( clk_div(2) ) ) # ( !\Addr[0]~input_o\ & ( (clk_div(2) & ((!\rd~input_o\) # (\Addr[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001111000000001100111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rd~input_o\,
	datac => \ALT_INV_Addr[1]~input_o\,
	datad => ALT_INV_clk_div(2),
	dataf => \ALT_INV_Addr[0]~input_o\,
	combout => \D_out~4_combout\);

-- Location: LABCELL_X47_Y21_N33
\D_out~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \D_out~5_combout\ = ( \rd~input_o\ & ( ((!\Addr[0]~input_o\ & !\Addr[1]~input_o\)) # (clk_div(3)) ) ) # ( !\rd~input_o\ & ( clk_div(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111000000111111111100000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Addr[0]~input_o\,
	datac => \ALT_INV_Addr[1]~input_o\,
	datad => ALT_INV_clk_div(3),
	dataf => \ALT_INV_rd~input_o\,
	combout => \D_out~5_combout\);

-- Location: MLABCELL_X49_Y21_N6
\D_out~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \D_out~6_combout\ = (clk_div(4) & (((!\rd~input_o\) # (\Addr[0]~input_o\)) # (\Addr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100010011001100110001001100110011000100110011001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Addr[1]~input_o\,
	datab => ALT_INV_clk_div(4),
	datac => \ALT_INV_Addr[0]~input_o\,
	datad => \ALT_INV_rd~input_o\,
	combout => \D_out~6_combout\);

-- Location: MLABCELL_X49_Y21_N57
\D_out~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \D_out~7_combout\ = ( \Addr[1]~input_o\ & ( clk_div(5) ) ) # ( !\Addr[1]~input_o\ & ( (clk_div(5) & ((!\rd~input_o\) # (\Addr[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Addr[0]~input_o\,
	datab => \ALT_INV_rd~input_o\,
	datac => ALT_INV_clk_div(5),
	dataf => \ALT_INV_Addr[1]~input_o\,
	combout => \D_out~7_combout\);

-- Location: LABCELL_X1_Y12_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


