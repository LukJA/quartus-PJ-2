library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.my_pkg.all;

entity decoder is
    port(
        input   : in std_logic_vector(3 downto 0);
        outputs : out std_logic_vector(15 downto 0)
        );
end entity decoder;

architecture rtl of decoder is

begin
	process(input) begin
		case input is 
		when "0000" => outputs <= "0000000000000001";
		when "0001" => outputs <= "0000000000000010";
		when "0010" => outputs <= "0000000000000100";
		when "0011" => outputs <= "0000000000001000";
		when "0100" => outputs <= "0000000000010000";
		when "0101" => outputs <= "0000000000100000";
		when "0110" => outputs <= "0000000001000000";
		when "0111" => outputs <= "0000000010000000";
		when "1000" => outputs <= "0000000100000000";
		when "1001" => outputs <= "0000001000000000";
		when "1010" => outputs <= "0000010000000000";
		when "1011" => outputs <= "0000100000000000";
		when "1100" => outputs <= "0001000000000000";
		when "1101" => outputs <= "0010000000000000";
		when "1110" => outputs <= "0100000000000000";
		when "1111" => outputs <= "1000000000000000"; 
		when others => outputs <= (others => '0');
		end case;
	end process;
end rtl;



library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.my_pkg.all;

entity demux is
    port(
		  input 	: in std_logic_vector(7 downto 0);
        addr   : in std_logic_vector(3 downto 0);
        output : out sixteenbyeight
        );
end entity demux;

architecture rtl of demux is
	
begin

	output(0) <= input when addr = "0000" else (others => '0');
	output(1) <= input when addr = "0001" else (others => '0');
	output(2) <= input when addr = "0010" else (others => '0');
	output(3) <= input when addr = "0011" else (others => '0');
	output(4) <= input when addr = "0100" else (others => '0');
	output(5) <= input when addr = "0101" else (others => '0');
	output(6) <= input when addr = "0110" else (others => '0');
	output(7) <= input when addr = "0111" else (others => '0');
	output(8) <= input when addr = "1000" else (others => '0');
	output(9) <= input when addr = "1001" else (others => '0');
	output(10) <= input when addr = "1010" else (others => '0');
	output(11) <= input when addr = "1011" else (others => '0');
	output(12) <= input when addr = "1100" else (others => '0');
	output(13) <= input when addr = "1101" else (others => '0');
	output(14) <= input when addr = "1110" else (others => '0');
	output(15) <= input when addr = "1111" else (others => '0');
	
	
end rtl;



library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.my_pkg.all;

entity mux is
    port(
		  input 	: in sixteenbyeight;
        addr   : in std_logic_vector(3 downto 0);
        outputs : out std_logic_vector(7 downto 0)
        );
end entity mux;

architecture rtl of mux is
	
begin
	process(addr) begin
		case addr is 
		when "0000" => outputs <= input(0);
		when "0001" => outputs <= input(1);
		when "0010" => outputs <= input(2);
		when "0011" => outputs <= input(3);
		when "0100" => outputs <= input(4);
		when "0101" => outputs <= input(5);
		when "0110" => outputs <= input(6);
		when "0111" => outputs <= input(7);
		when "1000" => outputs <= input(8);
		when "1001" => outputs <= input(9);
		when "1010" => outputs <= input(10);
		when "1011" => outputs <= input(11);
		when "1100" => outputs <= input(12);
		when "1101" => outputs <= input(13);
		when "1110" => outputs <= input(14);
		when "1111" => outputs <= input(15);
		when others => outputs <= (others => 'Z');
		end case;
	end process;
	
end rtl;