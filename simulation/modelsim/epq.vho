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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "01/18/2017 22:03:37"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	epq IS
    PORT (
	pc_debug : OUT std_logic_vector(7 DOWNTO 0);
	data_debug : IN std_logic_vector(7 DOWNTO 0);
	pcclk_debug : OUT std_logic;
	dclk_debug : OUT std_logic;
	iclk_debug : OUT std_logic;
	Jrel_D : IN std_logic;
	Jabs_D : IN std_logic;
	AS_D : IN std_logic;
	clk : IN std_logic
	);
END epq;

-- Design Ports Information
-- pc_debug[0]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_debug[1]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_debug[2]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_debug[3]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_debug[4]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_debug[5]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_debug[6]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_debug[7]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_debug[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_debug[1]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_debug[2]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_debug[3]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_debug[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_debug[5]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_debug[6]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_debug[7]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcclk_debug	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dclk_debug	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iclk_debug	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AS_D	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Jrel_D	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Jabs_D	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF epq IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pc_debug : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_data_debug : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pcclk_debug : std_logic;
SIGNAL ww_dclk_debug : std_logic;
SIGNAL ww_iclk_debug : std_logic;
SIGNAL ww_Jrel_D : std_logic;
SIGNAL ww_Jabs_D : std_logic;
SIGNAL ww_AS_D : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL \program_memory|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \program_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \data_debug[0]~input_o\ : std_logic;
SIGNAL \data_debug[1]~input_o\ : std_logic;
SIGNAL \data_debug[2]~input_o\ : std_logic;
SIGNAL \data_debug[3]~input_o\ : std_logic;
SIGNAL \data_debug[4]~input_o\ : std_logic;
SIGNAL \data_debug[5]~input_o\ : std_logic;
SIGNAL \data_debug[6]~input_o\ : std_logic;
SIGNAL \data_debug[7]~input_o\ : std_logic;
SIGNAL \AS_D~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \clock_gen|Mux1~0_combout\ : std_logic;
SIGNAL \clock_gen|Mux0~0_combout\ : std_logic;
SIGNAL \clock_gen|state_register|Q[2]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_gen|Mux2~0_combout\ : std_logic;
SIGNAL \clock_gen|PCclk~combout\ : std_logic;
SIGNAL \pc_gen|increment_adder|Add0~1_sumout\ : std_logic;
SIGNAL \pc_gen|program_counter|Q[0]~feeder_combout\ : std_logic;
SIGNAL \clock_gen|Dclk~combout\ : std_logic;
SIGNAL \pc_gen|increment_adder|Add0~2\ : std_logic;
SIGNAL \pc_gen|increment_adder|Add0~5_sumout\ : std_logic;
SIGNAL \pc_gen|program_counter|Q[1]~feeder_combout\ : std_logic;
SIGNAL \pc_gen|increment_adder|Add0~6\ : std_logic;
SIGNAL \pc_gen|increment_adder|Add0~9_sumout\ : std_logic;
SIGNAL \pc_gen|program_counter|Q[2]~feeder_combout\ : std_logic;
SIGNAL \pc_gen|increment_adder|Add0~10\ : std_logic;
SIGNAL \pc_gen|increment_adder|Add0~13_sumout\ : std_logic;
SIGNAL \pc_gen|program_counter|Q[3]~feeder_combout\ : std_logic;
SIGNAL \pc_gen|increment_adder|Add0~14\ : std_logic;
SIGNAL \pc_gen|increment_adder|Add0~17_sumout\ : std_logic;
SIGNAL \pc_gen|program_counter|Q[4]~feeder_combout\ : std_logic;
SIGNAL \pc_gen|increment_adder|Add0~18\ : std_logic;
SIGNAL \pc_gen|increment_adder|Add0~21_sumout\ : std_logic;
SIGNAL \pc_gen|program_counter|Q[5]~feeder_combout\ : std_logic;
SIGNAL \pc_gen|increment_adder|Add0~22\ : std_logic;
SIGNAL \pc_gen|increment_adder|Add0~25_sumout\ : std_logic;
SIGNAL \pc_gen|program_counter|Q[6]~feeder_combout\ : std_logic;
SIGNAL \pc_gen|increment_adder|Add0~26\ : std_logic;
SIGNAL \pc_gen|increment_adder|Add0~29_sumout\ : std_logic;
SIGNAL \pc_gen|program_counter|Q[7]~feeder_combout\ : std_logic;
SIGNAL \Jabs_D~input_o\ : std_logic;
SIGNAL \Jrel_D~input_o\ : std_logic;
SIGNAL \pc_gen|PC_D~0_combout\ : std_logic;
SIGNAL \clock_gen|Iclk~combout\ : std_logic;
SIGNAL \pc_gen|program_counter|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \program_memory|altsyncram_component|auto_generated|q_a\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \clock_gen|state_register|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \clock_gen|state_register|ALT_INV_Q[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Jabs_D~input_o\ : std_logic;
SIGNAL \ALT_INV_Jrel_D~input_o\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;
SIGNAL \clock_gen|state_register|ALT_INV_Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \pc_gen|increment_adder|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \pc_gen|increment_adder|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \pc_gen|increment_adder|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \pc_gen|increment_adder|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \pc_gen|increment_adder|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \pc_gen|increment_adder|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \pc_gen|increment_adder|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \pc_gen|increment_adder|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \pc_gen|program_counter|ALT_INV_Q\ : std_logic_vector(7 DOWNTO 0);

BEGIN

pc_debug <= ww_pc_debug;
ww_data_debug <= data_debug;
pcclk_debug <= ww_pcclk_debug;
dclk_debug <= ww_dclk_debug;
iclk_debug <= ww_iclk_debug;
ww_Jrel_D <= Jrel_D;
ww_Jabs_D <= Jabs_D;
ww_AS_D <= AS_D;
ww_clk <= clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\program_memory|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\pc_gen|program_counter|Q\(7) & \pc_gen|program_counter|Q\(6) & \pc_gen|program_counter|Q\(5) & \pc_gen|program_counter|Q\(4) & \pc_gen|program_counter|Q\(3) & 
\pc_gen|program_counter|Q\(2) & \pc_gen|program_counter|Q\(1) & \pc_gen|program_counter|Q\(0));

\program_memory|altsyncram_component|auto_generated|q_a\(0) <= \program_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\program_memory|altsyncram_component|auto_generated|q_a\(1) <= \program_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\program_memory|altsyncram_component|auto_generated|q_a\(2) <= \program_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\program_memory|altsyncram_component|auto_generated|q_a\(3) <= \program_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\program_memory|altsyncram_component|auto_generated|q_a\(4) <= \program_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\program_memory|altsyncram_component|auto_generated|q_a\(5) <= \program_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\program_memory|altsyncram_component|auto_generated|q_a\(6) <= \program_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\program_memory|altsyncram_component|auto_generated|q_a\(7) <= \program_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\clock_gen|state_register|ALT_INV_Q[2]~DUPLICATE_q\ <= NOT \clock_gen|state_register|Q[2]~DUPLICATE_q\;
\ALT_INV_Jabs_D~input_o\ <= NOT \Jabs_D~input_o\;
\ALT_INV_Jrel_D~input_o\ <= NOT \Jrel_D~input_o\;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;
\clock_gen|state_register|ALT_INV_Q\(1) <= NOT \clock_gen|state_register|Q\(1);
\clock_gen|state_register|ALT_INV_Q\(0) <= NOT \clock_gen|state_register|Q\(0);
\clock_gen|state_register|ALT_INV_Q\(2) <= NOT \clock_gen|state_register|Q\(2);
\pc_gen|increment_adder|ALT_INV_Add0~29_sumout\ <= NOT \pc_gen|increment_adder|Add0~29_sumout\;
\pc_gen|increment_adder|ALT_INV_Add0~25_sumout\ <= NOT \pc_gen|increment_adder|Add0~25_sumout\;
\pc_gen|increment_adder|ALT_INV_Add0~21_sumout\ <= NOT \pc_gen|increment_adder|Add0~21_sumout\;
\pc_gen|increment_adder|ALT_INV_Add0~17_sumout\ <= NOT \pc_gen|increment_adder|Add0~17_sumout\;
\pc_gen|increment_adder|ALT_INV_Add0~13_sumout\ <= NOT \pc_gen|increment_adder|Add0~13_sumout\;
\pc_gen|increment_adder|ALT_INV_Add0~9_sumout\ <= NOT \pc_gen|increment_adder|Add0~9_sumout\;
\pc_gen|increment_adder|ALT_INV_Add0~5_sumout\ <= NOT \pc_gen|increment_adder|Add0~5_sumout\;
\pc_gen|increment_adder|ALT_INV_Add0~1_sumout\ <= NOT \pc_gen|increment_adder|Add0~1_sumout\;
\pc_gen|program_counter|ALT_INV_Q\(7) <= NOT \pc_gen|program_counter|Q\(7);
\pc_gen|program_counter|ALT_INV_Q\(6) <= NOT \pc_gen|program_counter|Q\(6);
\pc_gen|program_counter|ALT_INV_Q\(5) <= NOT \pc_gen|program_counter|Q\(5);
\pc_gen|program_counter|ALT_INV_Q\(4) <= NOT \pc_gen|program_counter|Q\(4);
\pc_gen|program_counter|ALT_INV_Q\(3) <= NOT \pc_gen|program_counter|Q\(3);
\pc_gen|program_counter|ALT_INV_Q\(2) <= NOT \pc_gen|program_counter|Q\(2);
\pc_gen|program_counter|ALT_INV_Q\(1) <= NOT \pc_gen|program_counter|Q\(1);
\pc_gen|program_counter|ALT_INV_Q\(0) <= NOT \pc_gen|program_counter|Q\(0);

-- Location: IOOBUF_X54_Y17_N22
\pc_debug[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_gen|program_counter|Q\(0),
	devoe => ww_devoe,
	o => ww_pc_debug(0));

-- Location: IOOBUF_X54_Y18_N96
\pc_debug[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_gen|program_counter|Q\(1),
	devoe => ww_devoe,
	o => ww_pc_debug(1));

-- Location: IOOBUF_X54_Y17_N39
\pc_debug[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_gen|program_counter|Q\(2),
	devoe => ww_devoe,
	o => ww_pc_debug(2));

-- Location: IOOBUF_X54_Y16_N22
\pc_debug[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_gen|program_counter|Q\(3),
	devoe => ww_devoe,
	o => ww_pc_debug(3));

-- Location: IOOBUF_X54_Y16_N39
\pc_debug[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_gen|program_counter|Q\(4),
	devoe => ww_devoe,
	o => ww_pc_debug(4));

-- Location: IOOBUF_X54_Y16_N5
\pc_debug[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_gen|program_counter|Q\(5),
	devoe => ww_devoe,
	o => ww_pc_debug(5));

-- Location: IOOBUF_X54_Y17_N5
\pc_debug[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_gen|program_counter|Q\(6),
	devoe => ww_devoe,
	o => ww_pc_debug(6));

-- Location: IOOBUF_X54_Y16_N56
\pc_debug[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_gen|program_counter|Q\(7),
	devoe => ww_devoe,
	o => ww_pc_debug(7));

-- Location: IOOBUF_X54_Y15_N39
\pcclk_debug~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clock_gen|PCclk~combout\,
	devoe => ww_devoe,
	o => ww_pcclk_debug);

-- Location: IOOBUF_X54_Y17_N56
\dclk_debug~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clock_gen|Dclk~combout\,
	devoe => ww_devoe,
	o => ww_dclk_debug);

