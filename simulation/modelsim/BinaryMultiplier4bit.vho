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

-- DATE "07/11/2025 18:38:47"

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

ENTITY 	BinaryMultiplier4bit IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	P : OUT std_logic_vector(7 DOWNTO 0)
	);
END BinaryMultiplier4bit;

-- Design Ports Information
-- P[0]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[1]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[2]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[3]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[4]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[5]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[6]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[7]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BinaryMultiplier4bit IS
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
SIGNAL ww_P : std_logic_vector(7 DOWNTO 0);
SIGNAL \P[0]~output_o\ : std_logic;
SIGNAL \P[1]~output_o\ : std_logic;
SIGNAL \P[2]~output_o\ : std_logic;
SIGNAL \P[3]~output_o\ : std_logic;
SIGNAL \P[4]~output_o\ : std_logic;
SIGNAL \P[5]~output_o\ : std_logic;
SIGNAL \P[6]~output_o\ : std_logic;
SIGNAL \P[7]~output_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \pp~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \HA1|Sum~combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \HA1|Carry~combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \FA1|Sum~combout\ : std_logic;
SIGNAL \HA3|Sum~combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \HA3|Carry~combout\ : std_logic;
SIGNAL \FA1|Cout~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \FA2|Sum~combout\ : std_logic;
SIGNAL \FA3|Sum~combout\ : std_logic;
SIGNAL \HA4|Sum~combout\ : std_logic;
SIGNAL \FA3|Cout~0_combout\ : std_logic;
SIGNAL \FA2|Cout~0_combout\ : std_logic;
SIGNAL \HA2|Sum~combout\ : std_logic;
SIGNAL \FA4|Sum~combout\ : std_logic;
SIGNAL \HA4|Carry~combout\ : std_logic;
SIGNAL \FA6|Sum~combout\ : std_logic;
SIGNAL \FA6|Cout~0_combout\ : std_logic;
SIGNAL \FA4|Cout~0_combout\ : std_logic;
SIGNAL \HA2|Carry~combout\ : std_logic;
SIGNAL \FA5|Sum~combout\ : std_logic;
SIGNAL \FA7|Sum~combout\ : std_logic;
SIGNAL \FA7|Cout~0_combout\ : std_logic;
SIGNAL \FA5|Cout~0_combout\ : std_logic;
SIGNAL \FA8|Sum~0_combout\ : std_logic;
SIGNAL \FA8|Cout~0_combout\ : std_logic;
SIGNAL pp : std_logic_vector(15 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
P <= ww_P;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X23_Y24_N16
\P[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pp~0_combout\,
	devoe => ww_devoe,
	o => \P[0]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\P[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HA1|Sum~combout\,
	devoe => ww_devoe,
	o => \P[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\P[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HA3|Sum~combout\,
	devoe => ww_devoe,
	o => \P[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\P[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HA4|Sum~combout\,
	devoe => ww_devoe,
	o => \P[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\P[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA6|Sum~combout\,
	devoe => ww_devoe,
	o => \P[4]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\P[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA7|Sum~combout\,
	devoe => ww_devoe,
	o => \P[5]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\P[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA8|Sum~0_combout\,
	devoe => ww_devoe,
	o => \P[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\P[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA8|Cout~0_combout\,
	devoe => ww_devoe,
	o => \P[7]~output_o\);

-- Location: IOIBUF_X16_Y24_N22
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X19_Y8_N0
\pp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pp~0_combout\ = (\B[0]~input_o\ & \A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	combout => \pp~0_combout\);

-- Location: IOIBUF_X13_Y0_N15
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X18_Y24_N15
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X19_Y8_N26
\HA1|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \HA1|Sum~combout\ = (\B[0]~input_o\ & (\A[1]~input_o\ $ (((\A[0]~input_o\ & \B[1]~input_o\))))) # (!\B[0]~input_o\ & (((\A[0]~input_o\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \HA1|Sum~combout\);

-- Location: IOIBUF_X13_Y0_N1
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X19_Y8_N22
\HA1|Carry\ : cycloneive_lcell_comb
-- Equation(s):
-- \HA1|Carry~combout\ = (\B[0]~input_o\ & (\A[1]~input_o\ & (\A[0]~input_o\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \HA1|Carry~combout\);

-- Location: IOIBUF_X23_Y0_N15
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X19_Y8_N28
\pp[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- pp(2) = (\B[0]~input_o\ & \A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datad => \A[2]~input_o\,
	combout => pp(2));

-- Location: LCCOMB_X19_Y8_N8
\FA1|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA1|Sum~combout\ = \HA1|Carry~combout\ $ (pp(2) $ (((\B[1]~input_o\ & \A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datac => \HA1|Carry~combout\,
	datad => pp(2),
	combout => \FA1|Sum~combout\);

-- Location: LCCOMB_X19_Y8_N18
\HA3|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \HA3|Sum~combout\ = \FA1|Sum~combout\ $ (((\B[2]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \FA1|Sum~combout\,
	datac => \A[0]~input_o\,
	combout => \HA3|Sum~combout\);

-- Location: IOIBUF_X18_Y0_N22
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X19_Y8_N10
\HA3|Carry\ : cycloneive_lcell_comb
-- Equation(s):
-- \HA3|Carry~combout\ = (\B[2]~input_o\ & (\FA1|Sum~combout\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \FA1|Sum~combout\,
	datac => \A[0]~input_o\,
	combout => \HA3|Carry~combout\);

-- Location: LCCOMB_X19_Y8_N4
\FA1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA1|Cout~0_combout\ = (\HA1|Carry~combout\ & ((pp(2)) # ((\B[1]~input_o\ & \A[1]~input_o\)))) # (!\HA1|Carry~combout\ & (\B[1]~input_o\ & (\A[1]~input_o\ & pp(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datac => \HA1|Carry~combout\,
	datad => pp(2),
	combout => \FA1|Cout~0_combout\);

-- Location: IOIBUF_X18_Y24_N22
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X19_Y8_N14
\pp[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- pp(3) = (\B[0]~input_o\ & \A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[3]~input_o\,
	combout => pp(3));

-- Location: LCCOMB_X19_Y8_N24
\FA2|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA2|Sum~combout\ = \FA1|Cout~0_combout\ $ (pp(3) $ (((\B[1]~input_o\ & \A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \FA1|Cout~0_combout\,
	datac => pp(3),
	datad => \A[2]~input_o\,
	combout => \FA2|Sum~combout\);

-- Location: LCCOMB_X19_Y8_N20
\FA3|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA3|Sum~combout\ = \HA3|Carry~combout\ $ (\FA2|Sum~combout\ $ (((\A[1]~input_o\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HA3|Carry~combout\,
	datab => \A[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \FA2|Sum~combout\,
	combout => \FA3|Sum~combout\);

-- Location: LCCOMB_X18_Y3_N8
\HA4|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \HA4|Sum~combout\ = \FA3|Sum~combout\ $ (((\B[3]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \A[0]~input_o\,
	datad => \FA3|Sum~combout\,
	combout => \HA4|Sum~combout\);

-- Location: LCCOMB_X19_Y8_N2
\FA3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA3|Cout~0_combout\ = (\HA3|Carry~combout\ & ((\FA2|Sum~combout\) # ((\A[1]~input_o\ & \B[2]~input_o\)))) # (!\HA3|Carry~combout\ & (\A[1]~input_o\ & (\B[2]~input_o\ & \FA2|Sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HA3|Carry~combout\,
	datab => \A[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \FA2|Sum~combout\,
	combout => \FA3|Cout~0_combout\);

-- Location: LCCOMB_X19_Y8_N6
\FA2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA2|Cout~0_combout\ = (\FA1|Cout~0_combout\ & ((pp(3)) # ((\B[1]~input_o\ & \A[2]~input_o\)))) # (!\FA1|Cout~0_combout\ & (\B[1]~input_o\ & (pp(3) & \A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \FA1|Cout~0_combout\,
	datac => pp(3),
	datad => \A[2]~input_o\,
	combout => \FA2|Cout~0_combout\);

-- Location: LCCOMB_X19_Y8_N16
\HA2|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \HA2|Sum~combout\ = \FA2|Cout~0_combout\ $ (((\B[1]~input_o\ & \A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \FA2|Cout~0_combout\,
	combout => \HA2|Sum~combout\);

-- Location: LCCOMB_X19_Y8_N12
\FA4|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA4|Sum~combout\ = \FA3|Cout~0_combout\ $ (\HA2|Sum~combout\ $ (((\B[2]~input_o\ & \A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA3|Cout~0_combout\,
	datab => \HA2|Sum~combout\,
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \FA4|Sum~combout\);

-- Location: LCCOMB_X18_Y3_N18
\HA4|Carry\ : cycloneive_lcell_comb
-- Equation(s):
-- \HA4|Carry~combout\ = (\B[3]~input_o\ & (\A[0]~input_o\ & \FA3|Sum~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \A[0]~input_o\,
	datad => \FA3|Sum~combout\,
	combout => \HA4|Carry~combout\);

-- Location: LCCOMB_X18_Y3_N28
\FA6|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA6|Sum~combout\ = \FA4|Sum~combout\ $ (\HA4|Carry~combout\ $ (((\A[1]~input_o\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA4|Sum~combout\,
	datab => \A[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \HA4|Carry~combout\,
	combout => \FA6|Sum~combout\);

-- Location: LCCOMB_X18_Y3_N10
\FA6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA6|Cout~0_combout\ = (\FA4|Sum~combout\ & ((\HA4|Carry~combout\) # ((\A[1]~input_o\ & \B[3]~input_o\)))) # (!\FA4|Sum~combout\ & (\A[1]~input_o\ & (\B[3]~input_o\ & \HA4|Carry~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA4|Sum~combout\,
	datab => \A[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \HA4|Carry~combout\,
	combout => \FA6|Cout~0_combout\);

-- Location: LCCOMB_X18_Y3_N22
\FA4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA4|Cout~0_combout\ = (\HA2|Sum~combout\ & ((\FA3|Cout~0_combout\) # ((\B[2]~input_o\ & \A[2]~input_o\)))) # (!\HA2|Sum~combout\ & (\FA3|Cout~0_combout\ & (\B[2]~input_o\ & \A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HA2|Sum~combout\,
	datab => \FA3|Cout~0_combout\,
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \FA4|Cout~0_combout\);

-- Location: LCCOMB_X19_Y8_N30
\HA2|Carry\ : cycloneive_lcell_comb
-- Equation(s):
-- \HA2|Carry~combout\ = (\B[1]~input_o\ & (\A[3]~input_o\ & \FA2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \FA2|Cout~0_combout\,
	combout => \HA2|Carry~combout\);

-- Location: LCCOMB_X18_Y3_N24
\FA5|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA5|Sum~combout\ = \FA4|Cout~0_combout\ $ (\HA2|Carry~combout\ $ (((\A[3]~input_o\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \FA4|Cout~0_combout\,
	datad => \HA2|Carry~combout\,
	combout => \FA5|Sum~combout\);

-- Location: LCCOMB_X18_Y3_N20
\FA7|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA7|Sum~combout\ = \FA6|Cout~0_combout\ $ (\FA5|Sum~combout\ $ (((\B[3]~input_o\ & \A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA6|Cout~0_combout\,
	datab => \FA5|Sum~combout\,
	datac => \B[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \FA7|Sum~combout\);

-- Location: LCCOMB_X18_Y3_N6
\FA7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA7|Cout~0_combout\ = (\FA6|Cout~0_combout\ & ((\FA5|Sum~combout\) # ((\B[3]~input_o\ & \A[2]~input_o\)))) # (!\FA6|Cout~0_combout\ & (\FA5|Sum~combout\ & (\B[3]~input_o\ & \A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA6|Cout~0_combout\,
	datab => \FA5|Sum~combout\,
	datac => \B[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \FA7|Cout~0_combout\);

-- Location: LCCOMB_X18_Y3_N0
\FA5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA5|Cout~0_combout\ = (\FA4|Cout~0_combout\ & ((\HA2|Carry~combout\) # ((\A[3]~input_o\ & \B[2]~input_o\)))) # (!\FA4|Cout~0_combout\ & (\A[3]~input_o\ & (\B[2]~input_o\ & \HA2|Carry~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \FA4|Cout~0_combout\,
	datad => \HA2|Carry~combout\,
	combout => \FA5|Cout~0_combout\);

-- Location: LCCOMB_X18_Y3_N26
\FA8|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA8|Sum~0_combout\ = \FA7|Cout~0_combout\ $ (\FA5|Cout~0_combout\ $ (((\B[3]~input_o\ & \A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA7|Cout~0_combout\,
	datab => \FA5|Cout~0_combout\,
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \FA8|Sum~0_combout\);

-- Location: LCCOMB_X18_Y3_N4
\FA8|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA8|Cout~0_combout\ = (\FA7|Cout~0_combout\ & ((\FA5|Cout~0_combout\) # ((\B[3]~input_o\ & \A[3]~input_o\)))) # (!\FA7|Cout~0_combout\ & (\FA5|Cout~0_combout\ & (\B[3]~input_o\ & \A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA7|Cout~0_combout\,
	datab => \FA5|Cout~0_combout\,
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \FA8|Cout~0_combout\);

ww_P(0) <= \P[0]~output_o\;

ww_P(1) <= \P[1]~output_o\;

ww_P(2) <= \P[2]~output_o\;

ww_P(3) <= \P[3]~output_o\;

ww_P(4) <= \P[4]~output_o\;

ww_P(5) <= \P[5]~output_o\;

ww_P(6) <= \P[6]~output_o\;

ww_P(7) <= \P[7]~output_o\;
END structure;


