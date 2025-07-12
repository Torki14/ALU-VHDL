-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "07/12/2025 00:59:15"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	Opcode : IN std_logic_vector(2 DOWNTO 0);
	Result : OUT std_logic_vector(7 DOWNTO 0)
	);
END ALU;

-- Design Ports Information
-- Result[0]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[1]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[2]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[3]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[4]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[5]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[6]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[7]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Opcode[2]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Opcode[1]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Opcode[0]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Opcode : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Result : std_logic_vector(7 DOWNTO 0);
SIGNAL \Result[0]~output_o\ : std_logic;
SIGNAL \Result[1]~output_o\ : std_logic;
SIGNAL \Result[2]~output_o\ : std_logic;
SIGNAL \Result[3]~output_o\ : std_logic;
SIGNAL \Result[4]~output_o\ : std_logic;
SIGNAL \Result[5]~output_o\ : std_logic;
SIGNAL \Result[6]~output_o\ : std_logic;
SIGNAL \Result[7]~output_o\ : std_logic;
SIGNAL \Opcode[2]~input_o\ : std_logic;
SIGNAL \Opcode[0]~input_o\ : std_logic;
SIGNAL \Opcode[1]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \SUBTRACTOR|ADDER_INST|Add0~0_combout\ : std_logic;
SIGNAL \ADDER|Add0~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \GT|LessThan0~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \GT|LessThan0~1_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \GT|LessThan0~2_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \LT|LessThan0~0_combout\ : std_logic;
SIGNAL \LT|LessThan0~1_combout\ : std_logic;
SIGNAL \LT|LessThan0~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \MULTIPLIER|HA1|Sum~combout\ : std_logic;
SIGNAL \ADDER|Add0~1\ : std_logic;
SIGNAL \ADDER|Add0~2_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \SUBTRACTOR|Add0~0_combout\ : std_logic;
SIGNAL \SUBTRACTOR|ADDER_INST|Add0~1\ : std_logic;
SIGNAL \SUBTRACTOR|ADDER_INST|Add0~2_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \MULTIPLIER|HA1|Carry~combout\ : std_logic;
SIGNAL \MULTIPLIER|FA1|Sum~combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \SUBTRACTOR|Add0~1_combout\ : std_logic;
SIGNAL \SUBTRACTOR|ADDER_INST|Add0~3\ : std_logic;
SIGNAL \SUBTRACTOR|ADDER_INST|Add0~4_combout\ : std_logic;
SIGNAL \ADDER|Add0~3\ : std_logic;
SIGNAL \ADDER|Add0~4_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \SUBTRACTOR|Add0~2_combout\ : std_logic;
SIGNAL \SUBTRACTOR|ADDER_INST|Add0~5\ : std_logic;
SIGNAL \SUBTRACTOR|ADDER_INST|Add0~6_combout\ : std_logic;
SIGNAL \ADDER|Add0~5\ : std_logic;
SIGNAL \ADDER|Add0~6_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \MULTIPLIER|HA3|Carry~combout\ : std_logic;
SIGNAL \MULTIPLIER|FA1|Cout~0_combout\ : std_logic;
SIGNAL \MULTIPLIER|FA2|Sum~combout\ : std_logic;
SIGNAL \MULTIPLIER|FA3|Sum~combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \MULTIPLIER|FA2|Cout~0_combout\ : std_logic;
SIGNAL \MULTIPLIER|HA2|Sum~combout\ : std_logic;
SIGNAL \MULTIPLIER|FA3|Cout~0_combout\ : std_logic;
SIGNAL \MULTIPLIER|FA4|Sum~combout\ : std_logic;
SIGNAL \MULTIPLIER|HA4|Carry~combout\ : std_logic;
SIGNAL \MULTIPLIER|FA6|Sum~combout\ : std_logic;
SIGNAL \SUBTRACTOR|ADDER_INST|Add0~7\ : std_logic;
SIGNAL \SUBTRACTOR|ADDER_INST|Add0~8_combout\ : std_logic;
SIGNAL \ADDER|Add0~7\ : std_logic;
SIGNAL \ADDER|Add0~8_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \MULTIPLIER|HA2|Carry~combout\ : std_logic;
SIGNAL \MULTIPLIER|FA4|Cout~0_combout\ : std_logic;
SIGNAL \MULTIPLIER|FA5|Sum~combout\ : std_logic;
SIGNAL \MULTIPLIER|FA6|Cout~0_combout\ : std_logic;
SIGNAL \MULTIPLIER|FA7|Sum~combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \MULTIPLIER|FA7|Cout~0_combout\ : std_logic;
SIGNAL \MULTIPLIER|FA5|Cout~0_combout\ : std_logic;
SIGNAL \MULTIPLIER|FA8|Sum~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \MULTIPLIER|FA8|Cout~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \MULTIPLIER|P\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MULTIPLIER|pp\ : std_logic_vector(15 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_Opcode <= Opcode;
Result <= ww_Result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y17_N16
\Result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~3_combout\,
	devoe => ww_devoe,
	o => \Result[0]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\Result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~1_combout\,
	devoe => ww_devoe,
	o => \Result[1]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\Result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~2_combout\,
	devoe => ww_devoe,
	o => \Result[2]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\Result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~3_combout\,
	devoe => ww_devoe,
	o => \Result[3]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\Result[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~1_combout\,
	devoe => ww_devoe,
	o => \Result[4]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\Result[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~1_combout\,
	devoe => ww_devoe,
	o => \Result[5]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\Result[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Result[6]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\Result[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Result[7]~output_o\);

-- Location: IOIBUF_X30_Y24_N1
\Opcode[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Opcode(2),
	o => \Opcode[2]~input_o\);

-- Location: IOIBUF_X34_Y9_N8
\Opcode[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Opcode(0),
	o => \Opcode[0]~input_o\);

-- Location: IOIBUF_X34_Y18_N15
\Opcode[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Opcode(1),
	o => \Opcode[1]~input_o\);

-- Location: LCCOMB_X30_Y13_N28
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Opcode[2]~input_o\ & (!\Opcode[0]~input_o\ & !\Opcode[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Opcode[2]~input_o\,
	datac => \Opcode[0]~input_o\,
	datad => \Opcode[1]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: IOIBUF_X34_Y9_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X30_Y13_N6
\SUBTRACTOR|ADDER_INST|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SUBTRACTOR|ADDER_INST|Add0~0_combout\ = (\A[0]~input_o\ & (\B[0]~input_o\ $ (VCC))) # (!\A[0]~input_o\ & (\B[0]~input_o\ & VCC))
-- \SUBTRACTOR|ADDER_INST|Add0~1\ = CARRY((\A[0]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	combout => \SUBTRACTOR|ADDER_INST|Add0~0_combout\,
	cout => \SUBTRACTOR|ADDER_INST|Add0~1\);

-- Location: LCCOMB_X28_Y13_N14
\ADDER|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADDER|Add0~0_combout\ = (\A[0]~input_o\ & (\B[0]~input_o\ $ (VCC))) # (!\A[0]~input_o\ & (\B[0]~input_o\ & VCC))
-- \ADDER|Add0~1\ = CARRY((\A[0]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	combout => \ADDER|Add0~0_combout\,
	cout => \ADDER|Add0~1\);

-- Location: LCCOMB_X29_Y13_N8
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Opcode[0]~input_o\ & ((\SUBTRACTOR|ADDER_INST|Add0~0_combout\) # ((\Opcode[1]~input_o\)))) # (!\Opcode[0]~input_o\ & (((!\Opcode[1]~input_o\ & \ADDER|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SUBTRACTOR|ADDER_INST|Add0~0_combout\,
	datab => \Opcode[0]~input_o\,
	datac => \Opcode[1]~input_o\,
	datad => \ADDER|Add0~0_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X30_Y13_N24
\MULTIPLIER|P[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MULTIPLIER|P\(0) = (\B[0]~input_o\ & \A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \MULTIPLIER|P\(0));

-- Location: IOIBUF_X34_Y10_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X34_Y4_N22
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X34_Y19_N15
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X28_Y13_N26
\GT|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GT|LessThan0~0_combout\ = (\B[1]~input_o\ & (!\B[0]~input_o\ & (\A[0]~input_o\ & \A[1]~input_o\))) # (!\B[1]~input_o\ & ((\A[1]~input_o\) # ((!\B[0]~input_o\ & \A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \GT|LessThan0~0_combout\);

-- Location: IOIBUF_X34_Y9_N15
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X28_Y12_N0
\GT|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GT|LessThan0~1_combout\ = (\GT|LessThan0~0_combout\ & ((\A[2]~input_o\) # (!\B[2]~input_o\))) # (!\GT|LessThan0~0_combout\ & (\A[2]~input_o\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GT|LessThan0~0_combout\,
	datab => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \GT|LessThan0~1_combout\);

-- Location: IOIBUF_X34_Y18_N1
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X28_Y13_N28
\GT|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \GT|LessThan0~2_combout\ = (\A[3]~input_o\ & ((\GT|LessThan0~1_combout\) # (!\B[3]~input_o\))) # (!\A[3]~input_o\ & (\GT|LessThan0~1_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \GT|LessThan0~1_combout\,
	datad => \B[3]~input_o\,
	combout => \GT|LessThan0~2_combout\);

-- Location: LCCOMB_X30_Y13_N26
\Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\Mux7~1_combout\ & (((\GT|LessThan0~2_combout\) # (!\Opcode[1]~input_o\)))) # (!\Mux7~1_combout\ & (\MULTIPLIER|P\(0) & ((\Opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \MULTIPLIER|P\(0),
	datac => \GT|LessThan0~2_combout\,
	datad => \Opcode[1]~input_o\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X28_Y13_N24
\LT|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LT|LessThan0~0_combout\ = (\B[1]~input_o\ & (((\B[0]~input_o\ & !\A[0]~input_o\)) # (!\A[1]~input_o\))) # (!\B[1]~input_o\ & (\B[0]~input_o\ & (!\A[0]~input_o\ & !\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \LT|LessThan0~0_combout\);

-- Location: LCCOMB_X30_Y13_N0
\LT|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LT|LessThan0~1_combout\ = (\A[2]~input_o\ & (\LT|LessThan0~0_combout\ & \B[2]~input_o\)) # (!\A[2]~input_o\ & ((\LT|LessThan0~0_combout\) # (\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \LT|LessThan0~0_combout\,
	datac => \B[2]~input_o\,
	combout => \LT|LessThan0~1_combout\);

-- Location: LCCOMB_X30_Y13_N2
\LT|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LT|LessThan0~2_combout\ = (\A[3]~input_o\ & (\LT|LessThan0~1_combout\ & \B[3]~input_o\)) # (!\A[3]~input_o\ & ((\LT|LessThan0~1_combout\) # (\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \LT|LessThan0~1_combout\,
	datad => \B[3]~input_o\,
	combout => \LT|LessThan0~2_combout\);

-- Location: LCCOMB_X30_Y13_N20
\Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\Opcode[2]~input_o\ & (\Mux7~0_combout\ & ((\LT|LessThan0~2_combout\)))) # (!\Opcode[2]~input_o\ & ((\Mux7~2_combout\) # ((\Mux7~0_combout\ & \LT|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Opcode[2]~input_o\,
	datab => \Mux7~0_combout\,
	datac => \Mux7~2_combout\,
	datad => \LT|LessThan0~2_combout\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X28_Y13_N30
\MULTIPLIER|HA1|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \MULTIPLIER|HA1|Sum~combout\ = (\B[1]~input_o\ & (\A[0]~input_o\ $ (((\B[0]~input_o\ & \A[1]~input_o\))))) # (!\B[1]~input_o\ & (\B[0]~input_o\ & ((\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \MULTIPLIER|HA1|Sum~combout\);

-- Location: LCCOMB_X28_Y13_N16
\ADDER|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADDER|Add0~2_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\ & (\ADDER|Add0~1\ & VCC)) # (!\A[1]~input_o\ & (!\ADDER|Add0~1\)))) # (!\B[1]~input_o\ & ((\A[1]~input_o\ & (!\ADDER|Add0~1\)) # (!\A[1]~input_o\ & ((\ADDER|Add0~1\) # (GND)))))
-- \ADDER|Add0~3\ = CARRY((\B[1]~input_o\ & (!\A[1]~input_o\ & !\ADDER|Add0~1\)) # (!\B[1]~input_o\ & ((!\ADDER|Add0~1\) # (!\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \ADDER|Add0~1\,
	combout => \ADDER|Add0~2_combout\,
	cout => \ADDER|Add0~3\);

-- Location: LCCOMB_X29_Y13_N10
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Opcode[1]~input_o\ & ((\MULTIPLIER|HA1|Sum~combout\) # ((\Opcode[0]~input_o\)))) # (!\Opcode[1]~input_o\ & (((!\Opcode[0]~input_o\ & \ADDER|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Opcode[1]~input_o\,
	datab => \MULTIPLIER|HA1|Sum~combout\,
	datac => \Opcode[0]~input_o\,
	datad => \ADDER|Add0~2_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X30_Y12_N0
\SUBTRACTOR|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SUBTRACTOR|Add0~0_combout\ = \B[0]~input_o\ $ (\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SUBTRACTOR|Add0~0_combout\);

-- Location: LCCOMB_X30_Y13_N8
\SUBTRACTOR|ADDER_INST|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SUBTRACTOR|ADDER_INST|Add0~2_combout\ = (\A[1]~input_o\ & ((\SUBTRACTOR|Add0~0_combout\ & (\SUBTRACTOR|ADDER_INST|Add0~1\ & VCC)) # (!\SUBTRACTOR|Add0~0_combout\ & (!\SUBTRACTOR|ADDER_INST|Add0~1\)))) # (!\A[1]~input_o\ & ((\SUBTRACTOR|Add0~0_combout\ & 
-- (!\SUBTRACTOR|ADDER_INST|Add0~1\)) # (!\SUBTRACTOR|Add0~0_combout\ & ((\SUBTRACTOR|ADDER_INST|Add0~1\) # (GND)))))
-- \SUBTRACTOR|ADDER_INST|Add0~3\ = CARRY((\A[1]~input_o\ & (!\SUBTRACTOR|Add0~0_combout\ & !\SUBTRACTOR|ADDER_INST|Add0~1\)) # (!\A[1]~input_o\ & ((!\SUBTRACTOR|ADDER_INST|Add0~1\) # (!\SUBTRACTOR|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \SUBTRACTOR|Add0~0_combout\,
	datad => VCC,
	cin => \SUBTRACTOR|ADDER_INST|Add0~1\,
	combout => \SUBTRACTOR|ADDER_INST|Add0~2_combout\,
	cout => \SUBTRACTOR|ADDER_INST|Add0~3\);

-- Location: LCCOMB_X29_Y13_N12
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (!\Opcode[2]~input_o\ & ((\Mux6~0_combout\ & (!\Opcode[0]~input_o\)) # (!\Mux6~0_combout\ & (\Opcode[0]~input_o\ & \SUBTRACTOR|ADDER_INST|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \Opcode[0]~input_o\,
	datac => \SUBTRACTOR|ADDER_INST|Add0~2_combout\,
	datad => \Opcode[2]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X28_Y11_N8
\MULTIPLIER|pp[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MULTIPLIER|pp\(2) = (\B[0]~input_o\ & \A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[0]~input_o\,
	datad => \A[2]~input_o\,
	combout => \MULTIPLIER|pp\(2));

-- Location: LCCOMB_X28_Y13_N0
\MULTIPLIER|HA1|Carry\ : cycloneive_lcell_comb
-- Equation(s):
-- \MULTIPLIER|HA1|Carry~combout\ = (\B[1]~input_o\ & (\B[0]~input_o\ & (\A[0]~input_o\ & \A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \MULTIPLIER|HA1|Carry~combout\);

-- Location: LCCOMB_X28_Y11_N2
\MULTIPLIER|FA1|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \MULTIPLIER|FA1|Sum~combout\ = \MULTIPLIER|pp\(2) $ (\MULTIPLIER|HA1|Carry~combout\ $ (((\B[1]~input_o\ & \A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \MULTIPLIER|pp\(2),
	datac => \A[1]~input_o\,
	datad => \MULTIPLIER|HA1|Carry~combout\,
	combout => \MULTIPLIER|FA1|Sum~combout\);

-- Location: LCCOMB_X29_Y13_N6
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = \MULTIPLIER|FA1|Sum~combout\ $ (((\B[2]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \MULTIPLIER|FA1|Sum~combout\,
	datac => \A[0]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X28_Y13_N10
\SUBTRACTOR|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SUBTRACTOR|Add0~1_combout\ = \B[2]~input_o\ $ (((\B[0]~input_o\) # (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	combout => \SUBTRACTOR|Add0~1_combout\);

-- Location: LCCOMB_X30_Y13_N10
\SUBTRACTOR|ADDER_INST|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SUBTRACTOR|ADDER_INST|Add0~4_combout\ = ((\A[2]~input_o\ $ (\SUBTRACTOR|Add0~1_combout\ $ (!\SUBTRACTOR|ADDER_INST|Add0~3\)))) # (GND)
-- \SUBTRACTOR|ADDER_INST|Add0~5\ = CARRY((\A[2]~input_o\ & ((\SUBTRACTOR|Add0~1_combout\) # (!\SUBTRACTOR|ADDER_INST|Add0~3\))) # (!\A[2]~input_o\ & (\SUBTRACTOR|Add0~1_combout\ & !\SUBTRACTOR|ADDER_INST|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \SUBTRACTOR|Add0~1_combout\,
	datad => VCC,
	cin => \SUBTRACTOR|ADDER_INST|Add0~3\,
	combout => \SUBTRACTOR|ADDER_INST|Add0~4_combout\,
	cout => \SUBTRACTOR|ADDER_INST|Add0~5\);

-- Location: LCCOMB_X28_Y13_N18
\ADDER|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADDER|Add0~4_combout\ = ((\B[2]~input_o\ $ (\A[2]~input_o\ $ (!\ADDER|Add0~3\)))) # (GND)
-- \ADDER|Add0~5\ = CARRY((\B[2]~input_o\ & ((\A[2]~input_o\) # (!\ADDER|Add0~3\))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & !\ADDER|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \ADDER|Add0~3\,
	combout => \ADDER|Add0~4_combout\,
	cout => \ADDER|Add0~5\);

-- Location: LCCOMB_X29_Y13_N24
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Opcode[1]~input_o\ & (((\Opcode[0]~input_o\)))) # (!\Opcode[1]~input_o\ & ((\Opcode[0]~input_o\ & (\SUBTRACTOR|ADDER_INST|Add0~4_combout\)) # (!\Opcode[0]~input_o\ & ((\ADDER|Add0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Opcode[1]~input_o\,
	datab => \SUBTRACTOR|ADDER_INST|Add0~4_combout\,
	datac => \Opcode[0]~input_o\,
	datad => \ADDER|Add0~4_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X29_Y13_N18
\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (!\Opcode[2]~input_o\ & ((\Mux5~1_combout\ & ((!\Opcode[1]~input_o\))) # (!\Mux5~1_combout\ & (\Mux5~0_combout\ & \Opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \Mux5~1_combout\,
	datac => \Opcode[1]~input_o\,
	datad => \Opcode[2]~input_o\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X28_Y13_N12
\SUBTRACTOR|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SUBTRACTOR|Add0~2_combout\ = \B[3]~input_o\ $ (((\B[2]~input_o\) # ((\B[0]~input_o\) # (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SUBTRACTOR|Add0~2_combout\);

-- Location: LCCOMB_X30_Y13_N12
\SUBTRACTOR|ADDER_INST|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SUBTRACTOR|ADDER_INST|Add0~6_combout\ = (\A[3]~input_o\ & ((\SUBTRACTOR|Add0~2_combout\ & (\SUBTRACTOR|ADDER_INST|Add0~5\ & VCC)) # (!\SUBTRACTOR|Add0~2_combout\ & (!\SUBTRACTOR|ADDER_INST|Add0~5\)))) # (!\A[3]~input_o\ & ((\SUBTRACTOR|Add0~2_combout\ & 
-- (!\SUBTRACTOR|ADDER_INST|Add0~5\)) # (!\SUBTRACTOR|Add0~2_combout\ & ((\SUBTRACTOR|ADDER_INST|Add0~5\) # (GND)))))
-- \SUBTRACTOR|ADDER_INST|Add0~7\ = CARRY((\A[3]~input_o\ & (!\SUBTRACTOR|Add0~2_combout\ & !\SUBTRACTOR|ADDER_INST|Add0~5\)) # (!\A[3]~input_o\ & ((!\SUBTRACTOR|ADDER_INST|Add0~5\) # (!\SUBTRACTOR|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \SUBTRACTOR|Add0~2_combout\,
	datad => VCC,
	cin => \SUBTRACTOR|ADDER_INST|Add0~5\,
	combout => \SUBTRACTOR|ADDER_INST|Add0~6_combout\,
	cout => \SUBTRACTOR|ADDER_INST|Add0~7\);

-- Location: LCCOMB_X28_Y13_N20
\ADDER|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADDER|Add0~6_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\ & (\ADDER|Add0~5\ & VCC)) # (!\B[3]~input_o\ & (!\ADDER|Add0~5\)))) # (!\A[3]~input_o\ & ((\B[3]~input_o\ & (!\ADDER|Add0~5\)) # (!\B[3]~input_o\ & ((\ADDER|Add0~5\) # (GND)))))
-- \ADDER|Add0~7\ = CARRY((\A[3]~input_o\ & (!\B[3]~input_o\ & !\ADDER|Add0~5\)) # (!\A[3]~input_o\ & ((!\ADDER|Add0~5\) # (!\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \ADDER|Add0~5\,
	combout => \ADDER|Add0~6_combout\,
	cout => \ADDER|Add0~7\);

-- Location: LCCOMB_X30_Y13_N30
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (!\Opcode[1]~input_o\ & ((\Opcode[0]~input_o\ & (\SUBTRACTOR|ADDER_INST|Add0~6_combout\)) # (!\Opcode[0]~input_o\ & ((\ADDER|Add0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SUBTRACTOR|ADDER_INST|Add0~6_combout\,
	datab => \ADDER|Add0~6_combout\,
	datac => \Opcode[0]~input_o\,
	datad => \Opcode[1]~input_o\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X28_Y12_N18
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!\Opcode[0]~input_o\ & \Opcode[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Opcode[0]~input_o\,
	datac => \Opcode[1]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X28_Y11_N18
\MULTIPLIER|HA3|Carry\ : cycloneive_lcell_comb
-- Equation(s):
-- \MULTIPLIER|HA3|Carry~combout\ = (\B[2]~input_o\ & (\MULTIPLIER|FA1|Sum~combout\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \MULTIPLIER|FA1|Sum~combout\,
	datac => \A[0]~input_o\,
	combout => \MULTIPLIER|HA3|Carry~combout\);

-- Location: LCCOMB_X28_Y11_N28
\MULTIPLIER|FA1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MULTIPLIER|FA1|Cout~0_combout\ = (\MULTIPLIER|pp\(2) & ((\MULTIPLIER|HA1|Carry~combout\) # ((\B[1]~input_o\ & \A[1]~input_o\)))) # (!\MULTIPLIER|pp\(2) & (\B[1]~input_o\ & (\A[1]~input_o\ & \MULTIPLIER|HA1|Carry~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \MULTIPLIER|pp\(2),
	datac => \A[1]~input_o\,
	datad => \MULTIPLIER|HA1|Carry~combout\,
	combout => \MULTIPLIER|FA1|Cout~0_combout\);

-- Location: LCCOMB_X28_Y11_N22
\MULTIPLIER|pp[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MULTIPLIER|pp\(3) = (\A[3]~input_o\ & \B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[3]~input_o\,
	datac => \B[0]~input_o\,
	combout => \MULTIPLIER|pp\(3));

-- Location: LCCOMB_X28_Y11_N24
\MULTIPLIER|FA2|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \MULTIPLIER|FA2|Sum~combout\ = \MULTIPLIER|FA1|Cout~0_combout\ $ (\MULTIPLIER|pp\(3) $ (((\B[1]~input_o\ & \A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \MULTIPLIER|FA1|Cout~0_combout\,
	datac => \MULTIPLIER|pp\(3),
	datad => \A[2]~input_o\,
	combout => \MULTIPLIER|FA2|Sum~combout\);

-- Location: LCCOMB_X28_Y11_N4
\MULTIPLIER|FA3|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \MULTIPLIER|FA3|Sum~combout\ = \MULTIPLIER|HA3|Carry~combout\ $ (\MULTIPLIER|FA2|Sum~combout\ $ (((\B[2]~input_o\ & \A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \MULTIPLIER|HA3|Carry~combout\,
	datac => \A[1]~input_o\,
	datad => \MULTIPLIER|FA2|Sum~combout\,
	combout => \MULTIPLIER|FA3|Sum~combout\);

-- Location: LCCOMB_X28_Y12_N12
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\ & (\MULTIPLIER|FA3|Sum~combout\ $ (((\A[0]~input_o\ & \B[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \MULTIPLIER|FA3|Sum~combout\,
	datac => \A[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X30_Y13_N16
\Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (!\Opcode[2]~input_o\ & ((\Mux4~2_combout\) # (\Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~2_combout\,
	datac => \Mux4~1_combout\,
	datad => \Opcode[2]~input_o\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X28_Y11_N30
\MULTIPLIER|FA2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MULTIPLIER|FA2|Cout~0_combout\ = (\MULTIPLIER|FA1|Cout~0_combout\ & ((\MULTIPLIER|pp\(3)) # ((\B[1]~input_o\ & \A[2]~input_o\)))) # (!\MULTIPLIER|FA1|Cout~0_combout\ & (\B[1]~input_o\ & (\MULTIPLIER|pp\(3) & \A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \MULTIPLIER|FA1|Cout~0_combout\,
	datac => \MULTIPLIER|pp\(3),
	datad => \A[2]~input_o\,
	combout => \MULTIPLIER|FA2|Cout~0_combout\);

-- Location: LCCOMB_X28_Y11_N16
\MULTIPLIER|HA2|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \MULTIPLIER|HA2|Sum~combout\ = \MULTIPLIER|FA2|Cout~0_combout\ $ (((\B[1]~input_o\ & \A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[3]~input_o\,
	datac => \MULTIPLIER|FA2|Cout~0_combout\,
	combout => \MULTIPLIER|HA2|Sum~combout\);

-- Location: LCCOMB_X28_Y11_N26
\MULTIPLIER|FA3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MULTIPLIER|FA3|Cout~0_combout\ = (\MULTIPLIER|HA3|Carry~combout\ & ((\MULTIPLIER|FA2|Sum~combout\) # ((\B[2]~input_o\ & \A[1]~input_o\)))) # (!\MULTIPLIER|HA3|Carry~combout\ & (\B[2]~input_o\ & (\A[1]~input_o\ & \MULTIPLIER|FA2|Sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \MULTIPLIER|HA3|Carry~combout\,
	datac => \A[1]~input_o\,
	datad => \MULTIPLIER|FA2|Sum~combout\,
	combout => \MULTIPLIER|FA3|Cout~0_combout\);

-- Location: LCCOMB_X28_Y11_N12
\MULTIPLIER|FA4|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \MULTIPLIER|FA4|Sum~combout\ = \MULTIPLIER|HA2|Sum~combout\ $ (\MULTIPLIER|FA3|Cout~0_combout\ $ (((\B[2]~input_o\ & \A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \MULTIPLIER|HA2|Sum~combout\,
	datac => \MULTIPLIER|FA3|Cout~0_combout\,
	datad => \A[2]~input_o\,
	combout => \MULTIPLIER|FA4|Sum~combout\);

-- Location: LCCOMB_X28_Y12_N22
\MULTIPLIER|HA4|Carry\ : cycloneive_lcell_comb
-- Equation(s):
-- \MULTIPLIER|HA4|Carry~combout\ = (\A[0]~input_o\ & (\MULTIPLIER|FA3|Sum~combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \MULTIPLIER|FA3|Sum~combout\,
	datad => \B[3]~input_o\,
	combout => \MULTIPLIER|HA4|Carry~combout\);

-- Location: LCCOMB_X28_Y12_N16
\MULTIPLIER|FA6|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \MULTIPLIER|FA6|Sum~combout\ = \MULTIPLIER|FA4|Sum~combout\ $ (\MULTIPLIER|HA4|Carry~combout\ $ (((\B[3]~input_o\ & \A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MULTIPLIER|FA4|Sum~combout\,
	datab => \B[3]~input_o\,
	datac => \MULTIPLIER|HA4|Carry~combout\,
	datad => \A[1]~input_o\,
	combout => \MULTIPLIER|FA6|Sum~combout\);

-- Location: LCCOMB_X30_Y13_N14
\SUBTRACTOR|ADDER_INST|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SUBTRACTOR|ADDER_INST|Add0~8_combout\ = \SUBTRACTOR|Add0~2_combout\ $ (\SUBTRACTOR|ADDER_INST|Add0~7\ $ (!\A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SUBTRACTOR|Add0~2_combout\,
	datad => \A[3]~input_o\,
	cin => \SUBTRACTOR|ADDER_INST|Add0~7\,
	combout => \SUBTRACTOR|ADDER_INST|Add0~8_combout\);

-- Location: LCCOMB_X28_Y13_N22
\ADDER|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADDER|Add0~8_combout\ = \A[3]~input_o\ $ (\ADDER|Add0~7\ $ (!\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	cin => \ADDER|Add0~7\,
	combout => \ADDER|Add0~8_combout\);

-- Location: LCCOMB_X29_Y13_N20
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\Opcode[1]~input_o\ & ((\Opcode[0]~input_o\ & (\SUBTRACTOR|ADDER_INST|Add0~8_combout\)) # (!\Opcode[0]~input_o\ & ((\ADDER|Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Opcode[1]~input_o\,
	datab => \SUBTRACTOR|ADDER_INST|Add0~8_combout\,
	datac => \Opcode[0]~input_o\,
	datad => \ADDER|Add0~8_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X28_Y12_N10
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (!\Opcode[2]~input_o\ & ((\Mux3~0_combout\) # ((\Mux4~0_combout\ & \MULTIPLIER|FA6|Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \MULTIPLIER|FA6|Sum~combout\,
	datac => \Opcode[2]~input_o\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X30_Y13_N18
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!\Opcode[2]~input_o\ & (\Opcode[0]~input_o\ $ (\Opcode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Opcode[2]~input_o\,
	datac => \Opcode[0]~input_o\,
	datad => \Opcode[1]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X28_Y11_N0
\MULTIPLIER|HA2|Carry\ : cycloneive_lcell_comb
-- Equation(s):
-- \MULTIPLIER|HA2|Carry~combout\ = (\B[1]~input_o\ & (\A[3]~input_o\ & \MULTIPLIER|FA2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[3]~input_o\,
	datac => \MULTIPLIER|FA2|Cout~0_combout\,
	combout => \MULTIPLIER|HA2|Carry~combout\);

-- Location: LCCOMB_X28_Y11_N6
\MULTIPLIER|FA4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MULTIPLIER|FA4|Cout~0_combout\ = (\MULTIPLIER|HA2|Sum~combout\ & ((\MULTIPLIER|FA3|Cout~0_combout\) # ((\B[2]~input_o\ & \A[2]~input_o\)))) # (!\MULTIPLIER|HA2|Sum~combout\ & (\B[2]~input_o\ & (\MULTIPLIER|FA3|Cout~0_combout\ & \A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \MULTIPLIER|HA2|Sum~combout\,
	datac => \MULTIPLIER|FA3|Cout~0_combout\,
	datad => \A[2]~input_o\,
	combout => \MULTIPLIER|FA4|Cout~0_combout\);

-- Location: LCCOMB_X28_Y11_N10
\MULTIPLIER|FA5|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \MULTIPLIER|FA5|Sum~combout\ = \MULTIPLIER|HA2|Carry~combout\ $ (\MULTIPLIER|FA4|Cout~0_combout\ $ (((\B[2]~input_o\ & \A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \MULTIPLIER|HA2|Carry~combout\,
	datac => \A[3]~input_o\,
	datad => \MULTIPLIER|FA4|Cout~0_combout\,
	combout => \MULTIPLIER|FA5|Sum~combout\);

-- Location: LCCOMB_X28_Y12_N20
\MULTIPLIER|FA6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MULTIPLIER|FA6|Cout~0_combout\ = (\MULTIPLIER|FA4|Sum~combout\ & ((\MULTIPLIER|HA4|Carry~combout\) # ((\B[3]~input_o\ & \A[1]~input_o\)))) # (!\MULTIPLIER|FA4|Sum~combout\ & (\B[3]~input_o\ & (\MULTIPLIER|HA4|Carry~combout\ & \A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MULTIPLIER|FA4|Sum~combout\,
	datab => \B[3]~input_o\,
	datac => \MULTIPLIER|HA4|Carry~combout\,
	datad => \A[1]~input_o\,
	combout => \MULTIPLIER|FA6|Cout~0_combout\);

-- Location: LCCOMB_X28_Y12_N30
\MULTIPLIER|FA7|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \MULTIPLIER|FA7|Sum~combout\ = \MULTIPLIER|FA5|Sum~combout\ $ (\MULTIPLIER|FA6|Cout~0_combout\ $ (((\A[2]~input_o\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MULTIPLIER|FA5|Sum~combout\,
	datab => \MULTIPLIER|FA6|Cout~0_combout\,
	datac => \A[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \MULTIPLIER|FA7|Sum~combout\);

-- Location: LCCOMB_X28_Y12_N8
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\ & ((\Opcode[0]~input_o\ & ((\SUBTRACTOR|ADDER_INST|Add0~8_combout\))) # (!\Opcode[0]~input_o\ & (\MULTIPLIER|FA7|Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \MULTIPLIER|FA7|Sum~combout\,
	datac => \SUBTRACTOR|ADDER_INST|Add0~8_combout\,
	datad => \Opcode[0]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X28_Y12_N2
\MULTIPLIER|FA7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MULTIPLIER|FA7|Cout~0_combout\ = (\MULTIPLIER|FA5|Sum~combout\ & ((\MULTIPLIER|FA6|Cout~0_combout\) # ((\A[2]~input_o\ & \B[3]~input_o\)))) # (!\MULTIPLIER|FA5|Sum~combout\ & (\MULTIPLIER|FA6|Cout~0_combout\ & (\A[2]~input_o\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MULTIPLIER|FA5|Sum~combout\,
	datab => \MULTIPLIER|FA6|Cout~0_combout\,
	datac => \A[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \MULTIPLIER|FA7|Cout~0_combout\);

-- Location: LCCOMB_X28_Y11_N20
\MULTIPLIER|FA5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MULTIPLIER|FA5|Cout~0_combout\ = (\MULTIPLIER|HA2|Carry~combout\ & ((\MULTIPLIER|FA4|Cout~0_combout\) # ((\B[2]~input_o\ & \A[3]~input_o\)))) # (!\MULTIPLIER|HA2|Carry~combout\ & (\B[2]~input_o\ & (\A[3]~input_o\ & \MULTIPLIER|FA4|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \MULTIPLIER|HA2|Carry~combout\,
	datac => \A[3]~input_o\,
	datad => \MULTIPLIER|FA4|Cout~0_combout\,
	combout => \MULTIPLIER|FA5|Cout~0_combout\);

-- Location: LCCOMB_X28_Y12_N28
\MULTIPLIER|FA8|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MULTIPLIER|FA8|Sum~0_combout\ = \MULTIPLIER|FA7|Cout~0_combout\ $ (\MULTIPLIER|FA5|Cout~0_combout\ $ (((\A[3]~input_o\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \MULTIPLIER|FA7|Cout~0_combout\,
	datac => \MULTIPLIER|FA5|Cout~0_combout\,
	datad => \B[3]~input_o\,
	combout => \MULTIPLIER|FA8|Sum~0_combout\);

-- Location: LCCOMB_X28_Y12_N14
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\Mux2~0_combout\ & ((\Opcode[0]~input_o\ & ((\SUBTRACTOR|ADDER_INST|Add0~8_combout\))) # (!\Opcode[0]~input_o\ & (\MULTIPLIER|FA8|Sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \MULTIPLIER|FA8|Sum~0_combout\,
	datac => \SUBTRACTOR|ADDER_INST|Add0~8_combout\,
	datad => \Opcode[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X28_Y12_N24
\MULTIPLIER|FA8|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MULTIPLIER|FA8|Cout~0_combout\ = (\MULTIPLIER|FA7|Cout~0_combout\ & ((\MULTIPLIER|FA5|Cout~0_combout\) # ((\A[3]~input_o\ & \B[3]~input_o\)))) # (!\MULTIPLIER|FA7|Cout~0_combout\ & (\A[3]~input_o\ & (\MULTIPLIER|FA5|Cout~0_combout\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \MULTIPLIER|FA7|Cout~0_combout\,
	datac => \MULTIPLIER|FA5|Cout~0_combout\,
	datad => \B[3]~input_o\,
	combout => \MULTIPLIER|FA8|Cout~0_combout\);

-- Location: LCCOMB_X28_Y12_N26
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\Mux2~0_combout\ & ((\Opcode[0]~input_o\ & ((\SUBTRACTOR|ADDER_INST|Add0~8_combout\))) # (!\Opcode[0]~input_o\ & (\MULTIPLIER|FA8|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \MULTIPLIER|FA8|Cout~0_combout\,
	datac => \SUBTRACTOR|ADDER_INST|Add0~8_combout\,
	datad => \Opcode[0]~input_o\,
	combout => \Mux0~0_combout\);

ww_Result(0) <= \Result[0]~output_o\;

ww_Result(1) <= \Result[1]~output_o\;

ww_Result(2) <= \Result[2]~output_o\;

ww_Result(3) <= \Result[3]~output_o\;

ww_Result(4) <= \Result[4]~output_o\;

ww_Result(5) <= \Result[5]~output_o\;

ww_Result(6) <= \Result[6]~output_o\;

ww_Result(7) <= \Result[7]~output_o\;
END structure;


