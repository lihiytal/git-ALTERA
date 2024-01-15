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

-- DATE "01/15/2024 10:30:25"

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
	dac : OUT std_logic_vector(7 DOWNTO 0);
	clk : IN std_logic;
	sw : IN std_logic_vector(7 DOWNTO 0)
	);
END DAC_SW;

-- Design Ports Information
-- dac[7]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dac[6]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dac[5]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dac[4]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dac[3]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dac[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dac[1]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dac[0]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_dac : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
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
SIGNAL \dac[7]~output_o\ : std_logic;
SIGNAL \dac[6]~output_o\ : std_logic;
SIGNAL \dac[5]~output_o\ : std_logic;
SIGNAL \dac[4]~output_o\ : std_logic;
SIGNAL \dac[3]~output_o\ : std_logic;
SIGNAL \dac[2]~output_o\ : std_logic;
SIGNAL \dac[1]~output_o\ : std_logic;
SIGNAL \dac[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|cnt[0]~8_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
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
SIGNAL \inst|cnt\ : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

dac <= ww_dac;
ww_clk <= clk;
ww_sw <= sw;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N4
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
\dac[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cnt\(7),
	devoe => ww_devoe,
	o => \dac[7]~output_o\);

-- Location: IOOBUF_X46_Y0_N2
\dac[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cnt\(6),
	devoe => ww_devoe,
	o => \dac[6]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\dac[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cnt\(5),
	devoe => ww_devoe,
	o => \dac[5]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\dac[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cnt\(4),
	devoe => ww_devoe,
	o => \dac[4]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\dac[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cnt\(3),
	devoe => ww_devoe,
	o => \dac[3]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\dac[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cnt\(2),
	devoe => ww_devoe,
	o => \dac[2]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\dac[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cnt\(1),
	devoe => ww_devoe,
	o => \dac[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\dac[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cnt\(0),
	devoe => ww_devoe,
	o => \dac[0]~output_o\);

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

-- Location: LCCOMB_X36_Y1_N14
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

-- Location: LCCOMB_X36_Y1_N8
\inst|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (((!\inst|cnt\(5)) # (!\inst|cnt\(4))) # (!\inst|cnt\(7))) # (!\inst|cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(6),
	datab => \inst|cnt\(7),
	datac => \inst|cnt\(4),
	datad => \inst|cnt\(5),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X36_Y1_N10
\inst|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (((!\inst|cnt\(1)) # (!\inst|cnt\(0))) # (!\inst|cnt\(2))) # (!\inst|cnt\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(3),
	datab => \inst|cnt\(2),
	datac => \inst|cnt\(0),
	datad => \inst|cnt\(1),
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X36_Y1_N4
\inst|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (!\inst|LessThan0~0_combout\ & !\inst|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|LessThan0~0_combout\,
	datad => \inst|LessThan0~1_combout\,
	combout => \inst|LessThan0~2_combout\);

-- Location: FF_X36_Y1_N15
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

-- Location: LCCOMB_X36_Y1_N16
\inst|cnt[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[1]~10_combout\ = (\inst|cnt\(1) & (!\inst|cnt[0]~9\)) # (!\inst|cnt\(1) & ((\inst|cnt[0]~9\) # (GND)))
-- \inst|cnt[1]~11\ = CARRY((!\inst|cnt[0]~9\) # (!\inst|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(1),
	datad => VCC,
	cin => \inst|cnt[0]~9\,
	combout => \inst|cnt[1]~10_combout\,
	cout => \inst|cnt[1]~11\);

-- Location: FF_X36_Y1_N17
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

-- Location: LCCOMB_X36_Y1_N18
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

-- Location: FF_X36_Y1_N19
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

-- Location: LCCOMB_X36_Y1_N20
\inst|cnt[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[3]~14_combout\ = (\inst|cnt\(3) & (!\inst|cnt[2]~13\)) # (!\inst|cnt\(3) & ((\inst|cnt[2]~13\) # (GND)))
-- \inst|cnt[3]~15\ = CARRY((!\inst|cnt[2]~13\) # (!\inst|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(3),
	datad => VCC,
	cin => \inst|cnt[2]~13\,
	combout => \inst|cnt[3]~14_combout\,
	cout => \inst|cnt[3]~15\);

-- Location: FF_X36_Y1_N21
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

-- Location: LCCOMB_X36_Y1_N22
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

-- Location: FF_X36_Y1_N23
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

-- Location: LCCOMB_X36_Y1_N24
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

-- Location: FF_X36_Y1_N25
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

-- Location: LCCOMB_X36_Y1_N26
\inst|cnt[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[6]~20_combout\ = (\inst|cnt\(6) & (\inst|cnt[5]~19\ $ (GND))) # (!\inst|cnt\(6) & (!\inst|cnt[5]~19\ & VCC))
-- \inst|cnt[6]~21\ = CARRY((\inst|cnt\(6) & !\inst|cnt[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(6),
	datad => VCC,
	cin => \inst|cnt[5]~19\,
	combout => \inst|cnt[6]~20_combout\,
	cout => \inst|cnt[6]~21\);

-- Location: FF_X36_Y1_N27
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

-- Location: LCCOMB_X36_Y1_N28
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

-- Location: FF_X36_Y1_N29
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

ww_dac(7) <= \dac[7]~output_o\;

ww_dac(6) <= \dac[6]~output_o\;

ww_dac(5) <= \dac[5]~output_o\;

ww_dac(4) <= \dac[4]~output_o\;

ww_dac(3) <= \dac[3]~output_o\;

ww_dac(2) <= \dac[2]~output_o\;

ww_dac(1) <= \dac[1]~output_o\;

ww_dac(0) <= \dac[0]~output_o\;
END structure;


