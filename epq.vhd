-- top level entity epq

library IEEE;
use IEEE.std_logic_1164.all;
use work.my_pkg.all;

entity epq is
	port (	
		clk	: in std_logic;
		);
end epq;

architecture impl of epq is

	-- global importance
	signal data_bus, curr_addr:	std_logic_vector(7 downto 0);
	
	-- clock generation
	signal PCclk, Dclk, Iclk:	std_logic;
	signal Iclr:	std_logic;
	
	-- Program counter connections
	signal Jrel, Jabs, addsub, rclk1, rclk2, overflow, zero :	std_logic;
	signal current_instruction: std_logic_vector(15 downto 0);
	
	-- ALU connections
	signal rinput1, rinput2, routput1, routput2, ALUoutput: std_logic_vector(7 downto 0);
	signal raddr1, raddr2: std_logic_vector(3 downto 0);
	signal ALUop: std_logic_vector(2 downto 0);

begin

	-- clock generation
	clock_gen: entity work.clock_generator port map (clk, PCclk, Dclk, Iclk, Iclr);
	
	-- program counter block
	pc_gen: entity work.program_counter port map (PCclk, Jrel, Jabs, addsub, data_bus, curr_addr);
	
	-- program memory block
	program_memory: entity work.rom1p_altera port map (curr_addr, Dclk, current_instruction);
	
	-- register file block
	registers: entity work.register_file port map (rclk1, rclk2, raddr1, raddr2, rinput1, rinput2, routput1, routput2);
	
	-- arithemtic logic block
	ALU: entity work.main_ALU port map (routput1, routput2, ALUop, ALUoutput, overflow, zero);
	
	-- instruction decoding
	
	--------------------------------
	
	
	
end impl;
	