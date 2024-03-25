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

-- DATE "03/21/2024 13:33:58"

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

ENTITY 	DAC08 IS
    PORT (
	dacin : OUT std_logic_vector(7 DOWNTO 0);
	clk : IN std_logic
	);
END DAC08;

-- Design Ports Information
-- dacin[7]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dacin[6]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dacin[5]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dacin[4]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dacin[3]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dacin[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dacin[1]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dacin[0]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DAC08 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_dacin : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|y~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \dacin[7]~output_o\ : std_logic;
SIGNAL \dacin[6]~output_o\ : std_logic;
SIGNAL \dacin[5]~output_o\ : std_logic;
SIGNAL \dacin[4]~output_o\ : std_logic;
SIGNAL \dacin[3]~output_o\ : std_logic;
SIGNAL \dacin[2]~output_o\ : std_logic;
SIGNAL \dacin[1]~output_o\ : std_logic;
SIGNAL \dacin[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|cnt[0]~7_combout\ : std_logic;
SIGNAL \inst|cnt[5]~18\ : std_logic;
SIGNAL \inst|cnt[6]~19_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|cnt[0]~8\ : std_logic;
SIGNAL \inst|cnt[1]~9_combout\ : std_logic;
SIGNAL \inst|cnt[1]~10\ : std_logic;
SIGNAL \inst|cnt[2]~11_combout\ : std_logic;
SIGNAL \inst|cnt[2]~12\ : std_logic;
SIGNAL \inst|cnt[3]~13_combout\ : std_logic;
SIGNAL \inst|cnt[3]~14\ : std_logic;
SIGNAL \inst|cnt[4]~15_combout\ : std_logic;
SIGNAL \inst|cnt[4]~16\ : std_logic;
SIGNAL \inst|cnt[5]~17_combout\ : std_logic;
SIGNAL \inst|y~0_combout\ : std_logic;
SIGNAL \inst|y~feeder_combout\ : std_logic;
SIGNAL \inst|y~q\ : std_logic;
SIGNAL \inst|y~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|cnt[0]~8_combout\ : std_logic;
SIGNAL \inst1|cnt[0]~9\ : std_logic;
SIGNAL \inst1|cnt[1]~10_combout\ : std_logic;
SIGNAL \inst1|cnt[1]~11\ : std_logic;
SIGNAL \inst1|cnt[2]~12_combout\ : std_logic;
SIGNAL \inst1|cnt[2]~13\ : std_logic;
SIGNAL \inst1|cnt[3]~14_combout\ : std_logic;
SIGNAL \inst1|cnt[3]~15\ : std_logic;
SIGNAL \inst1|cnt[4]~16_combout\ : std_logic;
SIGNAL \inst1|cnt[4]~17\ : std_logic;
SIGNAL \inst1|cnt[5]~18_combout\ : std_logic;
SIGNAL \inst1|cnt[5]~19\ : std_logic;
SIGNAL \inst1|cnt[6]~20_combout\ : std_logic;
SIGNAL \inst1|comb~0_combout\ : std_logic;
SIGNAL \inst1|comb~1_combout\ : std_logic;
SIGNAL \inst1|comb~2_combout\ : std_logic;
SIGNAL \inst1|Equal1~1_combout\ : std_logic;
SIGNAL \inst1|Equal1~0_combout\ : std_logic;
SIGNAL \inst1|Equal1~2_combout\ : std_logic;
SIGNAL \inst1|u_d~combout\ : std_logic;
SIGNAL \inst1|cnt[6]~21\ : std_logic;
SIGNAL \inst1|cnt[7]~22_combout\ : std_logic;
SIGNAL \inst1|cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|cnt\ : std_logic_vector(6 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

dacin <= ww_dacin;
ww_clk <= clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst|y~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|y~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
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

-- Location: IOOBUF_X54_Y0_N30
\dacin[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cnt\(7),
	devoe => ww_devoe,
	o => \dacin[7]~output_o\);

-- Location: IOOBUF_X46_Y0_N2
\dacin[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cnt\(6),
	devoe => ww_devoe,
	o => \dacin[6]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\dacin[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cnt\(5),
	devoe => ww_devoe,
	o => \dacin[5]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\dacin[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cnt\(4),
	devoe => ww_devoe,
	o => \dacin[4]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\dacin[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cnt\(3),
	devoe => ww_devoe,
	o => \dacin[3]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\dacin[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cnt\(2),
	devoe => ww_devoe,
	o => \dacin[2]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\dacin[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cnt\(1),
	devoe => ww_devoe,
	o => \dacin[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\dacin[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cnt\(0),
	devoe => ww_devoe,
	o => \dacin[0]~output_o\);

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

-- Location: LCCOMB_X45_Y1_N0
\inst|cnt[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[0]~7_combout\ = \inst|cnt\(0) $ (VCC)
-- \inst|cnt[0]~8\ = CARRY(\inst|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(0),
	datad => VCC,
	combout => \inst|cnt[0]~7_combout\,
	cout => \inst|cnt[0]~8\);

-- Location: LCCOMB_X45_Y1_N10
\inst|cnt[5]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[5]~17_combout\ = (\inst|cnt\(5) & (!\inst|cnt[4]~16\)) # (!\inst|cnt\(5) & ((\inst|cnt[4]~16\) # (GND)))
-- \inst|cnt[5]~18\ = CARRY((!\inst|cnt[4]~16\) # (!\inst|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(5),
	datad => VCC,
	cin => \inst|cnt[4]~16\,
	combout => \inst|cnt[5]~17_combout\,
	cout => \inst|cnt[5]~18\);

-- Location: LCCOMB_X45_Y1_N12
\inst|cnt[6]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[6]~19_combout\ = \inst|cnt\(6) $ (!\inst|cnt[5]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(6),
	cin => \inst|cnt[5]~18\,
	combout => \inst|cnt[6]~19_combout\);

-- Location: FF_X45_Y1_N13
\inst|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[6]~19_combout\,
	sclr => \inst|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(6));

-- Location: LCCOMB_X45_Y1_N28
\inst|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (!\inst|cnt\(3) & (!\inst|cnt\(4) & (!\inst|cnt\(2) & !\inst|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(3),
	datab => \inst|cnt\(4),
	datac => \inst|cnt\(2),
	datad => \inst|cnt\(1),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X45_Y1_N30
\inst|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (\inst|cnt\(5) & (\inst|cnt\(6) & !\inst|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(5),
	datac => \inst|cnt\(6),
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|LessThan0~1_combout\);

-- Location: FF_X45_Y1_N1
\inst|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[0]~7_combout\,
	sclr => \inst|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(0));

-- Location: LCCOMB_X45_Y1_N2
\inst|cnt[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[1]~9_combout\ = (\inst|cnt\(1) & (!\inst|cnt[0]~8\)) # (!\inst|cnt\(1) & ((\inst|cnt[0]~8\) # (GND)))
-- \inst|cnt[1]~10\ = CARRY((!\inst|cnt[0]~8\) # (!\inst|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(1),
	datad => VCC,
	cin => \inst|cnt[0]~8\,
	combout => \inst|cnt[1]~9_combout\,
	cout => \inst|cnt[1]~10\);

-- Location: FF_X45_Y1_N3
\inst|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[1]~9_combout\,
	sclr => \inst|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(1));

-- Location: LCCOMB_X45_Y1_N4
\inst|cnt[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[2]~11_combout\ = (\inst|cnt\(2) & (\inst|cnt[1]~10\ $ (GND))) # (!\inst|cnt\(2) & (!\inst|cnt[1]~10\ & VCC))
-- \inst|cnt[2]~12\ = CARRY((\inst|cnt\(2) & !\inst|cnt[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(2),
	datad => VCC,
	cin => \inst|cnt[1]~10\,
	combout => \inst|cnt[2]~11_combout\,
	cout => \inst|cnt[2]~12\);

-- Location: FF_X45_Y1_N5
\inst|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[2]~11_combout\,
	sclr => \inst|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(2));

-- Location: LCCOMB_X45_Y1_N6
\inst|cnt[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[3]~13_combout\ = (\inst|cnt\(3) & (!\inst|cnt[2]~12\)) # (!\inst|cnt\(3) & ((\inst|cnt[2]~12\) # (GND)))
-- \inst|cnt[3]~14\ = CARRY((!\inst|cnt[2]~12\) # (!\inst|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(3),
	datad => VCC,
	cin => \inst|cnt[2]~12\,
	combout => \inst|cnt[3]~13_combout\,
	cout => \inst|cnt[3]~14\);

-- Location: FF_X45_Y1_N7
\inst|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[3]~13_combout\,
	sclr => \inst|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(3));

-- Location: LCCOMB_X45_Y1_N8
\inst|cnt[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[4]~15_combout\ = (\inst|cnt\(4) & (\inst|cnt[3]~14\ $ (GND))) # (!\inst|cnt\(4) & (!\inst|cnt[3]~14\ & VCC))
-- \inst|cnt[4]~16\ = CARRY((\inst|cnt\(4) & !\inst|cnt[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(4),
	datad => VCC,
	cin => \inst|cnt[3]~14\,
	combout => \inst|cnt[4]~15_combout\,
	cout => \inst|cnt[4]~16\);

-- Location: FF_X45_Y1_N9
\inst|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[4]~15_combout\,
	sclr => \inst|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(4));

-- Location: FF_X45_Y1_N11
\inst|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[5]~17_combout\,
	sclr => \inst|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(5));

-- Location: LCCOMB_X45_Y1_N22
\inst|y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|y~0_combout\ = \inst|y~q\ $ (((\inst|cnt\(5) & (\inst|cnt\(6) & !\inst|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(5),
	datab => \inst|y~q\,
	datac => \inst|cnt\(6),
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|y~0_combout\);

-- Location: LCCOMB_X45_Y1_N26
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

-- Location: FF_X45_Y1_N27
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

-- Location: LCCOMB_X37_Y1_N8
\inst1|cnt[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cnt[0]~8_combout\ = \inst1|cnt\(0) $ (VCC)
-- \inst1|cnt[0]~9\ = CARRY(\inst1|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cnt\(0),
	datad => VCC,
	combout => \inst1|cnt[0]~8_combout\,
	cout => \inst1|cnt[0]~9\);

-- Location: FF_X37_Y1_N9
\inst1|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst1|cnt[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cnt\(0));

-- Location: LCCOMB_X37_Y1_N10
\inst1|cnt[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cnt[1]~10_combout\ = (\inst1|cnt\(1) & ((\inst1|u_d~combout\ & (!\inst1|cnt[0]~9\)) # (!\inst1|u_d~combout\ & (\inst1|cnt[0]~9\ & VCC)))) # (!\inst1|cnt\(1) & ((\inst1|u_d~combout\ & ((\inst1|cnt[0]~9\) # (GND))) # (!\inst1|u_d~combout\ & 
-- (!\inst1|cnt[0]~9\))))
-- \inst1|cnt[1]~11\ = CARRY((\inst1|cnt\(1) & (\inst1|u_d~combout\ & !\inst1|cnt[0]~9\)) # (!\inst1|cnt\(1) & ((\inst1|u_d~combout\) # (!\inst1|cnt[0]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cnt\(1),
	datab => \inst1|u_d~combout\,
	datad => VCC,
	cin => \inst1|cnt[0]~9\,
	combout => \inst1|cnt[1]~10_combout\,
	cout => \inst1|cnt[1]~11\);

-- Location: FF_X37_Y1_N11
\inst1|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst1|cnt[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cnt\(1));

-- Location: LCCOMB_X37_Y1_N12
\inst1|cnt[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cnt[2]~12_combout\ = ((\inst1|cnt\(2) $ (\inst1|u_d~combout\ $ (\inst1|cnt[1]~11\)))) # (GND)
-- \inst1|cnt[2]~13\ = CARRY((\inst1|cnt\(2) & ((!\inst1|cnt[1]~11\) # (!\inst1|u_d~combout\))) # (!\inst1|cnt\(2) & (!\inst1|u_d~combout\ & !\inst1|cnt[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cnt\(2),
	datab => \inst1|u_d~combout\,
	datad => VCC,
	cin => \inst1|cnt[1]~11\,
	combout => \inst1|cnt[2]~12_combout\,
	cout => \inst1|cnt[2]~13\);

-- Location: FF_X37_Y1_N13
\inst1|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst1|cnt[2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cnt\(2));

-- Location: LCCOMB_X37_Y1_N14
\inst1|cnt[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cnt[3]~14_combout\ = (\inst1|u_d~combout\ & ((\inst1|cnt\(3) & (!\inst1|cnt[2]~13\)) # (!\inst1|cnt\(3) & ((\inst1|cnt[2]~13\) # (GND))))) # (!\inst1|u_d~combout\ & ((\inst1|cnt\(3) & (\inst1|cnt[2]~13\ & VCC)) # (!\inst1|cnt\(3) & 
-- (!\inst1|cnt[2]~13\))))
-- \inst1|cnt[3]~15\ = CARRY((\inst1|u_d~combout\ & ((!\inst1|cnt[2]~13\) # (!\inst1|cnt\(3)))) # (!\inst1|u_d~combout\ & (!\inst1|cnt\(3) & !\inst1|cnt[2]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|u_d~combout\,
	datab => \inst1|cnt\(3),
	datad => VCC,
	cin => \inst1|cnt[2]~13\,
	combout => \inst1|cnt[3]~14_combout\,
	cout => \inst1|cnt[3]~15\);

-- Location: FF_X37_Y1_N15
\inst1|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst1|cnt[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cnt\(3));

-- Location: LCCOMB_X37_Y1_N16
\inst1|cnt[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cnt[4]~16_combout\ = ((\inst1|u_d~combout\ $ (\inst1|cnt\(4) $ (\inst1|cnt[3]~15\)))) # (GND)
-- \inst1|cnt[4]~17\ = CARRY((\inst1|u_d~combout\ & (\inst1|cnt\(4) & !\inst1|cnt[3]~15\)) # (!\inst1|u_d~combout\ & ((\inst1|cnt\(4)) # (!\inst1|cnt[3]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|u_d~combout\,
	datab => \inst1|cnt\(4),
	datad => VCC,
	cin => \inst1|cnt[3]~15\,
	combout => \inst1|cnt[4]~16_combout\,
	cout => \inst1|cnt[4]~17\);

-- Location: FF_X37_Y1_N17
\inst1|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst1|cnt[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cnt\(4));

-- Location: LCCOMB_X37_Y1_N18
\inst1|cnt[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cnt[5]~18_combout\ = (\inst1|u_d~combout\ & ((\inst1|cnt\(5) & (!\inst1|cnt[4]~17\)) # (!\inst1|cnt\(5) & ((\inst1|cnt[4]~17\) # (GND))))) # (!\inst1|u_d~combout\ & ((\inst1|cnt\(5) & (\inst1|cnt[4]~17\ & VCC)) # (!\inst1|cnt\(5) & 
-- (!\inst1|cnt[4]~17\))))
-- \inst1|cnt[5]~19\ = CARRY((\inst1|u_d~combout\ & ((!\inst1|cnt[4]~17\) # (!\inst1|cnt\(5)))) # (!\inst1|u_d~combout\ & (!\inst1|cnt\(5) & !\inst1|cnt[4]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|u_d~combout\,
	datab => \inst1|cnt\(5),
	datad => VCC,
	cin => \inst1|cnt[4]~17\,
	combout => \inst1|cnt[5]~18_combout\,
	cout => \inst1|cnt[5]~19\);

-- Location: FF_X37_Y1_N19
\inst1|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst1|cnt[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cnt\(5));

-- Location: LCCOMB_X37_Y1_N20
\inst1|cnt[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cnt[6]~20_combout\ = ((\inst1|u_d~combout\ $ (\inst1|cnt\(6) $ (\inst1|cnt[5]~19\)))) # (GND)
-- \inst1|cnt[6]~21\ = CARRY((\inst1|u_d~combout\ & (\inst1|cnt\(6) & !\inst1|cnt[5]~19\)) # (!\inst1|u_d~combout\ & ((\inst1|cnt\(6)) # (!\inst1|cnt[5]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|u_d~combout\,
	datab => \inst1|cnt\(6),
	datad => VCC,
	cin => \inst1|cnt[5]~19\,
	combout => \inst1|cnt[6]~20_combout\,
	cout => \inst1|cnt[6]~21\);

-- Location: FF_X37_Y1_N21
\inst1|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst1|cnt[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cnt\(6));

-- Location: LCCOMB_X37_Y1_N26
\inst1|comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|comb~0_combout\ = (!\inst1|cnt\(5) & (!\inst1|cnt\(4) & (!\inst1|cnt\(7) & !\inst1|cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cnt\(5),
	datab => \inst1|cnt\(4),
	datac => \inst1|cnt\(7),
	datad => \inst1|cnt\(6),
	combout => \inst1|comb~0_combout\);

-- Location: LCCOMB_X37_Y1_N0
\inst1|comb~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|comb~1_combout\ = (!\inst1|cnt\(0) & (!\inst1|cnt\(1) & (!\inst1|cnt\(3) & !\inst1|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cnt\(0),
	datab => \inst1|cnt\(1),
	datac => \inst1|cnt\(3),
	datad => \inst1|cnt\(2),
	combout => \inst1|comb~1_combout\);

-- Location: LCCOMB_X37_Y1_N6
\inst1|comb~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|comb~2_combout\ = (\inst1|comb~0_combout\ & \inst1|comb~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|comb~0_combout\,
	datad => \inst1|comb~1_combout\,
	combout => \inst1|comb~2_combout\);

-- Location: LCCOMB_X37_Y1_N30
\inst1|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Equal1~1_combout\ = (\inst1|cnt\(0) & (\inst1|cnt\(1) & (\inst1|cnt\(3) & \inst1|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cnt\(0),
	datab => \inst1|cnt\(1),
	datac => \inst1|cnt\(3),
	datad => \inst1|cnt\(2),
	combout => \inst1|Equal1~1_combout\);

-- Location: LCCOMB_X37_Y1_N28
\inst1|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Equal1~0_combout\ = (\inst1|cnt\(5) & (\inst1|cnt\(4) & (\inst1|cnt\(7) & \inst1|cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cnt\(5),
	datab => \inst1|cnt\(4),
	datac => \inst1|cnt\(7),
	datad => \inst1|cnt\(6),
	combout => \inst1|Equal1~0_combout\);

-- Location: LCCOMB_X37_Y1_N4
\inst1|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Equal1~2_combout\ = (\inst1|Equal1~1_combout\ & \inst1|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Equal1~1_combout\,
	datad => \inst1|Equal1~0_combout\,
	combout => \inst1|Equal1~2_combout\);

-- Location: LCCOMB_X37_Y1_N24
\inst1|u_d\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|u_d~combout\ = (!\inst1|Equal1~2_combout\ & ((\inst1|comb~2_combout\) # (\inst1|u_d~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|comb~2_combout\,
	datac => \inst1|Equal1~2_combout\,
	datad => \inst1|u_d~combout\,
	combout => \inst1|u_d~combout\);

-- Location: LCCOMB_X37_Y1_N22
\inst1|cnt[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cnt[7]~22_combout\ = \inst1|cnt\(7) $ (\inst1|u_d~combout\ $ (!\inst1|cnt[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cnt\(7),
	datab => \inst1|u_d~combout\,
	cin => \inst1|cnt[6]~21\,
	combout => \inst1|cnt[7]~22_combout\);

-- Location: FF_X37_Y1_N23
\inst1|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst1|cnt[7]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cnt\(7));

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

ww_dacin(7) <= \dacin[7]~output_o\;

ww_dacin(6) <= \dacin[6]~output_o\;

ww_dacin(5) <= \dacin[5]~output_o\;

ww_dacin(4) <= \dacin[4]~output_o\;

ww_dacin(3) <= \dacin[3]~output_o\;

ww_dacin(2) <= \dacin[2]~output_o\;

ww_dacin(1) <= \dacin[1]~output_o\;

ww_dacin(0) <= \dacin[0]~output_o\;
END structure;


