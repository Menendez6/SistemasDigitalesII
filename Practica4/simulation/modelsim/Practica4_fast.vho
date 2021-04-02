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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "04/01/2021 22:54:16"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	alu_op : IN std_logic_vector(3 DOWNTO 0);
	shamt : IN std_logic_vector(2 DOWNTO 0);
	alu_out : OUT std_logic_vector(3 DOWNTO 0);
	z : OUT std_logic;
	lt : OUT std_logic;
	ge : OUT std_logic
	);
END ALU;

-- Design Ports Information
-- alu_out[0]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out[1]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out[2]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out[3]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- z	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lt	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ge	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_op[1]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- alu_op[0]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- shamt[2]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- alu_op[3]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- shamt[1]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[0]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- shamt[0]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- alu_op[2]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_alu_op : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_shamt : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_alu_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_z : std_logic;
SIGNAL ww_lt : std_logic;
SIGNAL ww_ge : std_logic;
SIGNAL \i1_sr|Add1|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \i1_sr|Add1|auto_generated|_~1_combout\ : std_logic;
SIGNAL \i1_sr|Add1|auto_generated|_~2_combout\ : std_logic;
SIGNAL \i1_sr|Add1|auto_generated|_~3_combout\ : std_logic;
SIGNAL \Mux3~8_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \i1_sr|Equal0~0_combout\ : std_logic;
SIGNAL \i1_sr|Add1|auto_generated|_~4_combout\ : std_logic;
SIGNAL \i1_sr|Add1|auto_generated|result_int[0]~1_cout\ : std_logic;
SIGNAL \i1_sr|Add1|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \Mux3~9_combout\ : std_logic;
SIGNAL \Mux3~12_combout\ : std_logic;
SIGNAL \Mux3~10_combout\ : std_logic;
SIGNAL \a_ext[4]~1_combout\ : std_logic;
SIGNAL \a_ext[4]~0_combout\ : std_logic;
SIGNAL \i1_sr|Add1|auto_generated|_~0_combout\ : std_logic;
SIGNAL \i1_sr|Add1|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \i1_sr|Add1|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \i1_sr|Add1|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \i1_sr|Add1|auto_generated|result_int[4]~9\ : std_logic;
SIGNAL \i1_sr|Add1|auto_generated|result_int[5]~10_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~11_combout\ : std_logic;
SIGNAL \i1_sr|Add1|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux2~9_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \i1_sr|Equal0~1_combout\ : std_logic;
SIGNAL \Mux2~10_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \i1_sr|Add1|auto_generated|result_int[4]~8_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \i1_sr|Add1~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \shamt~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \b~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \alu_op~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i1_sr|Add1|auto_generated|ALT_INV_result_int[5]~10_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_alu_op <= alu_op;
ww_shamt <= shamt;
alu_out <= ww_alu_out;
z <= ww_z;
lt <= ww_lt;
ge <= ww_ge;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\i1_sr|Add1|auto_generated|ALT_INV_result_int[5]~10_combout\ <= NOT \i1_sr|Add1|auto_generated|result_int[5]~10_combout\;

