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

-- DATE "04/02/2021 11:29:23"

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
-- dig_led[0]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dig_led[1]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dig_led[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dig_led[3]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dig_led[4]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dig_led[5]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dig_led[6]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dig_led[7]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dig_led[8]	=>  Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dig_led[9]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dig_led[10]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dig_led[11]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dig_led[12]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dig_led[13]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dig_led[14]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dig_led[15]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dig_led[16]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- digito[0]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- digito[1]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- digito[2]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- digito[3]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- digito[4]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- digito[5]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- digito[6]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- digito[7]	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
SIGNAL \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_n~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_contador1ms|Add0~10_combout\ : std_logic;
SIGNAL \i_contador1ms|Add0~20_combout\ : std_logic;
SIGNAL \i_contador1ms|Equal0~1_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
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
SIGNAL \i_contador1ms|Add0~16_combout\ : std_logic;
SIGNAL \i_contador1ms|contador~3_combout\ : std_logic;
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
SIGNAL \i_contador1ms|Add0~29\ : std_logic;
SIGNAL \i_contador1ms|Add0~30_combout\ : std_logic;
SIGNAL \i_contador1ms|contador~0_combout\ : std_logic;
SIGNAL \i_contador1ms|Add0~24_combout\ : std_logic;
SIGNAL \i_contador1ms|Equal0~0_combout\ : std_logic;
SIGNAL \i_contador1ms|Add0~6_combout\ : std_logic;
SIGNAL \i_contador1ms|Equal0~3_combout\ : std_logic;
SIGNAL \i_contador1ms|Add0~8_combout\ : std_logic;
SIGNAL \i_contador1ms|contador~5_combout\ : std_logic;
SIGNAL \i_contador1ms|Equal0~2_combout\ : std_logic;
SIGNAL \i_contador1ms|Equal0~4_combout\ : std_logic;
SIGNAL \i_Contador|contador[0]~1_combout\ : std_logic;
SIGNAL \i_Contador|contador[2]~2_combout\ : std_logic;
SIGNAL \i_Contador|contador[1]~0_combout\ : std_logic;
SIGNAL \i_Selector|Mux7~0_combout\ : std_logic;
SIGNAL \i_Selector|Mux7~1_combout\ : std_logic;
SIGNAL \i_Selector|Mux7~2_combout\ : std_logic;
SIGNAL \i_Selector|Mux7~3_combout\ : std_logic;
SIGNAL \i_Selector|Mux7~4_combout\ : std_logic;
SIGNAL \i_Selector|Mux7~5_combout\ : std_logic;
SIGNAL \i_Selector|Mux7~6_combout\ : std_logic;
SIGNAL \i_Selector|Mux7~7_combout\ : std_logic;
SIGNAL \i_contador1ms|contador\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i_Contador|contador\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_reset_n~clkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset_n <= reset_n;
dig_led <= ww_dig_led;
digito <= ww_digito;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\(0) <= \~GND~combout\;

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

-- Location: LCCOMB_X47_Y16_N10
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

-- Location: LCCOMB_X47_Y16_N20
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

-- Location: LCFF_X47_Y16_N21
\i_contador1ms|contador[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contador1ms|Add0~20_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contador1ms|contador\(10));

-- Location: LCCOMB_X48_Y16_N12
\i_contador1ms|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contador1ms|Equal0~1_combout\ = (!\i_contador1ms|contador\(10) & (\i_contador1ms|contador\(9) & (\i_contador1ms|contador\(8) & !\i_contador1ms|contador\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contador1ms|contador\(10),
	datab => \i_contador1ms|contador\(9),
	datac => \i_contador1ms|contador\(8),
	datad => \i_contador1ms|contador\(11),
	combout => \i_contador1ms|Equal0~1_combout\);

-- Location: LCFF_X47_Y16_N11
\i_contador1ms|contador[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contador1ms|Add0~10_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contador1ms|contador\(5));

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

-- Location: LCCOMB_X16_Y26_N16
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: M4K_X17_Y26
\i_ASCIIa17Seg|memoria_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"3FFFE0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Practica3.ram0_AsciiA16Seg_c28836d7.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "AsciiA16Seg:i_ASCIIa17Seg|altsyncram:memoria_rtl_0|altsyncram_n771:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 1,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 17,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 17,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 1,
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

-- Location: LCCOMB_X47_Y16_N0
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

-- Location: LCFF_X47_Y16_N1
\i_contador1ms|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contador1ms|Add0~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contador1ms|contador\(0));

-- Location: LCCOMB_X47_Y16_N2
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

-- Location: LCFF_X47_Y16_N3
\i_contador1ms|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contador1ms|Add0~2_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contador1ms|contador\(1));

-- Location: LCCOMB_X47_Y16_N4
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

-- Location: LCFF_X47_Y16_N5
\i_contador1ms|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contador1ms|Add0~4_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contador1ms|contador\(2));

