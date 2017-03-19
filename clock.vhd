-- Clock Generation 
-- main system clock input [1]
-- PCclk, Dclk, Iclk output [1]
-- Iclr output [1]

library IEEE;
use IEEE.std_logic_1164.all;
use work.my_pkg.all;

entity clock_generator is
	port (	
		clk	: in std_logic;
		PCclk, Dclk, Iclk 	: out std_logic;
		Iclr	: out std_logic
		);
end clock_generator;

architecture behavioral of clock_generator is

	signal next_s, current_s: std_logic_vector(2 downto 0);
--	signal Iclr_dt: std_logic;

begin 
	-- explicitly generate a register for sequential reasons
	state_register: entity work.vDFF generic map (3) port map (clk, next_s, current_s);
	
	process(clk) begin 
	
		case current_s is
			when "001" => next_s <= "010";
			when "010" => next_s <= "100";
			when "100" => next_s <= "001";
			when others => next_s <= "001";
		end case;
		
--		if rising_edge(Iclr_dt) then Iclr <= '1';
--		else Iclr <= '0'; end if;
		
	end process;
	
	PCclk <= current_s(0) and clk;
	Dclk <= current_s(1) and clk;
	Iclk <= current_s(2) and clk;
--	Iclr_dt <= not PCclk;
	
end behavioral;
	