-- Location: LCCOMB_X32_Y22_N6
\i1_sr|Add1|auto_generated|result_int[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1|auto_generated|result_int[3]~6_combout\ = (\i1_sr|Add1|auto_generated|_~2_combout\ & ((\a~combout\(2) & (!\i1_sr|Add1|auto_generated|result_int[2]~5\)) # (!\a~combout\(2) & ((\i1_sr|Add1|auto_generated|result_int[2]~5\) # (GND))))) # 
-- (!\i1_sr|Add1|auto_generated|_~2_combout\ & ((\a~combout\(2) & (\i1_sr|Add1|auto_generated|result_int[2]~5\ & VCC)) # (!\a~combout\(2) & (!\i1_sr|Add1|auto_generated|result_int[2]~5\))))
-- \i1_sr|Add1|auto_generated|result_int[3]~7\ = CARRY((\i1_sr|Add1|auto_generated|_~2_combout\ & ((!\i1_sr|Add1|auto_generated|result_int[2]~5\) # (!\a~combout\(2)))) # (!\i1_sr|Add1|auto_generated|_~2_combout\ & (!\a~combout\(2) & 
-- !\i1_sr|Add1|auto_generated|result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1_sr|Add1|auto_generated|_~2_combout\,
	datab => \a~combout\(2),
	datad => VCC,
	cin => \i1_sr|Add1|auto_generated|result_int[2]~5\,
	combout => \i1_sr|Add1|auto_generated|result_int[3]~6_combout\,
	cout => \i1_sr|Add1|auto_generated|result_int[3]~7\);

-- Location: LCCOMB_X32_Y22_N24
\i1_sr|Add1|auto_generated|_~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1|auto_generated|_~1_combout\ = \i1_sr|Equal0~0_combout\ $ (\b~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1_sr|Equal0~0_combout\,
	datad => \b~combout\(3),
	combout => \i1_sr|Add1|auto_generated|_~1_combout\);

-- Location: LCCOMB_X32_Y22_N26
\i1_sr|Add1|auto_generated|_~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1|auto_generated|_~2_combout\ = \i1_sr|Equal0~0_combout\ $ (\b~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1_sr|Equal0~0_combout\,
	datad => \b~combout\(2),
	combout => \i1_sr|Add1|auto_generated|_~2_combout\);

-- Location: LCCOMB_X32_Y22_N20
\i1_sr|Add1|auto_generated|_~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1|auto_generated|_~3_combout\ = \i1_sr|Equal0~0_combout\ $ (\b~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1_sr|Equal0~0_combout\,
	datad => \b~combout\(1),
	combout => \i1_sr|Add1|auto_generated|_~3_combout\);

-- Location: LCCOMB_X31_Y21_N20
\Mux3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~8_combout\ = (\shamt~combout\(0) & (((\shamt~combout\(1) & !\a~combout\(3))) # (!\alu_op~combout\(2)))) # (!\shamt~combout\(0) & (!\alu_op~combout\(2) & (\shamt~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(0),
	datab => \alu_op~combout\(2),
	datac => \shamt~combout\(1),
	datad => \a~combout\(3),
	combout => \Mux3~8_combout\);

-- Location: LCCOMB_X31_Y21_N24
\Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (!\shamt~combout\(0) & ((\shamt~combout\(1) & ((\a~combout\(3)))) # (!\shamt~combout\(1) & (\a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \shamt~combout\(0),
	datac => \shamt~combout\(1),
	datad => \a~combout\(3),
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X31_Y21_N2
\Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux2~2_combout\) # ((\shamt~combout\(0) & (!\shamt~combout\(1) & \a~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \shamt~combout\(0),
	datac => \shamt~combout\(1),
	datad => \a~combout\(2),
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X31_Y22_N24
\Mux2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\alu_op~combout\(2) & ((\b~combout\(1) & ((\alu_op~combout\(1)))) # (!\b~combout\(1) & (!\alu_op~combout\(0))))) # (!\alu_op~combout\(2) & (\alu_op~combout\(0) & ((!\alu_op~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(0),
	datab => \b~combout\(1),
	datac => \alu_op~combout\(1),
	datad => \alu_op~combout\(2),
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X31_Y21_N30
\Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\shamt~combout\(0) & (((!\shamt~combout\(1) & \a~combout\(1))))) # (!\shamt~combout\(0) & (\a~combout\(0) & (\shamt~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \shamt~combout\(0),
	datac => \shamt~combout\(1),
	datad => \a~combout\(1),
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X31_Y21_N16
\Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (!\shamt~combout\(0) & (\a~combout\(2) & ((\alu_op~combout\(2)) # (!\alu_op~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(3),
	datab => \shamt~combout\(0),
	datac => \alu_op~combout\(2),
	datad => \a~combout\(2),
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X31_Y21_N26
\Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\Mux1~3_combout\) # ((\shamt~combout\(0) & (\alu_op~combout\(2) & \a~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~3_combout\,
	datab => \shamt~combout\(0),
	datac => \alu_op~combout\(2),
	datad => \a~combout\(3),
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X31_Y21_N28
\Mux1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (\a_ext[4]~0_combout\ & ((\Mux1~2_combout\) # ((\Mux1~4_combout\ & !\shamt~combout\(1))))) # (!\a_ext[4]~0_combout\ & (\Mux1~4_combout\ & (!\shamt~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_ext[4]~0_combout\,
	datab => \Mux1~4_combout\,
	datac => \shamt~combout\(1),
	datad => \Mux1~2_combout\,
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X31_Y21_N12
\Mux0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (\alu_op~combout\(3)) # ((!\shamt~combout\(2) & (!\shamt~combout\(1) & !\shamt~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(3),
	datab => \shamt~combout\(2),
	datac => \shamt~combout\(1),
	datad => \shamt~combout\(0),
	combout => \Mux0~6_combout\);

-- Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_op[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_alu_op(1),
	combout => \alu_op~combout\(1));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_op[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_alu_op(3),
	combout => \alu_op~combout\(3));

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_op[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_alu_op(2),
	combout => \alu_op~combout\(2));

-- Location: LCCOMB_X31_Y22_N16
\i1_sr|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Equal0~0_combout\ = (!\alu_op~combout\(0) & (!\alu_op~combout\(1) & (!\alu_op~combout\(3) & !\alu_op~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(0),
	datab => \alu_op~combout\(1),
	datac => \alu_op~combout\(3),
	datad => \alu_op~combout\(2),
	combout => \i1_sr|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y22_N14
\i1_sr|Add1|auto_generated|_~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1|auto_generated|_~4_combout\ = \b~combout\(0) $ (\i1_sr|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(0),
	datad => \i1_sr|Equal0~0_combout\,
	combout => \i1_sr|Add1|auto_generated|_~4_combout\);

-- Location: LCCOMB_X32_Y22_N0
\i1_sr|Add1|auto_generated|result_int[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1|auto_generated|result_int[0]~1_cout\ = CARRY(!\i1_sr|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1_sr|Equal0~0_combout\,
	datad => VCC,
	cout => \i1_sr|Add1|auto_generated|result_int[0]~1_cout\);

-- Location: LCCOMB_X32_Y22_N2
\i1_sr|Add1|auto_generated|result_int[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1|auto_generated|result_int[1]~2_combout\ = (\a~combout\(0) & ((\i1_sr|Add1|auto_generated|_~4_combout\ & (!\i1_sr|Add1|auto_generated|result_int[0]~1_cout\)) # (!\i1_sr|Add1|auto_generated|_~4_combout\ & 
-- (\i1_sr|Add1|auto_generated|result_int[0]~1_cout\ & VCC)))) # (!\a~combout\(0) & ((\i1_sr|Add1|auto_generated|_~4_combout\ & ((\i1_sr|Add1|auto_generated|result_int[0]~1_cout\) # (GND))) # (!\i1_sr|Add1|auto_generated|_~4_combout\ & 
-- (!\i1_sr|Add1|auto_generated|result_int[0]~1_cout\))))
-- \i1_sr|Add1|auto_generated|result_int[1]~3\ = CARRY((\a~combout\(0) & (\i1_sr|Add1|auto_generated|_~4_combout\ & !\i1_sr|Add1|auto_generated|result_int[0]~1_cout\)) # (!\a~combout\(0) & ((\i1_sr|Add1|auto_generated|_~4_combout\) # 
-- (!\i1_sr|Add1|auto_generated|result_int[0]~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \i1_sr|Add1|auto_generated|_~4_combout\,
	datad => VCC,
	cin => \i1_sr|Add1|auto_generated|result_int[0]~1_cout\,
	combout => \i1_sr|Add1|auto_generated|result_int[1]~2_combout\,
	cout => \i1_sr|Add1|auto_generated|result_int[1]~3\);

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_op[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_alu_op(0),
	combout => \alu_op~combout\(0));

-- Location: LCCOMB_X33_Y20_N28
\Mux3~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~9_combout\ = (\alu_op~combout\(0) & (\Mux3~8_combout\)) # (!\alu_op~combout\(0) & ((\i1_sr|Add1|auto_generated|result_int[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~8_combout\,
	datac => \i1_sr|Add1|auto_generated|result_int[1]~2_combout\,
	datad => \alu_op~combout\(0),
	combout => \Mux3~9_combout\);

-- Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: LCCOMB_X33_Y20_N18
\Mux3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~12_combout\ = (\alu_op~combout\(0) & (((\alu_op~combout\(3))))) # (!\alu_op~combout\(0) & (!\alu_op~combout\(3) & (\a~combout\(0) $ (\b~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(0),
	datab => \a~combout\(0),
	datac => \b~combout\(0),
	datad => \alu_op~combout\(3),
	combout => \Mux3~12_combout\);

-- Location: LCCOMB_X33_Y20_N6
\Mux3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~10_combout\ = (\alu_op~combout\(0) & (!\Mux3~9_combout\ & ((\alu_op~combout\(2)) # (!\Mux3~12_combout\)))) # (!\alu_op~combout\(0) & ((\alu_op~combout\(2) & ((\Mux3~12_combout\))) # (!\alu_op~combout\(2) & (\Mux3~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(0),
	datab => \Mux3~9_combout\,
	datac => \alu_op~combout\(2),
	datad => \Mux3~12_combout\,
	combout => \Mux3~10_combout\);

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: LCCOMB_X32_Y22_N22
\a_ext[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \a_ext[4]~1_combout\ = (\a_ext[4]~0_combout\ & (\alu_op~combout\(1) & (\a~combout\(3) & !\alu_op~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_ext[4]~0_combout\,
	datab => \alu_op~combout\(1),
	datac => \a~combout\(3),
	datad => \alu_op~combout\(0),
	combout => \a_ext[4]~1_combout\);

-- Location: LCCOMB_X33_Y20_N12
\a_ext[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \a_ext[4]~0_combout\ = (!\alu_op~combout\(3) & !\alu_op~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_op~combout\(3),
	datac => \alu_op~combout\(2),
	combout => \a_ext[4]~0_combout\);

-- Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: LCCOMB_X32_Y22_N12
\i1_sr|Add1|auto_generated|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1|auto_generated|_~0_combout\ = (!\alu_op~combout\(0) & (\a_ext[4]~0_combout\ & ((\b~combout\(3)) # (!\alu_op~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(0),
	datab => \alu_op~combout\(1),
	datac => \a_ext[4]~0_combout\,
	datad => \b~combout\(3),
	combout => \i1_sr|Add1|auto_generated|_~0_combout\);

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: LCCOMB_X32_Y22_N4
\i1_sr|Add1|auto_generated|result_int[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1|auto_generated|result_int[2]~4_combout\ = ((\i1_sr|Add1|auto_generated|_~3_combout\ $ (\a~combout\(1) $ (\i1_sr|Add1|auto_generated|result_int[1]~3\)))) # (GND)
-- \i1_sr|Add1|auto_generated|result_int[2]~5\ = CARRY((\i1_sr|Add1|auto_generated|_~3_combout\ & (\a~combout\(1) & !\i1_sr|Add1|auto_generated|result_int[1]~3\)) # (!\i1_sr|Add1|auto_generated|_~3_combout\ & ((\a~combout\(1)) # 
-- (!\i1_sr|Add1|auto_generated|result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1_sr|Add1|auto_generated|_~3_combout\,
	datab => \a~combout\(1),
	datad => VCC,
	cin => \i1_sr|Add1|auto_generated|result_int[1]~3\,
	combout => \i1_sr|Add1|auto_generated|result_int[2]~4_combout\,
	cout => \i1_sr|Add1|auto_generated|result_int[2]~5\);

-- Location: LCCOMB_X32_Y22_N8
\i1_sr|Add1|auto_generated|result_int[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1|auto_generated|result_int[4]~8_combout\ = ((\i1_sr|Add1|auto_generated|_~1_combout\ $ (\a~combout\(3) $ (\i1_sr|Add1|auto_generated|result_int[3]~7\)))) # (GND)
-- \i1_sr|Add1|auto_generated|result_int[4]~9\ = CARRY((\i1_sr|Add1|auto_generated|_~1_combout\ & (\a~combout\(3) & !\i1_sr|Add1|auto_generated|result_int[3]~7\)) # (!\i1_sr|Add1|auto_generated|_~1_combout\ & ((\a~combout\(3)) # 
-- (!\i1_sr|Add1|auto_generated|result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1_sr|Add1|auto_generated|_~1_combout\,
	datab => \a~combout\(3),
	datad => VCC,
	cin => \i1_sr|Add1|auto_generated|result_int[3]~7\,
	combout => \i1_sr|Add1|auto_generated|result_int[4]~8_combout\,
	cout => \i1_sr|Add1|auto_generated|result_int[4]~9\);

-- Location: LCCOMB_X32_Y22_N10
\i1_sr|Add1|auto_generated|result_int[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1|auto_generated|result_int[5]~10_combout\ = \a_ext[4]~1_combout\ $ (\i1_sr|Add1|auto_generated|result_int[4]~9\ $ (!\i1_sr|Add1|auto_generated|_~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \a_ext[4]~1_combout\,
	datad => \i1_sr|Add1|auto_generated|_~0_combout\,
	cin => \i1_sr|Add1|auto_generated|result_int[4]~9\,
	combout => \i1_sr|Add1|auto_generated|result_int[5]~10_combout\);

-- Location: LCCOMB_X33_Y20_N30
\Mux3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\alu_op~combout\(0) & (\b~combout\(0) & \a~combout\(0))) # (!\alu_op~combout\(0) & ((\b~combout\(0)) # (\a~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(0),
	datab => \b~combout\(0),
	datac => \a~combout\(0),
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X33_Y20_N24
\Mux3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (!\alu_op~combout\(3) & ((\alu_op~combout\(2) & ((\Mux3~6_combout\))) # (!\alu_op~combout\(2) & (\i1_sr|Add1|auto_generated|result_int[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(2),
	datab => \alu_op~combout\(3),
	datac => \i1_sr|Add1|auto_generated|result_int[5]~10_combout\,
	datad => \Mux3~6_combout\,
	combout => \Mux3~7_combout\);

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\shamt[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_shamt(0),
	combout => \shamt~combout\(0));

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\shamt[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_shamt(1),
	combout => \shamt~combout\(1));

-- Location: LCCOMB_X31_Y21_N8
\Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\shamt~combout\(0) & (((\shamt~combout\(1)) # (\a~combout\(1))))) # (!\shamt~combout\(0) & (\a~combout\(0) & (!\shamt~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \shamt~combout\(0),
	datac => \shamt~combout\(1),
	datad => \a~combout\(1),
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X31_Y21_N10
\Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux3~2_combout\) # ((\shamt~combout\(1) & \a~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~2_combout\,
	datac => \shamt~combout\(1),
	datad => \a~combout\(2),
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X33_Y20_N16
\Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\shamt~combout\(2) & (\alu_op~combout\(3) & (\a~combout\(3)))) # (!\shamt~combout\(2) & (((\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(2),
	datab => \alu_op~combout\(3),
	datac => \a~combout\(3),
	datad => \Mux3~3_combout\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X33_Y20_N2
\Mux3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\Mux3~4_combout\) # (!\alu_op~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(0),
	datac => \Mux3~4_combout\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X33_Y20_N0
\Mux3~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~11_combout\ = (\alu_op~combout\(1) & (((\Mux3~7_combout\)))) # (!\alu_op~combout\(1) & (\Mux3~10_combout\ & ((\Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~10_combout\,
	datab => \alu_op~combout\(1),
	datac => \Mux3~7_combout\,
	datad => \Mux3~5_combout\,
	combout => \Mux3~11_combout\);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: LCCOMB_X31_Y22_N26
\Mux2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (!\alu_op~combout\(0) & (\b~combout\(1) & \alu_op~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(0),
	datab => \b~combout\(1),
	datad => \alu_op~combout\(2),
	combout => \Mux2~8_combout\);

-- Location: LCCOMB_X31_Y21_N4
\Mux2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\shamt~combout\(1) & (((\a~combout\(1))))) # (!\shamt~combout\(1) & (\shamt~combout\(0) & (\a~combout\(0) $ (\a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \shamt~combout\(0),
	datac => \shamt~combout\(1),
	datad => \a~combout\(1),
	combout => \Mux2~5_combout\);

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\shamt[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_shamt(2),
	combout => \shamt~combout\(2));

-- Location: LCCOMB_X31_Y22_N22
\Mux2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (\alu_op~combout\(2) & (((\a~combout\(1))))) # (!\alu_op~combout\(2) & (!\shamt~combout\(2) & (\Mux2~5_combout\ $ (\a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(2),
	datab => \Mux2~5_combout\,
	datac => \a~combout\(1),
	datad => \shamt~combout\(2),
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X31_Y22_N28
\Mux2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~9_combout\ = (!\alu_op~combout\(3) & ((\Mux2~6_combout\ & (\Mux2~7_combout\)) # (!\Mux2~6_combout\ & ((\Mux2~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~7_combout\,
	datab => \Mux2~8_combout\,
	datac => \alu_op~combout\(3),
	datad => \Mux2~6_combout\,
	combout => \Mux2~9_combout\);

-- Location: LCCOMB_X31_Y21_N14
\Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\alu_op~combout\(3) & (\a~combout\(3) & ((\shamt~combout\(2)) # (\shamt~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(3),
	datab => \shamt~combout\(2),
	datac => \shamt~combout\(1),
	datad => \a~combout\(3),
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X31_Y22_N2
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\alu_op~combout\(0) & (!\alu_op~combout\(1) & \alu_op~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(0),
	datab => \alu_op~combout\(1),
	datad => \alu_op~combout\(2),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X31_Y22_N20
\Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\Mux2~0_combout\ & ((\Mux2~1_combout\) # ((\Mux2~3_combout\ & !\shamt~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~3_combout\,
	datab => \shamt~combout\(2),
	datac => \Mux2~1_combout\,
	datad => \Mux2~0_combout\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X31_Y22_N30
\i1_sr|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Equal0~1_combout\ = (!\alu_op~combout\(0) & (!\alu_op~combout\(1) & !\alu_op~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(0),
	datab => \alu_op~combout\(1),
	datad => \alu_op~combout\(2),
	combout => \i1_sr|Equal0~1_combout\);

-- Location: LCCOMB_X31_Y22_N0
\Mux2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~10_combout\ = (\Mux2~9_combout\) # ((\Mux2~4_combout\) # ((\i1_sr|Add1|auto_generated|result_int[2]~4_combout\ & \i1_sr|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1_sr|Add1|auto_generated|result_int[2]~4_combout\,
	datab => \Mux2~9_combout\,
	datac => \Mux2~4_combout\,
	datad => \i1_sr|Equal0~1_combout\,
	combout => \Mux2~10_combout\);

-- Location: LCCOMB_X31_Y22_N6
\Mux1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = (\Mux1~5_combout\ & (((\Mux2~1_combout\ & \alu_op~combout\(2))) # (!\shamt~combout\(2)))) # (!\Mux1~5_combout\ & (((\Mux2~1_combout\ & \alu_op~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~5_combout\,
	datab => \shamt~combout\(2),
	datac => \Mux2~1_combout\,
	datad => \alu_op~combout\(2),
	combout => \Mux1~6_combout\);

-- Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: LCCOMB_X32_Y22_N16
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\a~combout\(2) & ((\b~combout\(2) & ((\alu_op~combout\(1)))) # (!\b~combout\(2) & (!\alu_op~combout\(0))))) # (!\a~combout\(2) & (!\alu_op~combout\(0) & ((\b~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(0),
	datab => \alu_op~combout\(1),
	datac => \a~combout\(2),
	datad => \b~combout\(2),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X31_Y22_N18
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\alu_op~combout\(3) & \alu_op~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_op~combout\(3),
	datad => \alu_op~combout\(2),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X31_Y22_N4
\Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\i1_sr|Add1|auto_generated|result_int[3]~6_combout\ & ((\i1_sr|Equal0~1_combout\) # ((\Mux1~0_combout\ & \Mux0~0_combout\)))) # (!\i1_sr|Add1|auto_generated|result_int[3]~6_combout\ & (((\Mux1~0_combout\ & \Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1_sr|Add1|auto_generated|result_int[3]~6_combout\,
	datab => \i1_sr|Equal0~1_combout\,
	datac => \Mux1~0_combout\,
	datad => \Mux0~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X31_Y22_N8
\Mux1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~7_combout\ = (\Mux1~1_combout\) # ((\Mux1~6_combout\ & (!\alu_op~combout\(1) & \alu_op~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~6_combout\,
	datab => \alu_op~combout\(1),
	datac => \Mux1~1_combout\,
	datad => \alu_op~combout\(0),
	combout => \Mux1~7_combout\);

-- Location: LCCOMB_X32_Y22_N18
\Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\a~combout\(3) & ((\b~combout\(3) & ((\alu_op~combout\(1)))) # (!\b~combout\(3) & (!\alu_op~combout\(0))))) # (!\a~combout\(3) & (!\alu_op~combout\(0) & ((\b~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(0),
	datab => \alu_op~combout\(1),
	datac => \a~combout\(3),
	datad => \b~combout\(3),
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X31_Y22_N10
\Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\i1_sr|Equal0~1_combout\ & ((\i1_sr|Add1|auto_generated|result_int[4]~8_combout\) # ((\Mux0~0_combout\ & \Mux0~1_combout\)))) # (!\i1_sr|Equal0~1_combout\ & (\Mux0~0_combout\ & ((\Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1_sr|Equal0~1_combout\,
	datab => \Mux0~0_combout\,
	datac => \i1_sr|Add1|auto_generated|result_int[4]~8_combout\,
	datad => \Mux0~1_combout\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X31_Y21_N0
\Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (!\shamt~combout\(1) & ((\shamt~combout\(0) & (\a~combout\(2))) # (!\shamt~combout\(0) & ((\a~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \shamt~combout\(0),
	datac => \shamt~combout\(1),
	datad => \a~combout\(3),
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X31_Y21_N6
\Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\shamt~combout\(1) & ((\shamt~combout\(0) & (\a~combout\(0))) # (!\shamt~combout\(0) & ((\a~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \shamt~combout\(0),
	datac => \shamt~combout\(1),
	datad => \a~combout\(1),
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X31_Y21_N18
\Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (\a_ext[4]~0_combout\ & (!\shamt~combout\(2) & ((\Mux0~4_combout\) # (\Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_ext[4]~0_combout\,
	datab => \Mux0~4_combout\,
	datac => \shamt~combout\(2),
	datad => \Mux0~3_combout\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X31_Y21_N22
\Mux0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (\Mux0~5_combout\) # ((\Mux0~6_combout\ & (\alu_op~combout\(2) & \a~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~6_combout\,
	datab => \Mux0~5_combout\,
	datac => \alu_op~combout\(2),
	datad => \a~combout\(3),
	combout => \Mux0~7_combout\);

-- Location: LCCOMB_X31_Y22_N12
\Mux0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = (\Mux0~2_combout\) # ((!\alu_op~combout\(1) & (\Mux0~7_combout\ & \alu_op~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~2_combout\,
	datab => \alu_op~combout\(1),
	datac => \Mux0~7_combout\,
	datad => \alu_op~combout\(0),
	combout => \Mux0~8_combout\);

-- Location: LCCOMB_X32_Y22_N28
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\b~combout\(2) & (\a~combout\(2) & (\b~combout\(1) $ (!\a~combout\(1))))) # (!\b~combout\(2) & (!\a~combout\(2) & (\b~combout\(1) $ (!\a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datab => \b~combout\(1),
	datac => \a~combout\(2),
	datad => \a~combout\(1),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X33_Y20_N26
\i1_sr|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1~0_combout\ = \b~combout\(0) $ (\a~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(0),
	datac => \a~combout\(0),
	combout => \i1_sr|Add1~0_combout\);

-- Location: LCCOMB_X32_Y22_N30
\Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (\Equal2~0_combout\ & (!\i1_sr|Add1~0_combout\ & (\a~combout\(3) $ (!\b~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \Equal2~0_combout\,
	datac => \i1_sr|Add1~0_combout\,
	datad => \b~combout\(3),
	combout => \Equal2~1_combout\);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux3~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(0));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(1));

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(2));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(3));

-- Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\z~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_z);

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lt~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i1_sr|Add1|auto_generated|result_int[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lt);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ge~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i1_sr|Add1|auto_generated|ALT_INV_result_int[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ge);
END structure;