-- Location: IOOBUF_X54_Y19_N5
\iclk_debug~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clock_gen|Iclk~combout\,
	devoe => ww_devoe,
	o => ww_iclk_debug);

-- Location: IOIBUF_X54_Y18_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: FF_X49_Y17_N22
\clock_gen|state_register|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_gen|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_gen|state_register|Q\(2));

-- Location: MLABCELL_X49_Y17_N51
\clock_gen|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_gen|Mux1~0_combout\ = ( !\clock_gen|state_register|Q\(1) & ( !\clock_gen|state_register|Q\(2) & ( \clock_gen|state_register|Q\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clock_gen|state_register|ALT_INV_Q\(0),
	datae => \clock_gen|state_register|ALT_INV_Q\(1),
	dataf => \clock_gen|state_register|ALT_INV_Q\(2),
	combout => \clock_gen|Mux1~0_combout\);

-- Location: FF_X49_Y17_N53
\clock_gen|state_register|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_gen|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_gen|state_register|Q\(1));

-- Location: MLABCELL_X49_Y17_N21
\clock_gen|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_gen|Mux0~0_combout\ = ( !\clock_gen|state_register|Q\(0) & ( (\clock_gen|state_register|Q\(1) & !\clock_gen|state_register|Q\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_gen|state_register|ALT_INV_Q\(1),
	datad => \clock_gen|state_register|ALT_INV_Q\(2),
	dataf => \clock_gen|state_register|ALT_INV_Q\(0),
	combout => \clock_gen|Mux0~0_combout\);

-- Location: FF_X49_Y17_N23
\clock_gen|state_register|Q[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_gen|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_gen|state_register|Q[2]~DUPLICATE_q\);

-- Location: MLABCELL_X49_Y17_N42
\clock_gen|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_gen|Mux2~0_combout\ = ( \clock_gen|state_register|Q\(0) & ( \clock_gen|state_register|Q\(1) ) ) # ( !\clock_gen|state_register|Q\(0) & ( \clock_gen|state_register|Q\(1) & ( \clock_gen|state_register|Q[2]~DUPLICATE_q\ ) ) ) # ( 
-- \clock_gen|state_register|Q\(0) & ( !\clock_gen|state_register|Q\(1) & ( \clock_gen|state_register|Q[2]~DUPLICATE_q\ ) ) ) # ( !\clock_gen|state_register|Q\(0) & ( !\clock_gen|state_register|Q\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000011110000111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_gen|state_register|ALT_INV_Q[2]~DUPLICATE_q\,
	datae => \clock_gen|state_register|ALT_INV_Q\(0),
	dataf => \clock_gen|state_register|ALT_INV_Q\(1),
	combout => \clock_gen|Mux2~0_combout\);

-- Location: FF_X49_Y17_N44
\clock_gen|state_register|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_gen|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_gen|state_register|Q\(0));

