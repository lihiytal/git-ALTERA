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

-- DATE "04/13/2024 21:59:55"

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

ENTITY 	DAC_SW IS
    PORT (
	b : OUT std_logic;
	clk : IN std_logic;
	b_blue : IN std_logic;
	dac : OUT std_logic_vector(7 DOWNTO 0);
	highB : OUT std_logic_vector(6 DOWNTO 0);
	highC : OUT std_logic_vector(6 DOWNTO 0);
	lowB : OUT std_logic_vector(6 DOWNTO 0);
	lowC : OUT std_logic_vector(6 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0)
	);
END DAC_SW;

-- Design Ports Information
-- b	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dac[7]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dac[6]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dac[5]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dac[4]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dac[3]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dac[2]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dac[1]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dac[0]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- highB[6]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- highB[5]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- highB[4]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- highB[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- highB[2]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- highB[1]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- highB[0]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- highC[6]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- highC[5]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- highC[4]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- highC[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- highC[2]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- highC[1]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- highC[0]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lowB[6]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lowB[5]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lowB[4]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lowB[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lowB[2]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lowB[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lowB[0]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lowC[6]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lowC[5]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lowC[4]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lowC[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lowC[2]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lowC[1]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lowC[0]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_blue	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DAC_SW IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_b_blue : std_logic;
SIGNAL ww_dac : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_highB : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_highC : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_lowB : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_lowC : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst19|pulse~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|y~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \b~output_o\ : std_logic;
SIGNAL \dac[7]~output_o\ : std_logic;
SIGNAL \dac[6]~output_o\ : std_logic;
SIGNAL \dac[5]~output_o\ : std_logic;
SIGNAL \dac[4]~output_o\ : std_logic;
SIGNAL \dac[3]~output_o\ : std_logic;
SIGNAL \dac[2]~output_o\ : std_logic;
SIGNAL \dac[1]~output_o\ : std_logic;
SIGNAL \dac[0]~output_o\ : std_logic;
SIGNAL \highB[6]~output_o\ : std_logic;
SIGNAL \highB[5]~output_o\ : std_logic;
SIGNAL \highB[4]~output_o\ : std_logic;
SIGNAL \highB[3]~output_o\ : std_logic;
SIGNAL \highB[2]~output_o\ : std_logic;
SIGNAL \highB[1]~output_o\ : std_logic;
SIGNAL \highB[0]~output_o\ : std_logic;
SIGNAL \highC[6]~output_o\ : std_logic;
SIGNAL \highC[5]~output_o\ : std_logic;
SIGNAL \highC[4]~output_o\ : std_logic;
SIGNAL \highC[3]~output_o\ : std_logic;
SIGNAL \highC[2]~output_o\ : std_logic;
SIGNAL \highC[1]~output_o\ : std_logic;
SIGNAL \highC[0]~output_o\ : std_logic;
SIGNAL \lowB[6]~output_o\ : std_logic;
SIGNAL \lowB[5]~output_o\ : std_logic;
SIGNAL \lowB[4]~output_o\ : std_logic;
SIGNAL \lowB[3]~output_o\ : std_logic;
SIGNAL \lowB[2]~output_o\ : std_logic;
SIGNAL \lowB[1]~output_o\ : std_logic;
SIGNAL \lowB[0]~output_o\ : std_logic;
SIGNAL \lowC[6]~output_o\ : std_logic;
SIGNAL \lowC[5]~output_o\ : std_logic;
SIGNAL \lowC[4]~output_o\ : std_logic;
SIGNAL \lowC[3]~output_o\ : std_logic;
SIGNAL \lowC[2]~output_o\ : std_logic;
SIGNAL \lowC[1]~output_o\ : std_logic;
SIGNAL \lowC[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|cnt[0]~24_combout\ : std_logic;
SIGNAL \inst|cnt[17]~59\ : std_logic;
SIGNAL \inst|cnt[18]~60_combout\ : std_logic;
SIGNAL \inst|cnt[18]~61\ : std_logic;
SIGNAL \inst|cnt[19]~62_combout\ : std_logic;
SIGNAL \inst|cnt[19]~63\ : std_logic;
SIGNAL \inst|cnt[20]~64_combout\ : std_logic;
SIGNAL \inst|cnt[20]~65\ : std_logic;
SIGNAL \inst|cnt[21]~66_combout\ : std_logic;
SIGNAL \inst|cnt[21]~67\ : std_logic;
SIGNAL \inst|cnt[22]~68_combout\ : std_logic;
SIGNAL \inst|cnt[22]~69\ : std_logic;
SIGNAL \inst|cnt[23]~70_combout\ : std_logic;
SIGNAL \inst|LessThan0~4_combout\ : std_logic;
SIGNAL \inst|LessThan0~5_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|LessThan0~6_combout\ : std_logic;
SIGNAL \inst|cnt[0]~25\ : std_logic;
SIGNAL \inst|cnt[1]~26_combout\ : std_logic;
SIGNAL \inst|cnt[1]~27\ : std_logic;
SIGNAL \inst|cnt[2]~28_combout\ : std_logic;
SIGNAL \inst|cnt[2]~29\ : std_logic;
SIGNAL \inst|cnt[3]~30_combout\ : std_logic;
SIGNAL \inst|cnt[3]~31\ : std_logic;
SIGNAL \inst|cnt[4]~32_combout\ : std_logic;
SIGNAL \inst|cnt[4]~33\ : std_logic;
SIGNAL \inst|cnt[5]~34_combout\ : std_logic;
SIGNAL \inst|cnt[5]~35\ : std_logic;
SIGNAL \inst|cnt[6]~36_combout\ : std_logic;
SIGNAL \inst|cnt[6]~37\ : std_logic;
SIGNAL \inst|cnt[7]~38_combout\ : std_logic;
SIGNAL \inst|cnt[7]~39\ : std_logic;
SIGNAL \inst|cnt[8]~40_combout\ : std_logic;
SIGNAL \inst|cnt[8]~41\ : std_logic;
SIGNAL \inst|cnt[9]~42_combout\ : std_logic;
SIGNAL \inst|cnt[9]~43\ : std_logic;
SIGNAL \inst|cnt[10]~44_combout\ : std_logic;
SIGNAL \inst|cnt[10]~45\ : std_logic;
SIGNAL \inst|cnt[11]~46_combout\ : std_logic;
SIGNAL \inst|cnt[11]~47\ : std_logic;
SIGNAL \inst|cnt[12]~48_combout\ : std_logic;
SIGNAL \inst|cnt[12]~feeder_combout\ : std_logic;
SIGNAL \inst|cnt[12]~49\ : std_logic;
SIGNAL \inst|cnt[13]~50_combout\ : std_logic;
SIGNAL \inst|cnt[13]~51\ : std_logic;
SIGNAL \inst|cnt[14]~52_combout\ : std_logic;
SIGNAL \inst|cnt[14]~53\ : std_logic;
SIGNAL \inst|cnt[15]~54_combout\ : std_logic;
SIGNAL \inst|cnt[15]~55\ : std_logic;
SIGNAL \inst|cnt[16]~56_combout\ : std_logic;
SIGNAL \inst|cnt[16]~57\ : std_logic;
SIGNAL \inst|cnt[17]~58_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|y~0_combout\ : std_logic;
SIGNAL \inst|y~feeder_combout\ : std_logic;
SIGNAL \inst|y~q\ : std_logic;
SIGNAL \inst|y~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|cnt[0]~8_combout\ : std_logic;
SIGNAL \inst2|cnt[0]~9\ : std_logic;
SIGNAL \inst2|cnt[1]~10_combout\ : std_logic;
SIGNAL \inst2|cnt[1]~11\ : std_logic;
SIGNAL \inst2|cnt[2]~12_combout\ : std_logic;
SIGNAL \inst2|cnt[2]~13\ : std_logic;
SIGNAL \inst2|cnt[3]~14_combout\ : std_logic;
SIGNAL \inst2|cnt[3]~15\ : std_logic;
SIGNAL \inst2|cnt[4]~16_combout\ : std_logic;
SIGNAL \inst2|cnt[4]~17\ : std_logic;
SIGNAL \inst2|cnt[5]~18_combout\ : std_logic;
SIGNAL \inst2|cnt[5]~19\ : std_logic;
SIGNAL \inst2|cnt[6]~20_combout\ : std_logic;
SIGNAL \inst2|Equal1~0_combout\ : std_logic;
SIGNAL \inst2|Equal1~1_combout\ : std_logic;
SIGNAL \inst2|Equal1~2_combout\ : std_logic;
SIGNAL \inst2|comb~1_combout\ : std_logic;
SIGNAL \inst2|comb~0_combout\ : std_logic;
SIGNAL \inst2|comb~2_combout\ : std_logic;
SIGNAL \inst2|u_d~combout\ : std_logic;
SIGNAL \inst2|cnt[6]~21\ : std_logic;
SIGNAL \inst2|cnt[7]~22_combout\ : std_logic;
SIGNAL \b_blue~input_o\ : std_logic;
SIGNAL \inst19|pulse~feeder_combout\ : std_logic;
SIGNAL \inst19|cnt[0]~25_combout\ : std_logic;
SIGNAL \inst19|cnt[16]~58\ : std_logic;
SIGNAL \inst19|cnt[17]~59_combout\ : std_logic;
SIGNAL \inst19|enable~feeder_combout\ : std_logic;
SIGNAL \inst19|enable~q\ : std_logic;
SIGNAL \inst19|cnt[17]~60\ : std_logic;
SIGNAL \inst19|cnt[18]~61_combout\ : std_logic;
SIGNAL \inst19|cnt[18]~62\ : std_logic;
SIGNAL \inst19|cnt[19]~63_combout\ : std_logic;
SIGNAL \inst19|cnt[19]~64\ : std_logic;
SIGNAL \inst19|cnt[20]~65_combout\ : std_logic;
SIGNAL \inst19|cnt[20]~66\ : std_logic;
SIGNAL \inst19|cnt[21]~67_combout\ : std_logic;
SIGNAL \inst19|Equal0~0_combout\ : std_logic;
SIGNAL \inst19|cnt[21]~68\ : std_logic;
SIGNAL \inst19|cnt[22]~69_combout\ : std_logic;
SIGNAL \inst19|cnt[22]~70\ : std_logic;
SIGNAL \inst19|cnt[23]~71_combout\ : std_logic;
SIGNAL \inst19|cnt[23]~72\ : std_logic;
SIGNAL \inst19|cnt[24]~73_combout\ : std_logic;
SIGNAL \inst19|Equal0~1_combout\ : std_logic;
SIGNAL \inst19|Equal0~2_combout\ : std_logic;
SIGNAL \inst19|LessThan0~0_combout\ : std_logic;
SIGNAL \inst19|LessThan0~1_combout\ : std_logic;
SIGNAL \inst19|LessThan0~2_combout\ : std_logic;
SIGNAL \inst19|cnt[0]~26\ : std_logic;
SIGNAL \inst19|cnt[1]~27_combout\ : std_logic;
SIGNAL \inst19|cnt[1]~28\ : std_logic;
SIGNAL \inst19|cnt[2]~29_combout\ : std_logic;
SIGNAL \inst19|cnt[2]~30\ : std_logic;
SIGNAL \inst19|cnt[3]~31_combout\ : std_logic;
SIGNAL \inst19|cnt[3]~32\ : std_logic;
SIGNAL \inst19|cnt[4]~33_combout\ : std_logic;
SIGNAL \inst19|cnt[4]~34\ : std_logic;
SIGNAL \inst19|cnt[5]~35_combout\ : std_logic;
SIGNAL \inst19|cnt[5]~36\ : std_logic;
SIGNAL \inst19|cnt[6]~37_combout\ : std_logic;
SIGNAL \inst19|cnt[6]~38\ : std_logic;
SIGNAL \inst19|cnt[7]~39_combout\ : std_logic;
SIGNAL \inst19|cnt[7]~40\ : std_logic;
SIGNAL \inst19|cnt[8]~41_combout\ : std_logic;
SIGNAL \inst19|cnt[8]~42\ : std_logic;
SIGNAL \inst19|cnt[9]~43_combout\ : std_logic;
SIGNAL \inst19|cnt[9]~44\ : std_logic;
SIGNAL \inst19|cnt[10]~45_combout\ : std_logic;
SIGNAL \inst19|cnt[10]~46\ : std_logic;
SIGNAL \inst19|cnt[11]~47_combout\ : std_logic;
SIGNAL \inst19|cnt[11]~48\ : std_logic;
SIGNAL \inst19|cnt[12]~49_combout\ : std_logic;
SIGNAL \inst19|cnt[12]~50\ : std_logic;
SIGNAL \inst19|cnt[13]~51_combout\ : std_logic;
SIGNAL \inst19|cnt[13]~52\ : std_logic;
SIGNAL \inst19|cnt[14]~53_combout\ : std_logic;
SIGNAL \inst19|cnt[14]~54\ : std_logic;
SIGNAL \inst19|cnt[15]~55_combout\ : std_logic;
SIGNAL \inst19|cnt[15]~56\ : std_logic;
SIGNAL \inst19|cnt[16]~57_combout\ : std_logic;
SIGNAL \inst19|Equal0~6_combout\ : std_logic;
SIGNAL \inst19|Equal0~4_combout\ : std_logic;
SIGNAL \inst19|Equal0~5_combout\ : std_logic;
SIGNAL \inst19|Equal0~3_combout\ : std_logic;
SIGNAL \inst19|Equal0~7_combout\ : std_logic;
SIGNAL \inst19|pulse~q\ : std_logic;
SIGNAL \inst19|pulse~clkctrl_outclk\ : std_logic;
SIGNAL \inst6|cnt[1]~3_combout\ : std_logic;
SIGNAL \inst6|cnt~0_combout\ : std_logic;
SIGNAL \inst6|cnt[2]~1_combout\ : std_logic;
SIGNAL \inst6|cnt~2_combout\ : std_logic;
SIGNAL \inst8|Mux0~0_combout\ : std_logic;
SIGNAL \inst8|Mux1~0_combout\ : std_logic;
SIGNAL \inst8|Mux2~0_combout\ : std_logic;
SIGNAL \inst8|Mux3~0_combout\ : std_logic;
SIGNAL \inst8|Mux5~0_combout\ : std_logic;
SIGNAL \inst8|Mux6~0_combout\ : std_logic;
SIGNAL \inst13|Mux0~0_combout\ : std_logic;
SIGNAL \inst13|Mux1~0_combout\ : std_logic;
SIGNAL \inst13|Mux2~0_combout\ : std_logic;
SIGNAL \inst13|Mux3~0_combout\ : std_logic;
SIGNAL \inst13|Mux4~0_combout\ : std_logic;
SIGNAL \inst13|Mux5~0_combout\ : std_logic;
SIGNAL \inst13|Mux6~0_combout\ : std_logic;
SIGNAL \inst10|Mux0~0_combout\ : std_logic;
SIGNAL \inst10|Mux2~0_combout\ : std_logic;
SIGNAL \inst10|Mux3~0_combout\ : std_logic;
SIGNAL \inst10|Mux5~0_combout\ : std_logic;
SIGNAL \inst10|Mux6~0_combout\ : std_logic;
SIGNAL \inst2|cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|cnt\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst19|cnt\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \inst6|cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_b_blue~input_o\ : std_logic;
SIGNAL \inst19|ALT_INV_Equal0~7_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst13|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_Mux6~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

b <= ww_b;
ww_clk <= clk;
ww_b_blue <= b_blue;
dac <= ww_dac;
highB <= ww_highB;
highC <= ww_highC;
lowB <= ww_lowB;
lowC <= ww_lowC;
ww_sw <= sw;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst19|pulse~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst19|pulse~q\);

\inst|y~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|y~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_b_blue~input_o\ <= NOT \b_blue~input_o\;
\inst19|ALT_INV_Equal0~7_combout\ <= NOT \inst19|Equal0~7_combout\;
\inst10|ALT_INV_Mux6~0_combout\ <= NOT \inst10|Mux6~0_combout\;
\inst10|ALT_INV_Mux5~0_combout\ <= NOT \inst10|Mux5~0_combout\;
\inst10|ALT_INV_Mux0~0_combout\ <= NOT \inst10|Mux0~0_combout\;
\inst13|ALT_INV_Mux6~0_combout\ <= NOT \inst13|Mux6~0_combout\;
\inst8|ALT_INV_Mux6~0_combout\ <= NOT \inst8|Mux6~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X31_Y0_N23
\b~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\dac[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|cnt\(7),
	devoe => ww_devoe,
	o => \dac[7]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\dac[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|cnt\(6),
	devoe => ww_devoe,
	o => \dac[6]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\dac[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|cnt\(5),
	devoe => ww_devoe,
	o => \dac[5]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\dac[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|cnt\(4),
	devoe => ww_devoe,
	o => \dac[4]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\dac[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|cnt\(3),
	devoe => ww_devoe,
	o => \dac[3]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\dac[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|cnt\(2),
	devoe => ww_devoe,
	o => \dac[2]~output_o\);

-- Location: IOOBUF_X46_Y0_N2
\dac[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|cnt\(1),
	devoe => ww_devoe,
	o => \dac[1]~output_o\);

-- Location: IOOBUF_X54_Y0_N30
\dac[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|cnt\(0),
	devoe => ww_devoe,
	o => \dac[0]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\highB[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \highB[6]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\highB[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \highB[5]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\highB[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \highB[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\highB[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \highB[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\highB[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \highB[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\highB[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \highB[1]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\highB[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \highB[0]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\highC[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \highC[6]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\highC[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \highC[5]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\highC[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \highC[4]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\highC[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \highC[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\highC[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \highC[2]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\highC[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \highC[1]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\highC[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \highC[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\lowB[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \lowB[6]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\lowB[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \lowB[5]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\lowB[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \lowB[4]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\lowB[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \lowB[3]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\lowB[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \lowB[2]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\lowB[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \lowB[1]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\lowB[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \lowB[0]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\lowC[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \lowC[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\lowC[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \lowC[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\lowC[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \lowC[4]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\lowC[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \lowC[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\lowC[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \lowC[2]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\lowC[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \lowC[1]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\lowC[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \lowC[0]~output_o\);

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

-- Location: LCCOMB_X42_Y2_N8
\inst|cnt[0]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[0]~24_combout\ = \inst|cnt\(0) $ (VCC)
-- \inst|cnt[0]~25\ = CARRY(\inst|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(0),
	datad => VCC,
	combout => \inst|cnt[0]~24_combout\,
	cout => \inst|cnt[0]~25\);

-- Location: LCCOMB_X42_Y1_N10
\inst|cnt[17]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[17]~58_combout\ = (\inst|cnt\(17) & (!\inst|cnt[16]~57\)) # (!\inst|cnt\(17) & ((\inst|cnt[16]~57\) # (GND)))
-- \inst|cnt[17]~59\ = CARRY((!\inst|cnt[16]~57\) # (!\inst|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(17),
	datad => VCC,
	cin => \inst|cnt[16]~57\,
	combout => \inst|cnt[17]~58_combout\,
	cout => \inst|cnt[17]~59\);

-- Location: LCCOMB_X42_Y1_N12
\inst|cnt[18]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[18]~60_combout\ = (\inst|cnt\(18) & (\inst|cnt[17]~59\ $ (GND))) # (!\inst|cnt\(18) & (!\inst|cnt[17]~59\ & VCC))
-- \inst|cnt[18]~61\ = CARRY((\inst|cnt\(18) & !\inst|cnt[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(18),
	datad => VCC,
	cin => \inst|cnt[17]~59\,
	combout => \inst|cnt[18]~60_combout\,
	cout => \inst|cnt[18]~61\);

-- Location: FF_X42_Y1_N13
\inst|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[18]~60_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(18));

-- Location: LCCOMB_X42_Y1_N14
\inst|cnt[19]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[19]~62_combout\ = (\inst|cnt\(19) & (!\inst|cnt[18]~61\)) # (!\inst|cnt\(19) & ((\inst|cnt[18]~61\) # (GND)))
-- \inst|cnt[19]~63\ = CARRY((!\inst|cnt[18]~61\) # (!\inst|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(19),
	datad => VCC,
	cin => \inst|cnt[18]~61\,
	combout => \inst|cnt[19]~62_combout\,
	cout => \inst|cnt[19]~63\);

-- Location: FF_X42_Y1_N15
\inst|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[19]~62_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(19));

-- Location: LCCOMB_X42_Y1_N16
\inst|cnt[20]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[20]~64_combout\ = (\inst|cnt\(20) & (\inst|cnt[19]~63\ $ (GND))) # (!\inst|cnt\(20) & (!\inst|cnt[19]~63\ & VCC))
-- \inst|cnt[20]~65\ = CARRY((\inst|cnt\(20) & !\inst|cnt[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(20),
	datad => VCC,
	cin => \inst|cnt[19]~63\,
	combout => \inst|cnt[20]~64_combout\,
	cout => \inst|cnt[20]~65\);

-- Location: FF_X42_Y1_N17
\inst|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[20]~64_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(20));

-- Location: LCCOMB_X42_Y1_N18
\inst|cnt[21]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[21]~66_combout\ = (\inst|cnt\(21) & (!\inst|cnt[20]~65\)) # (!\inst|cnt\(21) & ((\inst|cnt[20]~65\) # (GND)))
-- \inst|cnt[21]~67\ = CARRY((!\inst|cnt[20]~65\) # (!\inst|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(21),
	datad => VCC,
	cin => \inst|cnt[20]~65\,
	combout => \inst|cnt[21]~66_combout\,
	cout => \inst|cnt[21]~67\);

-- Location: FF_X42_Y1_N19
\inst|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[21]~66_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(21));

-- Location: LCCOMB_X42_Y1_N20
\inst|cnt[22]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[22]~68_combout\ = (\inst|cnt\(22) & (\inst|cnt[21]~67\ $ (GND))) # (!\inst|cnt\(22) & (!\inst|cnt[21]~67\ & VCC))
-- \inst|cnt[22]~69\ = CARRY((\inst|cnt\(22) & !\inst|cnt[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(22),
	datad => VCC,
	cin => \inst|cnt[21]~67\,
	combout => \inst|cnt[22]~68_combout\,
	cout => \inst|cnt[22]~69\);

-- Location: FF_X42_Y1_N21
\inst|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[22]~68_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(22));

-- Location: LCCOMB_X42_Y1_N22
\inst|cnt[23]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[23]~70_combout\ = \inst|cnt\(23) $ (\inst|cnt[22]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(23),
	cin => \inst|cnt[22]~69\,
	combout => \inst|cnt[23]~70_combout\);

-- Location: FF_X42_Y1_N23
\inst|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[23]~70_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(23));

-- Location: LCCOMB_X42_Y1_N28
\inst|LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan0~4_combout\ = (!\inst|cnt\(22) & (((!\inst|cnt\(18) & !\inst|cnt\(19))) # (!\inst|cnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(18),
	datab => \inst|cnt\(20),
	datac => \inst|cnt\(19),
	datad => \inst|cnt\(22),
	combout => \inst|LessThan0~4_combout\);

-- Location: LCCOMB_X42_Y1_N30
\inst|LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan0~5_combout\ = ((\inst|LessThan0~4_combout\) # ((!\inst|cnt\(21) & !\inst|cnt\(22)))) # (!\inst|cnt\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(23),
	datab => \inst|cnt\(21),
	datac => \inst|cnt\(22),
	datad => \inst|LessThan0~4_combout\,
	combout => \inst|LessThan0~5_combout\);

-- Location: LCCOMB_X42_Y2_N2
\inst|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = ((!\inst|cnt\(10) & ((!\inst|cnt\(8)) # (!\inst|cnt\(9))))) # (!\inst|cnt\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(9),
	datab => \inst|cnt\(8),
	datac => \inst|cnt\(11),
	datad => \inst|cnt\(10),
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X42_Y1_N24
\inst|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (!\inst|cnt\(19) & (!\inst|cnt\(13) & (!\inst|cnt\(14) & !\inst|cnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(19),
	datab => \inst|cnt\(13),
	datac => \inst|cnt\(14),
	datad => \inst|cnt\(22),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X42_Y2_N0
\inst|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (!\inst|cnt\(15) & (\inst|LessThan0~0_combout\ & ((\inst|LessThan0~1_combout\) # (!\inst|cnt\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(15),
	datab => \inst|LessThan0~1_combout\,
	datac => \inst|cnt\(12),
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|LessThan0~2_combout\);

-- Location: LCCOMB_X42_Y2_N6
\inst|LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan0~6_combout\ = (!\inst|LessThan0~3_combout\ & (!\inst|LessThan0~5_combout\ & !\inst|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LessThan0~3_combout\,
	datac => \inst|LessThan0~5_combout\,
	datad => \inst|LessThan0~2_combout\,
	combout => \inst|LessThan0~6_combout\);

-- Location: FF_X42_Y2_N9
\inst|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[0]~24_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(0));

-- Location: LCCOMB_X42_Y2_N10
\inst|cnt[1]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[1]~26_combout\ = (\inst|cnt\(1) & (!\inst|cnt[0]~25\)) # (!\inst|cnt\(1) & ((\inst|cnt[0]~25\) # (GND)))
-- \inst|cnt[1]~27\ = CARRY((!\inst|cnt[0]~25\) # (!\inst|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(1),
	datad => VCC,
	cin => \inst|cnt[0]~25\,
	combout => \inst|cnt[1]~26_combout\,
	cout => \inst|cnt[1]~27\);

-- Location: FF_X42_Y2_N11
\inst|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[1]~26_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(1));

-- Location: LCCOMB_X42_Y2_N12
\inst|cnt[2]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[2]~28_combout\ = (\inst|cnt\(2) & (\inst|cnt[1]~27\ $ (GND))) # (!\inst|cnt\(2) & (!\inst|cnt[1]~27\ & VCC))
-- \inst|cnt[2]~29\ = CARRY((\inst|cnt\(2) & !\inst|cnt[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(2),
	datad => VCC,
	cin => \inst|cnt[1]~27\,
	combout => \inst|cnt[2]~28_combout\,
	cout => \inst|cnt[2]~29\);

-- Location: FF_X42_Y2_N13
\inst|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[2]~28_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(2));

-- Location: LCCOMB_X42_Y2_N14
\inst|cnt[3]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[3]~30_combout\ = (\inst|cnt\(3) & (!\inst|cnt[2]~29\)) # (!\inst|cnt\(3) & ((\inst|cnt[2]~29\) # (GND)))
-- \inst|cnt[3]~31\ = CARRY((!\inst|cnt[2]~29\) # (!\inst|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(3),
	datad => VCC,
	cin => \inst|cnt[2]~29\,
	combout => \inst|cnt[3]~30_combout\,
	cout => \inst|cnt[3]~31\);

-- Location: FF_X42_Y2_N15
\inst|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[3]~30_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(3));

-- Location: LCCOMB_X42_Y2_N16
\inst|cnt[4]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[4]~32_combout\ = (\inst|cnt\(4) & (\inst|cnt[3]~31\ $ (GND))) # (!\inst|cnt\(4) & (!\inst|cnt[3]~31\ & VCC))
-- \inst|cnt[4]~33\ = CARRY((\inst|cnt\(4) & !\inst|cnt[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(4),
	datad => VCC,
	cin => \inst|cnt[3]~31\,
	combout => \inst|cnt[4]~32_combout\,
	cout => \inst|cnt[4]~33\);

-- Location: FF_X42_Y2_N17
\inst|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[4]~32_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(4));

-- Location: LCCOMB_X42_Y2_N18
\inst|cnt[5]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[5]~34_combout\ = (\inst|cnt\(5) & (!\inst|cnt[4]~33\)) # (!\inst|cnt\(5) & ((\inst|cnt[4]~33\) # (GND)))
-- \inst|cnt[5]~35\ = CARRY((!\inst|cnt[4]~33\) # (!\inst|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(5),
	datad => VCC,
	cin => \inst|cnt[4]~33\,
	combout => \inst|cnt[5]~34_combout\,
	cout => \inst|cnt[5]~35\);

-- Location: FF_X42_Y2_N19
\inst|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[5]~34_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(5));

-- Location: LCCOMB_X42_Y2_N20
\inst|cnt[6]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[6]~36_combout\ = (\inst|cnt\(6) & (\inst|cnt[5]~35\ $ (GND))) # (!\inst|cnt\(6) & (!\inst|cnt[5]~35\ & VCC))
-- \inst|cnt[6]~37\ = CARRY((\inst|cnt\(6) & !\inst|cnt[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(6),
	datad => VCC,
	cin => \inst|cnt[5]~35\,
	combout => \inst|cnt[6]~36_combout\,
	cout => \inst|cnt[6]~37\);

-- Location: FF_X42_Y2_N21
\inst|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[6]~36_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(6));

-- Location: LCCOMB_X42_Y2_N22
\inst|cnt[7]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[7]~38_combout\ = (\inst|cnt\(7) & (!\inst|cnt[6]~37\)) # (!\inst|cnt\(7) & ((\inst|cnt[6]~37\) # (GND)))
-- \inst|cnt[7]~39\ = CARRY((!\inst|cnt[6]~37\) # (!\inst|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(7),
	datad => VCC,
	cin => \inst|cnt[6]~37\,
	combout => \inst|cnt[7]~38_combout\,
	cout => \inst|cnt[7]~39\);

-- Location: FF_X42_Y2_N23
\inst|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[7]~38_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(7));

-- Location: LCCOMB_X42_Y2_N24
\inst|cnt[8]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[8]~40_combout\ = (\inst|cnt\(8) & (\inst|cnt[7]~39\ $ (GND))) # (!\inst|cnt\(8) & (!\inst|cnt[7]~39\ & VCC))
-- \inst|cnt[8]~41\ = CARRY((\inst|cnt\(8) & !\inst|cnt[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(8),
	datad => VCC,
	cin => \inst|cnt[7]~39\,
	combout => \inst|cnt[8]~40_combout\,
	cout => \inst|cnt[8]~41\);

-- Location: FF_X42_Y2_N25
\inst|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[8]~40_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(8));

-- Location: LCCOMB_X42_Y2_N26
\inst|cnt[9]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[9]~42_combout\ = (\inst|cnt\(9) & (!\inst|cnt[8]~41\)) # (!\inst|cnt\(9) & ((\inst|cnt[8]~41\) # (GND)))
-- \inst|cnt[9]~43\ = CARRY((!\inst|cnt[8]~41\) # (!\inst|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(9),
	datad => VCC,
	cin => \inst|cnt[8]~41\,
	combout => \inst|cnt[9]~42_combout\,
	cout => \inst|cnt[9]~43\);

-- Location: FF_X42_Y2_N27
\inst|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[9]~42_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(9));

-- Location: LCCOMB_X42_Y2_N28
\inst|cnt[10]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[10]~44_combout\ = (\inst|cnt\(10) & (\inst|cnt[9]~43\ $ (GND))) # (!\inst|cnt\(10) & (!\inst|cnt[9]~43\ & VCC))
-- \inst|cnt[10]~45\ = CARRY((\inst|cnt\(10) & !\inst|cnt[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(10),
	datad => VCC,
	cin => \inst|cnt[9]~43\,
	combout => \inst|cnt[10]~44_combout\,
	cout => \inst|cnt[10]~45\);

-- Location: FF_X42_Y2_N29
\inst|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[10]~44_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(10));

-- Location: LCCOMB_X42_Y2_N30
\inst|cnt[11]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[11]~46_combout\ = (\inst|cnt\(11) & (!\inst|cnt[10]~45\)) # (!\inst|cnt\(11) & ((\inst|cnt[10]~45\) # (GND)))
-- \inst|cnt[11]~47\ = CARRY((!\inst|cnt[10]~45\) # (!\inst|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(11),
	datad => VCC,
	cin => \inst|cnt[10]~45\,
	combout => \inst|cnt[11]~46_combout\,
	cout => \inst|cnt[11]~47\);

-- Location: FF_X42_Y2_N31
\inst|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[11]~46_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(11));

-- Location: LCCOMB_X42_Y1_N0
\inst|cnt[12]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[12]~48_combout\ = (\inst|cnt\(12) & (\inst|cnt[11]~47\ $ (GND))) # (!\inst|cnt\(12) & (!\inst|cnt[11]~47\ & VCC))
-- \inst|cnt[12]~49\ = CARRY((\inst|cnt\(12) & !\inst|cnt[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(12),
	datad => VCC,
	cin => \inst|cnt[11]~47\,
	combout => \inst|cnt[12]~48_combout\,
	cout => \inst|cnt[12]~49\);

-- Location: LCCOMB_X42_Y2_N4
\inst|cnt[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[12]~feeder_combout\ = \inst|cnt[12]~48_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|cnt[12]~48_combout\,
	combout => \inst|cnt[12]~feeder_combout\);

-- Location: FF_X42_Y2_N5
\inst|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[12]~feeder_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(12));

-- Location: LCCOMB_X42_Y1_N2
\inst|cnt[13]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[13]~50_combout\ = (\inst|cnt\(13) & (!\inst|cnt[12]~49\)) # (!\inst|cnt\(13) & ((\inst|cnt[12]~49\) # (GND)))
-- \inst|cnt[13]~51\ = CARRY((!\inst|cnt[12]~49\) # (!\inst|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(13),
	datad => VCC,
	cin => \inst|cnt[12]~49\,
	combout => \inst|cnt[13]~50_combout\,
	cout => \inst|cnt[13]~51\);

-- Location: FF_X42_Y1_N3
\inst|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[13]~50_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(13));

-- Location: LCCOMB_X42_Y1_N4
\inst|cnt[14]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[14]~52_combout\ = (\inst|cnt\(14) & (\inst|cnt[13]~51\ $ (GND))) # (!\inst|cnt\(14) & (!\inst|cnt[13]~51\ & VCC))
-- \inst|cnt[14]~53\ = CARRY((\inst|cnt\(14) & !\inst|cnt[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(14),
	datad => VCC,
	cin => \inst|cnt[13]~51\,
	combout => \inst|cnt[14]~52_combout\,
	cout => \inst|cnt[14]~53\);

-- Location: FF_X42_Y1_N5
\inst|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[14]~52_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(14));

-- Location: LCCOMB_X42_Y1_N6
\inst|cnt[15]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[15]~54_combout\ = (\inst|cnt\(15) & (!\inst|cnt[14]~53\)) # (!\inst|cnt\(15) & ((\inst|cnt[14]~53\) # (GND)))
-- \inst|cnt[15]~55\ = CARRY((!\inst|cnt[14]~53\) # (!\inst|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(15),
	datad => VCC,
	cin => \inst|cnt[14]~53\,
	combout => \inst|cnt[15]~54_combout\,
	cout => \inst|cnt[15]~55\);

-- Location: FF_X42_Y1_N7
\inst|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[15]~54_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(15));

-- Location: LCCOMB_X42_Y1_N8
\inst|cnt[16]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[16]~56_combout\ = (\inst|cnt\(16) & (\inst|cnt[15]~55\ $ (GND))) # (!\inst|cnt\(16) & (!\inst|cnt[15]~55\ & VCC))
-- \inst|cnt[16]~57\ = CARRY((\inst|cnt\(16) & !\inst|cnt[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(16),
	datad => VCC,
	cin => \inst|cnt[15]~55\,
	combout => \inst|cnt[16]~56_combout\,
	cout => \inst|cnt[16]~57\);

-- Location: FF_X42_Y1_N9
\inst|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[16]~56_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(16));

-- Location: FF_X42_Y1_N11
\inst|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[17]~58_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(17));

-- Location: LCCOMB_X42_Y1_N26
\inst|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = (!\inst|cnt\(22) & (!\inst|cnt\(19) & ((!\inst|cnt\(16)) # (!\inst|cnt\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(17),
	datab => \inst|cnt\(16),
	datac => \inst|cnt\(22),
	datad => \inst|cnt\(19),
	combout => \inst|LessThan0~3_combout\);

-- Location: LCCOMB_X43_Y2_N18
\inst|y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|y~0_combout\ = \inst|y~q\ $ (((!\inst|LessThan0~3_combout\ & (!\inst|LessThan0~2_combout\ & !\inst|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y~q\,
	datab => \inst|LessThan0~3_combout\,
	datac => \inst|LessThan0~2_combout\,
	datad => \inst|LessThan0~5_combout\,
	combout => \inst|y~0_combout\);

-- Location: LCCOMB_X43_Y2_N28
\inst|y~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|y~feeder_combout\ = \inst|y~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|y~0_combout\,
	combout => \inst|y~feeder_combout\);

-- Location: FF_X43_Y2_N29
\inst|y\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|y~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y~q\);

-- Location: CLKCTRL_G15
\inst|y~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|y~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|y~clkctrl_outclk\);

-- Location: LCCOMB_X37_Y1_N0
\inst2|cnt[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|cnt[0]~8_combout\ = \inst2|cnt\(0) $ (VCC)
-- \inst2|cnt[0]~9\ = CARRY(\inst2|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cnt\(0),
	datad => VCC,
	combout => \inst2|cnt[0]~8_combout\,
	cout => \inst2|cnt[0]~9\);

-- Location: FF_X37_Y1_N1
\inst2|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst2|cnt[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cnt\(0));

-- Location: LCCOMB_X37_Y1_N2
\inst2|cnt[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|cnt[1]~10_combout\ = (\inst2|u_d~combout\ & ((\inst2|cnt\(1) & (!\inst2|cnt[0]~9\)) # (!\inst2|cnt\(1) & ((\inst2|cnt[0]~9\) # (GND))))) # (!\inst2|u_d~combout\ & ((\inst2|cnt\(1) & (\inst2|cnt[0]~9\ & VCC)) # (!\inst2|cnt\(1) & 
-- (!\inst2|cnt[0]~9\))))
-- \inst2|cnt[1]~11\ = CARRY((\inst2|u_d~combout\ & ((!\inst2|cnt[0]~9\) # (!\inst2|cnt\(1)))) # (!\inst2|u_d~combout\ & (!\inst2|cnt\(1) & !\inst2|cnt[0]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|u_d~combout\,
	datab => \inst2|cnt\(1),
	datad => VCC,
	cin => \inst2|cnt[0]~9\,
	combout => \inst2|cnt[1]~10_combout\,
	cout => \inst2|cnt[1]~11\);

-- Location: FF_X37_Y1_N3
\inst2|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst2|cnt[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cnt\(1));

-- Location: LCCOMB_X37_Y1_N4
\inst2|cnt[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|cnt[2]~12_combout\ = ((\inst2|u_d~combout\ $ (\inst2|cnt\(2) $ (\inst2|cnt[1]~11\)))) # (GND)
-- \inst2|cnt[2]~13\ = CARRY((\inst2|u_d~combout\ & (\inst2|cnt\(2) & !\inst2|cnt[1]~11\)) # (!\inst2|u_d~combout\ & ((\inst2|cnt\(2)) # (!\inst2|cnt[1]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|u_d~combout\,
	datab => \inst2|cnt\(2),
	datad => VCC,
	cin => \inst2|cnt[1]~11\,
	combout => \inst2|cnt[2]~12_combout\,
	cout => \inst2|cnt[2]~13\);

-- Location: FF_X37_Y1_N5
\inst2|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst2|cnt[2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cnt\(2));

-- Location: LCCOMB_X37_Y1_N6
\inst2|cnt[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|cnt[3]~14_combout\ = (\inst2|cnt\(3) & ((\inst2|u_d~combout\ & (!\inst2|cnt[2]~13\)) # (!\inst2|u_d~combout\ & (\inst2|cnt[2]~13\ & VCC)))) # (!\inst2|cnt\(3) & ((\inst2|u_d~combout\ & ((\inst2|cnt[2]~13\) # (GND))) # (!\inst2|u_d~combout\ & 
-- (!\inst2|cnt[2]~13\))))
-- \inst2|cnt[3]~15\ = CARRY((\inst2|cnt\(3) & (\inst2|u_d~combout\ & !\inst2|cnt[2]~13\)) # (!\inst2|cnt\(3) & ((\inst2|u_d~combout\) # (!\inst2|cnt[2]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(3),
	datab => \inst2|u_d~combout\,
	datad => VCC,
	cin => \inst2|cnt[2]~13\,
	combout => \inst2|cnt[3]~14_combout\,
	cout => \inst2|cnt[3]~15\);

-- Location: FF_X37_Y1_N7
\inst2|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst2|cnt[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cnt\(3));

-- Location: LCCOMB_X37_Y1_N8
\inst2|cnt[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|cnt[4]~16_combout\ = ((\inst2|u_d~combout\ $ (\inst2|cnt\(4) $ (\inst2|cnt[3]~15\)))) # (GND)
-- \inst2|cnt[4]~17\ = CARRY((\inst2|u_d~combout\ & (\inst2|cnt\(4) & !\inst2|cnt[3]~15\)) # (!\inst2|u_d~combout\ & ((\inst2|cnt\(4)) # (!\inst2|cnt[3]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|u_d~combout\,
	datab => \inst2|cnt\(4),
	datad => VCC,
	cin => \inst2|cnt[3]~15\,
	combout => \inst2|cnt[4]~16_combout\,
	cout => \inst2|cnt[4]~17\);

-- Location: FF_X37_Y1_N9
\inst2|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst2|cnt[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cnt\(4));

-- Location: LCCOMB_X37_Y1_N10
\inst2|cnt[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|cnt[5]~18_combout\ = (\inst2|cnt\(5) & ((\inst2|u_d~combout\ & (!\inst2|cnt[4]~17\)) # (!\inst2|u_d~combout\ & (\inst2|cnt[4]~17\ & VCC)))) # (!\inst2|cnt\(5) & ((\inst2|u_d~combout\ & ((\inst2|cnt[4]~17\) # (GND))) # (!\inst2|u_d~combout\ & 
-- (!\inst2|cnt[4]~17\))))
-- \inst2|cnt[5]~19\ = CARRY((\inst2|cnt\(5) & (\inst2|u_d~combout\ & !\inst2|cnt[4]~17\)) # (!\inst2|cnt\(5) & ((\inst2|u_d~combout\) # (!\inst2|cnt[4]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(5),
	datab => \inst2|u_d~combout\,
	datad => VCC,
	cin => \inst2|cnt[4]~17\,
	combout => \inst2|cnt[5]~18_combout\,
	cout => \inst2|cnt[5]~19\);

-- Location: FF_X37_Y1_N11
\inst2|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst2|cnt[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cnt\(5));

-- Location: LCCOMB_X37_Y1_N12
\inst2|cnt[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|cnt[6]~20_combout\ = ((\inst2|cnt\(6) $ (\inst2|u_d~combout\ $ (\inst2|cnt[5]~19\)))) # (GND)
-- \inst2|cnt[6]~21\ = CARRY((\inst2|cnt\(6) & ((!\inst2|cnt[5]~19\) # (!\inst2|u_d~combout\))) # (!\inst2|cnt\(6) & (!\inst2|u_d~combout\ & !\inst2|cnt[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(6),
	datab => \inst2|u_d~combout\,
	datad => VCC,
	cin => \inst2|cnt[5]~19\,
	combout => \inst2|cnt[6]~20_combout\,
	cout => \inst2|cnt[6]~21\);

-- Location: FF_X37_Y1_N13
\inst2|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst2|cnt[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cnt\(6));

-- Location: LCCOMB_X37_Y1_N16
\inst2|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Equal1~0_combout\ = (\inst2|cnt\(5) & (\inst2|cnt\(4) & (\inst2|cnt\(7) & \inst2|cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(5),
	datab => \inst2|cnt\(4),
	datac => \inst2|cnt\(7),
	datad => \inst2|cnt\(6),
	combout => \inst2|Equal1~0_combout\);

-- Location: LCCOMB_X37_Y1_N26
\inst2|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Equal1~1_combout\ = (\inst2|cnt\(3) & (\inst2|cnt\(1) & (\inst2|cnt\(0) & \inst2|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(3),
	datab => \inst2|cnt\(1),
	datac => \inst2|cnt\(0),
	datad => \inst2|cnt\(2),
	combout => \inst2|Equal1~1_combout\);

-- Location: LCCOMB_X37_Y1_N20
\inst2|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Equal1~2_combout\ = (\inst2|Equal1~0_combout\ & \inst2|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal1~0_combout\,
	datac => \inst2|Equal1~1_combout\,
	combout => \inst2|Equal1~2_combout\);

-- Location: LCCOMB_X37_Y1_N28
\inst2|comb~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|comb~1_combout\ = (!\inst2|cnt\(3) & (!\inst2|cnt\(1) & (!\inst2|cnt\(0) & !\inst2|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(3),
	datab => \inst2|cnt\(1),
	datac => \inst2|cnt\(0),
	datad => \inst2|cnt\(2),
	combout => \inst2|comb~1_combout\);

-- Location: LCCOMB_X37_Y1_N18
\inst2|comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|comb~0_combout\ = (!\inst2|cnt\(5) & (!\inst2|cnt\(4) & (!\inst2|cnt\(7) & !\inst2|cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(5),
	datab => \inst2|cnt\(4),
	datac => \inst2|cnt\(7),
	datad => \inst2|cnt\(6),
	combout => \inst2|comb~0_combout\);

-- Location: LCCOMB_X37_Y1_N22
\inst2|comb~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|comb~2_combout\ = (\inst2|comb~1_combout\ & \inst2|comb~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|comb~1_combout\,
	datad => \inst2|comb~0_combout\,
	combout => \inst2|comb~2_combout\);

-- Location: LCCOMB_X37_Y1_N24
\inst2|u_d\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|u_d~combout\ = (!\inst2|Equal1~2_combout\ & ((\inst2|comb~2_combout\) # (\inst2|u_d~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal1~2_combout\,
	datac => \inst2|comb~2_combout\,
	datad => \inst2|u_d~combout\,
	combout => \inst2|u_d~combout\);

-- Location: LCCOMB_X37_Y1_N14
\inst2|cnt[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|cnt[7]~22_combout\ = \inst2|cnt\(7) $ (\inst2|cnt[6]~21\ $ (!\inst2|u_d~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cnt\(7),
	datad => \inst2|u_d~combout\,
	cin => \inst2|cnt[6]~21\,
	combout => \inst2|cnt[7]~22_combout\);

-- Location: FF_X37_Y1_N15
\inst2|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst2|cnt[7]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cnt\(7));

-- Location: IOIBUF_X24_Y0_N29
\b_blue~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_blue,
	o => \b_blue~input_o\);

-- Location: LCCOMB_X40_Y1_N28
\inst19|pulse~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|pulse~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst19|pulse~feeder_combout\);

-- Location: LCCOMB_X39_Y2_N8
\inst19|cnt[0]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|cnt[0]~25_combout\ = \inst19|cnt\(0) $ (VCC)
-- \inst19|cnt[0]~26\ = CARRY(\inst19|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|cnt\(0),
	datad => VCC,
	combout => \inst19|cnt[0]~25_combout\,
	cout => \inst19|cnt[0]~26\);

-- Location: LCCOMB_X39_Y1_N8
\inst19|cnt[16]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|cnt[16]~57_combout\ = (\inst19|cnt\(16) & (\inst19|cnt[15]~56\ $ (GND))) # (!\inst19|cnt\(16) & (!\inst19|cnt[15]~56\ & VCC))
-- \inst19|cnt[16]~58\ = CARRY((\inst19|cnt\(16) & !\inst19|cnt[15]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|cnt\(16),
	datad => VCC,
	cin => \inst19|cnt[15]~56\,
	combout => \inst19|cnt[16]~57_combout\,
	cout => \inst19|cnt[16]~58\);

-- Location: LCCOMB_X39_Y1_N10
\inst19|cnt[17]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|cnt[17]~59_combout\ = (\inst19|cnt\(17) & (!\inst19|cnt[16]~58\)) # (!\inst19|cnt\(17) & ((\inst19|cnt[16]~58\) # (GND)))
-- \inst19|cnt[17]~60\ = CARRY((!\inst19|cnt[16]~58\) # (!\inst19|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|cnt\(17),
	datad => VCC,
	cin => \inst19|cnt[16]~58\,
	combout => \inst19|cnt[17]~59_combout\,
	cout => \inst19|cnt[17]~60\);

-- Location: LCCOMB_X40_Y1_N0
\inst19|enable~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|enable~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst19|enable~feeder_combout\);

-- Location: FF_X40_Y1_N1
\inst19|enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_b_blue~input_o\,
	d => \inst19|enable~feeder_combout\,
	clrn => \inst19|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|enable~q\);

-- Location: FF_X39_Y1_N11
\inst19|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst19|cnt[17]~59_combout\,
	clrn => \inst19|ALT_INV_Equal0~7_combout\,
	sclr => \inst19|LessThan0~2_combout\,
	ena => \inst19|enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|cnt\(17));

-- Location: LCCOMB_X39_Y1_N12
\inst19|cnt[18]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|cnt[18]~61_combout\ = (\inst19|cnt\(18) & (\inst19|cnt[17]~60\ $ (GND))) # (!\inst19|cnt\(18) & (!\inst19|cnt[17]~60\ & VCC))
-- \inst19|cnt[18]~62\ = CARRY((\inst19|cnt\(18) & !\inst19|cnt[17]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|cnt\(18),
	datad => VCC,
	cin => \inst19|cnt[17]~60\,
	combout => \inst19|cnt[18]~61_combout\,
	cout => \inst19|cnt[18]~62\);

-- Location: FF_X39_Y1_N13
\inst19|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst19|cnt[18]~61_combout\,
	clrn => \inst19|ALT_INV_Equal0~7_combout\,
	sclr => \inst19|LessThan0~2_combout\,
	ena => \inst19|enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|cnt\(18));

-- Location: LCCOMB_X39_Y1_N14
\inst19|cnt[19]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|cnt[19]~63_combout\ = (\inst19|cnt\(19) & (!\inst19|cnt[18]~62\)) # (!\inst19|cnt\(19) & ((\inst19|cnt[18]~62\) # (GND)))
-- \inst19|cnt[19]~64\ = CARRY((!\inst19|cnt[18]~62\) # (!\inst19|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|cnt\(19),
	datad => VCC,
	cin => \inst19|cnt[18]~62\,
	combout => \inst19|cnt[19]~63_combout\,
	cout => \inst19|cnt[19]~64\);

-- Location: FF_X39_Y1_N15
\inst19|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst19|cnt[19]~63_combout\,
	clrn => \inst19|ALT_INV_Equal0~7_combout\,
	sclr => \inst19|LessThan0~2_combout\,
	ena => \inst19|enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|cnt\(19));

-- Location: LCCOMB_X39_Y1_N16
\inst19|cnt[20]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|cnt[20]~65_combout\ = (\inst19|cnt\(20) & (\inst19|cnt[19]~64\ $ (GND))) # (!\inst19|cnt\(20) & (!\inst19|cnt[19]~64\ & VCC))
-- \inst19|cnt[20]~66\ = CARRY((\inst19|cnt\(20) & !\inst19|cnt[19]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|cnt\(20),
	datad => VCC,
	cin => \inst19|cnt[19]~64\,
	combout => \inst19|cnt[20]~65_combout\,
	cout => \inst19|cnt[20]~66\);

-- Location: FF_X39_Y1_N17
\inst19|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst19|cnt[20]~65_combout\,
	clrn => \inst19|ALT_INV_Equal0~7_combout\,
	sclr => \inst19|LessThan0~2_combout\,
	ena => \inst19|enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|cnt\(20));

-- Location: LCCOMB_X39_Y1_N18
\inst19|cnt[21]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|cnt[21]~67_combout\ = (\inst19|cnt\(21) & (!\inst19|cnt[20]~66\)) # (!\inst19|cnt\(21) & ((\inst19|cnt[20]~66\) # (GND)))
-- \inst19|cnt[21]~68\ = CARRY((!\inst19|cnt[20]~66\) # (!\inst19|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|cnt\(21),
	datad => VCC,
	cin => \inst19|cnt[20]~66\,
	combout => \inst19|cnt[21]~67_combout\,
	cout => \inst19|cnt[21]~68\);

-- Location: FF_X39_Y1_N19
\inst19|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst19|cnt[21]~67_combout\,
	clrn => \inst19|ALT_INV_Equal0~7_combout\,
	sclr => \inst19|LessThan0~2_combout\,
	ena => \inst19|enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|cnt\(21));

-- Location: LCCOMB_X39_Y1_N26
\inst19|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Equal0~0_combout\ = (\inst19|cnt\(18) & (\inst19|cnt\(21) & (\inst19|cnt\(19) & \inst19|cnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|cnt\(18),
	datab => \inst19|cnt\(21),
	datac => \inst19|cnt\(19),
	datad => \inst19|cnt\(20),
	combout => \inst19|Equal0~0_combout\);

-- Location: LCCOMB_X39_Y1_N20
\inst19|cnt[22]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|cnt[22]~69_combout\ = (\inst19|cnt\(22) & (\inst19|cnt[21]~68\ $ (GND))) # (!\inst19|cnt\(22) & (!\inst19|cnt[21]~68\ & VCC))
-- \inst19|cnt[22]~70\ = CARRY((\inst19|cnt\(22) & !\inst19|cnt[21]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|cnt\(22),
	datad => VCC,
	cin => \inst19|cnt[21]~68\,
	combout => \inst19|cnt[22]~69_combout\,
	cout => \inst19|cnt[22]~70\);

-- Location: FF_X39_Y1_N21
\inst19|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst19|cnt[22]~69_combout\,
	clrn => \inst19|ALT_INV_Equal0~7_combout\,
	sclr => \inst19|LessThan0~2_combout\,
	ena => \inst19|enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|cnt\(22));

-- Location: LCCOMB_X39_Y1_N22
\inst19|cnt[23]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|cnt[23]~71_combout\ = (\inst19|cnt\(23) & (!\inst19|cnt[22]~70\)) # (!\inst19|cnt\(23) & ((\inst19|cnt[22]~70\) # (GND)))
-- \inst19|cnt[23]~72\ = CARRY((!\inst19|cnt[22]~70\) # (!\inst19|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|cnt\(23),
	datad => VCC,
	cin => \inst19|cnt[22]~70\,
	combout => \inst19|cnt[23]~71_combout\,
	cout => \inst19|cnt[23]~72\);

-- Location: FF_X39_Y1_N23
\inst19|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst19|cnt[23]~71_combout\,
	clrn => \inst19|ALT_INV_Equal0~7_combout\,
	sclr => \inst19|LessThan0~2_combout\,
	ena => \inst19|enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|cnt\(23));

-- Location: LCCOMB_X39_Y1_N24
\inst19|cnt[24]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|cnt[24]~73_combout\ = \inst19|cnt[23]~72\ $ (!\inst19|cnt\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst19|cnt\(24),
	cin => \inst19|cnt[23]~72\,
	combout => \inst19|cnt[24]~73_combout\);

-- Location: FF_X39_Y1_N25
\inst19|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst19|cnt[24]~73_combout\,
	clrn => \inst19|ALT_INV_Equal0~7_combout\,
	sclr => \inst19|LessThan0~2_combout\,
	ena => \inst19|enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|cnt\(24));

-- Location: LCCOMB_X39_Y2_N4
\inst19|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Equal0~1_combout\ = (!\inst19|cnt\(9) & (!\inst19|cnt\(10) & (!\inst19|cnt\(7) & !\inst19|cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|cnt\(9),
	datab => \inst19|cnt\(10),
	datac => \inst19|cnt\(7),
	datad => \inst19|cnt\(8),
	combout => \inst19|Equal0~1_combout\);

-- Location: LCCOMB_X39_Y1_N28
\inst19|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Equal0~2_combout\ = (\inst19|cnt\(11) & (\inst19|cnt\(12) & (\inst19|cnt\(14) & \inst19|cnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|cnt\(11),
	datab => \inst19|cnt\(12),
	datac => \inst19|cnt\(14),
	datad => \inst19|cnt\(13),
	combout => \inst19|Equal0~2_combout\);

-- Location: LCCOMB_X39_Y2_N6
\inst19|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|LessThan0~0_combout\ = (\inst19|cnt\(15)) # ((\inst19|Equal0~2_combout\ & ((\inst19|cnt\(6)) # (!\inst19|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|cnt\(15),
	datab => \inst19|cnt\(6),
	datac => \inst19|Equal0~1_combout\,
	datad => \inst19|Equal0~2_combout\,
	combout => \inst19|LessThan0~0_combout\);

-- Location: LCCOMB_X39_Y2_N0
\inst19|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|LessThan0~1_combout\ = (\inst19|cnt\(22) & ((\inst19|cnt\(17)) # ((\inst19|cnt\(16) & \inst19|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|cnt\(17),
	datab => \inst19|cnt\(16),
	datac => \inst19|cnt\(22),
	datad => \inst19|LessThan0~0_combout\,
	combout => \inst19|LessThan0~1_combout\);

-- Location: LCCOMB_X39_Y2_N2
\inst19|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|LessThan0~2_combout\ = (\inst19|cnt\(24) & ((\inst19|cnt\(23)) # ((\inst19|Equal0~0_combout\ & \inst19|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal0~0_combout\,
	datab => \inst19|cnt\(24),
	datac => \inst19|cnt\(23),
	datad => \inst19|LessThan0~1_combout\,
	combout => \inst19|LessThan0~2_combout\);

-- Location: FF_X39_Y2_N9
\inst19|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst19|cnt[0]~25_combout\,
	clrn => \inst19|ALT_INV_Equal0~7_combout\,
	sclr => \inst19|LessThan0~2_combout\,
	ena => \inst19|enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|cnt\(0));

-- Location: LCCOMB_X39_Y2_N10
\inst19|cnt[1]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|cnt[1]~27_combout\ = (\inst19|cnt\(1) & (!\inst19|cnt[0]~26\)) # (!\inst19|cnt\(1) & ((\inst19|cnt[0]~26\) # (GND)))
-- \inst19|cnt[1]~28\ = CARRY((!\inst19|cnt[0]~26\) # (!\inst19|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|cnt\(1),
	datad => VCC,
	cin => \inst19|cnt[0]~26\,
	combout => \inst19|cnt[1]~27_combout\,
	cout => \inst19|cnt[1]~28\);

-- Location: FF_X39_Y2_N11
\inst19|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst19|cnt[1]~27_combout\,
	clrn => \inst19|ALT_INV_Equal0~7_combout\,
	sclr => \inst19|LessThan0~2_combout\,
	ena => \inst19|enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|cnt\(1));

-- Location: LCCOMB_X39_Y2_N12
\inst19|cnt[2]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|cnt[2]~29_combout\ = (\inst19|cnt\(2) & (\inst19|cnt[1]~28\ $ (GND))) # (!\inst19|cnt\(2) & (!\inst19|cnt[1]~28\ & VCC))
-- \inst19|cnt[2]~30\ = CARRY((\inst19|cnt\(2) & !\inst19|cnt[1]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|cnt\(2),
	datad => VCC,
	cin => \inst19|cnt[1]~28\,
	combout => \inst19|cnt[2]~29_combout\,
	cout => \inst19|cnt[2]~30\);

-- Location: FF_X39_Y2_N13
\inst19|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst19|cnt[2]~29_combout\,
	clrn => \inst19|ALT_INV_Equal0~7_combout\,
	sclr => \inst19|LessThan0~2_combout\,
	ena => \inst19|enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|cnt\(2));

-- Location: LCCOMB_X39_Y2_N14
\inst19|cnt[3]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|cnt[3]~31_combout\ = (\inst19|cnt\(3) & (!\inst19|cnt[2]~30\)) # (!\inst19|cnt\(3) & ((\inst19|cnt[2]~30\) # (GND)))
-- \inst19|cnt[3]~32\ = CARRY((!\inst19|cnt[2]~30\) # (!\inst19|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|cnt\(3),
	datad => VCC,
	cin => \inst19|cnt[2]~30\,
	combout => \inst19|cnt[3]~31_combout\,
	cout => \inst19|cnt[3]~32\);

-- Location: FF_X39_Y2_N15
\inst19|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst19|cnt[3]~31_combout\,
	clrn => \inst19|ALT_INV_Equal0~7_combout\,
	sclr => \inst19|LessThan0~2_combout\,
	ena => \inst19|enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|cnt\(3));

-- Location: LCCOMB_X39_Y2_N16
\inst19|cnt[4]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|cnt[4]~33_combout\ = (\inst19|cnt\(4) & (\inst19|cnt[3]~32\ $ (GND))) # (!\inst19|cnt\(4) & (!\inst19|cnt[3]~32\ & VCC))
-- \inst19|cnt[4]~34\ = CARRY((\inst19|cnt\(4) & !\inst19|cnt[3]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|cnt\(4),
	datad => VCC,
	cin => \inst19|cnt[3]~32\,
	combout => \inst19|cnt[4]~33_combout\,
	cout => \inst19|cnt[4]~34\);

-- Location: FF_X39_Y2_N17
\inst19|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst19|cnt[4]~33_combout\,
	clrn => \inst19|ALT_INV_Equal0~7_combout\,
	sclr => \inst19|LessThan0~2_combout\,
	ena => \inst19|enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|cnt\(4));

-- Location: LCCOMB_X39_Y2_N18
\inst19|cnt[5]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|cnt[5]~35_combout\ = (\inst19|cnt\(5) & (!\inst19|cnt[4]~34\)) # (!\inst19|cnt\(5) & ((\inst19|cnt[4]~34\) # (GND)))
-- \inst19|cnt[5]~36\ = CARRY((!\inst19|cnt[4]~34\) # (!\inst19|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|cnt\(5),
	datad => VCC,
	cin => \inst19|cnt[4]~34\,
	combout => \inst19|cnt[5]~35_combout\,
	cout => \inst19|cnt[5]~36\);

-- Location: FF_X39_Y2_N19
\inst19|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst19|cnt[5]~35_combout\,
	clrn => \inst19|ALT_INV_Equal0~7_combout\,
	sclr => \inst19|LessThan0~2_combout\,
	ena => \inst19|enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|cnt\(5));

-- Location: LCCOMB_X39_Y2_N20
\inst19|cnt[6]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|cnt[6]~37_combout\ = (\inst19|cnt\(6) & (\inst19|cnt[5]~36\ $ (GND))) # (!\inst19|cnt\(6) & (!\inst19|cnt[5]~36\ & VCC))
-- \inst19|cnt[6]~38\ = CARRY((\inst19|cnt\(6) & !\inst19|cnt[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|cnt\(6),
	datad => VCC,
	cin => \inst19|cnt[5]~36\,
	combout => \inst19|cnt[6]~37_combout\,
	cout => \inst19|cnt[6]~38\);

-- Location: FF_X39_Y2_N21
\inst19|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst19|cnt[6]~37_combout\,
	clrn => \inst19|ALT_INV_Equal0~7_combout\,
	sclr => \inst19|LessThan0~2_combout\,
	ena => \inst19|enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|cnt\(6));

-- Location: LCCOMB_X39_Y2_N22
\inst19|cnt[7]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|cnt[7]~39_combout\ = (\inst19|cnt\(7) & (!\inst19|cnt[6]~38\)) # (!\inst19|cnt\(7) & ((\inst19|cnt[6]~38\) # (GND)))
-- \inst19|cnt[7]~40\ = CARRY((!\inst19|cnt[6]~38\) # (!\inst19|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|cnt\(7),
	datad => VCC,
	cin => \inst19|cnt[6]~38\,
	combout => \inst19|cnt[7]~39_combout\,
	cout => \inst19|cnt[7]~40\);

-- Location: FF_X39_Y2_N23
\inst19|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst19|cnt[7]~39_combout\,
	clrn => \inst19|ALT_INV_Equal0~7_combout\,
	sclr => \inst19|LessThan0~2_combout\,
	ena => \inst19|enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|cnt\(7));

-- Location: LCCOMB_X39_Y2_N24
\inst19|cnt[8]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|cnt[8]~41_combout\ = (\inst19|cnt\(8) & (\inst19|cnt[7]~40\ $ (GND))) # (!\inst19|cnt\(8) & (!\inst19|cnt[7]~40\ & VCC))
-- \inst19|cnt[8]~42\ = CARRY((\inst19|cnt\(8) & !\inst19|cnt[7]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|cnt\(8),
	datad => VCC,
	cin => \inst19|cnt[7]~40\,
	combout => \inst19|cnt[8]~41_combout\,
	cout => \inst19|cnt[8]~42\);

-- Location: FF_X39_Y2_N25
\inst19|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst19|cnt[8]~41_combout\,
	clrn => \inst19|ALT_INV_Equal0~7_combout\,
	sclr => \inst19|LessThan0~2_combout\,
	ena => \inst19|enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|cnt\(8));

-- Location: LCCOMB_X39_Y2_N26
\inst19|cnt[9]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|cnt[9]~43_combout\ = (\inst19|cnt\(9) & (!\inst19|cnt[8]~42\)) # (!\inst19|cnt\(9) & ((\inst19|cnt[8]~42\) # (GND)))
-- \inst19|cnt[9]~44\ = CARRY((!\inst19|cnt[8]~42\) # (!\inst19|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|cnt\(9),
	datad => VCC,
	cin => \inst19|cnt[8]~42\,
	combout => \inst19|cnt[9]~43_combout\,
	cout => \inst19|cnt[9]~44\);

-- Location: FF_X39_Y2_N27
\inst19|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst19|cnt[9]~43_combout\,
	clrn => \inst19|ALT_INV_Equal0~7_combout\,
	sclr => \inst19|LessThan0~2_combout\,
	ena => \inst19|enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|cnt\(9));

-- Location: LCCOMB_X39_Y2_N28
\inst19|cnt[10]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|cnt[10]~45_combout\ = (\inst19|cnt\(10) & (\inst19|cnt[9]~44\ $ (GND))) # (!\inst19|cnt\(10) & (!\inst19|cnt[9]~44\ & VCC))
-- \inst19|cnt[10]~46\ = CARRY((\inst19|cnt\(10) & !\inst19|cnt[9]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|cnt\(10),
	datad => VCC,
	cin => \inst19|cnt[9]~44\,
	combout => \inst19|cnt[10]~45_combout\,
	cout => \inst19|cnt[10]~46\);

-- Location: FF_X39_Y2_N29
\inst19|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst19|cnt[10]~45_combout\,
	clrn => \inst19|ALT_INV_Equal0~7_combout\,
	sclr => \inst19|LessThan0~2_combout\,
	ena => \inst19|enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|cnt\(10));

-- Location: LCCOMB_X39_Y2_N30
\inst19|cnt[11]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|cnt[11]~47_combout\ = (\inst19|cnt\(11) & (!\inst19|cnt[10]~46\)) # (!\inst19|cnt\(11) & ((\inst19|cnt[10]~46\) # (GND)))
-- \inst19|cnt[11]~48\ = CARRY((!\inst19|cnt[10]~46\) # (!\inst19|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|cnt\(11),
	datad => VCC,
	cin => \inst19|cnt[10]~46\,
	combout => \inst19|cnt[11]~47_combout\,
	cout => \inst19|cnt[11]~48\);

-- Location: FF_X39_Y2_N31
\inst19|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst19|cnt[11]~47_combout\,
	clrn => \inst19|ALT_INV_Equal0~7_combout\,
	sclr => \inst19|LessThan0~2_combout\,
	ena => \inst19|enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|cnt\(11));

-- Location: LCCOMB_X39_Y1_N0
\inst19|cnt[12]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|cnt[12]~49_combout\ = (\inst19|cnt\(12) & (\inst19|cnt[11]~48\ $ (GND))) # (!\inst19|cnt\(12) & (!\inst19|cnt[11]~48\ & VCC))
-- \inst19|cnt[12]~50\ = CARRY((\inst19|cnt\(12) & !\inst19|cnt[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|cnt\(12),
	datad => VCC,
	cin => \inst19|cnt[11]~48\,
	combout => \inst19|cnt[12]~49_combout\,
	cout => \inst19|cnt[12]~50\);

-- Location: FF_X39_Y1_N1
\inst19|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst19|cnt[12]~49_combout\,
	clrn => \inst19|ALT_INV_Equal0~7_combout\,
	sclr => \inst19|LessThan0~2_combout\,
	ena => \inst19|enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|cnt\(12));

-- Location: LCCOMB_X39_Y1_N2
\inst19|cnt[13]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|cnt[13]~51_combout\ = (\inst19|cnt\(13) & (!\inst19|cnt[12]~50\)) # (!\inst19|cnt\(13) & ((\inst19|cnt[12]~50\) # (GND)))
-- \inst19|cnt[13]~52\ = CARRY((!\inst19|cnt[12]~50\) # (!\inst19|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|cnt\(13),
	datad => VCC,
	cin => \inst19|cnt[12]~50\,
	combout => \inst19|cnt[13]~51_combout\,
	cout => \inst19|cnt[13]~52\);

-- Location: FF_X39_Y1_N3
\inst19|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst19|cnt[13]~51_combout\,
	clrn => \inst19|ALT_INV_Equal0~7_combout\,
	sclr => \inst19|LessThan0~2_combout\,
	ena => \inst19|enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|cnt\(13));

-- Location: LCCOMB_X39_Y1_N4
\inst19|cnt[14]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|cnt[14]~53_combout\ = (\inst19|cnt\(14) & (\inst19|cnt[13]~52\ $ (GND))) # (!\inst19|cnt\(14) & (!\inst19|cnt[13]~52\ & VCC))
-- \inst19|cnt[14]~54\ = CARRY((\inst19|cnt\(14) & !\inst19|cnt[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|cnt\(14),
	datad => VCC,
	cin => \inst19|cnt[13]~52\,
	combout => \inst19|cnt[14]~53_combout\,
	cout => \inst19|cnt[14]~54\);

-- Location: FF_X39_Y1_N5
\inst19|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst19|cnt[14]~53_combout\,
	clrn => \inst19|ALT_INV_Equal0~7_combout\,
	sclr => \inst19|LessThan0~2_combout\,
	ena => \inst19|enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|cnt\(14));

-- Location: LCCOMB_X39_Y1_N6
\inst19|cnt[15]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|cnt[15]~55_combout\ = (\inst19|cnt\(15) & (!\inst19|cnt[14]~54\)) # (!\inst19|cnt\(15) & ((\inst19|cnt[14]~54\) # (GND)))
-- \inst19|cnt[15]~56\ = CARRY((!\inst19|cnt[14]~54\) # (!\inst19|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|cnt\(15),
	datad => VCC,
	cin => \inst19|cnt[14]~54\,
	combout => \inst19|cnt[15]~55_combout\,
	cout => \inst19|cnt[15]~56\);

-- Location: FF_X39_Y1_N7
\inst19|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst19|cnt[15]~55_combout\,
	clrn => \inst19|ALT_INV_Equal0~7_combout\,
	sclr => \inst19|LessThan0~2_combout\,
	ena => \inst19|enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|cnt\(15));

-- Location: FF_X39_Y1_N9
\inst19|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst19|cnt[16]~57_combout\,
	clrn => \inst19|ALT_INV_Equal0~7_combout\,
	sclr => \inst19|LessThan0~2_combout\,
	ena => \inst19|enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|cnt\(16));

-- Location: LCCOMB_X40_Y1_N26
\inst19|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Equal0~6_combout\ = (\inst19|cnt\(16) & (\inst19|cnt\(6) & (!\inst19|cnt\(5) & \inst19|cnt\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|cnt\(16),
	datab => \inst19|cnt\(6),
	datac => \inst19|cnt\(5),
	datad => \inst19|cnt\(24),
	combout => \inst19|Equal0~6_combout\);

-- Location: LCCOMB_X40_Y1_N30
\inst19|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Equal0~4_combout\ = (!\inst19|cnt\(17) & (!\inst19|cnt\(15) & (!\inst19|cnt\(0) & !\inst19|cnt\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|cnt\(17),
	datab => \inst19|cnt\(15),
	datac => \inst19|cnt\(0),
	datad => \inst19|cnt\(23),
	combout => \inst19|Equal0~4_combout\);

-- Location: LCCOMB_X40_Y1_N22
\inst19|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Equal0~5_combout\ = (!\inst19|cnt\(3) & (!\inst19|cnt\(1) & (!\inst19|cnt\(4) & !\inst19|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|cnt\(3),
	datab => \inst19|cnt\(1),
	datac => \inst19|cnt\(4),
	datad => \inst19|cnt\(2),
	combout => \inst19|Equal0~5_combout\);

-- Location: LCCOMB_X39_Y1_N30
\inst19|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Equal0~3_combout\ = (\inst19|Equal0~0_combout\ & (\inst19|cnt\(22) & (\inst19|Equal0~2_combout\ & \inst19|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal0~0_combout\,
	datab => \inst19|cnt\(22),
	datac => \inst19|Equal0~2_combout\,
	datad => \inst19|Equal0~1_combout\,
	combout => \inst19|Equal0~3_combout\);

-- Location: LCCOMB_X40_Y1_N24
\inst19|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Equal0~7_combout\ = (\inst19|Equal0~6_combout\ & (\inst19|Equal0~4_combout\ & (\inst19|Equal0~5_combout\ & \inst19|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal0~6_combout\,
	datab => \inst19|Equal0~4_combout\,
	datac => \inst19|Equal0~5_combout\,
	datad => \inst19|Equal0~3_combout\,
	combout => \inst19|Equal0~7_combout\);

-- Location: FF_X40_Y1_N29
\inst19|pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_b_blue~input_o\,
	d => \inst19|pulse~feeder_combout\,
	clrn => \inst19|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|pulse~q\);

-- Location: CLKCTRL_G16
\inst19|pulse~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst19|pulse~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst19|pulse~clkctrl_outclk\);

-- Location: LCCOMB_X77_Y40_N2
\inst6|cnt[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|cnt[1]~3_combout\ = \inst6|cnt\(1) $ (\inst6|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|cnt\(1),
	datad => \inst6|cnt\(0),
	combout => \inst6|cnt[1]~3_combout\);

-- Location: FF_X77_Y40_N3
\inst6|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst19|pulse~clkctrl_outclk\,
	d => \inst6|cnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|cnt\(1));

-- Location: LCCOMB_X77_Y40_N0
\inst6|cnt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|cnt~0_combout\ = (!\inst6|cnt\(0) & (((\inst6|cnt\(1)) # (!\inst6|cnt\(2))) # (!\inst6|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(3),
	datab => \inst6|cnt\(1),
	datac => \inst6|cnt\(0),
	datad => \inst6|cnt\(2),
	combout => \inst6|cnt~0_combout\);

-- Location: FF_X77_Y40_N1
\inst6|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst19|pulse~clkctrl_outclk\,
	d => \inst6|cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|cnt\(0));

-- Location: LCCOMB_X77_Y40_N6
\inst6|cnt[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|cnt[2]~1_combout\ = \inst6|cnt\(2) $ (((\inst6|cnt\(0) & \inst6|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|cnt\(0),
	datac => \inst6|cnt\(2),
	datad => \inst6|cnt\(1),
	combout => \inst6|cnt[2]~1_combout\);

-- Location: FF_X77_Y40_N7
\inst6|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst19|pulse~clkctrl_outclk\,
	d => \inst6|cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|cnt\(2));

-- Location: LCCOMB_X77_Y40_N12
\inst6|cnt~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|cnt~2_combout\ = (\inst6|cnt\(2) & (\inst6|cnt\(3) & ((\inst6|cnt\(0)) # (\inst6|cnt\(1))))) # (!\inst6|cnt\(2) & (\inst6|cnt\(3) $ (((\inst6|cnt\(0) & \inst6|cnt\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(2),
	datab => \inst6|cnt\(0),
	datac => \inst6|cnt\(3),
	datad => \inst6|cnt\(1),
	combout => \inst6|cnt~2_combout\);

-- Location: FF_X77_Y40_N13
\inst6|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst19|pulse~clkctrl_outclk\,
	d => \inst6|cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|cnt\(3));

-- Location: LCCOMB_X77_Y39_N4
\inst8|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux0~0_combout\ = (!\inst6|cnt\(3) & (!\inst6|cnt\(2) & !\inst6|cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(3),
	datac => \inst6|cnt\(2),
	datad => \inst6|cnt\(0),
	combout => \inst8|Mux0~0_combout\);

-- Location: LCCOMB_X77_Y39_N22
\inst8|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux1~0_combout\ = (\inst6|cnt\(2) & (!\inst6|cnt\(1) & (\inst6|cnt\(3) & !\inst6|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(2),
	datab => \inst6|cnt\(1),
	datac => \inst6|cnt\(3),
	datad => \inst6|cnt\(0),
	combout => \inst8|Mux1~0_combout\);

-- Location: LCCOMB_X77_Y39_N12
\inst8|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux2~0_combout\ = (!\inst6|cnt\(1) & ((\inst6|cnt\(2) & (\inst6|cnt\(3) & !\inst6|cnt\(0))) # (!\inst6|cnt\(2) & (!\inst6|cnt\(3) & \inst6|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(2),
	datab => \inst6|cnt\(1),
	datac => \inst6|cnt\(3),
	datad => \inst6|cnt\(0),
	combout => \inst8|Mux2~0_combout\);

-- Location: LCCOMB_X77_Y40_N20
\inst8|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux3~0_combout\ = (!\inst6|cnt\(0) & ((\inst6|cnt\(2) & (\inst6|cnt\(3) & !\inst6|cnt\(1))) # (!\inst6|cnt\(2) & (!\inst6|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(2),
	datab => \inst6|cnt\(3),
	datac => \inst6|cnt\(0),
	datad => \inst6|cnt\(1),
	combout => \inst8|Mux3~0_combout\);

-- Location: LCCOMB_X77_Y40_N22
\inst8|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux5~0_combout\ = (!\inst6|cnt\(3) & (!\inst6|cnt\(2) & !\inst6|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|cnt\(3),
	datac => \inst6|cnt\(2),
	datad => \inst6|cnt\(1),
	combout => \inst8|Mux5~0_combout\);

-- Location: LCCOMB_X77_Y40_N4
\inst8|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux6~0_combout\ = (\inst6|cnt\(3)) # ((!\inst6|cnt\(2) & ((\inst6|cnt\(0)) # (\inst6|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(2),
	datab => \inst6|cnt\(3),
	datac => \inst6|cnt\(0),
	datad => \inst6|cnt\(1),
	combout => \inst8|Mux6~0_combout\);

-- Location: LCCOMB_X77_Y40_N14
\inst13|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|Mux0~0_combout\ = (\inst6|cnt\(2) & (\inst6|cnt\(0) & (\inst6|cnt\(3) $ (!\inst6|cnt\(1))))) # (!\inst6|cnt\(2) & (!\inst6|cnt\(1) & (\inst6|cnt\(3) $ (!\inst6|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(2),
	datab => \inst6|cnt\(3),
	datac => \inst6|cnt\(0),
	datad => \inst6|cnt\(1),
	combout => \inst13|Mux0~0_combout\);

-- Location: LCCOMB_X77_Y40_N28
\inst13|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|Mux1~0_combout\ = (\inst6|cnt\(3) & ((\inst6|cnt\(0) & ((\inst6|cnt\(1)))) # (!\inst6|cnt\(0) & (!\inst6|cnt\(2))))) # (!\inst6|cnt\(3) & (!\inst6|cnt\(2) & (\inst6|cnt\(0) $ (\inst6|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(2),
	datab => \inst6|cnt\(3),
	datac => \inst6|cnt\(0),
	datad => \inst6|cnt\(1),
	combout => \inst13|Mux1~0_combout\);

-- Location: LCCOMB_X77_Y40_N18
\inst13|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|Mux2~0_combout\ = (\inst6|cnt\(2) & (!\inst6|cnt\(3) & (!\inst6|cnt\(0) & \inst6|cnt\(1)))) # (!\inst6|cnt\(2) & (\inst6|cnt\(3) & ((\inst6|cnt\(1)) # (!\inst6|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(2),
	datab => \inst6|cnt\(3),
	datac => \inst6|cnt\(0),
	datad => \inst6|cnt\(1),
	combout => \inst13|Mux2~0_combout\);

-- Location: LCCOMB_X77_Y39_N2
\inst13|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|Mux3~0_combout\ = (\inst6|cnt\(1) & ((\inst6|cnt\(2) & (\inst6|cnt\(3) & !\inst6|cnt\(0))) # (!\inst6|cnt\(2) & ((\inst6|cnt\(0)))))) # (!\inst6|cnt\(1) & (!\inst6|cnt\(3) & (\inst6|cnt\(2) $ (!\inst6|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(2),
	datab => \inst6|cnt\(1),
	datac => \inst6|cnt\(3),
	datad => \inst6|cnt\(0),
	combout => \inst13|Mux3~0_combout\);

-- Location: LCCOMB_X77_Y40_N8
\inst13|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|Mux4~0_combout\ = (\inst6|cnt\(1) & (((!\inst6|cnt\(3) & \inst6|cnt\(0))))) # (!\inst6|cnt\(1) & ((\inst6|cnt\(2) & ((\inst6|cnt\(0)))) # (!\inst6|cnt\(2) & (!\inst6|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(2),
	datab => \inst6|cnt\(3),
	datac => \inst6|cnt\(0),
	datad => \inst6|cnt\(1),
	combout => \inst13|Mux4~0_combout\);

-- Location: LCCOMB_X77_Y40_N10
\inst13|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|Mux5~0_combout\ = (\inst6|cnt\(2) & (!\inst6|cnt\(3) & ((\inst6|cnt\(0)) # (\inst6|cnt\(1))))) # (!\inst6|cnt\(2) & (\inst6|cnt\(0) & (\inst6|cnt\(3) $ (\inst6|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(2),
	datab => \inst6|cnt\(3),
	datac => \inst6|cnt\(0),
	datad => \inst6|cnt\(1),
	combout => \inst13|Mux5~0_combout\);

-- Location: LCCOMB_X77_Y39_N8
\inst13|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|Mux6~0_combout\ = (\inst6|cnt\(3)) # ((\inst6|cnt\(2) & (\inst6|cnt\(1))) # (!\inst6|cnt\(2) & ((!\inst6|cnt\(0)) # (!\inst6|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(2),
	datab => \inst6|cnt\(1),
	datac => \inst6|cnt\(3),
	datad => \inst6|cnt\(0),
	combout => \inst13|Mux6~0_combout\);

-- Location: LCCOMB_X77_Y40_N24
\inst10|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Mux0~0_combout\ = (\inst6|cnt\(0)) # ((\inst6|cnt\(3)) # (!\inst6|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(0),
	datab => \inst6|cnt\(3),
	datac => \inst6|cnt\(2),
	combout => \inst10|Mux0~0_combout\);

-- Location: LCCOMB_X77_Y40_N30
\inst10|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Mux2~0_combout\ = (\inst6|cnt\(2) & (!\inst6|cnt\(1) & (\inst6|cnt\(3) $ (\inst6|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(2),
	datab => \inst6|cnt\(3),
	datac => \inst6|cnt\(0),
	datad => \inst6|cnt\(1),
	combout => \inst10|Mux2~0_combout\);

-- Location: LCCOMB_X77_Y40_N16
\inst10|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Mux3~0_combout\ = (\inst6|cnt\(2) & (!\inst6|cnt\(0) & ((!\inst6|cnt\(1)) # (!\inst6|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(2),
	datab => \inst6|cnt\(3),
	datac => \inst6|cnt\(0),
	datad => \inst6|cnt\(1),
	combout => \inst10|Mux3~0_combout\);

-- Location: LCCOMB_X77_Y39_N14
\inst10|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Mux5~0_combout\ = ((\inst6|cnt\(3)) # (\inst6|cnt\(1))) # (!\inst6|cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(2),
	datac => \inst6|cnt\(3),
	datad => \inst6|cnt\(1),
	combout => \inst10|Mux5~0_combout\);

-- Location: LCCOMB_X77_Y40_N26
\inst10|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Mux6~0_combout\ = (\inst6|cnt\(2) & (\inst6|cnt\(3) $ (((\inst6|cnt\(0)) # (\inst6|cnt\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(2),
	datab => \inst6|cnt\(3),
	datac => \inst6|cnt\(0),
	datad => \inst6|cnt\(1),
	combout => \inst10|Mux6~0_combout\);

-- Location: IOIBUF_X51_Y54_N29
\sw[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\sw[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\sw[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\sw[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\sw[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\sw[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: IOIBUF_X54_Y54_N15
\sw[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\sw[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

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
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
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
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
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
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_b <= \b~output_o\;

ww_dac(7) <= \dac[7]~output_o\;

ww_dac(6) <= \dac[6]~output_o\;

ww_dac(5) <= \dac[5]~output_o\;

ww_dac(4) <= \dac[4]~output_o\;

ww_dac(3) <= \dac[3]~output_o\;

ww_dac(2) <= \dac[2]~output_o\;

ww_dac(1) <= \dac[1]~output_o\;

ww_dac(0) <= \dac[0]~output_o\;

ww_highB(6) <= \highB[6]~output_o\;

ww_highB(5) <= \highB[5]~output_o\;

ww_highB(4) <= \highB[4]~output_o\;

ww_highB(3) <= \highB[3]~output_o\;

ww_highB(2) <= \highB[2]~output_o\;

ww_highB(1) <= \highB[1]~output_o\;

ww_highB(0) <= \highB[0]~output_o\;

ww_highC(6) <= \highC[6]~output_o\;

ww_highC(5) <= \highC[5]~output_o\;

ww_highC(4) <= \highC[4]~output_o\;

ww_highC(3) <= \highC[3]~output_o\;

ww_highC(2) <= \highC[2]~output_o\;

ww_highC(1) <= \highC[1]~output_o\;

ww_highC(0) <= \highC[0]~output_o\;

ww_lowB(6) <= \lowB[6]~output_o\;

ww_lowB(5) <= \lowB[5]~output_o\;

ww_lowB(4) <= \lowB[4]~output_o\;

ww_lowB(3) <= \lowB[3]~output_o\;

ww_lowB(2) <= \lowB[2]~output_o\;

ww_lowB(1) <= \lowB[1]~output_o\;

ww_lowB(0) <= \lowB[0]~output_o\;

ww_lowC(6) <= \lowC[6]~output_o\;

ww_lowC(5) <= \lowC[5]~output_o\;

ww_lowC(4) <= \lowC[4]~output_o\;

ww_lowC(3) <= \lowC[3]~output_o\;

ww_lowC(2) <= \lowC[2]~output_o\;

ww_lowC(1) <= \lowC[1]~output_o\;

ww_lowC(0) <= \lowC[0]~output_o\;
END structure;


