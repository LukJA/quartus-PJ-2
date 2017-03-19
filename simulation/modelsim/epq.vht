-- Copyright (C) 2016  Intel Corporation. All rights reserved.
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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "01/15/2017 22:41:43"
                                                            
-- Vhdl Test Bench template for design  :  epq
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;   
use work.all;                             

ENTITY alu_vhd_tst IS
END alu_vhd_tst;

ARCHITECTURE alu_arch OF alu_vhd_tst IS
-- constants                                                 
-- signals

	signal pc_debug	:  std_logic_vector(7 downto 0);
	signal data_debug	:  std_logic_vector(7 downto 0);
	signal pcclk_debug, dclk_debug, iclk_debug :  std_logic;
	signal Jrel_D, Jabs_D, AS_D	:  std_logic;
	signal clk	:  std_logic;

BEGIN
	epqb: epq port map (pc_debug, data_debug,pcclk_debug,dclk_debug,iclk_debug,Jrel_D,Jabs_D,AS_D,clk);
	
	process begin
		alias Q1 is
			<<	signal epqb.ALU.Q1 : std_logic_vector(7 downto 0) >>;
		alias Q2 is
			<<	signal epqb.ALU.Q2 : std_logic_vector(7 downto 0) >>;
		alias OP is
			<< signal epqb.ALU.OP : std_logic_vector(2 downto 0) >>;
		alias output is
			<<	signal epqb.ALU.output :  std_logic_vector(7 downto 0) >>;
		alias overflow is
			<< signal epqb.ALU.overflow :  std_logic >>;
		alias zero is 
			<< signal epqb.ALU.zero : std_logic >>;
			wait;
	end process;

	init : PROCESS begin  
	
		Q1 <= "11001010";
		Q2 <= "00011010";
		
	
		OP <= "000"; -- follow through
		assert ( output = "11001010") report "failure1" severity error;
		
		OP <= "001"; -- add through
		assert ( output = "11100100") report "failure2" severity error;
		
		OP <= "010"; -- sub through
		assert ( output = "10110000") report "failure3" severity error;
		
		OP <= "011"; -- and through
		assert ( output = "00001010") report "failure4" severity error;
		
		OP <= "100"; -- not through
		assert ( output = "00110101") report "failure5" severity error;
		
		OP <= "101"; -- xor through
		assert ( output = "11010000") report "failure6" severity error;
		
		OP <= "110"; -- or through
		assert ( output = "11011010") report "failure7" severity error;
		
		OP <= "111"; -- inc through
		assert ( output = "11001011") report "failure8" severity error;
	
		
		wait;
                                                     
	END PROCESS init;
	
	
END alu_arch;
