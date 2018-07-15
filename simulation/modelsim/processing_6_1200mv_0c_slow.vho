-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/06/2018 10:56:57"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	register_file IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	wr : IN std_logic;
	write_data : IN std_logic_vector(7 DOWNTO 0);
	src1_addr : IN std_logic_vector(1 DOWNTO 0);
	src2_addr : IN std_logic_vector(1 DOWNTO 0);
	dst_addr : IN std_logic_vector(1 DOWNTO 0);
	src1_out : OUT std_logic_vector(7 DOWNTO 0);
	src2_out : OUT std_logic_vector(7 DOWNTO 0)
	);
END register_file;

-- Design Ports Information
-- clk	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[1]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[2]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[3]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[4]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[5]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[6]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[7]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- src1_addr[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- src1_addr[1]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- src2_addr[0]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- src2_addr[1]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dst_addr[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dst_addr[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- src1_out[0]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- src1_out[1]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- src1_out[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- src1_out[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- src1_out[4]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- src1_out[5]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- src1_out[6]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- src1_out[7]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- src2_out[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- src2_out[1]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- src2_out[2]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- src2_out[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- src2_out[4]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- src2_out[5]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- src2_out[6]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- src2_out[7]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF register_file IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_wr : std_logic;
SIGNAL ww_write_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_src1_addr : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_src2_addr : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_dst_addr : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_src1_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_src2_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \wr~input_o\ : std_logic;
SIGNAL \write_data[0]~input_o\ : std_logic;
SIGNAL \write_data[1]~input_o\ : std_logic;
SIGNAL \write_data[2]~input_o\ : std_logic;
SIGNAL \write_data[3]~input_o\ : std_logic;
SIGNAL \write_data[4]~input_o\ : std_logic;
SIGNAL \write_data[5]~input_o\ : std_logic;
SIGNAL \write_data[6]~input_o\ : std_logic;
SIGNAL \write_data[7]~input_o\ : std_logic;
SIGNAL \src1_addr[0]~input_o\ : std_logic;
SIGNAL \src1_addr[1]~input_o\ : std_logic;
SIGNAL \src2_addr[0]~input_o\ : std_logic;
SIGNAL \src2_addr[1]~input_o\ : std_logic;
SIGNAL \dst_addr[0]~input_o\ : std_logic;
SIGNAL \dst_addr[1]~input_o\ : std_logic;
SIGNAL \src1_out[0]~output_o\ : std_logic;
SIGNAL \src1_out[1]~output_o\ : std_logic;
SIGNAL \src1_out[2]~output_o\ : std_logic;
SIGNAL \src1_out[3]~output_o\ : std_logic;
SIGNAL \src1_out[4]~output_o\ : std_logic;
SIGNAL \src1_out[5]~output_o\ : std_logic;
SIGNAL \src1_out[6]~output_o\ : std_logic;
SIGNAL \src1_out[7]~output_o\ : std_logic;
SIGNAL \src2_out[0]~output_o\ : std_logic;
SIGNAL \src2_out[1]~output_o\ : std_logic;
SIGNAL \src2_out[2]~output_o\ : std_logic;
SIGNAL \src2_out[3]~output_o\ : std_logic;
SIGNAL \src2_out[4]~output_o\ : std_logic;
SIGNAL \src2_out[5]~output_o\ : std_logic;
SIGNAL \src2_out[6]~output_o\ : std_logic;
SIGNAL \src2_out[7]~output_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_wr <= wr;
ww_write_data <= write_data;
ww_src1_addr <= src1_addr;
ww_src2_addr <= src2_addr;
ww_dst_addr <= dst_addr;
src1_out <= ww_src1_out;
src2_out <= ww_src2_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X31_Y31_N9
\src1_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \src1_out[0]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\src1_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \src1_out[1]~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\src1_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \src1_out[2]~output_o\);

-- Location: IOOBUF_X29_Y31_N9
\src1_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \src1_out[3]~output_o\);

-- Location: IOOBUF_X10_Y31_N2
\src1_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \src1_out[4]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\src1_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \src1_out[5]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\src1_out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \src1_out[6]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\src1_out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \src1_out[7]~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\src2_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \src2_out[0]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\src2_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \src2_out[1]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\src2_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \src2_out[2]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\src2_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \src2_out[3]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\src2_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \src2_out[4]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\src2_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \src2_out[5]~output_o\);

-- Location: IOOBUF_X12_Y31_N9
\src2_out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \src2_out[6]~output_o\);

-- Location: IOOBUF_X26_Y31_N9
\src2_out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \src2_out[7]~output_o\);

-- Location: IOIBUF_X16_Y0_N8
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\rst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\wr~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr,
	o => \wr~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\write_data[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(0),
	o => \write_data[0]~input_o\);

-- Location: IOIBUF_X33_Y11_N1
\write_data[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(1),
	o => \write_data[1]~input_o\);

-- Location: IOIBUF_X33_Y22_N8
\write_data[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(2),
	o => \write_data[2]~input_o\);

-- Location: IOIBUF_X31_Y31_N1
\write_data[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(3),
	o => \write_data[3]~input_o\);

-- Location: IOIBUF_X33_Y12_N8
\write_data[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(4),
	o => \write_data[4]~input_o\);

-- Location: IOIBUF_X22_Y31_N1
\write_data[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(5),
	o => \write_data[5]~input_o\);

-- Location: IOIBUF_X14_Y31_N8
\write_data[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(6),
	o => \write_data[6]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\write_data[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(7),
	o => \write_data[7]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\src1_addr[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_src1_addr(0),
	o => \src1_addr[0]~input_o\);

-- Location: IOIBUF_X33_Y15_N8
\src1_addr[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_src1_addr(1),
	o => \src1_addr[1]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\src2_addr[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_src2_addr(0),
	o => \src2_addr[0]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\src2_addr[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_src2_addr(1),
	o => \src2_addr[1]~input_o\);

-- Location: IOIBUF_X20_Y31_N1
\dst_addr[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dst_addr(0),
	o => \dst_addr[0]~input_o\);

-- Location: IOIBUF_X33_Y27_N1
\dst_addr[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dst_addr(1),
	o => \dst_addr[1]~input_o\);

ww_src1_out(0) <= \src1_out[0]~output_o\;

ww_src1_out(1) <= \src1_out[1]~output_o\;

ww_src1_out(2) <= \src1_out[2]~output_o\;

ww_src1_out(3) <= \src1_out[3]~output_o\;

ww_src1_out(4) <= \src1_out[4]~output_o\;

ww_src1_out(5) <= \src1_out[5]~output_o\;

ww_src1_out(6) <= \src1_out[6]~output_o\;

ww_src1_out(7) <= \src1_out[7]~output_o\;

ww_src2_out(0) <= \src2_out[0]~output_o\;

ww_src2_out(1) <= \src2_out[1]~output_o\;

ww_src2_out(2) <= \src2_out[2]~output_o\;

ww_src2_out(3) <= \src2_out[3]~output_o\;

ww_src2_out(4) <= \src2_out[4]~output_o\;

ww_src2_out(5) <= \src2_out[5]~output_o\;

ww_src2_out(6) <= \src2_out[6]~output_o\;

ww_src2_out(7) <= \src2_out[7]~output_o\;
END structure;


