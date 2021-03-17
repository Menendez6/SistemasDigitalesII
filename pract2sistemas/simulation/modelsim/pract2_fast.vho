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

-- DATE "03/03/2021 18:25:45"

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

ENTITY 	pract2 IS
    PORT (
	clk : IN std_logic;
	e_p : IN std_logic_vector(7 DOWNTO 0);
	reset : IN std_logic;
	s_s : OUT std_logic;
	transmi : IN std_logic
	);
END pract2;

-- Design Ports Information
-- s_s	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- transmi	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- e_p[0]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- e_p[1]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- e_p[2]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- e_p[3]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- e_p[4]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- e_p[5]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- e_p[6]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- e_p[7]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF pract2 IS
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
SIGNAL ww_e_p : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL ww_s_s : std_logic;
SIGNAL ww_transmi : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_Unidad_control|i1_Contador1bit|contador[3]~21_combout\ : std_logic;
SIGNAL \i_Unidad_control|i1_Contador1bit|contador[5]~25_combout\ : std_logic;
SIGNAL \i_Unidad_control|i1_Contador1bit|Equal0~1_combout\ : std_logic;
SIGNAL \i_Unidad_control|i1_Contador|contador~1_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \i_Unidad_control|i1_Contador|contador~4_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \transmi~combout\ : std_logic;
SIGNAL \i_Unidad_control|i1_Flanco|estado_act.Esp0~0_combout\ : std_logic;
SIGNAL \i_Unidad_control|i1_Flanco|estado_act.Esp0~regout\ : std_logic;
SIGNAL \i_Unidad_control|i1_Flanco|Selector1~0_combout\ : std_logic;
SIGNAL \i_Unidad_control|i1_Flanco|estado_act.Pulso~regout\ : std_logic;
SIGNAL \i_Unidad_control|estado_act.Parar~0_combout\ : std_logic;
SIGNAL \i_Unidad_control|estado_act.Parar~regout\ : std_logic;
SIGNAL \i_Unidad_control|Selector0~0_combout\ : std_logic;
SIGNAL \i_Unidad_control|estado_act.Reposo~regout\ : std_logic;
SIGNAL \i_Unidad_control|i1_Contador1bit|contador[2]~12_combout\ : std_logic;
SIGNAL \i_Unidad_control|i1_Contador1bit|contador[0]~14\ : std_logic;
SIGNAL \i_Unidad_control|i1_Contador1bit|contador[1]~17_combout\ : std_logic;
SIGNAL \i_Unidad_control|i1_Contador1bit|contador[2]~19_combout\ : std_logic;
SIGNAL \i_Unidad_control|i1_Contador1bit|contador[2]~16_combout\ : std_logic;
SIGNAL \i_Unidad_control|i1_Contador1bit|contador[0]~13_combout\ : std_logic;
SIGNAL \i_Unidad_control|i1_Contador1bit|Equal0~0_combout\ : std_logic;
SIGNAL \i_Unidad_control|i1_Contador1bit|contador[2]~15_combout\ : std_logic;
SIGNAL \i_Unidad_control|i1_Contador1bit|contador[1]~18\ : std_logic;
SIGNAL \i_Unidad_control|i1_Contador1bit|contador[2]~20\ : std_logic;
SIGNAL \i_Unidad_control|i1_Contador1bit|contador[3]~22\ : std_logic;
SIGNAL \i_Unidad_control|i1_Contador1bit|contador[4]~23_combout\ : std_logic;
SIGNAL \i_Unidad_control|i1_Contador1bit|contador[4]~24\ : std_logic;
SIGNAL \i_Unidad_control|i1_Contador1bit|contador[5]~26\ : std_logic;
SIGNAL \i_Unidad_control|i1_Contador1bit|contador[6]~27_combout\ : std_logic;
SIGNAL \i_Unidad_control|i1_Contador1bit|contador[6]~28\ : std_logic;
SIGNAL \i_Unidad_control|i1_Contador1bit|contador[7]~29_combout\ : std_logic;
SIGNAL \i_Unidad_control|i1_Contador1bit|contador[7]~30\ : std_logic;
SIGNAL \i_Unidad_control|i1_Contador1bit|contador[8]~31_combout\ : std_logic;
SIGNAL \i_Unidad_control|i1_Contador1bit|contador[8]~32\ : std_logic;
SIGNAL \i_Unidad_control|i1_Contador1bit|contador[9]~34\ : std_logic;
SIGNAL \i_Unidad_control|i1_Contador1bit|contador[10]~36\ : std_logic;
SIGNAL \i_Unidad_control|i1_Contador1bit|contador[11]~37_combout\ : std_logic;
SIGNAL \i_Unidad_control|i1_Contador1bit|contador[9]~33_combout\ : std_logic;
SIGNAL \i_Unidad_control|i1_Contador1bit|contador[10]~35_combout\ : std_logic;
SIGNAL \i_Unidad_control|i1_Contador1bit|Equal0~2_combout\ : std_logic;
SIGNAL \i_Unidad_control|i1_Contador1bit|co~combout\ : std_logic;
SIGNAL \i_Unidad_control|Selector1~0_combout\ : std_logic;
SIGNAL \i_Unidad_control|estado_act.Serie0~regout\ : std_logic;
SIGNAL \i_Controlar_paridad|b~1_combout\ : std_logic;
SIGNAL \i_Unidad_control|i1_Contador|contador~3_combout\ : std_logic;
SIGNAL \i_Unidad_control|i1_Contador|Add0~0_combout\ : std_logic;
SIGNAL \i_Unidad_control|i1_Contador|contador~0_combout\ : std_logic;
SIGNAL \i_Unidad_control|Selector4~0_combout\ : std_logic;
SIGNAL \i_Unidad_control|i1_Contador|contador[0]~2_combout\ : std_logic;
SIGNAL \i_Unidad_control|Selector3~0_combout\ : std_logic;
SIGNAL \i_Unidad_control|estado_act.Espera1bit~regout\ : std_logic;
SIGNAL \i_Unidad_control|Selector2~0_combout\ : std_logic;
SIGNAL \i_Unidad_control|estado_act.Registro~regout\ : std_logic;
SIGNAL \i_Unidad_control|Selector4~1_combout\ : std_logic;
SIGNAL \i_Unidad_control|estado_act.Paridad~regout\ : std_logic;
SIGNAL \i_registrops8|registro~7_combout\ : std_logic;
SIGNAL \i_registrops8|registro~6_combout\ : std_logic;
SIGNAL \i_registrops8|registro~5_combout\ : std_logic;
SIGNAL \i_registrops8|registro~4_combout\ : std_logic;
SIGNAL \i_registrops8|registro~3_combout\ : std_logic;
SIGNAL \i_registrops8|registro~2_combout\ : std_logic;
SIGNAL \i_registrops8|registro~1_combout\ : std_logic;
SIGNAL \i_registrops8|registro~0_combout\ : std_logic;
SIGNAL \i_registrops8|salida~regout\ : std_logic;
SIGNAL \i_Controlar_paridad|b~0_combout\ : std_logic;
SIGNAL \i_Controlar_paridad|b~regout\ : std_logic;
SIGNAL \i_Mux_enviar|Mux0~0_combout\ : std_logic;
SIGNAL \i_Mux_enviar|Mux0~1_combout\ : std_logic;
SIGNAL \i_Unidad_control|i1_Contador|contador\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_Unidad_control|i1_Contador1bit|contador\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \e_p~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_registrops8|registro\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset~clkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_e_p <= e_p;
ww_reset <= reset;
s_s <= ww_s_s;
ww_transmi <= transmi;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);
\ALT_INV_reset~clkctrl_outclk\ <= NOT \reset~clkctrl_outclk\;