-- Location: LABCELL_X50_Y17_N9
\clock_gen|PCclk\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_gen|PCclk~combout\ = LCELL(( \clk~input_o\ & ( \clock_gen|state_register|Q\(0) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_gen|state_register|ALT_INV_Q\(0),
	dataf => \ALT_INV_clk~input_o\,
	combout => \clock_gen|PCclk~combout\);

-- Location: LABCELL_X50_Y17_N30
\pc_gen|increment_adder|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_gen|increment_adder|Add0~1_sumout\ = SUM(( \pc_gen|program_counter|Q\(0) ) + ( VCC ) + ( !VCC ))
-- \pc_gen|increment_adder|Add0~2\ = CARRY(( \pc_gen|program_counter|Q\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pc_gen|program_counter|ALT_INV_Q\(0),
	cin => GND,
	sumout => \pc_gen|increment_adder|Add0~1_sumout\,
	cout => \pc_gen|increment_adder|Add0~2\);

-- Location: LABCELL_X50_Y17_N0
\pc_gen|program_counter|Q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_gen|program_counter|Q[0]~feeder_combout\ = ( \pc_gen|increment_adder|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pc_gen|increment_adder|ALT_INV_Add0~1_sumout\,
	combout => \pc_gen|program_counter|Q[0]~feeder_combout\);

-- Location: LABCELL_X50_Y17_N21
\clock_gen|Dclk\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_gen|Dclk~combout\ = LCELL(( \clk~input_o\ & ( \clock_gen|state_register|Q\(1) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_gen|state_register|ALT_INV_Q\(1),
	dataf => \ALT_INV_clk~input_o\,
	combout => \clock_gen|Dclk~combout\);

-- Location: LABCELL_X50_Y17_N33
\pc_gen|increment_adder|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_gen|increment_adder|Add0~5_sumout\ = SUM(( \pc_gen|program_counter|Q\(1) ) + ( GND ) + ( \pc_gen|increment_adder|Add0~2\ ))
-- \pc_gen|increment_adder|Add0~6\ = CARRY(( \pc_gen|program_counter|Q\(1) ) + ( GND ) + ( \pc_gen|increment_adder|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pc_gen|program_counter|ALT_INV_Q\(1),
	cin => \pc_gen|increment_adder|Add0~2\,
	sumout => \pc_gen|increment_adder|Add0~5_sumout\,
	cout => \pc_gen|increment_adder|Add0~6\);

-- Location: LABCELL_X50_Y17_N54
\pc_gen|program_counter|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_gen|program_counter|Q[1]~feeder_combout\ = ( \pc_gen|increment_adder|Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pc_gen|increment_adder|ALT_INV_Add0~5_sumout\,
	combout => \pc_gen|program_counter|Q[1]~feeder_combout\);

-- Location: LABCELL_X50_Y17_N36
\pc_gen|increment_adder|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_gen|increment_adder|Add0~9_sumout\ = SUM(( \pc_gen|program_counter|Q\(2) ) + ( GND ) + ( \pc_gen|increment_adder|Add0~6\ ))
-- \pc_gen|increment_adder|Add0~10\ = CARRY(( \pc_gen|program_counter|Q\(2) ) + ( GND ) + ( \pc_gen|increment_adder|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pc_gen|program_counter|ALT_INV_Q\(2),
	cin => \pc_gen|increment_adder|Add0~6\,
	sumout => \pc_gen|increment_adder|Add0~9_sumout\,
	cout => \pc_gen|increment_adder|Add0~10\);

-- Location: LABCELL_X50_Y17_N24
\pc_gen|program_counter|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_gen|program_counter|Q[2]~feeder_combout\ = ( \pc_gen|increment_adder|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pc_gen|increment_adder|ALT_INV_Add0~9_sumout\,
	combout => \pc_gen|program_counter|Q[2]~feeder_combout\);

-- Location: LABCELL_X50_Y17_N39
\pc_gen|increment_adder|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_gen|increment_adder|Add0~13_sumout\ = SUM(( \pc_gen|program_counter|Q\(3) ) + ( GND ) + ( \pc_gen|increment_adder|Add0~10\ ))
-- \pc_gen|increment_adder|Add0~14\ = CARRY(( \pc_gen|program_counter|Q\(3) ) + ( GND ) + ( \pc_gen|increment_adder|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pc_gen|program_counter|ALT_INV_Q\(3),
	cin => \pc_gen|increment_adder|Add0~10\,
	sumout => \pc_gen|increment_adder|Add0~13_sumout\,
	cout => \pc_gen|increment_adder|Add0~14\);

-- Location: LABCELL_X50_Y17_N15
\pc_gen|program_counter|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_gen|program_counter|Q[3]~feeder_combout\ = ( \pc_gen|increment_adder|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pc_gen|increment_adder|ALT_INV_Add0~13_sumout\,
	combout => \pc_gen|program_counter|Q[3]~feeder_combout\);

-- Location: LABCELL_X50_Y17_N42
\pc_gen|increment_adder|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_gen|increment_adder|Add0~17_sumout\ = SUM(( \pc_gen|program_counter|Q\(4) ) + ( GND ) + ( \pc_gen|increment_adder|Add0~14\ ))
-- \pc_gen|increment_adder|Add0~18\ = CARRY(( \pc_gen|program_counter|Q\(4) ) + ( GND ) + ( \pc_gen|increment_adder|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pc_gen|program_counter|ALT_INV_Q\(4),
	cin => \pc_gen|increment_adder|Add0~14\,
	sumout => \pc_gen|increment_adder|Add0~17_sumout\,
	cout => \pc_gen|increment_adder|Add0~18\);

-- Location: LABCELL_X50_Y17_N18
\pc_gen|program_counter|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_gen|program_counter|Q[4]~feeder_combout\ = ( \pc_gen|increment_adder|Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pc_gen|increment_adder|ALT_INV_Add0~17_sumout\,
	combout => \pc_gen|program_counter|Q[4]~feeder_combout\);

-- Location: LABCELL_X50_Y17_N45
\pc_gen|increment_adder|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_gen|increment_adder|Add0~21_sumout\ = SUM(( \pc_gen|program_counter|Q\(5) ) + ( GND ) + ( \pc_gen|increment_adder|Add0~18\ ))
-- \pc_gen|increment_adder|Add0~22\ = CARRY(( \pc_gen|program_counter|Q\(5) ) + ( GND ) + ( \pc_gen|increment_adder|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pc_gen|program_counter|ALT_INV_Q\(5),
	cin => \pc_gen|increment_adder|Add0~18\,
	sumout => \pc_gen|increment_adder|Add0~21_sumout\,
	cout => \pc_gen|increment_adder|Add0~22\);

-- Location: LABCELL_X50_Y17_N6
\pc_gen|program_counter|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_gen|program_counter|Q[5]~feeder_combout\ = ( \pc_gen|increment_adder|Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pc_gen|increment_adder|ALT_INV_Add0~21_sumout\,
	combout => \pc_gen|program_counter|Q[5]~feeder_combout\);

-- Location: LABCELL_X50_Y17_N48
\pc_gen|increment_adder|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_gen|increment_adder|Add0~25_sumout\ = SUM(( \pc_gen|program_counter|Q\(6) ) + ( GND ) + ( \pc_gen|increment_adder|Add0~22\ ))
-- \pc_gen|increment_adder|Add0~26\ = CARRY(( \pc_gen|program_counter|Q\(6) ) + ( GND ) + ( \pc_gen|increment_adder|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pc_gen|program_counter|ALT_INV_Q\(6),
	cin => \pc_gen|increment_adder|Add0~22\,
	sumout => \pc_gen|increment_adder|Add0~25_sumout\,
	cout => \pc_gen|increment_adder|Add0~26\);

-- Location: LABCELL_X50_Y17_N57
\pc_gen|program_counter|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_gen|program_counter|Q[6]~feeder_combout\ = ( \pc_gen|increment_adder|Add0~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pc_gen|increment_adder|ALT_INV_Add0~25_sumout\,
	combout => \pc_gen|program_counter|Q[6]~feeder_combout\);

-- Location: LABCELL_X50_Y17_N51
\pc_gen|increment_adder|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_gen|increment_adder|Add0~29_sumout\ = SUM(( \pc_gen|program_counter|Q\(7) ) + ( GND ) + ( \pc_gen|increment_adder|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pc_gen|program_counter|ALT_INV_Q\(7),
	cin => \pc_gen|increment_adder|Add0~26\,
	sumout => \pc_gen|increment_adder|Add0~29_sumout\);

-- Location: LABCELL_X50_Y17_N3
\pc_gen|program_counter|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_gen|program_counter|Q[7]~feeder_combout\ = ( \pc_gen|increment_adder|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pc_gen|increment_adder|ALT_INV_Add0~29_sumout\,
	combout => \pc_gen|program_counter|Q[7]~feeder_combout\);

-- Location: M10K_X51_Y17_N0
\program_memory|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000C0000B0000A00009000080000700006000050000400003000020000100000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "epq.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom1p_altera:program_memory|altsyncram:altsyncram_component|altsyncram_k414:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clock_gen|Dclk~combout\,
	portaaddr => \program_memory|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \program_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: IOIBUF_X54_Y18_N44
\Jabs_D~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Jabs_D,
	o => \Jabs_D~input_o\);

-- Location: IOIBUF_X54_Y18_N78
\Jrel_D~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Jrel_D,
	o => \Jrel_D~input_o\);

-- Location: LABCELL_X53_Y18_N48
\pc_gen|PC_D~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_gen|PC_D~0_combout\ = ( \Jabs_D~input_o\ & ( \Jrel_D~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Jabs_D~input_o\,
	dataf => \ALT_INV_Jrel_D~input_o\,
	combout => \pc_gen|PC_D~0_combout\);

-- Location: FF_X50_Y17_N5
\pc_gen|program_counter|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_gen|PCclk~combout\,
	d => \pc_gen|program_counter|Q[7]~feeder_combout\,
	asdata => \program_memory|altsyncram_component|auto_generated|q_a\(7),
	sload => \pc_gen|PC_D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_gen|program_counter|Q\(7));

-- Location: FF_X50_Y17_N59
\pc_gen|program_counter|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_gen|PCclk~combout\,
	d => \pc_gen|program_counter|Q[6]~feeder_combout\,
	asdata => \program_memory|altsyncram_component|auto_generated|q_a\(6),
	sload => \pc_gen|PC_D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_gen|program_counter|Q\(6));

-- Location: FF_X50_Y17_N8
\pc_gen|program_counter|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_gen|PCclk~combout\,
	d => \pc_gen|program_counter|Q[5]~feeder_combout\,
	asdata => \program_memory|altsyncram_component|auto_generated|q_a\(5),
	sload => \pc_gen|PC_D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_gen|program_counter|Q\(5));

-- Location: FF_X50_Y17_N20
\pc_gen|program_counter|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_gen|PCclk~combout\,
	d => \pc_gen|program_counter|Q[4]~feeder_combout\,
	asdata => \program_memory|altsyncram_component|auto_generated|q_a\(4),
	sload => \pc_gen|PC_D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_gen|program_counter|Q\(4));

-- Location: FF_X50_Y17_N17
\pc_gen|program_counter|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_gen|PCclk~combout\,
	d => \pc_gen|program_counter|Q[3]~feeder_combout\,
	asdata => \program_memory|altsyncram_component|auto_generated|q_a\(3),
	sload => \pc_gen|PC_D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_gen|program_counter|Q\(3));

-- Location: FF_X50_Y17_N26
\pc_gen|program_counter|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_gen|PCclk~combout\,
	d => \pc_gen|program_counter|Q[2]~feeder_combout\,
	asdata => \program_memory|altsyncram_component|auto_generated|q_a\(2),
	sload => \pc_gen|PC_D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_gen|program_counter|Q\(2));

-- Location: FF_X50_Y17_N56
\pc_gen|program_counter|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_gen|PCclk~combout\,
	d => \pc_gen|program_counter|Q[1]~feeder_combout\,
	asdata => \program_memory|altsyncram_component|auto_generated|q_a\(1),
	sload => \pc_gen|PC_D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_gen|program_counter|Q\(1));

-- Location: FF_X50_Y17_N2
\pc_gen|program_counter|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_gen|PCclk~combout\,
	d => \pc_gen|program_counter|Q[0]~feeder_combout\,
	asdata => \program_memory|altsyncram_component|auto_generated|q_a\(0),
	sload => \pc_gen|PC_D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_gen|program_counter|Q\(0));

-- Location: MLABCELL_X49_Y17_N18
\clock_gen|Iclk\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_gen|Iclk~combout\ = (\clk~input_o\ & \clock_gen|state_register|Q[2]~DUPLICATE_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clk~input_o\,
	datac => \clock_gen|state_register|ALT_INV_Q[2]~DUPLICATE_q\,
	combout => \clock_gen|Iclk~combout\);

-- Location: IOIBUF_X32_Y45_N41
\data_debug[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_debug(0),
	o => \data_debug[0]~input_o\);

-- Location: IOIBUF_X38_Y0_N35
\data_debug[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_debug(1),
	o => \data_debug[1]~input_o\);

-- Location: IOIBUF_X0_Y21_N4
\data_debug[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_debug(2),
	o => \data_debug[2]~input_o\);

-- Location: IOIBUF_X19_Y0_N18
\data_debug[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_debug(3),
	o => \data_debug[3]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\data_debug[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_debug(4),
	o => \data_debug[4]~input_o\);

-- Location: IOIBUF_X50_Y0_N1
\data_debug[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_debug(5),
	o => \data_debug[5]~input_o\);

-- Location: IOIBUF_X10_Y0_N75
\data_debug[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_debug(6),
	o => \data_debug[6]~input_o\);

-- Location: IOIBUF_X33_Y0_N92
\data_debug[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_debug(7),
	o => \data_debug[7]~input_o\);

-- Location: IOIBUF_X19_Y0_N52
\AS_D~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AS_D,
	o => \AS_D~input_o\);

-- Location: LABCELL_X7_Y14_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


