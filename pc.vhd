library IEEE;
use IEEE.std_logic_1164.all;
use work.my_pkg.all;

entity program_counter is
	port (
		PCclk			: in std_logic;
		Jrel, Jabs, addsub	: in std_logic;
		stream_in	: in std_logic_vector(7 downto 0);
		curr_addr	: out std_logic_vector(7 downto 0)
		);
end program_counter;

architecture impl of program_counter is

	signal PC_D, PC_Q, inc_out: std_logic_vector(7 downto 0);
	signal rel_adder_out, rj_out: std_logic_vector(7 downto 0);

begin 
	-- Main PC Register
	program_counter: entity work.vDFF generic map (8) port map (PCclk, PC_D, PC_Q);
	-- Increment logic 
	increment_adder: entity work.incrementer port map (PC_Q, inc_out);
	-- PC input source 2:1 mux
	PC_D <= inc_out when ((Jrel and Jabs) = '0') else rj_out(7 downto 0);
	-- Relative Jump adder
	relative_adder: entity work.jadd_jsub port map (PC_Q, stream_in, rel_adder_out, addsub); 
	-- jump type 2:1 mux
	rj_out <= 	rel_adder_out when ((Jrel = '1') and (Jabs = '0')) else
					stream_in when ((Jrel = '0') and (Jabs = '1')) else
					(others => '-');
					
	
	curr_addr <= PC_Q;
	
end impl;




library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.my_pkg.all;

entity incrementer is
	port (
		stream_in		: in std_logic_vector(7 downto 0);
		stream_out		: out std_logic_vector(7 downto 0);
		rst		: in std_logic := '0'
		);
end incrementer;

architecture impl of incrementer is 

	signal intermed: std_logic_vector(7 downto 0);

begin 

	process(all) begin
	
		intermed <= std_logic_vector(unsigned(stream_in) + 1);
		
		if(rst = '1') then
			stream_out <= (others => '0');
		else
			stream_out <= intermed;
		end if;
		
	end process;
end impl;




library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.my_pkg.all;

entity jadd_jsub is
	port (
		stream_a		: in std_logic_vector(7 downto 0);
		stream_b		: in std_logic_vector(7 downto 0);
		stream_out	: out std_logic_vector(7 downto 0);
		add_sub		: in std_logic
		);
end jadd_jsub;

architecture impl of jadd_jsub is 

begin 

	process(all) begin
	
		if (add_sub = '1') then
			stream_out <= std_logic_vector(unsigned(stream_a) + unsigned(stream_b));
		else
			stream_out <= std_logic_vector(unsigned(stream_a) - unsigned(stream_b));
		end if;
		
	end process;
end impl;
	
	
	
		
		