-- Location: LCFF_X18_Y21_N13
\i_Unidad_control|i1_Contador1bit|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_Unidad_control|i1_Contador1bit|contador[3]~21_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	sclr => \i_Unidad_control|i1_Contador1bit|contador[2]~15_combout\,
	ena => \i_Unidad_control|i1_Contador1bit|contador[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Unidad_control|i1_Contador1bit|contador\(3));

-- Location: LCFF_X18_Y21_N17
\i_Unidad_control|i1_Contador1bit|contador[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_Unidad_control|i1_Contador1bit|contador[5]~25_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	sclr => \i_Unidad_control|i1_Contador1bit|contador[2]~15_combout\,
	ena => \i_Unidad_control|i1_Contador1bit|contador[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Unidad_control|i1_Contador1bit|contador\(5));

-- Location: LCCOMB_X18_Y21_N12
\i_Unidad_control|i1_Contador1bit|contador[3]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Unidad_control|i1_Contador1bit|contador[3]~21_combout\ = (\i_Unidad_control|i1_Contador1bit|contador\(3) & (!\i_Unidad_control|i1_Contador1bit|contador[2]~20\)) # (!\i_Unidad_control|i1_Contador1bit|contador\(3) & 
-- ((\i_Unidad_control|i1_Contador1bit|contador[2]~20\) # (GND)))
-- \i_Unidad_control|i1_Contador1bit|contador[3]~22\ = CARRY((!\i_Unidad_control|i1_Contador1bit|contador[2]~20\) # (!\i_Unidad_control|i1_Contador1bit|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_Unidad_control|i1_Contador1bit|contador\(3),
	datad => VCC,
	cin => \i_Unidad_control|i1_Contador1bit|contador[2]~20\,
	combout => \i_Unidad_control|i1_Contador1bit|contador[3]~21_combout\,
	cout => \i_Unidad_control|i1_Contador1bit|contador[3]~22\);

-- Location: LCCOMB_X18_Y21_N16
\i_Unidad_control|i1_Contador1bit|contador[5]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Unidad_control|i1_Contador1bit|contador[5]~25_combout\ = (\i_Unidad_control|i1_Contador1bit|contador\(5) & (!\i_Unidad_control|i1_Contador1bit|contador[4]~24\)) # (!\i_Unidad_control|i1_Contador1bit|contador\(5) & 
-- ((\i_Unidad_control|i1_Contador1bit|contador[4]~24\) # (GND)))
-- \i_Unidad_control|i1_Contador1bit|contador[5]~26\ = CARRY((!\i_Unidad_control|i1_Contador1bit|contador[4]~24\) # (!\i_Unidad_control|i1_Contador1bit|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_Unidad_control|i1_Contador1bit|contador\(5),
	datad => VCC,
	cin => \i_Unidad_control|i1_Contador1bit|contador[4]~24\,
	combout => \i_Unidad_control|i1_Contador1bit|contador[5]~25_combout\,
	cout => \i_Unidad_control|i1_Contador1bit|contador[5]~26\);

-- Location: LCFF_X20_Y21_N13
\i_Unidad_control|i1_Contador|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_Unidad_control|i1_Contador|contador~1_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	ena => \i_Controlar_paridad|b~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Unidad_control|i1_Contador|contador\(0));

-- Location: LCCOMB_X18_Y21_N30
\i_Unidad_control|i1_Contador1bit|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Unidad_control|i1_Contador1bit|Equal0~1_combout\ = (\i_Unidad_control|i1_Contador1bit|contador\(7)) # ((\i_Unidad_control|i1_Contador1bit|contador\(4)) # ((\i_Unidad_control|i1_Contador1bit|contador\(6)) # 
-- (!\i_Unidad_control|i1_Contador1bit|contador\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Unidad_control|i1_Contador1bit|contador\(7),
	datab => \i_Unidad_control|i1_Contador1bit|contador\(4),
	datac => \i_Unidad_control|i1_Contador1bit|contador\(5),
	datad => \i_Unidad_control|i1_Contador1bit|contador\(6),
	combout => \i_Unidad_control|i1_Contador1bit|Equal0~1_combout\);

-- Location: LCCOMB_X20_Y21_N12
\i_Unidad_control|i1_Contador|contador~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Unidad_control|i1_Contador|contador~1_combout\ = (\i_Unidad_control|estado_act.Registro~regout\ & (!\i_Unidad_control|i1_Contador|contador\(0) & !\i_Unidad_control|Selector4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Unidad_control|estado_act.Registro~regout\,
	datac => \i_Unidad_control|i1_Contador|contador\(0),
	datad => \i_Unidad_control|Selector4~0_combout\,
	combout => \i_Unidad_control|i1_Contador|contador~1_combout\);

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

-- Location: LCCOMB_X20_Y21_N20
\i_Unidad_control|i1_Contador|contador~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Unidad_control|i1_Contador|contador~4_combout\ = (!\i_Unidad_control|Selector4~0_combout\ & (\i_Unidad_control|estado_act.Registro~regout\ & (\i_Unidad_control|i1_Contador|contador\(0) $ (\i_Unidad_control|i1_Contador|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Unidad_control|i1_Contador|contador\(0),
	datab => \i_Unidad_control|Selector4~0_combout\,
	datac => \i_Unidad_control|i1_Contador|contador\(1),
	datad => \i_Unidad_control|estado_act.Registro~regout\,
	combout => \i_Unidad_control|i1_Contador|contador~4_combout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
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
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: CLKCTRL_G1
\reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~clkctrl_outclk\);

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\transmi~I\ : cycloneii_io
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
	padio => ww_transmi,
	combout => \transmi~combout\);

-- Location: LCCOMB_X19_Y21_N4
\i_Unidad_control|i1_Flanco|estado_act.Esp0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Unidad_control|i1_Flanco|estado_act.Esp0~0_combout\ = !\transmi~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \transmi~combout\,
	combout => \i_Unidad_control|i1_Flanco|estado_act.Esp0~0_combout\);

-- Location: LCFF_X19_Y21_N5
\i_Unidad_control|i1_Flanco|estado_act.Esp0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_Unidad_control|i1_Flanco|estado_act.Esp0~0_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Unidad_control|i1_Flanco|estado_act.Esp0~regout\);

-- Location: LCCOMB_X19_Y21_N8
\i_Unidad_control|i1_Flanco|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Unidad_control|i1_Flanco|Selector1~0_combout\ = (!\i_Unidad_control|i1_Flanco|estado_act.Esp0~regout\ & !\transmi~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_Unidad_control|i1_Flanco|estado_act.Esp0~regout\,
	datad => \transmi~combout\,
	combout => \i_Unidad_control|i1_Flanco|Selector1~0_combout\);

-- Location: LCFF_X19_Y21_N9
\i_Unidad_control|i1_Flanco|estado_act.Pulso\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_Unidad_control|i1_Flanco|Selector1~0_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Unidad_control|i1_Flanco|estado_act.Pulso~regout\);

-- Location: LCCOMB_X19_Y21_N18
\i_Unidad_control|estado_act.Parar~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Unidad_control|estado_act.Parar~0_combout\ = (\i_Unidad_control|i1_Contador1bit|co~combout\ & ((\i_Unidad_control|estado_act.Parar~regout\))) # (!\i_Unidad_control|i1_Contador1bit|co~combout\ & (\i_Unidad_control|estado_act.Paridad~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Unidad_control|estado_act.Paridad~regout\,
	datac => \i_Unidad_control|estado_act.Parar~regout\,
	datad => \i_Unidad_control|i1_Contador1bit|co~combout\,
	combout => \i_Unidad_control|estado_act.Parar~0_combout\);

-- Location: LCFF_X19_Y21_N19
\i_Unidad_control|estado_act.Parar\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_Unidad_control|estado_act.Parar~0_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Unidad_control|estado_act.Parar~regout\);

