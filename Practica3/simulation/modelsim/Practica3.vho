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

-- DATE "03/03/2021 08:47:49"

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

ENTITY 	Practica3 IS
    PORT (
	clk : IN std_logic;
	reset_n : IN std_logic;
	dig_led : OUT std_logic_vector(16 DOWNTO 0);
	digito : OUT std_logic_vector(7 DOWNTO 0)
	);
END Practica3;

-- Design Ports Information
-- dig_led[0]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dig_led[1]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dig_led[2]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dig_led[3]	=>  Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dig_led[4]	=>  Location: PIN_R15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dig_led[5]	=>  Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dig_led[6]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dig_led[7]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dig_led[8]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dig_led[9]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dig_led[10]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dig_led[11]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dig_led[12]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dig_led[13]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dig_led[14]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dig_led[15]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dig_led[16]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- digito[0]	=>  Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- digito[1]	=>  Location: PIN_T15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- digito[2]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- digito[3]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- digito[4]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- digito[5]	=>  Location: PIN_U14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- digito[6]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- digito[7]	=>  Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_n	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Practica3 IS
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
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_dig_led : std_logic_vector(16 DOWNTO 0);
SIGNAL ww_digito : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_n~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_contador1ms|Add0~6_combout\ : std_logic;
SIGNAL \i_contador1ms|Add0~8_combout\ : std_logic;
SIGNAL \i_contador1ms|Add0~10_combout\ : std_logic;
SIGNAL \i_contador1ms|Add0~16_combout\ : std_logic;
SIGNAL \i_contador1ms|Add0~29\ : std_logic;
SIGNAL \i_contador1ms|Add0~30_combout\ : std_logic;
SIGNAL \i_contador1ms|Equal0~2_combout\ : std_logic;
SIGNAL \i_contador1ms|contador~0_combout\ : std_logic;
SIGNAL \i_contador1ms|contador~3_combout\ : std_logic;
SIGNAL \i_contador1ms|contador~5_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \i_contador1ms|Add0~0_combout\ : std_logic;
SIGNAL \reset_n~combout\ : std_logic;
SIGNAL \reset_n~clkctrl_outclk\ : std_logic;
SIGNAL \i_contador1ms|Add0~1\ : std_logic;
SIGNAL \i_contador1ms|Add0~2_combout\ : std_logic;
SIGNAL \i_contador1ms|Add0~3\ : std_logic;
SIGNAL \i_contador1ms|Add0~4_combout\ : std_logic;
SIGNAL \i_contador1ms|Add0~5\ : std_logic;
SIGNAL \i_contador1ms|Add0~7\ : std_logic;
SIGNAL \i_contador1ms|Add0~9\ : std_logic;
SIGNAL \i_contador1ms|Add0~11\ : std_logic;
SIGNAL \i_contador1ms|Add0~12_combout\ : std_logic;
SIGNAL \i_contador1ms|contador~4_combout\ : std_logic;
SIGNAL \i_contador1ms|Add0~13\ : std_logic;
SIGNAL \i_contador1ms|Add0~14_combout\ : std_logic;
SIGNAL \i_contador1ms|Add0~15\ : std_logic;
SIGNAL \i_contador1ms|Add0~17\ : std_logic;
SIGNAL \i_contador1ms|Add0~18_combout\ : std_logic;
SIGNAL \i_contador1ms|contador~2_combout\ : std_logic;
SIGNAL \i_contador1ms|Add0~19\ : std_logic;
SIGNAL \i_contador1ms|Add0~21\ : std_logic;
SIGNAL \i_contador1ms|Add0~22_combout\ : std_logic;
SIGNAL \i_contador1ms|Add0~23\ : std_logic;
SIGNAL \i_contador1ms|Add0~25\ : std_logic;
SIGNAL \i_contador1ms|Add0~26_combout\ : std_logic;
SIGNAL \i_contador1ms|Add0~27\ : std_logic;
SIGNAL \i_contador1ms|Add0~28_combout\ : std_logic;
SIGNAL \i_contador1ms|contador~1_combout\ : std_logic;
SIGNAL \i_contador1ms|Add0~24_combout\ : std_logic;
SIGNAL \i_contador1ms|Equal0~0_combout\ : std_logic;
SIGNAL \i_contador1ms|Equal0~3_combout\ : std_logic;
SIGNAL \i_contador1ms|Add0~20_combout\ : std_logic;
SIGNAL \i_contador1ms|Equal0~1_combout\ : std_logic;
SIGNAL \i_contador1ms|Equal0~4_combout\ : std_logic;
SIGNAL \i_Contador|contador[0]~0_combout\ : std_logic;
SIGNAL \i_Contador|contador[1]~2_combout\ : std_logic;
SIGNAL \i_Contador|contador[2]~1_combout\ : std_logic;
SIGNAL \i1_Registro1|s[6]~0_combout\ : std_logic;
SIGNAL \i1_Registro3|s[6]~0_combout\ : std_logic;
SIGNAL \i_Mux|Mux7~0_combout\ : std_logic;
SIGNAL \i_Mux|Mux7~1_combout\ : std_logic;
SIGNAL \i1_Registro0|s[6]~0_combout\ : std_logic;
SIGNAL \i_Mux|Mux7~2_combout\ : std_logic;
SIGNAL \i_Mux|Mux6~0_combout\ : std_logic;
SIGNAL \i1_Registro2|s[6]~0_combout\ : std_logic;
SIGNAL \i_Mux|Mux3~1_combout\ : std_logic;
SIGNAL \i1_Registro4|s[5]~0_combout\ : std_logic;
SIGNAL \i_Mux|Mux5~2_combout\ : std_logic;
SIGNAL \i_Selector|Mux7~8_combout\ : std_logic;
SIGNAL \i_Mux|Mux5~3_combout\ : std_logic;
SIGNAL \i_Mux|Mux5~4_combout\ : std_logic;
SIGNAL \i1_Registro6|s[5]~0_combout\ : std_logic;
SIGNAL \i_Mux|Mux3~0_combout\ : std_logic;
SIGNAL \i_Mux|Mux3~2_combout\ : std_logic;
SIGNAL \i_Selector|Mux7~7_combout\ : std_logic;
SIGNAL \i_Mux|Mux3~3_combout\ : std_logic;
SIGNAL \i1_Registro7|s[5]~0_combout\ : std_logic;
SIGNAL \i1_Registro5|s[5]~0_combout\ : std_logic;
SIGNAL \i_Mux|Mux2~0_combout\ : std_logic;
SIGNAL \i_Mux|Mux2~1_combout\ : std_logic;
SIGNAL \i_Mux|Mux1~0_combout\ : std_logic;
SIGNAL \i_Mux|Mux1~1_combout\ : std_logic;
SIGNAL \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \i_Selector|Mux7~0_combout\ : std_logic;
SIGNAL \i_Selector|Mux7~1_combout\ : std_logic;
SIGNAL \i_Selector|Mux7~2_combout\ : std_logic;
SIGNAL \i_Selector|Mux7~3_combout\ : std_logic;
SIGNAL \i_Selector|Mux7~4_combout\ : std_logic;
SIGNAL \i_Selector|Mux7~5_combout\ : std_logic;
SIGNAL \i_Selector|Mux7~6_combout\ : std_logic;
SIGNAL \i_contador1ms|contador\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i_Contador|contador\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \i1_Registro0|s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i1_Registro7|s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i1_Registro4|s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i1_Registro3|s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i1_Registro2|s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i1_Registro1|s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i1_Registro5|s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i1_Registro6|s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset_n~clkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset_n <= reset_n;
dig_led <= ww_dig_led;
digito <= ww_digito;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\i_Mux|Mux1~1_combout\ & \i_Mux|Mux2~1_combout\ & \i_Mux|Mux3~3_combout\ & \i_Mux|Mux5~4_combout\ & \i_Mux|Mux5~3_combout\ & \i_Mux|Mux6~0_combout\ & \i_Mux|Mux7~1_combout\);

