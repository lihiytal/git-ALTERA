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

-- DATE "04/05/2024 16:38:27"

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
	b_red : IN std_logic;
	b_blue : IN std_logic;
	clk : IN std_logic;
	dac : OUT std_logic_vector(7 DOWNTO 0);
	highB : OUT std_logic_vector(6 DOWNTO 0);
	highC : OUT std_logic_vector(6 DOWNTO 0);
	lowB : OUT std_logic_vector(6 DOWNTO 0);
	lowC : OUT std_logic_vector(6 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0)
	);
END DAC_SW;

-- Design Ports Information
-- b	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- b_blue	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_red	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_b_red : std_logic;
SIGNAL ww_b_blue : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_dac : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_highB : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_highC : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_lowB : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_lowC : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
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
SIGNAL \inst|cnt[0]~8_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|cnt[0]~9\ : std_logic;
SIGNAL \inst|cnt[1]~10_combout\ : std_logic;
SIGNAL \inst|cnt[1]~11\ : std_logic;
SIGNAL \inst|cnt[2]~12_combout\ : std_logic;
SIGNAL \inst|cnt[2]~13\ : std_logic;
SIGNAL \inst|cnt[3]~14_combout\ : std_logic;
SIGNAL \inst|cnt[3]~15\ : std_logic;
SIGNAL \inst|cnt[4]~16_combout\ : std_logic;
SIGNAL \inst|cnt[4]~17\ : std_logic;
SIGNAL \inst|cnt[5]~18_combout\ : std_logic;
SIGNAL \inst|cnt[5]~19\ : std_logic;
SIGNAL \inst|cnt[6]~20_combout\ : std_logic;
SIGNAL \inst|cnt[6]~21\ : std_logic;
SIGNAL \inst|cnt[7]~22_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
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
SIGNAL \inst2|comb~0_combout\ : std_logic;
SIGNAL \inst2|comb~1_combout\ : std_logic;
SIGNAL \inst2|comb~2_combout\ : std_logic;
SIGNAL \inst2|u_d~combout\ : std_logic;
SIGNAL \inst2|cnt[6]~21\ : std_logic;
SIGNAL \inst2|cnt[7]~22_combout\ : std_logic;
SIGNAL \b_blue~input_o\ : std_logic;
SIGNAL \b_red~input_o\ : std_logic;
SIGNAL \inst6|cnt[0]~10_combout\ : std_logic;
SIGNAL \inst6|cnt[1]~4_cout\ : std_logic;
SIGNAL \inst6|cnt[1]~5_combout\ : std_logic;
SIGNAL \inst6|cnt~9_combout\ : std_logic;
SIGNAL \inst6|cnt[1]~6\ : std_logic;
SIGNAL \inst6|cnt[2]~7_combout\ : std_logic;
SIGNAL \inst6|cnt[2]~8\ : std_logic;
SIGNAL \inst6|cnt[3]~11_combout\ : std_logic;
SIGNAL \inst8|Mux0~0_combout\ : std_logic;
SIGNAL \inst8|Mux1~0_combout\ : std_logic;
SIGNAL \inst8|Mux2~0_combout\ : std_logic;
SIGNAL \inst8|Mux3~0_combout\ : std_logic;
SIGNAL \inst8|Mux5~0_combout\ : std_logic;
SIGNAL \inst8|Mux6~0_combout\ : std_logic;
SIGNAL \inst10|Mux0~0_combout\ : std_logic;
SIGNAL \inst10|Mux2~0_combout\ : std_logic;
SIGNAL \inst10|Mux3~0_combout\ : std_logic;
SIGNAL \inst10|Mux5~0_combout\ : std_logic;
SIGNAL \inst10|Mux6~0_combout\ : std_logic;
SIGNAL \inst2|cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst10|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_Mux6~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

b <= ww_b;
ww_b_red <= b_red;
ww_b_blue <= b_blue;
ww_clk <= clk;
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

\inst|y~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|y~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\inst10|ALT_INV_Mux6~0_combout\ <= NOT \inst10|Mux6~0_combout\;
\inst10|ALT_INV_Mux5~0_combout\ <= NOT \inst10|Mux5~0_combout\;
\inst10|ALT_INV_Mux0~0_combout\ <= NOT \inst10|Mux0~0_combout\;
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

-- Location: IOOBUF_X18_Y0_N2
\b~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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

