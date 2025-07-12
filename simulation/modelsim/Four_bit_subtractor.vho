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

-- DATE "07/11/2025 16:33:15"

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

ENTITY 	Four_bit_subtractor IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	DIFF : OUT std_logic_vector(7 DOWNTO 0)
	);
END Four_bit_subtractor;

-- Design Ports Information
-- DIFF[0]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIFF[1]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIFF[2]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIFF[3]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIFF[4]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIFF[5]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIFF[6]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIFF[7]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Four_bit_subtractor IS
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
SIGNAL ww_DIFF : std_logic_vector(7 DOWNTO 0);
SIGNAL \DIFF[0]~output_o\ : std_logic;
SIGNAL \DIFF[1]~output_o\ : std_logic;
SIGNAL \DIFF[2]~output_o\ : std_logic;
SIGNAL \DIFF[3]~output_o\ : std_logic;
SIGNAL \DIFF[4]~output_o\ : std_logic;
SIGNAL \DIFF[5]~output_o\ : std_logic;
SIGNAL \DIFF[6]~output_o\ : std_logic;
SIGNAL \DIFF[7]~output_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \ADDER_INST|SUM[0]~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \ADDER_INST|SUM[0]~1\ : std_logic;
SIGNAL \ADDER_INST|SUM[1]~2_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \ADDER_INST|SUM[1]~3\ : std_logic;
SIGNAL \ADDER_INST|SUM[2]~4_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \ADDER_INST|SUM[2]~5\ : std_logic;
SIGNAL \ADDER_INST|SUM[3]~6_combout\ : std_logic;
SIGNAL \ADDER_INST|SUM[3]~7\ : std_logic;
SIGNAL \ADDER_INST|SUM[4]~8_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
DIFF <= ww_DIFF;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X7_Y0_N2
\DIFF[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ADDER_INST|SUM[0]~0_combout\,
	devoe => ww_devoe,
	o => \DIFF[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\DIFF[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ADDER_INST|SUM[1]~2_combout\,
	devoe => ww_devoe,
	o => \DIFF[1]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\DIFF[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ADDER_INST|SUM[2]~4_combout\,
	devoe => ww_devoe,
	o => \DIFF[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\DIFF[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ADDER_INST|SUM[3]~6_combout\,
	devoe => ww_devoe,
	o => \DIFF[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\DIFF[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ADDER_INST|SUM[4]~8_combout\,
	devoe => ww_devoe,
	o => \DIFF[4]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\DIFF[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DIFF[5]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\DIFF[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DIFF[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\DIFF[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DIFF[7]~output_o\);

-- Location: IOIBUF_X13_Y0_N15
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X14_Y4_N6
\ADDER_INST|SUM[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADDER_INST|SUM[0]~0_combout\ = (\A[0]~input_o\ & (\B[0]~input_o\ $ (VCC))) # (!\A[0]~input_o\ & (\B[0]~input_o\ & VCC))
-- \ADDER_INST|SUM[0]~1\ = CARRY((\A[0]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	combout => \ADDER_INST|SUM[0]~0_combout\,
	cout => \ADDER_INST|SUM[0]~1\);

-- Location: IOIBUF_X5_Y0_N22
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X14_Y4_N24
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \B[0]~input_o\ $ (\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X14_Y4_N8
\ADDER_INST|SUM[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADDER_INST|SUM[1]~2_combout\ = (\A[1]~input_o\ & ((\Add0~0_combout\ & (\ADDER_INST|SUM[0]~1\ & VCC)) # (!\Add0~0_combout\ & (!\ADDER_INST|SUM[0]~1\)))) # (!\A[1]~input_o\ & ((\Add0~0_combout\ & (!\ADDER_INST|SUM[0]~1\)) # (!\Add0~0_combout\ & 
-- ((\ADDER_INST|SUM[0]~1\) # (GND)))))
-- \ADDER_INST|SUM[1]~3\ = CARRY((\A[1]~input_o\ & (!\Add0~0_combout\ & !\ADDER_INST|SUM[0]~1\)) # (!\A[1]~input_o\ & ((!\ADDER_INST|SUM[0]~1\) # (!\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \Add0~0_combout\,
	datad => VCC,
	cin => \ADDER_INST|SUM[0]~1\,
	combout => \ADDER_INST|SUM[1]~2_combout\,
	cout => \ADDER_INST|SUM[1]~3\);

-- Location: IOIBUF_X23_Y0_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X14_Y4_N26
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = \B[2]~input_o\ $ (((\B[1]~input_o\) # (\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[2]~input_o\,
	combout => \Add0~1_combout\);

-- Location: IOIBUF_X13_Y24_N22
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X14_Y4_N10
\ADDER_INST|SUM[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADDER_INST|SUM[2]~4_combout\ = ((\Add0~1_combout\ $ (\A[2]~input_o\ $ (!\ADDER_INST|SUM[1]~3\)))) # (GND)
-- \ADDER_INST|SUM[2]~5\ = CARRY((\Add0~1_combout\ & ((\A[2]~input_o\) # (!\ADDER_INST|SUM[1]~3\))) # (!\Add0~1_combout\ & (\A[2]~input_o\ & !\ADDER_INST|SUM[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~1_combout\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \ADDER_INST|SUM[1]~3\,
	combout => \ADDER_INST|SUM[2]~4_combout\,
	cout => \ADDER_INST|SUM[2]~5\);

-- Location: IOIBUF_X18_Y0_N22
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X14_Y4_N4
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = \B[3]~input_o\ $ (((\B[1]~input_o\) # ((\B[0]~input_o\) # (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Add0~2_combout\);

-- Location: LCCOMB_X14_Y4_N12
\ADDER_INST|SUM[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADDER_INST|SUM[3]~6_combout\ = (\A[3]~input_o\ & ((\Add0~2_combout\ & (\ADDER_INST|SUM[2]~5\ & VCC)) # (!\Add0~2_combout\ & (!\ADDER_INST|SUM[2]~5\)))) # (!\A[3]~input_o\ & ((\Add0~2_combout\ & (!\ADDER_INST|SUM[2]~5\)) # (!\Add0~2_combout\ & 
-- ((\ADDER_INST|SUM[2]~5\) # (GND)))))
-- \ADDER_INST|SUM[3]~7\ = CARRY((\A[3]~input_o\ & (!\Add0~2_combout\ & !\ADDER_INST|SUM[2]~5\)) # (!\A[3]~input_o\ & ((!\ADDER_INST|SUM[2]~5\) # (!\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \ADDER_INST|SUM[2]~5\,
	combout => \ADDER_INST|SUM[3]~6_combout\,
	cout => \ADDER_INST|SUM[3]~7\);

-- Location: LCCOMB_X14_Y4_N14
\ADDER_INST|SUM[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADDER_INST|SUM[4]~8_combout\ = !\ADDER_INST|SUM[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ADDER_INST|SUM[3]~7\,
	combout => \ADDER_INST|SUM[4]~8_combout\);

ww_DIFF(0) <= \DIFF[0]~output_o\;

ww_DIFF(1) <= \DIFF[1]~output_o\;

ww_DIFF(2) <= \DIFF[2]~output_o\;

ww_DIFF(3) <= \DIFF[3]~output_o\;

ww_DIFF(4) <= \DIFF[4]~output_o\;

ww_DIFF(5) <= \DIFF[5]~output_o\;

ww_DIFF(6) <= \DIFF[6]~output_o\;

ww_DIFF(7) <= \DIFF[7]~output_o\;
END structure;