\i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a1\ <= \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a2\ <= \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a3\ <= \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a4\ <= \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a5\ <= \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a6\ <= \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a7\ <= \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a8\ <= \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a9\ <= \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a10\ <= \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a11\ <= \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a12\ <= \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a13\ <= \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a14\ <= \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a15\ <= \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a16\ <= \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\reset_n~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset_n~combout\);
\ALT_INV_reset_n~clkctrl_outclk\ <= NOT \reset_n~clkctrl_outclk\;

-- Location: LCCOMB_X40_Y1_N6
\i_contador1ms|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contador1ms|Add0~6_combout\ = (\i_contador1ms|contador\(3) & (!\i_contador1ms|Add0~5\)) # (!\i_contador1ms|contador\(3) & ((\i_contador1ms|Add0~5\) # (GND)))
-- \i_contador1ms|Add0~7\ = CARRY((!\i_contador1ms|Add0~5\) # (!\i_contador1ms|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_contador1ms|contador\(3),
	datad => VCC,
	cin => \i_contador1ms|Add0~5\,
	combout => \i_contador1ms|Add0~6_combout\,
	cout => \i_contador1ms|Add0~7\);

-- Location: LCCOMB_X40_Y1_N8
\i_contador1ms|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contador1ms|Add0~8_combout\ = (\i_contador1ms|contador\(4) & (\i_contador1ms|Add0~7\ $ (GND))) # (!\i_contador1ms|contador\(4) & (!\i_contador1ms|Add0~7\ & VCC))
-- \i_contador1ms|Add0~9\ = CARRY((\i_contador1ms|contador\(4) & !\i_contador1ms|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_contador1ms|contador\(4),
	datad => VCC,
	cin => \i_contador1ms|Add0~7\,
	combout => \i_contador1ms|Add0~8_combout\,
	cout => \i_contador1ms|Add0~9\);

-- Location: LCCOMB_X40_Y1_N10
\i_contador1ms|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contador1ms|Add0~10_combout\ = (\i_contador1ms|contador\(5) & (!\i_contador1ms|Add0~9\)) # (!\i_contador1ms|contador\(5) & ((\i_contador1ms|Add0~9\) # (GND)))
-- \i_contador1ms|Add0~11\ = CARRY((!\i_contador1ms|Add0~9\) # (!\i_contador1ms|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_contador1ms|contador\(5),
	datad => VCC,
	cin => \i_contador1ms|Add0~9\,
	combout => \i_contador1ms|Add0~10_combout\,
	cout => \i_contador1ms|Add0~11\);

-- Location: LCCOMB_X40_Y1_N16
\i_contador1ms|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contador1ms|Add0~16_combout\ = (\i_contador1ms|contador\(8) & (\i_contador1ms|Add0~15\ $ (GND))) # (!\i_contador1ms|contador\(8) & (!\i_contador1ms|Add0~15\ & VCC))
-- \i_contador1ms|Add0~17\ = CARRY((\i_contador1ms|contador\(8) & !\i_contador1ms|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_contador1ms|contador\(8),
	datad => VCC,
	cin => \i_contador1ms|Add0~15\,
	combout => \i_contador1ms|Add0~16_combout\,
	cout => \i_contador1ms|Add0~17\);

-- Location: LCCOMB_X40_Y1_N28
\i_contador1ms|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contador1ms|Add0~28_combout\ = (\i_contador1ms|contador\(14) & (\i_contador1ms|Add0~27\ $ (GND))) # (!\i_contador1ms|contador\(14) & (!\i_contador1ms|Add0~27\ & VCC))
-- \i_contador1ms|Add0~29\ = CARRY((\i_contador1ms|contador\(14) & !\i_contador1ms|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_contador1ms|contador\(14),
	datad => VCC,
	cin => \i_contador1ms|Add0~27\,
	combout => \i_contador1ms|Add0~28_combout\,
	cout => \i_contador1ms|Add0~29\);

-- Location: LCCOMB_X40_Y1_N30
\i_contador1ms|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contador1ms|Add0~30_combout\ = \i_contador1ms|Add0~29\ $ (\i_contador1ms|contador\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i_contador1ms|contador\(15),
	cin => \i_contador1ms|Add0~29\,
	combout => \i_contador1ms|Add0~30_combout\);

-- Location: LCFF_X39_Y1_N25
\i_contador1ms|contador[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contador1ms|contador~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contador1ms|contador\(15));

-- Location: LCFF_X39_Y1_N13
\i_contador1ms|contador[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contador1ms|contador~3_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contador1ms|contador\(8));

-- Location: LCFF_X40_Y1_N11
\i_contador1ms|contador[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contador1ms|Add0~10_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contador1ms|contador\(5));

-- Location: LCFF_X39_Y1_N31
\i_contador1ms|contador[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contador1ms|contador~5_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contador1ms|contador\(4));

-- Location: LCCOMB_X39_Y1_N20
\i_contador1ms|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contador1ms|Equal0~2_combout\ = (\i_contador1ms|contador\(6) & (!\i_contador1ms|contador\(7) & (!\i_contador1ms|contador\(5) & !\i_contador1ms|contador\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contador1ms|contador\(6),
	datab => \i_contador1ms|contador\(7),
	datac => \i_contador1ms|contador\(5),
	datad => \i_contador1ms|contador\(4),
	combout => \i_contador1ms|Equal0~2_combout\);

-- Location: LCFF_X40_Y1_N7
\i_contador1ms|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contador1ms|Add0~6_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contador1ms|contador\(3));

-- Location: LCCOMB_X39_Y1_N24
\i_contador1ms|contador~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contador1ms|contador~0_combout\ = (!\i_contador1ms|Equal0~4_combout\ & \i_contador1ms|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_contador1ms|Equal0~4_combout\,
	datad => \i_contador1ms|Add0~30_combout\,
	combout => \i_contador1ms|contador~0_combout\);

-- Location: LCCOMB_X39_Y1_N12
\i_contador1ms|contador~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contador1ms|contador~3_combout\ = (\i_contador1ms|Add0~16_combout\ & !\i_contador1ms|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_contador1ms|Add0~16_combout\,
	datad => \i_contador1ms|Equal0~4_combout\,
	combout => \i_contador1ms|contador~3_combout\);

-- Location: LCCOMB_X39_Y1_N30
\i_contador1ms|contador~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contador1ms|contador~5_combout\ = (\i_contador1ms|Add0~8_combout\ & !\i_contador1ms|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_contador1ms|Add0~8_combout\,
	datad => \i_contador1ms|Equal0~4_combout\,
	combout => \i_contador1ms|contador~5_combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X40_Y1_N0
\i_contador1ms|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contador1ms|Add0~0_combout\ = \i_contador1ms|contador\(0) $ (VCC)
-- \i_contador1ms|Add0~1\ = CARRY(\i_contador1ms|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_contador1ms|contador\(0),
	datad => VCC,
	combout => \i_contador1ms|Add0~0_combout\,
	cout => \i_contador1ms|Add0~1\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset_n~I\ : cycloneii_io
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
	padio => ww_reset_n,
	combout => \reset_n~combout\);

-- Location: CLKCTRL_G1
\reset_n~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset_n~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset_n~clkctrl_outclk\);

-- Location: LCFF_X40_Y1_N1
\i_contador1ms|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contador1ms|Add0~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contador1ms|contador\(0));

-- Location: LCCOMB_X40_Y1_N2
\i_contador1ms|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contador1ms|Add0~2_combout\ = (\i_contador1ms|contador\(1) & (!\i_contador1ms|Add0~1\)) # (!\i_contador1ms|contador\(1) & ((\i_contador1ms|Add0~1\) # (GND)))
-- \i_contador1ms|Add0~3\ = CARRY((!\i_contador1ms|Add0~1\) # (!\i_contador1ms|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_contador1ms|contador\(1),
	datad => VCC,
	cin => \i_contador1ms|Add0~1\,
	combout => \i_contador1ms|Add0~2_combout\,
	cout => \i_contador1ms|Add0~3\);

-- Location: LCFF_X40_Y1_N3
\i_contador1ms|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contador1ms|Add0~2_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contador1ms|contador\(1));

-- Location: LCCOMB_X40_Y1_N4
\i_contador1ms|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contador1ms|Add0~4_combout\ = (\i_contador1ms|contador\(2) & (\i_contador1ms|Add0~3\ $ (GND))) # (!\i_contador1ms|contador\(2) & (!\i_contador1ms|Add0~3\ & VCC))
-- \i_contador1ms|Add0~5\ = CARRY((\i_contador1ms|contador\(2) & !\i_contador1ms|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_contador1ms|contador\(2),
	datad => VCC,
	cin => \i_contador1ms|Add0~3\,
	combout => \i_contador1ms|Add0~4_combout\,
	cout => \i_contador1ms|Add0~5\);

-- Location: LCFF_X40_Y1_N5
\i_contador1ms|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contador1ms|Add0~4_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contador1ms|contador\(2));

-- Location: LCCOMB_X40_Y1_N12
\i_contador1ms|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contador1ms|Add0~12_combout\ = (\i_contador1ms|contador\(6) & (\i_contador1ms|Add0~11\ $ (GND))) # (!\i_contador1ms|contador\(6) & (!\i_contador1ms|Add0~11\ & VCC))
-- \i_contador1ms|Add0~13\ = CARRY((\i_contador1ms|contador\(6) & !\i_contador1ms|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_contador1ms|contador\(6),
	datad => VCC,
	cin => \i_contador1ms|Add0~11\,
	combout => \i_contador1ms|Add0~12_combout\,
	cout => \i_contador1ms|Add0~13\);

-- Location: LCCOMB_X39_Y1_N16
\i_contador1ms|contador~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contador1ms|contador~4_combout\ = (\i_contador1ms|Add0~12_combout\ & !\i_contador1ms|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_contador1ms|Add0~12_combout\,
	datad => \i_contador1ms|Equal0~4_combout\,
	combout => \i_contador1ms|contador~4_combout\);

-- Location: LCFF_X39_Y1_N17
\i_contador1ms|contador[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contador1ms|contador~4_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contador1ms|contador\(6));

-- Location: LCCOMB_X40_Y1_N14
\i_contador1ms|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contador1ms|Add0~14_combout\ = (\i_contador1ms|contador\(7) & (!\i_contador1ms|Add0~13\)) # (!\i_contador1ms|contador\(7) & ((\i_contador1ms|Add0~13\) # (GND)))
-- \i_contador1ms|Add0~15\ = CARRY((!\i_contador1ms|Add0~13\) # (!\i_contador1ms|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_contador1ms|contador\(7),
	datad => VCC,
	cin => \i_contador1ms|Add0~13\,
	combout => \i_contador1ms|Add0~14_combout\,
	cout => \i_contador1ms|Add0~15\);

-- Location: LCFF_X40_Y1_N15
\i_contador1ms|contador[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contador1ms|Add0~14_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contador1ms|contador\(7));

-- Location: LCCOMB_X40_Y1_N18
\i_contador1ms|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contador1ms|Add0~18_combout\ = (\i_contador1ms|contador\(9) & (!\i_contador1ms|Add0~17\)) # (!\i_contador1ms|contador\(9) & ((\i_contador1ms|Add0~17\) # (GND)))
-- \i_contador1ms|Add0~19\ = CARRY((!\i_contador1ms|Add0~17\) # (!\i_contador1ms|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_contador1ms|contador\(9),
	datad => VCC,
	cin => \i_contador1ms|Add0~17\,
	combout => \i_contador1ms|Add0~18_combout\,
	cout => \i_contador1ms|Add0~19\);

-- Location: LCCOMB_X39_Y1_N22
\i_contador1ms|contador~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contador1ms|contador~2_combout\ = (!\i_contador1ms|Equal0~4_combout\ & \i_contador1ms|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_contador1ms|Equal0~4_combout\,
	datad => \i_contador1ms|Add0~18_combout\,
	combout => \i_contador1ms|contador~2_combout\);

-- Location: LCFF_X39_Y1_N23
\i_contador1ms|contador[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contador1ms|contador~2_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contador1ms|contador\(9));

-- Location: LCCOMB_X40_Y1_N20
\i_contador1ms|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contador1ms|Add0~20_combout\ = (\i_contador1ms|contador\(10) & (\i_contador1ms|Add0~19\ $ (GND))) # (!\i_contador1ms|contador\(10) & (!\i_contador1ms|Add0~19\ & VCC))
-- \i_contador1ms|Add0~21\ = CARRY((\i_contador1ms|contador\(10) & !\i_contador1ms|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_contador1ms|contador\(10),
	datad => VCC,
	cin => \i_contador1ms|Add0~19\,
	combout => \i_contador1ms|Add0~20_combout\,
	cout => \i_contador1ms|Add0~21\);

-- Location: LCCOMB_X40_Y1_N22
\i_contador1ms|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contador1ms|Add0~22_combout\ = (\i_contador1ms|contador\(11) & (!\i_contador1ms|Add0~21\)) # (!\i_contador1ms|contador\(11) & ((\i_contador1ms|Add0~21\) # (GND)))
-- \i_contador1ms|Add0~23\ = CARRY((!\i_contador1ms|Add0~21\) # (!\i_contador1ms|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_contador1ms|contador\(11),
	datad => VCC,
	cin => \i_contador1ms|Add0~21\,
	combout => \i_contador1ms|Add0~22_combout\,
	cout => \i_contador1ms|Add0~23\);

-- Location: LCFF_X40_Y1_N23
\i_contador1ms|contador[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contador1ms|Add0~22_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contador1ms|contador\(11));

-- Location: LCCOMB_X40_Y1_N24
\i_contador1ms|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contador1ms|Add0~24_combout\ = (\i_contador1ms|contador\(12) & (\i_contador1ms|Add0~23\ $ (GND))) # (!\i_contador1ms|contador\(12) & (!\i_contador1ms|Add0~23\ & VCC))
-- \i_contador1ms|Add0~25\ = CARRY((\i_contador1ms|contador\(12) & !\i_contador1ms|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_contador1ms|contador\(12),
	datad => VCC,
	cin => \i_contador1ms|Add0~23\,
	combout => \i_contador1ms|Add0~24_combout\,
	cout => \i_contador1ms|Add0~25\);

-- Location: LCCOMB_X40_Y1_N26
\i_contador1ms|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contador1ms|Add0~26_combout\ = (\i_contador1ms|contador\(13) & (!\i_contador1ms|Add0~25\)) # (!\i_contador1ms|contador\(13) & ((\i_contador1ms|Add0~25\) # (GND)))
-- \i_contador1ms|Add0~27\ = CARRY((!\i_contador1ms|Add0~25\) # (!\i_contador1ms|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_contador1ms|contador\(13),
	datad => VCC,
	cin => \i_contador1ms|Add0~25\,
	combout => \i_contador1ms|Add0~26_combout\,
	cout => \i_contador1ms|Add0~27\);

-- Location: LCFF_X40_Y1_N27
\i_contador1ms|contador[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contador1ms|Add0~26_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contador1ms|contador\(13));

-- Location: LCCOMB_X39_Y1_N26
\i_contador1ms|contador~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contador1ms|contador~1_combout\ = (!\i_contador1ms|Equal0~4_combout\ & \i_contador1ms|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_contador1ms|Equal0~4_combout\,
	datad => \i_contador1ms|Add0~28_combout\,
	combout => \i_contador1ms|contador~1_combout\);

-- Location: LCFF_X39_Y1_N27
\i_contador1ms|contador[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contador1ms|contador~1_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contador1ms|contador\(14));

-- Location: LCFF_X40_Y1_N25
\i_contador1ms|contador[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contador1ms|Add0~24_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contador1ms|contador\(12));

-- Location: LCCOMB_X39_Y1_N28
\i_contador1ms|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contador1ms|Equal0~0_combout\ = (\i_contador1ms|contador\(15) & (\i_contador1ms|contador\(14) & (!\i_contador1ms|contador\(13) & !\i_contador1ms|contador\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contador1ms|contador\(15),
	datab => \i_contador1ms|contador\(14),
	datac => \i_contador1ms|contador\(13),
	datad => \i_contador1ms|contador\(12),
	combout => \i_contador1ms|Equal0~0_combout\);

-- Location: LCCOMB_X39_Y1_N14
\i_contador1ms|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contador1ms|Equal0~3_combout\ = (\i_contador1ms|contador\(3) & (\i_contador1ms|contador\(0) & (\i_contador1ms|contador\(1) & \i_contador1ms|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contador1ms|contador\(3),
	datab => \i_contador1ms|contador\(0),
	datac => \i_contador1ms|contador\(1),
	datad => \i_contador1ms|contador\(2),
	combout => \i_contador1ms|Equal0~3_combout\);

-- Location: LCFF_X40_Y1_N21
\i_contador1ms|contador[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contador1ms|Add0~20_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contador1ms|contador\(10));

-- Location: LCCOMB_X39_Y1_N10
\i_contador1ms|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contador1ms|Equal0~1_combout\ = (\i_contador1ms|contador\(8) & (\i_contador1ms|contador\(9) & (!\i_contador1ms|contador\(11) & !\i_contador1ms|contador\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contador1ms|contador\(8),
	datab => \i_contador1ms|contador\(9),
	datac => \i_contador1ms|contador\(11),
	datad => \i_contador1ms|contador\(10),
	combout => \i_contador1ms|Equal0~1_combout\);

-- Location: LCCOMB_X39_Y1_N8
\i_contador1ms|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contador1ms|Equal0~4_combout\ = (\i_contador1ms|Equal0~2_combout\ & (\i_contador1ms|Equal0~0_combout\ & (\i_contador1ms|Equal0~3_combout\ & \i_contador1ms|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contador1ms|Equal0~2_combout\,
	datab => \i_contador1ms|Equal0~0_combout\,
	datac => \i_contador1ms|Equal0~3_combout\,
	datad => \i_contador1ms|Equal0~1_combout\,
	combout => \i_contador1ms|Equal0~4_combout\);

-- Location: LCCOMB_X40_Y5_N28
\i_Contador|contador[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Contador|contador[0]~0_combout\ = \i_Contador|contador\(0) $ (\i_contador1ms|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_Contador|contador\(0),
	datad => \i_contador1ms|Equal0~4_combout\,
	combout => \i_Contador|contador[0]~0_combout\);

-- Location: LCFF_X40_Y5_N29
\i_Contador|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_Contador|contador[0]~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Contador|contador\(0));

-- Location: LCCOMB_X40_Y8_N24
\i_Contador|contador[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Contador|contador[1]~2_combout\ = \i_Contador|contador\(1) $ (((\i_Contador|contador\(0) & \i_contador1ms|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_Contador|contador\(0),
	datac => \i_Contador|contador\(1),
	datad => \i_contador1ms|Equal0~4_combout\,
	combout => \i_Contador|contador[1]~2_combout\);

-- Location: LCFF_X40_Y8_N25
\i_Contador|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_Contador|contador[1]~2_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Contador|contador\(1));

-- Location: LCCOMB_X40_Y5_N30
\i_Contador|contador[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Contador|contador[2]~1_combout\ = \i_Contador|contador\(2) $ (((\i_Contador|contador\(0) & (\i_Contador|contador\(1) & \i_contador1ms|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Contador|contador\(0),
	datab => \i_Contador|contador\(1),
	datac => \i_Contador|contador\(2),
	datad => \i_contador1ms|Equal0~4_combout\,
	combout => \i_Contador|contador[2]~1_combout\);

-- Location: LCFF_X40_Y5_N31
\i_Contador|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_Contador|contador[2]~1_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Contador|contador\(2));

-- Location: LCCOMB_X39_Y8_N0
\i1_Registro1|s[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_Registro1|s[6]~0_combout\ = (\i1_Registro1|s\(6)) # ((!\i_Contador|contador\(2) & (\i_Contador|contador\(0) & !\i_Contador|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1_Registro1|s\(6),
	datab => \i_Contador|contador\(2),
	datac => \i_Contador|contador\(0),
	datad => \i_Contador|contador\(1),
	combout => \i1_Registro1|s[6]~0_combout\);

-- Location: LCFF_X40_Y8_N5
\i1_Registro1|s[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i1_Registro1|s[6]~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1_Registro1|s\(6));

-- Location: LCCOMB_X39_Y8_N16
\i1_Registro3|s[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_Registro3|s[6]~0_combout\ = (\i1_Registro3|s\(6)) # ((\i_Contador|contador\(0) & (!\i_Contador|contador\(2) & \i_Contador|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Contador|contador\(0),
	datab => \i_Contador|contador\(2),
	datac => \i1_Registro3|s\(6),
	datad => \i_Contador|contador\(1),
	combout => \i1_Registro3|s[6]~0_combout\);

-- Location: LCFF_X39_Y8_N17
\i1_Registro3|s[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1_Registro3|s[6]~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1_Registro3|s\(6));

-- Location: LCCOMB_X40_Y8_N26
\i_Mux|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux|Mux7~0_combout\ = (\i_Contador|contador\(0) & ((\i_Contador|contador\(1) & ((\i1_Registro3|s\(6)))) # (!\i_Contador|contador\(1) & (\i1_Registro1|s\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Contador|contador\(1),
	datab => \i1_Registro1|s\(6),
	datac => \i_Contador|contador\(0),
	datad => \i1_Registro3|s\(6),
	combout => \i_Mux|Mux7~0_combout\);

-- Location: LCCOMB_X40_Y8_N10
\i_Mux|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux|Mux7~1_combout\ = (\i_Contador|contador\(2) & (\i_Mux|Mux3~0_combout\ & (!\i_Contador|contador\(0)))) # (!\i_Contador|contador\(2) & (((\i_Mux|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux|Mux3~0_combout\,
	datab => \i_Contador|contador\(2),
	datac => \i_Contador|contador\(0),
	datad => \i_Mux|Mux7~0_combout\,
	combout => \i_Mux|Mux7~1_combout\);

-- Location: LCCOMB_X39_Y8_N6
\i1_Registro0|s[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_Registro0|s[6]~0_combout\ = (\i1_Registro0|s\(6)) # ((!\i_Contador|contador\(0) & (!\i_Contador|contador\(2) & !\i_Contador|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Contador|contador\(0),
	datab => \i1_Registro0|s\(6),
	datac => \i_Contador|contador\(2),
	datad => \i_Contador|contador\(1),
	combout => \i1_Registro0|s[6]~0_combout\);

-- Location: LCFF_X40_Y8_N1
\i1_Registro0|s[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i1_Registro0|s[6]~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1_Registro0|s\(6));

-- Location: LCCOMB_X40_Y8_N14
\i_Mux|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux|Mux7~2_combout\ = (\i_Contador|contador\(0) & (\i1_Registro1|s\(6))) # (!\i_Contador|contador\(0) & ((\i1_Registro0|s\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1_Registro1|s\(6),
	datac => \i1_Registro0|s\(6),
	datad => \i_Contador|contador\(0),
	combout => \i_Mux|Mux7~2_combout\);

-- Location: LCCOMB_X40_Y8_N0
\i_Mux|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux|Mux6~0_combout\ = (!\i_Contador|contador\(1) & (!\i_Contador|contador\(2) & \i_Mux|Mux7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Contador|contador\(1),
	datab => \i_Contador|contador\(2),
	datad => \i_Mux|Mux7~2_combout\,
	combout => \i_Mux|Mux6~0_combout\);

-- Location: LCCOMB_X39_Y8_N18
\i1_Registro2|s[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_Registro2|s[6]~0_combout\ = (\i1_Registro2|s\(6)) # ((!\i_Contador|contador\(0) & (!\i_Contador|contador\(2) & \i_Contador|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Contador|contador\(0),
	datab => \i_Contador|contador\(2),
	datac => \i1_Registro2|s\(6),
	datad => \i_Contador|contador\(1),
	combout => \i1_Registro2|s[6]~0_combout\);

-- Location: LCFF_X39_Y8_N19
\i1_Registro2|s[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1_Registro2|s[6]~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1_Registro2|s\(6));

-- Location: LCCOMB_X40_Y8_N8
\i_Mux|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux|Mux3~1_combout\ = (\i_Contador|contador\(1) & (\i1_Registro2|s\(6) & (!\i_Contador|contador\(2) & !\i_Contador|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Contador|contador\(1),
	datab => \i1_Registro2|s\(6),
	datac => \i_Contador|contador\(2),
	datad => \i_Contador|contador\(0),
	combout => \i_Mux|Mux3~1_combout\);

-- Location: LCCOMB_X39_Y8_N20
\i1_Registro4|s[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_Registro4|s[5]~0_combout\ = (\i1_Registro4|s\(5)) # ((!\i_Contador|contador\(1) & (!\i_Contador|contador\(0) & \i_Contador|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1_Registro4|s\(5),
	datab => \i_Contador|contador\(1),
	datac => \i_Contador|contador\(0),
	datad => \i_Contador|contador\(2),
	combout => \i1_Registro4|s[5]~0_combout\);

-- Location: LCFF_X40_Y8_N31
\i1_Registro4|s[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i1_Registro4|s[5]~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1_Registro4|s\(5));

-- Location: LCCOMB_X40_Y8_N30
\i_Mux|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux|Mux5~2_combout\ = (!\i_Contador|contador\(1) & (\i_Contador|contador\(2) & (\i1_Registro4|s\(5) & !\i_Contador|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Contador|contador\(1),
	datab => \i_Contador|contador\(2),
	datac => \i1_Registro4|s\(5),
	datad => \i_Contador|contador\(0),
	combout => \i_Mux|Mux5~2_combout\);

-- Location: LCCOMB_X39_Y8_N24
\i_Selector|Mux7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Selector|Mux7~8_combout\ = (!\i_Contador|contador\(1) & !\i_Contador|contador\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_Contador|contador\(1),
	datad => \i_Contador|contador\(2),
	combout => \i_Selector|Mux7~8_combout\);

-- Location: LCCOMB_X40_Y8_N6
\i_Mux|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux|Mux5~3_combout\ = (\i_Mux|Mux3~1_combout\) # ((\i_Mux|Mux5~2_combout\) # ((\i_Mux|Mux7~2_combout\ & \i_Selector|Mux7~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux|Mux7~2_combout\,
	datab => \i_Mux|Mux3~1_combout\,
	datac => \i_Mux|Mux5~2_combout\,
	datad => \i_Selector|Mux7~8_combout\,
	combout => \i_Mux|Mux5~3_combout\);

-- Location: LCCOMB_X40_Y8_N22
\i_Mux|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux|Mux5~4_combout\ = (\i_Mux|Mux5~2_combout\) # ((!\i_Contador|contador\(1) & (!\i_Contador|contador\(2) & \i_Mux|Mux7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Contador|contador\(1),
	datab => \i_Contador|contador\(2),
	datac => \i_Mux|Mux5~2_combout\,
	datad => \i_Mux|Mux7~2_combout\,
	combout => \i_Mux|Mux5~4_combout\);

-- Location: LCCOMB_X39_Y8_N30
\i1_Registro6|s[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_Registro6|s[5]~0_combout\ = (\i1_Registro6|s\(5)) # ((\i_Contador|contador\(1) & (!\i_Contador|contador\(0) & \i_Contador|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1_Registro6|s\(5),
	datab => \i_Contador|contador\(1),
	datac => \i_Contador|contador\(0),
	datad => \i_Contador|contador\(2),
	combout => \i1_Registro6|s[5]~0_combout\);

-- Location: LCFF_X40_Y8_N29
\i1_Registro6|s[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i1_Registro6|s[5]~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1_Registro6|s\(5));

-- Location: LCCOMB_X40_Y8_N12
\i_Mux|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux|Mux3~0_combout\ = (\i_Contador|contador\(1) & (\i1_Registro6|s\(5))) # (!\i_Contador|contador\(1) & ((\i1_Registro4|s\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1_Registro6|s\(5),
	datac => \i_Contador|contador\(1),
	datad => \i1_Registro4|s\(5),
	combout => \i_Mux|Mux3~0_combout\);

-- Location: LCCOMB_X40_Y8_N4
\i_Mux|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux|Mux3~2_combout\ = (\i_Contador|contador\(2) & (!\i_Contador|contador\(0) & \i_Mux|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Contador|contador\(2),
	datab => \i_Contador|contador\(0),
	datad => \i_Mux|Mux3~0_combout\,
	combout => \i_Mux|Mux3~2_combout\);

-- Location: LCCOMB_X40_Y8_N18
\i_Selector|Mux7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Selector|Mux7~7_combout\ = (\i_Contador|contador\(1) & (\i_Contador|contador\(0) & \i_Contador|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Contador|contador\(1),
	datac => \i_Contador|contador\(0),
	datad => \i_Contador|contador\(2),
	combout => \i_Selector|Mux7~7_combout\);

-- Location: LCCOMB_X40_Y8_N16
\i_Mux|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux|Mux3~3_combout\ = (\i_Mux|Mux3~1_combout\) # ((\i_Mux|Mux3~2_combout\) # ((\i1_Registro7|s\(5) & \i_Selector|Mux7~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1_Registro7|s\(5),
	datab => \i_Mux|Mux3~1_combout\,
	datac => \i_Mux|Mux3~2_combout\,
	datad => \i_Selector|Mux7~7_combout\,
	combout => \i_Mux|Mux3~3_combout\);

-- Location: LCCOMB_X39_Y8_N22
\i1_Registro7|s[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_Registro7|s[5]~0_combout\ = (\i1_Registro7|s\(5)) # ((\i_Contador|contador\(0) & (\i_Contador|contador\(2) & \i_Contador|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Contador|contador\(0),
	datab => \i_Contador|contador\(2),
	datac => \i1_Registro7|s\(5),
	datad => \i_Contador|contador\(1),
	combout => \i1_Registro7|s[5]~0_combout\);

-- Location: LCFF_X39_Y8_N23
\i1_Registro7|s[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1_Registro7|s[5]~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1_Registro7|s\(5));

-- Location: LCCOMB_X39_Y8_N4
\i1_Registro5|s[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_Registro5|s[5]~0_combout\ = (\i1_Registro5|s\(5)) # ((\i_Contador|contador\(0) & (\i_Contador|contador\(2) & !\i_Contador|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Contador|contador\(0),
	datab => \i_Contador|contador\(2),
	datac => \i1_Registro5|s\(5),
	datad => \i_Contador|contador\(1),
	combout => \i1_Registro5|s[5]~0_combout\);

-- Location: LCFF_X39_Y8_N5
\i1_Registro5|s[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1_Registro5|s[5]~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1_Registro5|s\(5));

-- Location: LCCOMB_X39_Y8_N10
\i_Mux|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux|Mux2~0_combout\ = (\i_Contador|contador\(1) & (\i1_Registro7|s\(5))) # (!\i_Contador|contador\(1) & ((\i1_Registro5|s\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1_Registro7|s\(5),
	datac => \i1_Registro5|s\(5),
	datad => \i_Contador|contador\(1),
	combout => \i_Mux|Mux2~0_combout\);

-- Location: LCCOMB_X40_Y8_N2
\i_Mux|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux|Mux2~1_combout\ = (\i_Contador|contador\(2) & ((\i_Contador|contador\(0) & ((\i_Mux|Mux2~0_combout\))) # (!\i_Contador|contador\(0) & (\i_Mux|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux|Mux3~0_combout\,
	datab => \i_Contador|contador\(2),
	datac => \i_Contador|contador\(0),
	datad => \i_Mux|Mux2~0_combout\,
	combout => \i_Mux|Mux2~1_combout\);

-- Location: LCCOMB_X40_Y8_N28
\i_Mux|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux|Mux1~0_combout\ = (\i_Contador|contador\(0) & (\i1_Registro3|s\(6))) # (!\i_Contador|contador\(0) & ((\i1_Registro2|s\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Contador|contador\(0),
	datab => \i1_Registro3|s\(6),
	datad => \i1_Registro2|s\(6),
	combout => \i_Mux|Mux1~0_combout\);

-- Location: LCCOMB_X40_Y8_N20
\i_Mux|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux|Mux1~1_combout\ = (!\i_Contador|contador\(2) & ((\i_Contador|contador\(1) & (\i_Mux|Mux1~0_combout\)) # (!\i_Contador|contador\(1) & ((\i_Mux|Mux7~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Contador|contador\(1),
	datab => \i_Contador|contador\(2),
	datac => \i_Mux|Mux1~0_combout\,
	datad => \i_Mux|Mux7~2_combout\,
	combout => \i_Mux|Mux1~1_combout\);

-- Location: M4K_X41_Y8
\i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"000000D0211500600484502018029001",
	mem_init0 => X"54120A01010181000AA85050100A0515068206050102848541090006C032200010060A8545202A8380C0C8A060103828381401000C00000521110011048446611084540154330A01910FC018088DD11718CBFC21C622FF0019C40CE801E0003291F00331106622DF106180B3C05F890CF007E2C3CC45DE60E0148049030440000000000003E445FE22F0004F88B74446222FC1077088C081FE44002200004004400040055007F80208005000404764A65DDBAAA035510200C002000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFE0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Practica3.ram0_AsciiA16Seg_c28836d7.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "AsciiA16Seg:i_ASCIIa17Seg|altsyncram:memoria_rtl_0|altsyncram_n771:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 17,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 17,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 7,
	port_b_data_width => 17,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X39_Y4_N8
\i_Selector|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Selector|Mux7~0_combout\ = (!\i_Contador|contador\(1) & (!\i_Contador|contador\(0) & !\i_Contador|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Contador|contador\(1),
	datab => \i_Contador|contador\(0),
	datac => \i_Contador|contador\(2),
	combout => \i_Selector|Mux7~0_combout\);

-- Location: LCCOMB_X39_Y4_N26
\i_Selector|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Selector|Mux7~1_combout\ = (!\i_Contador|contador\(1) & (\i_Contador|contador\(0) & !\i_Contador|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Contador|contador\(1),
	datab => \i_Contador|contador\(0),
	datac => \i_Contador|contador\(2),
	combout => \i_Selector|Mux7~1_combout\);

-- Location: LCCOMB_X39_Y4_N4
\i_Selector|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Selector|Mux7~2_combout\ = (\i_Contador|contador\(1) & (!\i_Contador|contador\(0) & !\i_Contador|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Contador|contador\(1),
	datab => \i_Contador|contador\(0),
	datac => \i_Contador|contador\(2),
	combout => \i_Selector|Mux7~2_combout\);

-- Location: LCCOMB_X42_Y7_N12
\i_Selector|Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Selector|Mux7~3_combout\ = (\i_Contador|contador\(0) & (!\i_Contador|contador\(2) & \i_Contador|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_Contador|contador\(0),
	datac => \i_Contador|contador\(2),
	datad => \i_Contador|contador\(1),
	combout => \i_Selector|Mux7~3_combout\);

-- Location: LCCOMB_X42_Y7_N2
\i_Selector|Mux7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Selector|Mux7~4_combout\ = (!\i_Contador|contador\(0) & (\i_Contador|contador\(2) & !\i_Contador|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_Contador|contador\(0),
	datac => \i_Contador|contador\(2),
	datad => \i_Contador|contador\(1),
	combout => \i_Selector|Mux7~4_combout\);

-- Location: LCCOMB_X39_Y4_N10
\i_Selector|Mux7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Selector|Mux7~5_combout\ = (!\i_Contador|contador\(1) & (\i_Contador|contador\(0) & \i_Contador|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Contador|contador\(1),
	datab => \i_Contador|contador\(0),
	datac => \i_Contador|contador\(2),
	combout => \i_Selector|Mux7~5_combout\);

-- Location: LCCOMB_X42_Y7_N8
\i_Selector|Mux7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Selector|Mux7~6_combout\ = (!\i_Contador|contador\(0) & (\i_Contador|contador\(2) & \i_Contador|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_Contador|contador\(0),
	datac => \i_Contador|contador\(2),
	datad => \i_Contador|contador\(1),
	combout => \i_Selector|Mux7~6_combout\);

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dig_led[0]~I\ : cycloneii_io
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
	datain => \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dig_led(0));

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dig_led[1]~I\ : cycloneii_io
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
	datain => \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dig_led(1));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dig_led[2]~I\ : cycloneii_io
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
	datain => \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dig_led(2));

-- Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dig_led[3]~I\ : cycloneii_io
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
	datain => \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dig_led(3));

-- Location: PIN_R15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dig_led[4]~I\ : cycloneii_io
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
	datain => \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dig_led(4));

-- Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dig_led[5]~I\ : cycloneii_io
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
	datain => \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dig_led(5));

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dig_led[6]~I\ : cycloneii_io
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
	datain => \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dig_led(6));

-- Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dig_led[7]~I\ : cycloneii_io
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
	datain => \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dig_led(7));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dig_led[8]~I\ : cycloneii_io
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
	datain => \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dig_led(8));

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dig_led[9]~I\ : cycloneii_io
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
	datain => \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dig_led(9));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dig_led[10]~I\ : cycloneii_io
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
	datain => \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dig_led(10));

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dig_led[11]~I\ : cycloneii_io
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
	datain => \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dig_led(11));

-- Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dig_led[12]~I\ : cycloneii_io
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
	datain => \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dig_led(12));

-- Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dig_led[13]~I\ : cycloneii_io
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
	datain => \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dig_led(13));

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dig_led[14]~I\ : cycloneii_io
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
	datain => \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dig_led(14));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dig_led[15]~I\ : cycloneii_io
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
	datain => \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dig_led(15));

-- Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dig_led[16]~I\ : cycloneii_io
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
	datain => \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a0~portadataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dig_led(16));

-- Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\digito[0]~I\ : cycloneii_io
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
	datain => \i_Selector|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_digito(0));

-- Location: PIN_T15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\digito[1]~I\ : cycloneii_io
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
	datain => \i_Selector|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_digito(1));

-- Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\digito[2]~I\ : cycloneii_io
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
	datain => \i_Selector|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_digito(2));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\digito[3]~I\ : cycloneii_io
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
	datain => \i_Selector|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_digito(3));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\digito[4]~I\ : cycloneii_io
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
	datain => \i_Selector|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_digito(4));

-- Location: PIN_U14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\digito[5]~I\ : cycloneii_io
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
	datain => \i_Selector|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_digito(5));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\digito[6]~I\ : cycloneii_io
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
	datain => \i_Selector|Mux7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_digito(6));

-- Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\digito[7]~I\ : cycloneii_io
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
	datain => \i_Selector|Mux7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_digito(7));
END structure;


