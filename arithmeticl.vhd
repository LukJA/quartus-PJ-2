library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.my_pkg.all;

entity main_ALU is 
	port (	
		Q1, Q2	: in std_logic_vector(7 downto 0);
		OP	: in std_logic_vector(2 downto 0);
		output	: out std_logic_vector(7 downto 0);
		overflow, zero	: out std_logic
		);
		
end main_ALU;

architecture behavioral of main_ALU is

	signal fullnine	: std_logic_vector(8 downto 0);

begin

	process(all) begin
	
		fullnine <= "000000000";
		overflow <= '0';
	
		case OP is
			when "000" =>
				-- Follow through operation (access to data bus from reg file)(default)
				output <= Q1;
				
			when "001" =>
				-- ADD operation
				fullnine <= std_logic_vector(unsigned('0' & Q1) + unsigned('0' & Q2));
				output <= fullnine(7 downto 0);
				overflow <= fullnine(8);
				
			when "010" => 
				-- SUB operation
				output <= std_logic_vector(unsigned(Q1) - unsigned(Q2));
				
			when "011" => 
				-- AND operation
				output <= Q1 and Q2;
				
			when "100" => 
				-- NOT operation
				output <= not Q1;
				
			when "101" => 
				-- XOR operation
				output <= Q1 xor Q2;
				
			when "110" => 
				-- OR operation
				output <= Q1 or Q2;
				
			when "111" => 
				-- INC operation
				output <= std_logic_vector(unsigned(Q1) + 1);
				
			when others => 
				-- Follow through operation (access to data bus from reg file)(default)
				output <= Q1;
		end case;
		
		if output = "00000000" then 
			zero <= '1';
		else 
			zero <= '0';
		end if;
		
	end process;
end behavioral;