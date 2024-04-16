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
-- Generated on "04/05/2024 16:59:31"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          oc
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY oc_vhd_vec_tst IS
END oc_vhd_vec_tst;
ARCHITECTURE oc_arch OF oc_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL b : STD_LOGIC;
SIGNAL b_b : STD_LOGIC;
SIGNAL b_r : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL oct : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL octava : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT oc
	PORT (
	b : BUFFER STD_LOGIC;
	b_b : IN STD_LOGIC;
	b_r : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	oct : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	octava : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : oc
	PORT MAP (
-- list connections between master ports and signals
	b => b,
	b_b => b_b,
	b_r => b_r,
	clk => clk,
	oct => oct,
	octava => octava
	);

-- b_b
t_prcs_b_b: PROCESS
BEGIN
	b_b <= '0';
	WAIT FOR 280000 ps;
	b_b <= '1';
	WAIT FOR 450000 ps;
	b_b <= '0';
WAIT;
END PROCESS t_prcs_b_b;

-- b_r
t_prcs_b_r: PROCESS
BEGIN
	b_r <= '0';
	WAIT FOR 80000 ps;
	b_r <= '1';
	WAIT FOR 110000 ps;
	b_r <= '0';
WAIT;
END PROCESS t_prcs_b_r;

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
END oc_arch;
