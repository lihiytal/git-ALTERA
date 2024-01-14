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
-- Generated on "01/14/2024 13:46:16"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          DAC08
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DAC08_vhd_vec_tst IS
END DAC08_vhd_vec_tst;
ARCHITECTURE DAC08_arch OF DAC08_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL dacin : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL piz : STD_LOGIC;
COMPONENT DAC08
	PORT (
	clk : IN STD_LOGIC;
	dacin : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	piz : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : DAC08
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	dacin => dacin,
	piz => piz
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 625 ps;
	clk <= '1';
	WAIT FOR 625 ps;
	IF (NOW >= 20000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
END DAC08_arch;
