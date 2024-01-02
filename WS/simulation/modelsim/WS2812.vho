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

-- DATE "12/22/2023 15:17:49"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	WS2812 IS
    PORT (
	clk : IN std_logic;
	serial : OUT std_logic
	);
END WS2812;

-- Design Ports Information
-- serial	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF WS2812 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_serial : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \serial~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \index[0]~32_combout\ : std_logic;
SIGNAL \delay_high_counter[11]~32_combout\ : std_logic;
SIGNAL \bit_counter[4]~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~11_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \state.reset~q\ : std_logic;
SIGNAL \delay_low_counter[5]~2_combout\ : std_logic;
SIGNAL \index[29]~96_combout\ : std_logic;
SIGNAL \index[0]~33\ : std_logic;
SIGNAL \index[1]~34_combout\ : std_logic;
SIGNAL \index[1]~35\ : std_logic;
SIGNAL \index[2]~36_combout\ : std_logic;
SIGNAL \index[2]~37\ : std_logic;
SIGNAL \index[3]~38_combout\ : std_logic;
SIGNAL \index[3]~39\ : std_logic;
SIGNAL \index[4]~40_combout\ : std_logic;
SIGNAL \index[4]~41\ : std_logic;
SIGNAL \index[5]~42_combout\ : std_logic;
SIGNAL \index[5]~43\ : std_logic;
SIGNAL \index[6]~44_combout\ : std_logic;
SIGNAL \index[6]~45\ : std_logic;
SIGNAL \index[7]~46_combout\ : std_logic;
SIGNAL \index[7]~47\ : std_logic;
SIGNAL \index[8]~48_combout\ : std_logic;
SIGNAL \index[8]~49\ : std_logic;
SIGNAL \index[9]~50_combout\ : std_logic;
SIGNAL \index[9]~51\ : std_logic;
SIGNAL \index[10]~52_combout\ : std_logic;
SIGNAL \index[10]~53\ : std_logic;
SIGNAL \index[11]~54_combout\ : std_logic;
SIGNAL \index[11]~55\ : std_logic;
SIGNAL \index[12]~56_combout\ : std_logic;
SIGNAL \index[12]~57\ : std_logic;
SIGNAL \index[13]~58_combout\ : std_logic;
SIGNAL \index[13]~59\ : std_logic;
SIGNAL \index[14]~60_combout\ : std_logic;
SIGNAL \index[14]~61\ : std_logic;
SIGNAL \index[15]~62_combout\ : std_logic;
SIGNAL \index[15]~63\ : std_logic;
SIGNAL \index[16]~64_combout\ : std_logic;
SIGNAL \index[16]~65\ : std_logic;
SIGNAL \index[17]~66_combout\ : std_logic;
SIGNAL \index[17]~67\ : std_logic;
SIGNAL \index[18]~68_combout\ : std_logic;
SIGNAL \index[18]~69\ : std_logic;
SIGNAL \index[19]~70_combout\ : std_logic;
SIGNAL \index[19]~71\ : std_logic;
SIGNAL \index[20]~72_combout\ : std_logic;
SIGNAL \index[20]~73\ : std_logic;
SIGNAL \index[21]~74_combout\ : std_logic;
SIGNAL \index[21]~75\ : std_logic;
SIGNAL \index[22]~76_combout\ : std_logic;
SIGNAL \index[22]~77\ : std_logic;
SIGNAL \index[23]~78_combout\ : std_logic;
SIGNAL \index[23]~79\ : std_logic;
SIGNAL \index[24]~80_combout\ : std_logic;
SIGNAL \index[24]~81\ : std_logic;
SIGNAL \index[25]~82_combout\ : std_logic;
SIGNAL \index[25]~83\ : std_logic;
SIGNAL \index[26]~84_combout\ : std_logic;
SIGNAL \index[26]~85\ : std_logic;
SIGNAL \index[27]~86_combout\ : std_logic;
SIGNAL \index[27]~87\ : std_logic;
SIGNAL \index[28]~88_combout\ : std_logic;
SIGNAL \index[28]~89\ : std_logic;
SIGNAL \index[29]~90_combout\ : std_logic;
SIGNAL \index[29]~91\ : std_logic;
SIGNAL \index[30]~92_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \index[30]~93\ : std_logic;
SIGNAL \index[31]~94_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \LessThan1~7_combout\ : std_logic;
SIGNAL \LessThan1~8_combout\ : std_logic;
SIGNAL \LessThan1~9_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~10_combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \state.load~q\ : std_logic;
SIGNAL \delay_high_counter[0]~33_combout\ : std_logic;
SIGNAL \delay_high_counter[0]~feeder_combout\ : std_logic;
SIGNAL \delay_high_counter[11]~35_combout\ : std_logic;
SIGNAL \delay_high_counter[0]~34\ : std_logic;
SIGNAL \delay_high_counter[1]~36_combout\ : std_logic;
SIGNAL \LED~10_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \LED~3_combout\ : std_logic;
SIGNAL \LED~0_combout\ : std_logic;
SIGNAL \LED~1_combout\ : std_logic;
SIGNAL \LED~2_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \LED~4_combout\ : std_logic;
SIGNAL \LED~5_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \LED~6_combout\ : std_logic;
SIGNAL \LED~9_combout\ : std_logic;
SIGNAL \LED~7_combout\ : std_logic;
SIGNAL \GRB[1]~feeder_combout\ : std_logic;
SIGNAL \LED~8_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \Mux0~8_wirecell_combout\ : std_logic;
SIGNAL \delay_high_counter[1]~37\ : std_logic;
SIGNAL \delay_high_counter[2]~38_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \delay_high_counter[2]~39\ : std_logic;
SIGNAL \delay_high_counter[3]~40_combout\ : std_logic;
SIGNAL \delay_high_counter[3]~41\ : std_logic;
SIGNAL \delay_high_counter[4]~42_combout\ : std_logic;
SIGNAL \delay_high_counter[4]~43\ : std_logic;
SIGNAL \delay_high_counter[5]~44_combout\ : std_logic;
SIGNAL \delay_high_counter[5]~45\ : std_logic;
SIGNAL \delay_high_counter[6]~46_combout\ : std_logic;
SIGNAL \delay_high_counter[6]~47\ : std_logic;
SIGNAL \delay_high_counter[7]~48_combout\ : std_logic;
SIGNAL \delay_high_counter[7]~49\ : std_logic;
SIGNAL \delay_high_counter[8]~50_combout\ : std_logic;
SIGNAL \delay_high_counter[8]~51\ : std_logic;
SIGNAL \delay_high_counter[9]~52_combout\ : std_logic;
SIGNAL \delay_high_counter[9]~53\ : std_logic;
SIGNAL \delay_high_counter[10]~54_combout\ : std_logic;
SIGNAL \delay_high_counter[10]~55\ : std_logic;
SIGNAL \delay_high_counter[11]~56_combout\ : std_logic;
SIGNAL \delay_high_counter[11]~57\ : std_logic;
SIGNAL \delay_high_counter[12]~58_combout\ : std_logic;
SIGNAL \delay_high_counter[12]~59\ : std_logic;
SIGNAL \delay_high_counter[13]~60_combout\ : std_logic;
SIGNAL \delay_high_counter[13]~61\ : std_logic;
SIGNAL \delay_high_counter[14]~62_combout\ : std_logic;
SIGNAL \delay_high_counter[14]~63\ : std_logic;
SIGNAL \delay_high_counter[15]~64_combout\ : std_logic;
SIGNAL \delay_high_counter[15]~65\ : std_logic;
SIGNAL \delay_high_counter[16]~66_combout\ : std_logic;
SIGNAL \delay_high_counter[16]~67\ : std_logic;
SIGNAL \delay_high_counter[17]~68_combout\ : std_logic;
SIGNAL \delay_high_counter[17]~69\ : std_logic;
SIGNAL \delay_high_counter[18]~70_combout\ : std_logic;
SIGNAL \delay_high_counter[18]~71\ : std_logic;
SIGNAL \delay_high_counter[19]~72_combout\ : std_logic;
SIGNAL \delay_high_counter[19]~73\ : std_logic;
SIGNAL \delay_high_counter[20]~74_combout\ : std_logic;
SIGNAL \delay_high_counter[20]~75\ : std_logic;
SIGNAL \delay_high_counter[21]~76_combout\ : std_logic;
SIGNAL \delay_high_counter[21]~77\ : std_logic;
SIGNAL \delay_high_counter[22]~78_combout\ : std_logic;
SIGNAL \delay_high_counter[22]~79\ : std_logic;
SIGNAL \delay_high_counter[23]~80_combout\ : std_logic;
SIGNAL \delay_high_counter[23]~81\ : std_logic;
SIGNAL \delay_high_counter[24]~82_combout\ : std_logic;
SIGNAL \delay_high_counter[24]~83\ : std_logic;
SIGNAL \delay_high_counter[25]~84_combout\ : std_logic;
SIGNAL \delay_high_counter[25]~85\ : std_logic;
SIGNAL \delay_high_counter[26]~86_combout\ : std_logic;
SIGNAL \delay_high_counter[26]~87\ : std_logic;
SIGNAL \delay_high_counter[27]~88_combout\ : std_logic;
SIGNAL \delay_high_counter[27]~89\ : std_logic;
SIGNAL \delay_high_counter[28]~90_combout\ : std_logic;
SIGNAL \delay_high_counter[28]~91\ : std_logic;
SIGNAL \delay_high_counter[29]~92_combout\ : std_logic;
SIGNAL \delay_high_counter[29]~93\ : std_logic;
SIGNAL \delay_high_counter[30]~94_combout\ : std_logic;
SIGNAL \delay_high_counter[30]~95\ : std_logic;
SIGNAL \delay_high_counter[31]~96_combout\ : std_logic;
SIGNAL \LessThan2~8_combout\ : std_logic;
SIGNAL \LessThan2~9_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \LessThan2~7_combout\ : std_logic;
SIGNAL \LessThan2~10_combout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \state.sending~q\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add3~65_combout\ : std_logic;
SIGNAL \delay_low_counter[27]~0_combout\ : std_logic;
SIGNAL \delay_low_counter[27]~1_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Selector103~2_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add3~66_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Selector101~2_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Selector100~2_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Selector99~2_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add3~67_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add3~68_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Add3~69_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Add3~70_combout\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Add3~71_combout\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Add3~72_combout\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \Add3~73_combout\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \Add3~74_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \Add3~75_combout\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \Add3~76_combout\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \Add3~77_combout\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \Add3~78_combout\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~36_combout\ : std_logic;
SIGNAL \Add3~79_combout\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~38_combout\ : std_logic;
SIGNAL \Add3~80_combout\ : std_logic;
SIGNAL \Add3~39\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \Add3~81_combout\ : std_logic;
SIGNAL \Add3~41\ : std_logic;
SIGNAL \Add3~42_combout\ : std_logic;
SIGNAL \Add3~82_combout\ : std_logic;
SIGNAL \Add3~43\ : std_logic;
SIGNAL \Add3~44_combout\ : std_logic;
SIGNAL \Add3~83_combout\ : std_logic;
SIGNAL \Add3~45\ : std_logic;
SIGNAL \Add3~46_combout\ : std_logic;
SIGNAL \Add3~84_combout\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~48_combout\ : std_logic;
SIGNAL \Add3~85_combout\ : std_logic;
SIGNAL \Add3~49\ : std_logic;
SIGNAL \Add3~50_combout\ : std_logic;
SIGNAL \Add3~86_combout\ : std_logic;
SIGNAL \Add3~51\ : std_logic;
SIGNAL \Add3~52_combout\ : std_logic;
SIGNAL \Add3~87_combout\ : std_logic;
SIGNAL \Add3~53\ : std_logic;
SIGNAL \Add3~54_combout\ : std_logic;
SIGNAL \Add3~88_combout\ : std_logic;
SIGNAL \Add3~55\ : std_logic;
SIGNAL \Add3~56_combout\ : std_logic;
SIGNAL \Add3~89_combout\ : std_logic;
SIGNAL \Add3~57\ : std_logic;
SIGNAL \Add3~58_combout\ : std_logic;
SIGNAL \Add3~90_combout\ : std_logic;
SIGNAL \Add3~59\ : std_logic;
SIGNAL \Add3~60_combout\ : std_logic;
SIGNAL \Add3~91_combout\ : std_logic;
SIGNAL \Add3~61\ : std_logic;
SIGNAL \Add3~62_combout\ : std_logic;
SIGNAL \Add3~64_combout\ : std_logic;
SIGNAL \LessThan3~5_combout\ : std_logic;
SIGNAL \LessThan3~7_combout\ : std_logic;
SIGNAL \LessThan3~6_combout\ : std_logic;
SIGNAL \LessThan3~8_combout\ : std_logic;
SIGNAL \LessThan3~9_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \LessThan3~3_combout\ : std_logic;
SIGNAL \LessThan3~4_combout\ : std_logic;
SIGNAL \LessThan3~10_combout\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \state.send_bit~q\ : std_logic;
SIGNAL \Selector137~0_combout\ : std_logic;
SIGNAL \Selector137~1_combout\ : std_logic;
SIGNAL \serial~reg0_q\ : std_logic;
SIGNAL delay_high_counter : std_logic_vector(31 DOWNTO 0);
SIGNAL index : std_logic_vector(31 DOWNTO 0);
SIGNAL delay_low_counter : std_logic_vector(31 DOWNTO 0);
SIGNAL bit_counter : std_logic_vector(31 DOWNTO 0);
SIGNAL GRB : std_logic_vector(23 DOWNTO 0);
SIGNAL \ALT_INV_state.send_bit~q\ : std_logic;
SIGNAL \ALT_INV_state.load~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
serial <= ww_serial;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_state.send_bit~q\ <= NOT \state.send_bit~q\;
\ALT_INV_state.load~q\ <= NOT \state.load~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X22_Y0_N16
\serial~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \serial~reg0_q\,
	devoe => ww_devoe,
	o => \serial~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G19
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X31_Y24_N0
\index[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[0]~32_combout\ = index(0) $ (VCC)
-- \index[0]~33\ = CARRY(index(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(0),
	datad => VCC,
	combout => \index[0]~32_combout\,
	cout => \index[0]~33\);

-- Location: LCCOMB_X32_Y21_N24
\delay_high_counter[11]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_high_counter[11]~32_combout\ = (\state.sending~q\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.sending~q\,
	datad => \LessThan0~10_combout\,
	combout => \delay_high_counter[11]~32_combout\);

-- Location: LCCOMB_X31_Y21_N14
\bit_counter[4]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_counter[4]~0_combout\ = (!\state.send_bit~q\ & (!\state.reset~q\ & ((!\LessThan0~10_combout\) # (!\state.sending~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.send_bit~q\,
	datab => \state.reset~q\,
	datac => \state.sending~q\,
	datad => \LessThan0~10_combout\,
	combout => \bit_counter[4]~0_combout\);

-- Location: LCCOMB_X31_Y20_N0
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = bit_counter(0) $ (VCC)
-- \Add0~1\ = CARRY(bit_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X32_Y20_N30
\Selector36~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (\Add0~0_combout\ & ((\delay_high_counter[11]~32_combout\) # ((bit_counter(0) & !\bit_counter[4]~0_combout\)))) # (!\Add0~0_combout\ & (bit_counter(0) & ((!\bit_counter[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => bit_counter(0),
	datac => \delay_high_counter[11]~32_combout\,
	datad => \bit_counter[4]~0_combout\,
	combout => \Selector36~0_combout\);

-- Location: FF_X31_Y20_N5
\bit_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector36~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(0));

-- Location: LCCOMB_X31_Y20_N2
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (bit_counter(1) & (\Add0~1\ & VCC)) # (!bit_counter(1) & (!\Add0~1\))
-- \Add0~3\ = CARRY((!bit_counter(1) & !\Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X32_Y20_N20
\Selector35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (\bit_counter[4]~0_combout\ & (\delay_high_counter[11]~32_combout\ & ((\Add0~2_combout\)))) # (!\bit_counter[4]~0_combout\ & ((bit_counter(1)) # ((\delay_high_counter[11]~32_combout\ & \Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_counter[4]~0_combout\,
	datab => \delay_high_counter[11]~32_combout\,
	datac => bit_counter(1),
	datad => \Add0~2_combout\,
	combout => \Selector35~0_combout\);

-- Location: FF_X32_Y20_N21
\bit_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(1));

-- Location: LCCOMB_X31_Y20_N4
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (bit_counter(2) & ((GND) # (!\Add0~3\))) # (!bit_counter(2) & (\Add0~3\ $ (GND)))
-- \Add0~5\ = CARRY((bit_counter(2)) # (!\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X32_Y20_N26
\Selector34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (\bit_counter[4]~0_combout\ & (\delay_high_counter[11]~32_combout\ & ((\Add0~4_combout\)))) # (!\bit_counter[4]~0_combout\ & ((bit_counter(2)) # ((\delay_high_counter[11]~32_combout\ & \Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_counter[4]~0_combout\,
	datab => \delay_high_counter[11]~32_combout\,
	datac => bit_counter(2),
	datad => \Add0~4_combout\,
	combout => \Selector34~0_combout\);

-- Location: FF_X32_Y20_N27
\bit_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector34~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(2));

-- Location: LCCOMB_X31_Y20_N6
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (bit_counter(3) & (\Add0~5\ & VCC)) # (!bit_counter(3) & (!\Add0~5\))
-- \Add0~7\ = CARRY((!bit_counter(3) & !\Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X32_Y20_N4
\Selector33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (\Add0~6_combout\) # (!\state.sending~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~6_combout\,
	datad => \state.sending~q\,
	combout => \Selector33~0_combout\);

-- Location: FF_X32_Y20_N5
\bit_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector33~0_combout\,
	ena => \bit_counter[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(3));

-- Location: LCCOMB_X31_Y20_N8
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (bit_counter(4) & ((GND) # (!\Add0~7\))) # (!bit_counter(4) & (\Add0~7\ $ (GND)))
-- \Add0~9\ = CARRY((bit_counter(4)) # (!\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X32_Y20_N24
\Selector32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (\Add0~8_combout\) # (!\state.sending~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.sending~q\,
	datad => \Add0~8_combout\,
	combout => \Selector32~0_combout\);

-- Location: FF_X32_Y20_N25
\bit_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector32~0_combout\,
	ena => \bit_counter[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(4));

-- Location: LCCOMB_X31_Y20_N10
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (bit_counter(5) & (\Add0~9\ & VCC)) # (!bit_counter(5) & (!\Add0~9\))
-- \Add0~11\ = CARRY((!bit_counter(5) & !\Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X32_Y20_N2
\Selector31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (\bit_counter[4]~0_combout\ & (\delay_high_counter[11]~32_combout\ & ((\Add0~10_combout\)))) # (!\bit_counter[4]~0_combout\ & ((bit_counter(5)) # ((\delay_high_counter[11]~32_combout\ & \Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_counter[4]~0_combout\,
	datab => \delay_high_counter[11]~32_combout\,
	datac => bit_counter(5),
	datad => \Add0~10_combout\,
	combout => \Selector31~0_combout\);

-- Location: FF_X32_Y20_N3
\bit_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(5));

-- Location: LCCOMB_X31_Y20_N12
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (bit_counter(6) & ((GND) # (!\Add0~11\))) # (!bit_counter(6) & (\Add0~11\ $ (GND)))
-- \Add0~13\ = CARRY((bit_counter(6)) # (!\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X32_Y20_N16
\Selector30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (\bit_counter[4]~0_combout\ & (\delay_high_counter[11]~32_combout\ & ((\Add0~12_combout\)))) # (!\bit_counter[4]~0_combout\ & ((bit_counter(6)) # ((\delay_high_counter[11]~32_combout\ & \Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_counter[4]~0_combout\,
	datab => \delay_high_counter[11]~32_combout\,
	datac => bit_counter(6),
	datad => \Add0~12_combout\,
	combout => \Selector30~0_combout\);

-- Location: FF_X32_Y20_N17
\bit_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(6));

-- Location: LCCOMB_X31_Y20_N14
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (bit_counter(7) & (\Add0~13\ & VCC)) # (!bit_counter(7) & (!\Add0~13\))
-- \Add0~15\ = CARRY((!bit_counter(7) & !\Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X32_Y20_N10
\Selector29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\bit_counter[4]~0_combout\ & (\delay_high_counter[11]~32_combout\ & ((\Add0~14_combout\)))) # (!\bit_counter[4]~0_combout\ & ((bit_counter(7)) # ((\delay_high_counter[11]~32_combout\ & \Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_counter[4]~0_combout\,
	datab => \delay_high_counter[11]~32_combout\,
	datac => bit_counter(7),
	datad => \Add0~14_combout\,
	combout => \Selector29~0_combout\);

-- Location: FF_X32_Y20_N11
\bit_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(7));

-- Location: LCCOMB_X31_Y20_N16
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (bit_counter(8) & ((GND) # (!\Add0~15\))) # (!bit_counter(8) & (\Add0~15\ $ (GND)))
-- \Add0~17\ = CARRY((bit_counter(8)) # (!\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X32_Y20_N18
\Selector28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (\bit_counter[4]~0_combout\ & (\delay_high_counter[11]~32_combout\ & ((\Add0~16_combout\)))) # (!\bit_counter[4]~0_combout\ & ((bit_counter(8)) # ((\delay_high_counter[11]~32_combout\ & \Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_counter[4]~0_combout\,
	datab => \delay_high_counter[11]~32_combout\,
	datac => bit_counter(8),
	datad => \Add0~16_combout\,
	combout => \Selector28~0_combout\);

-- Location: FF_X32_Y20_N19
\bit_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(8));

-- Location: LCCOMB_X31_Y20_N18
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (bit_counter(9) & (\Add0~17\ & VCC)) # (!bit_counter(9) & (!\Add0~17\))
-- \Add0~19\ = CARRY((!bit_counter(9) & !\Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X32_Y20_N28
\Selector27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\bit_counter[4]~0_combout\ & (\delay_high_counter[11]~32_combout\ & ((\Add0~18_combout\)))) # (!\bit_counter[4]~0_combout\ & ((bit_counter(9)) # ((\delay_high_counter[11]~32_combout\ & \Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_counter[4]~0_combout\,
	datab => \delay_high_counter[11]~32_combout\,
	datac => bit_counter(9),
	datad => \Add0~18_combout\,
	combout => \Selector27~0_combout\);

-- Location: FF_X32_Y20_N29
\bit_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(9));

-- Location: LCCOMB_X31_Y20_N20
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (bit_counter(10) & ((GND) # (!\Add0~19\))) # (!bit_counter(10) & (\Add0~19\ $ (GND)))
-- \Add0~21\ = CARRY((bit_counter(10)) # (!\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X32_Y20_N22
\Selector26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\bit_counter[4]~0_combout\ & (\delay_high_counter[11]~32_combout\ & ((\Add0~20_combout\)))) # (!\bit_counter[4]~0_combout\ & ((bit_counter(10)) # ((\delay_high_counter[11]~32_combout\ & \Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_counter[4]~0_combout\,
	datab => \delay_high_counter[11]~32_combout\,
	datac => bit_counter(10),
	datad => \Add0~20_combout\,
	combout => \Selector26~0_combout\);

-- Location: FF_X32_Y20_N23
\bit_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(10));

-- Location: LCCOMB_X31_Y20_N22
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (bit_counter(11) & (\Add0~21\ & VCC)) # (!bit_counter(11) & (!\Add0~21\))
-- \Add0~23\ = CARRY((!bit_counter(11) & !\Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X32_Y20_N8
\Selector25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\bit_counter[4]~0_combout\ & (\delay_high_counter[11]~32_combout\ & ((\Add0~22_combout\)))) # (!\bit_counter[4]~0_combout\ & ((bit_counter(11)) # ((\delay_high_counter[11]~32_combout\ & \Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_counter[4]~0_combout\,
	datab => \delay_high_counter[11]~32_combout\,
	datac => bit_counter(11),
	datad => \Add0~22_combout\,
	combout => \Selector25~0_combout\);

-- Location: FF_X32_Y20_N9
\bit_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(11));

-- Location: LCCOMB_X31_Y20_N24
\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (bit_counter(12) & ((GND) # (!\Add0~23\))) # (!bit_counter(12) & (\Add0~23\ $ (GND)))
-- \Add0~25\ = CARRY((bit_counter(12)) # (!\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X32_Y19_N4
\Selector24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\delay_high_counter[11]~32_combout\ & ((\Add0~24_combout\) # ((!\bit_counter[4]~0_combout\ & bit_counter(12))))) # (!\delay_high_counter[11]~32_combout\ & (!\bit_counter[4]~0_combout\ & (bit_counter(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay_high_counter[11]~32_combout\,
	datab => \bit_counter[4]~0_combout\,
	datac => bit_counter(12),
	datad => \Add0~24_combout\,
	combout => \Selector24~0_combout\);

-- Location: FF_X32_Y19_N5
\bit_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(12));

-- Location: LCCOMB_X31_Y20_N26
\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (bit_counter(13) & (\Add0~25\ & VCC)) # (!bit_counter(13) & (!\Add0~25\))
-- \Add0~27\ = CARRY((!bit_counter(13) & !\Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X32_Y19_N6
\Selector23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\delay_high_counter[11]~32_combout\ & ((\Add0~26_combout\) # ((bit_counter(13) & !\bit_counter[4]~0_combout\)))) # (!\delay_high_counter[11]~32_combout\ & (((bit_counter(13) & !\bit_counter[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay_high_counter[11]~32_combout\,
	datab => \Add0~26_combout\,
	datac => bit_counter(13),
	datad => \bit_counter[4]~0_combout\,
	combout => \Selector23~0_combout\);

-- Location: FF_X32_Y19_N7
\bit_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(13));

-- Location: LCCOMB_X31_Y20_N28
\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (bit_counter(14) & ((GND) # (!\Add0~27\))) # (!bit_counter(14) & (\Add0~27\ $ (GND)))
-- \Add0~29\ = CARRY((bit_counter(14)) # (!\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X32_Y19_N20
\Selector22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\delay_high_counter[11]~32_combout\ & ((\Add0~28_combout\) # ((bit_counter(14) & !\bit_counter[4]~0_combout\)))) # (!\delay_high_counter[11]~32_combout\ & (((bit_counter(14) & !\bit_counter[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay_high_counter[11]~32_combout\,
	datab => \Add0~28_combout\,
	datac => bit_counter(14),
	datad => \bit_counter[4]~0_combout\,
	combout => \Selector22~0_combout\);

-- Location: FF_X32_Y19_N21
\bit_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(14));

-- Location: LCCOMB_X31_Y20_N30
\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (bit_counter(15) & (\Add0~29\ & VCC)) # (!bit_counter(15) & (!\Add0~29\))
-- \Add0~31\ = CARRY((!bit_counter(15) & !\Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X32_Y19_N14
\Selector21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\delay_high_counter[11]~32_combout\ & ((\Add0~30_combout\) # ((bit_counter(15) & !\bit_counter[4]~0_combout\)))) # (!\delay_high_counter[11]~32_combout\ & (((bit_counter(15) & !\bit_counter[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay_high_counter[11]~32_combout\,
	datab => \Add0~30_combout\,
	datac => bit_counter(15),
	datad => \bit_counter[4]~0_combout\,
	combout => \Selector21~0_combout\);

-- Location: FF_X32_Y19_N15
\bit_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(15));

-- Location: LCCOMB_X31_Y19_N0
\Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (bit_counter(16) & ((GND) # (!\Add0~31\))) # (!bit_counter(16) & (\Add0~31\ $ (GND)))
-- \Add0~33\ = CARRY((bit_counter(16)) # (!\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X32_Y19_N2
\Selector20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\delay_high_counter[11]~32_combout\ & ((\Add0~32_combout\) # ((!\bit_counter[4]~0_combout\ & bit_counter(16))))) # (!\delay_high_counter[11]~32_combout\ & (!\bit_counter[4]~0_combout\ & (bit_counter(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay_high_counter[11]~32_combout\,
	datab => \bit_counter[4]~0_combout\,
	datac => bit_counter(16),
	datad => \Add0~32_combout\,
	combout => \Selector20~0_combout\);

-- Location: FF_X32_Y19_N3
\bit_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(16));

-- Location: LCCOMB_X31_Y19_N2
\Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (bit_counter(17) & (\Add0~33\ & VCC)) # (!bit_counter(17) & (!\Add0~33\))
-- \Add0~35\ = CARRY((!bit_counter(17) & !\Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X32_Y19_N28
\Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\delay_high_counter[11]~32_combout\ & ((\Add0~34_combout\) # ((bit_counter(17) & !\bit_counter[4]~0_combout\)))) # (!\delay_high_counter[11]~32_combout\ & (((bit_counter(17) & !\bit_counter[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay_high_counter[11]~32_combout\,
	datab => \Add0~34_combout\,
	datac => bit_counter(17),
	datad => \bit_counter[4]~0_combout\,
	combout => \Selector19~0_combout\);

-- Location: FF_X32_Y19_N29
\bit_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(17));

-- Location: LCCOMB_X31_Y19_N4
\Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (bit_counter(18) & ((GND) # (!\Add0~35\))) # (!bit_counter(18) & (\Add0~35\ $ (GND)))
-- \Add0~37\ = CARRY((bit_counter(18)) # (!\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X32_Y19_N30
\Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\delay_high_counter[11]~32_combout\ & ((\Add0~36_combout\) # ((bit_counter(18) & !\bit_counter[4]~0_combout\)))) # (!\delay_high_counter[11]~32_combout\ & (((bit_counter(18) & !\bit_counter[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay_high_counter[11]~32_combout\,
	datab => \Add0~36_combout\,
	datac => bit_counter(18),
	datad => \bit_counter[4]~0_combout\,
	combout => \Selector18~0_combout\);

-- Location: FF_X32_Y19_N31
\bit_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(18));

-- Location: LCCOMB_X31_Y19_N6
\Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (bit_counter(19) & (\Add0~37\ & VCC)) # (!bit_counter(19) & (!\Add0~37\))
-- \Add0~39\ = CARRY((!bit_counter(19) & !\Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X32_Y19_N8
\Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\delay_high_counter[11]~32_combout\ & ((\Add0~38_combout\) # ((bit_counter(19) & !\bit_counter[4]~0_combout\)))) # (!\delay_high_counter[11]~32_combout\ & (((bit_counter(19) & !\bit_counter[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay_high_counter[11]~32_combout\,
	datab => \Add0~38_combout\,
	datac => bit_counter(19),
	datad => \bit_counter[4]~0_combout\,
	combout => \Selector17~0_combout\);

-- Location: FF_X32_Y19_N9
\bit_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(19));

-- Location: LCCOMB_X32_Y19_N22
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (bit_counter(18)) # ((bit_counter(17)) # ((bit_counter(19)) # (bit_counter(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(18),
	datab => bit_counter(17),
	datac => bit_counter(19),
	datad => bit_counter(16),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X31_Y19_N8
\Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (bit_counter(20) & ((GND) # (!\Add0~39\))) # (!bit_counter(20) & (\Add0~39\ $ (GND)))
-- \Add0~41\ = CARRY((bit_counter(20)) # (!\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X32_Y19_N24
\Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\delay_high_counter[11]~32_combout\ & ((\Add0~40_combout\) # ((bit_counter(20) & !\bit_counter[4]~0_combout\)))) # (!\delay_high_counter[11]~32_combout\ & (((bit_counter(20) & !\bit_counter[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay_high_counter[11]~32_combout\,
	datab => \Add0~40_combout\,
	datac => bit_counter(20),
	datad => \bit_counter[4]~0_combout\,
	combout => \Selector16~0_combout\);

-- Location: FF_X32_Y19_N25
\bit_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(20));

-- Location: LCCOMB_X31_Y19_N10
\Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (bit_counter(21) & (\Add0~41\ & VCC)) # (!bit_counter(21) & (!\Add0~41\))
-- \Add0~43\ = CARRY((!bit_counter(21) & !\Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X32_Y19_N26
\Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\delay_high_counter[11]~32_combout\ & ((\Add0~42_combout\) # ((!\bit_counter[4]~0_combout\ & bit_counter(21))))) # (!\delay_high_counter[11]~32_combout\ & (!\bit_counter[4]~0_combout\ & (bit_counter(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay_high_counter[11]~32_combout\,
	datab => \bit_counter[4]~0_combout\,
	datac => bit_counter(21),
	datad => \Add0~42_combout\,
	combout => \Selector15~0_combout\);

-- Location: FF_X32_Y19_N27
\bit_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(21));

-- Location: LCCOMB_X31_Y19_N12
\Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (bit_counter(22) & ((GND) # (!\Add0~43\))) # (!bit_counter(22) & (\Add0~43\ $ (GND)))
-- \Add0~45\ = CARRY((bit_counter(22)) # (!\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X32_Y19_N16
\Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\delay_high_counter[11]~32_combout\ & ((\Add0~44_combout\) # ((!\bit_counter[4]~0_combout\ & bit_counter(22))))) # (!\delay_high_counter[11]~32_combout\ & (!\bit_counter[4]~0_combout\ & (bit_counter(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay_high_counter[11]~32_combout\,
	datab => \bit_counter[4]~0_combout\,
	datac => bit_counter(22),
	datad => \Add0~44_combout\,
	combout => \Selector14~0_combout\);

-- Location: FF_X32_Y19_N17
\bit_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(22));

-- Location: LCCOMB_X31_Y19_N14
\Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (bit_counter(23) & (\Add0~45\ & VCC)) # (!bit_counter(23) & (!\Add0~45\))
-- \Add0~47\ = CARRY((!bit_counter(23) & !\Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X32_Y19_N10
\Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\delay_high_counter[11]~32_combout\ & ((\Add0~46_combout\) # ((!\bit_counter[4]~0_combout\ & bit_counter(23))))) # (!\delay_high_counter[11]~32_combout\ & (!\bit_counter[4]~0_combout\ & (bit_counter(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay_high_counter[11]~32_combout\,
	datab => \bit_counter[4]~0_combout\,
	datac => bit_counter(23),
	datad => \Add0~46_combout\,
	combout => \Selector13~0_combout\);

-- Location: FF_X32_Y19_N11
\bit_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(23));

-- Location: LCCOMB_X32_Y19_N12
\LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (bit_counter(23)) # ((bit_counter(20)) # ((bit_counter(21)) # (bit_counter(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(23),
	datab => bit_counter(20),
	datac => bit_counter(21),
	datad => bit_counter(22),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X31_Y19_N16
\Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (bit_counter(24) & ((GND) # (!\Add0~47\))) # (!bit_counter(24) & (\Add0~47\ $ (GND)))
-- \Add0~49\ = CARRY((bit_counter(24)) # (!\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X31_Y21_N24
\Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\bit_counter[4]~0_combout\ & (\delay_high_counter[11]~32_combout\ & ((\Add0~48_combout\)))) # (!\bit_counter[4]~0_combout\ & ((bit_counter(24)) # ((\delay_high_counter[11]~32_combout\ & \Add0~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_counter[4]~0_combout\,
	datab => \delay_high_counter[11]~32_combout\,
	datac => bit_counter(24),
	datad => \Add0~48_combout\,
	combout => \Selector12~0_combout\);

-- Location: FF_X31_Y21_N25
\bit_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(24));

-- Location: LCCOMB_X31_Y19_N18
\Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (bit_counter(25) & (\Add0~49\ & VCC)) # (!bit_counter(25) & (!\Add0~49\))
-- \Add0~51\ = CARRY((!bit_counter(25) & !\Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X31_Y21_N22
\Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\bit_counter[4]~0_combout\ & (\delay_high_counter[11]~32_combout\ & ((\Add0~50_combout\)))) # (!\bit_counter[4]~0_combout\ & ((bit_counter(25)) # ((\delay_high_counter[11]~32_combout\ & \Add0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_counter[4]~0_combout\,
	datab => \delay_high_counter[11]~32_combout\,
	datac => bit_counter(25),
	datad => \Add0~50_combout\,
	combout => \Selector11~0_combout\);

-- Location: FF_X31_Y21_N23
\bit_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(25));

-- Location: LCCOMB_X31_Y19_N20
\Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (bit_counter(26) & ((GND) # (!\Add0~51\))) # (!bit_counter(26) & (\Add0~51\ $ (GND)))
-- \Add0~53\ = CARRY((bit_counter(26)) # (!\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X31_Y21_N12
\Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\bit_counter[4]~0_combout\ & (\Add0~52_combout\ & ((\delay_high_counter[11]~32_combout\)))) # (!\bit_counter[4]~0_combout\ & ((bit_counter(26)) # ((\Add0~52_combout\ & \delay_high_counter[11]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_counter[4]~0_combout\,
	datab => \Add0~52_combout\,
	datac => bit_counter(26),
	datad => \delay_high_counter[11]~32_combout\,
	combout => \Selector10~0_combout\);

-- Location: FF_X31_Y21_N13
\bit_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(26));

-- Location: LCCOMB_X31_Y19_N22
\Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (bit_counter(27) & (\Add0~53\ & VCC)) # (!bit_counter(27) & (!\Add0~53\))
-- \Add0~55\ = CARRY((!bit_counter(27) & !\Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X31_Y21_N10
\Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\Add0~54_combout\ & ((\delay_high_counter[11]~32_combout\) # ((!\bit_counter[4]~0_combout\ & bit_counter(27))))) # (!\Add0~54_combout\ & (!\bit_counter[4]~0_combout\ & (bit_counter(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~54_combout\,
	datab => \bit_counter[4]~0_combout\,
	datac => bit_counter(27),
	datad => \delay_high_counter[11]~32_combout\,
	combout => \Selector9~0_combout\);

-- Location: FF_X31_Y21_N11
\bit_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(27));

-- Location: LCCOMB_X31_Y19_N24
\Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (bit_counter(28) & ((GND) # (!\Add0~55\))) # (!bit_counter(28) & (\Add0~55\ $ (GND)))
-- \Add0~57\ = CARRY((bit_counter(28)) # (!\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X31_Y21_N18
\Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\bit_counter[4]~0_combout\ & (\delay_high_counter[11]~32_combout\ & ((\Add0~56_combout\)))) # (!\bit_counter[4]~0_combout\ & ((bit_counter(28)) # ((\delay_high_counter[11]~32_combout\ & \Add0~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_counter[4]~0_combout\,
	datab => \delay_high_counter[11]~32_combout\,
	datac => bit_counter(28),
	datad => \Add0~56_combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X31_Y21_N19
\bit_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(28));

-- Location: LCCOMB_X31_Y19_N26
\Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (bit_counter(29) & (\Add0~57\ & VCC)) # (!bit_counter(29) & (!\Add0~57\))
-- \Add0~59\ = CARRY((!bit_counter(29) & !\Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X31_Y21_N8
\Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\bit_counter[4]~0_combout\ & (\delay_high_counter[11]~32_combout\ & ((\Add0~58_combout\)))) # (!\bit_counter[4]~0_combout\ & ((bit_counter(29)) # ((\delay_high_counter[11]~32_combout\ & \Add0~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_counter[4]~0_combout\,
	datab => \delay_high_counter[11]~32_combout\,
	datac => bit_counter(29),
	datad => \Add0~58_combout\,
	combout => \Selector7~0_combout\);

-- Location: FF_X31_Y21_N9
\bit_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(29));

-- Location: LCCOMB_X31_Y19_N28
\Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (bit_counter(30) & ((GND) # (!\Add0~59\))) # (!bit_counter(30) & (\Add0~59\ $ (GND)))
-- \Add0~61\ = CARRY((bit_counter(30)) # (!\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X31_Y21_N6
\Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\Add0~60_combout\ & ((\delay_high_counter[11]~32_combout\) # ((!\bit_counter[4]~0_combout\ & bit_counter(30))))) # (!\Add0~60_combout\ & (!\bit_counter[4]~0_combout\ & (bit_counter(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~60_combout\,
	datab => \bit_counter[4]~0_combout\,
	datac => bit_counter(30),
	datad => \delay_high_counter[11]~32_combout\,
	combout => \Selector6~0_combout\);

-- Location: FF_X31_Y21_N7
\bit_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(30));

-- Location: LCCOMB_X31_Y21_N20
\LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (bit_counter(27)) # ((bit_counter(24)) # ((bit_counter(25)) # (bit_counter(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(27),
	datab => bit_counter(24),
	datac => bit_counter(25),
	datad => bit_counter(26),
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X31_Y21_N16
\LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (bit_counter(30)) # ((bit_counter(28)) # ((bit_counter(29)) # (\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(30),
	datab => bit_counter(28),
	datac => bit_counter(29),
	datad => \LessThan0~8_combout\,
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X32_Y20_N12
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (bit_counter(7)) # ((bit_counter(4)) # ((bit_counter(6)) # (bit_counter(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(7),
	datab => bit_counter(4),
	datac => bit_counter(6),
	datad => bit_counter(5),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X32_Y20_N14
\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (bit_counter(10)) # ((bit_counter(9)) # ((bit_counter(11)) # (bit_counter(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(10),
	datab => bit_counter(9),
	datac => bit_counter(11),
	datad => bit_counter(8),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X32_Y19_N0
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (bit_counter(13)) # ((bit_counter(15)) # ((bit_counter(12)) # (bit_counter(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(13),
	datab => bit_counter(15),
	datac => bit_counter(12),
	datad => bit_counter(14),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X32_Y20_N6
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (bit_counter(2)) # ((bit_counter(3)) # ((bit_counter(0)) # (bit_counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(2),
	datab => bit_counter(3),
	datac => bit_counter(0),
	datad => bit_counter(1),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X32_Y20_N0
\LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~1_combout\) # ((\LessThan0~2_combout\) # ((\LessThan0~3_combout\) # (\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \LessThan0~2_combout\,
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X34_Y19_N28
\LessThan0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~11_combout\ = (\LessThan0~5_combout\) # ((\LessThan0~6_combout\) # ((\LessThan0~9_combout\) # (\LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~5_combout\,
	datab => \LessThan0~6_combout\,
	datac => \LessThan0~9_combout\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~11_combout\);

-- Location: LCCOMB_X31_Y19_N30
\Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \Add0~61\ $ (!bit_counter(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => bit_counter(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X34_Y19_N18
\Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (bit_counter(31) & ((\state.sending~q\) # ((\state.send_bit~q\) # (\state.reset~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.sending~q\,
	datab => \state.send_bit~q\,
	datac => \state.reset~q\,
	datad => bit_counter(31),
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X34_Y19_N4
\Selector5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\Selector5~0_combout\) # ((\state.sending~q\ & (\LessThan0~11_combout\ & \Add0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.sending~q\,
	datab => \LessThan0~11_combout\,
	datac => \Add0~62_combout\,
	datad => \Selector5~0_combout\,
	combout => \Selector5~1_combout\);

-- Location: FF_X34_Y19_N5
\bit_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(31));

-- Location: LCCOMB_X32_Y19_N18
\LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (\LessThan0~5_combout\) # (\LessThan0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~5_combout\,
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X32_Y21_N18
\LessThan0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = (bit_counter(31)) # ((!\LessThan0~7_combout\ & (!\LessThan0~9_combout\ & !\LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(31),
	datab => \LessThan0~7_combout\,
	datac => \LessThan0~9_combout\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~10_combout\);

-- Location: LCCOMB_X32_Y21_N4
\Selector40~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (!\LessThan1~10_combout\ & \LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~10_combout\,
	datad => \LessThan0~10_combout\,
	combout => \Selector40~0_combout\);

-- Location: FF_X32_Y21_N5
\state.reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector40~0_combout\,
	ena => \state.sending~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.reset~q\);

-- Location: LCCOMB_X32_Y21_N26
\delay_low_counter[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_low_counter[5]~2_combout\ = (\state.sending~q\ & \LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.sending~q\,
	datad => \LessThan0~10_combout\,
	combout => \delay_low_counter[5]~2_combout\);

-- Location: LCCOMB_X32_Y21_N30
\index[29]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[29]~96_combout\ = (\LessThan3~10_combout\ & ((\state.reset~q\) # ((\delay_low_counter[5]~2_combout\ & \LessThan1~10_combout\)))) # (!\LessThan3~10_combout\ & (((\delay_low_counter[5]~2_combout\ & \LessThan1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~10_combout\,
	datab => \state.reset~q\,
	datac => \delay_low_counter[5]~2_combout\,
	datad => \LessThan1~10_combout\,
	combout => \index[29]~96_combout\);

-- Location: FF_X31_Y24_N1
\index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \index[0]~32_combout\,
	sclr => \state.reset~q\,
	ena => \index[29]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(0));

-- Location: LCCOMB_X31_Y24_N2
\index[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[1]~34_combout\ = (index(1) & (!\index[0]~33\)) # (!index(1) & ((\index[0]~33\) # (GND)))
-- \index[1]~35\ = CARRY((!\index[0]~33\) # (!index(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => index(1),
	datad => VCC,
	cin => \index[0]~33\,
	combout => \index[1]~34_combout\,
	cout => \index[1]~35\);

-- Location: FF_X31_Y24_N3
\index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \index[1]~34_combout\,
	sclr => \state.reset~q\,
	ena => \index[29]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(1));

-- Location: LCCOMB_X31_Y24_N4
\index[2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[2]~36_combout\ = (index(2) & (\index[1]~35\ $ (GND))) # (!index(2) & (!\index[1]~35\ & VCC))
-- \index[2]~37\ = CARRY((index(2) & !\index[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => index(2),
	datad => VCC,
	cin => \index[1]~35\,
	combout => \index[2]~36_combout\,
	cout => \index[2]~37\);

-- Location: FF_X31_Y24_N5
\index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \index[2]~36_combout\,
	sclr => \state.reset~q\,
	ena => \index[29]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(2));

-- Location: LCCOMB_X31_Y24_N6
\index[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[3]~38_combout\ = (index(3) & (!\index[2]~37\)) # (!index(3) & ((\index[2]~37\) # (GND)))
-- \index[3]~39\ = CARRY((!\index[2]~37\) # (!index(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => index(3),
	datad => VCC,
	cin => \index[2]~37\,
	combout => \index[3]~38_combout\,
	cout => \index[3]~39\);

-- Location: FF_X31_Y24_N7
\index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \index[3]~38_combout\,
	sclr => \state.reset~q\,
	ena => \index[29]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(3));

-- Location: LCCOMB_X31_Y24_N8
\index[4]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[4]~40_combout\ = (index(4) & (\index[3]~39\ $ (GND))) # (!index(4) & (!\index[3]~39\ & VCC))
-- \index[4]~41\ = CARRY((index(4) & !\index[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => index(4),
	datad => VCC,
	cin => \index[3]~39\,
	combout => \index[4]~40_combout\,
	cout => \index[4]~41\);

-- Location: FF_X31_Y24_N9
\index[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \index[4]~40_combout\,
	sclr => \state.reset~q\,
	ena => \index[29]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(4));

-- Location: LCCOMB_X31_Y24_N10
\index[5]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[5]~42_combout\ = (index(5) & (!\index[4]~41\)) # (!index(5) & ((\index[4]~41\) # (GND)))
-- \index[5]~43\ = CARRY((!\index[4]~41\) # (!index(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => index(5),
	datad => VCC,
	cin => \index[4]~41\,
	combout => \index[5]~42_combout\,
	cout => \index[5]~43\);

-- Location: FF_X31_Y24_N11
\index[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \index[5]~42_combout\,
	sclr => \state.reset~q\,
	ena => \index[29]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(5));

-- Location: LCCOMB_X31_Y24_N12
\index[6]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[6]~44_combout\ = (index(6) & (\index[5]~43\ $ (GND))) # (!index(6) & (!\index[5]~43\ & VCC))
-- \index[6]~45\ = CARRY((index(6) & !\index[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datad => VCC,
	cin => \index[5]~43\,
	combout => \index[6]~44_combout\,
	cout => \index[6]~45\);

-- Location: FF_X31_Y24_N13
\index[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \index[6]~44_combout\,
	sclr => \state.reset~q\,
	ena => \index[29]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(6));

-- Location: LCCOMB_X31_Y24_N14
\index[7]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[7]~46_combout\ = (index(7) & (!\index[6]~45\)) # (!index(7) & ((\index[6]~45\) # (GND)))
-- \index[7]~47\ = CARRY((!\index[6]~45\) # (!index(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => index(7),
	datad => VCC,
	cin => \index[6]~45\,
	combout => \index[7]~46_combout\,
	cout => \index[7]~47\);

-- Location: FF_X31_Y24_N15
\index[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \index[7]~46_combout\,
	sclr => \state.reset~q\,
	ena => \index[29]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(7));

-- Location: LCCOMB_X31_Y24_N16
\index[8]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[8]~48_combout\ = (index(8) & (\index[7]~47\ $ (GND))) # (!index(8) & (!\index[7]~47\ & VCC))
-- \index[8]~49\ = CARRY((index(8) & !\index[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => index(8),
	datad => VCC,
	cin => \index[7]~47\,
	combout => \index[8]~48_combout\,
	cout => \index[8]~49\);

-- Location: FF_X31_Y24_N17
\index[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \index[8]~48_combout\,
	sclr => \state.reset~q\,
	ena => \index[29]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(8));

-- Location: LCCOMB_X31_Y24_N18
\index[9]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[9]~50_combout\ = (index(9) & (!\index[8]~49\)) # (!index(9) & ((\index[8]~49\) # (GND)))
-- \index[9]~51\ = CARRY((!\index[8]~49\) # (!index(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => index(9),
	datad => VCC,
	cin => \index[8]~49\,
	combout => \index[9]~50_combout\,
	cout => \index[9]~51\);

-- Location: FF_X31_Y24_N19
\index[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \index[9]~50_combout\,
	sclr => \state.reset~q\,
	ena => \index[29]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(9));

-- Location: LCCOMB_X31_Y24_N20
\index[10]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[10]~52_combout\ = (index(10) & (\index[9]~51\ $ (GND))) # (!index(10) & (!\index[9]~51\ & VCC))
-- \index[10]~53\ = CARRY((index(10) & !\index[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => index(10),
	datad => VCC,
	cin => \index[9]~51\,
	combout => \index[10]~52_combout\,
	cout => \index[10]~53\);

-- Location: FF_X31_Y24_N21
\index[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \index[10]~52_combout\,
	sclr => \state.reset~q\,
	ena => \index[29]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(10));

-- Location: LCCOMB_X31_Y24_N22
\index[11]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[11]~54_combout\ = (index(11) & (!\index[10]~53\)) # (!index(11) & ((\index[10]~53\) # (GND)))
-- \index[11]~55\ = CARRY((!\index[10]~53\) # (!index(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => index(11),
	datad => VCC,
	cin => \index[10]~53\,
	combout => \index[11]~54_combout\,
	cout => \index[11]~55\);

-- Location: FF_X31_Y24_N23
\index[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \index[11]~54_combout\,
	sclr => \state.reset~q\,
	ena => \index[29]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(11));

-- Location: LCCOMB_X31_Y24_N24
\index[12]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[12]~56_combout\ = (index(12) & (\index[11]~55\ $ (GND))) # (!index(12) & (!\index[11]~55\ & VCC))
-- \index[12]~57\ = CARRY((index(12) & !\index[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => index(12),
	datad => VCC,
	cin => \index[11]~55\,
	combout => \index[12]~56_combout\,
	cout => \index[12]~57\);

-- Location: FF_X31_Y24_N25
\index[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \index[12]~56_combout\,
	sclr => \state.reset~q\,
	ena => \index[29]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(12));

-- Location: LCCOMB_X31_Y24_N26
\index[13]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[13]~58_combout\ = (index(13) & (!\index[12]~57\)) # (!index(13) & ((\index[12]~57\) # (GND)))
-- \index[13]~59\ = CARRY((!\index[12]~57\) # (!index(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => index(13),
	datad => VCC,
	cin => \index[12]~57\,
	combout => \index[13]~58_combout\,
	cout => \index[13]~59\);

-- Location: FF_X31_Y24_N27
\index[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \index[13]~58_combout\,
	sclr => \state.reset~q\,
	ena => \index[29]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(13));

-- Location: LCCOMB_X31_Y24_N28
\index[14]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[14]~60_combout\ = (index(14) & (\index[13]~59\ $ (GND))) # (!index(14) & (!\index[13]~59\ & VCC))
-- \index[14]~61\ = CARRY((index(14) & !\index[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => index(14),
	datad => VCC,
	cin => \index[13]~59\,
	combout => \index[14]~60_combout\,
	cout => \index[14]~61\);

-- Location: FF_X31_Y24_N29
\index[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \index[14]~60_combout\,
	sclr => \state.reset~q\,
	ena => \index[29]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(14));

-- Location: LCCOMB_X31_Y24_N30
\index[15]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[15]~62_combout\ = (index(15) & (!\index[14]~61\)) # (!index(15) & ((\index[14]~61\) # (GND)))
-- \index[15]~63\ = CARRY((!\index[14]~61\) # (!index(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => index(15),
	datad => VCC,
	cin => \index[14]~61\,
	combout => \index[15]~62_combout\,
	cout => \index[15]~63\);

-- Location: FF_X31_Y24_N31
\index[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \index[15]~62_combout\,
	sclr => \state.reset~q\,
	ena => \index[29]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(15));

-- Location: LCCOMB_X31_Y23_N0
\index[16]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[16]~64_combout\ = (index(16) & (\index[15]~63\ $ (GND))) # (!index(16) & (!\index[15]~63\ & VCC))
-- \index[16]~65\ = CARRY((index(16) & !\index[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => index(16),
	datad => VCC,
	cin => \index[15]~63\,
	combout => \index[16]~64_combout\,
	cout => \index[16]~65\);

-- Location: FF_X31_Y23_N1
\index[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \index[16]~64_combout\,
	sclr => \state.reset~q\,
	ena => \index[29]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(16));

-- Location: LCCOMB_X31_Y23_N2
\index[17]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[17]~66_combout\ = (index(17) & (!\index[16]~65\)) # (!index(17) & ((\index[16]~65\) # (GND)))
-- \index[17]~67\ = CARRY((!\index[16]~65\) # (!index(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => index(17),
	datad => VCC,
	cin => \index[16]~65\,
	combout => \index[17]~66_combout\,
	cout => \index[17]~67\);

-- Location: FF_X31_Y23_N3
\index[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \index[17]~66_combout\,
	sclr => \state.reset~q\,
	ena => \index[29]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(17));

-- Location: LCCOMB_X31_Y23_N4
\index[18]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[18]~68_combout\ = (index(18) & (\index[17]~67\ $ (GND))) # (!index(18) & (!\index[17]~67\ & VCC))
-- \index[18]~69\ = CARRY((index(18) & !\index[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => index(18),
	datad => VCC,
	cin => \index[17]~67\,
	combout => \index[18]~68_combout\,
	cout => \index[18]~69\);

-- Location: FF_X31_Y23_N5
\index[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \index[18]~68_combout\,
	sclr => \state.reset~q\,
	ena => \index[29]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(18));

-- Location: LCCOMB_X31_Y23_N6
\index[19]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[19]~70_combout\ = (index(19) & (!\index[18]~69\)) # (!index(19) & ((\index[18]~69\) # (GND)))
-- \index[19]~71\ = CARRY((!\index[18]~69\) # (!index(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => index(19),
	datad => VCC,
	cin => \index[18]~69\,
	combout => \index[19]~70_combout\,
	cout => \index[19]~71\);

-- Location: FF_X31_Y23_N7
\index[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \index[19]~70_combout\,
	sclr => \state.reset~q\,
	ena => \index[29]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(19));

-- Location: LCCOMB_X31_Y23_N8
\index[20]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[20]~72_combout\ = (index(20) & (\index[19]~71\ $ (GND))) # (!index(20) & (!\index[19]~71\ & VCC))
-- \index[20]~73\ = CARRY((index(20) & !\index[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => index(20),
	datad => VCC,
	cin => \index[19]~71\,
	combout => \index[20]~72_combout\,
	cout => \index[20]~73\);

-- Location: FF_X31_Y23_N9
\index[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \index[20]~72_combout\,
	sclr => \state.reset~q\,
	ena => \index[29]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(20));

-- Location: LCCOMB_X31_Y23_N10
\index[21]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[21]~74_combout\ = (index(21) & (!\index[20]~73\)) # (!index(21) & ((\index[20]~73\) # (GND)))
-- \index[21]~75\ = CARRY((!\index[20]~73\) # (!index(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => index(21),
	datad => VCC,
	cin => \index[20]~73\,
	combout => \index[21]~74_combout\,
	cout => \index[21]~75\);

-- Location: FF_X31_Y23_N11
\index[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \index[21]~74_combout\,
	sclr => \state.reset~q\,
	ena => \index[29]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(21));

-- Location: LCCOMB_X31_Y23_N12
\index[22]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[22]~76_combout\ = (index(22) & (\index[21]~75\ $ (GND))) # (!index(22) & (!\index[21]~75\ & VCC))
-- \index[22]~77\ = CARRY((index(22) & !\index[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => index(22),
	datad => VCC,
	cin => \index[21]~75\,
	combout => \index[22]~76_combout\,
	cout => \index[22]~77\);

-- Location: FF_X31_Y23_N13
\index[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \index[22]~76_combout\,
	sclr => \state.reset~q\,
	ena => \index[29]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(22));

-- Location: LCCOMB_X31_Y23_N14
\index[23]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[23]~78_combout\ = (index(23) & (!\index[22]~77\)) # (!index(23) & ((\index[22]~77\) # (GND)))
-- \index[23]~79\ = CARRY((!\index[22]~77\) # (!index(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => index(23),
	datad => VCC,
	cin => \index[22]~77\,
	combout => \index[23]~78_combout\,
	cout => \index[23]~79\);

-- Location: FF_X31_Y23_N15
\index[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \index[23]~78_combout\,
	sclr => \state.reset~q\,
	ena => \index[29]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(23));

-- Location: LCCOMB_X31_Y23_N16
\index[24]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[24]~80_combout\ = (index(24) & (\index[23]~79\ $ (GND))) # (!index(24) & (!\index[23]~79\ & VCC))
-- \index[24]~81\ = CARRY((index(24) & !\index[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => index(24),
	datad => VCC,
	cin => \index[23]~79\,
	combout => \index[24]~80_combout\,
	cout => \index[24]~81\);

-- Location: FF_X31_Y23_N17
\index[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \index[24]~80_combout\,
	sclr => \state.reset~q\,
	ena => \index[29]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(24));

-- Location: LCCOMB_X31_Y23_N18
\index[25]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[25]~82_combout\ = (index(25) & (!\index[24]~81\)) # (!index(25) & ((\index[24]~81\) # (GND)))
-- \index[25]~83\ = CARRY((!\index[24]~81\) # (!index(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => index(25),
	datad => VCC,
	cin => \index[24]~81\,
	combout => \index[25]~82_combout\,
	cout => \index[25]~83\);

-- Location: FF_X31_Y23_N19
\index[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \index[25]~82_combout\,
	sclr => \state.reset~q\,
	ena => \index[29]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(25));

-- Location: LCCOMB_X31_Y23_N20
\index[26]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[26]~84_combout\ = (index(26) & (\index[25]~83\ $ (GND))) # (!index(26) & (!\index[25]~83\ & VCC))
-- \index[26]~85\ = CARRY((index(26) & !\index[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => index(26),
	datad => VCC,
	cin => \index[25]~83\,
	combout => \index[26]~84_combout\,
	cout => \index[26]~85\);

-- Location: FF_X31_Y23_N21
\index[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \index[26]~84_combout\,
	sclr => \state.reset~q\,
	ena => \index[29]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(26));

-- Location: LCCOMB_X31_Y23_N22
\index[27]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[27]~86_combout\ = (index(27) & (!\index[26]~85\)) # (!index(27) & ((\index[26]~85\) # (GND)))
-- \index[27]~87\ = CARRY((!\index[26]~85\) # (!index(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => index(27),
	datad => VCC,
	cin => \index[26]~85\,
	combout => \index[27]~86_combout\,
	cout => \index[27]~87\);

-- Location: FF_X31_Y23_N23
\index[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \index[27]~86_combout\,
	sclr => \state.reset~q\,
	ena => \index[29]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(27));

-- Location: LCCOMB_X31_Y23_N24
\index[28]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[28]~88_combout\ = (index(28) & (\index[27]~87\ $ (GND))) # (!index(28) & (!\index[27]~87\ & VCC))
-- \index[28]~89\ = CARRY((index(28) & !\index[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => index(28),
	datad => VCC,
	cin => \index[27]~87\,
	combout => \index[28]~88_combout\,
	cout => \index[28]~89\);

-- Location: FF_X31_Y23_N25
\index[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \index[28]~88_combout\,
	sclr => \state.reset~q\,
	ena => \index[29]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(28));

-- Location: LCCOMB_X31_Y23_N26
\index[29]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[29]~90_combout\ = (index(29) & (!\index[28]~89\)) # (!index(29) & ((\index[28]~89\) # (GND)))
-- \index[29]~91\ = CARRY((!\index[28]~89\) # (!index(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => index(29),
	datad => VCC,
	cin => \index[28]~89\,
	combout => \index[29]~90_combout\,
	cout => \index[29]~91\);

-- Location: FF_X31_Y23_N27
\index[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \index[29]~90_combout\,
	sclr => \state.reset~q\,
	ena => \index[29]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(29));

-- Location: LCCOMB_X31_Y23_N28
\index[30]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[30]~92_combout\ = (index(30) & (\index[29]~91\ $ (GND))) # (!index(30) & (!\index[29]~91\ & VCC))
-- \index[30]~93\ = CARRY((index(30) & !\index[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => index(30),
	datad => VCC,
	cin => \index[29]~91\,
	combout => \index[30]~92_combout\,
	cout => \index[30]~93\);

-- Location: FF_X31_Y23_N29
\index[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \index[30]~92_combout\,
	sclr => \state.reset~q\,
	ena => \index[29]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(30));

-- Location: LCCOMB_X32_Y23_N24
\LessThan1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (!index(29) & !index(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => index(29),
	datad => index(30),
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X31_Y23_N30
\index[31]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[31]~94_combout\ = index(31) $ (\index[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => index(31),
	cin => \index[30]~93\,
	combout => \index[31]~94_combout\);

-- Location: FF_X31_Y23_N31
\index[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \index[31]~94_combout\,
	sclr => \state.reset~q\,
	ena => \index[29]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(31));

-- Location: LCCOMB_X32_Y23_N10
\LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (!index(15) & (!index(16) & (!index(14) & !index(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(15),
	datab => index(16),
	datac => index(14),
	datad => index(13),
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X32_Y23_N4
\LessThan1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = (!index(20) & (!index(18) & (!index(19) & !index(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(20),
	datab => index(18),
	datac => index(19),
	datad => index(17),
	combout => \LessThan1~6_combout\);

-- Location: LCCOMB_X32_Y23_N30
\LessThan1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~7_combout\ = (!index(22) & (!index(21) & (!index(24) & !index(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(22),
	datab => index(21),
	datac => index(24),
	datad => index(23),
	combout => \LessThan1~7_combout\);

-- Location: LCCOMB_X32_Y23_N28
\LessThan1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~8_combout\ = (!index(26) & (!index(28) & (!index(27) & !index(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(26),
	datab => index(28),
	datac => index(27),
	datad => index(25),
	combout => \LessThan1~8_combout\);

-- Location: LCCOMB_X32_Y23_N6
\LessThan1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~9_combout\ = (\LessThan1~5_combout\ & (\LessThan1~6_combout\ & (\LessThan1~7_combout\ & \LessThan1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~5_combout\,
	datab => \LessThan1~6_combout\,
	datac => \LessThan1~7_combout\,
	datad => \LessThan1~8_combout\,
	combout => \LessThan1~9_combout\);

-- Location: LCCOMB_X32_Y24_N2
\LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (!index(10) & (!index(9) & (!index(12) & !index(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(10),
	datab => index(9),
	datac => index(12),
	datad => index(11),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X32_Y24_N28
\LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (!index(3) & (((!index(1)) # (!index(2))) # (!index(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(0),
	datab => index(2),
	datac => index(3),
	datad => index(1),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X32_Y24_N0
\LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!index(6) & (!index(7) & (!index(8) & !index(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datab => index(7),
	datac => index(8),
	datad => index(5),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X32_Y24_N26
\LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (\LessThan1~1_combout\ & (\LessThan1~0_combout\ & ((\LessThan1~2_combout\) # (!index(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => \LessThan1~1_combout\,
	datac => \LessThan1~2_combout\,
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X32_Y21_N20
\LessThan1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~10_combout\ = (index(31)) # ((\LessThan1~4_combout\ & (\LessThan1~9_combout\ & \LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~4_combout\,
	datab => index(31),
	datac => \LessThan1~9_combout\,
	datad => \LessThan1~3_combout\,
	combout => \LessThan1~10_combout\);

-- Location: LCCOMB_X32_Y21_N12
\Selector37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = ((!\LessThan0~10_combout\) # (!\state.sending~q\)) # (!\LessThan1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~10_combout\,
	datac => \state.sending~q\,
	datad => \LessThan0~10_combout\,
	combout => \Selector37~0_combout\);

-- Location: FF_X32_Y21_N13
\state.load\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.load~q\);

-- Location: LCCOMB_X34_Y22_N0
\delay_high_counter[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_high_counter[0]~33_combout\ = delay_high_counter(0) $ (VCC)
-- \delay_high_counter[0]~34\ = CARRY(delay_high_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => delay_high_counter(0),
	datad => VCC,
	combout => \delay_high_counter[0]~33_combout\,
	cout => \delay_high_counter[0]~34\);

-- Location: LCCOMB_X35_Y22_N0
\delay_high_counter[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_high_counter[0]~feeder_combout\ = \delay_high_counter[0]~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay_high_counter[0]~33_combout\,
	combout => \delay_high_counter[0]~feeder_combout\);

-- Location: LCCOMB_X32_Y21_N2
\delay_high_counter[11]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_high_counter[11]~35_combout\ = (\state.send_bit~q\ & ((\LessThan2~10_combout\) # ((\state.sending~q\ & !\LessThan0~10_combout\)))) # (!\state.send_bit~q\ & (\state.sending~q\ & ((!\LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.send_bit~q\,
	datab => \state.sending~q\,
	datac => \LessThan2~10_combout\,
	datad => \LessThan0~10_combout\,
	combout => \delay_high_counter[11]~35_combout\);

-- Location: FF_X35_Y22_N1
\delay_high_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_high_counter[0]~feeder_combout\,
	asdata => VCC,
	sload => \ALT_INV_state.send_bit~q\,
	ena => \delay_high_counter[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_high_counter(0));

-- Location: LCCOMB_X34_Y22_N2
\delay_high_counter[1]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_high_counter[1]~36_combout\ = (delay_high_counter(1) & (\delay_high_counter[0]~34\ & VCC)) # (!delay_high_counter(1) & (!\delay_high_counter[0]~34\))
-- \delay_high_counter[1]~37\ = CARRY((!delay_high_counter(1) & !\delay_high_counter[0]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_high_counter(1),
	datad => VCC,
	cin => \delay_high_counter[0]~34\,
	combout => \delay_high_counter[1]~36_combout\,
	cout => \delay_high_counter[1]~37\);

-- Location: LCCOMB_X32_Y24_N24
\LED~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED~10_combout\ = (!index(4) & (index(3) $ (!index(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(3),
	datac => index(2),
	datad => index(4),
	combout => \LED~10_combout\);

-- Location: FF_X32_Y24_N25
\GRB[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LED~10_combout\,
	ena => \ALT_INV_state.load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => GRB(12));

-- Location: LCCOMB_X32_Y22_N4
\Mux0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = ((\Add0~0_combout\) # (\Add0~2_combout\)) # (!GRB(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => GRB(12),
	datac => \Add0~0_combout\,
	datad => \Add0~2_combout\,
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X32_Y24_N30
\LED~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED~3_combout\ = (!index(3) & (index(2) $ (index(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(3),
	datac => index(2),
	datad => index(4),
	combout => \LED~3_combout\);

-- Location: FF_X32_Y24_N31
\GRB[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LED~3_combout\,
	ena => \ALT_INV_state.load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => GRB(11));

-- Location: LCCOMB_X32_Y24_N12
\LED~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED~0_combout\ = (!index(0) & ((!index(4)) # (!index(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(3),
	datac => index(0),
	datad => index(4),
	combout => \LED~0_combout\);

-- Location: FF_X32_Y24_N13
\GRB[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LED~0_combout\,
	ena => \ALT_INV_state.load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => GRB(9));

-- Location: LCCOMB_X32_Y24_N22
\LED~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED~1_combout\ = (!index(1) & ((!index(4)) # (!index(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(1),
	datac => index(3),
	datad => index(4),
	combout => \LED~1_combout\);

-- Location: FF_X32_Y24_N23
\GRB[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LED~1_combout\,
	ena => \ALT_INV_state.load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => GRB(10));

-- Location: LCCOMB_X32_Y24_N8
\LED~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED~2_combout\ = (!index(4) & ((!index(2)) # (!index(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(3),
	datac => index(2),
	datad => index(4),
	combout => \LED~2_combout\);

-- Location: FF_X32_Y24_N9
\GRB[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LED~2_combout\,
	ena => \ALT_INV_state.load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => GRB(8));

-- Location: LCCOMB_X32_Y22_N10
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\Add0~0_combout\ & (((\Add0~2_combout\)))) # (!\Add0~0_combout\ & ((\Add0~2_combout\ & (!GRB(10))) # (!\Add0~2_combout\ & ((!GRB(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => GRB(10),
	datab => GRB(8),
	datac => \Add0~0_combout\,
	datad => \Add0~2_combout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X32_Y22_N8
\Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Add0~0_combout\ & ((\Mux0~0_combout\ & (!GRB(11))) # (!\Mux0~0_combout\ & ((!GRB(9)))))) # (!\Add0~0_combout\ & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => GRB(11),
	datab => GRB(9),
	datac => \Add0~0_combout\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X32_Y24_N20
\LED~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED~4_combout\ = (!index(4)) # (!index(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => index(3),
	datad => index(4),
	combout => \LED~4_combout\);

-- Location: FF_X32_Y24_N21
\GRB[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LED~4_combout\,
	ena => \ALT_INV_state.load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => GRB(7));

-- Location: LCCOMB_X32_Y24_N14
\LED~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED~5_combout\ = index(3) $ (((index(2)) # (index(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(3),
	datac => index(2),
	datad => index(4),
	combout => \LED~5_combout\);

-- Location: FF_X32_Y24_N15
\GRB[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LED~5_combout\,
	ena => \ALT_INV_state.load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => GRB(5));

-- Location: LCCOMB_X32_Y22_N30
\Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\Add0~0_combout\ & ((\Add0~2_combout\ & (GRB(7))) # (!\Add0~2_combout\ & ((GRB(5)))))) # (!\Add0~0_combout\ & (GRB(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => GRB(7),
	datab => GRB(5),
	datac => \Add0~0_combout\,
	datad => \Add0~2_combout\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X32_Y24_N4
\LED~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED~6_combout\ = (index(1) & ((!index(4)) # (!index(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(1),
	datac => index(3),
	datad => index(4),
	combout => \LED~6_combout\);

-- Location: FF_X32_Y24_N5
\GRB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LED~6_combout\,
	ena => \ALT_INV_state.load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => GRB(2));

-- Location: LCCOMB_X32_Y24_N18
\LED~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED~9_combout\ = index(4) $ (((index(3)) # (!index(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(3),
	datac => index(2),
	datad => index(4),
	combout => \LED~9_combout\);

-- Location: FF_X32_Y24_N19
\GRB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LED~9_combout\,
	ena => \ALT_INV_state.load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => GRB(3));

-- Location: LCCOMB_X32_Y24_N10
\LED~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED~7_combout\ = (index(0) & ((!index(4)) # (!index(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(3),
	datac => index(0),
	datad => index(4),
	combout => \LED~7_combout\);

-- Location: LCCOMB_X32_Y22_N16
\GRB[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GRB[1]~feeder_combout\ = \LED~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LED~7_combout\,
	combout => \GRB[1]~feeder_combout\);

-- Location: FF_X32_Y22_N17
\GRB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \GRB[1]~feeder_combout\,
	ena => \ALT_INV_state.load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => GRB(1));

-- Location: LCCOMB_X32_Y24_N16
\LED~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED~8_combout\ = (index(3) & (index(2) & !index(4))) # (!index(3) & ((index(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(3),
	datac => index(2),
	datad => index(4),
	combout => \LED~8_combout\);

-- Location: FF_X32_Y22_N19
\GRB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \LED~8_combout\,
	sload => VCC,
	ena => \ALT_INV_state.load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => GRB(0));

-- Location: LCCOMB_X32_Y22_N18
\Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\Add0~0_combout\ & (((\Add0~2_combout\)) # (!GRB(1)))) # (!\Add0~0_combout\ & (((!GRB(0) & !\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => GRB(1),
	datac => GRB(0),
	datad => \Add0~2_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X32_Y22_N12
\Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\Add0~2_combout\ & ((\Mux0~3_combout\ & ((!GRB(3)))) # (!\Mux0~3_combout\ & (!GRB(2))))) # (!\Add0~2_combout\ & (((\Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => GRB(2),
	datab => GRB(3),
	datac => \Add0~2_combout\,
	datad => \Mux0~3_combout\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X32_Y22_N6
\Mux0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (\Add0~6_combout\ & (\Add0~4_combout\)) # (!\Add0~6_combout\ & ((\Add0~4_combout\ & (!\Mux0~2_combout\)) # (!\Add0~4_combout\ & ((\Mux0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add0~4_combout\,
	datac => \Mux0~2_combout\,
	datad => \Mux0~4_combout\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X32_Y22_N2
\Mux0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (\Add0~6_combout\ & ((\Mux0~5_combout\ & (\Mux0~6_combout\)) # (!\Mux0~5_combout\ & ((\Mux0~1_combout\))))) # (!\Add0~6_combout\ & (((\Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Mux0~6_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux0~5_combout\,
	combout => \Mux0~7_combout\);

-- Location: LCCOMB_X32_Y22_N28
\Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = (\Add0~8_combout\) # (\Mux0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datad => \Mux0~7_combout\,
	combout => \Mux0~8_combout\);

-- Location: LCCOMB_X32_Y22_N22
\Mux0~8_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~8_wirecell_combout\ = !\Mux0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux0~8_combout\,
	combout => \Mux0~8_wirecell_combout\);

-- Location: FF_X34_Y22_N3
\delay_high_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_high_counter[1]~36_combout\,
	asdata => \Mux0~8_wirecell_combout\,
	sload => \ALT_INV_state.send_bit~q\,
	ena => \delay_high_counter[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_high_counter(1));

-- Location: LCCOMB_X34_Y22_N4
\delay_high_counter[2]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_high_counter[2]~38_combout\ = (delay_high_counter(2) & ((GND) # (!\delay_high_counter[1]~37\))) # (!delay_high_counter(2) & (\delay_high_counter[1]~37\ $ (GND)))
-- \delay_high_counter[2]~39\ = CARRY((delay_high_counter(2)) # (!\delay_high_counter[1]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_high_counter(2),
	datad => VCC,
	cin => \delay_high_counter[1]~37\,
	combout => \delay_high_counter[2]~38_combout\,
	cout => \delay_high_counter[2]~39\);

-- Location: LCCOMB_X42_Y22_N24
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X34_Y22_N5
\delay_high_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_high_counter[2]~38_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.send_bit~q\,
	ena => \delay_high_counter[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_high_counter(2));

-- Location: LCCOMB_X34_Y22_N6
\delay_high_counter[3]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_high_counter[3]~40_combout\ = (delay_high_counter(3) & (\delay_high_counter[2]~39\ & VCC)) # (!delay_high_counter(3) & (!\delay_high_counter[2]~39\))
-- \delay_high_counter[3]~41\ = CARRY((!delay_high_counter(3) & !\delay_high_counter[2]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_high_counter(3),
	datad => VCC,
	cin => \delay_high_counter[2]~39\,
	combout => \delay_high_counter[3]~40_combout\,
	cout => \delay_high_counter[3]~41\);

-- Location: FF_X34_Y22_N7
\delay_high_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_high_counter[3]~40_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.send_bit~q\,
	ena => \delay_high_counter[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_high_counter(3));

-- Location: LCCOMB_X34_Y22_N8
\delay_high_counter[4]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_high_counter[4]~42_combout\ = (delay_high_counter(4) & ((GND) # (!\delay_high_counter[3]~41\))) # (!delay_high_counter(4) & (\delay_high_counter[3]~41\ $ (GND)))
-- \delay_high_counter[4]~43\ = CARRY((delay_high_counter(4)) # (!\delay_high_counter[3]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_high_counter(4),
	datad => VCC,
	cin => \delay_high_counter[3]~41\,
	combout => \delay_high_counter[4]~42_combout\,
	cout => \delay_high_counter[4]~43\);

-- Location: FF_X34_Y22_N9
\delay_high_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_high_counter[4]~42_combout\,
	asdata => \Mux0~8_combout\,
	sload => \ALT_INV_state.send_bit~q\,
	ena => \delay_high_counter[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_high_counter(4));

-- Location: LCCOMB_X34_Y22_N10
\delay_high_counter[5]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_high_counter[5]~44_combout\ = (delay_high_counter(5) & (\delay_high_counter[4]~43\ & VCC)) # (!delay_high_counter(5) & (!\delay_high_counter[4]~43\))
-- \delay_high_counter[5]~45\ = CARRY((!delay_high_counter(5) & !\delay_high_counter[4]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_high_counter(5),
	datad => VCC,
	cin => \delay_high_counter[4]~43\,
	combout => \delay_high_counter[5]~44_combout\,
	cout => \delay_high_counter[5]~45\);

-- Location: FF_X34_Y22_N11
\delay_high_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_high_counter[5]~44_combout\,
	asdata => \Mux0~8_wirecell_combout\,
	sload => \ALT_INV_state.send_bit~q\,
	ena => \delay_high_counter[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_high_counter(5));

-- Location: LCCOMB_X34_Y22_N12
\delay_high_counter[6]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_high_counter[6]~46_combout\ = (delay_high_counter(6) & ((GND) # (!\delay_high_counter[5]~45\))) # (!delay_high_counter(6) & (\delay_high_counter[5]~45\ $ (GND)))
-- \delay_high_counter[6]~47\ = CARRY((delay_high_counter(6)) # (!\delay_high_counter[5]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_high_counter(6),
	datad => VCC,
	cin => \delay_high_counter[5]~45\,
	combout => \delay_high_counter[6]~46_combout\,
	cout => \delay_high_counter[6]~47\);

-- Location: FF_X34_Y22_N13
\delay_high_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_high_counter[6]~46_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.send_bit~q\,
	ena => \delay_high_counter[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_high_counter(6));

-- Location: LCCOMB_X34_Y22_N14
\delay_high_counter[7]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_high_counter[7]~48_combout\ = (delay_high_counter(7) & (\delay_high_counter[6]~47\ & VCC)) # (!delay_high_counter(7) & (!\delay_high_counter[6]~47\))
-- \delay_high_counter[7]~49\ = CARRY((!delay_high_counter(7) & !\delay_high_counter[6]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_high_counter(7),
	datad => VCC,
	cin => \delay_high_counter[6]~47\,
	combout => \delay_high_counter[7]~48_combout\,
	cout => \delay_high_counter[7]~49\);

-- Location: FF_X34_Y22_N15
\delay_high_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_high_counter[7]~48_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.send_bit~q\,
	ena => \delay_high_counter[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_high_counter(7));

-- Location: LCCOMB_X34_Y22_N16
\delay_high_counter[8]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_high_counter[8]~50_combout\ = (delay_high_counter(8) & ((GND) # (!\delay_high_counter[7]~49\))) # (!delay_high_counter(8) & (\delay_high_counter[7]~49\ $ (GND)))
-- \delay_high_counter[8]~51\ = CARRY((delay_high_counter(8)) # (!\delay_high_counter[7]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_high_counter(8),
	datad => VCC,
	cin => \delay_high_counter[7]~49\,
	combout => \delay_high_counter[8]~50_combout\,
	cout => \delay_high_counter[8]~51\);

-- Location: FF_X34_Y22_N17
\delay_high_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_high_counter[8]~50_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.send_bit~q\,
	ena => \delay_high_counter[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_high_counter(8));

-- Location: LCCOMB_X34_Y22_N18
\delay_high_counter[9]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_high_counter[9]~52_combout\ = (delay_high_counter(9) & (\delay_high_counter[8]~51\ & VCC)) # (!delay_high_counter(9) & (!\delay_high_counter[8]~51\))
-- \delay_high_counter[9]~53\ = CARRY((!delay_high_counter(9) & !\delay_high_counter[8]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_high_counter(9),
	datad => VCC,
	cin => \delay_high_counter[8]~51\,
	combout => \delay_high_counter[9]~52_combout\,
	cout => \delay_high_counter[9]~53\);

-- Location: FF_X34_Y22_N19
\delay_high_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_high_counter[9]~52_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.send_bit~q\,
	ena => \delay_high_counter[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_high_counter(9));

-- Location: LCCOMB_X34_Y22_N20
\delay_high_counter[10]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_high_counter[10]~54_combout\ = (delay_high_counter(10) & ((GND) # (!\delay_high_counter[9]~53\))) # (!delay_high_counter(10) & (\delay_high_counter[9]~53\ $ (GND)))
-- \delay_high_counter[10]~55\ = CARRY((delay_high_counter(10)) # (!\delay_high_counter[9]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_high_counter(10),
	datad => VCC,
	cin => \delay_high_counter[9]~53\,
	combout => \delay_high_counter[10]~54_combout\,
	cout => \delay_high_counter[10]~55\);

-- Location: FF_X34_Y22_N21
\delay_high_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_high_counter[10]~54_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.send_bit~q\,
	ena => \delay_high_counter[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_high_counter(10));

-- Location: LCCOMB_X34_Y22_N22
\delay_high_counter[11]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_high_counter[11]~56_combout\ = (delay_high_counter(11) & (\delay_high_counter[10]~55\ & VCC)) # (!delay_high_counter(11) & (!\delay_high_counter[10]~55\))
-- \delay_high_counter[11]~57\ = CARRY((!delay_high_counter(11) & !\delay_high_counter[10]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_high_counter(11),
	datad => VCC,
	cin => \delay_high_counter[10]~55\,
	combout => \delay_high_counter[11]~56_combout\,
	cout => \delay_high_counter[11]~57\);

-- Location: FF_X34_Y22_N23
\delay_high_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_high_counter[11]~56_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.send_bit~q\,
	ena => \delay_high_counter[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_high_counter(11));

-- Location: LCCOMB_X34_Y22_N24
\delay_high_counter[12]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_high_counter[12]~58_combout\ = (delay_high_counter(12) & ((GND) # (!\delay_high_counter[11]~57\))) # (!delay_high_counter(12) & (\delay_high_counter[11]~57\ $ (GND)))
-- \delay_high_counter[12]~59\ = CARRY((delay_high_counter(12)) # (!\delay_high_counter[11]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_high_counter(12),
	datad => VCC,
	cin => \delay_high_counter[11]~57\,
	combout => \delay_high_counter[12]~58_combout\,
	cout => \delay_high_counter[12]~59\);

-- Location: FF_X34_Y22_N25
\delay_high_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_high_counter[12]~58_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.send_bit~q\,
	ena => \delay_high_counter[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_high_counter(12));

-- Location: LCCOMB_X34_Y22_N26
\delay_high_counter[13]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_high_counter[13]~60_combout\ = (delay_high_counter(13) & (\delay_high_counter[12]~59\ & VCC)) # (!delay_high_counter(13) & (!\delay_high_counter[12]~59\))
-- \delay_high_counter[13]~61\ = CARRY((!delay_high_counter(13) & !\delay_high_counter[12]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_high_counter(13),
	datad => VCC,
	cin => \delay_high_counter[12]~59\,
	combout => \delay_high_counter[13]~60_combout\,
	cout => \delay_high_counter[13]~61\);

-- Location: FF_X34_Y22_N27
\delay_high_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_high_counter[13]~60_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.send_bit~q\,
	ena => \delay_high_counter[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_high_counter(13));

-- Location: LCCOMB_X34_Y22_N28
\delay_high_counter[14]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_high_counter[14]~62_combout\ = (delay_high_counter(14) & ((GND) # (!\delay_high_counter[13]~61\))) # (!delay_high_counter(14) & (\delay_high_counter[13]~61\ $ (GND)))
-- \delay_high_counter[14]~63\ = CARRY((delay_high_counter(14)) # (!\delay_high_counter[13]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_high_counter(14),
	datad => VCC,
	cin => \delay_high_counter[13]~61\,
	combout => \delay_high_counter[14]~62_combout\,
	cout => \delay_high_counter[14]~63\);

-- Location: FF_X34_Y22_N29
\delay_high_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_high_counter[14]~62_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.send_bit~q\,
	ena => \delay_high_counter[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_high_counter(14));

-- Location: LCCOMB_X34_Y22_N30
\delay_high_counter[15]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_high_counter[15]~64_combout\ = (delay_high_counter(15) & (\delay_high_counter[14]~63\ & VCC)) # (!delay_high_counter(15) & (!\delay_high_counter[14]~63\))
-- \delay_high_counter[15]~65\ = CARRY((!delay_high_counter(15) & !\delay_high_counter[14]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_high_counter(15),
	datad => VCC,
	cin => \delay_high_counter[14]~63\,
	combout => \delay_high_counter[15]~64_combout\,
	cout => \delay_high_counter[15]~65\);

-- Location: FF_X34_Y22_N31
\delay_high_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_high_counter[15]~64_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.send_bit~q\,
	ena => \delay_high_counter[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_high_counter(15));

-- Location: LCCOMB_X34_Y21_N0
\delay_high_counter[16]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_high_counter[16]~66_combout\ = (delay_high_counter(16) & ((GND) # (!\delay_high_counter[15]~65\))) # (!delay_high_counter(16) & (\delay_high_counter[15]~65\ $ (GND)))
-- \delay_high_counter[16]~67\ = CARRY((delay_high_counter(16)) # (!\delay_high_counter[15]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_high_counter(16),
	datad => VCC,
	cin => \delay_high_counter[15]~65\,
	combout => \delay_high_counter[16]~66_combout\,
	cout => \delay_high_counter[16]~67\);

-- Location: FF_X34_Y21_N1
\delay_high_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_high_counter[16]~66_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.send_bit~q\,
	ena => \delay_high_counter[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_high_counter(16));

-- Location: LCCOMB_X34_Y21_N2
\delay_high_counter[17]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_high_counter[17]~68_combout\ = (delay_high_counter(17) & (\delay_high_counter[16]~67\ & VCC)) # (!delay_high_counter(17) & (!\delay_high_counter[16]~67\))
-- \delay_high_counter[17]~69\ = CARRY((!delay_high_counter(17) & !\delay_high_counter[16]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_high_counter(17),
	datad => VCC,
	cin => \delay_high_counter[16]~67\,
	combout => \delay_high_counter[17]~68_combout\,
	cout => \delay_high_counter[17]~69\);

-- Location: FF_X34_Y21_N3
\delay_high_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_high_counter[17]~68_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.send_bit~q\,
	ena => \delay_high_counter[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_high_counter(17));

-- Location: LCCOMB_X34_Y21_N4
\delay_high_counter[18]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_high_counter[18]~70_combout\ = (delay_high_counter(18) & ((GND) # (!\delay_high_counter[17]~69\))) # (!delay_high_counter(18) & (\delay_high_counter[17]~69\ $ (GND)))
-- \delay_high_counter[18]~71\ = CARRY((delay_high_counter(18)) # (!\delay_high_counter[17]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_high_counter(18),
	datad => VCC,
	cin => \delay_high_counter[17]~69\,
	combout => \delay_high_counter[18]~70_combout\,
	cout => \delay_high_counter[18]~71\);

-- Location: FF_X34_Y21_N5
\delay_high_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_high_counter[18]~70_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.send_bit~q\,
	ena => \delay_high_counter[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_high_counter(18));

-- Location: LCCOMB_X34_Y21_N6
\delay_high_counter[19]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_high_counter[19]~72_combout\ = (delay_high_counter(19) & (\delay_high_counter[18]~71\ & VCC)) # (!delay_high_counter(19) & (!\delay_high_counter[18]~71\))
-- \delay_high_counter[19]~73\ = CARRY((!delay_high_counter(19) & !\delay_high_counter[18]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_high_counter(19),
	datad => VCC,
	cin => \delay_high_counter[18]~71\,
	combout => \delay_high_counter[19]~72_combout\,
	cout => \delay_high_counter[19]~73\);

-- Location: FF_X34_Y21_N7
\delay_high_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_high_counter[19]~72_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.send_bit~q\,
	ena => \delay_high_counter[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_high_counter(19));

-- Location: LCCOMB_X34_Y21_N8
\delay_high_counter[20]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_high_counter[20]~74_combout\ = (delay_high_counter(20) & ((GND) # (!\delay_high_counter[19]~73\))) # (!delay_high_counter(20) & (\delay_high_counter[19]~73\ $ (GND)))
-- \delay_high_counter[20]~75\ = CARRY((delay_high_counter(20)) # (!\delay_high_counter[19]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_high_counter(20),
	datad => VCC,
	cin => \delay_high_counter[19]~73\,
	combout => \delay_high_counter[20]~74_combout\,
	cout => \delay_high_counter[20]~75\);

-- Location: FF_X34_Y21_N9
\delay_high_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_high_counter[20]~74_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.send_bit~q\,
	ena => \delay_high_counter[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_high_counter(20));

-- Location: LCCOMB_X34_Y21_N10
\delay_high_counter[21]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_high_counter[21]~76_combout\ = (delay_high_counter(21) & (\delay_high_counter[20]~75\ & VCC)) # (!delay_high_counter(21) & (!\delay_high_counter[20]~75\))
-- \delay_high_counter[21]~77\ = CARRY((!delay_high_counter(21) & !\delay_high_counter[20]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_high_counter(21),
	datad => VCC,
	cin => \delay_high_counter[20]~75\,
	combout => \delay_high_counter[21]~76_combout\,
	cout => \delay_high_counter[21]~77\);

-- Location: FF_X34_Y21_N11
\delay_high_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_high_counter[21]~76_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.send_bit~q\,
	ena => \delay_high_counter[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_high_counter(21));

-- Location: LCCOMB_X34_Y21_N12
\delay_high_counter[22]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_high_counter[22]~78_combout\ = (delay_high_counter(22) & ((GND) # (!\delay_high_counter[21]~77\))) # (!delay_high_counter(22) & (\delay_high_counter[21]~77\ $ (GND)))
-- \delay_high_counter[22]~79\ = CARRY((delay_high_counter(22)) # (!\delay_high_counter[21]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_high_counter(22),
	datad => VCC,
	cin => \delay_high_counter[21]~77\,
	combout => \delay_high_counter[22]~78_combout\,
	cout => \delay_high_counter[22]~79\);

-- Location: FF_X34_Y21_N13
\delay_high_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_high_counter[22]~78_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.send_bit~q\,
	ena => \delay_high_counter[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_high_counter(22));

-- Location: LCCOMB_X34_Y21_N14
\delay_high_counter[23]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_high_counter[23]~80_combout\ = (delay_high_counter(23) & (\delay_high_counter[22]~79\ & VCC)) # (!delay_high_counter(23) & (!\delay_high_counter[22]~79\))
-- \delay_high_counter[23]~81\ = CARRY((!delay_high_counter(23) & !\delay_high_counter[22]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_high_counter(23),
	datad => VCC,
	cin => \delay_high_counter[22]~79\,
	combout => \delay_high_counter[23]~80_combout\,
	cout => \delay_high_counter[23]~81\);

-- Location: FF_X34_Y21_N15
\delay_high_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_high_counter[23]~80_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.send_bit~q\,
	ena => \delay_high_counter[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_high_counter(23));

-- Location: LCCOMB_X34_Y21_N16
\delay_high_counter[24]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_high_counter[24]~82_combout\ = (delay_high_counter(24) & ((GND) # (!\delay_high_counter[23]~81\))) # (!delay_high_counter(24) & (\delay_high_counter[23]~81\ $ (GND)))
-- \delay_high_counter[24]~83\ = CARRY((delay_high_counter(24)) # (!\delay_high_counter[23]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_high_counter(24),
	datad => VCC,
	cin => \delay_high_counter[23]~81\,
	combout => \delay_high_counter[24]~82_combout\,
	cout => \delay_high_counter[24]~83\);

-- Location: FF_X34_Y21_N17
\delay_high_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_high_counter[24]~82_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.send_bit~q\,
	ena => \delay_high_counter[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_high_counter(24));

-- Location: LCCOMB_X34_Y21_N18
\delay_high_counter[25]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_high_counter[25]~84_combout\ = (delay_high_counter(25) & (\delay_high_counter[24]~83\ & VCC)) # (!delay_high_counter(25) & (!\delay_high_counter[24]~83\))
-- \delay_high_counter[25]~85\ = CARRY((!delay_high_counter(25) & !\delay_high_counter[24]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_high_counter(25),
	datad => VCC,
	cin => \delay_high_counter[24]~83\,
	combout => \delay_high_counter[25]~84_combout\,
	cout => \delay_high_counter[25]~85\);

-- Location: FF_X34_Y21_N19
\delay_high_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_high_counter[25]~84_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.send_bit~q\,
	ena => \delay_high_counter[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_high_counter(25));

-- Location: LCCOMB_X34_Y21_N20
\delay_high_counter[26]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_high_counter[26]~86_combout\ = (delay_high_counter(26) & ((GND) # (!\delay_high_counter[25]~85\))) # (!delay_high_counter(26) & (\delay_high_counter[25]~85\ $ (GND)))
-- \delay_high_counter[26]~87\ = CARRY((delay_high_counter(26)) # (!\delay_high_counter[25]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_high_counter(26),
	datad => VCC,
	cin => \delay_high_counter[25]~85\,
	combout => \delay_high_counter[26]~86_combout\,
	cout => \delay_high_counter[26]~87\);

-- Location: FF_X34_Y21_N21
\delay_high_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_high_counter[26]~86_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.send_bit~q\,
	ena => \delay_high_counter[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_high_counter(26));

-- Location: LCCOMB_X34_Y21_N22
\delay_high_counter[27]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_high_counter[27]~88_combout\ = (delay_high_counter(27) & (\delay_high_counter[26]~87\ & VCC)) # (!delay_high_counter(27) & (!\delay_high_counter[26]~87\))
-- \delay_high_counter[27]~89\ = CARRY((!delay_high_counter(27) & !\delay_high_counter[26]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_high_counter(27),
	datad => VCC,
	cin => \delay_high_counter[26]~87\,
	combout => \delay_high_counter[27]~88_combout\,
	cout => \delay_high_counter[27]~89\);

-- Location: FF_X34_Y21_N23
\delay_high_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_high_counter[27]~88_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.send_bit~q\,
	ena => \delay_high_counter[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_high_counter(27));

-- Location: LCCOMB_X34_Y21_N24
\delay_high_counter[28]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_high_counter[28]~90_combout\ = (delay_high_counter(28) & ((GND) # (!\delay_high_counter[27]~89\))) # (!delay_high_counter(28) & (\delay_high_counter[27]~89\ $ (GND)))
-- \delay_high_counter[28]~91\ = CARRY((delay_high_counter(28)) # (!\delay_high_counter[27]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_high_counter(28),
	datad => VCC,
	cin => \delay_high_counter[27]~89\,
	combout => \delay_high_counter[28]~90_combout\,
	cout => \delay_high_counter[28]~91\);

-- Location: FF_X34_Y21_N25
\delay_high_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_high_counter[28]~90_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.send_bit~q\,
	ena => \delay_high_counter[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_high_counter(28));

-- Location: LCCOMB_X34_Y21_N26
\delay_high_counter[29]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_high_counter[29]~92_combout\ = (delay_high_counter(29) & (\delay_high_counter[28]~91\ & VCC)) # (!delay_high_counter(29) & (!\delay_high_counter[28]~91\))
-- \delay_high_counter[29]~93\ = CARRY((!delay_high_counter(29) & !\delay_high_counter[28]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_high_counter(29),
	datad => VCC,
	cin => \delay_high_counter[28]~91\,
	combout => \delay_high_counter[29]~92_combout\,
	cout => \delay_high_counter[29]~93\);

-- Location: FF_X34_Y21_N27
\delay_high_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_high_counter[29]~92_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.send_bit~q\,
	ena => \delay_high_counter[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_high_counter(29));

-- Location: LCCOMB_X34_Y21_N28
\delay_high_counter[30]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_high_counter[30]~94_combout\ = (delay_high_counter(30) & ((GND) # (!\delay_high_counter[29]~93\))) # (!delay_high_counter(30) & (\delay_high_counter[29]~93\ $ (GND)))
-- \delay_high_counter[30]~95\ = CARRY((delay_high_counter(30)) # (!\delay_high_counter[29]~93\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_high_counter(30),
	datad => VCC,
	cin => \delay_high_counter[29]~93\,
	combout => \delay_high_counter[30]~94_combout\,
	cout => \delay_high_counter[30]~95\);

-- Location: FF_X34_Y21_N29
\delay_high_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_high_counter[30]~94_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.send_bit~q\,
	ena => \delay_high_counter[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_high_counter(30));

-- Location: LCCOMB_X34_Y21_N30
\delay_high_counter[31]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_high_counter[31]~96_combout\ = delay_high_counter(31) $ (!\delay_high_counter[30]~95\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_high_counter(31),
	cin => \delay_high_counter[30]~95\,
	combout => \delay_high_counter[31]~96_combout\);

-- Location: FF_X34_Y21_N31
\delay_high_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_high_counter[31]~96_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.send_bit~q\,
	ena => \delay_high_counter[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_high_counter(31));

-- Location: LCCOMB_X35_Y21_N22
\LessThan2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~8_combout\ = (delay_high_counter(24)) # ((delay_high_counter(26)) # ((delay_high_counter(27)) # (delay_high_counter(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_high_counter(24),
	datab => delay_high_counter(26),
	datac => delay_high_counter(27),
	datad => delay_high_counter(25),
	combout => \LessThan2~8_combout\);

-- Location: LCCOMB_X35_Y21_N12
\LessThan2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~9_combout\ = (delay_high_counter(29)) # ((delay_high_counter(28)) # ((\LessThan2~8_combout\) # (delay_high_counter(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_high_counter(29),
	datab => delay_high_counter(28),
	datac => \LessThan2~8_combout\,
	datad => delay_high_counter(30),
	combout => \LessThan2~9_combout\);

-- Location: LCCOMB_X35_Y22_N10
\LessThan2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (delay_high_counter(8)) # ((delay_high_counter(9)) # ((delay_high_counter(11)) # (delay_high_counter(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_high_counter(8),
	datab => delay_high_counter(9),
	datac => delay_high_counter(11),
	datad => delay_high_counter(10),
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X35_Y22_N8
\LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (delay_high_counter(7)) # ((delay_high_counter(5)) # ((delay_high_counter(6)) # (delay_high_counter(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_high_counter(7),
	datab => delay_high_counter(5),
	datac => delay_high_counter(6),
	datad => delay_high_counter(4),
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X35_Y22_N4
\LessThan2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = (delay_high_counter(13)) # ((delay_high_counter(14)) # ((delay_high_counter(12)) # (delay_high_counter(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_high_counter(13),
	datab => delay_high_counter(14),
	datac => delay_high_counter(12),
	datad => delay_high_counter(15),
	combout => \LessThan2~3_combout\);

-- Location: LCCOMB_X35_Y22_N18
\LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (delay_high_counter(1)) # ((delay_high_counter(3)) # ((delay_high_counter(2)) # (delay_high_counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_high_counter(1),
	datab => delay_high_counter(3),
	datac => delay_high_counter(2),
	datad => delay_high_counter(0),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X35_Y22_N30
\LessThan2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = (\LessThan2~2_combout\) # ((\LessThan2~1_combout\) # ((\LessThan2~3_combout\) # (\LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~2_combout\,
	datab => \LessThan2~1_combout\,
	datac => \LessThan2~3_combout\,
	datad => \LessThan2~0_combout\,
	combout => \LessThan2~4_combout\);

-- Location: LCCOMB_X35_Y21_N14
\LessThan2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~6_combout\ = (delay_high_counter(21)) # (delay_high_counter(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_high_counter(21),
	datad => delay_high_counter(20),
	combout => \LessThan2~6_combout\);

-- Location: LCCOMB_X35_Y21_N4
\LessThan2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = (delay_high_counter(16)) # ((delay_high_counter(19)) # ((delay_high_counter(18)) # (delay_high_counter(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_high_counter(16),
	datab => delay_high_counter(19),
	datac => delay_high_counter(18),
	datad => delay_high_counter(17),
	combout => \LessThan2~5_combout\);

-- Location: LCCOMB_X35_Y21_N28
\LessThan2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~7_combout\ = (delay_high_counter(22)) # ((\LessThan2~6_combout\) # ((\LessThan2~5_combout\) # (delay_high_counter(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_high_counter(22),
	datab => \LessThan2~6_combout\,
	datac => \LessThan2~5_combout\,
	datad => delay_high_counter(23),
	combout => \LessThan2~7_combout\);

-- Location: LCCOMB_X32_Y21_N14
\LessThan2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~10_combout\ = (!delay_high_counter(31) & ((\LessThan2~9_combout\) # ((\LessThan2~4_combout\) # (\LessThan2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_high_counter(31),
	datab => \LessThan2~9_combout\,
	datac => \LessThan2~4_combout\,
	datad => \LessThan2~7_combout\,
	combout => \LessThan2~10_combout\);

-- Location: LCCOMB_X32_Y21_N8
\Selector38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = ((\LessThan3~10_combout\ & (!\LessThan2~10_combout\ & \state.send_bit~q\))) # (!\state.load~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~10_combout\,
	datab => \state.load~q\,
	datac => \LessThan2~10_combout\,
	datad => \state.send_bit~q\,
	combout => \Selector38~0_combout\);

-- Location: FF_X32_Y21_N9
\state.sending\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.sending~q\);

-- Location: LCCOMB_X30_Y22_N0
\Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = delay_low_counter(0) $ (VCC)
-- \Add3~1\ = CARRY(delay_low_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => delay_low_counter(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X31_Y22_N16
\Add3~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~65_combout\ = (!\state.sending~q\ & \Add3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.sending~q\,
	datac => \Add3~0_combout\,
	combout => \Add3~65_combout\);

-- Location: LCCOMB_X32_Y21_N22
\delay_low_counter[27]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_low_counter[27]~0_combout\ = (\LessThan3~10_combout\) # ((!\state.reset~q\ & ((\LessThan2~10_combout\) # (!\state.send_bit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.send_bit~q\,
	datab => \state.reset~q\,
	datac => \LessThan2~10_combout\,
	datad => \LessThan3~10_combout\,
	combout => \delay_low_counter[27]~0_combout\);

-- Location: LCCOMB_X32_Y21_N16
\delay_low_counter[27]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_low_counter[27]~1_combout\ = ((\state.sending~q\ & ((!\LessThan0~10_combout\) # (!\LessThan1~10_combout\)))) # (!\delay_low_counter[27]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.sending~q\,
	datab => \LessThan1~10_combout\,
	datac => \delay_low_counter[27]~0_combout\,
	datad => \LessThan0~10_combout\,
	combout => \delay_low_counter[27]~1_combout\);

-- Location: FF_X31_Y22_N17
\delay_low_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~65_combout\,
	ena => \delay_low_counter[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_low_counter(0));

-- Location: LCCOMB_X30_Y22_N2
\Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (delay_low_counter(1) & (\Add3~1\ & VCC)) # (!delay_low_counter(1) & (!\Add3~1\))
-- \Add3~3\ = CARRY((!delay_low_counter(1) & !\Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_low_counter(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X32_Y22_N0
\Selector103~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector103~2_combout\ = (\state.sending~q\ & (\Mux0~8_combout\ & ((!\LessThan0~10_combout\)))) # (!\state.sending~q\ & (((\Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.sending~q\,
	datab => \Mux0~8_combout\,
	datac => \Add3~2_combout\,
	datad => \LessThan0~10_combout\,
	combout => \Selector103~2_combout\);

-- Location: FF_X32_Y22_N1
\delay_low_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector103~2_combout\,
	ena => \delay_low_counter[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_low_counter(1));

-- Location: LCCOMB_X30_Y22_N4
\Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (delay_low_counter(2) & ((GND) # (!\Add3~3\))) # (!delay_low_counter(2) & (\Add3~3\ $ (GND)))
-- \Add3~5\ = CARRY((delay_low_counter(2)) # (!\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_low_counter(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X31_Y22_N26
\Add3~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~66_combout\ = (\state.sending~q\) # (\Add3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.sending~q\,
	datac => \Add3~4_combout\,
	combout => \Add3~66_combout\);

-- Location: FF_X31_Y22_N27
\delay_low_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~66_combout\,
	ena => \delay_low_counter[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_low_counter(2));

-- Location: LCCOMB_X30_Y22_N6
\Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (delay_low_counter(3) & (\Add3~5\ & VCC)) # (!delay_low_counter(3) & (!\Add3~5\))
-- \Add3~7\ = CARRY((!delay_low_counter(3) & !\Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_low_counter(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X32_Y22_N14
\Selector101~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector101~2_combout\ = (\state.sending~q\ & (!\Mux0~8_combout\ & ((!\LessThan0~10_combout\)))) # (!\state.sending~q\ & (((\Add3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.sending~q\,
	datab => \Mux0~8_combout\,
	datac => \Add3~6_combout\,
	datad => \LessThan0~10_combout\,
	combout => \Selector101~2_combout\);

-- Location: FF_X32_Y22_N15
\delay_low_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector101~2_combout\,
	ena => \delay_low_counter[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_low_counter(3));

-- Location: LCCOMB_X30_Y22_N8
\Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (delay_low_counter(4) & ((GND) # (!\Add3~7\))) # (!delay_low_counter(4) & (\Add3~7\ $ (GND)))
-- \Add3~9\ = CARRY((delay_low_counter(4)) # (!\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_low_counter(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X32_Y22_N24
\Selector100~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector100~2_combout\ = (\state.sending~q\ & (!\Mux0~8_combout\ & ((!\LessThan0~10_combout\)))) # (!\state.sending~q\ & (((\Add3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.sending~q\,
	datab => \Mux0~8_combout\,
	datac => \Add3~8_combout\,
	datad => \LessThan0~10_combout\,
	combout => \Selector100~2_combout\);

-- Location: FF_X32_Y22_N25
\delay_low_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector100~2_combout\,
	ena => \delay_low_counter[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_low_counter(4));

-- Location: LCCOMB_X30_Y22_N10
\Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (delay_low_counter(5) & (\Add3~9\ & VCC)) # (!delay_low_counter(5) & (!\Add3~9\))
-- \Add3~11\ = CARRY((!delay_low_counter(5) & !\Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_low_counter(5),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X32_Y22_N26
\Selector99~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector99~2_combout\ = (\state.sending~q\ & (\Mux0~8_combout\ & ((!\LessThan0~10_combout\)))) # (!\state.sending~q\ & (((\Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.sending~q\,
	datab => \Mux0~8_combout\,
	datac => \Add3~10_combout\,
	datad => \LessThan0~10_combout\,
	combout => \Selector99~2_combout\);

-- Location: FF_X32_Y22_N27
\delay_low_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector99~2_combout\,
	ena => \delay_low_counter[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_low_counter(5));

-- Location: LCCOMB_X30_Y22_N12
\Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (delay_low_counter(6) & ((GND) # (!\Add3~11\))) # (!delay_low_counter(6) & (\Add3~11\ $ (GND)))
-- \Add3~13\ = CARRY((delay_low_counter(6)) # (!\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_low_counter(6),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X31_Y22_N10
\Add3~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~67_combout\ = (\state.sending~q\ & ((\LessThan0~10_combout\))) # (!\state.sending~q\ & (\Add3~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~12_combout\,
	datac => \state.sending~q\,
	datad => \LessThan0~10_combout\,
	combout => \Add3~67_combout\);

-- Location: FF_X31_Y22_N11
\delay_low_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~67_combout\,
	ena => \delay_low_counter[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_low_counter(6));

-- Location: LCCOMB_X30_Y22_N14
\Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (delay_low_counter(7) & (\Add3~13\ & VCC)) # (!delay_low_counter(7) & (!\Add3~13\))
-- \Add3~15\ = CARRY((!delay_low_counter(7) & !\Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_low_counter(7),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X31_Y22_N20
\Add3~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~68_combout\ = (\state.sending~q\ & ((\LessThan0~10_combout\))) # (!\state.sending~q\ & (\Add3~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~14_combout\,
	datac => \state.sending~q\,
	datad => \LessThan0~10_combout\,
	combout => \Add3~68_combout\);

-- Location: FF_X31_Y22_N21
\delay_low_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~68_combout\,
	ena => \delay_low_counter[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_low_counter(7));

-- Location: LCCOMB_X30_Y22_N16
\Add3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (delay_low_counter(8) & ((GND) # (!\Add3~15\))) # (!delay_low_counter(8) & (\Add3~15\ $ (GND)))
-- \Add3~17\ = CARRY((delay_low_counter(8)) # (!\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_low_counter(8),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X31_Y22_N8
\Add3~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~69_combout\ = (\state.sending~q\ & ((\LessThan0~10_combout\))) # (!\state.sending~q\ & (\Add3~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.sending~q\,
	datac => \Add3~16_combout\,
	datad => \LessThan0~10_combout\,
	combout => \Add3~69_combout\);

-- Location: FF_X31_Y22_N9
\delay_low_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~69_combout\,
	ena => \delay_low_counter[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_low_counter(8));

-- Location: LCCOMB_X30_Y22_N18
\Add3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (delay_low_counter(9) & (\Add3~17\ & VCC)) # (!delay_low_counter(9) & (!\Add3~17\))
-- \Add3~19\ = CARRY((!delay_low_counter(9) & !\Add3~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_low_counter(9),
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: LCCOMB_X31_Y22_N2
\Add3~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~70_combout\ = (!\state.sending~q\ & \Add3~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.sending~q\,
	datad => \Add3~18_combout\,
	combout => \Add3~70_combout\);

-- Location: FF_X31_Y22_N3
\delay_low_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~70_combout\,
	ena => \delay_low_counter[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_low_counter(9));

-- Location: LCCOMB_X30_Y22_N20
\Add3~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (delay_low_counter(10) & ((GND) # (!\Add3~19\))) # (!delay_low_counter(10) & (\Add3~19\ $ (GND)))
-- \Add3~21\ = CARRY((delay_low_counter(10)) # (!\Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_low_counter(10),
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: LCCOMB_X31_Y22_N0
\Add3~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~71_combout\ = (!\state.sending~q\ & \Add3~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.sending~q\,
	datad => \Add3~20_combout\,
	combout => \Add3~71_combout\);

-- Location: FF_X31_Y22_N1
\delay_low_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~71_combout\,
	ena => \delay_low_counter[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_low_counter(10));

-- Location: LCCOMB_X30_Y22_N22
\Add3~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (delay_low_counter(11) & (\Add3~21\ & VCC)) # (!delay_low_counter(11) & (!\Add3~21\))
-- \Add3~23\ = CARRY((!delay_low_counter(11) & !\Add3~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_low_counter(11),
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: LCCOMB_X31_Y22_N14
\Add3~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~72_combout\ = (\state.sending~q\ & (\LessThan0~10_combout\)) # (!\state.sending~q\ & ((\Add3~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datac => \state.sending~q\,
	datad => \Add3~22_combout\,
	combout => \Add3~72_combout\);

-- Location: FF_X31_Y22_N15
\delay_low_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~72_combout\,
	ena => \delay_low_counter[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_low_counter(11));

-- Location: LCCOMB_X30_Y22_N24
\Add3~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (delay_low_counter(12) & ((GND) # (!\Add3~23\))) # (!delay_low_counter(12) & (\Add3~23\ $ (GND)))
-- \Add3~25\ = CARRY((delay_low_counter(12)) # (!\Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_low_counter(12),
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: LCCOMB_X32_Y22_N20
\Add3~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~73_combout\ = (!\state.sending~q\ & \Add3~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.sending~q\,
	datad => \Add3~24_combout\,
	combout => \Add3~73_combout\);

-- Location: FF_X32_Y22_N21
\delay_low_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~73_combout\,
	ena => \delay_low_counter[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_low_counter(12));

-- Location: LCCOMB_X30_Y22_N26
\Add3~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (delay_low_counter(13) & (\Add3~25\ & VCC)) # (!delay_low_counter(13) & (!\Add3~25\))
-- \Add3~27\ = CARRY((!delay_low_counter(13) & !\Add3~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_low_counter(13),
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: LCCOMB_X31_Y22_N6
\Add3~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~74_combout\ = (!\state.sending~q\ & \Add3~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.sending~q\,
	datac => \Add3~26_combout\,
	combout => \Add3~74_combout\);

-- Location: FF_X31_Y22_N7
\delay_low_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~74_combout\,
	ena => \delay_low_counter[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_low_counter(13));

-- Location: LCCOMB_X30_Y22_N28
\Add3~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (delay_low_counter(14) & ((GND) # (!\Add3~27\))) # (!delay_low_counter(14) & (\Add3~27\ $ (GND)))
-- \Add3~29\ = CARRY((delay_low_counter(14)) # (!\Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_low_counter(14),
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: LCCOMB_X31_Y22_N28
\Add3~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~75_combout\ = (!\state.sending~q\ & \Add3~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.sending~q\,
	datad => \Add3~28_combout\,
	combout => \Add3~75_combout\);

-- Location: FF_X31_Y22_N29
\delay_low_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~75_combout\,
	ena => \delay_low_counter[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_low_counter(14));

-- Location: LCCOMB_X30_Y22_N30
\Add3~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (delay_low_counter(15) & (\Add3~29\ & VCC)) # (!delay_low_counter(15) & (!\Add3~29\))
-- \Add3~31\ = CARRY((!delay_low_counter(15) & !\Add3~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_low_counter(15),
	datad => VCC,
	cin => \Add3~29\,
	combout => \Add3~30_combout\,
	cout => \Add3~31\);

-- Location: LCCOMB_X31_Y22_N22
\Add3~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~76_combout\ = (!\state.sending~q\ & \Add3~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.sending~q\,
	datad => \Add3~30_combout\,
	combout => \Add3~76_combout\);

-- Location: FF_X31_Y22_N23
\delay_low_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~76_combout\,
	ena => \delay_low_counter[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_low_counter(15));

-- Location: LCCOMB_X30_Y21_N0
\Add3~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = (delay_low_counter(16) & ((GND) # (!\Add3~31\))) # (!delay_low_counter(16) & (\Add3~31\ $ (GND)))
-- \Add3~33\ = CARRY((delay_low_counter(16)) # (!\Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_low_counter(16),
	datad => VCC,
	cin => \Add3~31\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

-- Location: LCCOMB_X29_Y21_N8
\Add3~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~77_combout\ = (!\state.sending~q\ & \Add3~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.sending~q\,
	datac => \Add3~32_combout\,
	combout => \Add3~77_combout\);

-- Location: FF_X29_Y21_N9
\delay_low_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~77_combout\,
	ena => \delay_low_counter[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_low_counter(16));

-- Location: LCCOMB_X30_Y21_N2
\Add3~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = (delay_low_counter(17) & (\Add3~33\ & VCC)) # (!delay_low_counter(17) & (!\Add3~33\))
-- \Add3~35\ = CARRY((!delay_low_counter(17) & !\Add3~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_low_counter(17),
	datad => VCC,
	cin => \Add3~33\,
	combout => \Add3~34_combout\,
	cout => \Add3~35\);

-- Location: LCCOMB_X29_Y21_N10
\Add3~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~78_combout\ = (!\state.sending~q\ & \Add3~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.sending~q\,
	datad => \Add3~34_combout\,
	combout => \Add3~78_combout\);

-- Location: FF_X29_Y21_N11
\delay_low_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~78_combout\,
	ena => \delay_low_counter[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_low_counter(17));

-- Location: LCCOMB_X30_Y21_N4
\Add3~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~36_combout\ = (delay_low_counter(18) & ((GND) # (!\Add3~35\))) # (!delay_low_counter(18) & (\Add3~35\ $ (GND)))
-- \Add3~37\ = CARRY((delay_low_counter(18)) # (!\Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_low_counter(18),
	datad => VCC,
	cin => \Add3~35\,
	combout => \Add3~36_combout\,
	cout => \Add3~37\);

-- Location: LCCOMB_X29_Y21_N28
\Add3~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~79_combout\ = (!\state.sending~q\ & \Add3~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.sending~q\,
	datad => \Add3~36_combout\,
	combout => \Add3~79_combout\);

-- Location: FF_X29_Y21_N29
\delay_low_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~79_combout\,
	ena => \delay_low_counter[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_low_counter(18));

-- Location: LCCOMB_X30_Y21_N6
\Add3~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~38_combout\ = (delay_low_counter(19) & (\Add3~37\ & VCC)) # (!delay_low_counter(19) & (!\Add3~37\))
-- \Add3~39\ = CARRY((!delay_low_counter(19) & !\Add3~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_low_counter(19),
	datad => VCC,
	cin => \Add3~37\,
	combout => \Add3~38_combout\,
	cout => \Add3~39\);

-- Location: LCCOMB_X29_Y21_N18
\Add3~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~80_combout\ = (!\state.sending~q\ & \Add3~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.sending~q\,
	datad => \Add3~38_combout\,
	combout => \Add3~80_combout\);

-- Location: FF_X29_Y21_N19
\delay_low_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~80_combout\,
	ena => \delay_low_counter[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_low_counter(19));

-- Location: LCCOMB_X30_Y21_N8
\Add3~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~40_combout\ = (delay_low_counter(20) & ((GND) # (!\Add3~39\))) # (!delay_low_counter(20) & (\Add3~39\ $ (GND)))
-- \Add3~41\ = CARRY((delay_low_counter(20)) # (!\Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_low_counter(20),
	datad => VCC,
	cin => \Add3~39\,
	combout => \Add3~40_combout\,
	cout => \Add3~41\);

-- Location: LCCOMB_X29_Y21_N22
\Add3~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~81_combout\ = (!\state.sending~q\ & \Add3~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.sending~q\,
	datac => \Add3~40_combout\,
	combout => \Add3~81_combout\);

-- Location: FF_X29_Y21_N23
\delay_low_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~81_combout\,
	ena => \delay_low_counter[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_low_counter(20));

-- Location: LCCOMB_X30_Y21_N10
\Add3~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~42_combout\ = (delay_low_counter(21) & (\Add3~41\ & VCC)) # (!delay_low_counter(21) & (!\Add3~41\))
-- \Add3~43\ = CARRY((!delay_low_counter(21) & !\Add3~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_low_counter(21),
	datad => VCC,
	cin => \Add3~41\,
	combout => \Add3~42_combout\,
	cout => \Add3~43\);

-- Location: LCCOMB_X29_Y21_N4
\Add3~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~82_combout\ = (!\state.sending~q\ & \Add3~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.sending~q\,
	datac => \Add3~42_combout\,
	combout => \Add3~82_combout\);

-- Location: FF_X29_Y21_N5
\delay_low_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~82_combout\,
	ena => \delay_low_counter[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_low_counter(21));

-- Location: LCCOMB_X30_Y21_N12
\Add3~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~44_combout\ = (delay_low_counter(22) & ((GND) # (!\Add3~43\))) # (!delay_low_counter(22) & (\Add3~43\ $ (GND)))
-- \Add3~45\ = CARRY((delay_low_counter(22)) # (!\Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_low_counter(22),
	datad => VCC,
	cin => \Add3~43\,
	combout => \Add3~44_combout\,
	cout => \Add3~45\);

-- Location: LCCOMB_X29_Y21_N30
\Add3~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~83_combout\ = (!\state.sending~q\ & \Add3~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.sending~q\,
	datac => \Add3~44_combout\,
	combout => \Add3~83_combout\);

-- Location: FF_X29_Y21_N31
\delay_low_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~83_combout\,
	ena => \delay_low_counter[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_low_counter(22));

-- Location: LCCOMB_X30_Y21_N14
\Add3~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~46_combout\ = (delay_low_counter(23) & (\Add3~45\ & VCC)) # (!delay_low_counter(23) & (!\Add3~45\))
-- \Add3~47\ = CARRY((!delay_low_counter(23) & !\Add3~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_low_counter(23),
	datad => VCC,
	cin => \Add3~45\,
	combout => \Add3~46_combout\,
	cout => \Add3~47\);

-- Location: LCCOMB_X29_Y21_N20
\Add3~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~84_combout\ = (!\state.sending~q\ & \Add3~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.sending~q\,
	datac => \Add3~46_combout\,
	combout => \Add3~84_combout\);

-- Location: FF_X29_Y21_N21
\delay_low_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~84_combout\,
	ena => \delay_low_counter[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_low_counter(23));

-- Location: LCCOMB_X30_Y21_N16
\Add3~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~48_combout\ = (delay_low_counter(24) & ((GND) # (!\Add3~47\))) # (!delay_low_counter(24) & (\Add3~47\ $ (GND)))
-- \Add3~49\ = CARRY((delay_low_counter(24)) # (!\Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_low_counter(24),
	datad => VCC,
	cin => \Add3~47\,
	combout => \Add3~48_combout\,
	cout => \Add3~49\);

-- Location: LCCOMB_X29_Y21_N12
\Add3~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~85_combout\ = (!\state.sending~q\ & \Add3~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.sending~q\,
	datad => \Add3~48_combout\,
	combout => \Add3~85_combout\);

-- Location: FF_X29_Y21_N13
\delay_low_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~85_combout\,
	ena => \delay_low_counter[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_low_counter(24));

-- Location: LCCOMB_X30_Y21_N18
\Add3~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~50_combout\ = (delay_low_counter(25) & (\Add3~49\ & VCC)) # (!delay_low_counter(25) & (!\Add3~49\))
-- \Add3~51\ = CARRY((!delay_low_counter(25) & !\Add3~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_low_counter(25),
	datad => VCC,
	cin => \Add3~49\,
	combout => \Add3~50_combout\,
	cout => \Add3~51\);

-- Location: LCCOMB_X29_Y21_N6
\Add3~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~86_combout\ = (!\state.sending~q\ & \Add3~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.sending~q\,
	datad => \Add3~50_combout\,
	combout => \Add3~86_combout\);

-- Location: FF_X29_Y21_N7
\delay_low_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~86_combout\,
	ena => \delay_low_counter[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_low_counter(25));

-- Location: LCCOMB_X30_Y21_N20
\Add3~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~52_combout\ = (delay_low_counter(26) & ((GND) # (!\Add3~51\))) # (!delay_low_counter(26) & (\Add3~51\ $ (GND)))
-- \Add3~53\ = CARRY((delay_low_counter(26)) # (!\Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_low_counter(26),
	datad => VCC,
	cin => \Add3~51\,
	combout => \Add3~52_combout\,
	cout => \Add3~53\);

-- Location: LCCOMB_X29_Y21_N16
\Add3~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~87_combout\ = (!\state.sending~q\ & \Add3~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.sending~q\,
	datac => \Add3~52_combout\,
	combout => \Add3~87_combout\);

-- Location: FF_X29_Y21_N17
\delay_low_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~87_combout\,
	ena => \delay_low_counter[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_low_counter(26));

-- Location: LCCOMB_X30_Y21_N22
\Add3~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~54_combout\ = (delay_low_counter(27) & (\Add3~53\ & VCC)) # (!delay_low_counter(27) & (!\Add3~53\))
-- \Add3~55\ = CARRY((!delay_low_counter(27) & !\Add3~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_low_counter(27),
	datad => VCC,
	cin => \Add3~53\,
	combout => \Add3~54_combout\,
	cout => \Add3~55\);

-- Location: LCCOMB_X29_Y21_N26
\Add3~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~88_combout\ = (!\state.sending~q\ & \Add3~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.sending~q\,
	datad => \Add3~54_combout\,
	combout => \Add3~88_combout\);

-- Location: FF_X29_Y21_N27
\delay_low_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~88_combout\,
	ena => \delay_low_counter[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_low_counter(27));

-- Location: LCCOMB_X30_Y21_N24
\Add3~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~56_combout\ = (delay_low_counter(28) & ((GND) # (!\Add3~55\))) # (!delay_low_counter(28) & (\Add3~55\ $ (GND)))
-- \Add3~57\ = CARRY((delay_low_counter(28)) # (!\Add3~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_low_counter(28),
	datad => VCC,
	cin => \Add3~55\,
	combout => \Add3~56_combout\,
	cout => \Add3~57\);

-- Location: LCCOMB_X31_Y21_N30
\Add3~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~89_combout\ = (!\state.sending~q\ & \Add3~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.sending~q\,
	datad => \Add3~56_combout\,
	combout => \Add3~89_combout\);

-- Location: FF_X31_Y21_N31
\delay_low_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~89_combout\,
	ena => \delay_low_counter[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_low_counter(28));

-- Location: LCCOMB_X30_Y21_N26
\Add3~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~58_combout\ = (delay_low_counter(29) & (\Add3~57\ & VCC)) # (!delay_low_counter(29) & (!\Add3~57\))
-- \Add3~59\ = CARRY((!delay_low_counter(29) & !\Add3~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_low_counter(29),
	datad => VCC,
	cin => \Add3~57\,
	combout => \Add3~58_combout\,
	cout => \Add3~59\);

-- Location: LCCOMB_X31_Y21_N0
\Add3~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~90_combout\ = (!\state.sending~q\ & \Add3~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.sending~q\,
	datac => \Add3~58_combout\,
	combout => \Add3~90_combout\);

-- Location: FF_X31_Y21_N1
\delay_low_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~90_combout\,
	ena => \delay_low_counter[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_low_counter(29));

-- Location: LCCOMB_X30_Y21_N28
\Add3~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~60_combout\ = (delay_low_counter(30) & ((GND) # (!\Add3~59\))) # (!delay_low_counter(30) & (\Add3~59\ $ (GND)))
-- \Add3~61\ = CARRY((delay_low_counter(30)) # (!\Add3~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_low_counter(30),
	datad => VCC,
	cin => \Add3~59\,
	combout => \Add3~60_combout\,
	cout => \Add3~61\);

-- Location: LCCOMB_X31_Y21_N2
\Add3~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~91_combout\ = (!\state.sending~q\ & \Add3~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.sending~q\,
	datad => \Add3~60_combout\,
	combout => \Add3~91_combout\);

-- Location: FF_X31_Y21_N3
\delay_low_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~91_combout\,
	ena => \delay_low_counter[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_low_counter(30));

-- Location: LCCOMB_X30_Y21_N30
\Add3~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~62_combout\ = \Add3~61\ $ (!delay_low_counter(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => delay_low_counter(31),
	cin => \Add3~61\,
	combout => \Add3~62_combout\);

-- Location: LCCOMB_X31_Y21_N4
\Add3~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~64_combout\ = (!\state.sending~q\ & \Add3~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.sending~q\,
	datad => \Add3~62_combout\,
	combout => \Add3~64_combout\);

-- Location: FF_X31_Y21_N5
\delay_low_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~64_combout\,
	ena => \delay_low_counter[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_low_counter(31));

-- Location: LCCOMB_X29_Y21_N24
\LessThan3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~5_combout\ = (!delay_low_counter(17) & (!delay_low_counter(18) & (!delay_low_counter(16) & !delay_low_counter(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_low_counter(17),
	datab => delay_low_counter(18),
	datac => delay_low_counter(16),
	datad => delay_low_counter(19),
	combout => \LessThan3~5_combout\);

-- Location: LCCOMB_X29_Y21_N0
\LessThan3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~7_combout\ = (!delay_low_counter(25) & (!delay_low_counter(26) & (!delay_low_counter(27) & !delay_low_counter(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_low_counter(25),
	datab => delay_low_counter(26),
	datac => delay_low_counter(27),
	datad => delay_low_counter(24),
	combout => \LessThan3~7_combout\);

-- Location: LCCOMB_X29_Y21_N14
\LessThan3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~6_combout\ = (!delay_low_counter(22) & (!delay_low_counter(21) & (!delay_low_counter(20) & !delay_low_counter(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_low_counter(22),
	datab => delay_low_counter(21),
	datac => delay_low_counter(20),
	datad => delay_low_counter(23),
	combout => \LessThan3~6_combout\);

-- Location: LCCOMB_X31_Y21_N28
\LessThan3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~8_combout\ = (!delay_low_counter(29) & (!delay_low_counter(28) & !delay_low_counter(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => delay_low_counter(29),
	datac => delay_low_counter(28),
	datad => delay_low_counter(30),
	combout => \LessThan3~8_combout\);

-- Location: LCCOMB_X31_Y21_N26
\LessThan3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~9_combout\ = (\LessThan3~5_combout\ & (\LessThan3~7_combout\ & (\LessThan3~6_combout\ & \LessThan3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~5_combout\,
	datab => \LessThan3~7_combout\,
	datac => \LessThan3~6_combout\,
	datad => \LessThan3~8_combout\,
	combout => \LessThan3~9_combout\);

-- Location: LCCOMB_X31_Y22_N12
\LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (!delay_low_counter(2) & (!delay_low_counter(0) & (!delay_low_counter(3) & !delay_low_counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_low_counter(2),
	datab => delay_low_counter(0),
	datac => delay_low_counter(3),
	datad => delay_low_counter(1),
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X31_Y22_N18
\LessThan3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (!delay_low_counter(6) & (!delay_low_counter(7) & (!delay_low_counter(4) & !delay_low_counter(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_low_counter(6),
	datab => delay_low_counter(7),
	datac => delay_low_counter(4),
	datad => delay_low_counter(5),
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X31_Y22_N4
\LessThan3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~2_combout\ = (!delay_low_counter(8) & (!delay_low_counter(10) & (!delay_low_counter(11) & !delay_low_counter(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_low_counter(8),
	datab => delay_low_counter(10),
	datac => delay_low_counter(11),
	datad => delay_low_counter(9),
	combout => \LessThan3~2_combout\);

-- Location: LCCOMB_X31_Y22_N24
\LessThan3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~3_combout\ = (!delay_low_counter(15) & (!delay_low_counter(14) & (!delay_low_counter(12) & !delay_low_counter(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_low_counter(15),
	datab => delay_low_counter(14),
	datac => delay_low_counter(12),
	datad => delay_low_counter(13),
	combout => \LessThan3~3_combout\);

-- Location: LCCOMB_X31_Y22_N30
\LessThan3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~4_combout\ = (\LessThan3~0_combout\ & (\LessThan3~1_combout\ & (\LessThan3~2_combout\ & \LessThan3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~0_combout\,
	datab => \LessThan3~1_combout\,
	datac => \LessThan3~2_combout\,
	datad => \LessThan3~3_combout\,
	combout => \LessThan3~4_combout\);

-- Location: LCCOMB_X32_Y21_N6
\LessThan3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~10_combout\ = (delay_low_counter(31)) # ((\LessThan3~9_combout\ & \LessThan3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => delay_low_counter(31),
	datac => \LessThan3~9_combout\,
	datad => \LessThan3~4_combout\,
	combout => \LessThan3~10_combout\);

-- Location: LCCOMB_X32_Y21_N10
\Selector39~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = (\delay_high_counter[11]~32_combout\) # ((\state.send_bit~q\ & ((\LessThan2~10_combout\) # (!\LessThan3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~10_combout\,
	datab => \LessThan2~10_combout\,
	datac => \state.send_bit~q\,
	datad => \delay_high_counter[11]~32_combout\,
	combout => \Selector39~0_combout\);

-- Location: FF_X32_Y21_N11
\state.send_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.send_bit~q\);

-- Location: LCCOMB_X32_Y21_N0
\Selector137~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector137~0_combout\ = (\serial~reg0_q\ & ((\LessThan3~10_combout\) # ((!\state.reset~q\ & !\state.send_bit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~10_combout\,
	datab => \serial~reg0_q\,
	datac => \state.reset~q\,
	datad => \state.send_bit~q\,
	combout => \Selector137~0_combout\);

-- Location: LCCOMB_X32_Y21_N28
\Selector137~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector137~1_combout\ = (\Selector137~0_combout\) # ((\state.send_bit~q\ & (!\state.reset~q\ & \LessThan2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.send_bit~q\,
	datab => \state.reset~q\,
	datac => \LessThan2~10_combout\,
	datad => \Selector137~0_combout\,
	combout => \Selector137~1_combout\);

-- Location: FF_X32_Y21_N29
\serial~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector137~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial~reg0_q\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~GND~combout\,
	xe_ye => \~GND~combout\,
	se => \~GND~combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_serial <= \serial~output_o\;
END structure;