-- Location: LCCOMB_X47_Y16_N6
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

-- Location: LCCOMB_X47_Y16_N8
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

-- Location: LCCOMB_X47_Y16_N12
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

-- Location: LCCOMB_X48_Y16_N22
\i_contador1ms|contador~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contador1ms|contador~4_combout\ = (!\i_contador1ms|Equal0~4_combout\ & \i_contador1ms|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contador1ms|Equal0~4_combout\,
	datad => \i_contador1ms|Add0~12_combout\,
	combout => \i_contador1ms|contador~4_combout\);

-- Location: LCFF_X48_Y16_N23
\i_contador1ms|contador[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contador1ms|contador~4_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contador1ms|contador\(6));

-- Location: LCCOMB_X47_Y16_N14
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

-- Location: LCFF_X47_Y16_N15
\i_contador1ms|contador[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contador1ms|Add0~14_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contador1ms|contador\(7));

-- Location: LCCOMB_X47_Y16_N16
\i_contador1ms|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contador1ms|Add0~16_combout\ = (\i_contador1ms|contador\(8) & (\i_contador1ms|Add0~15\ $ (GND))) # (!\i_contador1ms|contador\(8) & (!\i_contador1ms|Add0~15\ & VCC))
-- \i_contador1ms|Add0~17\ = CARRY((\i_contador1ms|contador\(8) & !\i_contador1ms|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_contador1ms|contador\(8),
	datad => VCC,
	cin => \i_contador1ms|Add0~15\,
	combout => \i_contador1ms|Add0~16_combout\,
	cout => \i_contador1ms|Add0~17\);

-- Location: LCCOMB_X48_Y16_N14
\i_contador1ms|contador~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contador1ms|contador~3_combout\ = (!\i_contador1ms|Equal0~4_combout\ & \i_contador1ms|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contador1ms|Equal0~4_combout\,
	datad => \i_contador1ms|Add0~16_combout\,
	combout => \i_contador1ms|contador~3_combout\);

-- Location: LCFF_X48_Y16_N15
\i_contador1ms|contador[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contador1ms|contador~3_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contador1ms|contador\(8));

-- Location: LCCOMB_X47_Y16_N18
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

-- Location: LCCOMB_X48_Y16_N8
\i_contador1ms|contador~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contador1ms|contador~2_combout\ = (!\i_contador1ms|Equal0~4_combout\ & \i_contador1ms|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contador1ms|Equal0~4_combout\,
	datad => \i_contador1ms|Add0~18_combout\,
	combout => \i_contador1ms|contador~2_combout\);

-- Location: LCFF_X48_Y16_N9
\i_contador1ms|contador[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contador1ms|contador~2_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contador1ms|contador\(9));

-- Location: LCCOMB_X47_Y16_N22
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

-- Location: LCFF_X47_Y16_N23
\i_contador1ms|contador[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contador1ms|Add0~22_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contador1ms|contador\(11));

-- Location: LCCOMB_X47_Y16_N24
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

-- Location: LCCOMB_X47_Y16_N26
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

-- Location: LCFF_X47_Y16_N27
\i_contador1ms|contador[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contador1ms|Add0~26_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contador1ms|contador\(13));

-- Location: LCCOMB_X47_Y16_N28
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

-- Location: LCCOMB_X48_Y16_N24
\i_contador1ms|contador~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contador1ms|contador~1_combout\ = (!\i_contador1ms|Equal0~4_combout\ & \i_contador1ms|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contador1ms|Equal0~4_combout\,
	datad => \i_contador1ms|Add0~28_combout\,
	combout => \i_contador1ms|contador~1_combout\);

-- Location: LCFF_X48_Y16_N25
\i_contador1ms|contador[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contador1ms|contador~1_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contador1ms|contador\(14));

-- Location: LCCOMB_X47_Y16_N30
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

-- Location: LCCOMB_X48_Y16_N30
\i_contador1ms|contador~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contador1ms|contador~0_combout\ = (\i_contador1ms|Add0~30_combout\ & !\i_contador1ms|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_contador1ms|Add0~30_combout\,
	datad => \i_contador1ms|Equal0~4_combout\,
	combout => \i_contador1ms|contador~0_combout\);

-- Location: LCFF_X48_Y16_N31
\i_contador1ms|contador[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contador1ms|contador~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contador1ms|contador\(15));

-- Location: LCFF_X47_Y16_N25
\i_contador1ms|contador[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contador1ms|Add0~24_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contador1ms|contador\(12));

-- Location: LCCOMB_X48_Y16_N2
\i_contador1ms|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contador1ms|Equal0~0_combout\ = (\i_contador1ms|contador\(14) & (\i_contador1ms|contador\(15) & (!\i_contador1ms|contador\(13) & !\i_contador1ms|contador\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contador1ms|contador\(14),
	datab => \i_contador1ms|contador\(15),
	datac => \i_contador1ms|contador\(13),
	datad => \i_contador1ms|contador\(12),
	combout => \i_contador1ms|Equal0~0_combout\);

-- Location: LCFF_X47_Y16_N7
\i_contador1ms|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contador1ms|Add0~6_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contador1ms|contador\(3));

-- Location: LCCOMB_X48_Y16_N20
\i_contador1ms|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contador1ms|Equal0~3_combout\ = (\i_contador1ms|contador\(0) & (\i_contador1ms|contador\(2) & (\i_contador1ms|contador\(3) & \i_contador1ms|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contador1ms|contador\(0),
	datab => \i_contador1ms|contador\(2),
	datac => \i_contador1ms|contador\(3),
	datad => \i_contador1ms|contador\(1),
	combout => \i_contador1ms|Equal0~3_combout\);

-- Location: LCCOMB_X48_Y16_N4
\i_contador1ms|contador~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contador1ms|contador~5_combout\ = (!\i_contador1ms|Equal0~4_combout\ & \i_contador1ms|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contador1ms|Equal0~4_combout\,
	datad => \i_contador1ms|Add0~8_combout\,
	combout => \i_contador1ms|contador~5_combout\);

-- Location: LCFF_X48_Y16_N5
\i_contador1ms|contador[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contador1ms|contador~5_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contador1ms|contador\(4));

-- Location: LCCOMB_X48_Y16_N26
\i_contador1ms|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contador1ms|Equal0~2_combout\ = (!\i_contador1ms|contador\(5) & (!\i_contador1ms|contador\(4) & (\i_contador1ms|contador\(6) & !\i_contador1ms|contador\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contador1ms|contador\(5),
	datab => \i_contador1ms|contador\(4),
	datac => \i_contador1ms|contador\(6),
	datad => \i_contador1ms|contador\(7),
	combout => \i_contador1ms|Equal0~2_combout\);

-- Location: LCCOMB_X48_Y16_N10
\i_contador1ms|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contador1ms|Equal0~4_combout\ = (\i_contador1ms|Equal0~1_combout\ & (\i_contador1ms|Equal0~0_combout\ & (\i_contador1ms|Equal0~3_combout\ & \i_contador1ms|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contador1ms|Equal0~1_combout\,
	datab => \i_contador1ms|Equal0~0_combout\,
	datac => \i_contador1ms|Equal0~3_combout\,
	datad => \i_contador1ms|Equal0~2_combout\,
	combout => \i_contador1ms|Equal0~4_combout\);

-- Location: LCCOMB_X48_Y16_N18
\i_Contador|contador[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Contador|contador[0]~1_combout\ = \i_Contador|contador\(0) $ (\i_contador1ms|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_Contador|contador\(0),
	datad => \i_contador1ms|Equal0~4_combout\,
	combout => \i_Contador|contador[0]~1_combout\);

-- Location: LCFF_X48_Y16_N19
\i_Contador|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_Contador|contador[0]~1_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Contador|contador\(0));

-- Location: LCCOMB_X48_Y16_N28
\i_Contador|contador[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Contador|contador[2]~2_combout\ = \i_Contador|contador\(2) $ (((\i_Contador|contador\(1) & (\i_Contador|contador\(0) & \i_contador1ms|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Contador|contador\(1),
	datab => \i_Contador|contador\(0),
	datac => \i_Contador|contador\(2),
	datad => \i_contador1ms|Equal0~4_combout\,
	combout => \i_Contador|contador[2]~2_combout\);

-- Location: LCFF_X48_Y16_N29
\i_Contador|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_Contador|contador[2]~2_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Contador|contador\(2));

-- Location: LCCOMB_X48_Y16_N16
\i_Contador|contador[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Contador|contador[1]~0_combout\ = \i_Contador|contador\(1) $ (((\i_Contador|contador\(0) & \i_contador1ms|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_Contador|contador\(0),
	datac => \i_Contador|contador\(1),
	datad => \i_contador1ms|Equal0~4_combout\,
	combout => \i_Contador|contador[1]~0_combout\);

-- Location: LCFF_X48_Y16_N17
\i_Contador|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_Contador|contador[1]~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Contador|contador\(1));

-- Location: LCCOMB_X49_Y16_N0
\i_Selector|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Selector|Mux7~0_combout\ = (!\i_Contador|contador\(0) & (!\i_Contador|contador\(2) & !\i_Contador|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_Contador|contador\(0),
	datac => \i_Contador|contador\(2),
	datad => \i_Contador|contador\(1),
	combout => \i_Selector|Mux7~0_combout\);

-- Location: LCCOMB_X49_Y16_N6
\i_Selector|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Selector|Mux7~1_combout\ = (\i_Contador|contador\(0) & (!\i_Contador|contador\(2) & !\i_Contador|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_Contador|contador\(0),
	datac => \i_Contador|contador\(2),
	datad => \i_Contador|contador\(1),
	combout => \i_Selector|Mux7~1_combout\);

-- Location: LCCOMB_X49_Y16_N12
\i_Selector|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Selector|Mux7~2_combout\ = (!\i_Contador|contador\(0) & (!\i_Contador|contador\(2) & \i_Contador|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_Contador|contador\(0),
	datac => \i_Contador|contador\(2),
	datad => \i_Contador|contador\(1),
	combout => \i_Selector|Mux7~2_combout\);

-- Location: LCCOMB_X49_Y16_N26
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

-- Location: LCCOMB_X49_Y16_N16
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

-- Location: LCCOMB_X49_Y16_N22
\i_Selector|Mux7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Selector|Mux7~5_combout\ = (\i_Contador|contador\(0) & (\i_Contador|contador\(2) & !\i_Contador|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_Contador|contador\(0),
	datac => \i_Contador|contador\(2),
	datad => \i_Contador|contador\(1),
	combout => \i_Selector|Mux7~5_combout\);

-- Location: LCCOMB_X49_Y16_N4
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

-- Location: LCCOMB_X49_Y16_N10
\i_Selector|Mux7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Selector|Mux7~7_combout\ = (\i_Contador|contador\(0) & (\i_Contador|contador\(2) & \i_Contador|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_Contador|contador\(0),
	datac => \i_Contador|contador\(2),
	datad => \i_Contador|contador\(1),
	combout => \i_Selector|Mux7~7_combout\);

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


