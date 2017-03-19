library IEEE;
use IEEE.std_logic_1164.all;
use work.my_pkg.all;

entity register_file is
	port (	
		clk_P1, clk_P2	: in std_logic := '0';
		addr_P1, addr_P2	: in std_logic_vector(3 downto 0) := "0000";
		stream_in_P1, stream_in_P2	: in std_logic_vector(7 downto 0);
		stream_out_P1, stream_out_P2	: out std_logic_vector(7 downto 0)
		);
end register_file;

architecture impl of register_file is

	
	signal clk_onehot_P1, clk_onehot_P2, clO: std_logic_vector(15 downto 0);
	signal DP1, DP2, DPO, Q: sixteenbyeight;
	
	
begin 
	-- explicitly generate a register for each address
	r0: entity work.vDFF generic map (8) port map (clO(0), DPO(0), Q(0));
	r1: entity work.vDFF generic map (8) port map (clO(1), DPO(1), Q(1));
	r2: entity work.vDFF generic map (8) port map (clO(2), DPO(2), Q(2));
	r3: entity work.vDFF generic map (8) port map (clO(3), DPO(3), Q(3));
	r4: entity work.vDFF generic map (8) port map (clO(4), DPO(4), Q(4));
	r5: entity work.vDFF generic map (8) port map (clO(5), DPO(5), Q(5));
	r6: entity work.vDFF generic map (8) port map (clO(6), DPO(6), Q(6));
	r7: entity work.vDFF generic map (8) port map (clO(7), DPO(7), Q(7));
	r8: entity work.vDFF generic map (8) port map (clO(8), DPO(8), Q(8));
	r9: entity work.vDFF generic map (8) port map (clO(9), DPO(9), Q(9));
	rA: entity work.vDFF generic map (8) port map (clO(10), DPO(10), Q(10));
	rB: entity work.vDFF generic map (8) port map (clO(11), DPO(11), Q(11));
	rC: entity work.vDFF generic map (8) port map (clO(12), DPO(12), Q(12));
	rD: entity work.vDFF generic map (8) port map (clO(13), DPO(13), Q(13));
	rE: entity work.vDFF generic map (8) port map (clO(14), DPO(14), Q(14));
	rF: entity work.vDFF generic map (8) port map (clO(15), DPO(15), Q(15));
	
	-- port one address to one hot clock decoding
	port1decoder: entity work.decoder port map (addr_P1, clk_onehot_P1);
	
	-- port one stream in demultiplexing
	port1demux: entity work.demux port map (stream_in_P1, addr_P1, DP1);

	-- port one stream out multiplexing
	port1mux: entity work.mux port map (Q, addr_P1, stream_out_p1);
	
	-----------------------------
	
	-- port two address to one hot clock decoding
	port2decoder: entity work.decoder port map (addr_P2, clk_onehot_P2);
	
	-- port two stream in demultiplexing
	port2demux: entity work.demux port map (stream_in_P2, addr_P2, DP2);

	-- port two stream out multiplexing
	port2mux: entity work.mux port map (Q, addr_P2, stream_out_p2);
	
	-----------------------------
	
	-- Or entities to clean up rtl viewer, used when combine port d's
	or1: entity work.array_or port map (DP1, DP2, DPO);
	
	-- clock and or entites to clean up rtl viewer, used to generate correct clock signals
	clo1: entity work.clock_combine port map (clk_P1, clk_P2, clk_onehot_P1, clk_onehot_P2, clO);
	
end impl;



library IEEE;
use IEEE.std_logic_1164.all;
use work.my_pkg.all;

entity array_or is
	port (	
		DP1, DP2: in sixteenbyeight;
		Q	: out sixteenbyeight
		);
end array_or;

architecture impl of array_or is

begin

	process(all) begin
		for i in 0 to 15 loop
			Q(i) <= DP1(i) or DP2(i);
		end loop;
	end process;

end impl;



library IEEE;
use IEEE.std_logic_1164.all;
use work.my_pkg.all;

entity clock_combine is
	port (	
		clk1, clk2	: in std_logic;
		clk_d_1, clk_d_2	: in std_logic_vector(15 downto 0);
		clocksout	: out std_logic_vector(15 downto 0)
		);
end clock_combine;

architecture impl of clock_combine is

begin

	process(all) begin
		for i in 0 to 15 loop
			clocksout(i) <= (clk1 and clk_d_1(i)) or (clk2 and clk_d_2(i));
		end loop;
	end process;

end impl;
