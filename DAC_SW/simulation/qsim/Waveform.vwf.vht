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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/05/2024 16:48:45"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          DAC_SW
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DAC_SW_vhd_vec_tst IS
END DAC_SW_vhd_vec_tst;
ARCHITECTURE DAC_SW_arch OF DAC_SW_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL b : STD_LOGIC;
SIGNAL b_blue : STD_LOGIC;
SIGNAL b_red : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL dac : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL highB : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL highC : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL lowB : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL lowC : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL sw : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT DAC_SW
	PORT (
	b : OUT STD_LOGIC;
	b_blue : IN STD_LOGIC;
	b_red : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	dac : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	highB : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	highC : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	lowB : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	lowC : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	sw : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : DAC_SW
	PORT MAP (
-- list connections between master ports and signals
	b => b,
	b_blue => b_blue,
	b_red => b_red,
	clk => clk,
	dac => dac,
	highB => highB,
	highC => highC,
	lowB => lowB,
	lowC => lowC,
	sw => sw
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
END DAC_SW_arch;