-- Location: LCCOMB_X19_Y21_N28
\i_Unidad_control|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Unidad_control|Selector0~0_combout\ = (\i_Unidad_control|i1_Flanco|estado_act.Pulso~regout\ & (((\i_Unidad_control|i1_Contador1bit|co~combout\)) # (!\i_Unidad_control|estado_act.Parar~regout\))) # (!\i_Unidad_control|i1_Flanco|estado_act.Pulso~regout\ 
-- & (\i_Unidad_control|estado_act.Reposo~regout\ & ((\i_Unidad_control|i1_Contador1bit|co~combout\) # (!\i_Unidad_control|estado_act.Parar~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Unidad_control|i1_Flanco|estado_act.Pulso~regout\,
	datab => \i_Unidad_control|estado_act.Parar~regout\,
	datac => \i_Unidad_control|estado_act.Reposo~regout\,
	datad => \i_Unidad_control|i1_Contador1bit|co~combout\,
	combout => \i_Unidad_control|Selector0~0_combout\);

-- Location: LCFF_X19_Y21_N29
\i_Unidad_control|estado_act.Reposo\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_Unidad_control|Selector0~0_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Unidad_control|estado_act.Reposo~regout\);

-- Location: LCCOMB_X19_Y21_N26
\i_Unidad_control|i1_Contador1bit|contador[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Unidad_control|i1_Contador1bit|contador[2]~12_combout\ = (\i_Unidad_control|estado_act.Reposo~regout\ & !\i_Unidad_control|estado_act.Registro~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_Unidad_control|estado_act.Reposo~regout\,
	datad => \i_Unidad_control|estado_act.Registro~regout\,
	combout => \i_Unidad_control|i1_Contador1bit|contador[2]~12_combout\);

-- Location: LCCOMB_X18_Y21_N6
\i_Unidad_control|i1_Contador1bit|contador[0]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Unidad_control|i1_Contador1bit|contador[0]~13_combout\ = \i_Unidad_control|i1_Contador1bit|contador\(0) $ (VCC)
-- \i_Unidad_control|i1_Contador1bit|contador[0]~14\ = CARRY(\i_Unidad_control|i1_Contador1bit|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Unidad_control|i1_Contador1bit|contador\(0),
	datad => VCC,
	combout => \i_Unidad_control|i1_Contador1bit|contador[0]~13_combout\,
	cout => \i_Unidad_control|i1_Contador1bit|contador[0]~14\);

-- Location: LCCOMB_X18_Y21_N8
\i_Unidad_control|i1_Contador1bit|contador[1]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Unidad_control|i1_Contador1bit|contador[1]~17_combout\ = (\i_Unidad_control|i1_Contador1bit|contador\(1) & (!\i_Unidad_control|i1_Contador1bit|contador[0]~14\)) # (!\i_Unidad_control|i1_Contador1bit|contador\(1) & 
-- ((\i_Unidad_control|i1_Contador1bit|contador[0]~14\) # (GND)))
-- \i_Unidad_control|i1_Contador1bit|contador[1]~18\ = CARRY((!\i_Unidad_control|i1_Contador1bit|contador[0]~14\) # (!\i_Unidad_control|i1_Contador1bit|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_Unidad_control|i1_Contador1bit|contador\(1),
	datad => VCC,
	cin => \i_Unidad_control|i1_Contador1bit|contador[0]~14\,
	combout => \i_Unidad_control|i1_Contador1bit|contador[1]~17_combout\,
	cout => \i_Unidad_control|i1_Contador1bit|contador[1]~18\);

-- Location: LCCOMB_X18_Y21_N10
\i_Unidad_control|i1_Contador1bit|contador[2]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Unidad_control|i1_Contador1bit|contador[2]~19_combout\ = (\i_Unidad_control|i1_Contador1bit|contador\(2) & (\i_Unidad_control|i1_Contador1bit|contador[1]~18\ $ (GND))) # (!\i_Unidad_control|i1_Contador1bit|contador\(2) & 
-- (!\i_Unidad_control|i1_Contador1bit|contador[1]~18\ & VCC))
-- \i_Unidad_control|i1_Contador1bit|contador[2]~20\ = CARRY((\i_Unidad_control|i1_Contador1bit|contador\(2) & !\i_Unidad_control|i1_Contador1bit|contador[1]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_Unidad_control|i1_Contador1bit|contador\(2),
	datad => VCC,
	cin => \i_Unidad_control|i1_Contador1bit|contador[1]~18\,
	combout => \i_Unidad_control|i1_Contador1bit|contador[2]~19_combout\,
	cout => \i_Unidad_control|i1_Contador1bit|contador[2]~20\);

-- Location: LCCOMB_X19_Y21_N10
\i_Unidad_control|i1_Contador1bit|contador[2]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Unidad_control|i1_Contador1bit|contador[2]~16_combout\ = (\i_Unidad_control|estado_act.Serie0~regout\) # ((\i_Unidad_control|estado_act.Reposo~regout\ & !\i_Unidad_control|estado_act.Registro~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_Unidad_control|estado_act.Reposo~regout\,
	datac => \i_Unidad_control|estado_act.Serie0~regout\,
	datad => \i_Unidad_control|estado_act.Registro~regout\,
	combout => \i_Unidad_control|i1_Contador1bit|contador[2]~16_combout\);

-- Location: LCFF_X18_Y21_N11
\i_Unidad_control|i1_Contador1bit|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_Unidad_control|i1_Contador1bit|contador[2]~19_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	sclr => \i_Unidad_control|i1_Contador1bit|contador[2]~15_combout\,
	ena => \i_Unidad_control|i1_Contador1bit|contador[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Unidad_control|i1_Contador1bit|contador\(2));

-- Location: LCFF_X18_Y21_N7
\i_Unidad_control|i1_Contador1bit|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_Unidad_control|i1_Contador1bit|contador[0]~13_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	sclr => \i_Unidad_control|i1_Contador1bit|contador[2]~15_combout\,
	ena => \i_Unidad_control|i1_Contador1bit|contador[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Unidad_control|i1_Contador1bit|contador\(0));

-- Location: LCCOMB_X18_Y21_N0
\i_Unidad_control|i1_Contador1bit|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Unidad_control|i1_Contador1bit|Equal0~0_combout\ = ((\i_Unidad_control|i1_Contador1bit|contador\(1)) # ((\i_Unidad_control|i1_Contador1bit|contador\(0)) # (!\i_Unidad_control|i1_Contador1bit|contador\(2)))) # 
-- (!\i_Unidad_control|i1_Contador1bit|contador\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Unidad_control|i1_Contador1bit|contador\(3),
	datab => \i_Unidad_control|i1_Contador1bit|contador\(1),
	datac => \i_Unidad_control|i1_Contador1bit|contador\(2),
	datad => \i_Unidad_control|i1_Contador1bit|contador\(0),
	combout => \i_Unidad_control|i1_Contador1bit|Equal0~0_combout\);

-- Location: LCCOMB_X18_Y21_N2
\i_Unidad_control|i1_Contador1bit|contador[2]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Unidad_control|i1_Contador1bit|contador[2]~15_combout\ = ((!\i_Unidad_control|i1_Contador1bit|Equal0~1_combout\ & (!\i_Unidad_control|i1_Contador1bit|Equal0~2_combout\ & !\i_Unidad_control|i1_Contador1bit|Equal0~0_combout\))) # 
-- (!\i_Unidad_control|i1_Contador1bit|contador[2]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Unidad_control|i1_Contador1bit|Equal0~1_combout\,
	datab => \i_Unidad_control|i1_Contador1bit|Equal0~2_combout\,
	datac => \i_Unidad_control|i1_Contador1bit|contador[2]~12_combout\,
	datad => \i_Unidad_control|i1_Contador1bit|Equal0~0_combout\,
	combout => \i_Unidad_control|i1_Contador1bit|contador[2]~15_combout\);

-- Location: LCFF_X18_Y21_N9
\i_Unidad_control|i1_Contador1bit|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_Unidad_control|i1_Contador1bit|contador[1]~17_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	sclr => \i_Unidad_control|i1_Contador1bit|contador[2]~15_combout\,
	ena => \i_Unidad_control|i1_Contador1bit|contador[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Unidad_control|i1_Contador1bit|contador\(1));

-- Location: LCCOMB_X18_Y21_N14
\i_Unidad_control|i1_Contador1bit|contador[4]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Unidad_control|i1_Contador1bit|contador[4]~23_combout\ = (\i_Unidad_control|i1_Contador1bit|contador\(4) & (\i_Unidad_control|i1_Contador1bit|contador[3]~22\ $ (GND))) # (!\i_Unidad_control|i1_Contador1bit|contador\(4) & 
-- (!\i_Unidad_control|i1_Contador1bit|contador[3]~22\ & VCC))
-- \i_Unidad_control|i1_Contador1bit|contador[4]~24\ = CARRY((\i_Unidad_control|i1_Contador1bit|contador\(4) & !\i_Unidad_control|i1_Contador1bit|contador[3]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_Unidad_control|i1_Contador1bit|contador\(4),
	datad => VCC,
	cin => \i_Unidad_control|i1_Contador1bit|contador[3]~22\,
	combout => \i_Unidad_control|i1_Contador1bit|contador[4]~23_combout\,
	cout => \i_Unidad_control|i1_Contador1bit|contador[4]~24\);

-- Location: LCFF_X18_Y21_N15
\i_Unidad_control|i1_Contador1bit|contador[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_Unidad_control|i1_Contador1bit|contador[4]~23_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	sclr => \i_Unidad_control|i1_Contador1bit|contador[2]~15_combout\,
	ena => \i_Unidad_control|i1_Contador1bit|contador[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Unidad_control|i1_Contador1bit|contador\(4));

-- Location: LCCOMB_X18_Y21_N18
\i_Unidad_control|i1_Contador1bit|contador[6]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Unidad_control|i1_Contador1bit|contador[6]~27_combout\ = (\i_Unidad_control|i1_Contador1bit|contador\(6) & (\i_Unidad_control|i1_Contador1bit|contador[5]~26\ $ (GND))) # (!\i_Unidad_control|i1_Contador1bit|contador\(6) & 
-- (!\i_Unidad_control|i1_Contador1bit|contador[5]~26\ & VCC))
-- \i_Unidad_control|i1_Contador1bit|contador[6]~28\ = CARRY((\i_Unidad_control|i1_Contador1bit|contador\(6) & !\i_Unidad_control|i1_Contador1bit|contador[5]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_Unidad_control|i1_Contador1bit|contador\(6),
	datad => VCC,
	cin => \i_Unidad_control|i1_Contador1bit|contador[5]~26\,
	combout => \i_Unidad_control|i1_Contador1bit|contador[6]~27_combout\,
	cout => \i_Unidad_control|i1_Contador1bit|contador[6]~28\);

-- Location: LCFF_X18_Y21_N19
\i_Unidad_control|i1_Contador1bit|contador[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_Unidad_control|i1_Contador1bit|contador[6]~27_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	sclr => \i_Unidad_control|i1_Contador1bit|contador[2]~15_combout\,
	ena => \i_Unidad_control|i1_Contador1bit|contador[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Unidad_control|i1_Contador1bit|contador\(6));

-- Location: LCCOMB_X18_Y21_N20
\i_Unidad_control|i1_Contador1bit|contador[7]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Unidad_control|i1_Contador1bit|contador[7]~29_combout\ = (\i_Unidad_control|i1_Contador1bit|contador\(7) & (!\i_Unidad_control|i1_Contador1bit|contador[6]~28\)) # (!\i_Unidad_control|i1_Contador1bit|contador\(7) & 
-- ((\i_Unidad_control|i1_Contador1bit|contador[6]~28\) # (GND)))
-- \i_Unidad_control|i1_Contador1bit|contador[7]~30\ = CARRY((!\i_Unidad_control|i1_Contador1bit|contador[6]~28\) # (!\i_Unidad_control|i1_Contador1bit|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_Unidad_control|i1_Contador1bit|contador\(7),
	datad => VCC,
	cin => \i_Unidad_control|i1_Contador1bit|contador[6]~28\,
	combout => \i_Unidad_control|i1_Contador1bit|contador[7]~29_combout\,
	cout => \i_Unidad_control|i1_Contador1bit|contador[7]~30\);

-- Location: LCFF_X18_Y21_N21
\i_Unidad_control|i1_Contador1bit|contador[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_Unidad_control|i1_Contador1bit|contador[7]~29_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	sclr => \i_Unidad_control|i1_Contador1bit|contador[2]~15_combout\,
	ena => \i_Unidad_control|i1_Contador1bit|contador[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Unidad_control|i1_Contador1bit|contador\(7));

-- Location: LCCOMB_X18_Y21_N22
\i_Unidad_control|i1_Contador1bit|contador[8]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Unidad_control|i1_Contador1bit|contador[8]~31_combout\ = (\i_Unidad_control|i1_Contador1bit|contador\(8) & (\i_Unidad_control|i1_Contador1bit|contador[7]~30\ $ (GND))) # (!\i_Unidad_control|i1_Contador1bit|contador\(8) & 
-- (!\i_Unidad_control|i1_Contador1bit|contador[7]~30\ & VCC))
-- \i_Unidad_control|i1_Contador1bit|contador[8]~32\ = CARRY((\i_Unidad_control|i1_Contador1bit|contador\(8) & !\i_Unidad_control|i1_Contador1bit|contador[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_Unidad_control|i1_Contador1bit|contador\(8),
	datad => VCC,
	cin => \i_Unidad_control|i1_Contador1bit|contador[7]~30\,
	combout => \i_Unidad_control|i1_Contador1bit|contador[8]~31_combout\,
	cout => \i_Unidad_control|i1_Contador1bit|contador[8]~32\);

-- Location: LCFF_X18_Y21_N23
\i_Unidad_control|i1_Contador1bit|contador[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_Unidad_control|i1_Contador1bit|contador[8]~31_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	sclr => \i_Unidad_control|i1_Contador1bit|contador[2]~15_combout\,
	ena => \i_Unidad_control|i1_Contador1bit|contador[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Unidad_control|i1_Contador1bit|contador\(8));

-- Location: LCCOMB_X18_Y21_N24
\i_Unidad_control|i1_Contador1bit|contador[9]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Unidad_control|i1_Contador1bit|contador[9]~33_combout\ = (\i_Unidad_control|i1_Contador1bit|contador\(9) & (!\i_Unidad_control|i1_Contador1bit|contador[8]~32\)) # (!\i_Unidad_control|i1_Contador1bit|contador\(9) & 
-- ((\i_Unidad_control|i1_Contador1bit|contador[8]~32\) # (GND)))
-- \i_Unidad_control|i1_Contador1bit|contador[9]~34\ = CARRY((!\i_Unidad_control|i1_Contador1bit|contador[8]~32\) # (!\i_Unidad_control|i1_Contador1bit|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_Unidad_control|i1_Contador1bit|contador\(9),
	datad => VCC,
	cin => \i_Unidad_control|i1_Contador1bit|contador[8]~32\,
	combout => \i_Unidad_control|i1_Contador1bit|contador[9]~33_combout\,
	cout => \i_Unidad_control|i1_Contador1bit|contador[9]~34\);

-- Location: LCCOMB_X18_Y21_N26
\i_Unidad_control|i1_Contador1bit|contador[10]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Unidad_control|i1_Contador1bit|contador[10]~35_combout\ = (\i_Unidad_control|i1_Contador1bit|contador\(10) & (\i_Unidad_control|i1_Contador1bit|contador[9]~34\ $ (GND))) # (!\i_Unidad_control|i1_Contador1bit|contador\(10) & 
-- (!\i_Unidad_control|i1_Contador1bit|contador[9]~34\ & VCC))
-- \i_Unidad_control|i1_Contador1bit|contador[10]~36\ = CARRY((\i_Unidad_control|i1_Contador1bit|contador\(10) & !\i_Unidad_control|i1_Contador1bit|contador[9]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_Unidad_control|i1_Contador1bit|contador\(10),
	datad => VCC,
	cin => \i_Unidad_control|i1_Contador1bit|contador[9]~34\,
	combout => \i_Unidad_control|i1_Contador1bit|contador[10]~35_combout\,
	cout => \i_Unidad_control|i1_Contador1bit|contador[10]~36\);

-- Location: LCCOMB_X18_Y21_N28
\i_Unidad_control|i1_Contador1bit|contador[11]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Unidad_control|i1_Contador1bit|contador[11]~37_combout\ = \i_Unidad_control|i1_Contador1bit|contador[10]~36\ $ (\i_Unidad_control|i1_Contador1bit|contador\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i_Unidad_control|i1_Contador1bit|contador\(11),
	cin => \i_Unidad_control|i1_Contador1bit|contador[10]~36\,
	combout => \i_Unidad_control|i1_Contador1bit|contador[11]~37_combout\);

-- Location: LCFF_X18_Y21_N29
\i_Unidad_control|i1_Contador1bit|contador[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_Unidad_control|i1_Contador1bit|contador[11]~37_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	sclr => \i_Unidad_control|i1_Contador1bit|contador[2]~15_combout\,
	ena => \i_Unidad_control|i1_Contador1bit|contador[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Unidad_control|i1_Contador1bit|contador\(11));

-- Location: LCFF_X18_Y21_N25
\i_Unidad_control|i1_Contador1bit|contador[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_Unidad_control|i1_Contador1bit|contador[9]~33_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	sclr => \i_Unidad_control|i1_Contador1bit|contador[2]~15_combout\,
	ena => \i_Unidad_control|i1_Contador1bit|contador[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Unidad_control|i1_Contador1bit|contador\(9));

-- Location: LCFF_X18_Y21_N27
\i_Unidad_control|i1_Contador1bit|contador[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_Unidad_control|i1_Contador1bit|contador[10]~35_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	sclr => \i_Unidad_control|i1_Contador1bit|contador[2]~15_combout\,
	ena => \i_Unidad_control|i1_Contador1bit|contador[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Unidad_control|i1_Contador1bit|contador\(10));

-- Location: LCCOMB_X18_Y21_N4
\i_Unidad_control|i1_Contador1bit|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Unidad_control|i1_Contador1bit|Equal0~2_combout\ = (\i_Unidad_control|i1_Contador1bit|contador\(8)) # (((\i_Unidad_control|i1_Contador1bit|contador\(10)) # (!\i_Unidad_control|i1_Contador1bit|contador\(9))) # 
-- (!\i_Unidad_control|i1_Contador1bit|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Unidad_control|i1_Contador1bit|contador\(8),
	datab => \i_Unidad_control|i1_Contador1bit|contador\(11),
	datac => \i_Unidad_control|i1_Contador1bit|contador\(9),
	datad => \i_Unidad_control|i1_Contador1bit|contador\(10),
	combout => \i_Unidad_control|i1_Contador1bit|Equal0~2_combout\);

-- Location: LCCOMB_X19_Y21_N12
\i_Unidad_control|i1_Contador1bit|co\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Unidad_control|i1_Contador1bit|co~combout\ = (\i_Unidad_control|i1_Contador1bit|Equal0~1_combout\) # (((\i_Unidad_control|i1_Contador1bit|Equal0~2_combout\) # (\i_Unidad_control|i1_Contador1bit|Equal0~0_combout\)) # 
-- (!\i_Unidad_control|i1_Contador1bit|contador[2]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Unidad_control|i1_Contador1bit|Equal0~1_combout\,
	datab => \i_Unidad_control|i1_Contador1bit|contador[2]~12_combout\,
	datac => \i_Unidad_control|i1_Contador1bit|Equal0~2_combout\,
	datad => \i_Unidad_control|i1_Contador1bit|Equal0~0_combout\,
	combout => \i_Unidad_control|i1_Contador1bit|co~combout\);

-- Location: LCCOMB_X19_Y21_N16
\i_Unidad_control|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Unidad_control|Selector1~0_combout\ = (\i_Unidad_control|estado_act.Reposo~regout\ & (((\i_Unidad_control|estado_act.Serie0~regout\ & \i_Unidad_control|i1_Contador1bit|co~combout\)))) # (!\i_Unidad_control|estado_act.Reposo~regout\ & 
-- ((\i_Unidad_control|i1_Flanco|estado_act.Pulso~regout\) # ((\i_Unidad_control|estado_act.Serie0~regout\ & \i_Unidad_control|i1_Contador1bit|co~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Unidad_control|estado_act.Reposo~regout\,
	datab => \i_Unidad_control|i1_Flanco|estado_act.Pulso~regout\,
	datac => \i_Unidad_control|estado_act.Serie0~regout\,
	datad => \i_Unidad_control|i1_Contador1bit|co~combout\,
	combout => \i_Unidad_control|Selector1~0_combout\);

-- Location: LCFF_X19_Y21_N17
\i_Unidad_control|estado_act.Serie0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_Unidad_control|Selector1~0_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Unidad_control|estado_act.Serie0~regout\);

-- Location: LCCOMB_X20_Y21_N28
\i_Controlar_paridad|b~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Controlar_paridad|b~1_combout\ = (\i_Unidad_control|estado_act.Registro~regout\) # (\i_Unidad_control|estado_act.Serie0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Unidad_control|estado_act.Registro~regout\,
	datad => \i_Unidad_control|estado_act.Serie0~regout\,
	combout => \i_Controlar_paridad|b~1_combout\);

-- Location: LCFF_X20_Y21_N21
\i_Unidad_control|i1_Contador|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_Unidad_control|i1_Contador|contador~4_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	ena => \i_Controlar_paridad|b~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Unidad_control|i1_Contador|contador\(1));

-- Location: LCCOMB_X20_Y21_N2
\i_Unidad_control|i1_Contador|contador~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Unidad_control|i1_Contador|contador~3_combout\ = (\i_Unidad_control|i1_Contador|contador[0]~2_combout\ & (\i_Unidad_control|i1_Contador|contador\(2) $ (((\i_Unidad_control|i1_Contador|contador\(0) & \i_Unidad_control|i1_Contador|contador\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Unidad_control|i1_Contador|contador\(0),
	datab => \i_Unidad_control|i1_Contador|contador\(1),
	datac => \i_Unidad_control|i1_Contador|contador\(2),
	datad => \i_Unidad_control|i1_Contador|contador[0]~2_combout\,
	combout => \i_Unidad_control|i1_Contador|contador~3_combout\);

-- Location: LCFF_X20_Y21_N3
\i_Unidad_control|i1_Contador|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_Unidad_control|i1_Contador|contador~3_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	ena => \i_Controlar_paridad|b~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Unidad_control|i1_Contador|contador\(2));

-- Location: LCCOMB_X20_Y21_N14
\i_Unidad_control|i1_Contador|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Unidad_control|i1_Contador|Add0~0_combout\ = \i_Unidad_control|i1_Contador|contador\(3) $ (((\i_Unidad_control|i1_Contador|contador\(0) & (\i_Unidad_control|i1_Contador|contador\(2) & \i_Unidad_control|i1_Contador|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Unidad_control|i1_Contador|contador\(0),
	datab => \i_Unidad_control|i1_Contador|contador\(2),
	datac => \i_Unidad_control|i1_Contador|contador\(1),
	datad => \i_Unidad_control|i1_Contador|contador\(3),
	combout => \i_Unidad_control|i1_Contador|Add0~0_combout\);

-- Location: LCCOMB_X20_Y21_N6
\i_Unidad_control|i1_Contador|contador~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Unidad_control|i1_Contador|contador~0_combout\ = (\i_Unidad_control|estado_act.Registro~regout\ & (\i_Unidad_control|i1_Contador|Add0~0_combout\ & !\i_Unidad_control|Selector4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Unidad_control|estado_act.Registro~regout\,
	datac => \i_Unidad_control|i1_Contador|Add0~0_combout\,
	datad => \i_Unidad_control|Selector4~0_combout\,
	combout => \i_Unidad_control|i1_Contador|contador~0_combout\);

-- Location: LCFF_X20_Y21_N7
\i_Unidad_control|i1_Contador|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_Unidad_control|i1_Contador|contador~0_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	ena => \i_Controlar_paridad|b~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Unidad_control|i1_Contador|contador\(3));

-- Location: LCCOMB_X20_Y21_N22
\i_Unidad_control|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Unidad_control|Selector4~0_combout\ = (!\i_Unidad_control|i1_Contador|contador\(0) & (!\i_Unidad_control|i1_Contador|contador\(2) & (!\i_Unidad_control|i1_Contador|contador\(1) & \i_Unidad_control|i1_Contador|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Unidad_control|i1_Contador|contador\(0),
	datab => \i_Unidad_control|i1_Contador|contador\(2),
	datac => \i_Unidad_control|i1_Contador|contador\(1),
	datad => \i_Unidad_control|i1_Contador|contador\(3),
	combout => \i_Unidad_control|Selector4~0_combout\);

-- Location: LCCOMB_X20_Y21_N0
\i_Unidad_control|i1_Contador|contador[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Unidad_control|i1_Contador|contador[0]~2_combout\ = (\i_Unidad_control|estado_act.Registro~regout\ & !\i_Unidad_control|Selector4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Unidad_control|estado_act.Registro~regout\,
	datad => \i_Unidad_control|Selector4~0_combout\,
	combout => \i_Unidad_control|i1_Contador|contador[0]~2_combout\);

-- Location: LCCOMB_X19_Y21_N2
\i_Unidad_control|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Unidad_control|Selector3~0_combout\ = (\i_Unidad_control|estado_act.Registro~regout\) # ((\i_Unidad_control|estado_act.Reposo~regout\ & ((!\i_Unidad_control|i1_Contador1bit|co~combout\))) # (!\i_Unidad_control|estado_act.Reposo~regout\ & 
-- (\i_Unidad_control|i1_Flanco|estado_act.Pulso~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Unidad_control|estado_act.Reposo~regout\,
	datab => \i_Unidad_control|estado_act.Registro~regout\,
	datac => \i_Unidad_control|i1_Flanco|estado_act.Pulso~regout\,
	datad => \i_Unidad_control|i1_Contador1bit|co~combout\,
	combout => \i_Unidad_control|Selector3~0_combout\);

-- Location: LCFF_X19_Y21_N27
\i_Unidad_control|estado_act.Espera1bit\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Unidad_control|i1_Contador|contador[0]~2_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	sload => VCC,
	ena => \i_Unidad_control|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Unidad_control|estado_act.Espera1bit~regout\);

-- Location: LCCOMB_X19_Y21_N30
\i_Unidad_control|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Unidad_control|Selector2~0_combout\ = (\i_Unidad_control|estado_act.Serie0~regout\ & (((\i_Unidad_control|estado_act.Registro~regout\) # (!\i_Unidad_control|i1_Contador1bit|co~combout\)))) # (!\i_Unidad_control|estado_act.Serie0~regout\ & 
-- (\i_Unidad_control|estado_act.Espera1bit~regout\ & ((\i_Unidad_control|estado_act.Registro~regout\) # (!\i_Unidad_control|i1_Contador1bit|co~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Unidad_control|estado_act.Serie0~regout\,
	datab => \i_Unidad_control|estado_act.Espera1bit~regout\,
	datac => \i_Unidad_control|estado_act.Registro~regout\,
	datad => \i_Unidad_control|i1_Contador1bit|co~combout\,
	combout => \i_Unidad_control|Selector2~0_combout\);

-- Location: LCFF_X19_Y21_N31
\i_Unidad_control|estado_act.Registro\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_Unidad_control|Selector2~0_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Unidad_control|estado_act.Registro~regout\);

-- Location: LCCOMB_X19_Y21_N20
\i_Unidad_control|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Unidad_control|Selector4~1_combout\ = (\i_Unidad_control|estado_act.Registro~regout\ & \i_Unidad_control|Selector4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_Unidad_control|estado_act.Registro~regout\,
	datad => \i_Unidad_control|Selector4~0_combout\,
	combout => \i_Unidad_control|Selector4~1_combout\);

-- Location: LCFF_X19_Y21_N21
\i_Unidad_control|estado_act.Paridad\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_Unidad_control|Selector4~1_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	ena => \i_Unidad_control|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Unidad_control|estado_act.Paridad~regout\);

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\e_p[3]~I\ : cycloneii_io
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
	padio => ww_e_p(3),
	combout => \e_p~combout\(3));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\e_p[7]~I\ : cycloneii_io
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
	padio => ww_e_p(7),
	combout => \e_p~combout\(7));

-- Location: LCCOMB_X20_Y21_N8
\i_registrops8|registro~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_registrops8|registro~7_combout\ = (!\i_Unidad_control|estado_act.Registro~regout\ & \e_p~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_Unidad_control|estado_act.Registro~regout\,
	datad => \e_p~combout\(7),
	combout => \i_registrops8|registro~7_combout\);

-- Location: LCFF_X20_Y21_N9
\i_registrops8|registro[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_registrops8|registro~7_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	ena => \i_Controlar_paridad|b~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_registrops8|registro\(7));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\e_p[6]~I\ : cycloneii_io
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
	padio => ww_e_p(6),
	combout => \e_p~combout\(6));

-- Location: LCCOMB_X20_Y21_N18
\i_registrops8|registro~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_registrops8|registro~6_combout\ = (\i_Unidad_control|estado_act.Registro~regout\ & (\i_registrops8|registro\(7))) # (!\i_Unidad_control|estado_act.Registro~regout\ & ((\e_p~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Unidad_control|estado_act.Registro~regout\,
	datac => \i_registrops8|registro\(7),
	datad => \e_p~combout\(6),
	combout => \i_registrops8|registro~6_combout\);

-- Location: LCFF_X20_Y21_N19
\i_registrops8|registro[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_registrops8|registro~6_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	ena => \i_Controlar_paridad|b~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_registrops8|registro\(6));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\e_p[5]~I\ : cycloneii_io
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
	padio => ww_e_p(5),
	combout => \e_p~combout\(5));

-- Location: LCCOMB_X20_Y21_N16
\i_registrops8|registro~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_registrops8|registro~5_combout\ = (\i_Unidad_control|estado_act.Registro~regout\ & (\i_registrops8|registro\(6))) # (!\i_Unidad_control|estado_act.Registro~regout\ & ((\e_p~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_registrops8|registro\(6),
	datac => \i_Unidad_control|estado_act.Registro~regout\,
	datad => \e_p~combout\(5),
	combout => \i_registrops8|registro~5_combout\);

-- Location: LCFF_X20_Y21_N17
\i_registrops8|registro[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_registrops8|registro~5_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	ena => \i_Controlar_paridad|b~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_registrops8|registro\(5));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\e_p[4]~I\ : cycloneii_io
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
	padio => ww_e_p(4),
	combout => \e_p~combout\(4));

-- Location: LCCOMB_X20_Y21_N30
\i_registrops8|registro~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_registrops8|registro~4_combout\ = (\i_Unidad_control|estado_act.Registro~regout\ & (\i_registrops8|registro\(5))) # (!\i_Unidad_control|estado_act.Registro~regout\ & ((\e_p~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Unidad_control|estado_act.Registro~regout\,
	datac => \i_registrops8|registro\(5),
	datad => \e_p~combout\(4),
	combout => \i_registrops8|registro~4_combout\);

-- Location: LCFF_X20_Y21_N31
\i_registrops8|registro[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_registrops8|registro~4_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	ena => \i_Controlar_paridad|b~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_registrops8|registro\(4));

-- Location: LCCOMB_X19_Y21_N0
\i_registrops8|registro~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_registrops8|registro~3_combout\ = (\i_Unidad_control|estado_act.Registro~regout\ & ((\i_registrops8|registro\(4)))) # (!\i_Unidad_control|estado_act.Registro~regout\ & (\e_p~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_Unidad_control|estado_act.Registro~regout\,
	datac => \e_p~combout\(3),
	datad => \i_registrops8|registro\(4),
	combout => \i_registrops8|registro~3_combout\);

-- Location: LCFF_X20_Y21_N1
\i_registrops8|registro[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_registrops8|registro~3_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	sload => VCC,
	ena => \i_Controlar_paridad|b~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_registrops8|registro\(3));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\e_p[2]~I\ : cycloneii_io
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
	padio => ww_e_p(2),
	combout => \e_p~combout\(2));

-- Location: LCCOMB_X20_Y21_N4
\i_registrops8|registro~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_registrops8|registro~2_combout\ = (\i_Unidad_control|estado_act.Registro~regout\ & (\i_registrops8|registro\(3))) # (!\i_Unidad_control|estado_act.Registro~regout\ & ((\e_p~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_registrops8|registro\(3),
	datac => \i_Unidad_control|estado_act.Registro~regout\,
	datad => \e_p~combout\(2),
	combout => \i_registrops8|registro~2_combout\);

-- Location: LCFF_X20_Y21_N5
\i_registrops8|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_registrops8|registro~2_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	ena => \i_Controlar_paridad|b~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_registrops8|registro\(2));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\e_p[1]~I\ : cycloneii_io
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
	padio => ww_e_p(1),
	combout => \e_p~combout\(1));

-- Location: LCCOMB_X20_Y21_N26
\i_registrops8|registro~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_registrops8|registro~1_combout\ = (\i_Unidad_control|estado_act.Registro~regout\ & (\i_registrops8|registro\(2))) # (!\i_Unidad_control|estado_act.Registro~regout\ & ((\e_p~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Unidad_control|estado_act.Registro~regout\,
	datab => \i_registrops8|registro\(2),
	datac => \e_p~combout\(1),
	combout => \i_registrops8|registro~1_combout\);

-- Location: LCFF_X20_Y21_N27
\i_registrops8|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_registrops8|registro~1_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	ena => \i_Controlar_paridad|b~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_registrops8|registro\(1));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\e_p[0]~I\ : cycloneii_io
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
	padio => ww_e_p(0),
	combout => \e_p~combout\(0));

-- Location: LCCOMB_X20_Y21_N24
\i_registrops8|registro~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_registrops8|registro~0_combout\ = (\i_Unidad_control|estado_act.Registro~regout\ & (\i_registrops8|registro\(1))) # (!\i_Unidad_control|estado_act.Registro~regout\ & ((\e_p~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Unidad_control|estado_act.Registro~regout\,
	datab => \i_registrops8|registro\(1),
	datac => \e_p~combout\(0),
	combout => \i_registrops8|registro~0_combout\);

-- Location: LCFF_X20_Y21_N25
\i_registrops8|registro[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_registrops8|registro~0_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	ena => \i_Controlar_paridad|b~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_registrops8|registro\(0));

-- Location: LCFF_X20_Y21_N29
\i_registrops8|salida\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_registrops8|registro\(0),
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	sload => VCC,
	ena => \i_Unidad_control|estado_act.Registro~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_registrops8|salida~regout\);

-- Location: LCCOMB_X19_Y21_N6
\i_Controlar_paridad|b~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Controlar_paridad|b~0_combout\ = (\i_Unidad_control|estado_act.Registro~regout\ & ((\i_registrops8|salida~regout\ $ (\i_Controlar_paridad|b~regout\)))) # (!\i_Unidad_control|estado_act.Registro~regout\ & (!\i_Unidad_control|estado_act.Serie0~regout\ & 
-- ((\i_Controlar_paridad|b~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Unidad_control|estado_act.Serie0~regout\,
	datab => \i_registrops8|salida~regout\,
	datac => \i_Controlar_paridad|b~regout\,
	datad => \i_Unidad_control|estado_act.Registro~regout\,
	combout => \i_Controlar_paridad|b~0_combout\);

-- Location: LCFF_X19_Y21_N7
\i_Controlar_paridad|b\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_Controlar_paridad|b~0_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Controlar_paridad|b~regout\);

-- Location: LCCOMB_X19_Y21_N22
\i_Mux_enviar|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_enviar|Mux0~0_combout\ = (!\i_Unidad_control|estado_act.Parar~regout\ & (\i_Unidad_control|estado_act.Reposo~regout\ & ((\i_Unidad_control|estado_act.Serie0~regout\) # (!\i_registrops8|salida~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Unidad_control|estado_act.Serie0~regout\,
	datab => \i_Unidad_control|estado_act.Parar~regout\,
	datac => \i_Unidad_control|estado_act.Reposo~regout\,
	datad => \i_registrops8|salida~regout\,
	combout => \i_Mux_enviar|Mux0~0_combout\);

-- Location: LCCOMB_X19_Y21_N24
\i_Mux_enviar|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_enviar|Mux0~1_combout\ = (\i_Unidad_control|estado_act.Paridad~regout\ & (!\i_Controlar_paridad|b~regout\)) # (!\i_Unidad_control|estado_act.Paridad~regout\ & (!\i_Mux_enviar|Mux0~0_combout\ & ((!\i_Unidad_control|estado_act.Serie0~regout\) # 
-- (!\i_Controlar_paridad|b~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Unidad_control|estado_act.Paridad~regout\,
	datab => \i_Controlar_paridad|b~regout\,
	datac => \i_Unidad_control|estado_act.Serie0~regout\,
	datad => \i_Mux_enviar|Mux0~0_combout\,
	combout => \i_Mux_enviar|Mux0~1_combout\);

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s_s~I\ : cycloneii_io
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
	datain => \i_Mux_enviar|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s_s);
END structure;