-- Location: LCCOMB_X45_Y53_N4
\inst|cnt[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[0]~8_combout\ = \inst|cnt\(0) $ (VCC)
-- \inst|cnt[0]~9\ = CARRY(\inst|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(0),
	datad => VCC,
	combout => \inst|cnt[0]~8_combout\,
	cout => \inst|cnt[0]~9\);

-- Location: LCCOMB_X45_Y53_N28
\inst|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (((!\inst|cnt\(3)) # (!\inst|cnt\(2))) # (!\inst|cnt\(0))) # (!\inst|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(1),
	datab => \inst|cnt\(0),
	datac => \inst|cnt\(2),
	datad => \inst|cnt\(3),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X45_Y53_N20
\inst|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (!\inst|LessThan0~1_combout\ & !\inst|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|LessThan0~1_combout\,
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|LessThan0~2_combout\);

-- Location: FF_X45_Y53_N5
\inst|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[0]~8_combout\,
	sclr => \inst|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(0));

-- Location: LCCOMB_X45_Y53_N6
\inst|cnt[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[1]~10_combout\ = (\inst|cnt\(1) & (!\inst|cnt[0]~9\)) # (!\inst|cnt\(1) & ((\inst|cnt[0]~9\) # (GND)))
-- \inst|cnt[1]~11\ = CARRY((!\inst|cnt[0]~9\) # (!\inst|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(1),
	datad => VCC,
	cin => \inst|cnt[0]~9\,
	combout => \inst|cnt[1]~10_combout\,
	cout => \inst|cnt[1]~11\);

-- Location: FF_X45_Y53_N7
\inst|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[1]~10_combout\,
	sclr => \inst|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(1));

-- Location: LCCOMB_X45_Y53_N8
\inst|cnt[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[2]~12_combout\ = (\inst|cnt\(2) & (\inst|cnt[1]~11\ $ (GND))) # (!\inst|cnt\(2) & (!\inst|cnt[1]~11\ & VCC))
-- \inst|cnt[2]~13\ = CARRY((\inst|cnt\(2) & !\inst|cnt[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(2),
	datad => VCC,
	cin => \inst|cnt[1]~11\,
	combout => \inst|cnt[2]~12_combout\,
	cout => \inst|cnt[2]~13\);

-- Location: FF_X45_Y53_N9
\inst|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[2]~12_combout\,
	sclr => \inst|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(2));

-- Location: LCCOMB_X45_Y53_N10
\inst|cnt[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[3]~14_combout\ = (\inst|cnt\(3) & (!\inst|cnt[2]~13\)) # (!\inst|cnt\(3) & ((\inst|cnt[2]~13\) # (GND)))
-- \inst|cnt[3]~15\ = CARRY((!\inst|cnt[2]~13\) # (!\inst|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(3),
	datad => VCC,
	cin => \inst|cnt[2]~13\,
	combout => \inst|cnt[3]~14_combout\,
	cout => \inst|cnt[3]~15\);

-- Location: FF_X45_Y53_N11
\inst|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[3]~14_combout\,
	sclr => \inst|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(3));

-- Location: LCCOMB_X45_Y53_N12
\inst|cnt[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[4]~16_combout\ = (\inst|cnt\(4) & (\inst|cnt[3]~15\ $ (GND))) # (!\inst|cnt\(4) & (!\inst|cnt[3]~15\ & VCC))
-- \inst|cnt[4]~17\ = CARRY((\inst|cnt\(4) & !\inst|cnt[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(4),
	datad => VCC,
	cin => \inst|cnt[3]~15\,
	combout => \inst|cnt[4]~16_combout\,
	cout => \inst|cnt[4]~17\);

-- Location: FF_X45_Y53_N13
\inst|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[4]~16_combout\,
	sclr => \inst|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(4));

-- Location: LCCOMB_X45_Y53_N14
\inst|cnt[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[5]~18_combout\ = (\inst|cnt\(5) & (!\inst|cnt[4]~17\)) # (!\inst|cnt\(5) & ((\inst|cnt[4]~17\) # (GND)))
-- \inst|cnt[5]~19\ = CARRY((!\inst|cnt[4]~17\) # (!\inst|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(5),
	datad => VCC,
	cin => \inst|cnt[4]~17\,
	combout => \inst|cnt[5]~18_combout\,
	cout => \inst|cnt[5]~19\);

-- Location: FF_X45_Y53_N15
\inst|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[5]~18_combout\,
	sclr => \inst|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(5));

-- Location: LCCOMB_X45_Y53_N16
\inst|cnt[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[6]~20_combout\ = (\inst|cnt\(6) & (\inst|cnt[5]~19\ $ (GND))) # (!\inst|cnt\(6) & (!\inst|cnt[5]~19\ & VCC))
-- \inst|cnt[6]~21\ = CARRY((\inst|cnt\(6) & !\inst|cnt[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(6),
	datad => VCC,
	cin => \inst|cnt[5]~19\,
	combout => \inst|cnt[6]~20_combout\,
	cout => \inst|cnt[6]~21\);

-- Location: FF_X45_Y53_N17
\inst|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[6]~20_combout\,
	sclr => \inst|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(6));

-- Location: LCCOMB_X45_Y53_N18
\inst|cnt[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[7]~22_combout\ = \inst|cnt[6]~21\ $ (\inst|cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|cnt\(7),
	cin => \inst|cnt[6]~21\,
	combout => \inst|cnt[7]~22_combout\);

-- Location: FF_X45_Y53_N19
\inst|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[7]~22_combout\,
	sclr => \inst|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(7));

-- Location: LCCOMB_X45_Y53_N30
\inst|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (((!\inst|cnt\(6)) # (!\inst|cnt\(5))) # (!\inst|cnt\(7))) # (!\inst|cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(4),
	datab => \inst|cnt\(7),
	datac => \inst|cnt\(5),
	datad => \inst|cnt\(6),
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X45_Y53_N26
\inst|y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|y~0_combout\ = \inst|y~q\ $ (((!\inst|LessThan0~1_combout\ & !\inst|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y~q\,
	datac => \inst|LessThan0~1_combout\,
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|y~0_combout\);

-- Location: LCCOMB_X45_Y53_N22
\inst|y~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|y~feeder_combout\ = \inst|y~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|y~0_combout\,
	combout => \inst|y~feeder_combout\);

-- Location: FF_X45_Y53_N23
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

-- Location: CLKCTRL_G13
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

-- Location: LCCOMB_X37_Y1_N8
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

-- Location: FF_X37_Y1_N9
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

-- Location: LCCOMB_X37_Y1_N10
\inst2|cnt[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|cnt[1]~10_combout\ = (\inst2|cnt\(1) & ((\inst2|u_d~combout\ & (!\inst2|cnt[0]~9\)) # (!\inst2|u_d~combout\ & (\inst2|cnt[0]~9\ & VCC)))) # (!\inst2|cnt\(1) & ((\inst2|u_d~combout\ & ((\inst2|cnt[0]~9\) # (GND))) # (!\inst2|u_d~combout\ & 
-- (!\inst2|cnt[0]~9\))))
-- \inst2|cnt[1]~11\ = CARRY((\inst2|cnt\(1) & (\inst2|u_d~combout\ & !\inst2|cnt[0]~9\)) # (!\inst2|cnt\(1) & ((\inst2|u_d~combout\) # (!\inst2|cnt[0]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(1),
	datab => \inst2|u_d~combout\,
	datad => VCC,
	cin => \inst2|cnt[0]~9\,
	combout => \inst2|cnt[1]~10_combout\,
	cout => \inst2|cnt[1]~11\);

-- Location: FF_X37_Y1_N11
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

-- Location: LCCOMB_X37_Y1_N12
\inst2|cnt[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|cnt[2]~12_combout\ = ((\inst2|cnt\(2) $ (\inst2|u_d~combout\ $ (\inst2|cnt[1]~11\)))) # (GND)
-- \inst2|cnt[2]~13\ = CARRY((\inst2|cnt\(2) & ((!\inst2|cnt[1]~11\) # (!\inst2|u_d~combout\))) # (!\inst2|cnt\(2) & (!\inst2|u_d~combout\ & !\inst2|cnt[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(2),
	datab => \inst2|u_d~combout\,
	datad => VCC,
	cin => \inst2|cnt[1]~11\,
	combout => \inst2|cnt[2]~12_combout\,
	cout => \inst2|cnt[2]~13\);

-- Location: FF_X37_Y1_N13
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

-- Location: LCCOMB_X37_Y1_N14
\inst2|cnt[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|cnt[3]~14_combout\ = (\inst2|u_d~combout\ & ((\inst2|cnt\(3) & (!\inst2|cnt[2]~13\)) # (!\inst2|cnt\(3) & ((\inst2|cnt[2]~13\) # (GND))))) # (!\inst2|u_d~combout\ & ((\inst2|cnt\(3) & (\inst2|cnt[2]~13\ & VCC)) # (!\inst2|cnt\(3) & 
-- (!\inst2|cnt[2]~13\))))
-- \inst2|cnt[3]~15\ = CARRY((\inst2|u_d~combout\ & ((!\inst2|cnt[2]~13\) # (!\inst2|cnt\(3)))) # (!\inst2|u_d~combout\ & (!\inst2|cnt\(3) & !\inst2|cnt[2]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|u_d~combout\,
	datab => \inst2|cnt\(3),
	datad => VCC,
	cin => \inst2|cnt[2]~13\,
	combout => \inst2|cnt[3]~14_combout\,
	cout => \inst2|cnt[3]~15\);

-- Location: FF_X37_Y1_N15
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

-- Location: LCCOMB_X37_Y1_N16
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

-- Location: FF_X37_Y1_N17
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

-- Location: LCCOMB_X37_Y1_N18
\inst2|cnt[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|cnt[5]~18_combout\ = (\inst2|u_d~combout\ & ((\inst2|cnt\(5) & (!\inst2|cnt[4]~17\)) # (!\inst2|cnt\(5) & ((\inst2|cnt[4]~17\) # (GND))))) # (!\inst2|u_d~combout\ & ((\inst2|cnt\(5) & (\inst2|cnt[4]~17\ & VCC)) # (!\inst2|cnt\(5) & 
-- (!\inst2|cnt[4]~17\))))
-- \inst2|cnt[5]~19\ = CARRY((\inst2|u_d~combout\ & ((!\inst2|cnt[4]~17\) # (!\inst2|cnt\(5)))) # (!\inst2|u_d~combout\ & (!\inst2|cnt\(5) & !\inst2|cnt[4]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|u_d~combout\,
	datab => \inst2|cnt\(5),
	datad => VCC,
	cin => \inst2|cnt[4]~17\,
	combout => \inst2|cnt[5]~18_combout\,
	cout => \inst2|cnt[5]~19\);

-- Location: FF_X37_Y1_N19
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

-- Location: LCCOMB_X37_Y1_N20
\inst2|cnt[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|cnt[6]~20_combout\ = ((\inst2|u_d~combout\ $ (\inst2|cnt\(6) $ (\inst2|cnt[5]~19\)))) # (GND)
-- \inst2|cnt[6]~21\ = CARRY((\inst2|u_d~combout\ & (\inst2|cnt\(6) & !\inst2|cnt[5]~19\)) # (!\inst2|u_d~combout\ & ((\inst2|cnt\(6)) # (!\inst2|cnt[5]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|u_d~combout\,
	datab => \inst2|cnt\(6),
	datad => VCC,
	cin => \inst2|cnt[5]~19\,
	combout => \inst2|cnt[6]~20_combout\,
	cout => \inst2|cnt[6]~21\);

-- Location: FF_X37_Y1_N21
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

-- Location: LCCOMB_X37_Y1_N4
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

-- Location: LCCOMB_X37_Y1_N2
\inst2|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Equal1~1_combout\ = (\inst2|cnt\(1) & (\inst2|cnt\(0) & (\inst2|cnt\(3) & \inst2|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(1),
	datab => \inst2|cnt\(0),
	datac => \inst2|cnt\(3),
	datad => \inst2|cnt\(2),
	combout => \inst2|Equal1~1_combout\);

-- Location: LCCOMB_X37_Y1_N0
\inst2|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Equal1~2_combout\ = (\inst2|Equal1~0_combout\ & \inst2|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal1~0_combout\,
	datad => \inst2|Equal1~1_combout\,
	combout => \inst2|Equal1~2_combout\);

-- Location: LCCOMB_X37_Y1_N26
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

-- Location: LCCOMB_X37_Y1_N28
\inst2|comb~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|comb~1_combout\ = (!\inst2|cnt\(1) & (!\inst2|cnt\(0) & (!\inst2|cnt\(3) & !\inst2|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(1),
	datab => \inst2|cnt\(0),
	datac => \inst2|cnt\(3),
	datad => \inst2|cnt\(2),
	combout => \inst2|comb~1_combout\);

-- Location: LCCOMB_X37_Y1_N30
\inst2|comb~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|comb~2_combout\ = (\inst2|comb~0_combout\ & \inst2|comb~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|comb~0_combout\,
	datad => \inst2|comb~1_combout\,
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

-- Location: LCCOMB_X37_Y1_N22
\inst2|cnt[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|cnt[7]~22_combout\ = \inst2|cnt\(7) $ (\inst2|u_d~combout\ $ (!\inst2|cnt[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(7),
	datab => \inst2|u_d~combout\,
	cin => \inst2|cnt[6]~21\,
	combout => \inst2|cnt[7]~22_combout\);

-- Location: FF_X37_Y1_N23
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

-- Location: IOIBUF_X24_Y0_N15
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

-- Location: IOIBUF_X24_Y0_N22
\b_red~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_red,
	o => \b_red~input_o\);

-- Location: LCCOMB_X77_Y43_N12
\inst6|cnt[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|cnt[0]~10_combout\ = \inst6|cnt\(0) $ (((!\b_red~input_o\) # (!\b_blue~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b_blue~input_o\,
	datac => \inst6|cnt\(0),
	datad => \b_red~input_o\,
	combout => \inst6|cnt[0]~10_combout\);

-- Location: FF_X77_Y43_N13
\inst6|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst6|cnt[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|cnt\(0));

-- Location: LCCOMB_X77_Y43_N0
\inst6|cnt[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|cnt[1]~4_cout\ = CARRY(\inst6|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(0),
	datad => VCC,
	cout => \inst6|cnt[1]~4_cout\);

-- Location: LCCOMB_X77_Y43_N2
\inst6|cnt[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|cnt[1]~5_combout\ = (\b_blue~input_o\ & ((\inst6|cnt\(1) & (\inst6|cnt[1]~4_cout\ & VCC)) # (!\inst6|cnt\(1) & (!\inst6|cnt[1]~4_cout\)))) # (!\b_blue~input_o\ & ((\inst6|cnt\(1) & (!\inst6|cnt[1]~4_cout\)) # (!\inst6|cnt\(1) & 
-- ((\inst6|cnt[1]~4_cout\) # (GND)))))
-- \inst6|cnt[1]~6\ = CARRY((\b_blue~input_o\ & (!\inst6|cnt\(1) & !\inst6|cnt[1]~4_cout\)) # (!\b_blue~input_o\ & ((!\inst6|cnt[1]~4_cout\) # (!\inst6|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_blue~input_o\,
	datab => \inst6|cnt\(1),
	datad => VCC,
	cin => \inst6|cnt[1]~4_cout\,
	combout => \inst6|cnt[1]~5_combout\,
	cout => \inst6|cnt[1]~6\);

-- Location: LCCOMB_X77_Y43_N28
\inst6|cnt~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|cnt~9_combout\ = (!\b_red~input_o\) # (!\b_blue~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b_blue~input_o\,
	datad => \b_red~input_o\,
	combout => \inst6|cnt~9_combout\);

-- Location: FF_X77_Y43_N3
\inst6|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst6|cnt[1]~5_combout\,
	ena => \inst6|cnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|cnt\(1));

-- Location: LCCOMB_X77_Y43_N4
\inst6|cnt[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|cnt[2]~7_combout\ = ((\b_blue~input_o\ $ (\inst6|cnt\(2) $ (!\inst6|cnt[1]~6\)))) # (GND)
-- \inst6|cnt[2]~8\ = CARRY((\b_blue~input_o\ & ((\inst6|cnt\(2)) # (!\inst6|cnt[1]~6\))) # (!\b_blue~input_o\ & (\inst6|cnt\(2) & !\inst6|cnt[1]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_blue~input_o\,
	datab => \inst6|cnt\(2),
	datad => VCC,
	cin => \inst6|cnt[1]~6\,
	combout => \inst6|cnt[2]~7_combout\,
	cout => \inst6|cnt[2]~8\);

-- Location: FF_X77_Y43_N5
\inst6|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst6|cnt[2]~7_combout\,
	ena => \inst6|cnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|cnt\(2));

-- Location: LCCOMB_X77_Y43_N6
\inst6|cnt[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|cnt[3]~11_combout\ = \b_blue~input_o\ $ (\inst6|cnt[2]~8\ $ (\inst6|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_blue~input_o\,
	datad => \inst6|cnt\(3),
	cin => \inst6|cnt[2]~8\,
	combout => \inst6|cnt[3]~11_combout\);

-- Location: FF_X77_Y43_N7
\inst6|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst6|cnt[3]~11_combout\,
	ena => \inst6|cnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|cnt\(3));

-- Location: LCCOMB_X77_Y39_N8
\inst8|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux0~0_combout\ = (\inst6|cnt\(2) & (!\inst6|cnt\(0) & !\inst6|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(2),
	datac => \inst6|cnt\(0),
	datad => \inst6|cnt\(3),
	combout => \inst8|Mux0~0_combout\);

-- Location: LCCOMB_X77_Y39_N22
\inst8|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux1~0_combout\ = (!\inst6|cnt\(2) & (!\inst6|cnt\(0) & (!\inst6|cnt\(1) & \inst6|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(2),
	datab => \inst6|cnt\(0),
	datac => \inst6|cnt\(1),
	datad => \inst6|cnt\(3),
	combout => \inst8|Mux1~0_combout\);

-- Location: LCCOMB_X77_Y39_N20
\inst8|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux2~0_combout\ = (!\inst6|cnt\(1) & ((\inst6|cnt\(2) & (\inst6|cnt\(0) & !\inst6|cnt\(3))) # (!\inst6|cnt\(2) & (!\inst6|cnt\(0) & \inst6|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(2),
	datab => \inst6|cnt\(0),
	datac => \inst6|cnt\(1),
	datad => \inst6|cnt\(3),
	combout => \inst8|Mux2~0_combout\);

-- Location: LCCOMB_X77_Y43_N22
\inst8|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux3~0_combout\ = (!\inst6|cnt\(0) & ((\inst6|cnt\(2) & ((!\inst6|cnt\(3)))) # (!\inst6|cnt\(2) & (!\inst6|cnt\(1) & \inst6|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(0),
	datab => \inst6|cnt\(1),
	datac => \inst6|cnt\(2),
	datad => \inst6|cnt\(3),
	combout => \inst8|Mux3~0_combout\);

-- Location: LCCOMB_X77_Y43_N20
\inst8|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux5~0_combout\ = (!\inst6|cnt\(1) & (\inst6|cnt\(2) & !\inst6|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|cnt\(1),
	datac => \inst6|cnt\(2),
	datad => \inst6|cnt\(3),
	combout => \inst8|Mux5~0_combout\);

-- Location: LCCOMB_X77_Y43_N26
\inst8|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux6~0_combout\ = (\inst6|cnt\(3)) # ((\inst6|cnt\(2) & ((\inst6|cnt\(0)) # (\inst6|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(0),
	datab => \inst6|cnt\(1),
	datac => \inst6|cnt\(2),
	datad => \inst6|cnt\(3),
	combout => \inst8|Mux6~0_combout\);

-- Location: LCCOMB_X77_Y43_N16
\inst10|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Mux0~0_combout\ = (\inst6|cnt\(0)) # ((\inst6|cnt\(2)) # (\inst6|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(0),
	datac => \inst6|cnt\(2),
	datad => \inst6|cnt\(3),
	combout => \inst10|Mux0~0_combout\);

-- Location: LCCOMB_X77_Y43_N30
\inst10|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Mux2~0_combout\ = (!\inst6|cnt\(1) & (!\inst6|cnt\(2) & (\inst6|cnt\(0) $ (\inst6|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(0),
	datab => \inst6|cnt\(1),
	datac => \inst6|cnt\(2),
	datad => \inst6|cnt\(3),
	combout => \inst10|Mux2~0_combout\);

-- Location: LCCOMB_X77_Y43_N24
\inst10|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Mux3~0_combout\ = (!\inst6|cnt\(0) & (!\inst6|cnt\(2) & ((!\inst6|cnt\(3)) # (!\inst6|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(0),
	datab => \inst6|cnt\(1),
	datac => \inst6|cnt\(2),
	datad => \inst6|cnt\(3),
	combout => \inst10|Mux3~0_combout\);

-- Location: LCCOMB_X77_Y39_N14
\inst10|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Mux5~0_combout\ = (\inst6|cnt\(2)) # ((\inst6|cnt\(1)) # (\inst6|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(2),
	datac => \inst6|cnt\(1),
	datad => \inst6|cnt\(3),
	combout => \inst10|Mux5~0_combout\);

-- Location: LCCOMB_X77_Y43_N14
\inst10|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Mux6~0_combout\ = (!\inst6|cnt\(2) & (\inst6|cnt\(3) $ (((\inst6|cnt\(0)) # (\inst6|cnt\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(0),
	datab => \inst6|cnt\(1),
	datac => \inst6|cnt\(2),
	datad => \inst6|cnt\(3),
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


