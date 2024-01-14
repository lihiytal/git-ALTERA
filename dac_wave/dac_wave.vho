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

-- DATE "01/11/2024 10:10:16"

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

ENTITY 	dac_wave IS
    PORT (
	clk : IN std_logic;
	dout : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END dac_wave;

-- Design Ports Information
-- dout[0]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[1]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[2]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[3]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[4]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[5]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[6]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[7]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF dac_wave IS
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
SIGNAL ww_dout : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \dout[0]~output_o\ : std_logic;
SIGNAL \dout[1]~output_o\ : std_logic;
SIGNAL \dout[2]~output_o\ : std_logic;
SIGNAL \dout[3]~output_o\ : std_logic;
SIGNAL \dout[4]~output_o\ : std_logic;
SIGNAL \dout[5]~output_o\ : std_logic;
SIGNAL \dout[6]~output_o\ : std_logic;
SIGNAL \dout[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \cnt[0]~8_combout\ : std_logic;
SIGNAL \cnt[0]~9\ : std_logic;
SIGNAL \cnt[1]~11\ : std_logic;
SIGNAL \cnt[2]~12_combout\ : std_logic;
SIGNAL \cnt[2]~13\ : std_logic;
SIGNAL \cnt[3]~14_combout\ : std_logic;
SIGNAL \cnt[3]~15\ : std_logic;
SIGNAL \cnt[4]~16_combout\ : std_logic;
SIGNAL \cnt[4]~17\ : std_logic;
SIGNAL \cnt[5]~18_combout\ : std_logic;
SIGNAL \cnt[5]~19\ : std_logic;
SIGNAL \cnt[6]~20_combout\ : std_logic;
SIGNAL \u_d~2_combout\ : std_logic;
SIGNAL \u_d~1_combout\ : std_logic;
SIGNAL \cnt[6]~21\ : std_logic;
SIGNAL \cnt[7]~22_combout\ : std_logic;
SIGNAL \u_d~0_combout\ : std_logic;
SIGNAL \u_d~3_combout\ : std_logic;
SIGNAL \u_d~q\ : std_logic;
SIGNAL \cnt[1]~10_combout\ : std_logic;
SIGNAL cnt : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
dout <= ww_dout;
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

-- Location: IOOBUF_X24_Y39_N30
\dout[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(0),
	devoe => ww_devoe,
	o => \dout[0]~output_o\);

-- Location: IOOBUF_X24_Y39_N23
\dout[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(1),
	devoe => ww_devoe,
	o => \dout[1]~output_o\);

-- Location: IOOBUF_X26_Y39_N30
\dout[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(2),
	devoe => ww_devoe,
	o => \dout[2]~output_o\);

-- Location: IOOBUF_X26_Y39_N2
\dout[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(3),
	devoe => ww_devoe,
	o => \dout[3]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\dout[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(4),
	devoe => ww_devoe,
	o => \dout[4]~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\dout[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(5),
	devoe => ww_devoe,
	o => \dout[5]~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\dout[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(6),
	devoe => ww_devoe,
	o => \dout[6]~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\dout[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(7),
	devoe => ww_devoe,
	o => \dout[7]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
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

-- Location: CLKCTRL_G3
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

-- Location: LCCOMB_X25_Y38_N14
\cnt[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt[0]~8_combout\ = cnt(0) $ (VCC)
-- \cnt[0]~9\ = CARRY(cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt(0),
	datad => VCC,
	combout => \cnt[0]~8_combout\,
	cout => \cnt[0]~9\);

-- Location: FF_X25_Y38_N15
\cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(0));

-- Location: LCCOMB_X25_Y38_N16
\cnt[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt[1]~10_combout\ = (\u_d~q\ & ((cnt(1) & (\cnt[0]~9\ & VCC)) # (!cnt(1) & (!\cnt[0]~9\)))) # (!\u_d~q\ & ((cnt(1) & (!\cnt[0]~9\)) # (!cnt(1) & ((\cnt[0]~9\) # (GND)))))
-- \cnt[1]~11\ = CARRY((\u_d~q\ & (!cnt(1) & !\cnt[0]~9\)) # (!\u_d~q\ & ((!\cnt[0]~9\) # (!cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_d~q\,
	datab => cnt(1),
	datad => VCC,
	cin => \cnt[0]~9\,
	combout => \cnt[1]~10_combout\,
	cout => \cnt[1]~11\);

-- Location: LCCOMB_X25_Y38_N18
\cnt[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt[2]~12_combout\ = ((\u_d~q\ $ (cnt(2) $ (!\cnt[1]~11\)))) # (GND)
-- \cnt[2]~13\ = CARRY((\u_d~q\ & ((cnt(2)) # (!\cnt[1]~11\))) # (!\u_d~q\ & (cnt(2) & !\cnt[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_d~q\,
	datab => cnt(2),
	datad => VCC,
	cin => \cnt[1]~11\,
	combout => \cnt[2]~12_combout\,
	cout => \cnt[2]~13\);

-- Location: FF_X25_Y38_N19
\cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(2));

-- Location: LCCOMB_X25_Y38_N20
\cnt[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt[3]~14_combout\ = (\u_d~q\ & ((cnt(3) & (\cnt[2]~13\ & VCC)) # (!cnt(3) & (!\cnt[2]~13\)))) # (!\u_d~q\ & ((cnt(3) & (!\cnt[2]~13\)) # (!cnt(3) & ((\cnt[2]~13\) # (GND)))))
-- \cnt[3]~15\ = CARRY((\u_d~q\ & (!cnt(3) & !\cnt[2]~13\)) # (!\u_d~q\ & ((!\cnt[2]~13\) # (!cnt(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_d~q\,
	datab => cnt(3),
	datad => VCC,
	cin => \cnt[2]~13\,
	combout => \cnt[3]~14_combout\,
	cout => \cnt[3]~15\);

-- Location: FF_X25_Y38_N21
\cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(3));

-- Location: LCCOMB_X25_Y38_N22
\cnt[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt[4]~16_combout\ = ((cnt(4) $ (\u_d~q\ $ (!\cnt[3]~15\)))) # (GND)
-- \cnt[4]~17\ = CARRY((cnt(4) & ((\u_d~q\) # (!\cnt[3]~15\))) # (!cnt(4) & (\u_d~q\ & !\cnt[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(4),
	datab => \u_d~q\,
	datad => VCC,
	cin => \cnt[3]~15\,
	combout => \cnt[4]~16_combout\,
	cout => \cnt[4]~17\);

-- Location: FF_X25_Y38_N23
\cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(4));

-- Location: LCCOMB_X25_Y38_N24
\cnt[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt[5]~18_combout\ = (\u_d~q\ & ((cnt(5) & (\cnt[4]~17\ & VCC)) # (!cnt(5) & (!\cnt[4]~17\)))) # (!\u_d~q\ & ((cnt(5) & (!\cnt[4]~17\)) # (!cnt(5) & ((\cnt[4]~17\) # (GND)))))
-- \cnt[5]~19\ = CARRY((\u_d~q\ & (!cnt(5) & !\cnt[4]~17\)) # (!\u_d~q\ & ((!\cnt[4]~17\) # (!cnt(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_d~q\,
	datab => cnt(5),
	datad => VCC,
	cin => \cnt[4]~17\,
	combout => \cnt[5]~18_combout\,
	cout => \cnt[5]~19\);

-- Location: FF_X25_Y38_N25
\cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(5));

-- Location: LCCOMB_X25_Y38_N26
\cnt[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt[6]~20_combout\ = ((cnt(6) $ (\u_d~q\ $ (!\cnt[5]~19\)))) # (GND)
-- \cnt[6]~21\ = CARRY((cnt(6) & ((\u_d~q\) # (!\cnt[5]~19\))) # (!cnt(6) & (\u_d~q\ & !\cnt[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(6),
	datab => \u_d~q\,
	datad => VCC,
	cin => \cnt[5]~19\,
	combout => \cnt[6]~20_combout\,
	cout => \cnt[6]~21\);

-- Location: FF_X25_Y38_N27
\cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(6));

-- Location: LCCOMB_X25_Y38_N6
\u_d~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_d~2_combout\ = (cnt(1) & ((\u_d~q\) # ((cnt(6) & cnt(0))))) # (!cnt(1) & (\u_d~q\ & ((cnt(6)) # (cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(1),
	datab => \u_d~q\,
	datac => cnt(6),
	datad => cnt(0),
	combout => \u_d~2_combout\);

-- Location: LCCOMB_X25_Y38_N8
\u_d~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_d~1_combout\ = (cnt(2) & ((\u_d~q\) # ((cnt(3) & cnt(5))))) # (!cnt(2) & (\u_d~q\ & ((cnt(3)) # (cnt(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(2),
	datab => \u_d~q\,
	datac => cnt(3),
	datad => cnt(5),
	combout => \u_d~1_combout\);

-- Location: LCCOMB_X25_Y38_N28
\cnt[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt[7]~22_combout\ = \u_d~q\ $ (\cnt[6]~21\ $ (cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_d~q\,
	datad => cnt(7),
	cin => \cnt[6]~21\,
	combout => \cnt[7]~22_combout\);

-- Location: FF_X25_Y38_N29
\cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[7]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(7));

-- Location: LCCOMB_X25_Y38_N10
\u_d~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_d~0_combout\ = (cnt(2) & (cnt(4) & cnt(7))) # (!cnt(2) & ((cnt(4)) # (cnt(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(2),
	datac => cnt(4),
	datad => cnt(7),
	combout => \u_d~0_combout\);

-- Location: LCCOMB_X25_Y38_N12
\u_d~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_d~3_combout\ = (\u_d~2_combout\ & ((\u_d~q\) # ((\u_d~1_combout\ & \u_d~0_combout\)))) # (!\u_d~2_combout\ & (\u_d~q\ & ((\u_d~1_combout\) # (\u_d~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_d~2_combout\,
	datab => \u_d~1_combout\,
	datac => \u_d~q\,
	datad => \u_d~0_combout\,
	combout => \u_d~3_combout\);

-- Location: FF_X25_Y38_N13
u_d : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_d~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_d~q\);

-- Location: FF_X25_Y38_N17
\cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(1));

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

ww_dout(0) <= \dout[0]~output_o\;

ww_dout(1) <= \dout[1]~output_o\;

ww_dout(2) <= \dout[2]~output_o\;

ww_dout(3) <= \dout[3]~output_o\;

ww_dout(4) <= \dout[4]~output_o\;

ww_dout(5) <= \dout[5]~output_o\;

ww_dout(6) <= \dout[6]~output_o\;

ww_dout(7) <= \dout[7]~output_o\;
END structure;


