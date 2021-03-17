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

-- DATE "03/17/2021 08:34:04"

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
	a : IN std_logic_vector(31 DOWNTO 0);
	b : IN std_logic_vector(31 DOWNTO 0);
	alu_op : IN std_logic_vector(3 DOWNTO 0);
	shamt : IN std_logic_vector(4 DOWNTO 0);
	alu_out : OUT std_logic_vector(31 DOWNTO 0);
	z : OUT std_logic;
	lt : OUT std_logic;
	ge : OUT std_logic
	);
END ALU;

-- Design Ports Information
-- alu_out[0]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out[1]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out[2]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out[3]	=>  Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out[4]	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out[5]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out[6]	=>  Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out[7]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out[8]	=>  Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out[9]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out[10]	=>  Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out[11]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out[12]	=>  Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out[13]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out[14]	=>  Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out[15]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out[16]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out[17]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out[18]	=>  Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out[19]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out[20]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out[21]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out[22]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out[23]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out[24]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out[25]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out[26]	=>  Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out[27]	=>  Location: PIN_AB14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out[28]	=>  Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out[29]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out[30]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out[31]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- z	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lt	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ge	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_op[1]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- alu_op[2]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- alu_op[0]	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[31]	=>  Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- alu_op[3]	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[31]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[30]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[30]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[29]	=>  Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[29]	=>  Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[28]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[28]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[27]	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[27]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[26]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[26]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[25]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[25]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[24]	=>  Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[24]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[23]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[23]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[22]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[22]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[21]	=>  Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[21]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[20]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[20]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[19]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[19]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[18]	=>  Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[18]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[17]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[17]	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[16]	=>  Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[16]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[15]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[15]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[14]	=>  Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[14]	=>  Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[13]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[13]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[12]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[12]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[11]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[11]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[10]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[10]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[9]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[9]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[8]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[8]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[7]	=>  Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[7]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[6]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[6]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[5]	=>  Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[5]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[4]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[4]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_N6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_W14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- shamt[4]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- shamt[3]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- shamt[0]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- shamt[1]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- shamt[2]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_a : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_alu_op : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_shamt : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_alu_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_z : std_logic;
SIGNAL ww_lt : std_logic;
SIGNAL ww_ge : std_logic;
SIGNAL \i1_sr|Add0~0_combout\ : std_logic;
SIGNAL \i1_sr|Add0~2_combout\ : std_logic;
SIGNAL \i1_sr|Add0~6_combout\ : std_logic;
SIGNAL \i1_sr|Add0~16_combout\ : std_logic;
SIGNAL \i1_sr|Add0~18_combout\ : std_logic;
SIGNAL \i1_sr|Add0~20_combout\ : std_logic;
SIGNAL \i1_sr|Add0~22_combout\ : std_logic;
SIGNAL \i1_sr|Add0~26_combout\ : std_logic;
SIGNAL \i1_sr|Add0~30_combout\ : std_logic;
SIGNAL \i1_sr|Add0~54_combout\ : std_logic;
SIGNAL \i1_sr|Add0~56_combout\ : std_logic;
SIGNAL \i1_sr|Add0~58_combout\ : std_logic;
SIGNAL \i1_sr|Add0~60_combout\ : std_logic;
SIGNAL \i1_sr|Add1~4_combout\ : std_logic;
SIGNAL \i1_sr|Add1~12_combout\ : std_logic;
SIGNAL \i1_sr|Add1~18_combout\ : std_logic;
SIGNAL \i1_sr|Add1~24_combout\ : std_logic;
SIGNAL \i1_sr|Add1~36_combout\ : std_logic;
SIGNAL \i1_sr|Add1~56_combout\ : std_logic;
SIGNAL \i1_sr|Add1~58_combout\ : std_logic;
SIGNAL \i1_sr|Add1~60_combout\ : std_logic;
SIGNAL \i1_sr|Add1~62_combout\ : std_logic;
SIGNAL \b_ext[29]~3_combout\ : std_logic;
SIGNAL \b_ext[20]~12_combout\ : std_logic;
SIGNAL \b_ext[17]~15_combout\ : std_logic;
SIGNAL \b_ext[16]~16_combout\ : std_logic;
SIGNAL \b_ext[15]~17_combout\ : std_logic;
SIGNAL \b_ext[12]~20_combout\ : std_logic;
SIGNAL \b_ext[10]~22_combout\ : std_logic;
SIGNAL \b_ext[8]~24_combout\ : std_logic;
SIGNAL \b_ext[2]~30_combout\ : std_logic;
SIGNAL \ShiftLeft0~5_combout\ : std_logic;
SIGNAL \ShiftRight0~8_combout\ : std_logic;
SIGNAL \ShiftRight0~11_combout\ : std_logic;
SIGNAL \ShiftRight0~15_combout\ : std_logic;
SIGNAL \ShiftRight0~24_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \ShiftRight0~42_combout\ : std_logic;
SIGNAL \Mux30~7_combout\ : std_logic;
SIGNAL \ShiftLeft0~6_combout\ : std_logic;
SIGNAL \ShiftRight1~23_combout\ : std_logic;
SIGNAL \ShiftRight1~24_combout\ : std_logic;
SIGNAL \ShiftRight1~25_combout\ : std_logic;
SIGNAL \Mux29~11_combout\ : std_logic;
SIGNAL \Mux29~12_combout\ : std_logic;
SIGNAL \ShiftRight1~29_combout\ : std_logic;
SIGNAL \ShiftRight1~32_combout\ : std_logic;
SIGNAL \ShiftRight0~48_combout\ : std_logic;
SIGNAL \ShiftRight1~37_combout\ : std_logic;
SIGNAL \Mux28~3_combout\ : std_logic;
SIGNAL \Mux28~4_combout\ : std_logic;
SIGNAL \Mux28~5_combout\ : std_logic;
SIGNAL \ShiftLeft0~12_combout\ : std_logic;
SIGNAL \ShiftLeft0~13_combout\ : std_logic;
SIGNAL \ShiftLeft0~15_combout\ : std_logic;
SIGNAL \ShiftRight0~56_combout\ : std_logic;
SIGNAL \ShiftRight0~57_combout\ : std_logic;
SIGNAL \ShiftRight0~58_combout\ : std_logic;
SIGNAL \ShiftRight1~44_combout\ : std_logic;
SIGNAL \ShiftRight1~45_combout\ : std_logic;
SIGNAL \ShiftLeft0~16_combout\ : std_logic;
SIGNAL \ShiftLeft0~17_combout\ : std_logic;
SIGNAL \ShiftLeft0~18_combout\ : std_logic;
SIGNAL \ShiftLeft0~19_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \Mux26~3_combout\ : std_logic;
SIGNAL \ShiftRight0~60_combout\ : std_logic;
SIGNAL \ShiftRight0~61_combout\ : std_logic;
SIGNAL \ShiftRight1~46_combout\ : std_logic;
SIGNAL \ShiftRight1~47_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \Mux25~4_combout\ : std_logic;
SIGNAL \ShiftLeft0~22_combout\ : std_logic;
SIGNAL \ShiftLeft0~23_combout\ : std_logic;
SIGNAL \ShiftRight1~49_combout\ : std_logic;
SIGNAL \ShiftRight1~50_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \Mux23~4_combout\ : std_logic;
SIGNAL \Mux23~7_combout\ : std_logic;
SIGNAL \ShiftLeft0~28_combout\ : std_logic;
SIGNAL \ShiftLeft0~30_combout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \Mux22~5_combout\ : std_logic;
SIGNAL \Mux21~6_combout\ : std_logic;
SIGNAL \Mux21~7_combout\ : std_logic;
SIGNAL \ShiftLeft0~36_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \ShiftLeft0~40_combout\ : std_logic;
SIGNAL \ShiftLeft0~42_combout\ : std_logic;
SIGNAL \ShiftLeft0~43_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \ShiftRight1~54_combout\ : std_logic;
SIGNAL \ShiftLeft0~48_combout\ : std_logic;
SIGNAL \ShiftLeft0~49_combout\ : std_logic;
SIGNAL \ShiftLeft0~54_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux13~5_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \ShiftLeft0~65_combout\ : std_logic;
SIGNAL \ShiftLeft0~66_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \ShiftLeft0~70_combout\ : std_logic;
SIGNAL \ShiftLeft0~71_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \Mux11~6_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \ShiftLeft0~72_combout\ : std_logic;
SIGNAL \ShiftLeft0~74_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \ShiftLeft0~75_combout\ : std_logic;
SIGNAL \ShiftLeft0~76_combout\ : std_logic;
SIGNAL \ShiftLeft0~77_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \ShiftLeft0~79_combout\ : std_logic;
SIGNAL \ShiftLeft0~80_combout\ : std_logic;
SIGNAL \ShiftLeft0~81_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \ShiftLeft0~86_combout\ : std_logic;
SIGNAL \ShiftLeft0~87_combout\ : std_logic;
SIGNAL \ShiftLeft0~88_combout\ : std_logic;
SIGNAL \ShiftLeft0~89_combout\ : std_logic;
SIGNAL \ShiftLeft0~90_combout\ : std_logic;
SIGNAL \ShiftLeft0~91_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \ShiftLeft0~92_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \ShiftLeft0~96_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \Mux3~8_combout\ : std_logic;
SIGNAL \ShiftLeft0~97_combout\ : std_logic;
SIGNAL \ShiftLeft0~98_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \ShiftLeft0~100_combout\ : std_logic;
SIGNAL \ShiftLeft0~101_combout\ : std_logic;
SIGNAL \ShiftLeft0~102_combout\ : std_logic;
SIGNAL \ShiftLeft0~103_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \ShiftLeft0~106_combout\ : std_logic;
SIGNAL \ShiftLeft0~107_combout\ : std_logic;
SIGNAL \ShiftLeft0~108_combout\ : std_logic;
SIGNAL \ShiftLeft0~109_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \Equal2~10_combout\ : std_logic;
SIGNAL \ShiftLeft0~110_combout\ : std_logic;
SIGNAL \Mux29~19_combout\ : std_logic;
SIGNAL \Mux28~10_combout\ : std_logic;
SIGNAL \ShiftRight0~74_combout\ : std_logic;
SIGNAL \Mux26~9_combout\ : std_logic;
SIGNAL \Mux21~10_combout\ : std_logic;
SIGNAL \Mux10~10_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \b_ext[0]~32_combout\ : std_logic;
SIGNAL \i1_sr|Add1~0_combout\ : std_logic;
SIGNAL \i1_sr|Equal0~0_combout\ : std_logic;
SIGNAL \i1_sr|s[0]~0_combout\ : std_logic;
SIGNAL \ShiftRight0~4_combout\ : std_logic;
SIGNAL \ShiftRight0~5_combout\ : std_logic;
SIGNAL \ShiftRight0~9_combout\ : std_logic;
SIGNAL \ShiftRight0~17_combout\ : std_logic;
SIGNAL \ShiftRight0~27_combout\ : std_logic;
SIGNAL \ShiftRight0~28_combout\ : std_logic;
SIGNAL \ShiftRight0~25_combout\ : std_logic;
SIGNAL \ShiftRight0~26_combout\ : std_logic;
SIGNAL \ShiftRight0~29_combout\ : std_logic;
SIGNAL \ShiftRight0~30_combout\ : std_logic;
SIGNAL \Mux31~5_combout\ : std_logic;
SIGNAL \Mux31~2_combout\ : std_logic;
SIGNAL \Mux31~3_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \Mux31~4_combout\ : std_logic;
SIGNAL \Mux31~6_combout\ : std_logic;
SIGNAL \b_ext[1]~31_combout\ : std_logic;
SIGNAL \i1_sr|Add1~1\ : std_logic;
SIGNAL \i1_sr|Add1~2_combout\ : std_logic;
SIGNAL \Mux30~9_combout\ : std_logic;
SIGNAL \Mux30~10_combout\ : std_logic;
SIGNAL \i1_sr|Equal0~1_combout\ : std_logic;
SIGNAL \ShiftRight0~18_combout\ : std_logic;
SIGNAL \ShiftRight0~33_combout\ : std_logic;
SIGNAL \ShiftRight0~21_combout\ : std_logic;
SIGNAL \ShiftRight1~10_combout\ : std_logic;
SIGNAL \ShiftRight0~34_combout\ : std_logic;
SIGNAL \ShiftRight0~35_combout\ : std_logic;
SIGNAL \ShiftRight1~7_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \Mux30~3_combout\ : std_logic;
SIGNAL \ShiftRight1~8_combout\ : std_logic;
SIGNAL \ShiftRight0~31_combout\ : std_logic;
SIGNAL \ShiftRight0~32_combout\ : std_logic;
SIGNAL \Mux30~4_combout\ : std_logic;
SIGNAL \Mux30~5_combout\ : std_logic;
SIGNAL \ShiftRight1~15_combout\ : std_logic;
SIGNAL \ShiftRight0~13_combout\ : std_logic;
SIGNAL \ShiftRight1~12_combout\ : std_logic;
SIGNAL \ShiftRight0~37_combout\ : std_logic;
SIGNAL \ShiftRight1~11_combout\ : std_logic;
SIGNAL \ShiftRight0~36_combout\ : std_logic;
SIGNAL \ShiftRight0~38_combout\ : std_logic;
SIGNAL \ShiftRight1~16_combout\ : std_logic;
SIGNAL \Mux30~6_combout\ : std_logic;
SIGNAL \Mux30~12_combout\ : std_logic;
SIGNAL \Mux30~8_combout\ : std_logic;
SIGNAL \Mux30~11_combout\ : std_logic;
SIGNAL \Mux29~20_combout\ : std_logic;
SIGNAL \i1_sr|Add0~1\ : std_logic;
SIGNAL \i1_sr|Add0~3\ : std_logic;
SIGNAL \i1_sr|Add0~4_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Mux29~13_combout\ : std_logic;
SIGNAL \ShiftRight1~27_combout\ : std_logic;
SIGNAL \ShiftRight1~26_combout\ : std_logic;
SIGNAL \ShiftRight1~28_combout\ : std_logic;
SIGNAL \ShiftRight0~47_combout\ : std_logic;
SIGNAL \ShiftRight1~5_combout\ : std_logic;
SIGNAL \Mux29~15_combout\ : std_logic;
SIGNAL \ShiftRight1~6_combout\ : std_logic;
SIGNAL \Mux29~14_combout\ : std_logic;
SIGNAL \Mux29~16_combout\ : std_logic;
SIGNAL \Mux29~17_combout\ : std_logic;
SIGNAL \Mux29~7_combout\ : std_logic;
SIGNAL \Mux29~6_combout\ : std_logic;
SIGNAL \Mux29~18_combout\ : std_logic;
SIGNAL \b_ext[3]~29_combout\ : std_logic;
SIGNAL \i1_sr|Add1~3\ : std_logic;
SIGNAL \i1_sr|Add1~5\ : std_logic;
SIGNAL \i1_sr|Add1~6_combout\ : std_logic;
SIGNAL \Mux28~6_combout\ : std_logic;
SIGNAL \ShiftRight0~19_combout\ : std_logic;
SIGNAL \ShiftRight1~31_combout\ : std_logic;
SIGNAL \ShiftRight1~41_combout\ : std_logic;
SIGNAL \ShiftRight0~14_combout\ : std_logic;
SIGNAL \ShiftRight1~40_combout\ : std_logic;
SIGNAL \ShiftRight0~52_combout\ : std_logic;
SIGNAL \Mux28~7_combout\ : std_logic;
SIGNAL \Mux28~8_combout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \Mux28~9_combout\ : std_logic;
SIGNAL \Mux27~13_combout\ : std_logic;
SIGNAL \b_ext[4]~28_combout\ : std_logic;
SIGNAL \i1_sr|Add0~5\ : std_logic;
SIGNAL \i1_sr|Add0~7\ : std_logic;
SIGNAL \i1_sr|Add0~8_combout\ : std_logic;
SIGNAL \i1_sr|Add1~7\ : std_logic;
SIGNAL \i1_sr|Add1~8_combout\ : std_logic;
SIGNAL \Mux27~9_combout\ : std_logic;
SIGNAL \Mux29~8_combout\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \Mux27~6_combout\ : std_logic;
SIGNAL \ShiftRight1~42_combout\ : std_logic;
SIGNAL \ShiftRight0~10_combout\ : std_logic;
SIGNAL \ShiftRight0~12_combout\ : std_logic;
SIGNAL \ShiftRight0~53_combout\ : std_logic;
SIGNAL \ShiftRight1~43_combout\ : std_logic;
SIGNAL \Mux27~15_combout\ : std_logic;
SIGNAL \Mux29~10_combout\ : std_logic;
SIGNAL \Mux27~4_combout\ : std_logic;
SIGNAL \ShiftRight0~54_combout\ : std_logic;
SIGNAL \Mux27~5_combout\ : std_logic;
SIGNAL \Mux27~7_combout\ : std_logic;
SIGNAL \ShiftRight0~22_combout\ : std_logic;
SIGNAL \ShiftRight0~23_combout\ : std_logic;
SIGNAL \Mux27~8_combout\ : std_logic;
SIGNAL \Mux27~11_combout\ : std_logic;
SIGNAL \Mux27~12_combout\ : std_logic;
SIGNAL \Mux27~14_combout\ : std_logic;
SIGNAL \Mux26~4_combout\ : std_logic;
SIGNAL \ShiftRight0~59_combout\ : std_logic;
SIGNAL \Mux26~5_combout\ : std_logic;
SIGNAL \Mux27~10_combout\ : std_logic;
SIGNAL \Mux26~6_combout\ : std_logic;
SIGNAL \i1_sr|Add0~9\ : std_logic;
SIGNAL \i1_sr|Add0~10_combout\ : std_logic;
SIGNAL \b_ext[5]~27_combout\ : std_logic;
SIGNAL \i1_sr|Add1~9\ : std_logic;
SIGNAL \i1_sr|Add1~10_combout\ : std_logic;
SIGNAL \Mux26~7_combout\ : std_logic;
SIGNAL \Mux26~8_combout\ : std_logic;
SIGNAL \b_ext[6]~26_combout\ : std_logic;
SIGNAL \i1_sr|Add0~11\ : std_logic;
SIGNAL \i1_sr|Add0~12_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \Mux25~5_combout\ : std_logic;
SIGNAL \Mux25~6_combout\ : std_logic;
SIGNAL \Mux25~7_combout\ : std_logic;
SIGNAL \ShiftRight1~39_combout\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \ShiftRight1~21_combout\ : std_logic;
SIGNAL \ShiftRight1~36_combout\ : std_logic;
SIGNAL \ShiftRight0~65_combout\ : std_logic;
SIGNAL \ShiftLeft0~4_combout\ : std_logic;
SIGNAL \ShiftRight0~64_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \ShiftLeft0~10_combout\ : std_logic;
SIGNAL \ShiftLeft0~7_combout\ : std_logic;
SIGNAL \ShiftLeft0~11_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \ShiftRight1~19_combout\ : std_logic;
SIGNAL \ShiftRight0~7_combout\ : std_logic;
SIGNAL \ShiftRight1~35_combout\ : std_logic;
SIGNAL \ShiftRight1~33_combout\ : std_logic;
SIGNAL \ShiftRight1~14_combout\ : std_logic;
SIGNAL \ShiftRight1~34_combout\ : std_logic;
SIGNAL \ShiftRight0~63_combout\ : std_logic;
SIGNAL \ShiftRight1~48_combout\ : std_logic;
SIGNAL \Mux29~9_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Mux24~4_combout\ : std_logic;
SIGNAL \Mux24~5_combout\ : std_logic;
SIGNAL \i1_sr|Add0~13\ : std_logic;
SIGNAL \i1_sr|Add0~14_combout\ : std_logic;
SIGNAL \b_ext[7]~25_combout\ : std_logic;
SIGNAL \i1_sr|Add1~11\ : std_logic;
SIGNAL \i1_sr|Add1~13\ : std_logic;
SIGNAL \i1_sr|Add1~14_combout\ : std_logic;
SIGNAL \Mux24~6_combout\ : std_logic;
SIGNAL \Mux24~7_combout\ : std_logic;
SIGNAL \i1_sr|Add1~15\ : std_logic;
SIGNAL \i1_sr|Add1~16_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \ShiftRight0~67_combout\ : std_logic;
SIGNAL \Mux23~5_combout\ : std_logic;
SIGNAL \ShiftRight0~16_combout\ : std_logic;
SIGNAL \Mux23~6_combout\ : std_logic;
SIGNAL \Mux23~8_combout\ : std_logic;
SIGNAL \Mux23~9_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \Mux22~8_combout\ : std_logic;
SIGNAL \ShiftRight1~51_combout\ : std_logic;
SIGNAL \Mux22~6_combout\ : std_logic;
SIGNAL \Mux22~7_combout\ : std_logic;
SIGNAL \Mux22~9_combout\ : std_logic;
SIGNAL \Mux22~11_combout\ : std_logic;
SIGNAL \Mux22~12_combout\ : std_logic;
SIGNAL \Mux22~10_combout\ : std_logic;
SIGNAL \Mux21~5_combout\ : std_logic;
SIGNAL \b_ext[9]~23_combout\ : std_logic;
SIGNAL \i1_sr|Add1~17\ : std_logic;
SIGNAL \i1_sr|Add1~19\ : std_logic;
SIGNAL \i1_sr|Add1~20_combout\ : std_logic;
SIGNAL \Mux21~8_combout\ : std_logic;
SIGNAL \ShiftRight1~18_combout\ : std_logic;
SIGNAL \ShiftRight1~17_combout\ : std_logic;
SIGNAL \ShiftRight0~43_combout\ : std_logic;
SIGNAL \ShiftRight1~52_combout\ : std_logic;
SIGNAL \ShiftLeft0~20_combout\ : std_logic;
SIGNAL \ShiftLeft0~21_combout\ : std_logic;
SIGNAL \ShiftLeft0~35_combout\ : std_logic;
SIGNAL \ShiftLeft0~31_combout\ : std_logic;
SIGNAL \ShiftLeft0~32_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \Mux21~9_combout\ : std_logic;
SIGNAL \Mux20~7_combout\ : std_logic;
SIGNAL \b_ext[11]~21_combout\ : std_logic;
SIGNAL \i1_sr|Add1~21\ : std_logic;
SIGNAL \i1_sr|Add1~22_combout\ : std_logic;
SIGNAL \ShiftRight0~50_combout\ : std_logic;
SIGNAL \Mux20~5_combout\ : std_logic;
SIGNAL \ShiftRight0~49_combout\ : std_logic;
SIGNAL \ShiftRight0~70_combout\ : std_logic;
SIGNAL \Mux20~4_combout\ : std_logic;
SIGNAL \Mux20~6_combout\ : std_logic;
SIGNAL \Mux20~8_combout\ : std_logic;
SIGNAL \Mux20~9_combout\ : std_logic;
SIGNAL \Mux19~8_combout\ : std_logic;
SIGNAL \ShiftRight0~20_combout\ : std_logic;
SIGNAL \ShiftRight0~55_combout\ : std_logic;
SIGNAL \ShiftRight1~56_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \ShiftRight0~71_combout\ : std_logic;
SIGNAL \Mux19~4_combout\ : std_logic;
SIGNAL \Mux19~5_combout\ : std_logic;
SIGNAL \i1_sr|Add0~15\ : std_logic;
SIGNAL \i1_sr|Add0~17\ : std_logic;
SIGNAL \i1_sr|Add0~19\ : std_logic;
SIGNAL \i1_sr|Add0~21\ : std_logic;
SIGNAL \i1_sr|Add0~23\ : std_logic;
SIGNAL \i1_sr|Add0~24_combout\ : std_logic;
SIGNAL \Mux19~6_combout\ : std_logic;
SIGNAL \Mux19~7_combout\ : std_logic;
SIGNAL \Mux19~9_combout\ : std_logic;
SIGNAL \Mux19~10_combout\ : std_logic;
SIGNAL \ShiftLeft0~41_combout\ : std_logic;
SIGNAL \ShiftLeft0~44_combout\ : std_logic;
SIGNAL \ShiftLeft0~45_combout\ : std_logic;
SIGNAL \ShiftLeft0~26_combout\ : std_logic;
SIGNAL \ShiftLeft0~29_combout\ : std_logic;
SIGNAL \ShiftLeft0~46_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \ShiftRight1~53_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \ShiftRight0~40_combout\ : std_logic;
SIGNAL \ShiftRight0~72_combout\ : std_logic;
SIGNAL \Mux18~4_combout\ : std_logic;
SIGNAL \Mux18~5_combout\ : std_logic;
SIGNAL \Mux18~6_combout\ : std_logic;
SIGNAL \b_ext[13]~19_combout\ : std_logic;
SIGNAL \i1_sr|Add1~23\ : std_logic;
SIGNAL \i1_sr|Add1~25\ : std_logic;
SIGNAL \i1_sr|Add1~26_combout\ : std_logic;
SIGNAL \Mux18~7_combout\ : std_logic;
SIGNAL \Mux18~8_combout\ : std_logic;
SIGNAL \Mux18~9_combout\ : std_logic;
SIGNAL \b_ext[14]~18_combout\ : std_logic;
SIGNAL \i1_sr|Add1~27\ : std_logic;
SIGNAL \i1_sr|Add1~28_combout\ : std_logic;
SIGNAL \ShiftLeft0~8_combout\ : std_logic;
SIGNAL \ShiftLeft0~9_combout\ : std_logic;
SIGNAL \ShiftLeft0~47_combout\ : std_logic;
SIGNAL \ShiftLeft0~33_combout\ : std_logic;
SIGNAL \ShiftLeft0~34_combout\ : std_logic;
SIGNAL \ShiftLeft0~50_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \Mux17~5_combout\ : std_logic;
SIGNAL \ShiftRight1~22_combout\ : std_logic;
SIGNAL \ShiftRight1~9_combout\ : std_logic;
SIGNAL \ShiftRight1~30_combout\ : std_logic;
SIGNAL \ShiftRight0~62_combout\ : std_logic;
SIGNAL \Mux17~6_combout\ : std_logic;
SIGNAL \i1_sr|Add0~25\ : std_logic;
SIGNAL \i1_sr|Add0~27\ : std_logic;
SIGNAL \i1_sr|Add0~28_combout\ : std_logic;
SIGNAL \Mux17~7_combout\ : std_logic;
SIGNAL \Mux17~9_combout\ : std_logic;
SIGNAL \Mux17~10_combout\ : std_logic;
SIGNAL \Mux17~8_combout\ : std_logic;
SIGNAL \i1_sr|Add1~29\ : std_logic;
SIGNAL \i1_sr|Add1~30_combout\ : std_logic;
SIGNAL \ShiftRight0~73_combout\ : std_logic;
SIGNAL \Mux16~4_combout\ : std_logic;
SIGNAL \Mux16~5_combout\ : std_logic;
SIGNAL \Mux16~6_combout\ : std_logic;
SIGNAL \Mux16~8_combout\ : std_logic;
SIGNAL \Mux16~9_combout\ : std_logic;
SIGNAL \Mux16~7_combout\ : std_logic;
SIGNAL \ShiftLeft0~37_combout\ : std_logic;
SIGNAL \ShiftLeft0~55_combout\ : std_logic;
SIGNAL \ShiftLeft0~52_combout\ : std_logic;
SIGNAL \ShiftLeft0~57_combout\ : std_logic;
SIGNAL \ShiftLeft0~58_combout\ : std_logic;
SIGNAL \Mux15~5_combout\ : std_logic;
SIGNAL \ShiftLeft0~14_combout\ : std_logic;
SIGNAL \Mux15~6_combout\ : std_logic;
SIGNAL \Mux15~7_combout\ : std_logic;
SIGNAL \Mux15~8_combout\ : std_logic;
SIGNAL \i1_sr|Add0~29\ : std_logic;
SIGNAL \i1_sr|Add0~31\ : std_logic;
SIGNAL \i1_sr|Add0~32_combout\ : std_logic;
SIGNAL \i1_sr|Add1~31\ : std_logic;
SIGNAL \i1_sr|Add1~32_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \Mux15~9_combout\ : std_logic;
SIGNAL \Mux15~12_combout\ : std_logic;
SIGNAL \Mux15~10_combout\ : std_logic;
SIGNAL \Mux15~11_combout\ : std_logic;
SIGNAL \Mux15~13_combout\ : std_logic;
SIGNAL \i1_sr|Add0~33\ : std_logic;
SIGNAL \i1_sr|Add0~34_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \i1_sr|Add1~33\ : std_logic;
SIGNAL \i1_sr|Add1~34_combout\ : std_logic;
SIGNAL \Mux14~6_combout\ : std_logic;
SIGNAL \Mux14~7_combout\ : std_logic;
SIGNAL \b_ext[18]~14_combout\ : std_logic;
SIGNAL \i1_sr|Add0~35\ : std_logic;
SIGNAL \i1_sr|Add0~36_combout\ : std_logic;
SIGNAL \Mux13~6_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Mux13~7_combout\ : std_logic;
SIGNAL \ShiftLeft0~59_combout\ : std_logic;
SIGNAL \ShiftLeft0~62_combout\ : std_logic;
SIGNAL \ShiftLeft0~63_combout\ : std_logic;
SIGNAL \ShiftLeft0~64_combout\ : std_logic;
SIGNAL \Mux13~8_combout\ : std_logic;
SIGNAL \Mux13~15_combout\ : std_logic;
SIGNAL \ShiftRight1~4_combout\ : std_logic;
SIGNAL \ShiftRight0~44_combout\ : std_logic;
SIGNAL \ShiftRight1~20_combout\ : std_logic;
SIGNAL \ShiftRight0~45_combout\ : std_logic;
SIGNAL \ShiftRight0~46_combout\ : std_logic;
SIGNAL \Mux13~9_combout\ : std_logic;
SIGNAL \Mux13~10_combout\ : std_logic;
SIGNAL \Mux13~11_combout\ : std_logic;
SIGNAL \Mux13~12_combout\ : std_logic;
SIGNAL \Mux13~13_combout\ : std_logic;
SIGNAL \Mux13~14_combout\ : std_logic;
SIGNAL \ShiftRight0~51_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \ShiftLeft0~53_combout\ : std_logic;
SIGNAL \ShiftLeft0~67_combout\ : std_logic;
SIGNAL \ShiftLeft0~68_combout\ : std_logic;
SIGNAL \ShiftLeft0~38_combout\ : std_logic;
SIGNAL \ShiftLeft0~39_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \ShiftRight1~38_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \b_ext[19]~13_combout\ : std_logic;
SIGNAL \i1_sr|Add0~37\ : std_logic;
SIGNAL \i1_sr|Add0~38_combout\ : std_logic;
SIGNAL \i1_sr|Add1~35\ : std_logic;
SIGNAL \i1_sr|Add1~37\ : std_logic;
SIGNAL \i1_sr|Add1~38_combout\ : std_logic;
SIGNAL \Mux12~6_combout\ : std_logic;
SIGNAL \Mux12~7_combout\ : std_logic;
SIGNAL \i1_sr|Add0~39\ : std_logic;
SIGNAL \i1_sr|Add0~40_combout\ : std_logic;
SIGNAL \i1_sr|Add1~39\ : std_logic;
SIGNAL \i1_sr|Add1~40_combout\ : std_logic;
SIGNAL \Mux11~7_combout\ : std_logic;
SIGNAL \Mux11~8_combout\ : std_logic;
SIGNAL \i1_sr|Add0~41\ : std_logic;
SIGNAL \i1_sr|Add0~42_combout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \Mux10~7_combout\ : std_logic;
SIGNAL \b_ext[21]~11_combout\ : std_logic;
SIGNAL \i1_sr|Add1~41\ : std_logic;
SIGNAL \i1_sr|Add1~42_combout\ : std_logic;
SIGNAL \Mux10~8_combout\ : std_logic;
SIGNAL \Mux10~9_combout\ : std_logic;
SIGNAL \b_ext[22]~10_combout\ : std_logic;
SIGNAL \i1_sr|Add0~43\ : std_logic;
SIGNAL \i1_sr|Add0~44_combout\ : std_logic;
SIGNAL \i1_sr|Add1~43\ : std_logic;
SIGNAL \i1_sr|Add1~44_combout\ : std_logic;
SIGNAL \Mux9~6_combout\ : std_logic;
SIGNAL \Mux9~7_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \i1_sr|Add0~45\ : std_logic;
SIGNAL \i1_sr|Add0~46_combout\ : std_logic;
SIGNAL \b_ext[23]~9_combout\ : std_logic;
SIGNAL \i1_sr|Add1~45\ : std_logic;
SIGNAL \i1_sr|Add1~46_combout\ : std_logic;
SIGNAL \Mux8~6_combout\ : std_logic;
SIGNAL \Mux8~7_combout\ : std_logic;
SIGNAL \b_ext[24]~8_combout\ : std_logic;
SIGNAL \i1_sr|Add1~47\ : std_logic;
SIGNAL \i1_sr|Add1~48_combout\ : std_logic;
SIGNAL \i1_sr|Add0~47\ : std_logic;
SIGNAL \i1_sr|Add0~48_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \ShiftLeft0~24_combout\ : std_logic;
SIGNAL \ShiftLeft0~27_combout\ : std_logic;
SIGNAL \ShiftLeft0~25_combout\ : std_logic;
SIGNAL \ShiftLeft0~85_combout\ : std_logic;
SIGNAL \ShiftLeft0~83_combout\ : std_logic;
SIGNAL \ShiftLeft0~84_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \ShiftRight0~66_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~8_combout\ : std_logic;
SIGNAL \b_ext[25]~7_combout\ : std_logic;
SIGNAL \i1_sr|Add0~49\ : std_logic;
SIGNAL \i1_sr|Add0~50_combout\ : std_logic;
SIGNAL \ShiftLeft0~56_combout\ : std_logic;
SIGNAL \ShiftLeft0~60_combout\ : std_logic;
SIGNAL \ShiftLeft0~61_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \ShiftLeft0~69_combout\ : std_logic;
SIGNAL \ShiftLeft0~73_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \ShiftRight0~41_combout\ : std_logic;
SIGNAL \ShiftRight0~6_combout\ : std_logic;
SIGNAL \ShiftRight1~13_combout\ : std_logic;
SIGNAL \ShiftRight0~39_combout\ : std_logic;
SIGNAL \ShiftRight0~68_combout\ : std_logic;
SIGNAL \Mux6~8_combout\ : std_logic;
SIGNAL \Mux6~9_combout\ : std_logic;
SIGNAL \i1_sr|Add1~49\ : std_logic;
SIGNAL \i1_sr|Add1~50_combout\ : std_logic;
SIGNAL \Mux6~10_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~11_combout\ : std_logic;
SIGNAL \b_ext[26]~6_combout\ : std_logic;
SIGNAL \i1_sr|Add0~51\ : std_logic;
SIGNAL \i1_sr|Add0~52_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \ShiftRight0~69_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \i1_sr|Add1~51\ : std_logic;
SIGNAL \i1_sr|Add1~52_combout\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~8_combout\ : std_logic;
SIGNAL \i1_sr|Add1~53\ : std_logic;
SIGNAL \i1_sr|Add1~54_combout\ : std_logic;
SIGNAL \ShiftRight1~55_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \ShiftLeft0~111_combout\ : std_logic;
SIGNAL \ShiftLeft0~93_combout\ : std_logic;
SIGNAL \ShiftLeft0~94_combout\ : std_logic;
SIGNAL \ShiftLeft0~95_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~8_combout\ : std_logic;
SIGNAL \Mux3~12_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~9_combout\ : std_logic;
SIGNAL \Mux3~10_combout\ : std_logic;
SIGNAL \Mux3~11_combout\ : std_logic;
SIGNAL \Mux3~13_combout\ : std_logic;
SIGNAL \Mux3~14_combout\ : std_logic;
SIGNAL \Mux3~15_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \Mux2~9_combout\ : std_logic;
SIGNAL \Mux2~10_combout\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \ShiftRight0~75_combout\ : std_logic;
SIGNAL \Mux1~8_combout\ : std_logic;
SIGNAL \ShiftLeft0~78_combout\ : std_logic;
SIGNAL \ShiftLeft0~99_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \Mux1~9_combout\ : std_logic;
SIGNAL \ShiftLeft0~82_combout\ : std_logic;
SIGNAL \ShiftLeft0~51_combout\ : std_logic;
SIGNAL \ShiftLeft0~105_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \b_ext[30]~2_combout\ : std_logic;
SIGNAL \b_ext[28]~4_combout\ : std_logic;
SIGNAL \b_ext[27]~5_combout\ : std_logic;
SIGNAL \i1_sr|Add0~53\ : std_logic;
SIGNAL \i1_sr|Add0~55\ : std_logic;
SIGNAL \i1_sr|Add0~57\ : std_logic;
SIGNAL \i1_sr|Add0~59\ : std_logic;
SIGNAL \i1_sr|Add0~61\ : std_logic;
SIGNAL \i1_sr|Add0~62_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~104_combout\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \Equal2~11_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \Equal2~7_combout\ : std_logic;
SIGNAL \Equal2~8_combout\ : std_logic;
SIGNAL \Equal2~9_combout\ : std_logic;
SIGNAL \Equal2~12_combout\ : std_logic;
SIGNAL \b_ext[32]~0_combout\ : std_logic;
SIGNAL \a_ext[32]~0_combout\ : std_logic;
SIGNAL \i1_sr|Add0~63\ : std_logic;
SIGNAL \i1_sr|Add0~64_combout\ : std_logic;
SIGNAL \b_ext[31]~1_combout\ : std_logic;
SIGNAL \i1_sr|Add1~55\ : std_logic;
SIGNAL \i1_sr|Add1~57\ : std_logic;
SIGNAL \i1_sr|Add1~59\ : std_logic;
SIGNAL \i1_sr|Add1~61\ : std_logic;
SIGNAL \i1_sr|Add1~63\ : std_logic;
SIGNAL \i1_sr|Add1~64_combout\ : std_logic;
SIGNAL \i1_sr|sig~0_combout\ : std_logic;
SIGNAL xor_out : std_logic_vector(31 DOWNTO 0);
SIGNAL or_out : std_logic_vector(31 DOWNTO 0);
SIGNAL \shamt~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \b~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \alu_op~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \i1_sr|ALT_INV_sig~0_combout\ : std_logic;

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
\i1_sr|ALT_INV_sig~0_combout\ <= NOT \i1_sr|sig~0_combout\;

-- Location: LCCOMB_X21_Y14_N16
\i1_sr|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add0~0_combout\ = (\a~combout\(0) & ((GND) # (!\b_ext[0]~32_combout\))) # (!\a~combout\(0) & (\b_ext[0]~32_combout\ $ (GND)))
-- \i1_sr|Add0~1\ = CARRY((\a~combout\(0)) # (!\b_ext[0]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \b_ext[0]~32_combout\,
	datad => VCC,
	combout => \i1_sr|Add0~0_combout\,
	cout => \i1_sr|Add0~1\);

-- Location: LCCOMB_X21_Y14_N18
\i1_sr|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add0~2_combout\ = (\b_ext[1]~31_combout\ & ((\a~combout\(1) & (!\i1_sr|Add0~1\)) # (!\a~combout\(1) & ((\i1_sr|Add0~1\) # (GND))))) # (!\b_ext[1]~31_combout\ & ((\a~combout\(1) & (\i1_sr|Add0~1\ & VCC)) # (!\a~combout\(1) & (!\i1_sr|Add0~1\))))
-- \i1_sr|Add0~3\ = CARRY((\b_ext[1]~31_combout\ & ((!\i1_sr|Add0~1\) # (!\a~combout\(1)))) # (!\b_ext[1]~31_combout\ & (!\a~combout\(1) & !\i1_sr|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_ext[1]~31_combout\,
	datab => \a~combout\(1),
	datad => VCC,
	cin => \i1_sr|Add0~1\,
	combout => \i1_sr|Add0~2_combout\,
	cout => \i1_sr|Add0~3\);

-- Location: LCCOMB_X21_Y14_N22
\i1_sr|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add0~6_combout\ = (\a~combout\(3) & ((\b_ext[3]~29_combout\ & (!\i1_sr|Add0~5\)) # (!\b_ext[3]~29_combout\ & (\i1_sr|Add0~5\ & VCC)))) # (!\a~combout\(3) & ((\b_ext[3]~29_combout\ & ((\i1_sr|Add0~5\) # (GND))) # (!\b_ext[3]~29_combout\ & 
-- (!\i1_sr|Add0~5\))))
-- \i1_sr|Add0~7\ = CARRY((\a~combout\(3) & (\b_ext[3]~29_combout\ & !\i1_sr|Add0~5\)) # (!\a~combout\(3) & ((\b_ext[3]~29_combout\) # (!\i1_sr|Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \b_ext[3]~29_combout\,
	datad => VCC,
	cin => \i1_sr|Add0~5\,
	combout => \i1_sr|Add0~6_combout\,
	cout => \i1_sr|Add0~7\);

-- Location: LCCOMB_X21_Y13_N0
\i1_sr|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add0~16_combout\ = ((\b_ext[8]~24_combout\ $ (\a~combout\(8) $ (\i1_sr|Add0~15\)))) # (GND)
-- \i1_sr|Add0~17\ = CARRY((\b_ext[8]~24_combout\ & (\a~combout\(8) & !\i1_sr|Add0~15\)) # (!\b_ext[8]~24_combout\ & ((\a~combout\(8)) # (!\i1_sr|Add0~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_ext[8]~24_combout\,
	datab => \a~combout\(8),
	datad => VCC,
	cin => \i1_sr|Add0~15\,
	combout => \i1_sr|Add0~16_combout\,
	cout => \i1_sr|Add0~17\);

-- Location: LCCOMB_X21_Y13_N2
\i1_sr|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add0~18_combout\ = (\b_ext[9]~23_combout\ & ((\a~combout\(9) & (!\i1_sr|Add0~17\)) # (!\a~combout\(9) & ((\i1_sr|Add0~17\) # (GND))))) # (!\b_ext[9]~23_combout\ & ((\a~combout\(9) & (\i1_sr|Add0~17\ & VCC)) # (!\a~combout\(9) & 
-- (!\i1_sr|Add0~17\))))
-- \i1_sr|Add0~19\ = CARRY((\b_ext[9]~23_combout\ & ((!\i1_sr|Add0~17\) # (!\a~combout\(9)))) # (!\b_ext[9]~23_combout\ & (!\a~combout\(9) & !\i1_sr|Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_ext[9]~23_combout\,
	datab => \a~combout\(9),
	datad => VCC,
	cin => \i1_sr|Add0~17\,
	combout => \i1_sr|Add0~18_combout\,
	cout => \i1_sr|Add0~19\);

-- Location: LCCOMB_X21_Y13_N4
\i1_sr|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add0~20_combout\ = ((\b_ext[10]~22_combout\ $ (\a~combout\(10) $ (\i1_sr|Add0~19\)))) # (GND)
-- \i1_sr|Add0~21\ = CARRY((\b_ext[10]~22_combout\ & (\a~combout\(10) & !\i1_sr|Add0~19\)) # (!\b_ext[10]~22_combout\ & ((\a~combout\(10)) # (!\i1_sr|Add0~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_ext[10]~22_combout\,
	datab => \a~combout\(10),
	datad => VCC,
	cin => \i1_sr|Add0~19\,
	combout => \i1_sr|Add0~20_combout\,
	cout => \i1_sr|Add0~21\);

-- Location: LCCOMB_X21_Y13_N6
\i1_sr|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add0~22_combout\ = (\b_ext[11]~21_combout\ & ((\a~combout\(11) & (!\i1_sr|Add0~21\)) # (!\a~combout\(11) & ((\i1_sr|Add0~21\) # (GND))))) # (!\b_ext[11]~21_combout\ & ((\a~combout\(11) & (\i1_sr|Add0~21\ & VCC)) # (!\a~combout\(11) & 
-- (!\i1_sr|Add0~21\))))
-- \i1_sr|Add0~23\ = CARRY((\b_ext[11]~21_combout\ & ((!\i1_sr|Add0~21\) # (!\a~combout\(11)))) # (!\b_ext[11]~21_combout\ & (!\a~combout\(11) & !\i1_sr|Add0~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_ext[11]~21_combout\,
	datab => \a~combout\(11),
	datad => VCC,
	cin => \i1_sr|Add0~21\,
	combout => \i1_sr|Add0~22_combout\,
	cout => \i1_sr|Add0~23\);

-- Location: LCCOMB_X21_Y13_N10
\i1_sr|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add0~26_combout\ = (\b_ext[13]~19_combout\ & ((\a~combout\(13) & (!\i1_sr|Add0~25\)) # (!\a~combout\(13) & ((\i1_sr|Add0~25\) # (GND))))) # (!\b_ext[13]~19_combout\ & ((\a~combout\(13) & (\i1_sr|Add0~25\ & VCC)) # (!\a~combout\(13) & 
-- (!\i1_sr|Add0~25\))))
-- \i1_sr|Add0~27\ = CARRY((\b_ext[13]~19_combout\ & ((!\i1_sr|Add0~25\) # (!\a~combout\(13)))) # (!\b_ext[13]~19_combout\ & (!\a~combout\(13) & !\i1_sr|Add0~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_ext[13]~19_combout\,
	datab => \a~combout\(13),
	datad => VCC,
	cin => \i1_sr|Add0~25\,
	combout => \i1_sr|Add0~26_combout\,
	cout => \i1_sr|Add0~27\);

-- Location: LCCOMB_X21_Y13_N14
\i1_sr|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add0~30_combout\ = (\b_ext[15]~17_combout\ & ((\a~combout\(15) & (!\i1_sr|Add0~29\)) # (!\a~combout\(15) & ((\i1_sr|Add0~29\) # (GND))))) # (!\b_ext[15]~17_combout\ & ((\a~combout\(15) & (\i1_sr|Add0~29\ & VCC)) # (!\a~combout\(15) & 
-- (!\i1_sr|Add0~29\))))
-- \i1_sr|Add0~31\ = CARRY((\b_ext[15]~17_combout\ & ((!\i1_sr|Add0~29\) # (!\a~combout\(15)))) # (!\b_ext[15]~17_combout\ & (!\a~combout\(15) & !\i1_sr|Add0~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_ext[15]~17_combout\,
	datab => \a~combout\(15),
	datad => VCC,
	cin => \i1_sr|Add0~29\,
	combout => \i1_sr|Add0~30_combout\,
	cout => \i1_sr|Add0~31\);

-- Location: LCCOMB_X21_Y12_N6
\i1_sr|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add0~54_combout\ = (\a~combout\(27) & ((\b_ext[27]~5_combout\ & (!\i1_sr|Add0~53\)) # (!\b_ext[27]~5_combout\ & (\i1_sr|Add0~53\ & VCC)))) # (!\a~combout\(27) & ((\b_ext[27]~5_combout\ & ((\i1_sr|Add0~53\) # (GND))) # (!\b_ext[27]~5_combout\ & 
-- (!\i1_sr|Add0~53\))))
-- \i1_sr|Add0~55\ = CARRY((\a~combout\(27) & (\b_ext[27]~5_combout\ & !\i1_sr|Add0~53\)) # (!\a~combout\(27) & ((\b_ext[27]~5_combout\) # (!\i1_sr|Add0~53\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(27),
	datab => \b_ext[27]~5_combout\,
	datad => VCC,
	cin => \i1_sr|Add0~53\,
	combout => \i1_sr|Add0~54_combout\,
	cout => \i1_sr|Add0~55\);

-- Location: LCCOMB_X21_Y12_N8
\i1_sr|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add0~56_combout\ = ((\a~combout\(28) $ (\b_ext[28]~4_combout\ $ (\i1_sr|Add0~55\)))) # (GND)
-- \i1_sr|Add0~57\ = CARRY((\a~combout\(28) & ((!\i1_sr|Add0~55\) # (!\b_ext[28]~4_combout\))) # (!\a~combout\(28) & (!\b_ext[28]~4_combout\ & !\i1_sr|Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(28),
	datab => \b_ext[28]~4_combout\,
	datad => VCC,
	cin => \i1_sr|Add0~55\,
	combout => \i1_sr|Add0~56_combout\,
	cout => \i1_sr|Add0~57\);

-- Location: LCCOMB_X21_Y12_N10
\i1_sr|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add0~58_combout\ = (\b_ext[29]~3_combout\ & ((\a~combout\(29) & (!\i1_sr|Add0~57\)) # (!\a~combout\(29) & ((\i1_sr|Add0~57\) # (GND))))) # (!\b_ext[29]~3_combout\ & ((\a~combout\(29) & (\i1_sr|Add0~57\ & VCC)) # (!\a~combout\(29) & 
-- (!\i1_sr|Add0~57\))))
-- \i1_sr|Add0~59\ = CARRY((\b_ext[29]~3_combout\ & ((!\i1_sr|Add0~57\) # (!\a~combout\(29)))) # (!\b_ext[29]~3_combout\ & (!\a~combout\(29) & !\i1_sr|Add0~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_ext[29]~3_combout\,
	datab => \a~combout\(29),
	datad => VCC,
	cin => \i1_sr|Add0~57\,
	combout => \i1_sr|Add0~58_combout\,
	cout => \i1_sr|Add0~59\);

-- Location: LCCOMB_X21_Y12_N12
\i1_sr|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add0~60_combout\ = ((\a~combout\(30) $ (\b_ext[30]~2_combout\ $ (\i1_sr|Add0~59\)))) # (GND)
-- \i1_sr|Add0~61\ = CARRY((\a~combout\(30) & ((!\i1_sr|Add0~59\) # (!\b_ext[30]~2_combout\))) # (!\a~combout\(30) & (!\b_ext[30]~2_combout\ & !\i1_sr|Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(30),
	datab => \b_ext[30]~2_combout\,
	datad => VCC,
	cin => \i1_sr|Add0~59\,
	combout => \i1_sr|Add0~60_combout\,
	cout => \i1_sr|Add0~61\);

-- Location: LCCOMB_X22_Y14_N20
\i1_sr|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1~4_combout\ = ((\b_ext[2]~30_combout\ $ (\a~combout\(2) $ (!\i1_sr|Add1~3\)))) # (GND)
-- \i1_sr|Add1~5\ = CARRY((\b_ext[2]~30_combout\ & ((\a~combout\(2)) # (!\i1_sr|Add1~3\))) # (!\b_ext[2]~30_combout\ & (\a~combout\(2) & !\i1_sr|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_ext[2]~30_combout\,
	datab => \a~combout\(2),
	datad => VCC,
	cin => \i1_sr|Add1~3\,
	combout => \i1_sr|Add1~4_combout\,
	cout => \i1_sr|Add1~5\);

-- Location: LCCOMB_X22_Y14_N28
\i1_sr|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1~12_combout\ = ((\b_ext[6]~26_combout\ $ (\a~combout\(6) $ (!\i1_sr|Add1~11\)))) # (GND)
-- \i1_sr|Add1~13\ = CARRY((\b_ext[6]~26_combout\ & ((\a~combout\(6)) # (!\i1_sr|Add1~11\))) # (!\b_ext[6]~26_combout\ & (\a~combout\(6) & !\i1_sr|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_ext[6]~26_combout\,
	datab => \a~combout\(6),
	datad => VCC,
	cin => \i1_sr|Add1~11\,
	combout => \i1_sr|Add1~12_combout\,
	cout => \i1_sr|Add1~13\);

-- Location: LCCOMB_X22_Y13_N2
\i1_sr|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1~18_combout\ = (\a~combout\(9) & ((\b_ext[9]~23_combout\ & (\i1_sr|Add1~17\ & VCC)) # (!\b_ext[9]~23_combout\ & (!\i1_sr|Add1~17\)))) # (!\a~combout\(9) & ((\b_ext[9]~23_combout\ & (!\i1_sr|Add1~17\)) # (!\b_ext[9]~23_combout\ & 
-- ((\i1_sr|Add1~17\) # (GND)))))
-- \i1_sr|Add1~19\ = CARRY((\a~combout\(9) & (!\b_ext[9]~23_combout\ & !\i1_sr|Add1~17\)) # (!\a~combout\(9) & ((!\i1_sr|Add1~17\) # (!\b_ext[9]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(9),
	datab => \b_ext[9]~23_combout\,
	datad => VCC,
	cin => \i1_sr|Add1~17\,
	combout => \i1_sr|Add1~18_combout\,
	cout => \i1_sr|Add1~19\);

-- Location: LCCOMB_X22_Y13_N8
\i1_sr|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1~24_combout\ = ((\b_ext[12]~20_combout\ $ (\a~combout\(12) $ (!\i1_sr|Add1~23\)))) # (GND)
-- \i1_sr|Add1~25\ = CARRY((\b_ext[12]~20_combout\ & ((\a~combout\(12)) # (!\i1_sr|Add1~23\))) # (!\b_ext[12]~20_combout\ & (\a~combout\(12) & !\i1_sr|Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_ext[12]~20_combout\,
	datab => \a~combout\(12),
	datad => VCC,
	cin => \i1_sr|Add1~23\,
	combout => \i1_sr|Add1~24_combout\,
	cout => \i1_sr|Add1~25\);

-- Location: LCCOMB_X22_Y13_N20
\i1_sr|Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1~36_combout\ = ((\b_ext[18]~14_combout\ $ (\a~combout\(18) $ (!\i1_sr|Add1~35\)))) # (GND)
-- \i1_sr|Add1~37\ = CARRY((\b_ext[18]~14_combout\ & ((\a~combout\(18)) # (!\i1_sr|Add1~35\))) # (!\b_ext[18]~14_combout\ & (\a~combout\(18) & !\i1_sr|Add1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_ext[18]~14_combout\,
	datab => \a~combout\(18),
	datad => VCC,
	cin => \i1_sr|Add1~35\,
	combout => \i1_sr|Add1~36_combout\,
	cout => \i1_sr|Add1~37\);

-- Location: LCCOMB_X22_Y12_N8
\i1_sr|Add1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1~56_combout\ = ((\b_ext[28]~4_combout\ $ (\a~combout\(28) $ (!\i1_sr|Add1~55\)))) # (GND)
-- \i1_sr|Add1~57\ = CARRY((\b_ext[28]~4_combout\ & ((\a~combout\(28)) # (!\i1_sr|Add1~55\))) # (!\b_ext[28]~4_combout\ & (\a~combout\(28) & !\i1_sr|Add1~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_ext[28]~4_combout\,
	datab => \a~combout\(28),
	datad => VCC,
	cin => \i1_sr|Add1~55\,
	combout => \i1_sr|Add1~56_combout\,
	cout => \i1_sr|Add1~57\);

-- Location: LCCOMB_X22_Y12_N10
\i1_sr|Add1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1~58_combout\ = (\b_ext[29]~3_combout\ & ((\a~combout\(29) & (\i1_sr|Add1~57\ & VCC)) # (!\a~combout\(29) & (!\i1_sr|Add1~57\)))) # (!\b_ext[29]~3_combout\ & ((\a~combout\(29) & (!\i1_sr|Add1~57\)) # (!\a~combout\(29) & ((\i1_sr|Add1~57\) # 
-- (GND)))))
-- \i1_sr|Add1~59\ = CARRY((\b_ext[29]~3_combout\ & (!\a~combout\(29) & !\i1_sr|Add1~57\)) # (!\b_ext[29]~3_combout\ & ((!\i1_sr|Add1~57\) # (!\a~combout\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_ext[29]~3_combout\,
	datab => \a~combout\(29),
	datad => VCC,
	cin => \i1_sr|Add1~57\,
	combout => \i1_sr|Add1~58_combout\,
	cout => \i1_sr|Add1~59\);

-- Location: LCCOMB_X22_Y12_N12
\i1_sr|Add1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1~60_combout\ = ((\a~combout\(30) $ (\b_ext[30]~2_combout\ $ (!\i1_sr|Add1~59\)))) # (GND)
-- \i1_sr|Add1~61\ = CARRY((\a~combout\(30) & ((\b_ext[30]~2_combout\) # (!\i1_sr|Add1~59\))) # (!\a~combout\(30) & (\b_ext[30]~2_combout\ & !\i1_sr|Add1~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(30),
	datab => \b_ext[30]~2_combout\,
	datad => VCC,
	cin => \i1_sr|Add1~59\,
	combout => \i1_sr|Add1~60_combout\,
	cout => \i1_sr|Add1~61\);

-- Location: LCCOMB_X22_Y12_N14
\i1_sr|Add1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1~62_combout\ = (\a~combout\(31) & ((\b_ext[31]~1_combout\ & (\i1_sr|Add1~61\ & VCC)) # (!\b_ext[31]~1_combout\ & (!\i1_sr|Add1~61\)))) # (!\a~combout\(31) & ((\b_ext[31]~1_combout\ & (!\i1_sr|Add1~61\)) # (!\b_ext[31]~1_combout\ & 
-- ((\i1_sr|Add1~61\) # (GND)))))
-- \i1_sr|Add1~63\ = CARRY((\a~combout\(31) & (!\b_ext[31]~1_combout\ & !\i1_sr|Add1~61\)) # (!\a~combout\(31) & ((!\i1_sr|Add1~61\) # (!\b_ext[31]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(31),
	datab => \b_ext[31]~1_combout\,
	datad => VCC,
	cin => \i1_sr|Add1~61\,
	combout => \i1_sr|Add1~62_combout\,
	cout => \i1_sr|Add1~63\);

-- Location: LCCOMB_X22_Y12_N26
\b_ext[29]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_ext[29]~3_combout\ = (\Equal0~1_combout\ & (\b~combout\(29))) # (!\Equal0~1_combout\ & ((\a~combout\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \b~combout\(29),
	datac => \a~combout\(29),
	combout => \b_ext[29]~3_combout\);

-- Location: LCCOMB_X22_Y16_N26
\b_ext[20]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_ext[20]~12_combout\ = (\Equal0~1_combout\ & ((\b~combout\(20)))) # (!\Equal0~1_combout\ & (\a~combout\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(20),
	datac => \b~combout\(20),
	datad => \Equal0~1_combout\,
	combout => \b_ext[20]~12_combout\);

-- Location: LCCOMB_X21_Y15_N28
\b_ext[17]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_ext[17]~15_combout\ = (\Equal0~1_combout\ & (\b~combout\(17))) # (!\Equal0~1_combout\ & ((\a~combout\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~1_combout\,
	datac => \b~combout\(17),
	datad => \a~combout\(17),
	combout => \b_ext[17]~15_combout\);

-- Location: LCCOMB_X21_Y15_N30
\b_ext[16]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_ext[16]~16_combout\ = (\Equal0~1_combout\ & (\b~combout\(16))) # (!\Equal0~1_combout\ & ((\a~combout\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(16),
	datab => \Equal0~1_combout\,
	datad => \a~combout\(16),
	combout => \b_ext[16]~16_combout\);

-- Location: LCCOMB_X25_Y13_N24
\b_ext[15]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_ext[15]~17_combout\ = (\Equal0~1_combout\ & ((\b~combout\(15)))) # (!\Equal0~1_combout\ & (\a~combout\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(15),
	datab => \b~combout\(15),
	datad => \Equal0~1_combout\,
	combout => \b_ext[15]~17_combout\);

-- Location: LCCOMB_X23_Y13_N10
\b_ext[12]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_ext[12]~20_combout\ = (\Equal0~1_combout\ & (\b~combout\(12))) # (!\Equal0~1_combout\ & ((\a~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(12),
	datab => \Equal0~1_combout\,
	datac => \a~combout\(12),
	combout => \b_ext[12]~20_combout\);

-- Location: LCCOMB_X27_Y13_N8
\b_ext[10]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_ext[10]~22_combout\ = (\Equal0~1_combout\ & ((\b~combout\(10)))) # (!\Equal0~1_combout\ & (\a~combout\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datac => \a~combout\(10),
	datad => \b~combout\(10),
	combout => \b_ext[10]~22_combout\);

-- Location: LCCOMB_X23_Y13_N12
\b_ext[8]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_ext[8]~24_combout\ = (\Equal0~1_combout\ & ((\b~combout\(8)))) # (!\Equal0~1_combout\ & (\a~combout\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(8),
	datac => \Equal0~1_combout\,
	datad => \b~combout\(8),
	combout => \b_ext[8]~24_combout\);

-- Location: LCCOMB_X21_Y14_N10
\b_ext[2]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_ext[2]~30_combout\ = (\Equal0~1_combout\ & (\b~combout\(2))) # (!\Equal0~1_combout\ & ((\a~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datac => \b~combout\(2),
	datad => \a~combout\(2),
	combout => \b_ext[2]~30_combout\);

-- Location: LCCOMB_X22_Y15_N12
\xor_out[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- xor_out(0) = \b~combout\(0) $ (\a~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(0),
	datad => \a~combout\(0),
	combout => xor_out(0));

-- Location: LCCOMB_X23_Y14_N8
\ShiftLeft0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~5_combout\ = (!\shamt~combout\(4) & (!\ShiftLeft0~4_combout\ & (!\shamt~combout\(3) & \a~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(4),
	datab => \ShiftLeft0~4_combout\,
	datac => \shamt~combout\(3),
	datad => \a~combout\(0),
	combout => \ShiftLeft0~5_combout\);

-- Location: LCCOMB_X27_Y16_N20
\ShiftRight0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~8_combout\ = (\shamt~combout\(0) & ((\ShiftRight0~6_combout\))) # (!\shamt~combout\(0) & (\ShiftRight0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~7_combout\,
	datac => \ShiftRight0~6_combout\,
	datad => \shamt~combout\(0),
	combout => \ShiftRight0~8_combout\);

-- Location: LCCOMB_X22_Y16_N12
\ShiftRight0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~11_combout\ = (\shamt~combout\(1) & (\a~combout\(22))) # (!\shamt~combout\(1) & ((\a~combout\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datab => \a~combout\(22),
	datad => \a~combout\(20),
	combout => \ShiftRight0~11_combout\);

-- Location: LCCOMB_X23_Y16_N12
\ShiftRight0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~15_combout\ = (\shamt~combout\(0) & (\ShiftRight0~13_combout\)) # (!\shamt~combout\(0) & ((\ShiftRight0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~13_combout\,
	datac => \ShiftRight0~14_combout\,
	datad => \shamt~combout\(0),
	combout => \ShiftRight0~15_combout\);

-- Location: LCCOMB_X26_Y13_N0
\ShiftRight0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~24_combout\ = (\shamt~combout\(3) & ((\shamt~combout\(2) & (\ShiftRight0~20_combout\)) # (!\shamt~combout\(2) & ((\ShiftRight0~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~20_combout\,
	datab => \shamt~combout\(3),
	datac => \ShiftRight0~23_combout\,
	datad => \shamt~combout\(2),
	combout => \ShiftRight0~24_combout\);

-- Location: LCCOMB_X22_Y15_N28
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\alu_op~combout\(0) & !\alu_op~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_op~combout\(0),
	datad => \alu_op~combout\(1),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X30_Y13_N2
\ShiftRight0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~42_combout\ = (\shamt~combout\(3) & (((\ShiftRight0~41_combout\) # (\ShiftRight0~39_combout\)))) # (!\shamt~combout\(3) & (\ShiftRight0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(3),
	datab => \ShiftRight0~38_combout\,
	datac => \ShiftRight0~41_combout\,
	datad => \ShiftRight0~39_combout\,
	combout => \ShiftRight0~42_combout\);

-- Location: LCCOMB_X26_Y16_N12
\Mux30~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~7_combout\ = (\b~combout\(1) & ((\a~combout\(1) & ((\alu_op~combout\(1)))) # (!\a~combout\(1) & (!\alu_op~combout\(0))))) # (!\b~combout\(1) & (!\alu_op~combout\(0) & ((\a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \alu_op~combout\(0),
	datac => \alu_op~combout\(1),
	datad => \a~combout\(1),
	combout => \Mux30~7_combout\);

-- Location: LCCOMB_X30_Y14_N4
\ShiftLeft0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~6_combout\ = (!\shamt~combout\(1) & !\shamt~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datad => \shamt~combout\(2),
	combout => \ShiftLeft0~6_combout\);

-- Location: LCCOMB_X24_Y13_N24
\xor_out[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- xor_out(2) = \a~combout\(2) $ (\b~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datac => \b~combout\(2),
	combout => xor_out(2));

-- Location: LCCOMB_X30_Y14_N6
\ShiftRight1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~23_combout\ = (\shamt~combout\(1) & (((\a~combout\(31))))) # (!\shamt~combout\(1) & ((\shamt~combout\(0) & ((\a~combout\(31)))) # (!\shamt~combout\(0) & (\a~combout\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datab => \a~combout\(30),
	datac => \a~combout\(31),
	datad => \shamt~combout\(0),
	combout => \ShiftRight1~23_combout\);

-- Location: LCCOMB_X30_Y14_N24
\ShiftRight1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~24_combout\ = (\ShiftRight1~23_combout\ & \shamt~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~23_combout\,
	datad => \shamt~combout\(2),
	combout => \ShiftRight1~24_combout\);

-- Location: LCCOMB_X30_Y14_N10
\ShiftRight1~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~25_combout\ = (\shamt~combout\(3) & ((\ShiftRight1~24_combout\) # ((\ShiftRight0~43_combout\)))) # (!\shamt~combout\(3) & (((\ShiftRight0~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~24_combout\,
	datab => \ShiftRight0~43_combout\,
	datac => \shamt~combout\(3),
	datad => \ShiftRight0~45_combout\,
	combout => \ShiftRight1~25_combout\);

-- Location: LCCOMB_X24_Y13_N26
\Mux29~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~11_combout\ = (\Mux29~10_combout\ & (((\ShiftRight1~25_combout\ & \Mux29~9_combout\)))) # (!\Mux29~10_combout\ & ((\Mux29~19_combout\) # ((!\Mux29~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~19_combout\,
	datab => \Mux29~10_combout\,
	datac => \ShiftRight1~25_combout\,
	datad => \Mux29~9_combout\,
	combout => \Mux29~11_combout\);

-- Location: LCCOMB_X24_Y13_N12
\Mux29~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~12_combout\ = (\Mux29~11_combout\ & ((xor_out(2)) # ((!\Mux29~6_combout\)))) # (!\Mux29~11_combout\ & (((\Mux29~6_combout\ & \ShiftRight0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => xor_out(2),
	datab => \Mux29~11_combout\,
	datac => \Mux29~6_combout\,
	datad => \ShiftRight0~46_combout\,
	combout => \Mux29~12_combout\);

-- Location: LCCOMB_X24_Y16_N12
\ShiftRight1~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~29_combout\ = (\shamt~combout\(1) & ((\a~combout\(17)))) # (!\shamt~combout\(1) & (\a~combout\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(15),
	datac => \shamt~combout\(1),
	datad => \a~combout\(17),
	combout => \ShiftRight1~29_combout\);

-- Location: LCCOMB_X26_Y14_N30
\ShiftRight1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~32_combout\ = (\shamt~combout\(0) & ((\ShiftRight1~31_combout\))) # (!\shamt~combout\(0) & (\ShiftRight1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~10_combout\,
	datac => \ShiftRight1~31_combout\,
	datad => \shamt~combout\(0),
	combout => \ShiftRight1~32_combout\);

-- Location: LCCOMB_X25_Y14_N16
\ShiftRight0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~48_combout\ = (\shamt~combout\(2) & ((\ShiftRight1~30_combout\))) # (!\shamt~combout\(2) & (\ShiftRight1~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~32_combout\,
	datac => \ShiftRight1~30_combout\,
	datad => \shamt~combout\(2),
	combout => \ShiftRight0~48_combout\);

-- Location: LCCOMB_X22_Y14_N10
\xor_out[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- xor_out(3) = \a~combout\(3) $ (\b~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datad => \b~combout\(3),
	combout => xor_out(3));

-- Location: LCCOMB_X29_Y13_N16
\ShiftRight1~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~37_combout\ = (\shamt~combout\(3) & ((\shamt~combout\(2) & (\a~combout\(31))) # (!\shamt~combout\(2) & ((\ShiftRight1~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(31),
	datab => \shamt~combout\(3),
	datac => \shamt~combout\(2),
	datad => \ShiftRight1~34_combout\,
	combout => \ShiftRight1~37_combout\);

-- Location: LCCOMB_X24_Y13_N30
\Mux28~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~3_combout\ = (\Mux29~9_combout\ & ((\Mux29~10_combout\ & ((\ShiftRight1~38_combout\))) # (!\Mux29~10_combout\ & (\Mux28~10_combout\)))) # (!\Mux29~9_combout\ & (!\Mux29~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~9_combout\,
	datab => \Mux29~10_combout\,
	datac => \Mux28~10_combout\,
	datad => \ShiftRight1~38_combout\,
	combout => \Mux28~3_combout\);

-- Location: LCCOMB_X24_Y13_N16
\Mux28~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~4_combout\ = (\Mux29~6_combout\ & ((\Mux28~3_combout\ & ((xor_out(3)))) # (!\Mux28~3_combout\ & (\ShiftRight0~51_combout\)))) # (!\Mux29~6_combout\ & (((\Mux28~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~51_combout\,
	datab => xor_out(3),
	datac => \Mux29~6_combout\,
	datad => \Mux28~3_combout\,
	combout => \Mux28~4_combout\);

-- Location: LCCOMB_X24_Y12_N20
\Mux28~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~5_combout\ = (\Equal0~0_combout\ & (\i1_sr|Add0~6_combout\ & ((!\Mux29~20_combout\)))) # (!\Equal0~0_combout\ & (((\Mux28~4_combout\) # (\Mux29~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \i1_sr|Add0~6_combout\,
	datac => \Mux28~4_combout\,
	datad => \Mux29~20_combout\,
	combout => \Mux28~5_combout\);

-- Location: LCCOMB_X29_Y15_N12
\ShiftLeft0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~12_combout\ = (\a~combout\(0) & (!\shamt~combout\(1) & (\shamt~combout\(2) & !\shamt~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \shamt~combout\(1),
	datac => \shamt~combout\(2),
	datad => \shamt~combout\(0),
	combout => \ShiftLeft0~12_combout\);

-- Location: LCCOMB_X29_Y15_N6
\ShiftLeft0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~13_combout\ = (\shamt~combout\(0) & ((\shamt~combout\(1) & ((\a~combout\(1)))) # (!\shamt~combout\(1) & (\a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \shamt~combout\(1),
	datac => \a~combout\(1),
	datad => \shamt~combout\(0),
	combout => \ShiftLeft0~13_combout\);

-- Location: LCCOMB_X29_Y15_N10
\ShiftLeft0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~15_combout\ = (\ShiftLeft0~12_combout\) # ((!\shamt~combout\(2) & ((\ShiftLeft0~13_combout\) # (\ShiftLeft0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~13_combout\,
	datab => \shamt~combout\(2),
	datac => \ShiftLeft0~14_combout\,
	datad => \ShiftLeft0~12_combout\,
	combout => \ShiftLeft0~15_combout\);

-- Location: LCCOMB_X30_Y13_N12
\ShiftRight0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~56_combout\ = (\shamt~combout\(2) & ((\shamt~combout\(0) & ((\ShiftRight1~13_combout\))) # (!\shamt~combout\(0) & (\ShiftRight0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(2),
	datab => \ShiftRight0~6_combout\,
	datac => \shamt~combout\(0),
	datad => \ShiftRight1~13_combout\,
	combout => \ShiftRight0~56_combout\);

-- Location: LCCOMB_X30_Y13_N6
\ShiftRight0~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~57_combout\ = (\ShiftRight0~56_combout\) # ((!\shamt~combout\(2) & \ShiftRight0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~56_combout\,
	datac => \shamt~combout\(2),
	datad => \ShiftRight0~36_combout\,
	combout => \ShiftRight0~57_combout\);

-- Location: LCCOMB_X30_Y13_N24
\ShiftRight0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~58_combout\ = (\shamt~combout\(3) & (\ShiftRight0~74_combout\ & (!\shamt~combout\(2)))) # (!\shamt~combout\(3) & (((\ShiftRight0~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(3),
	datab => \ShiftRight0~74_combout\,
	datac => \shamt~combout\(2),
	datad => \ShiftRight0~57_combout\,
	combout => \ShiftRight0~58_combout\);

-- Location: LCCOMB_X30_Y13_N26
\ShiftRight1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~44_combout\ = (\shamt~combout\(3) & ((\ShiftLeft0~6_combout\ & (\ShiftRight1~14_combout\)) # (!\ShiftLeft0~6_combout\ & ((\a~combout\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~6_combout\,
	datab => \shamt~combout\(3),
	datac => \ShiftRight1~14_combout\,
	datad => \a~combout\(31),
	combout => \ShiftRight1~44_combout\);

-- Location: LCCOMB_X30_Y13_N4
\ShiftRight1~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~45_combout\ = (\ShiftRight1~44_combout\) # ((!\shamt~combout\(3) & \ShiftRight0~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(3),
	datab => \ShiftRight1~44_combout\,
	datad => \ShiftRight0~57_combout\,
	combout => \ShiftRight1~45_combout\);

-- Location: LCCOMB_X29_Y15_N4
\ShiftLeft0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~16_combout\ = (\shamt~combout\(0) & ((\shamt~combout\(1) & (\a~combout\(2))) # (!\shamt~combout\(1) & ((\a~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \shamt~combout\(1),
	datac => \a~combout\(4),
	datad => \shamt~combout\(0),
	combout => \ShiftLeft0~16_combout\);

-- Location: LCCOMB_X20_Y14_N22
\ShiftLeft0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~17_combout\ = (\shamt~combout\(1) & (\a~combout\(3))) # (!\shamt~combout\(1) & ((\a~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datac => \shamt~combout\(1),
	datad => \a~combout\(5),
	combout => \ShiftLeft0~17_combout\);

-- Location: LCCOMB_X29_Y15_N22
\ShiftLeft0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~18_combout\ = (\ShiftLeft0~16_combout\) # ((\ShiftLeft0~17_combout\ & !\shamt~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~17_combout\,
	datac => \ShiftLeft0~16_combout\,
	datad => \shamt~combout\(0),
	combout => \ShiftLeft0~18_combout\);

-- Location: LCCOMB_X24_Y15_N24
\ShiftLeft0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~19_combout\ = (\shamt~combout\(2) & (((\ShiftLeft0~7_combout\ & !\shamt~combout\(1))))) # (!\shamt~combout\(2) & (\ShiftLeft0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~18_combout\,
	datab => \ShiftLeft0~7_combout\,
	datac => \shamt~combout\(1),
	datad => \shamt~combout\(2),
	combout => \ShiftLeft0~19_combout\);

-- Location: LCCOMB_X24_Y13_N10
\Mux26~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = (\Mux29~9_combout\ & ((\Mux29~10_combout\ & (\ShiftRight1~45_combout\)) # (!\Mux29~10_combout\ & ((\Mux26~9_combout\))))) # (!\Mux29~9_combout\ & (((!\Mux29~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~45_combout\,
	datab => \Mux29~9_combout\,
	datac => \Mux29~10_combout\,
	datad => \Mux26~9_combout\,
	combout => \Mux26~2_combout\);

-- Location: LCCOMB_X24_Y13_N4
\Mux26~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~3_combout\ = (\Mux29~6_combout\ & ((\Mux26~2_combout\ & (xor_out(5))) # (!\Mux26~2_combout\ & ((\ShiftRight0~58_combout\))))) # (!\Mux29~6_combout\ & (((\Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => xor_out(5),
	datab => \ShiftRight0~58_combout\,
	datac => \Mux29~6_combout\,
	datad => \Mux26~2_combout\,
	combout => \Mux26~3_combout\);

-- Location: LCCOMB_X30_Y14_N20
\ShiftRight0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~60_combout\ = (\shamt~combout\(2) & (((\ShiftRight1~17_combout\) # (\ShiftRight1~18_combout\)))) # (!\shamt~combout\(2) & (\ShiftRight1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(2),
	datab => \ShiftRight1~20_combout\,
	datac => \ShiftRight1~17_combout\,
	datad => \ShiftRight1~18_combout\,
	combout => \ShiftRight0~60_combout\);

-- Location: LCCOMB_X30_Y14_N22
\ShiftRight0~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~61_combout\ = (\shamt~combout\(3) & (((\ShiftLeft0~6_combout\ & \ShiftRight1~4_combout\)))) # (!\shamt~combout\(3) & (\ShiftRight0~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~60_combout\,
	datab => \ShiftLeft0~6_combout\,
	datac => \shamt~combout\(3),
	datad => \ShiftRight1~4_combout\,
	combout => \ShiftRight0~61_combout\);

-- Location: LCCOMB_X23_Y14_N18
\ShiftRight1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~46_combout\ = (\shamt~combout\(3) & ((\ShiftLeft0~4_combout\ & (\a~combout\(31))) # (!\ShiftLeft0~4_combout\ & ((\a~combout\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~4_combout\,
	datab => \shamt~combout\(3),
	datac => \a~combout\(31),
	datad => \a~combout\(30),
	combout => \ShiftRight1~46_combout\);

-- Location: LCCOMB_X26_Y13_N14
\ShiftRight1~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~47_combout\ = (\ShiftRight1~46_combout\) # ((\ShiftRight0~60_combout\ & !\shamt~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~60_combout\,
	datac => \shamt~combout\(3),
	datad => \ShiftRight1~46_combout\,
	combout => \ShiftRight1~47_combout\);

-- Location: LCCOMB_X23_Y15_N24
\Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\Mux17~2_combout\ & ((\shamt~combout\(2) & ((\ShiftLeft0~9_combout\))) # (!\shamt~combout\(2) & (\ShiftLeft0~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(2),
	datab => \ShiftLeft0~21_combout\,
	datac => \Mux17~2_combout\,
	datad => \ShiftLeft0~9_combout\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X24_Y14_N14
\Mux25~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (\Mux29~10_combout\ & (((\ShiftRight1~47_combout\ & \Mux29~9_combout\)))) # (!\Mux29~10_combout\ & ((\Mux25~0_combout\) # ((!\Mux29~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~10_combout\,
	datab => \Mux25~0_combout\,
	datac => \ShiftRight1~47_combout\,
	datad => \Mux29~9_combout\,
	combout => \Mux25~1_combout\);

-- Location: LCCOMB_X24_Y14_N16
\Mux25~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = (\Mux29~6_combout\ & ((\Mux25~1_combout\ & (xor_out(6))) # (!\Mux25~1_combout\ & ((\ShiftRight0~61_combout\))))) # (!\Mux29~6_combout\ & (((\Mux25~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~6_combout\,
	datab => xor_out(6),
	datac => \Mux25~1_combout\,
	datad => \ShiftRight0~61_combout\,
	combout => \Mux25~2_combout\);

-- Location: LCCOMB_X25_Y14_N6
\Mux25~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = (\Mux27~6_combout\ & ((\Mux25~2_combout\) # ((\Mux27~3_combout\)))) # (!\Mux27~6_combout\ & (((!\Mux27~3_combout\ & \ShiftRight1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~6_combout\,
	datab => \Mux25~2_combout\,
	datac => \Mux27~3_combout\,
	datad => \ShiftRight1~28_combout\,
	combout => \Mux25~3_combout\);

-- Location: LCCOMB_X25_Y14_N2
\Mux25~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~4_combout\ = (\Mux25~3_combout\ & ((\ShiftRight0~62_combout\) # ((!\Mux27~3_combout\)))) # (!\Mux25~3_combout\ & (((\Mux27~3_combout\ & \ShiftRight1~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~3_combout\,
	datab => \ShiftRight0~62_combout\,
	datac => \Mux27~3_combout\,
	datad => \ShiftRight1~32_combout\,
	combout => \Mux25~4_combout\);

-- Location: LCCOMB_X29_Y14_N20
\ShiftLeft0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~22_combout\ = (\shamt~combout\(1) & ((\a~combout\(5)))) # (!\shamt~combout\(1) & (\a~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datab => \a~combout\(7),
	datac => \a~combout\(5),
	combout => \ShiftLeft0~22_combout\);

-- Location: LCCOMB_X29_Y14_N14
\ShiftLeft0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~23_combout\ = (\shamt~combout\(0) & ((\ShiftLeft0~20_combout\))) # (!\shamt~combout\(0) & (\ShiftLeft0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~22_combout\,
	datab => \ShiftLeft0~20_combout\,
	datad => \shamt~combout\(0),
	combout => \ShiftLeft0~23_combout\);

-- Location: LCCOMB_X26_Y13_N10
\xor_out[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- xor_out(8) = \a~combout\(8) $ (\b~combout\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(8),
	datad => \b~combout\(8),
	combout => xor_out(8));

-- Location: LCCOMB_X29_Y13_N26
\ShiftRight1~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~49_combout\ = (\shamt~combout\(3) & (\a~combout\(31))) # (!\shamt~combout\(3) & ((\shamt~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(31),
	datab => \shamt~combout\(3),
	datac => \shamt~combout\(2),
	combout => \ShiftRight1~49_combout\);

-- Location: LCCOMB_X27_Y14_N14
\ShiftRight1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~50_combout\ = (\ShiftRight1~49_combout\ & ((\ShiftRight0~5_combout\) # ((\shamt~combout\(3))))) # (!\ShiftRight1~49_combout\ & (((!\shamt~combout\(3) & \ShiftRight0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~5_combout\,
	datab => \ShiftRight1~49_combout\,
	datac => \shamt~combout\(3),
	datad => \ShiftRight0~8_combout\,
	combout => \ShiftRight1~50_combout\);

-- Location: LCCOMB_X27_Y15_N16
\Mux23~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (!\shamt~combout\(4) & ((\ShiftLeft0~24_combout\) # ((\ShiftLeft0~27_combout\) # (\ShiftLeft0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(4),
	datab => \ShiftLeft0~24_combout\,
	datac => \ShiftLeft0~27_combout\,
	datad => \ShiftLeft0~25_combout\,
	combout => \Mux23~2_combout\);

-- Location: LCCOMB_X27_Y12_N0
\Mux23~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = (\Mux29~10_combout\ & (((\Mux29~9_combout\ & \ShiftRight1~50_combout\)))) # (!\Mux29~10_combout\ & ((\Mux23~2_combout\) # ((!\Mux29~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~2_combout\,
	datab => \Mux29~10_combout\,
	datac => \Mux29~9_combout\,
	datad => \ShiftRight1~50_combout\,
	combout => \Mux23~3_combout\);

-- Location: LCCOMB_X26_Y13_N12
\Mux23~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~4_combout\ = (\Mux23~3_combout\ & ((xor_out(8)) # ((!\Mux29~6_combout\)))) # (!\Mux23~3_combout\ & (((\Mux29~6_combout\ & \ShiftRight0~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => xor_out(8),
	datab => \Mux23~3_combout\,
	datac => \Mux29~6_combout\,
	datad => \ShiftRight0~66_combout\,
	combout => \Mux23~4_combout\);

-- Location: LCCOMB_X23_Y13_N24
\Mux23~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~7_combout\ = (\Mux22~3_combout\ & (((\a~combout\(8) & \b~combout\(8))) # (!\alu_op~combout\(1)))) # (!\Mux22~3_combout\ & (\alu_op~combout\(1) & ((\a~combout\(8)) # (\b~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~3_combout\,
	datab => \alu_op~combout\(1),
	datac => \a~combout\(8),
	datad => \b~combout\(8),
	combout => \Mux23~7_combout\);

-- Location: LCCOMB_X26_Y14_N12
\ShiftLeft0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~28_combout\ = (\shamt~combout\(1) & ((\a~combout\(7)))) # (!\shamt~combout\(1) & (\a~combout\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datac => \a~combout\(9),
	datad => \a~combout\(7),
	combout => \ShiftLeft0~28_combout\);

-- Location: LCCOMB_X25_Y15_N28
\ShiftLeft0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~30_combout\ = (\shamt~combout\(2) & ((\ShiftLeft0~18_combout\))) # (!\shamt~combout\(2) & (\ShiftLeft0~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~29_combout\,
	datac => \ShiftLeft0~18_combout\,
	datad => \shamt~combout\(2),
	combout => \ShiftLeft0~30_combout\);

-- Location: LCCOMB_X25_Y15_N6
\Mux22~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = (!\shamt~combout\(4) & ((\ShiftLeft0~7_combout\) # (!\shamt~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(4),
	datab => \ShiftLeft0~7_combout\,
	datac => \shamt~combout\(3),
	combout => \Mux22~4_combout\);

-- Location: LCCOMB_X25_Y15_N24
\Mux22~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~5_combout\ = (\Mux22~4_combout\ & ((\shamt~combout\(3) & ((\ShiftLeft0~6_combout\))) # (!\shamt~combout\(3) & (\ShiftLeft0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~4_combout\,
	datab => \ShiftLeft0~30_combout\,
	datac => \shamt~combout\(3),
	datad => \ShiftLeft0~6_combout\,
	combout => \Mux22~5_combout\);

-- Location: LCCOMB_X27_Y13_N26
\Mux21~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~6_combout\ = (\Mux29~8_combout\ & ((\i1_sr|Add0~20_combout\) # ((!\Mux22~2_combout\)))) # (!\Mux29~8_combout\ & (((\Mux22~2_combout\ & \ShiftRight0~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1_sr|Add0~20_combout\,
	datab => \Mux29~8_combout\,
	datac => \Mux22~2_combout\,
	datad => \ShiftRight0~45_combout\,
	combout => \Mux21~6_combout\);

-- Location: LCCOMB_X27_Y13_N20
\Mux21~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~7_combout\ = (\Mux21~6_combout\ & (((\Mux22~2_combout\) # (\Mux21~10_combout\)))) # (!\Mux21~6_combout\ & (\ShiftRight0~48_combout\ & (!\Mux22~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~48_combout\,
	datab => \Mux21~6_combout\,
	datac => \Mux22~2_combout\,
	datad => \Mux21~10_combout\,
	combout => \Mux21~7_combout\);

-- Location: LCCOMB_X29_Y12_N0
\ShiftLeft0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~36_combout\ = (\ShiftLeft0~11_combout\ & (!\shamt~combout\(2) & \shamt~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~11_combout\,
	datab => \shamt~combout\(2),
	datad => \shamt~combout\(3),
	combout => \ShiftLeft0~36_combout\);

-- Location: LCCOMB_X29_Y12_N2
\Mux20~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (!\shamt~combout\(4) & ((\ShiftLeft0~36_combout\) # ((\ShiftLeft0~39_combout\ & !\shamt~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~39_combout\,
	datab => \ShiftLeft0~36_combout\,
	datac => \shamt~combout\(4),
	datad => \shamt~combout\(3),
	combout => \Mux20~2_combout\);

-- Location: LCCOMB_X29_Y12_N4
\Mux20~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = (\Mux29~9_combout\ & ((\Mux29~10_combout\ & ((\ShiftRight1~55_combout\))) # (!\Mux29~10_combout\ & (\Mux20~2_combout\)))) # (!\Mux29~9_combout\ & (((!\Mux29~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~9_combout\,
	datab => \Mux20~2_combout\,
	datac => \Mux29~10_combout\,
	datad => \ShiftRight1~55_combout\,
	combout => \Mux20~3_combout\);

-- Location: LCCOMB_X29_Y14_N4
\ShiftLeft0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~40_combout\ = (\shamt~combout\(2) & ((\shamt~combout\(0) & (\ShiftLeft0~22_combout\)) # (!\shamt~combout\(0) & ((\ShiftLeft0~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~22_combout\,
	datab => \ShiftLeft0~26_combout\,
	datac => \shamt~combout\(2),
	datad => \shamt~combout\(0),
	combout => \ShiftLeft0~40_combout\);

-- Location: LCCOMB_X27_Y15_N26
\ShiftLeft0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~42_combout\ = (!\shamt~combout\(2) & ((\shamt~combout\(0) & ((\ShiftLeft0~37_combout\))) # (!\shamt~combout\(0) & (\ShiftLeft0~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~41_combout\,
	datab => \ShiftLeft0~37_combout\,
	datac => \shamt~combout\(0),
	datad => \shamt~combout\(2),
	combout => \ShiftLeft0~42_combout\);

-- Location: LCCOMB_X29_Y12_N22
\ShiftLeft0~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~43_combout\ = (\shamt~combout\(3) & (\ShiftLeft0~15_combout\)) # (!\shamt~combout\(3) & (((\ShiftLeft0~40_combout\) # (\ShiftLeft0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~15_combout\,
	datab => \ShiftLeft0~40_combout\,
	datac => \ShiftLeft0~42_combout\,
	datad => \shamt~combout\(3),
	combout => \ShiftLeft0~43_combout\);

-- Location: LCCOMB_X26_Y12_N16
\Mux19~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = (\Mux29~9_combout\ & ((\Mux29~10_combout\) # ((\shamt~combout\(4)) # (!\ShiftLeft0~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~10_combout\,
	datab => \ShiftLeft0~43_combout\,
	datac => \shamt~combout\(4),
	datad => \Mux29~9_combout\,
	combout => \Mux19~2_combout\);

-- Location: LCCOMB_X23_Y14_N16
\ShiftRight1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~54_combout\ = (\ShiftLeft0~4_combout\ & (((\a~combout\(31))))) # (!\ShiftLeft0~4_combout\ & ((\shamt~combout\(3) & (\a~combout\(31))) # (!\shamt~combout\(3) & ((\a~combout\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~4_combout\,
	datab => \shamt~combout\(3),
	datac => \a~combout\(31),
	datad => \a~combout\(30),
	combout => \ShiftRight1~54_combout\);

-- Location: LCCOMB_X26_Y15_N20
\ShiftLeft0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~48_combout\ = (\shamt~combout\(1) & (\a~combout\(12))) # (!\shamt~combout\(1) & ((\a~combout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datac => \a~combout\(12),
	datad => \a~combout\(14),
	combout => \ShiftLeft0~48_combout\);

-- Location: LCCOMB_X26_Y15_N22
\ShiftLeft0~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~49_combout\ = (\shamt~combout\(0) & ((\ShiftLeft0~44_combout\))) # (!\shamt~combout\(0) & (\ShiftLeft0~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~48_combout\,
	datac => \shamt~combout\(0),
	datad => \ShiftLeft0~44_combout\,
	combout => \ShiftLeft0~49_combout\);

-- Location: LCCOMB_X25_Y16_N30
\ShiftLeft0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~54_combout\ = (\shamt~combout\(2) & ((\ShiftLeft0~38_combout\))) # (!\shamt~combout\(2) & (\ShiftLeft0~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~53_combout\,
	datac => \shamt~combout\(2),
	datad => \ShiftLeft0~38_combout\,
	combout => \ShiftLeft0~54_combout\);

-- Location: LCCOMB_X25_Y16_N16
\Mux16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (!\shamt~combout\(4) & ((\shamt~combout\(3) & ((\ShiftLeft0~51_combout\))) # (!\shamt~combout\(3) & (\ShiftLeft0~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(3),
	datab => \ShiftLeft0~54_combout\,
	datac => \ShiftLeft0~51_combout\,
	datad => \shamt~combout\(4),
	combout => \Mux16~2_combout\);

-- Location: LCCOMB_X24_Y13_N0
\Mux16~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (\Mux29~9_combout\ & ((\Mux29~10_combout\ & (\a~combout\(31))) # (!\Mux29~10_combout\ & ((\Mux16~2_combout\))))) # (!\Mux29~9_combout\ & (((!\Mux29~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(31),
	datab => \Mux29~9_combout\,
	datac => \Mux29~10_combout\,
	datad => \Mux16~2_combout\,
	combout => \Mux16~3_combout\);

-- Location: LCCOMB_X25_Y15_N12
\Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\Mux13~3_combout\ & (((\Mux13~4_combout\)))) # (!\Mux13~3_combout\ & ((\Mux13~4_combout\ & ((\ShiftLeft0~30_combout\))) # (!\Mux13~4_combout\ & (\ShiftLeft0~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~3_combout\,
	datab => \ShiftLeft0~61_combout\,
	datac => \Mux13~4_combout\,
	datad => \ShiftLeft0~30_combout\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X21_Y15_N2
\xor_out[17]\ : cycloneii_lcell_comb
-- Equation(s):
-- xor_out(17) = \a~combout\(17) $ (\b~combout\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(17),
	datac => \b~combout\(17),
	combout => xor_out(17));

-- Location: LCCOMB_X25_Y15_N14
\Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\Mux14~0_combout\ & (((xor_out(17))) # (!\Mux13~3_combout\))) # (!\Mux14~0_combout\ & (\Mux13~3_combout\ & ((\ShiftLeft0~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \Mux13~3_combout\,
	datac => xor_out(17),
	datad => \ShiftLeft0~110_combout\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X26_Y16_N0
\Mux13~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~5_combout\ = (!\alu_op~combout\(3) & (((!\shamt~combout\(4)) # (!\alu_op~combout\(0))) # (!\alu_op~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(2),
	datab => \alu_op~combout\(0),
	datac => \alu_op~combout\(3),
	datad => \shamt~combout\(4),
	combout => \Mux13~5_combout\);

-- Location: LCCOMB_X26_Y16_N20
\Mux14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\Mux13~5_combout\ & ((\Mux13~6_combout\ & ((\ShiftRight0~42_combout\))) # (!\Mux13~6_combout\ & (\Mux14~1_combout\)))) # (!\Mux13~5_combout\ & (((!\Mux13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mux13~5_combout\,
	datac => \Mux13~6_combout\,
	datad => \ShiftRight0~42_combout\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X26_Y16_N14
\Mux14~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\Mux14~2_combout\ & (((\ShiftRight1~16_combout\)) # (!\alu_op~combout\(3)))) # (!\Mux14~2_combout\ & (\alu_op~combout\(3) & (\a~combout\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~2_combout\,
	datab => \alu_op~combout\(3),
	datac => \a~combout\(31),
	datad => \ShiftRight1~16_combout\,
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X25_Y15_N16
\ShiftLeft0~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~65_combout\ = (\ShiftRight0~47_combout\ & ((\ShiftLeft0~10_combout\) # ((\shamt~combout\(1) & \ShiftLeft0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datab => \ShiftRight0~47_combout\,
	datac => \ShiftLeft0~10_combout\,
	datad => \ShiftLeft0~7_combout\,
	combout => \ShiftLeft0~65_combout\);

-- Location: LCCOMB_X23_Y16_N10
\ShiftLeft0~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~66_combout\ = (\shamt~combout\(1) & ((\a~combout\(17)))) # (!\shamt~combout\(1) & (\a~combout\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(19),
	datab => \a~combout\(17),
	datad => \shamt~combout\(1),
	combout => \ShiftLeft0~66_combout\);

-- Location: LCCOMB_X22_Y16_N16
\or_out[20]\ : cycloneii_lcell_comb
-- Equation(s):
-- or_out(20) = (\b~combout\(20)) # (\a~combout\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(20),
	datad => \a~combout\(20),
	combout => or_out(20));

-- Location: LCCOMB_X22_Y16_N4
\Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\Mux13~3_combout\ & (xor_out(20))) # (!\Mux13~3_combout\ & (((\ShiftLeft0~42_combout\) # (\ShiftLeft0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~3_combout\,
	datab => xor_out(20),
	datac => \ShiftLeft0~42_combout\,
	datad => \ShiftLeft0~40_combout\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X24_Y16_N22
\ShiftLeft0~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~70_combout\ = (\shamt~combout\(0) & (\ShiftLeft0~66_combout\)) # (!\shamt~combout\(0) & ((\ShiftLeft0~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~66_combout\,
	datab => \ShiftLeft0~69_combout\,
	datad => \shamt~combout\(0),
	combout => \ShiftLeft0~70_combout\);

-- Location: LCCOMB_X27_Y15_N24
\ShiftLeft0~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~71_combout\ = (\shamt~combout\(2) & ((\ShiftLeft0~57_combout\))) # (!\shamt~combout\(2) & (\ShiftLeft0~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~70_combout\,
	datac => \ShiftLeft0~57_combout\,
	datad => \shamt~combout\(2),
	combout => \ShiftLeft0~71_combout\);

-- Location: LCCOMB_X24_Y15_N30
\Mux11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\Mux13~3_combout\ & (\ShiftLeft0~15_combout\ & ((!\shamt~combout\(3))))) # (!\Mux13~3_combout\ & (((\ShiftLeft0~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~15_combout\,
	datab => \ShiftLeft0~71_combout\,
	datac => \Mux13~3_combout\,
	datad => \shamt~combout\(3),
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X24_Y15_N8
\Mux11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\Mux13~4_combout\ & (\Mux11~0_combout\)) # (!\Mux13~4_combout\ & ((\Mux11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux11~0_combout\,
	datac => \Mux13~4_combout\,
	datad => \Mux11~1_combout\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X24_Y14_N30
\Mux11~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\Mux13~6_combout\ & (((\ShiftRight0~54_combout\ & \Mux13~5_combout\)))) # (!\Mux13~6_combout\ & ((\Mux11~2_combout\) # ((!\Mux13~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~6_combout\,
	datab => \Mux11~2_combout\,
	datac => \ShiftRight0~54_combout\,
	datad => \Mux13~5_combout\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X24_Y14_N24
\Mux11~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (\alu_op~combout\(3) & ((\Mux11~3_combout\ & ((\ShiftRight1~43_combout\))) # (!\Mux11~3_combout\ & (\a~combout\(31))))) # (!\alu_op~combout\(3) & (((\Mux11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(31),
	datab => \ShiftRight1~43_combout\,
	datac => \alu_op~combout\(3),
	datad => \Mux11~3_combout\,
	combout => \Mux11~4_combout\);

-- Location: LCCOMB_X20_Y13_N30
\Mux11~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~5_combout\ = (\Mux11~4_combout\ & (((\alu_op~combout\(0) & \alu_op~combout\(2))) # (!\alu_op~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(0),
	datab => \alu_op~combout\(3),
	datac => \alu_op~combout\(2),
	datad => \Mux11~4_combout\,
	combout => \Mux11~5_combout\);

-- Location: LCCOMB_X20_Y13_N24
\Mux11~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~6_combout\ = (\Mux27~9_combout\ & ((\Mux27~10_combout\ & ((or_out(20)))) # (!\Mux27~10_combout\ & (\Mux11~5_combout\)))) # (!\Mux27~9_combout\ & (((!\Mux27~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~9_combout\,
	datab => \Mux11~5_combout\,
	datac => \Mux27~10_combout\,
	datad => or_out(20),
	combout => \Mux11~6_combout\);

-- Location: LCCOMB_X21_Y16_N12
\or_out[21]\ : cycloneii_lcell_comb
-- Equation(s):
-- or_out(21) = (\a~combout\(21)) # (\b~combout\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(21),
	datad => \b~combout\(21),
	combout => or_out(21));

-- Location: LCCOMB_X24_Y15_N26
\Mux10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\Mux13~4_combout\ & (xor_out(21))) # (!\Mux13~4_combout\ & (((\ShiftLeft0~19_combout\ & !\shamt~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~4_combout\,
	datab => xor_out(21),
	datac => \ShiftLeft0~19_combout\,
	datad => \shamt~combout\(3),
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X23_Y16_N14
\ShiftLeft0~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~72_combout\ = (\shamt~combout\(1) & (\a~combout\(19))) # (!\shamt~combout\(1) & ((\a~combout\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(19),
	datab => \shamt~combout\(1),
	datad => \a~combout\(21),
	combout => \ShiftLeft0~72_combout\);

-- Location: LCCOMB_X25_Y15_N20
\ShiftLeft0~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~74_combout\ = (\shamt~combout\(2) & (\ShiftLeft0~60_combout\)) # (!\shamt~combout\(2) & ((\ShiftLeft0~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~60_combout\,
	datac => \ShiftLeft0~73_combout\,
	datad => \shamt~combout\(2),
	combout => \ShiftLeft0~74_combout\);

-- Location: LCCOMB_X24_Y15_N12
\Mux10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\Mux13~4_combout\ & (\ShiftLeft0~46_combout\)) # (!\Mux13~4_combout\ & ((\ShiftLeft0~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~46_combout\,
	datac => \Mux13~4_combout\,
	datad => \ShiftLeft0~74_combout\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X24_Y13_N2
\Mux10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\Mux13~5_combout\ & ((\Mux13~6_combout\ & ((\ShiftRight0~58_combout\))) # (!\Mux13~6_combout\ & (\Mux10~10_combout\)))) # (!\Mux13~5_combout\ & (!\Mux13~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~5_combout\,
	datab => \Mux13~6_combout\,
	datac => \Mux10~10_combout\,
	datad => \ShiftRight0~58_combout\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X24_Y13_N28
\Mux10~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (\Mux10~4_combout\ & ((\ShiftRight1~45_combout\) # ((!\alu_op~combout\(3))))) # (!\Mux10~4_combout\ & (((\alu_op~combout\(3) & \a~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~45_combout\,
	datab => \Mux10~4_combout\,
	datac => \alu_op~combout\(3),
	datad => \a~combout\(31),
	combout => \Mux10~5_combout\);

-- Location: LCCOMB_X22_Y16_N0
\or_out[22]\ : cycloneii_lcell_comb
-- Equation(s):
-- or_out(22) = (\a~combout\(22)) # (\b~combout\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(22),
	datac => \b~combout\(22),
	combout => or_out(22));

-- Location: LCCOMB_X23_Y15_N22
\ShiftLeft0~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~75_combout\ = (!\shamt~combout\(3) & ((\shamt~combout\(2) & ((\ShiftLeft0~9_combout\))) # (!\shamt~combout\(2) & (\ShiftLeft0~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(2),
	datab => \ShiftLeft0~21_combout\,
	datac => \shamt~combout\(3),
	datad => \ShiftLeft0~9_combout\,
	combout => \ShiftLeft0~75_combout\);

-- Location: LCCOMB_X22_Y16_N18
\ShiftLeft0~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~76_combout\ = (\shamt~combout\(1) & ((\a~combout\(20)))) # (!\shamt~combout\(1) & (\a~combout\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datab => \a~combout\(22),
	datad => \a~combout\(20),
	combout => \ShiftLeft0~76_combout\);

-- Location: LCCOMB_X24_Y16_N26
\ShiftLeft0~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~77_combout\ = (\shamt~combout\(0) & (\ShiftLeft0~72_combout\)) # (!\shamt~combout\(0) & ((\ShiftLeft0~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~72_combout\,
	datac => \ShiftLeft0~76_combout\,
	datad => \shamt~combout\(0),
	combout => \ShiftLeft0~77_combout\);

-- Location: LCCOMB_X22_Y16_N28
\Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\Mux13~4_combout\ & (((\Mux13~3_combout\)))) # (!\Mux13~4_combout\ & ((\Mux13~3_combout\ & (\ShiftLeft0~75_combout\)) # (!\Mux13~3_combout\ & ((\ShiftLeft0~78_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~75_combout\,
	datab => \ShiftLeft0~78_combout\,
	datac => \Mux13~4_combout\,
	datad => \Mux13~3_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X22_Y16_N22
\xor_out[22]\ : cycloneii_lcell_comb
-- Equation(s):
-- xor_out(22) = \a~combout\(22) $ (\b~combout\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(22),
	datac => \b~combout\(22),
	combout => xor_out(22));

-- Location: LCCOMB_X22_Y16_N8
\Mux9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux9~0_combout\ & ((xor_out(22)) # ((!\Mux13~4_combout\)))) # (!\Mux9~0_combout\ & (((\Mux13~4_combout\ & \ShiftLeft0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => xor_out(22),
	datab => \Mux9~0_combout\,
	datac => \Mux13~4_combout\,
	datad => \ShiftLeft0~50_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X24_Y14_N26
\Mux9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\Mux13~6_combout\ & (\Mux13~5_combout\ & ((\ShiftRight0~61_combout\)))) # (!\Mux13~6_combout\ & (((\Mux9~1_combout\)) # (!\Mux13~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~6_combout\,
	datab => \Mux13~5_combout\,
	datac => \Mux9~1_combout\,
	datad => \ShiftRight0~61_combout\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X24_Y14_N20
\Mux9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\Mux9~2_combout\ & ((\ShiftRight1~47_combout\) # ((!\alu_op~combout\(3))))) # (!\Mux9~2_combout\ & (((\alu_op~combout\(3) & \a~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~47_combout\,
	datab => \Mux9~2_combout\,
	datac => \alu_op~combout\(3),
	datad => \a~combout\(31),
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X20_Y13_N28
\Mux9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\Mux9~3_combout\ & (((\alu_op~combout\(0) & \alu_op~combout\(2))) # (!\alu_op~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(0),
	datab => \alu_op~combout\(3),
	datac => \alu_op~combout\(2),
	datad => \Mux9~3_combout\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X20_Y13_N6
\Mux9~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (\Mux27~9_combout\ & ((\Mux27~10_combout\ & ((or_out(22)))) # (!\Mux27~10_combout\ & (\Mux9~4_combout\)))) # (!\Mux27~9_combout\ & (((!\Mux27~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~9_combout\,
	datab => \Mux9~4_combout\,
	datac => or_out(22),
	datad => \Mux27~10_combout\,
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X21_Y16_N6
\or_out[23]\ : cycloneii_lcell_comb
-- Equation(s):
-- or_out(23) = (\b~combout\(23)) # (\a~combout\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(23),
	datad => \a~combout\(23),
	combout => or_out(23));

-- Location: LCCOMB_X25_Y16_N6
\ShiftLeft0~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~79_combout\ = (!\shamt~combout\(3) & ((\shamt~combout\(2) & ((\ShiftLeft0~11_combout\))) # (!\shamt~combout\(2) & (\ShiftLeft0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~23_combout\,
	datab => \ShiftLeft0~11_combout\,
	datac => \shamt~combout\(2),
	datad => \shamt~combout\(3),
	combout => \ShiftLeft0~79_combout\);

-- Location: LCCOMB_X27_Y16_N16
\ShiftLeft0~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~80_combout\ = (\shamt~combout\(1) & ((\a~combout\(21)))) # (!\shamt~combout\(1) & (\a~combout\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(23),
	datac => \shamt~combout\(1),
	datad => \a~combout\(21),
	combout => \ShiftLeft0~80_combout\);

-- Location: LCCOMB_X27_Y16_N10
\ShiftLeft0~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~81_combout\ = (\shamt~combout\(0) & ((\ShiftLeft0~76_combout\))) # (!\shamt~combout\(0) & (\ShiftLeft0~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~80_combout\,
	datac => \ShiftLeft0~76_combout\,
	datad => \shamt~combout\(0),
	combout => \ShiftLeft0~81_combout\);

-- Location: LCCOMB_X25_Y16_N10
\Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\Mux13~3_combout\ & (((\Mux13~4_combout\)))) # (!\Mux13~3_combout\ & ((\Mux13~4_combout\ & ((\ShiftLeft0~54_combout\))) # (!\Mux13~4_combout\ & (\ShiftLeft0~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~3_combout\,
	datab => \ShiftLeft0~82_combout\,
	datac => \Mux13~4_combout\,
	datad => \ShiftLeft0~54_combout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X21_Y16_N10
\Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Mux8~0_combout\ & (((xor_out(23))) # (!\Mux13~3_combout\))) # (!\Mux8~0_combout\ & (\Mux13~3_combout\ & ((\ShiftLeft0~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~0_combout\,
	datab => \Mux13~3_combout\,
	datac => xor_out(23),
	datad => \ShiftLeft0~79_combout\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X24_Y14_N6
\Mux8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\Mux13~6_combout\ & (((\ShiftRight0~64_combout\ & \Mux13~5_combout\)))) # (!\Mux13~6_combout\ & ((\Mux8~1_combout\) # ((!\Mux13~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~6_combout\,
	datab => \Mux8~1_combout\,
	datac => \ShiftRight0~64_combout\,
	datad => \Mux13~5_combout\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X23_Y14_N12
\Mux8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\Mux8~2_combout\ & (((\ShiftRight1~48_combout\)) # (!\alu_op~combout\(3)))) # (!\Mux8~2_combout\ & (\alu_op~combout\(3) & (\a~combout\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~2_combout\,
	datab => \alu_op~combout\(3),
	datac => \a~combout\(31),
	datad => \ShiftRight1~48_combout\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X27_Y12_N16
\Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\alu_op~combout\(2) & (\alu_op~combout\(0) & \ShiftRight1~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(2),
	datac => \alu_op~combout\(0),
	datad => \ShiftRight1~50_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X27_Y12_N24
\Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\alu_op~combout\(2) & (\alu_op~combout\(0) & \ShiftRight1~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(2),
	datac => \alu_op~combout\(0),
	datad => \ShiftRight1~51_combout\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X27_Y16_N30
\ShiftLeft0~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~86_combout\ = (!\shamt~combout\(0) & ((\shamt~combout\(1) & (\a~combout\(23))) # (!\shamt~combout\(1) & ((\a~combout\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(23),
	datab => \shamt~combout\(0),
	datac => \shamt~combout\(1),
	datad => \a~combout\(25),
	combout => \ShiftLeft0~86_combout\);

-- Location: LCCOMB_X27_Y15_N18
\ShiftLeft0~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~87_combout\ = (\ShiftLeft0~86_combout\) # ((\shamt~combout\(0) & \ShiftLeft0~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~86_combout\,
	datac => \shamt~combout\(0),
	datad => \ShiftLeft0~83_combout\,
	combout => \ShiftLeft0~87_combout\);

-- Location: LCCOMB_X25_Y15_N10
\ShiftLeft0~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~88_combout\ = (\shamt~combout\(3) & (\ShiftLeft0~7_combout\ & ((\ShiftLeft0~6_combout\)))) # (!\shamt~combout\(3) & (((\ShiftLeft0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~7_combout\,
	datab => \ShiftLeft0~30_combout\,
	datac => \shamt~combout\(3),
	datad => \ShiftLeft0~6_combout\,
	combout => \ShiftLeft0~88_combout\);

-- Location: LCCOMB_X27_Y16_N0
\ShiftLeft0~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~89_combout\ = (\shamt~combout\(1) & ((\shamt~combout\(0) & (\a~combout\(23))) # (!\shamt~combout\(0) & ((\a~combout\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(23),
	datab => \shamt~combout\(0),
	datac => \shamt~combout\(1),
	datad => \a~combout\(24),
	combout => \ShiftLeft0~89_combout\);

-- Location: LCCOMB_X27_Y16_N26
\ShiftLeft0~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~90_combout\ = (\shamt~combout\(0) & (\a~combout\(25))) # (!\shamt~combout\(0) & ((\a~combout\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(25),
	datab => \shamt~combout\(0),
	datad => \a~combout\(26),
	combout => \ShiftLeft0~90_combout\);

-- Location: LCCOMB_X27_Y16_N12
\ShiftLeft0~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~91_combout\ = (\ShiftLeft0~89_combout\) # ((!\shamt~combout\(1) & \ShiftLeft0~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~89_combout\,
	datac => \shamt~combout\(1),
	datad => \ShiftLeft0~90_combout\,
	combout => \ShiftLeft0~91_combout\);

-- Location: LCCOMB_X23_Y15_N10
\Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\Mux17~2_combout\ & (((\ShiftLeft0~91_combout\ & !\Mux6~2_combout\)))) # (!\Mux17~2_combout\ & ((\ShiftLeft0~64_combout\) # ((\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~2_combout\,
	datab => \ShiftLeft0~64_combout\,
	datac => \ShiftLeft0~91_combout\,
	datad => \Mux6~2_combout\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X23_Y15_N28
\ShiftLeft0~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~92_combout\ = (\ShiftLeft0~32_combout\) # ((\ShiftLeft0~35_combout\ & !\shamt~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~32_combout\,
	datab => \ShiftLeft0~35_combout\,
	datac => \shamt~combout\(3),
	combout => \ShiftLeft0~92_combout\);

-- Location: LCCOMB_X23_Y15_N14
\Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\Mux5~2_combout\ & (((\ShiftLeft0~92_combout\) # (!\Mux6~2_combout\)))) # (!\Mux5~2_combout\ & (\ShiftLeft0~77_combout\ & ((\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~77_combout\,
	datab => \ShiftLeft0~92_combout\,
	datac => \Mux5~2_combout\,
	datad => \Mux6~2_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X30_Y15_N12
\ShiftLeft0~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~96_combout\ = (\shamt~combout\(0) & ((\a~combout\(27)))) # (!\shamt~combout\(0) & (\a~combout\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(28),
	datac => \a~combout\(27),
	datad => \shamt~combout\(0),
	combout => \ShiftLeft0~96_combout\);

-- Location: LCCOMB_X27_Y15_N4
\Mux3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\Mux29~14_combout\ & (((!\ShiftRight0~47_combout\)))) # (!\Mux29~14_combout\ & ((\ShiftRight0~47_combout\ & (\ShiftLeft0~96_combout\)) # (!\ShiftRight0~47_combout\ & ((\ShiftLeft0~84_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~96_combout\,
	datab => \ShiftLeft0~84_combout\,
	datac => \Mux29~14_combout\,
	datad => \ShiftRight0~47_combout\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X27_Y15_N6
\Mux3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\Mux3~5_combout\ & ((\ShiftLeft0~71_combout\) # ((!\Mux29~14_combout\)))) # (!\Mux3~5_combout\ & (((\Mux29~14_combout\ & \ShiftLeft0~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~71_combout\,
	datab => \Mux3~5_combout\,
	datac => \Mux29~14_combout\,
	datad => \ShiftLeft0~90_combout\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X23_Y11_N30
\Mux3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (\alu_op~combout\(2) & (\alu_op~combout\(0))) # (!\alu_op~combout\(2) & ((\shamt~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(0),
	datab => \alu_op~combout\(2),
	datad => \shamt~combout\(4),
	combout => \Mux3~7_combout\);

-- Location: LCCOMB_X23_Y11_N16
\Mux3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~8_combout\ = (\alu_op~combout\(2) & (((!\Mux3~7_combout\)))) # (!\alu_op~combout\(2) & ((\Mux3~7_combout\ & (\ShiftLeft0~43_combout\)) # (!\Mux3~7_combout\ & ((\Mux3~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~43_combout\,
	datab => \alu_op~combout\(2),
	datac => \Mux3~6_combout\,
	datad => \Mux3~7_combout\,
	combout => \Mux3~8_combout\);

-- Location: LCCOMB_X23_Y11_N24
\xor_out[29]\ : cycloneii_lcell_comb
-- Equation(s):
-- xor_out(29) = \a~combout\(29) $ (\b~combout\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(29),
	datad => \b~combout\(29),
	combout => xor_out(29));

-- Location: LCCOMB_X24_Y15_N14
\ShiftLeft0~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~97_combout\ = (\shamt~combout\(3) & ((\ShiftLeft0~19_combout\))) # (!\shamt~combout\(3) & (\ShiftLeft0~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~46_combout\,
	datac => \ShiftLeft0~19_combout\,
	datad => \shamt~combout\(3),
	combout => \ShiftLeft0~97_combout\);

-- Location: LCCOMB_X30_Y15_N6
\ShiftLeft0~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~98_combout\ = (\shamt~combout\(0) & ((\a~combout\(28)))) # (!\shamt~combout\(0) & (\a~combout\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(29),
	datac => \a~combout\(28),
	datad => \shamt~combout\(0),
	combout => \ShiftLeft0~98_combout\);

-- Location: LCCOMB_X27_Y15_N8
\Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Mux29~14_combout\ & (!\ShiftRight0~47_combout\)) # (!\Mux29~14_combout\ & ((\ShiftRight0~47_combout\ & ((\ShiftLeft0~98_combout\))) # (!\ShiftRight0~47_combout\ & (\ShiftLeft0~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~14_combout\,
	datab => \ShiftRight0~47_combout\,
	datac => \ShiftLeft0~87_combout\,
	datad => \ShiftLeft0~98_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X27_Y15_N10
\Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux29~14_combout\ & ((\Mux2~2_combout\ & ((\ShiftLeft0~74_combout\))) # (!\Mux2~2_combout\ & (\ShiftLeft0~94_combout\)))) # (!\Mux29~14_combout\ & (\Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~14_combout\,
	datab => \Mux2~2_combout\,
	datac => \ShiftLeft0~94_combout\,
	datad => \ShiftLeft0~74_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X23_Y11_N18
\Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\Mux3~7_combout\ & (((\ShiftLeft0~97_combout\ & !\alu_op~combout\(2))))) # (!\Mux3~7_combout\ & ((\Mux2~3_combout\) # ((\alu_op~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~3_combout\,
	datab => \Mux3~7_combout\,
	datac => \ShiftLeft0~97_combout\,
	datad => \alu_op~combout\(2),
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X23_Y11_N12
\Mux2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\Mux2~4_combout\ & ((xor_out(29)) # ((!\Mux3~4_combout\)))) # (!\Mux2~4_combout\ & (((\Mux3~4_combout\ & \ShiftRight0~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => xor_out(29),
	datab => \Mux2~4_combout\,
	datac => \Mux3~4_combout\,
	datad => \ShiftRight0~72_combout\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X24_Y12_N2
\Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Equal0~0_combout\ & ((\i1_sr|Equal0~0_combout\ & ((\i1_sr|Add1~60_combout\))) # (!\i1_sr|Equal0~0_combout\ & (\i1_sr|Add0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1_sr|Add0~60_combout\,
	datab => \Equal0~0_combout\,
	datac => \i1_sr|Equal0~0_combout\,
	datad => \i1_sr|Add1~60_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X30_Y15_N24
\ShiftLeft0~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~100_combout\ = (!\shamt~combout\(1) & ((\shamt~combout\(0) & ((\a~combout\(29)))) # (!\shamt~combout\(0) & (\a~combout\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datab => \a~combout\(30),
	datac => \a~combout\(29),
	datad => \shamt~combout\(0),
	combout => \ShiftLeft0~100_combout\);

-- Location: LCCOMB_X30_Y15_N18
\ShiftLeft0~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~101_combout\ = (!\shamt~combout\(2) & ((\ShiftLeft0~100_combout\) # ((\shamt~combout\(1) & \ShiftLeft0~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datab => \ShiftLeft0~96_combout\,
	datac => \ShiftLeft0~100_combout\,
	datad => \shamt~combout\(2),
	combout => \ShiftLeft0~101_combout\);

-- Location: LCCOMB_X23_Y15_N26
\ShiftLeft0~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~102_combout\ = (!\shamt~combout\(4) & ((\ShiftLeft0~101_combout\) # ((\ShiftLeft0~91_combout\ & \shamt~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(4),
	datab => \ShiftLeft0~101_combout\,
	datac => \ShiftLeft0~91_combout\,
	datad => \shamt~combout\(2),
	combout => \ShiftLeft0~102_combout\);

-- Location: LCCOMB_X23_Y15_N20
\ShiftLeft0~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~103_combout\ = (!\shamt~combout\(3) & ((\ShiftLeft0~102_combout\) # ((\shamt~combout\(4) & \ShiftLeft0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(4),
	datab => \ShiftLeft0~102_combout\,
	datac => \shamt~combout\(3),
	datad => \ShiftLeft0~50_combout\,
	combout => \ShiftLeft0~103_combout\);

-- Location: LCCOMB_X23_Y14_N0
\Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\ShiftLeft0~104_combout\ & (\a~combout\(31))) # (!\ShiftLeft0~104_combout\ & ((\a~combout\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~104_combout\,
	datac => \a~combout\(31),
	datad => \a~combout\(30),
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X21_Y12_N20
\Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\b~combout\(31) & ((\a~combout\(31) & (!\alu_op~combout\(1))) # (!\a~combout\(31) & ((!\alu_op~combout\(0)))))) # (!\b~combout\(31) & (((\alu_op~combout\(0) & \a~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(1),
	datab => \alu_op~combout\(0),
	datac => \b~combout\(31),
	datad => \a~combout\(31),
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X23_Y14_N10
\Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\alu_op~combout\(3) & (\a~combout\(31))) # (!\alu_op~combout\(3) & ((\Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_op~combout\(3),
	datac => \a~combout\(31),
	datad => \Mux0~2_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X30_Y15_N20
\ShiftLeft0~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~106_combout\ = (!\shamt~combout\(1) & ((\shamt~combout\(0) & (\a~combout\(30))) # (!\shamt~combout\(0) & ((\a~combout\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datab => \a~combout\(30),
	datac => \a~combout\(31),
	datad => \shamt~combout\(0),
	combout => \ShiftLeft0~106_combout\);

-- Location: LCCOMB_X30_Y15_N14
\ShiftLeft0~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~107_combout\ = (!\shamt~combout\(2) & ((\ShiftLeft0~106_combout\) # ((\shamt~combout\(1) & \ShiftLeft0~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datab => \ShiftLeft0~98_combout\,
	datac => \ShiftLeft0~106_combout\,
	datad => \shamt~combout\(2),
	combout => \ShiftLeft0~107_combout\);

-- Location: LCCOMB_X25_Y16_N26
\ShiftLeft0~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~108_combout\ = (!\shamt~combout\(4) & ((\ShiftLeft0~107_combout\) # ((\ShiftLeft0~95_combout\ & \shamt~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~95_combout\,
	datab => \ShiftLeft0~107_combout\,
	datac => \shamt~combout\(2),
	datad => \shamt~combout\(4),
	combout => \ShiftLeft0~108_combout\);

-- Location: LCCOMB_X25_Y16_N12
\ShiftLeft0~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~109_combout\ = (!\shamt~combout\(3) & ((\ShiftLeft0~108_combout\) # ((\ShiftLeft0~54_combout\ & \shamt~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(3),
	datab => \ShiftLeft0~108_combout\,
	datac => \ShiftLeft0~54_combout\,
	datad => \shamt~combout\(4),
	combout => \ShiftLeft0~109_combout\);

-- Location: LCCOMB_X26_Y13_N20
\Equal2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (!xor_out(8) & (!xor_out(11) & (!xor_out(10) & !xor_out(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => xor_out(8),
	datab => xor_out(11),
	datac => xor_out(10),
	datad => xor_out(9),
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X21_Y15_N10
\Equal2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~6_combout\ = (\b~combout\(16) & (\a~combout\(16) & (\b~combout\(17) $ (!\a~combout\(17))))) # (!\b~combout\(16) & (!\a~combout\(16) & (\b~combout\(17) $ (!\a~combout\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(16),
	datab => \b~combout\(17),
	datac => \a~combout\(17),
	datad => \a~combout\(16),
	combout => \Equal2~6_combout\);

-- Location: LCCOMB_X21_Y12_N30
\Equal2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~10_combout\ = (\a~combout\(30) & (\b~combout\(30) & (\b~combout\(31) $ (!\a~combout\(31))))) # (!\a~combout\(30) & (!\b~combout\(30) & (\b~combout\(31) $ (!\a~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(30),
	datab => \b~combout\(30),
	datac => \b~combout\(31),
	datad => \a~combout\(31),
	combout => \Equal2~10_combout\);

-- Location: LCCOMB_X25_Y15_N30
\ShiftLeft0~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~110_combout\ = (!\shamt~combout\(1) & (\ShiftLeft0~7_combout\ & (!\shamt~combout\(3) & !\shamt~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datab => \ShiftLeft0~7_combout\,
	datac => \shamt~combout\(3),
	datad => \shamt~combout\(2),
	combout => \ShiftLeft0~110_combout\);

-- Location: LCCOMB_X23_Y15_N6
\Mux29~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~19_combout\ = (!\shamt~combout\(4) & (!\shamt~combout\(3) & (!\shamt~combout\(2) & \ShiftLeft0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(4),
	datab => \shamt~combout\(3),
	datac => \shamt~combout\(2),
	datad => \ShiftLeft0~9_combout\,
	combout => \Mux29~19_combout\);

-- Location: LCCOMB_X24_Y13_N14
\Mux28~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~10_combout\ = (\ShiftLeft0~11_combout\ & (!\shamt~combout\(3) & (!\shamt~combout\(4) & !\shamt~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~11_combout\,
	datab => \shamt~combout\(3),
	datac => \shamt~combout\(4),
	datad => \shamt~combout\(2),
	combout => \Mux28~10_combout\);

-- Location: LCCOMB_X30_Y13_N30
\ShiftRight0~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~74_combout\ = (\shamt~combout\(1) & (((!\shamt~combout\(0) & \a~combout\(31))))) # (!\shamt~combout\(1) & (\ShiftRight1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~14_combout\,
	datab => \shamt~combout\(1),
	datac => \shamt~combout\(0),
	datad => \a~combout\(31),
	combout => \ShiftRight0~74_combout\);

-- Location: LCCOMB_X24_Y15_N10
\Mux26~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~9_combout\ = (\ShiftLeft0~19_combout\ & (!\shamt~combout\(4) & !\shamt~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~19_combout\,
	datac => \shamt~combout\(4),
	datad => \shamt~combout\(3),
	combout => \Mux26~9_combout\);

-- Location: LCCOMB_X27_Y13_N18
\Mux21~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~10_combout\ = (\Mux21~4_combout\ & ((\Mux21~3_combout\) # ((\ShiftRight0~44_combout\ & !\shamt~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~44_combout\,
	datab => \Mux21~4_combout\,
	datac => \shamt~combout\(3),
	datad => \Mux21~3_combout\,
	combout => \Mux21~10_combout\);

-- Location: LCCOMB_X24_Y15_N6
\Mux10~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~10_combout\ = (\shamt~combout\(4) & (((\Mux10~2_combout\)))) # (!\shamt~combout\(4) & ((\alu_op~combout\(2) & ((\Mux10~2_combout\))) # (!\alu_op~combout\(2) & (\Mux10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~3_combout\,
	datab => \Mux10~2_combout\,
	datac => \shamt~combout\(4),
	datad => \alu_op~combout\(2),
	combout => \Mux10~10_combout\);

-- Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[16]~I\ : cycloneii_io
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
	padio => ww_b(16),
	combout => \b~combout\(16));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[12]~I\ : cycloneii_io
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
	padio => ww_b(12),
	combout => \b~combout\(12));

-- Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[10]~I\ : cycloneii_io
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
	padio => ww_b(10),
	combout => \b~combout\(10));

-- Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[8]~I\ : cycloneii_io
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
	padio => ww_b(8),
	combout => \b~combout\(8));

-- Location: PIN_W14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X23_Y13_N8
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\alu_op~combout\(0) & (\alu_op~combout\(1) & (!\alu_op~combout\(3) & !\alu_op~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(0),
	datab => \alu_op~combout\(1),
	datac => \alu_op~combout\(3),
	datad => \alu_op~combout\(2),
	combout => \Equal0~1_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X22_Y14_N8
\b_ext[0]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_ext[0]~32_combout\ = (\Equal0~1_combout\ & (\b~combout\(0))) # (!\Equal0~1_combout\ & ((\a~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(0),
	datac => \Equal0~1_combout\,
	datad => \a~combout\(0),
	combout => \b_ext[0]~32_combout\);

-- Location: LCCOMB_X22_Y14_N16
\i1_sr|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1~0_combout\ = (\a~combout\(0) & (\b_ext[0]~32_combout\ $ (VCC))) # (!\a~combout\(0) & (\b_ext[0]~32_combout\ & VCC))
-- \i1_sr|Add1~1\ = CARRY((\a~combout\(0) & \b_ext[0]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \b_ext[0]~32_combout\,
	datad => VCC,
	combout => \i1_sr|Add1~0_combout\,
	cout => \i1_sr|Add1~1\);

-- Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X24_Y12_N24
\i1_sr|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Equal0~0_combout\ = (!\alu_op~combout\(3) & (!\alu_op~combout\(2) & (!\alu_op~combout\(0) & !\alu_op~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(3),
	datab => \alu_op~combout\(2),
	datac => \alu_op~combout\(0),
	datad => \alu_op~combout\(1),
	combout => \i1_sr|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y15_N14
\i1_sr|s[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|s[0]~0_combout\ = (\i1_sr|Equal0~0_combout\ & ((\i1_sr|Add1~0_combout\))) # (!\i1_sr|Equal0~0_combout\ & (\i1_sr|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1_sr|Add0~0_combout\,
	datab => \i1_sr|Add1~0_combout\,
	datad => \i1_sr|Equal0~0_combout\,
	combout => \i1_sr|s[0]~0_combout\);

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\shamt[3]~I\ : cycloneii_io
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
	padio => ww_shamt(3),
	combout => \shamt~combout\(3));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[28]~I\ : cycloneii_io
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
	padio => ww_a(28),
	combout => \a~combout\(28));

-- Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[29]~I\ : cycloneii_io
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
	padio => ww_a(29),
	combout => \a~combout\(29));

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X30_Y15_N8
\ShiftRight0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~4_combout\ = (!\shamt~combout\(1) & ((\shamt~combout\(0) & ((\a~combout\(29)))) # (!\shamt~combout\(0) & (\a~combout\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datab => \a~combout\(28),
	datac => \a~combout\(29),
	datad => \shamt~combout\(0),
	combout => \ShiftRight0~4_combout\);

-- Location: LCCOMB_X27_Y14_N24
\ShiftRight0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~5_combout\ = (\ShiftRight0~4_combout\) # ((\ShiftRight1~4_combout\ & \shamt~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~4_combout\,
	datac => \shamt~combout\(1),
	datad => \ShiftRight0~4_combout\,
	combout => \ShiftRight0~5_combout\);

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X27_Y14_N26
\ShiftRight0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~9_combout\ = (\shamt~combout\(3) & ((\shamt~combout\(2) & ((\ShiftRight0~5_combout\))) # (!\shamt~combout\(2) & (\ShiftRight0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~8_combout\,
	datab => \shamt~combout\(3),
	datac => \ShiftRight0~5_combout\,
	datad => \shamt~combout\(2),
	combout => \ShiftRight0~9_combout\);

-- Location: LCCOMB_X27_Y14_N20
\ShiftRight0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~17_combout\ = (\ShiftRight0~9_combout\) # ((\ShiftRight0~16_combout\ & !\shamt~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~16_combout\,
	datab => \ShiftRight0~9_combout\,
	datac => \shamt~combout\(3),
	combout => \ShiftRight0~17_combout\);

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[6]~I\ : cycloneii_io
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
	padio => ww_a(6),
	combout => \a~combout\(6));

-- Location: LCCOMB_X20_Y14_N4
\ShiftRight0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~27_combout\ = (\shamt~combout\(1) & ((\shamt~combout\(0) & (\a~combout\(7))) # (!\shamt~combout\(0) & ((\a~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(7),
	datab => \a~combout\(6),
	datac => \shamt~combout\(1),
	datad => \shamt~combout\(0),
	combout => \ShiftRight0~27_combout\);

-- Location: LCCOMB_X25_Y14_N10
\ShiftRight0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~28_combout\ = (\ShiftRight0~27_combout\) # ((\ShiftRight1~6_combout\ & !\shamt~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~6_combout\,
	datab => \shamt~combout\(1),
	datac => \ShiftRight0~27_combout\,
	combout => \ShiftRight0~28_combout\);

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X29_Y15_N16
\ShiftRight0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~25_combout\ = (!\shamt~combout\(1) & ((\shamt~combout\(0) & ((\a~combout\(1)))) # (!\shamt~combout\(0) & (\a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \shamt~combout\(1),
	datac => \a~combout\(1),
	datad => \shamt~combout\(0),
	combout => \ShiftRight0~25_combout\);

-- Location: LCCOMB_X25_Y14_N8
\ShiftRight0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~26_combout\ = (!\shamt~combout\(2) & ((\ShiftRight0~25_combout\) # ((\ShiftRight1~5_combout\ & \shamt~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~5_combout\,
	datab => \shamt~combout\(1),
	datac => \ShiftRight0~25_combout\,
	datad => \shamt~combout\(2),
	combout => \ShiftRight0~26_combout\);

-- Location: LCCOMB_X25_Y14_N12
\ShiftRight0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~29_combout\ = (!\shamt~combout\(3) & ((\ShiftRight0~26_combout\) # ((\ShiftRight0~28_combout\ & \shamt~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(3),
	datab => \ShiftRight0~28_combout\,
	datac => \ShiftRight0~26_combout\,
	datad => \shamt~combout\(2),
	combout => \ShiftRight0~29_combout\);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\shamt[4]~I\ : cycloneii_io
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
	padio => ww_shamt(4),
	combout => \shamt~combout\(4));

-- Location: LCCOMB_X22_Y15_N26
\ShiftRight0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~30_combout\ = (\shamt~combout\(4) & (((\ShiftRight0~17_combout\)))) # (!\shamt~combout\(4) & ((\ShiftRight0~24_combout\) # ((\ShiftRight0~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~24_combout\,
	datab => \ShiftRight0~17_combout\,
	datac => \ShiftRight0~29_combout\,
	datad => \shamt~combout\(4),
	combout => \ShiftRight0~30_combout\);

-- Location: LCCOMB_X22_Y15_N24
\Mux31~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~5_combout\ = (\alu_op~combout\(0) & (((\alu_op~combout\(2) & \ShiftRight0~30_combout\)))) # (!\alu_op~combout\(0) & (\i1_sr|s[0]~0_combout\ & (!\alu_op~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(0),
	datab => \i1_sr|s[0]~0_combout\,
	datac => \alu_op~combout\(2),
	datad => \ShiftRight0~30_combout\,
	combout => \Mux31~5_combout\);

-- Location: LCCOMB_X22_Y15_N8
\Mux31~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~2_combout\ = (\alu_op~combout\(0) & ((\ShiftLeft0~5_combout\) # ((\alu_op~combout\(2))))) # (!\alu_op~combout\(0) & (((!\alu_op~combout\(2) & \i1_sr|s[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~5_combout\,
	datab => \alu_op~combout\(0),
	datac => \alu_op~combout\(2),
	datad => \i1_sr|s[0]~0_combout\,
	combout => \Mux31~2_combout\);

-- Location: LCCOMB_X22_Y15_N20
\Mux31~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~3_combout\ = (\Mux31~2_combout\ & (((\ShiftRight0~30_combout\) # (!\alu_op~combout\(2))))) # (!\Mux31~2_combout\ & (xor_out(0) & (\alu_op~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => xor_out(0),
	datab => \Mux31~2_combout\,
	datac => \alu_op~combout\(2),
	datad => \ShiftRight0~30_combout\,
	combout => \Mux31~3_combout\);

-- Location: LCCOMB_X22_Y15_N16
\Mux31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\alu_op~combout\(2) & ((\a~combout\(0) & ((\b~combout\(0)) # (!\alu_op~combout\(0)))) # (!\a~combout\(0) & (!\alu_op~combout\(0) & \b~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \alu_op~combout\(0),
	datac => \alu_op~combout\(2),
	datad => \b~combout\(0),
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X22_Y15_N18
\Mux31~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (\alu_op~combout\(1) & ((\Mux31~0_combout\) # ((\i1_sr|Add0~64_combout\ & !\alu_op~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1_sr|Add0~64_combout\,
	datab => \alu_op~combout\(2),
	datac => \Mux31~0_combout\,
	datad => \alu_op~combout\(1),
	combout => \Mux31~1_combout\);

-- Location: LCCOMB_X22_Y15_N30
\Mux31~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~4_combout\ = (!\alu_op~combout\(3) & ((\Mux31~1_combout\) # ((!\alu_op~combout\(1) & \Mux31~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(1),
	datab => \alu_op~combout\(3),
	datac => \Mux31~3_combout\,
	datad => \Mux31~1_combout\,
	combout => \Mux31~4_combout\);

-- Location: LCCOMB_X22_Y15_N2
\Mux31~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~6_combout\ = (\Mux31~4_combout\) # ((!\alu_op~combout\(1) & (\alu_op~combout\(3) & \Mux31~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(1),
	datab => \alu_op~combout\(3),
	datac => \Mux31~5_combout\,
	datad => \Mux31~4_combout\,
	combout => \Mux31~6_combout\);

-- Location: LCCOMB_X22_Y14_N14
\b_ext[1]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_ext[1]~31_combout\ = (\Equal0~1_combout\ & (\b~combout\(1))) # (!\Equal0~1_combout\ & ((\a~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \Equal0~1_combout\,
	datac => \a~combout\(1),
	combout => \b_ext[1]~31_combout\);

-- Location: LCCOMB_X22_Y14_N18
\i1_sr|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1~2_combout\ = (\a~combout\(1) & ((\b_ext[1]~31_combout\ & (\i1_sr|Add1~1\ & VCC)) # (!\b_ext[1]~31_combout\ & (!\i1_sr|Add1~1\)))) # (!\a~combout\(1) & ((\b_ext[1]~31_combout\ & (!\i1_sr|Add1~1\)) # (!\b_ext[1]~31_combout\ & ((\i1_sr|Add1~1\) # 
-- (GND)))))
-- \i1_sr|Add1~3\ = CARRY((\a~combout\(1) & (!\b_ext[1]~31_combout\ & !\i1_sr|Add1~1\)) # (!\a~combout\(1) & ((!\i1_sr|Add1~1\) # (!\b_ext[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \b_ext[1]~31_combout\,
	datad => VCC,
	cin => \i1_sr|Add1~1\,
	combout => \i1_sr|Add1~2_combout\,
	cout => \i1_sr|Add1~3\);

-- Location: LCCOMB_X26_Y16_N10
\Mux30~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~9_combout\ = (!\alu_op~combout\(0) & ((\i1_sr|Equal0~0_combout\ & ((\i1_sr|Add1~2_combout\))) # (!\i1_sr|Equal0~0_combout\ & (\i1_sr|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1_sr|Add0~2_combout\,
	datab => \alu_op~combout\(0),
	datac => \i1_sr|Add1~2_combout\,
	datad => \i1_sr|Equal0~0_combout\,
	combout => \Mux30~9_combout\);

-- Location: LCCOMB_X26_Y16_N28
\Mux30~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~10_combout\ = (\ShiftLeft0~110_combout\ & (\alu_op~combout\(0) & (!\alu_op~combout\(3) & !\shamt~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~110_combout\,
	datab => \alu_op~combout\(0),
	datac => \alu_op~combout\(3),
	datad => \shamt~combout\(4),
	combout => \Mux30~10_combout\);

-- Location: LCCOMB_X26_Y16_N16
\i1_sr|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Equal0~1_combout\ = (!\alu_op~combout\(1) & !\alu_op~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_op~combout\(1),
	datac => \alu_op~combout\(2),
	combout => \i1_sr|Equal0~1_combout\);

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[15]~I\ : cycloneii_io
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
	padio => ww_a(15),
	combout => \a~combout\(15));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[13]~I\ : cycloneii_io
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
	padio => ww_a(13),
	combout => \a~combout\(13));

-- Location: LCCOMB_X26_Y15_N24
\ShiftRight0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~18_combout\ = (\shamt~combout\(1) & (\a~combout\(15))) # (!\shamt~combout\(1) & ((\a~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datac => \a~combout\(15),
	datad => \a~combout\(13),
	combout => \ShiftRight0~18_combout\);

-- Location: LCCOMB_X26_Y15_N8
\ShiftRight0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~33_combout\ = (\shamt~combout\(0) & (\ShiftRight1~9_combout\)) # (!\shamt~combout\(0) & ((\ShiftRight0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~9_combout\,
	datab => \shamt~combout\(0),
	datac => \ShiftRight0~18_combout\,
	combout => \ShiftRight0~33_combout\);

-- Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[9]~I\ : cycloneii_io
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
	padio => ww_a(9),
	combout => \a~combout\(9));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[11]~I\ : cycloneii_io
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
	padio => ww_a(11),
	combout => \a~combout\(11));

-- Location: LCCOMB_X26_Y14_N0
\ShiftRight0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~21_combout\ = (\shamt~combout\(1) & ((\a~combout\(11)))) # (!\shamt~combout\(1) & (\a~combout\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datac => \a~combout\(9),
	datad => \a~combout\(11),
	combout => \ShiftRight0~21_combout\);

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[12]~I\ : cycloneii_io
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
	padio => ww_a(12),
	combout => \a~combout\(12));

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[10]~I\ : cycloneii_io
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
	padio => ww_a(10),
	combout => \a~combout\(10));

-- Location: LCCOMB_X26_Y15_N26
\ShiftRight1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~10_combout\ = (\shamt~combout\(1) & (\a~combout\(12))) # (!\shamt~combout\(1) & ((\a~combout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datac => \a~combout\(12),
	datad => \a~combout\(10),
	combout => \ShiftRight1~10_combout\);

-- Location: LCCOMB_X26_Y14_N22
\ShiftRight0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~34_combout\ = (\shamt~combout\(0) & ((\ShiftRight1~10_combout\))) # (!\shamt~combout\(0) & (\ShiftRight0~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~21_combout\,
	datac => \ShiftRight1~10_combout\,
	datad => \shamt~combout\(0),
	combout => \ShiftRight0~34_combout\);

-- Location: LCCOMB_X27_Y14_N6
\ShiftRight0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~35_combout\ = (\shamt~combout\(2) & (\ShiftRight0~33_combout\)) # (!\shamt~combout\(2) & ((\ShiftRight0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~33_combout\,
	datac => \ShiftRight0~34_combout\,
	datad => \shamt~combout\(2),
	combout => \ShiftRight0~35_combout\);

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[4]~I\ : cycloneii_io
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
	padio => ww_a(4),
	combout => \a~combout\(4));

-- Location: LCCOMB_X21_Y14_N4
\ShiftRight1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~7_combout\ = (\shamt~combout\(0) & ((\a~combout\(4)))) # (!\shamt~combout\(0) & (\a~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datac => \a~combout\(4),
	datad => \shamt~combout\(0),
	combout => \ShiftRight1~7_combout\);

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X29_Y14_N0
\Mux30~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = (!\shamt~combout\(1) & ((\shamt~combout\(0) & ((\a~combout\(2)))) # (!\shamt~combout\(0) & (\a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datab => \shamt~combout\(0),
	datac => \a~combout\(1),
	datad => \a~combout\(2),
	combout => \Mux30~2_combout\);

-- Location: LCCOMB_X29_Y14_N26
\Mux30~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~3_combout\ = (!\shamt~combout\(2) & ((\Mux30~2_combout\) # ((\shamt~combout\(1) & \ShiftRight1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datab => \ShiftRight1~7_combout\,
	datac => \shamt~combout\(2),
	datad => \Mux30~2_combout\,
	combout => \Mux30~3_combout\);

-- Location: LCCOMB_X29_Y14_N22
\ShiftRight1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~8_combout\ = (\shamt~combout\(0) & ((\a~combout\(6)))) # (!\shamt~combout\(0) & (\a~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(5),
	datab => \a~combout\(6),
	datad => \shamt~combout\(0),
	combout => \ShiftRight1~8_combout\);

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[8]~I\ : cycloneii_io
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
	padio => ww_a(8),
	combout => \a~combout\(8));

-- Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[7]~I\ : cycloneii_io
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
	padio => ww_a(7),
	combout => \a~combout\(7));

-- Location: LCCOMB_X29_Y14_N12
\ShiftRight0~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~31_combout\ = (\shamt~combout\(1) & ((\shamt~combout\(0) & (\a~combout\(8))) # (!\shamt~combout\(0) & ((\a~combout\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datab => \a~combout\(8),
	datac => \a~combout\(7),
	datad => \shamt~combout\(0),
	combout => \ShiftRight0~31_combout\);

-- Location: LCCOMB_X29_Y14_N8
\ShiftRight0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~32_combout\ = (\ShiftRight0~31_combout\) # ((!\shamt~combout\(1) & \ShiftRight1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datab => \ShiftRight1~8_combout\,
	datad => \ShiftRight0~31_combout\,
	combout => \ShiftRight0~32_combout\);

-- Location: LCCOMB_X29_Y14_N10
\Mux30~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~4_combout\ = (!\shamt~combout\(3) & ((\Mux30~3_combout\) # ((\shamt~combout\(2) & \ShiftRight0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(3),
	datab => \Mux30~3_combout\,
	datac => \shamt~combout\(2),
	datad => \ShiftRight0~32_combout\,
	combout => \Mux30~4_combout\);

-- Location: LCCOMB_X26_Y16_N8
\Mux30~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~5_combout\ = (!\shamt~combout\(4) & ((\Mux30~4_combout\) # ((\shamt~combout\(3) & \ShiftRight0~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(3),
	datab => \shamt~combout\(4),
	datac => \ShiftRight0~35_combout\,
	datad => \Mux30~4_combout\,
	combout => \Mux30~5_combout\);

-- Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[31]~I\ : cycloneii_io
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
	padio => ww_a(31),
	combout => \a~combout\(31));

-- Location: LCCOMB_X30_Y13_N28
\ShiftRight1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~15_combout\ = (\shamt~combout\(2) & ((\shamt~combout\(1) & ((\a~combout\(31)))) # (!\shamt~combout\(1) & (\ShiftRight1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~14_combout\,
	datab => \shamt~combout\(1),
	datac => \shamt~combout\(2),
	datad => \a~combout\(31),
	combout => \ShiftRight1~15_combout\);

-- Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[17]~I\ : cycloneii_io
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
	padio => ww_a(17),
	combout => \a~combout\(17));

-- Location: LCCOMB_X23_Y16_N26
\ShiftRight0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~13_combout\ = (\shamt~combout\(1) & (\a~combout\(19))) # (!\shamt~combout\(1) & ((\a~combout\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(19),
	datab => \a~combout\(17),
	datad => \shamt~combout\(1),
	combout => \ShiftRight0~13_combout\);

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[20]~I\ : cycloneii_io
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
	padio => ww_a(20),
	combout => \a~combout\(20));

-- Location: LCCOMB_X24_Y16_N10
\ShiftRight1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~12_combout\ = (\shamt~combout\(1) & ((\a~combout\(20)))) # (!\shamt~combout\(1) & (\a~combout\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(18),
	datac => \shamt~combout\(1),
	datad => \a~combout\(20),
	combout => \ShiftRight1~12_combout\);

-- Location: LCCOMB_X23_Y16_N16
\ShiftRight0~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~37_combout\ = (\shamt~combout\(0) & ((\ShiftRight1~12_combout\))) # (!\shamt~combout\(0) & (\ShiftRight0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~13_combout\,
	datac => \ShiftRight1~12_combout\,
	datad => \shamt~combout\(0),
	combout => \ShiftRight0~37_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[22]~I\ : cycloneii_io
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
	padio => ww_a(22),
	combout => \a~combout\(22));

-- Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[24]~I\ : cycloneii_io
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
	padio => ww_a(24),
	combout => \a~combout\(24));

-- Location: LCCOMB_X22_Y16_N14
\ShiftRight1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~11_combout\ = (\shamt~combout\(1) & ((\a~combout\(24)))) # (!\shamt~combout\(1) & (\a~combout\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datab => \a~combout\(22),
	datad => \a~combout\(24),
	combout => \ShiftRight1~11_combout\);

-- Location: LCCOMB_X27_Y16_N8
\ShiftRight0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~36_combout\ = (\shamt~combout\(0) & ((\ShiftRight1~11_combout\))) # (!\shamt~combout\(0) & (\ShiftRight0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~10_combout\,
	datac => \ShiftRight1~11_combout\,
	datad => \shamt~combout\(0),
	combout => \ShiftRight0~36_combout\);

-- Location: LCCOMB_X30_Y13_N0
\ShiftRight0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~38_combout\ = (\shamt~combout\(2) & ((\ShiftRight0~36_combout\))) # (!\shamt~combout\(2) & (\ShiftRight0~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~37_combout\,
	datac => \shamt~combout\(2),
	datad => \ShiftRight0~36_combout\,
	combout => \ShiftRight0~38_combout\);

-- Location: LCCOMB_X30_Y13_N22
\ShiftRight1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~16_combout\ = (\shamt~combout\(3) & ((\ShiftRight0~39_combout\) # ((\ShiftRight1~15_combout\)))) # (!\shamt~combout\(3) & (((\ShiftRight0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~39_combout\,
	datab => \ShiftRight1~15_combout\,
	datac => \shamt~combout\(3),
	datad => \ShiftRight0~38_combout\,
	combout => \ShiftRight1~16_combout\);

-- Location: LCCOMB_X26_Y16_N2
\Mux30~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~6_combout\ = (\shamt~combout\(4) & ((\alu_op~combout\(3) & ((\ShiftRight1~16_combout\))) # (!\alu_op~combout\(3) & (\ShiftRight0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~42_combout\,
	datab => \shamt~combout\(4),
	datac => \alu_op~combout\(3),
	datad => \ShiftRight1~16_combout\,
	combout => \Mux30~6_combout\);

-- Location: LCCOMB_X26_Y16_N30
\Mux30~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~12_combout\ = (\alu_op~combout\(0) & (!\alu_op~combout\(1) & ((\Mux30~5_combout\) # (\Mux30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(0),
	datab => \alu_op~combout\(1),
	datac => \Mux30~5_combout\,
	datad => \Mux30~6_combout\,
	combout => \Mux30~12_combout\);

-- Location: LCCOMB_X26_Y16_N22
\Mux30~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~8_combout\ = (\alu_op~combout\(2) & ((\Mux30~12_combout\) # ((\Mux30~7_combout\ & !\alu_op~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~7_combout\,
	datab => \alu_op~combout\(3),
	datac => \alu_op~combout\(2),
	datad => \Mux30~12_combout\,
	combout => \Mux30~8_combout\);

-- Location: LCCOMB_X26_Y16_N6
\Mux30~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~11_combout\ = (\Mux30~8_combout\) # ((\i1_sr|Equal0~1_combout\ & ((\Mux30~9_combout\) # (\Mux30~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~9_combout\,
	datab => \Mux30~10_combout\,
	datac => \i1_sr|Equal0~1_combout\,
	datad => \Mux30~8_combout\,
	combout => \Mux30~11_combout\);

-- Location: LCCOMB_X24_Y12_N28
\Mux29~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~20_combout\ = (\alu_op~combout\(2) & (((\alu_op~combout\(0) & !\shamt~combout\(4))))) # (!\alu_op~combout\(2) & (\i1_sr|Equal0~0_combout\ & (!\alu_op~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1_sr|Equal0~0_combout\,
	datab => \alu_op~combout\(2),
	datac => \alu_op~combout\(0),
	datad => \shamt~combout\(4),
	combout => \Mux29~20_combout\);

-- Location: LCCOMB_X21_Y14_N20
\i1_sr|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add0~4_combout\ = ((\b_ext[2]~30_combout\ $ (\a~combout\(2) $ (\i1_sr|Add0~3\)))) # (GND)
-- \i1_sr|Add0~5\ = CARRY((\b_ext[2]~30_combout\ & (\a~combout\(2) & !\i1_sr|Add0~3\)) # (!\b_ext[2]~30_combout\ & ((\a~combout\(2)) # (!\i1_sr|Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_ext[2]~30_combout\,
	datab => \a~combout\(2),
	datad => VCC,
	cin => \i1_sr|Add0~3\,
	combout => \i1_sr|Add0~4_combout\,
	cout => \i1_sr|Add0~5\);

-- Location: LCCOMB_X20_Y15_N16
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\alu_op~combout\(2) & !\alu_op~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_op~combout\(2),
	datac => \alu_op~combout\(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X24_Y12_N4
\Mux29~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~13_combout\ = (\Equal0~0_combout\ & (((\i1_sr|Add0~4_combout\ & !\Mux29~20_combout\)))) # (!\Equal0~0_combout\ & ((\Mux29~12_combout\) # ((\Mux29~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~12_combout\,
	datab => \i1_sr|Add0~4_combout\,
	datac => \Equal0~0_combout\,
	datad => \Mux29~20_combout\,
	combout => \Mux29~13_combout\);

-- Location: LCCOMB_X26_Y14_N26
\ShiftRight1~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~27_combout\ = (\shamt~combout\(1) & (\a~combout\(9))) # (!\shamt~combout\(1) & ((\a~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datac => \a~combout\(9),
	datad => \a~combout\(7),
	combout => \ShiftRight1~27_combout\);

-- Location: LCCOMB_X26_Y14_N8
\ShiftRight1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~26_combout\ = (!\shamt~combout\(0) & ((\shamt~combout\(1) & (\a~combout\(8))) # (!\shamt~combout\(1) & ((\a~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datab => \a~combout\(8),
	datac => \a~combout\(6),
	datad => \shamt~combout\(0),
	combout => \ShiftRight1~26_combout\);

-- Location: LCCOMB_X26_Y14_N20
\ShiftRight1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~28_combout\ = (\ShiftRight1~26_combout\) # ((\ShiftRight1~27_combout\ & \shamt~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~27_combout\,
	datac => \ShiftRight1~26_combout\,
	datad => \shamt~combout\(0),
	combout => \ShiftRight1~28_combout\);

-- Location: LCCOMB_X27_Y14_N0
\ShiftRight0~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~47_combout\ = (!\shamt~combout\(3) & !\shamt~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \shamt~combout\(3),
	datad => \shamt~combout\(2),
	combout => \ShiftRight0~47_combout\);

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X29_Y15_N18
\ShiftRight1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~5_combout\ = (\shamt~combout\(0) & ((\a~combout\(3)))) # (!\shamt~combout\(0) & (\a~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datac => \a~combout\(3),
	datad => \shamt~combout\(0),
	combout => \ShiftRight1~5_combout\);

-- Location: LCCOMB_X25_Y14_N14
\Mux29~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~15_combout\ = (\Mux29~14_combout\ & (((!\ShiftRight0~47_combout\)))) # (!\Mux29~14_combout\ & ((\ShiftRight0~47_combout\ & ((\ShiftRight1~5_combout\))) # (!\ShiftRight0~47_combout\ & (\ShiftRight1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~14_combout\,
	datab => \ShiftRight1~28_combout\,
	datac => \ShiftRight0~47_combout\,
	datad => \ShiftRight1~5_combout\,
	combout => \Mux29~15_combout\);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[5]~I\ : cycloneii_io
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
	padio => ww_a(5),
	combout => \a~combout\(5));

-- Location: LCCOMB_X20_Y14_N14
\ShiftRight1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~6_combout\ = (\shamt~combout\(0) & (\a~combout\(5))) # (!\shamt~combout\(0) & ((\a~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(5),
	datac => \a~combout\(4),
	datad => \shamt~combout\(0),
	combout => \ShiftRight1~6_combout\);

-- Location: LCCOMB_X29_Y14_N28
\Mux29~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~14_combout\ = (\shamt~combout\(3)) # ((\shamt~combout\(1) & !\shamt~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datac => \shamt~combout\(2),
	datad => \shamt~combout\(3),
	combout => \Mux29~14_combout\);

-- Location: LCCOMB_X25_Y14_N18
\Mux29~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~16_combout\ = (\Mux29~15_combout\ & ((\ShiftRight0~48_combout\) # ((!\Mux29~14_combout\)))) # (!\Mux29~15_combout\ & (((\ShiftRight1~6_combout\ & \Mux29~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~48_combout\,
	datab => \Mux29~15_combout\,
	datac => \ShiftRight1~6_combout\,
	datad => \Mux29~14_combout\,
	combout => \Mux29~16_combout\);

-- Location: LCCOMB_X24_Y12_N6
\Mux29~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~17_combout\ = (\Mux29~20_combout\ & ((\Mux29~13_combout\ & ((\Mux29~16_combout\))) # (!\Mux29~13_combout\ & (\i1_sr|Add1~4_combout\)))) # (!\Mux29~20_combout\ & (((\Mux29~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1_sr|Add1~4_combout\,
	datab => \Mux29~20_combout\,
	datac => \Mux29~13_combout\,
	datad => \Mux29~16_combout\,
	combout => \Mux29~17_combout\);

-- Location: PIN_N6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X21_Y14_N14
\Mux29~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~7_combout\ = (\alu_op~combout\(0) & (\b~combout\(2) & \a~combout\(2))) # (!\alu_op~combout\(0) & ((\b~combout\(2)) # (\a~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_op~combout\(0),
	datac => \b~combout\(2),
	datad => \a~combout\(2),
	combout => \Mux29~7_combout\);

-- Location: LCCOMB_X24_Y12_N18
\Mux29~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~6_combout\ = (\alu_op~combout\(2) & !\alu_op~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_op~combout\(2),
	datad => \alu_op~combout\(3),
	combout => \Mux29~6_combout\);

-- Location: LCCOMB_X24_Y12_N16
\Mux29~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~18_combout\ = (\alu_op~combout\(1) & (((\Mux29~7_combout\ & \Mux29~6_combout\)))) # (!\alu_op~combout\(1) & (\Mux29~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~17_combout\,
	datab => \Mux29~7_combout\,
	datac => \Mux29~6_combout\,
	datad => \alu_op~combout\(1),
	combout => \Mux29~18_combout\);

-- Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X22_Y14_N12
\b_ext[3]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_ext[3]~29_combout\ = (\Equal0~1_combout\ & ((\b~combout\(3)))) # (!\Equal0~1_combout\ & (\a~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datac => \Equal0~1_combout\,
	datad => \b~combout\(3),
	combout => \b_ext[3]~29_combout\);

-- Location: LCCOMB_X22_Y14_N22
\i1_sr|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1~6_combout\ = (\a~combout\(3) & ((\b_ext[3]~29_combout\ & (\i1_sr|Add1~5\ & VCC)) # (!\b_ext[3]~29_combout\ & (!\i1_sr|Add1~5\)))) # (!\a~combout\(3) & ((\b_ext[3]~29_combout\ & (!\i1_sr|Add1~5\)) # (!\b_ext[3]~29_combout\ & ((\i1_sr|Add1~5\) # 
-- (GND)))))
-- \i1_sr|Add1~7\ = CARRY((\a~combout\(3) & (!\b_ext[3]~29_combout\ & !\i1_sr|Add1~5\)) # (!\a~combout\(3) & ((!\i1_sr|Add1~5\) # (!\b_ext[3]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \b_ext[3]~29_combout\,
	datad => VCC,
	cin => \i1_sr|Add1~5\,
	combout => \i1_sr|Add1~6_combout\,
	cout => \i1_sr|Add1~7\);

-- Location: LCCOMB_X29_Y14_N30
\Mux28~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~6_combout\ = (\ShiftRight0~47_combout\ & (((\ShiftRight1~7_combout\ & !\Mux29~14_combout\)))) # (!\ShiftRight0~47_combout\ & ((\ShiftRight1~39_combout\) # ((\Mux29~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~39_combout\,
	datab => \ShiftRight1~7_combout\,
	datac => \ShiftRight0~47_combout\,
	datad => \Mux29~14_combout\,
	combout => \Mux28~6_combout\);

-- Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[14]~I\ : cycloneii_io
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
	padio => ww_a(14),
	combout => \a~combout\(14));

-- Location: LCCOMB_X26_Y15_N18
\ShiftRight0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~19_combout\ = (\shamt~combout\(1) & ((\a~combout\(14)))) # (!\shamt~combout\(1) & (\a~combout\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datac => \a~combout\(12),
	datad => \a~combout\(14),
	combout => \ShiftRight0~19_combout\);

-- Location: LCCOMB_X26_Y15_N4
\ShiftRight1~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~31_combout\ = (\shamt~combout\(1) & ((\a~combout\(13)))) # (!\shamt~combout\(1) & (\a~combout\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datac => \a~combout\(11),
	datad => \a~combout\(13),
	combout => \ShiftRight1~31_combout\);

-- Location: LCCOMB_X26_Y14_N18
\ShiftRight1~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~41_combout\ = (\shamt~combout\(0) & (\ShiftRight0~19_combout\)) # (!\shamt~combout\(0) & ((\ShiftRight1~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~19_combout\,
	datac => \ShiftRight1~31_combout\,
	datad => \shamt~combout\(0),
	combout => \ShiftRight1~41_combout\);

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[16]~I\ : cycloneii_io
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
	padio => ww_a(16),
	combout => \a~combout\(16));

-- Location: LCCOMB_X24_Y16_N0
\ShiftRight0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~14_combout\ = (\shamt~combout\(1) & (\a~combout\(18))) # (!\shamt~combout\(1) & ((\a~combout\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(18),
	datab => \a~combout\(16),
	datac => \shamt~combout\(1),
	combout => \ShiftRight0~14_combout\);

-- Location: LCCOMB_X24_Y16_N24
\ShiftRight1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~40_combout\ = (\shamt~combout\(0) & ((\ShiftRight0~14_combout\))) # (!\shamt~combout\(0) & (\ShiftRight1~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~29_combout\,
	datab => \ShiftRight0~14_combout\,
	datad => \shamt~combout\(0),
	combout => \ShiftRight1~40_combout\);

-- Location: LCCOMB_X29_Y13_N12
\ShiftRight0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~52_combout\ = (\shamt~combout\(2) & ((\ShiftRight1~40_combout\))) # (!\shamt~combout\(2) & (\ShiftRight1~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(2),
	datab => \ShiftRight1~41_combout\,
	datac => \ShiftRight1~40_combout\,
	combout => \ShiftRight0~52_combout\);

-- Location: LCCOMB_X29_Y14_N24
\Mux28~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~7_combout\ = (\Mux29~14_combout\ & ((\Mux28~6_combout\ & (\ShiftRight0~52_combout\)) # (!\Mux28~6_combout\ & ((\ShiftRight1~8_combout\))))) # (!\Mux29~14_combout\ & (\Mux28~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~14_combout\,
	datab => \Mux28~6_combout\,
	datac => \ShiftRight0~52_combout\,
	datad => \ShiftRight1~8_combout\,
	combout => \Mux28~7_combout\);

-- Location: LCCOMB_X24_Y12_N22
\Mux28~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~8_combout\ = (\Mux28~5_combout\ & (((\Mux28~7_combout\)) # (!\Mux29~20_combout\))) # (!\Mux28~5_combout\ & (\Mux29~20_combout\ & (\i1_sr|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~5_combout\,
	datab => \Mux29~20_combout\,
	datac => \i1_sr|Add1~6_combout\,
	datad => \Mux28~7_combout\,
	combout => \Mux28~8_combout\);

-- Location: LCCOMB_X24_Y12_N26
\Mux28~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = (\alu_op~combout\(0) & (\b~combout\(3) & \a~combout\(3))) # (!\alu_op~combout\(0) & ((\b~combout\(3)) # (\a~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(0),
	datab => \b~combout\(3),
	datac => \a~combout\(3),
	combout => \Mux28~2_combout\);

-- Location: LCCOMB_X24_Y12_N8
\Mux28~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~9_combout\ = (\alu_op~combout\(1) & (((\Mux29~6_combout\ & \Mux28~2_combout\)))) # (!\alu_op~combout\(1) & (\Mux28~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(1),
	datab => \Mux28~8_combout\,
	datac => \Mux29~6_combout\,
	datad => \Mux28~2_combout\,
	combout => \Mux28~9_combout\);

-- Location: LCCOMB_X24_Y12_N10
\Mux27~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~13_combout\ = (!\alu_op~combout\(3) & (\alu_op~combout\(2) & (\alu_op~combout\(0) & \alu_op~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(3),
	datab => \alu_op~combout\(2),
	datac => \alu_op~combout\(0),
	datad => \alu_op~combout\(1),
	combout => \Mux27~13_combout\);

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[4]~I\ : cycloneii_io
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
	padio => ww_b(4),
	combout => \b~combout\(4));

-- Location: LCCOMB_X20_Y14_N2
\b_ext[4]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_ext[4]~28_combout\ = (\Equal0~1_combout\ & ((\b~combout\(4)))) # (!\Equal0~1_combout\ & (\a~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(4),
	datab => \Equal0~1_combout\,
	datad => \b~combout\(4),
	combout => \b_ext[4]~28_combout\);

-- Location: LCCOMB_X21_Y14_N24
\i1_sr|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add0~8_combout\ = ((\a~combout\(4) $ (\b_ext[4]~28_combout\ $ (\i1_sr|Add0~7\)))) # (GND)
-- \i1_sr|Add0~9\ = CARRY((\a~combout\(4) & ((!\i1_sr|Add0~7\) # (!\b_ext[4]~28_combout\))) # (!\a~combout\(4) & (!\b_ext[4]~28_combout\ & !\i1_sr|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(4),
	datab => \b_ext[4]~28_combout\,
	datad => VCC,
	cin => \i1_sr|Add0~7\,
	combout => \i1_sr|Add0~8_combout\,
	cout => \i1_sr|Add0~9\);

-- Location: LCCOMB_X22_Y14_N24
\i1_sr|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1~8_combout\ = ((\b_ext[4]~28_combout\ $ (\a~combout\(4) $ (!\i1_sr|Add1~7\)))) # (GND)
-- \i1_sr|Add1~9\ = CARRY((\b_ext[4]~28_combout\ & ((\a~combout\(4)) # (!\i1_sr|Add1~7\))) # (!\b_ext[4]~28_combout\ & (\a~combout\(4) & !\i1_sr|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_ext[4]~28_combout\,
	datab => \a~combout\(4),
	datad => VCC,
	cin => \i1_sr|Add1~7\,
	combout => \i1_sr|Add1~8_combout\,
	cout => \i1_sr|Add1~9\);

-- Location: LCCOMB_X20_Y14_N8
\or_out[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- or_out(4) = (\a~combout\(4)) # (\b~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(4),
	datad => \b~combout\(4),
	combout => or_out(4));

-- Location: LCCOMB_X20_Y15_N4
\Mux27~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~9_combout\ = (\alu_op~combout\(2) & (((!\alu_op~combout\(3)) # (!\alu_op~combout\(1))))) # (!\alu_op~combout\(2) & (\alu_op~combout\(0) & (!\alu_op~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(0),
	datab => \alu_op~combout\(2),
	datac => \alu_op~combout\(1),
	datad => \alu_op~combout\(3),
	combout => \Mux27~9_combout\);

-- Location: LCCOMB_X26_Y13_N2
\Mux29~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~8_combout\ = ((\shamt~combout\(4)) # (!\alu_op~combout\(0))) # (!\alu_op~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(2),
	datab => \alu_op~combout\(0),
	datac => \shamt~combout\(4),
	combout => \Mux29~8_combout\);

-- Location: LCCOMB_X25_Y14_N4
\Mux27~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~3_combout\ = (!\Mux29~8_combout\ & ((\shamt~combout\(3)) # (\shamt~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(3),
	datab => \Mux29~8_combout\,
	datad => \shamt~combout\(2),
	combout => \Mux27~3_combout\);

-- Location: LCCOMB_X26_Y13_N4
\Mux27~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~6_combout\ = ((\shamt~combout\(4)) # ((\shamt~combout\(3)) # (!\alu_op~combout\(0)))) # (!\alu_op~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(2),
	datab => \shamt~combout\(4),
	datac => \shamt~combout\(3),
	datad => \alu_op~combout\(0),
	combout => \Mux27~6_combout\);

-- Location: LCCOMB_X27_Y14_N30
\ShiftRight1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~42_combout\ = (\shamt~combout\(3) & ((\shamt~combout\(2) & (\a~combout\(31))) # (!\shamt~combout\(2) & ((\ShiftRight0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(31),
	datab => \shamt~combout\(3),
	datac => \ShiftRight0~5_combout\,
	datad => \shamt~combout\(2),
	combout => \ShiftRight1~42_combout\);

-- Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[21]~I\ : cycloneii_io
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
	padio => ww_a(21),
	combout => \a~combout\(21));

-- Location: LCCOMB_X27_Y16_N6
\ShiftRight0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~10_combout\ = (\shamt~combout\(1) & (\a~combout\(23))) # (!\shamt~combout\(1) & ((\a~combout\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(23),
	datac => \shamt~combout\(1),
	datad => \a~combout\(21),
	combout => \ShiftRight0~10_combout\);

-- Location: LCCOMB_X23_Y16_N0
\ShiftRight0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~12_combout\ = (\shamt~combout\(0) & ((\ShiftRight0~10_combout\))) # (!\shamt~combout\(0) & (\ShiftRight0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~11_combout\,
	datac => \ShiftRight0~10_combout\,
	datad => \shamt~combout\(0),
	combout => \ShiftRight0~12_combout\);

-- Location: LCCOMB_X27_Y14_N2
\ShiftRight0~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~53_combout\ = (\shamt~combout\(2) & (\ShiftRight0~8_combout\)) # (!\shamt~combout\(2) & ((\ShiftRight0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~8_combout\,
	datab => \ShiftRight0~12_combout\,
	datad => \shamt~combout\(2),
	combout => \ShiftRight0~53_combout\);

-- Location: LCCOMB_X27_Y14_N8
\ShiftRight1~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~43_combout\ = (\ShiftRight1~42_combout\) # ((!\shamt~combout\(3) & \ShiftRight0~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~42_combout\,
	datac => \shamt~combout\(3),
	datad => \ShiftRight0~53_combout\,
	combout => \ShiftRight1~43_combout\);

-- Location: LCCOMB_X24_Y15_N16
\Mux27~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~15_combout\ = (\ShiftLeft0~15_combout\ & (!\shamt~combout\(4) & !\shamt~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~15_combout\,
	datac => \shamt~combout\(4),
	datad => \shamt~combout\(3),
	combout => \Mux27~15_combout\);

-- Location: LCCOMB_X23_Y12_N28
\Mux29~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~10_combout\ = (\alu_op~combout\(3)) # ((\alu_op~combout\(0) & \alu_op~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_op~combout\(3),
	datac => \alu_op~combout\(0),
	datad => \alu_op~combout\(2),
	combout => \Mux29~10_combout\);

-- Location: LCCOMB_X24_Y14_N8
\Mux27~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~4_combout\ = (\Mux29~9_combout\ & ((\Mux29~10_combout\ & (\ShiftRight1~43_combout\)) # (!\Mux29~10_combout\ & ((\Mux27~15_combout\))))) # (!\Mux29~9_combout\ & (((!\Mux29~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~9_combout\,
	datab => \ShiftRight1~43_combout\,
	datac => \Mux27~15_combout\,
	datad => \Mux29~10_combout\,
	combout => \Mux27~4_combout\);

-- Location: LCCOMB_X27_Y14_N4
\ShiftRight0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~54_combout\ = (\shamt~combout\(3) & (\ShiftRight0~5_combout\ & ((!\shamt~combout\(2))))) # (!\shamt~combout\(3) & (((\ShiftRight0~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~5_combout\,
	datab => \ShiftRight0~53_combout\,
	datac => \shamt~combout\(3),
	datad => \shamt~combout\(2),
	combout => \ShiftRight0~54_combout\);

-- Location: LCCOMB_X20_Y14_N10
\xor_out[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- xor_out(4) = \a~combout\(4) $ (\b~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(4),
	datad => \b~combout\(4),
	combout => xor_out(4));

-- Location: LCCOMB_X24_Y14_N18
\Mux27~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~5_combout\ = (\Mux29~6_combout\ & ((\Mux27~4_combout\ & ((xor_out(4)))) # (!\Mux27~4_combout\ & (\ShiftRight0~54_combout\)))) # (!\Mux29~6_combout\ & (\Mux27~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~6_combout\,
	datab => \Mux27~4_combout\,
	datac => \ShiftRight0~54_combout\,
	datad => xor_out(4),
	combout => \Mux27~5_combout\);

-- Location: LCCOMB_X25_Y14_N30
\Mux27~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~7_combout\ = (\Mux27~3_combout\ & (((\Mux27~6_combout\)))) # (!\Mux27~3_combout\ & ((\Mux27~6_combout\ & ((\Mux27~5_combout\))) # (!\Mux27~6_combout\ & (\ShiftRight0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~28_combout\,
	datab => \Mux27~3_combout\,
	datac => \Mux27~6_combout\,
	datad => \Mux27~5_combout\,
	combout => \Mux27~7_combout\);

-- Location: LCCOMB_X26_Y14_N10
\ShiftRight0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~22_combout\ = (\shamt~combout\(1) & ((\a~combout\(10)))) # (!\shamt~combout\(1) & (\a~combout\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datab => \a~combout\(8),
	datad => \a~combout\(10),
	combout => \ShiftRight0~22_combout\);

-- Location: LCCOMB_X26_Y14_N4
\ShiftRight0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~23_combout\ = (\shamt~combout\(0) & (\ShiftRight0~21_combout\)) # (!\shamt~combout\(0) & ((\ShiftRight0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(0),
	datab => \ShiftRight0~21_combout\,
	datad => \ShiftRight0~22_combout\,
	combout => \ShiftRight0~23_combout\);

-- Location: LCCOMB_X25_Y14_N24
\Mux27~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~8_combout\ = (\Mux27~7_combout\ & ((\ShiftRight0~55_combout\) # ((!\Mux27~3_combout\)))) # (!\Mux27~7_combout\ & (((\Mux27~3_combout\ & \ShiftRight0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~55_combout\,
	datab => \Mux27~7_combout\,
	datac => \Mux27~3_combout\,
	datad => \ShiftRight0~23_combout\,
	combout => \Mux27~8_combout\);

-- Location: LCCOMB_X20_Y14_N12
\Mux27~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~11_combout\ = (\Mux27~10_combout\ & (or_out(4) & (\Mux27~9_combout\))) # (!\Mux27~10_combout\ & (((\Mux27~8_combout\) # (!\Mux27~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~10_combout\,
	datab => or_out(4),
	datac => \Mux27~9_combout\,
	datad => \Mux27~8_combout\,
	combout => \Mux27~11_combout\);

-- Location: LCCOMB_X20_Y14_N30
\Mux27~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~12_combout\ = (\Mux27~2_combout\ & (((\Mux27~11_combout\)))) # (!\Mux27~2_combout\ & ((\Mux27~11_combout\ & (\i1_sr|Add0~8_combout\)) # (!\Mux27~11_combout\ & ((\i1_sr|Add1~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~2_combout\,
	datab => \i1_sr|Add0~8_combout\,
	datac => \i1_sr|Add1~8_combout\,
	datad => \Mux27~11_combout\,
	combout => \Mux27~12_combout\);

-- Location: LCCOMB_X20_Y14_N24
\Mux27~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~14_combout\ = (\Mux27~13_combout\ & (((\a~combout\(4) & \b~combout\(4))))) # (!\Mux27~13_combout\ & (\Mux27~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~13_combout\,
	datab => \Mux27~12_combout\,
	datac => \a~combout\(4),
	datad => \b~combout\(4),
	combout => \Mux27~14_combout\);

-- Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[5]~I\ : cycloneii_io
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
	padio => ww_b(5),
	combout => \b~combout\(5));

-- Location: LCCOMB_X20_Y14_N26
\or_out[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- or_out(5) = (\b~combout\(5)) # (\a~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(5),
	datad => \a~combout\(5),
	combout => or_out(5));

-- Location: LCCOMB_X25_Y14_N26
\Mux26~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~4_combout\ = (\Mux27~6_combout\ & (((\Mux27~3_combout\)))) # (!\Mux27~6_combout\ & ((\Mux27~3_combout\ & (\ShiftRight0~34_combout\)) # (!\Mux27~3_combout\ & ((\ShiftRight0~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~6_combout\,
	datab => \ShiftRight0~34_combout\,
	datac => \Mux27~3_combout\,
	datad => \ShiftRight0~32_combout\,
	combout => \Mux26~4_combout\);

-- Location: LCCOMB_X27_Y14_N10
\ShiftRight0~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~59_combout\ = (\shamt~combout\(2) & ((\ShiftRight0~37_combout\))) # (!\shamt~combout\(2) & (\ShiftRight0~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~33_combout\,
	datac => \ShiftRight0~37_combout\,
	datad => \shamt~combout\(2),
	combout => \ShiftRight0~59_combout\);

-- Location: LCCOMB_X25_Y14_N20
\Mux26~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~5_combout\ = (\Mux26~4_combout\ & (((\ShiftRight0~59_combout\) # (!\Mux27~6_combout\)))) # (!\Mux26~4_combout\ & (\Mux26~3_combout\ & (\Mux27~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~3_combout\,
	datab => \Mux26~4_combout\,
	datac => \Mux27~6_combout\,
	datad => \ShiftRight0~59_combout\,
	combout => \Mux26~5_combout\);

-- Location: LCCOMB_X20_Y15_N30
\Mux27~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~10_combout\ = (\alu_op~combout\(1)) # ((!\alu_op~combout\(0) & (!\alu_op~combout\(2) & !\alu_op~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(0),
	datab => \alu_op~combout\(2),
	datac => \alu_op~combout\(1),
	datad => \alu_op~combout\(3),
	combout => \Mux27~10_combout\);

-- Location: LCCOMB_X20_Y14_N0
\Mux26~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~6_combout\ = (\Mux27~9_combout\ & ((\Mux27~10_combout\ & (or_out(5))) # (!\Mux27~10_combout\ & ((\Mux26~5_combout\))))) # (!\Mux27~9_combout\ & (((!\Mux27~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~9_combout\,
	datab => or_out(5),
	datac => \Mux26~5_combout\,
	datad => \Mux27~10_combout\,
	combout => \Mux26~6_combout\);

-- Location: LCCOMB_X21_Y14_N26
\i1_sr|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add0~10_combout\ = (\b_ext[5]~27_combout\ & ((\a~combout\(5) & (!\i1_sr|Add0~9\)) # (!\a~combout\(5) & ((\i1_sr|Add0~9\) # (GND))))) # (!\b_ext[5]~27_combout\ & ((\a~combout\(5) & (\i1_sr|Add0~9\ & VCC)) # (!\a~combout\(5) & (!\i1_sr|Add0~9\))))
-- \i1_sr|Add0~11\ = CARRY((\b_ext[5]~27_combout\ & ((!\i1_sr|Add0~9\) # (!\a~combout\(5)))) # (!\b_ext[5]~27_combout\ & (!\a~combout\(5) & !\i1_sr|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_ext[5]~27_combout\,
	datab => \a~combout\(5),
	datad => VCC,
	cin => \i1_sr|Add0~9\,
	combout => \i1_sr|Add0~10_combout\,
	cout => \i1_sr|Add0~11\);

-- Location: LCCOMB_X20_Y14_N16
\b_ext[5]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_ext[5]~27_combout\ = (\Equal0~1_combout\ & (\b~combout\(5))) # (!\Equal0~1_combout\ & ((\a~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~1_combout\,
	datac => \b~combout\(5),
	datad => \a~combout\(5),
	combout => \b_ext[5]~27_combout\);

-- Location: LCCOMB_X22_Y14_N26
\i1_sr|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1~10_combout\ = (\a~combout\(5) & ((\b_ext[5]~27_combout\ & (\i1_sr|Add1~9\ & VCC)) # (!\b_ext[5]~27_combout\ & (!\i1_sr|Add1~9\)))) # (!\a~combout\(5) & ((\b_ext[5]~27_combout\ & (!\i1_sr|Add1~9\)) # (!\b_ext[5]~27_combout\ & ((\i1_sr|Add1~9\) 
-- # (GND)))))
-- \i1_sr|Add1~11\ = CARRY((\a~combout\(5) & (!\b_ext[5]~27_combout\ & !\i1_sr|Add1~9\)) # (!\a~combout\(5) & ((!\i1_sr|Add1~9\) # (!\b_ext[5]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(5),
	datab => \b_ext[5]~27_combout\,
	datad => VCC,
	cin => \i1_sr|Add1~9\,
	combout => \i1_sr|Add1~10_combout\,
	cout => \i1_sr|Add1~11\);

-- Location: LCCOMB_X20_Y14_N18
\Mux26~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~7_combout\ = (\Mux27~2_combout\ & (\Mux26~6_combout\)) # (!\Mux27~2_combout\ & ((\Mux26~6_combout\ & (\i1_sr|Add0~10_combout\)) # (!\Mux26~6_combout\ & ((\i1_sr|Add1~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~2_combout\,
	datab => \Mux26~6_combout\,
	datac => \i1_sr|Add0~10_combout\,
	datad => \i1_sr|Add1~10_combout\,
	combout => \Mux26~7_combout\);

-- Location: LCCOMB_X20_Y14_N28
\Mux26~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~8_combout\ = (\Mux27~13_combout\ & (\a~combout\(5) & (\b~combout\(5)))) # (!\Mux27~13_combout\ & (((\Mux26~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~13_combout\,
	datab => \a~combout\(5),
	datac => \b~combout\(5),
	datad => \Mux26~7_combout\,
	combout => \Mux26~8_combout\);

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[6]~I\ : cycloneii_io
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
	padio => ww_b(6),
	combout => \b~combout\(6));

-- Location: LCCOMB_X21_Y14_N8
\b_ext[6]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_ext[6]~26_combout\ = (\Equal0~1_combout\ & (\b~combout\(6))) # (!\Equal0~1_combout\ & ((\a~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(6),
	datac => \a~combout\(6),
	datad => \Equal0~1_combout\,
	combout => \b_ext[6]~26_combout\);

-- Location: LCCOMB_X21_Y14_N28
\i1_sr|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add0~12_combout\ = ((\a~combout\(6) $ (\b_ext[6]~26_combout\ $ (\i1_sr|Add0~11\)))) # (GND)
-- \i1_sr|Add0~13\ = CARRY((\a~combout\(6) & ((!\i1_sr|Add0~11\) # (!\b_ext[6]~26_combout\))) # (!\a~combout\(6) & (!\b_ext[6]~26_combout\ & !\i1_sr|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(6),
	datab => \b_ext[6]~26_combout\,
	datad => VCC,
	cin => \i1_sr|Add0~11\,
	combout => \i1_sr|Add0~12_combout\,
	cout => \i1_sr|Add0~13\);

-- Location: LCCOMB_X20_Y15_N26
\Mux27~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = (\alu_op~combout\(1)) # ((\alu_op~combout\(2)) # (\alu_op~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_op~combout\(1),
	datac => \alu_op~combout\(2),
	datad => \alu_op~combout\(0),
	combout => \Mux27~2_combout\);

-- Location: LCCOMB_X21_Y14_N0
\or_out[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- or_out(6) = (\b~combout\(6)) # (\a~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(6),
	datac => \a~combout\(6),
	combout => or_out(6));

-- Location: LCCOMB_X21_Y14_N2
\Mux25~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~5_combout\ = (\Mux27~9_combout\ & ((\Mux27~10_combout\ & ((or_out(6)))) # (!\Mux27~10_combout\ & (\Mux25~4_combout\)))) # (!\Mux27~9_combout\ & (((!\Mux27~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~4_combout\,
	datab => \Mux27~9_combout\,
	datac => \Mux27~10_combout\,
	datad => or_out(6),
	combout => \Mux25~5_combout\);

-- Location: LCCOMB_X21_Y14_N12
\Mux25~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~6_combout\ = (\Mux27~2_combout\ & (((\Mux25~5_combout\)))) # (!\Mux27~2_combout\ & ((\Mux25~5_combout\ & ((\i1_sr|Add0~12_combout\))) # (!\Mux25~5_combout\ & (\i1_sr|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1_sr|Add1~12_combout\,
	datab => \i1_sr|Add0~12_combout\,
	datac => \Mux27~2_combout\,
	datad => \Mux25~5_combout\,
	combout => \Mux25~6_combout\);

-- Location: LCCOMB_X21_Y14_N6
\Mux25~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~7_combout\ = (\Mux27~13_combout\ & (((\b~combout\(6) & \a~combout\(6))))) # (!\Mux27~13_combout\ & (\Mux25~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~6_combout\,
	datab => \b~combout\(6),
	datac => \a~combout\(6),
	datad => \Mux27~13_combout\,
	combout => \Mux25~7_combout\);

-- Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[7]~I\ : cycloneii_io
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
	padio => ww_b(7),
	combout => \b~combout\(7));

-- Location: LCCOMB_X20_Y15_N0
\or_out[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- or_out(7) = (\a~combout\(7)) # (\b~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(7),
	datac => \b~combout\(7),
	combout => or_out(7));

-- Location: LCCOMB_X26_Y14_N24
\ShiftRight1~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~39_combout\ = (\shamt~combout\(0) & ((\ShiftRight0~22_combout\))) # (!\shamt~combout\(0) & (\ShiftRight1~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(0),
	datab => \ShiftRight1~27_combout\,
	datad => \ShiftRight0~22_combout\,
	combout => \ShiftRight1~39_combout\);

-- Location: LCCOMB_X25_Y14_N28
\Mux24~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = (\Mux27~6_combout\ & (((\Mux27~3_combout\)))) # (!\Mux27~6_combout\ & ((\Mux27~3_combout\ & (\ShiftRight1~41_combout\)) # (!\Mux27~3_combout\ & ((\ShiftRight1~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~6_combout\,
	datab => \ShiftRight1~41_combout\,
	datac => \Mux27~3_combout\,
	datad => \ShiftRight1~39_combout\,
	combout => \Mux24~3_combout\);

-- Location: LCCOMB_X23_Y16_N2
\ShiftRight1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~21_combout\ = (\shamt~combout\(1) & ((\a~combout\(21)))) # (!\shamt~combout\(1) & (\a~combout\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(19),
	datab => \shamt~combout\(1),
	datad => \a~combout\(21),
	combout => \ShiftRight1~21_combout\);

-- Location: LCCOMB_X23_Y16_N6
\ShiftRight1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~36_combout\ = (\shamt~combout\(0) & (\ShiftRight0~11_combout\)) # (!\shamt~combout\(0) & ((\ShiftRight1~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~11_combout\,
	datab => \ShiftRight1~21_combout\,
	datad => \shamt~combout\(0),
	combout => \ShiftRight1~36_combout\);

-- Location: LCCOMB_X29_Y13_N24
\ShiftRight0~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~65_combout\ = (\shamt~combout\(2) & ((\ShiftRight1~36_combout\))) # (!\shamt~combout\(2) & (\ShiftRight1~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~40_combout\,
	datac => \shamt~combout\(2),
	datad => \ShiftRight1~36_combout\,
	combout => \ShiftRight0~65_combout\);

-- Location: LCCOMB_X20_Y15_N18
\xor_out[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- xor_out(7) = \a~combout\(7) $ (\b~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(7),
	datac => \b~combout\(7),
	combout => xor_out(7));

-- Location: LCCOMB_X30_Y14_N16
\ShiftLeft0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~4_combout\ = (\shamt~combout\(2)) # ((\shamt~combout\(1)) # (\shamt~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(2),
	datac => \shamt~combout\(1),
	datad => \shamt~combout\(0),
	combout => \ShiftLeft0~4_combout\);

-- Location: LCCOMB_X23_Y14_N20
\ShiftRight0~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~64_combout\ = (\shamt~combout\(3) & (((\a~combout\(31) & !\ShiftLeft0~4_combout\)))) # (!\shamt~combout\(3) & (\ShiftRight0~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~63_combout\,
	datab => \shamt~combout\(3),
	datac => \a~combout\(31),
	datad => \ShiftLeft0~4_combout\,
	combout => \ShiftRight0~64_combout\);

-- Location: LCCOMB_X25_Y15_N18
\Mux17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (!\shamt~combout\(3) & !\shamt~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shamt~combout\(3),
	datac => \shamt~combout\(4),
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X29_Y15_N26
\ShiftLeft0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~10_combout\ = (!\shamt~combout\(1) & ((\shamt~combout\(0) & (\a~combout\(2))) # (!\shamt~combout\(0) & ((\a~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \shamt~combout\(1),
	datac => \a~combout\(3),
	datad => \shamt~combout\(0),
	combout => \ShiftLeft0~10_combout\);

-- Location: LCCOMB_X29_Y15_N20
\ShiftLeft0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~7_combout\ = (\shamt~combout\(0) & (\a~combout\(0))) # (!\shamt~combout\(0) & ((\a~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \a~combout\(1),
	datad => \shamt~combout\(0),
	combout => \ShiftLeft0~7_combout\);

-- Location: LCCOMB_X25_Y15_N0
\ShiftLeft0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~11_combout\ = (\ShiftLeft0~10_combout\) # ((\shamt~combout\(1) & \ShiftLeft0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datac => \ShiftLeft0~10_combout\,
	datad => \ShiftLeft0~7_combout\,
	combout => \ShiftLeft0~11_combout\);

-- Location: LCCOMB_X25_Y16_N8
\Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\Mux17~2_combout\ & ((\shamt~combout\(2) & ((\ShiftLeft0~11_combout\))) # (!\shamt~combout\(2) & (\ShiftLeft0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~23_combout\,
	datab => \Mux17~2_combout\,
	datac => \shamt~combout\(2),
	datad => \ShiftLeft0~11_combout\,
	combout => \Mux24~0_combout\);

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[25]~I\ : cycloneii_io
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
	padio => ww_a(25),
	combout => \a~combout\(25));

-- Location: LCCOMB_X27_Y16_N18
\ShiftRight1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~19_combout\ = (\shamt~combout\(1) & ((\a~combout\(25)))) # (!\shamt~combout\(1) & (\a~combout\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(23),
	datac => \shamt~combout\(1),
	datad => \a~combout\(25),
	combout => \ShiftRight1~19_combout\);

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[26]~I\ : cycloneii_io
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
	padio => ww_a(26),
	combout => \a~combout\(26));

-- Location: LCCOMB_X27_Y16_N2
\ShiftRight0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~7_combout\ = (\shamt~combout\(1) & ((\a~combout\(26)))) # (!\shamt~combout\(1) & (\a~combout\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(24),
	datac => \shamt~combout\(1),
	datad => \a~combout\(26),
	combout => \ShiftRight0~7_combout\);

-- Location: LCCOMB_X27_Y16_N22
\ShiftRight1~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~35_combout\ = (\shamt~combout\(0) & ((\ShiftRight0~7_combout\))) # (!\shamt~combout\(0) & (\ShiftRight1~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~19_combout\,
	datac => \ShiftRight0~7_combout\,
	datad => \shamt~combout\(0),
	combout => \ShiftRight1~35_combout\);

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[27]~I\ : cycloneii_io
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
	padio => ww_a(27),
	combout => \a~combout\(27));

-- Location: LCCOMB_X30_Y15_N4
\ShiftRight1~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~33_combout\ = (!\shamt~combout\(1) & ((\shamt~combout\(0) & (\a~combout\(28))) # (!\shamt~combout\(0) & ((\a~combout\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datab => \a~combout\(28),
	datac => \a~combout\(27),
	datad => \shamt~combout\(0),
	combout => \ShiftRight1~33_combout\);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[30]~I\ : cycloneii_io
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
	padio => ww_a(30),
	combout => \a~combout\(30));

-- Location: LCCOMB_X30_Y15_N28
\ShiftRight1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~14_combout\ = (\shamt~combout\(0) & (\a~combout\(30))) # (!\shamt~combout\(0) & ((\a~combout\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(30),
	datac => \a~combout\(29),
	datad => \shamt~combout\(0),
	combout => \ShiftRight1~14_combout\);

-- Location: LCCOMB_X29_Y13_N8
\ShiftRight1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~34_combout\ = (\ShiftRight1~33_combout\) # ((\shamt~combout\(1) & \ShiftRight1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shamt~combout\(1),
	datac => \ShiftRight1~33_combout\,
	datad => \ShiftRight1~14_combout\,
	combout => \ShiftRight1~34_combout\);

-- Location: LCCOMB_X29_Y13_N30
\ShiftRight0~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~63_combout\ = (\shamt~combout\(2) & ((\ShiftRight1~34_combout\))) # (!\shamt~combout\(2) & (\ShiftRight1~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(2),
	datab => \ShiftRight1~35_combout\,
	datac => \ShiftRight1~34_combout\,
	combout => \ShiftRight0~63_combout\);

-- Location: LCCOMB_X23_Y14_N30
\ShiftRight1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~48_combout\ = (\shamt~combout\(3) & (\a~combout\(31))) # (!\shamt~combout\(3) & ((\ShiftRight0~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shamt~combout\(3),
	datac => \a~combout\(31),
	datad => \ShiftRight0~63_combout\,
	combout => \ShiftRight1~48_combout\);

-- Location: LCCOMB_X23_Y12_N26
\Mux29~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~9_combout\ = (\alu_op~combout\(3) & (\alu_op~combout\(0) & \alu_op~combout\(2))) # (!\alu_op~combout\(3) & ((!\alu_op~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_op~combout\(3),
	datac => \alu_op~combout\(0),
	datad => \alu_op~combout\(2),
	combout => \Mux29~9_combout\);

-- Location: LCCOMB_X24_Y14_N2
\Mux24~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (\Mux29~10_combout\ & (((\ShiftRight1~48_combout\ & \Mux29~9_combout\)))) # (!\Mux29~10_combout\ & ((\Mux24~0_combout\) # ((!\Mux29~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~10_combout\,
	datab => \Mux24~0_combout\,
	datac => \ShiftRight1~48_combout\,
	datad => \Mux29~9_combout\,
	combout => \Mux24~1_combout\);

-- Location: LCCOMB_X24_Y14_N12
\Mux24~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (\Mux29~6_combout\ & ((\Mux24~1_combout\ & (xor_out(7))) # (!\Mux24~1_combout\ & ((\ShiftRight0~64_combout\))))) # (!\Mux29~6_combout\ & (((\Mux24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~6_combout\,
	datab => xor_out(7),
	datac => \ShiftRight0~64_combout\,
	datad => \Mux24~1_combout\,
	combout => \Mux24~2_combout\);

-- Location: LCCOMB_X25_Y14_N22
\Mux24~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~4_combout\ = (\Mux27~6_combout\ & ((\Mux24~3_combout\ & (\ShiftRight0~65_combout\)) # (!\Mux24~3_combout\ & ((\Mux24~2_combout\))))) # (!\Mux27~6_combout\ & (\Mux24~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~6_combout\,
	datab => \Mux24~3_combout\,
	datac => \ShiftRight0~65_combout\,
	datad => \Mux24~2_combout\,
	combout => \Mux24~4_combout\);

-- Location: LCCOMB_X20_Y15_N28
\Mux24~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~5_combout\ = (\Mux27~10_combout\ & (or_out(7) & (\Mux27~9_combout\))) # (!\Mux27~10_combout\ & (((\Mux24~4_combout\) # (!\Mux27~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~10_combout\,
	datab => or_out(7),
	datac => \Mux27~9_combout\,
	datad => \Mux24~4_combout\,
	combout => \Mux24~5_combout\);

-- Location: LCCOMB_X21_Y14_N30
\i1_sr|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add0~14_combout\ = (\b_ext[7]~25_combout\ & ((\a~combout\(7) & (!\i1_sr|Add0~13\)) # (!\a~combout\(7) & ((\i1_sr|Add0~13\) # (GND))))) # (!\b_ext[7]~25_combout\ & ((\a~combout\(7) & (\i1_sr|Add0~13\ & VCC)) # (!\a~combout\(7) & 
-- (!\i1_sr|Add0~13\))))
-- \i1_sr|Add0~15\ = CARRY((\b_ext[7]~25_combout\ & ((!\i1_sr|Add0~13\) # (!\a~combout\(7)))) # (!\b_ext[7]~25_combout\ & (!\a~combout\(7) & !\i1_sr|Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_ext[7]~25_combout\,
	datab => \a~combout\(7),
	datad => VCC,
	cin => \i1_sr|Add0~13\,
	combout => \i1_sr|Add0~14_combout\,
	cout => \i1_sr|Add0~15\);

-- Location: LCCOMB_X22_Y14_N2
\b_ext[7]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_ext[7]~25_combout\ = (\Equal0~1_combout\ & ((\b~combout\(7)))) # (!\Equal0~1_combout\ & (\a~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(7),
	datac => \Equal0~1_combout\,
	datad => \b~combout\(7),
	combout => \b_ext[7]~25_combout\);

-- Location: LCCOMB_X22_Y14_N30
\i1_sr|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1~14_combout\ = (\a~combout\(7) & ((\b_ext[7]~25_combout\ & (\i1_sr|Add1~13\ & VCC)) # (!\b_ext[7]~25_combout\ & (!\i1_sr|Add1~13\)))) # (!\a~combout\(7) & ((\b_ext[7]~25_combout\ & (!\i1_sr|Add1~13\)) # (!\b_ext[7]~25_combout\ & 
-- ((\i1_sr|Add1~13\) # (GND)))))
-- \i1_sr|Add1~15\ = CARRY((\a~combout\(7) & (!\b_ext[7]~25_combout\ & !\i1_sr|Add1~13\)) # (!\a~combout\(7) & ((!\i1_sr|Add1~13\) # (!\b_ext[7]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(7),
	datab => \b_ext[7]~25_combout\,
	datad => VCC,
	cin => \i1_sr|Add1~13\,
	combout => \i1_sr|Add1~14_combout\,
	cout => \i1_sr|Add1~15\);

-- Location: LCCOMB_X20_Y15_N22
\Mux24~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~6_combout\ = (\Mux27~2_combout\ & (\Mux24~5_combout\)) # (!\Mux27~2_combout\ & ((\Mux24~5_combout\ & (\i1_sr|Add0~14_combout\)) # (!\Mux24~5_combout\ & ((\i1_sr|Add1~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~2_combout\,
	datab => \Mux24~5_combout\,
	datac => \i1_sr|Add0~14_combout\,
	datad => \i1_sr|Add1~14_combout\,
	combout => \Mux24~6_combout\);

-- Location: LCCOMB_X20_Y15_N8
\Mux24~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~7_combout\ = (\Mux27~13_combout\ & (\b~combout\(7) & ((\a~combout\(7))))) # (!\Mux27~13_combout\ & (((\Mux24~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(7),
	datab => \Mux24~6_combout\,
	datac => \a~combout\(7),
	datad => \Mux27~13_combout\,
	combout => \Mux24~7_combout\);

-- Location: LCCOMB_X22_Y13_N0
\i1_sr|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1~16_combout\ = ((\b_ext[8]~24_combout\ $ (\a~combout\(8) $ (!\i1_sr|Add1~15\)))) # (GND)
-- \i1_sr|Add1~17\ = CARRY((\b_ext[8]~24_combout\ & ((\a~combout\(8)) # (!\i1_sr|Add1~15\))) # (!\b_ext[8]~24_combout\ & (\a~combout\(8) & !\i1_sr|Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_ext[8]~24_combout\,
	datab => \a~combout\(8),
	datad => VCC,
	cin => \i1_sr|Add1~15\,
	combout => \i1_sr|Add1~16_combout\,
	cout => \i1_sr|Add1~17\);

-- Location: LCCOMB_X26_Y13_N8
\Mux22~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (\alu_op~combout\(2) & (!\shamt~combout\(4) & (\shamt~combout\(3) & \alu_op~combout\(0)))) # (!\alu_op~combout\(2) & (((!\alu_op~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(2),
	datab => \shamt~combout\(4),
	datac => \shamt~combout\(3),
	datad => \alu_op~combout\(0),
	combout => \Mux22~2_combout\);

-- Location: LCCOMB_X26_Y13_N30
\ShiftRight0~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~67_combout\ = (\shamt~combout\(2) & (\ShiftRight0~20_combout\)) # (!\shamt~combout\(2) & ((\ShiftRight0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~20_combout\,
	datac => \ShiftRight0~23_combout\,
	datad => \shamt~combout\(2),
	combout => \ShiftRight0~67_combout\);

-- Location: LCCOMB_X26_Y13_N24
\Mux23~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~5_combout\ = (\Mux22~2_combout\ & (((\Mux29~8_combout\)))) # (!\Mux22~2_combout\ & ((\Mux29~8_combout\ & (\Mux23~4_combout\)) # (!\Mux29~8_combout\ & ((\ShiftRight0~67_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~4_combout\,
	datab => \ShiftRight0~67_combout\,
	datac => \Mux22~2_combout\,
	datad => \Mux29~8_combout\,
	combout => \Mux23~5_combout\);

-- Location: LCCOMB_X23_Y16_N22
\ShiftRight0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~16_combout\ = (\shamt~combout\(2) & ((\ShiftRight0~12_combout\))) # (!\shamt~combout\(2) & (\ShiftRight0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~15_combout\,
	datab => \ShiftRight0~12_combout\,
	datac => \shamt~combout\(2),
	combout => \ShiftRight0~16_combout\);

-- Location: LCCOMB_X26_Y13_N18
\Mux23~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~6_combout\ = (\Mux22~2_combout\ & ((\Mux23~5_combout\ & (\i1_sr|Add0~16_combout\)) # (!\Mux23~5_combout\ & ((\ShiftRight0~16_combout\))))) # (!\Mux22~2_combout\ & (((\Mux23~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1_sr|Add0~16_combout\,
	datab => \Mux22~2_combout\,
	datac => \Mux23~5_combout\,
	datad => \ShiftRight0~16_combout\,
	combout => \Mux23~6_combout\);

-- Location: LCCOMB_X23_Y13_N2
\Mux23~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~8_combout\ = (\Mux23~7_combout\ & ((\alu_op~combout\(1)) # ((\i1_sr|Add1~16_combout\)))) # (!\Mux23~7_combout\ & (!\alu_op~combout\(1) & ((\Mux23~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~7_combout\,
	datab => \alu_op~combout\(1),
	datac => \i1_sr|Add1~16_combout\,
	datad => \Mux23~6_combout\,
	combout => \Mux23~8_combout\);

-- Location: LCCOMB_X23_Y13_N26
\Mux23~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~9_combout\ = (\Mux23~8_combout\ & (((\alu_op~combout\(2) & !\alu_op~combout\(3))) # (!\alu_op~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(2),
	datab => \alu_op~combout\(3),
	datac => \alu_op~combout\(1),
	datad => \Mux23~8_combout\,
	combout => \Mux23~9_combout\);

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[9]~I\ : cycloneii_io
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
	padio => ww_b(9),
	combout => \b~combout\(9));

-- Location: LCCOMB_X23_Y13_N22
\Mux22~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (\alu_op~combout\(0) & (\alu_op~combout\(1))) # (!\alu_op~combout\(0) & (!\alu_op~combout\(1) & (!\alu_op~combout\(3) & !\alu_op~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(0),
	datab => \alu_op~combout\(1),
	datac => \alu_op~combout\(3),
	datad => \alu_op~combout\(2),
	combout => \Mux22~3_combout\);

-- Location: LCCOMB_X27_Y13_N0
\Mux22~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~8_combout\ = (\Mux29~8_combout\ & (((\Mux22~2_combout\)))) # (!\Mux29~8_combout\ & ((\Mux22~2_combout\ & ((\ShiftRight0~38_combout\))) # (!\Mux22~2_combout\ & (\ShiftRight0~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~35_combout\,
	datab => \Mux29~8_combout\,
	datac => \Mux22~2_combout\,
	datad => \ShiftRight0~38_combout\,
	combout => \Mux22~8_combout\);

-- Location: LCCOMB_X30_Y13_N16
\ShiftRight1~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~51_combout\ = (\shamt~combout\(3) & (((\a~combout\(31))))) # (!\shamt~combout\(3) & ((\ShiftRight0~39_combout\) # ((\ShiftRight1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~39_combout\,
	datab => \ShiftRight1~15_combout\,
	datac => \shamt~combout\(3),
	datad => \a~combout\(31),
	combout => \ShiftRight1~51_combout\);

-- Location: LCCOMB_X27_Y12_N10
\Mux22~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~6_combout\ = (\Mux29~10_combout\ & (((\Mux29~9_combout\ & \ShiftRight1~51_combout\)))) # (!\Mux29~10_combout\ & ((\Mux22~5_combout\) # ((!\Mux29~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~5_combout\,
	datab => \Mux29~10_combout\,
	datac => \Mux29~9_combout\,
	datad => \ShiftRight1~51_combout\,
	combout => \Mux22~6_combout\);

-- Location: LCCOMB_X27_Y13_N4
\xor_out[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- xor_out(9) = \a~combout\(9) $ (\b~combout\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(9),
	datac => \b~combout\(9),
	combout => xor_out(9));

-- Location: LCCOMB_X27_Y13_N22
\Mux22~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~7_combout\ = (\Mux22~6_combout\ & (((xor_out(9)) # (!\Mux29~6_combout\)))) # (!\Mux22~6_combout\ & (\ShiftRight0~68_combout\ & ((\Mux29~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~68_combout\,
	datab => \Mux22~6_combout\,
	datac => xor_out(9),
	datad => \Mux29~6_combout\,
	combout => \Mux22~7_combout\);

-- Location: LCCOMB_X27_Y13_N2
\Mux22~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~9_combout\ = (\Mux22~8_combout\ & ((\i1_sr|Add0~18_combout\) # ((!\Mux29~8_combout\)))) # (!\Mux22~8_combout\ & (((\Mux29~8_combout\ & \Mux22~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1_sr|Add0~18_combout\,
	datab => \Mux22~8_combout\,
	datac => \Mux29~8_combout\,
	datad => \Mux22~7_combout\,
	combout => \Mux22~9_combout\);

-- Location: LCCOMB_X27_Y13_N12
\Mux22~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~11_combout\ = (\Mux22~3_combout\ & (\i1_sr|Add1~18_combout\ & (!\alu_op~combout\(1)))) # (!\Mux22~3_combout\ & (((\alu_op~combout\(1)) # (\Mux22~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1_sr|Add1~18_combout\,
	datab => \Mux22~3_combout\,
	datac => \alu_op~combout\(1),
	datad => \Mux22~9_combout\,
	combout => \Mux22~11_combout\);

-- Location: LCCOMB_X27_Y13_N6
\Mux22~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~12_combout\ = (\a~combout\(9) & ((\Mux22~11_combout\) # ((\alu_op~combout\(1) & \b~combout\(9))))) # (!\a~combout\(9) & (\Mux22~11_combout\ & ((\b~combout\(9)) # (!\alu_op~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(9),
	datab => \alu_op~combout\(1),
	datac => \b~combout\(9),
	datad => \Mux22~11_combout\,
	combout => \Mux22~12_combout\);

-- Location: LCCOMB_X25_Y13_N20
\Mux22~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~10_combout\ = (\Mux22~12_combout\ & (((!\alu_op~combout\(3) & \alu_op~combout\(2))) # (!\alu_op~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(1),
	datab => \alu_op~combout\(3),
	datac => \Mux22~12_combout\,
	datad => \alu_op~combout\(2),
	combout => \Mux22~10_combout\);

-- Location: LCCOMB_X27_Y13_N24
\Mux21~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~5_combout\ = (\b~combout\(10) & ((\a~combout\(10)) # (!\Mux22~3_combout\))) # (!\b~combout\(10) & (!\Mux22~3_combout\ & \a~combout\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(10),
	datab => \Mux22~3_combout\,
	datac => \a~combout\(10),
	combout => \Mux21~5_combout\);

-- Location: LCCOMB_X27_Y13_N10
\b_ext[9]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_ext[9]~23_combout\ = (\Equal0~1_combout\ & ((\b~combout\(9)))) # (!\Equal0~1_combout\ & (\a~combout\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(9),
	datac => \b~combout\(9),
	datad => \Equal0~1_combout\,
	combout => \b_ext[9]~23_combout\);

-- Location: LCCOMB_X22_Y13_N4
\i1_sr|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1~20_combout\ = ((\b_ext[10]~22_combout\ $ (\a~combout\(10) $ (!\i1_sr|Add1~19\)))) # (GND)
-- \i1_sr|Add1~21\ = CARRY((\b_ext[10]~22_combout\ & ((\a~combout\(10)) # (!\i1_sr|Add1~19\))) # (!\b_ext[10]~22_combout\ & (\a~combout\(10) & !\i1_sr|Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_ext[10]~22_combout\,
	datab => \a~combout\(10),
	datad => VCC,
	cin => \i1_sr|Add1~19\,
	combout => \i1_sr|Add1~20_combout\,
	cout => \i1_sr|Add1~21\);

-- Location: LCCOMB_X27_Y13_N14
\Mux21~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~8_combout\ = (\Mux22~3_combout\ & ((\i1_sr|Add1~20_combout\))) # (!\Mux22~3_combout\ & (\Mux21~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~7_combout\,
	datab => \Mux22~3_combout\,
	datac => \i1_sr|Add1~20_combout\,
	combout => \Mux21~8_combout\);

-- Location: LCCOMB_X30_Y15_N10
\ShiftRight1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~18_combout\ = (!\shamt~combout\(0) & ((\shamt~combout\(1) & ((\a~combout\(28)))) # (!\shamt~combout\(1) & (\a~combout\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datab => \a~combout\(26),
	datac => \a~combout\(28),
	datad => \shamt~combout\(0),
	combout => \ShiftRight1~18_combout\);

-- Location: LCCOMB_X30_Y15_N16
\ShiftRight1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~17_combout\ = (\shamt~combout\(0) & ((\shamt~combout\(1) & ((\a~combout\(29)))) # (!\shamt~combout\(1) & (\a~combout\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datab => \a~combout\(27),
	datac => \a~combout\(29),
	datad => \shamt~combout\(0),
	combout => \ShiftRight1~17_combout\);

-- Location: LCCOMB_X30_Y14_N30
\ShiftRight0~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~43_combout\ = (!\shamt~combout\(2) & ((\ShiftRight1~18_combout\) # (\ShiftRight1~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~18_combout\,
	datac => \ShiftRight1~17_combout\,
	datad => \shamt~combout\(2),
	combout => \ShiftRight0~43_combout\);

-- Location: LCCOMB_X30_Y14_N26
\ShiftRight1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~52_combout\ = (\shamt~combout\(3) & (((\a~combout\(31))))) # (!\shamt~combout\(3) & ((\ShiftRight1~24_combout\) # ((\ShiftRight0~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~24_combout\,
	datab => \ShiftRight0~43_combout\,
	datac => \a~combout\(31),
	datad => \shamt~combout\(3),
	combout => \ShiftRight1~52_combout\);

-- Location: LCCOMB_X20_Y14_N6
\ShiftLeft0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~20_combout\ = (\shamt~combout\(1) & (\a~combout\(4))) # (!\shamt~combout\(1) & ((\a~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(4),
	datab => \a~combout\(6),
	datac => \shamt~combout\(1),
	combout => \ShiftLeft0~20_combout\);

-- Location: LCCOMB_X29_Y14_N2
\ShiftLeft0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~21_combout\ = (\shamt~combout\(0) & (\ShiftLeft0~17_combout\)) # (!\shamt~combout\(0) & ((\ShiftLeft0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~17_combout\,
	datab => \ShiftLeft0~20_combout\,
	datad => \shamt~combout\(0),
	combout => \ShiftLeft0~21_combout\);

-- Location: LCCOMB_X23_Y15_N2
\ShiftLeft0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~35_combout\ = (\shamt~combout\(2) & ((\ShiftLeft0~21_combout\))) # (!\shamt~combout\(2) & (\ShiftLeft0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~34_combout\,
	datab => \ShiftLeft0~21_combout\,
	datac => \shamt~combout\(2),
	combout => \ShiftLeft0~35_combout\);

-- Location: LCCOMB_X29_Y15_N2
\ShiftLeft0~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~31_combout\ = (\shamt~combout\(0) & (!\shamt~combout\(1) & \a~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(0),
	datab => \shamt~combout\(1),
	datad => \a~combout\(1),
	combout => \ShiftLeft0~31_combout\);

-- Location: LCCOMB_X29_Y15_N28
\ShiftLeft0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~32_combout\ = (!\shamt~combout\(2) & (\shamt~combout\(3) & ((\ShiftLeft0~8_combout\) # (\ShiftLeft0~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~8_combout\,
	datab => \shamt~combout\(2),
	datac => \shamt~combout\(3),
	datad => \ShiftLeft0~31_combout\,
	combout => \ShiftLeft0~32_combout\);

-- Location: LCCOMB_X23_Y15_N12
\Mux21~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (!\shamt~combout\(4) & ((\ShiftLeft0~32_combout\) # ((\ShiftLeft0~35_combout\ & !\shamt~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(4),
	datab => \ShiftLeft0~35_combout\,
	datac => \shamt~combout\(3),
	datad => \ShiftLeft0~32_combout\,
	combout => \Mux21~2_combout\);

-- Location: LCCOMB_X24_Y13_N6
\Mux21~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = (\Mux29~9_combout\ & ((\Mux29~10_combout\ & (\ShiftRight1~52_combout\)) # (!\Mux29~10_combout\ & ((\Mux21~2_combout\))))) # (!\Mux29~9_combout\ & (!\Mux29~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~9_combout\,
	datab => \Mux29~10_combout\,
	datac => \ShiftRight1~52_combout\,
	datad => \Mux21~2_combout\,
	combout => \Mux21~3_combout\);

-- Location: LCCOMB_X27_Y13_N28
\xor_out[10]\ : cycloneii_lcell_comb
-- Equation(s):
-- xor_out(10) = \b~combout\(10) $ (\a~combout\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(10),
	datac => \a~combout\(10),
	combout => xor_out(10));

-- Location: LCCOMB_X27_Y13_N30
\Mux21~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = (\Mux29~6_combout\ & (((\alu_op~combout\(1)) # (xor_out(10))) # (!\Mux21~3_combout\))) # (!\Mux29~6_combout\ & (\Mux21~3_combout\ & (!\alu_op~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~6_combout\,
	datab => \Mux21~3_combout\,
	datac => \alu_op~combout\(1),
	datad => xor_out(10),
	combout => \Mux21~4_combout\);

-- Location: LCCOMB_X27_Y13_N16
\Mux21~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~9_combout\ = (\alu_op~combout\(1) & (\Mux21~5_combout\ & ((\Mux21~4_combout\)))) # (!\alu_op~combout\(1) & (((\Mux21~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~5_combout\,
	datab => \Mux21~8_combout\,
	datac => \alu_op~combout\(1),
	datad => \Mux21~4_combout\,
	combout => \Mux21~9_combout\);

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[11]~I\ : cycloneii_io
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
	padio => ww_b(11),
	combout => \b~combout\(11));

-- Location: LCCOMB_X25_Y13_N2
\Mux20~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~7_combout\ = (\Mux22~3_combout\ & (((\b~combout\(11) & \a~combout\(11))) # (!\alu_op~combout\(1)))) # (!\Mux22~3_combout\ & (\alu_op~combout\(1) & ((\b~combout\(11)) # (\a~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~3_combout\,
	datab => \b~combout\(11),
	datac => \a~combout\(11),
	datad => \alu_op~combout\(1),
	combout => \Mux20~7_combout\);

-- Location: LCCOMB_X25_Y13_N18
\b_ext[11]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_ext[11]~21_combout\ = (\Equal0~1_combout\ & ((\b~combout\(11)))) # (!\Equal0~1_combout\ & (\a~combout\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datac => \a~combout\(11),
	datad => \b~combout\(11),
	combout => \b_ext[11]~21_combout\);

-- Location: LCCOMB_X22_Y13_N6
\i1_sr|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1~22_combout\ = (\a~combout\(11) & ((\b_ext[11]~21_combout\ & (\i1_sr|Add1~21\ & VCC)) # (!\b_ext[11]~21_combout\ & (!\i1_sr|Add1~21\)))) # (!\a~combout\(11) & ((\b_ext[11]~21_combout\ & (!\i1_sr|Add1~21\)) # (!\b_ext[11]~21_combout\ & 
-- ((\i1_sr|Add1~21\) # (GND)))))
-- \i1_sr|Add1~23\ = CARRY((\a~combout\(11) & (!\b_ext[11]~21_combout\ & !\i1_sr|Add1~21\)) # (!\a~combout\(11) & ((!\i1_sr|Add1~21\) # (!\b_ext[11]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(11),
	datab => \b_ext[11]~21_combout\,
	datad => VCC,
	cin => \i1_sr|Add1~21\,
	combout => \i1_sr|Add1~22_combout\,
	cout => \i1_sr|Add1~23\);

-- Location: LCCOMB_X29_Y13_N28
\ShiftRight0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~50_combout\ = (\shamt~combout\(2) & (\ShiftRight1~35_combout\)) # (!\shamt~combout\(2) & ((\ShiftRight1~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~35_combout\,
	datac => \shamt~combout\(2),
	datad => \ShiftRight1~36_combout\,
	combout => \ShiftRight0~50_combout\);

-- Location: LCCOMB_X29_Y13_N14
\Mux20~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~5_combout\ = (\Mux22~2_combout\ & ((\ShiftRight0~50_combout\) # ((\Mux29~8_combout\)))) # (!\Mux22~2_combout\ & (((!\Mux29~8_combout\ & \ShiftRight0~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~2_combout\,
	datab => \ShiftRight0~50_combout\,
	datac => \Mux29~8_combout\,
	datad => \ShiftRight0~52_combout\,
	combout => \Mux20~5_combout\);

-- Location: LCCOMB_X25_Y13_N28
\xor_out[11]\ : cycloneii_lcell_comb
-- Equation(s):
-- xor_out(11) = \a~combout\(11) $ (\b~combout\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(11),
	datad => \b~combout\(11),
	combout => xor_out(11));

-- Location: LCCOMB_X29_Y13_N2
\ShiftRight0~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~49_combout\ = (\shamt~combout\(2) & (\ShiftRight0~40_combout\ & ((!\shamt~combout\(1))))) # (!\shamt~combout\(2) & (((\ShiftRight1~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~40_combout\,
	datab => \ShiftRight1~34_combout\,
	datac => \shamt~combout\(2),
	datad => \shamt~combout\(1),
	combout => \ShiftRight0~49_combout\);

-- Location: LCCOMB_X29_Y13_N20
\ShiftRight0~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~70_combout\ = (\ShiftRight0~49_combout\ & !\shamt~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~49_combout\,
	datac => \shamt~combout\(3),
	combout => \ShiftRight0~70_combout\);

-- Location: LCCOMB_X25_Y13_N30
\Mux20~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~4_combout\ = (\Mux20~3_combout\ & (((xor_out(11))) # (!\Mux29~6_combout\))) # (!\Mux20~3_combout\ & (\Mux29~6_combout\ & ((\ShiftRight0~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~3_combout\,
	datab => \Mux29~6_combout\,
	datac => xor_out(11),
	datad => \ShiftRight0~70_combout\,
	combout => \Mux20~4_combout\);

-- Location: LCCOMB_X25_Y13_N0
\Mux20~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~6_combout\ = (\Mux20~5_combout\ & ((\i1_sr|Add0~22_combout\) # ((!\Mux29~8_combout\)))) # (!\Mux20~5_combout\ & (((\Mux29~8_combout\ & \Mux20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1_sr|Add0~22_combout\,
	datab => \Mux20~5_combout\,
	datac => \Mux29~8_combout\,
	datad => \Mux20~4_combout\,
	combout => \Mux20~6_combout\);

-- Location: LCCOMB_X25_Y13_N4
\Mux20~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~8_combout\ = (\alu_op~combout\(1) & (\Mux20~7_combout\)) # (!\alu_op~combout\(1) & ((\Mux20~7_combout\ & (\i1_sr|Add1~22_combout\)) # (!\Mux20~7_combout\ & ((\Mux20~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(1),
	datab => \Mux20~7_combout\,
	datac => \i1_sr|Add1~22_combout\,
	datad => \Mux20~6_combout\,
	combout => \Mux20~8_combout\);

-- Location: LCCOMB_X25_Y13_N14
\Mux20~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~9_combout\ = (\Mux20~8_combout\ & (((!\alu_op~combout\(3) & \alu_op~combout\(2))) # (!\alu_op~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(1),
	datab => \alu_op~combout\(3),
	datac => \Mux20~8_combout\,
	datad => \alu_op~combout\(2),
	combout => \Mux20~9_combout\);

-- Location: LCCOMB_X23_Y13_N14
\Mux19~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~8_combout\ = (\Mux22~3_combout\ & (((\b~combout\(12) & \a~combout\(12))) # (!\alu_op~combout\(1)))) # (!\Mux22~3_combout\ & (\alu_op~combout\(1) & ((\b~combout\(12)) # (\a~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(12),
	datab => \Mux22~3_combout\,
	datac => \alu_op~combout\(1),
	datad => \a~combout\(12),
	combout => \Mux19~8_combout\);

-- Location: LCCOMB_X26_Y15_N12
\ShiftRight0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~20_combout\ = (\shamt~combout\(0) & (\ShiftRight0~18_combout\)) # (!\shamt~combout\(0) & ((\ShiftRight0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~18_combout\,
	datab => \ShiftRight0~19_combout\,
	datac => \shamt~combout\(0),
	combout => \ShiftRight0~20_combout\);

-- Location: LCCOMB_X23_Y16_N24
\ShiftRight0~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~55_combout\ = (\shamt~combout\(2) & (\ShiftRight0~15_combout\)) # (!\shamt~combout\(2) & ((\ShiftRight0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~15_combout\,
	datab => \ShiftRight0~20_combout\,
	datac => \shamt~combout\(2),
	combout => \ShiftRight0~55_combout\);

-- Location: LCCOMB_X27_Y14_N28
\ShiftRight1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~56_combout\ = (\shamt~combout\(3) & (\a~combout\(31))) # (!\shamt~combout\(3) & ((\shamt~combout\(2) & (\a~combout\(31))) # (!\shamt~combout\(2) & ((\ShiftRight0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(31),
	datab => \shamt~combout\(3),
	datac => \ShiftRight0~5_combout\,
	datad => \shamt~combout\(2),
	combout => \ShiftRight1~56_combout\);

-- Location: LCCOMB_X26_Y12_N26
\Mux19~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = (\Mux19~2_combout\ & ((!\ShiftRight1~56_combout\) # (!\Mux29~10_combout\))) # (!\Mux19~2_combout\ & (\Mux29~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~2_combout\,
	datac => \Mux29~10_combout\,
	datad => \ShiftRight1~56_combout\,
	combout => \Mux19~3_combout\);

-- Location: LCCOMB_X27_Y14_N16
\ShiftRight0~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~71_combout\ = (\ShiftRight0~47_combout\ & ((\ShiftRight0~4_combout\) # ((\ShiftRight1~4_combout\ & \shamt~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~4_combout\,
	datab => \ShiftRight0~47_combout\,
	datac => \shamt~combout\(1),
	datad => \ShiftRight0~4_combout\,
	combout => \ShiftRight0~71_combout\);

-- Location: LCCOMB_X26_Y12_N20
\Mux19~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~4_combout\ = (\Mux19~3_combout\ & (((!\Mux29~6_combout\) # (!\ShiftRight0~71_combout\)))) # (!\Mux19~3_combout\ & (!xor_out(12) & ((\Mux29~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => xor_out(12),
	datab => \Mux19~3_combout\,
	datac => \ShiftRight0~71_combout\,
	datad => \Mux29~6_combout\,
	combout => \Mux19~4_combout\);

-- Location: LCCOMB_X26_Y13_N28
\Mux19~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~5_combout\ = (\Mux29~8_combout\ & ((!\Mux19~4_combout\))) # (!\Mux29~8_combout\ & (\ShiftRight0~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~55_combout\,
	datac => \Mux19~4_combout\,
	datad => \Mux29~8_combout\,
	combout => \Mux19~5_combout\);

-- Location: LCCOMB_X21_Y13_N8
\i1_sr|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add0~24_combout\ = ((\b_ext[12]~20_combout\ $ (\a~combout\(12) $ (\i1_sr|Add0~23\)))) # (GND)
-- \i1_sr|Add0~25\ = CARRY((\b_ext[12]~20_combout\ & (\a~combout\(12) & !\i1_sr|Add0~23\)) # (!\b_ext[12]~20_combout\ & ((\a~combout\(12)) # (!\i1_sr|Add0~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_ext[12]~20_combout\,
	datab => \a~combout\(12),
	datad => VCC,
	cin => \i1_sr|Add0~23\,
	combout => \i1_sr|Add0~24_combout\,
	cout => \i1_sr|Add0~25\);

-- Location: LCCOMB_X27_Y14_N18
\Mux19~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~6_combout\ = (\Mux29~8_combout\ & (\i1_sr|Add0~24_combout\)) # (!\Mux29~8_combout\ & ((\ShiftRight0~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1_sr|Add0~24_combout\,
	datac => \Mux29~8_combout\,
	datad => \ShiftRight0~53_combout\,
	combout => \Mux19~6_combout\);

-- Location: LCCOMB_X26_Y13_N22
\Mux19~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~7_combout\ = (\Mux22~2_combout\ & ((\Mux19~6_combout\))) # (!\Mux22~2_combout\ & (\Mux19~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux19~5_combout\,
	datac => \Mux22~2_combout\,
	datad => \Mux19~6_combout\,
	combout => \Mux19~7_combout\);

-- Location: LCCOMB_X23_Y13_N16
\Mux19~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~9_combout\ = (\alu_op~combout\(1) & (((\Mux19~8_combout\)))) # (!\alu_op~combout\(1) & ((\Mux19~8_combout\ & (\i1_sr|Add1~24_combout\)) # (!\Mux19~8_combout\ & ((\Mux19~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1_sr|Add1~24_combout\,
	datab => \alu_op~combout\(1),
	datac => \Mux19~8_combout\,
	datad => \Mux19~7_combout\,
	combout => \Mux19~9_combout\);

-- Location: LCCOMB_X23_Y13_N28
\Mux19~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~10_combout\ = (\Mux19~9_combout\ & (((!\alu_op~combout\(3) & \alu_op~combout\(2))) # (!\alu_op~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~9_combout\,
	datab => \alu_op~combout\(1),
	datac => \alu_op~combout\(3),
	datad => \alu_op~combout\(2),
	combout => \Mux19~10_combout\);

-- Location: LCCOMB_X26_Y15_N14
\ShiftLeft0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~41_combout\ = (\shamt~combout\(1) & ((\a~combout\(10)))) # (!\shamt~combout\(1) & (\a~combout\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datac => \a~combout\(12),
	datad => \a~combout\(10),
	combout => \ShiftLeft0~41_combout\);

-- Location: LCCOMB_X26_Y15_N0
\ShiftLeft0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~44_combout\ = (\shamt~combout\(1) & (\a~combout\(11))) # (!\shamt~combout\(1) & ((\a~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datac => \a~combout\(11),
	datad => \a~combout\(13),
	combout => \ShiftLeft0~44_combout\);

-- Location: LCCOMB_X26_Y15_N2
\ShiftLeft0~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~45_combout\ = (\shamt~combout\(0) & (\ShiftLeft0~41_combout\)) # (!\shamt~combout\(0) & ((\ShiftLeft0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~41_combout\,
	datac => \shamt~combout\(0),
	datad => \ShiftLeft0~44_combout\,
	combout => \ShiftLeft0~45_combout\);

-- Location: LCCOMB_X29_Y14_N16
\ShiftLeft0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~26_combout\ = (\shamt~combout\(1) & ((\a~combout\(6)))) # (!\shamt~combout\(1) & (\a~combout\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datab => \a~combout\(8),
	datad => \a~combout\(6),
	combout => \ShiftLeft0~26_combout\);

-- Location: LCCOMB_X26_Y14_N6
\ShiftLeft0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~29_combout\ = (\shamt~combout\(0) & ((\ShiftLeft0~26_combout\))) # (!\shamt~combout\(0) & (\ShiftLeft0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~28_combout\,
	datab => \ShiftLeft0~26_combout\,
	datad => \shamt~combout\(0),
	combout => \ShiftLeft0~29_combout\);

-- Location: LCCOMB_X24_Y15_N2
\ShiftLeft0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~46_combout\ = (\shamt~combout\(2) & ((\ShiftLeft0~29_combout\))) # (!\shamt~combout\(2) & (\ShiftLeft0~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~45_combout\,
	datac => \ShiftLeft0~29_combout\,
	datad => \shamt~combout\(2),
	combout => \ShiftLeft0~46_combout\);

-- Location: LCCOMB_X24_Y15_N20
\Mux18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (!\shamt~combout\(4) & ((\shamt~combout\(3) & (\ShiftLeft0~19_combout\)) # (!\shamt~combout\(3) & ((\ShiftLeft0~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~19_combout\,
	datab => \ShiftLeft0~46_combout\,
	datac => \shamt~combout\(4),
	datad => \shamt~combout\(3),
	combout => \Mux18~2_combout\);

-- Location: LCCOMB_X30_Y13_N20
\ShiftRight1~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~53_combout\ = (\ShiftLeft0~6_combout\ & ((\shamt~combout\(3) & ((\a~combout\(31)))) # (!\shamt~combout\(3) & (\ShiftRight1~14_combout\)))) # (!\ShiftLeft0~6_combout\ & (((\a~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~6_combout\,
	datab => \shamt~combout\(3),
	datac => \ShiftRight1~14_combout\,
	datad => \a~combout\(31),
	combout => \ShiftRight1~53_combout\);

-- Location: LCCOMB_X26_Y12_N8
\Mux18~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = (\Mux29~10_combout\ & (((\ShiftRight1~53_combout\ & \Mux29~9_combout\)))) # (!\Mux29~10_combout\ & ((\Mux18~2_combout\) # ((!\Mux29~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~10_combout\,
	datab => \Mux18~2_combout\,
	datac => \ShiftRight1~53_combout\,
	datad => \Mux29~9_combout\,
	combout => \Mux18~3_combout\);

-- Location: LCCOMB_X30_Y15_N30
\ShiftRight0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~40_combout\ = (\a~combout\(31) & !\shamt~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(31),
	datad => \shamt~combout\(0),
	combout => \ShiftRight0~40_combout\);

-- Location: LCCOMB_X30_Y13_N18
\ShiftRight0~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~72_combout\ = (\ShiftRight0~47_combout\ & ((\shamt~combout\(1) & ((\ShiftRight0~40_combout\))) # (!\shamt~combout\(1) & (\ShiftRight1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~14_combout\,
	datab => \shamt~combout\(1),
	datac => \ShiftRight0~40_combout\,
	datad => \ShiftRight0~47_combout\,
	combout => \ShiftRight0~72_combout\);

-- Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[13]~I\ : cycloneii_io
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
	padio => ww_b(13),
	combout => \b~combout\(13));

-- Location: LCCOMB_X26_Y12_N22
\xor_out[13]\ : cycloneii_lcell_comb
-- Equation(s):
-- xor_out(13) = \a~combout\(13) $ (\b~combout\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(13),
	datad => \b~combout\(13),
	combout => xor_out(13));

-- Location: LCCOMB_X26_Y12_N18
\Mux18~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~4_combout\ = (\Mux29~6_combout\ & ((\Mux18~3_combout\ & ((xor_out(13)))) # (!\Mux18~3_combout\ & (\ShiftRight0~72_combout\)))) # (!\Mux29~6_combout\ & (\Mux18~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~6_combout\,
	datab => \Mux18~3_combout\,
	datac => \ShiftRight0~72_combout\,
	datad => xor_out(13),
	combout => \Mux18~4_combout\);

-- Location: LCCOMB_X26_Y13_N16
\Mux18~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~5_combout\ = (\Mux29~8_combout\ & (((\Mux22~2_combout\)))) # (!\Mux29~8_combout\ & ((\Mux22~2_combout\ & (\ShiftRight0~57_combout\)) # (!\Mux22~2_combout\ & ((\ShiftRight0~59_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~57_combout\,
	datab => \Mux29~8_combout\,
	datac => \Mux22~2_combout\,
	datad => \ShiftRight0~59_combout\,
	combout => \Mux18~5_combout\);

-- Location: LCCOMB_X26_Y12_N28
\Mux18~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~6_combout\ = (\Mux18~5_combout\ & ((\i1_sr|Add0~26_combout\) # ((!\Mux29~8_combout\)))) # (!\Mux18~5_combout\ & (((\Mux18~4_combout\ & \Mux29~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1_sr|Add0~26_combout\,
	datab => \Mux18~4_combout\,
	datac => \Mux18~5_combout\,
	datad => \Mux29~8_combout\,
	combout => \Mux18~6_combout\);

-- Location: LCCOMB_X22_Y14_N0
\b_ext[13]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_ext[13]~19_combout\ = (\Equal0~1_combout\ & (\b~combout\(13))) # (!\Equal0~1_combout\ & ((\a~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~1_combout\,
	datac => \b~combout\(13),
	datad => \a~combout\(13),
	combout => \b_ext[13]~19_combout\);

-- Location: LCCOMB_X22_Y13_N10
\i1_sr|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1~26_combout\ = (\a~combout\(13) & ((\b_ext[13]~19_combout\ & (\i1_sr|Add1~25\ & VCC)) # (!\b_ext[13]~19_combout\ & (!\i1_sr|Add1~25\)))) # (!\a~combout\(13) & ((\b_ext[13]~19_combout\ & (!\i1_sr|Add1~25\)) # (!\b_ext[13]~19_combout\ & 
-- ((\i1_sr|Add1~25\) # (GND)))))
-- \i1_sr|Add1~27\ = CARRY((\a~combout\(13) & (!\b_ext[13]~19_combout\ & !\i1_sr|Add1~25\)) # (!\a~combout\(13) & ((!\i1_sr|Add1~25\) # (!\b_ext[13]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(13),
	datab => \b_ext[13]~19_combout\,
	datad => VCC,
	cin => \i1_sr|Add1~25\,
	combout => \i1_sr|Add1~26_combout\,
	cout => \i1_sr|Add1~27\);

-- Location: LCCOMB_X26_Y12_N30
\Mux18~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~7_combout\ = (\alu_op~combout\(1) & ((\Mux22~3_combout\ & (\a~combout\(13) & \b~combout\(13))) # (!\Mux22~3_combout\ & ((\a~combout\(13)) # (\b~combout\(13)))))) # (!\alu_op~combout\(1) & (\Mux22~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(1),
	datab => \Mux22~3_combout\,
	datac => \a~combout\(13),
	datad => \b~combout\(13),
	combout => \Mux18~7_combout\);

-- Location: LCCOMB_X26_Y12_N0
\Mux18~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~8_combout\ = (\alu_op~combout\(1) & (((\Mux18~7_combout\)))) # (!\alu_op~combout\(1) & ((\Mux18~7_combout\ & ((\i1_sr|Add1~26_combout\))) # (!\Mux18~7_combout\ & (\Mux18~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(1),
	datab => \Mux18~6_combout\,
	datac => \i1_sr|Add1~26_combout\,
	datad => \Mux18~7_combout\,
	combout => \Mux18~8_combout\);

-- Location: LCCOMB_X26_Y12_N10
\Mux18~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~9_combout\ = (\Mux18~8_combout\ & (((!\alu_op~combout\(3) & \alu_op~combout\(2))) # (!\alu_op~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(3),
	datab => \Mux18~8_combout\,
	datac => \alu_op~combout\(2),
	datad => \alu_op~combout\(1),
	combout => \Mux18~9_combout\);

-- Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[14]~I\ : cycloneii_io
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
	padio => ww_b(14),
	combout => \b~combout\(14));

-- Location: LCCOMB_X23_Y12_N0
\b_ext[14]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_ext[14]~18_combout\ = (\Equal0~1_combout\ & (\b~combout\(14))) # (!\Equal0~1_combout\ & ((\a~combout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \b~combout\(14),
	datad => \a~combout\(14),
	combout => \b_ext[14]~18_combout\);

-- Location: LCCOMB_X22_Y13_N12
\i1_sr|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1~28_combout\ = ((\a~combout\(14) $ (\b_ext[14]~18_combout\ $ (!\i1_sr|Add1~27\)))) # (GND)
-- \i1_sr|Add1~29\ = CARRY((\a~combout\(14) & ((\b_ext[14]~18_combout\) # (!\i1_sr|Add1~27\))) # (!\a~combout\(14) & (\b_ext[14]~18_combout\ & !\i1_sr|Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(14),
	datab => \b_ext[14]~18_combout\,
	datad => VCC,
	cin => \i1_sr|Add1~27\,
	combout => \i1_sr|Add1~28_combout\,
	cout => \i1_sr|Add1~29\);

-- Location: LCCOMB_X23_Y12_N14
\xor_out[14]\ : cycloneii_lcell_comb
-- Equation(s):
-- xor_out(14) = \b~combout\(14) $ (\a~combout\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(14),
	datad => \a~combout\(14),
	combout => xor_out(14));

-- Location: LCCOMB_X29_Y15_N14
\ShiftLeft0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~8_combout\ = (!\shamt~combout\(0) & ((\shamt~combout\(1) & ((\a~combout\(0)))) # (!\shamt~combout\(1) & (\a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \shamt~combout\(1),
	datac => \a~combout\(0),
	datad => \shamt~combout\(0),
	combout => \ShiftLeft0~8_combout\);

-- Location: LCCOMB_X29_Y15_N0
\ShiftLeft0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~9_combout\ = (\ShiftLeft0~8_combout\) # ((\shamt~combout\(0) & (!\shamt~combout\(1) & \a~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(0),
	datab => \shamt~combout\(1),
	datac => \ShiftLeft0~8_combout\,
	datad => \a~combout\(1),
	combout => \ShiftLeft0~9_combout\);

-- Location: LCCOMB_X23_Y15_N30
\ShiftLeft0~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~47_combout\ = (\shamt~combout\(2) & ((\ShiftLeft0~9_combout\))) # (!\shamt~combout\(2) & (\ShiftLeft0~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(2),
	datab => \ShiftLeft0~21_combout\,
	datac => \ShiftLeft0~9_combout\,
	combout => \ShiftLeft0~47_combout\);

-- Location: LCCOMB_X26_Y14_N16
\ShiftLeft0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~33_combout\ = (\shamt~combout\(1) & (\a~combout\(8))) # (!\shamt~combout\(1) & ((\a~combout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datab => \a~combout\(8),
	datad => \a~combout\(10),
	combout => \ShiftLeft0~33_combout\);

-- Location: LCCOMB_X26_Y14_N2
\ShiftLeft0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~34_combout\ = (\shamt~combout\(0) & (\ShiftLeft0~28_combout\)) # (!\shamt~combout\(0) & ((\ShiftLeft0~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~28_combout\,
	datac => \ShiftLeft0~33_combout\,
	datad => \shamt~combout\(0),
	combout => \ShiftLeft0~34_combout\);

-- Location: LCCOMB_X23_Y15_N0
\ShiftLeft0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~50_combout\ = (\shamt~combout\(2) & ((\ShiftLeft0~34_combout\))) # (!\shamt~combout\(2) & (\ShiftLeft0~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~49_combout\,
	datac => \shamt~combout\(2),
	datad => \ShiftLeft0~34_combout\,
	combout => \ShiftLeft0~50_combout\);

-- Location: LCCOMB_X23_Y15_N18
\Mux17~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (!\shamt~combout\(4) & ((\shamt~combout\(3) & (\ShiftLeft0~47_combout\)) # (!\shamt~combout\(3) & ((\ShiftLeft0~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(4),
	datab => \ShiftLeft0~47_combout\,
	datac => \shamt~combout\(3),
	datad => \ShiftLeft0~50_combout\,
	combout => \Mux17~3_combout\);

-- Location: LCCOMB_X23_Y12_N24
\Mux17~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = (\Mux29~10_combout\ & (((!\Mux29~9_combout\)) # (!\ShiftRight1~54_combout\))) # (!\Mux29~10_combout\ & (((!\Mux17~3_combout\ & \Mux29~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~54_combout\,
	datab => \Mux29~10_combout\,
	datac => \Mux17~3_combout\,
	datad => \Mux29~9_combout\,
	combout => \Mux17~4_combout\);

-- Location: LCCOMB_X23_Y12_N18
\Mux17~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~5_combout\ = (\Mux17~4_combout\ & (\ShiftRight0~75_combout\ & ((\Mux29~6_combout\)))) # (!\Mux17~4_combout\ & (((xor_out(14)) # (!\Mux29~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~75_combout\,
	datab => xor_out(14),
	datac => \Mux17~4_combout\,
	datad => \Mux29~6_combout\,
	combout => \Mux17~5_combout\);

-- Location: LCCOMB_X23_Y16_N28
\ShiftRight1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~22_combout\ = (\shamt~combout\(0) & (\ShiftRight1~21_combout\)) # (!\shamt~combout\(0) & ((\ShiftRight1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~21_combout\,
	datac => \ShiftRight1~12_combout\,
	datad => \shamt~combout\(0),
	combout => \ShiftRight1~22_combout\);

-- Location: LCCOMB_X26_Y15_N6
\ShiftRight1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~9_combout\ = (\shamt~combout\(1) & (\a~combout\(16))) # (!\shamt~combout\(1) & ((\a~combout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datac => \a~combout\(16),
	datad => \a~combout\(14),
	combout => \ShiftRight1~9_combout\);

-- Location: LCCOMB_X24_Y16_N6
\ShiftRight1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~30_combout\ = (\shamt~combout\(0) & (\ShiftRight1~29_combout\)) # (!\shamt~combout\(0) & ((\ShiftRight1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~29_combout\,
	datac => \ShiftRight1~9_combout\,
	datad => \shamt~combout\(0),
	combout => \ShiftRight1~30_combout\);

-- Location: LCCOMB_X25_Y14_N0
\ShiftRight0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~62_combout\ = (\shamt~combout\(2) & (\ShiftRight1~22_combout\)) # (!\shamt~combout\(2) & ((\ShiftRight1~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~22_combout\,
	datac => \ShiftRight1~30_combout\,
	datad => \shamt~combout\(2),
	combout => \ShiftRight0~62_combout\);

-- Location: LCCOMB_X26_Y13_N26
\Mux17~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~6_combout\ = (\Mux22~2_combout\ & ((\ShiftRight0~60_combout\) # ((\Mux29~8_combout\)))) # (!\Mux22~2_combout\ & (((\ShiftRight0~62_combout\ & !\Mux29~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~60_combout\,
	datab => \Mux22~2_combout\,
	datac => \ShiftRight0~62_combout\,
	datad => \Mux29~8_combout\,
	combout => \Mux17~6_combout\);

-- Location: LCCOMB_X21_Y13_N12
\i1_sr|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add0~28_combout\ = ((\b_ext[14]~18_combout\ $ (\a~combout\(14) $ (\i1_sr|Add0~27\)))) # (GND)
-- \i1_sr|Add0~29\ = CARRY((\b_ext[14]~18_combout\ & (\a~combout\(14) & !\i1_sr|Add0~27\)) # (!\b_ext[14]~18_combout\ & ((\a~combout\(14)) # (!\i1_sr|Add0~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_ext[14]~18_combout\,
	datab => \a~combout\(14),
	datad => VCC,
	cin => \i1_sr|Add0~27\,
	combout => \i1_sr|Add0~28_combout\,
	cout => \i1_sr|Add0~29\);

-- Location: LCCOMB_X23_Y12_N12
\Mux17~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~7_combout\ = (\Mux29~8_combout\ & ((\Mux17~6_combout\ & ((\i1_sr|Add0~28_combout\))) # (!\Mux17~6_combout\ & (\Mux17~5_combout\)))) # (!\Mux29~8_combout\ & (((\Mux17~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~8_combout\,
	datab => \Mux17~5_combout\,
	datac => \Mux17~6_combout\,
	datad => \i1_sr|Add0~28_combout\,
	combout => \Mux17~7_combout\);

-- Location: LCCOMB_X23_Y12_N4
\Mux17~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~9_combout\ = (\Mux22~3_combout\ & (\i1_sr|Add1~28_combout\ & ((!\alu_op~combout\(1))))) # (!\Mux22~3_combout\ & (((\Mux17~7_combout\) # (\alu_op~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~3_combout\,
	datab => \i1_sr|Add1~28_combout\,
	datac => \Mux17~7_combout\,
	datad => \alu_op~combout\(1),
	combout => \Mux17~9_combout\);

-- Location: LCCOMB_X23_Y12_N30
\Mux17~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~10_combout\ = (\alu_op~combout\(1) & ((\Mux17~9_combout\ & ((\b~combout\(14)) # (\a~combout\(14)))) # (!\Mux17~9_combout\ & (\b~combout\(14) & \a~combout\(14))))) # (!\alu_op~combout\(1) & (\Mux17~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(1),
	datab => \Mux17~9_combout\,
	datac => \b~combout\(14),
	datad => \a~combout\(14),
	combout => \Mux17~10_combout\);

-- Location: LCCOMB_X23_Y12_N2
\Mux17~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~8_combout\ = (\Mux17~10_combout\ & (((!\alu_op~combout\(3) & \alu_op~combout\(2))) # (!\alu_op~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(1),
	datab => \Mux17~10_combout\,
	datac => \alu_op~combout\(3),
	datad => \alu_op~combout\(2),
	combout => \Mux17~8_combout\);

-- Location: LCCOMB_X22_Y13_N14
\i1_sr|Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1~30_combout\ = (\b_ext[15]~17_combout\ & ((\a~combout\(15) & (\i1_sr|Add1~29\ & VCC)) # (!\a~combout\(15) & (!\i1_sr|Add1~29\)))) # (!\b_ext[15]~17_combout\ & ((\a~combout\(15) & (!\i1_sr|Add1~29\)) # (!\a~combout\(15) & ((\i1_sr|Add1~29\) # 
-- (GND)))))
-- \i1_sr|Add1~31\ = CARRY((\b_ext[15]~17_combout\ & (!\a~combout\(15) & !\i1_sr|Add1~29\)) # (!\b_ext[15]~17_combout\ & ((!\i1_sr|Add1~29\) # (!\a~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_ext[15]~17_combout\,
	datab => \a~combout\(15),
	datad => VCC,
	cin => \i1_sr|Add1~29\,
	combout => \i1_sr|Add1~30_combout\,
	cout => \i1_sr|Add1~31\);

-- Location: LCCOMB_X23_Y14_N26
\ShiftRight0~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~73_combout\ = (!\shamt~combout\(3) & (\a~combout\(31) & !\ShiftLeft0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shamt~combout\(3),
	datac => \a~combout\(31),
	datad => \ShiftLeft0~4_combout\,
	combout => \ShiftRight0~73_combout\);

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[15]~I\ : cycloneii_io
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
	padio => ww_b(15),
	combout => \b~combout\(15));

-- Location: LCCOMB_X25_Y13_N6
\xor_out[15]\ : cycloneii_lcell_comb
-- Equation(s):
-- xor_out(15) = \a~combout\(15) $ (\b~combout\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(15),
	datad => \b~combout\(15),
	combout => xor_out(15));

-- Location: LCCOMB_X25_Y13_N8
\Mux16~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~4_combout\ = (\Mux16~3_combout\ & (((xor_out(15))) # (!\Mux29~6_combout\))) # (!\Mux16~3_combout\ & (\Mux29~6_combout\ & (\ShiftRight0~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~3_combout\,
	datab => \Mux29~6_combout\,
	datac => \ShiftRight0~73_combout\,
	datad => xor_out(15),
	combout => \Mux16~4_combout\);

-- Location: LCCOMB_X29_Y13_N0
\Mux16~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~5_combout\ = (\Mux22~2_combout\ & ((\Mux29~8_combout\) # ((\ShiftRight0~63_combout\)))) # (!\Mux22~2_combout\ & (!\Mux29~8_combout\ & (\ShiftRight0~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~2_combout\,
	datab => \Mux29~8_combout\,
	datac => \ShiftRight0~65_combout\,
	datad => \ShiftRight0~63_combout\,
	combout => \Mux16~5_combout\);

-- Location: LCCOMB_X25_Y13_N10
\Mux16~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~6_combout\ = (\Mux29~8_combout\ & ((\Mux16~5_combout\ & (\i1_sr|Add0~30_combout\)) # (!\Mux16~5_combout\ & ((\Mux16~4_combout\))))) # (!\Mux29~8_combout\ & (((\Mux16~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1_sr|Add0~30_combout\,
	datab => \Mux29~8_combout\,
	datac => \Mux16~4_combout\,
	datad => \Mux16~5_combout\,
	combout => \Mux16~6_combout\);

-- Location: LCCOMB_X25_Y13_N26
\Mux16~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~8_combout\ = (\alu_op~combout\(1) & (((!\Mux22~3_combout\)))) # (!\alu_op~combout\(1) & ((\Mux22~3_combout\ & (\i1_sr|Add1~30_combout\)) # (!\Mux22~3_combout\ & ((\Mux16~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(1),
	datab => \i1_sr|Add1~30_combout\,
	datac => \Mux22~3_combout\,
	datad => \Mux16~6_combout\,
	combout => \Mux16~8_combout\);

-- Location: LCCOMB_X25_Y13_N12
\Mux16~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~9_combout\ = (\alu_op~combout\(1) & ((\Mux16~8_combout\ & ((\b~combout\(15)) # (\a~combout\(15)))) # (!\Mux16~8_combout\ & (\b~combout\(15) & \a~combout\(15))))) # (!\alu_op~combout\(1) & (\Mux16~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(1),
	datab => \Mux16~8_combout\,
	datac => \b~combout\(15),
	datad => \a~combout\(15),
	combout => \Mux16~9_combout\);

-- Location: LCCOMB_X25_Y13_N16
\Mux16~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~7_combout\ = (\Mux16~9_combout\ & (((\alu_op~combout\(2) & !\alu_op~combout\(3))) # (!\alu_op~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(1),
	datab => \alu_op~combout\(2),
	datac => \alu_op~combout\(3),
	datad => \Mux16~9_combout\,
	combout => \Mux16~7_combout\);

-- Location: LCCOMB_X26_Y14_N28
\ShiftLeft0~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~37_combout\ = (\shamt~combout\(1) & (\a~combout\(9))) # (!\shamt~combout\(1) & ((\a~combout\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datac => \a~combout\(9),
	datad => \a~combout\(11),
	combout => \ShiftLeft0~37_combout\);

-- Location: LCCOMB_X27_Y15_N28
\ShiftLeft0~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~55_combout\ = (\shamt~combout\(2) & ((\shamt~combout\(0) & ((\ShiftLeft0~37_combout\))) # (!\shamt~combout\(0) & (\ShiftLeft0~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~41_combout\,
	datab => \ShiftLeft0~37_combout\,
	datac => \shamt~combout\(0),
	datad => \shamt~combout\(2),
	combout => \ShiftLeft0~55_combout\);

-- Location: LCCOMB_X26_Y15_N16
\ShiftLeft0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~52_combout\ = (\shamt~combout\(1) & ((\a~combout\(13)))) # (!\shamt~combout\(1) & (\a~combout\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datac => \a~combout\(15),
	datad => \a~combout\(13),
	combout => \ShiftLeft0~52_combout\);

-- Location: LCCOMB_X26_Y15_N30
\ShiftLeft0~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~57_combout\ = (\shamt~combout\(0) & ((\ShiftLeft0~52_combout\))) # (!\shamt~combout\(0) & (\ShiftLeft0~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~56_combout\,
	datab => \shamt~combout\(0),
	datac => \ShiftLeft0~52_combout\,
	combout => \ShiftLeft0~57_combout\);

-- Location: LCCOMB_X27_Y15_N22
\ShiftLeft0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~58_combout\ = (\ShiftLeft0~55_combout\) # ((\ShiftLeft0~57_combout\ & !\shamt~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~55_combout\,
	datac => \ShiftLeft0~57_combout\,
	datad => \shamt~combout\(2),
	combout => \ShiftLeft0~58_combout\);

-- Location: LCCOMB_X23_Y14_N22
\Mux15~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~5_combout\ = (\shamt~combout\(4) & (!\ShiftLeft0~4_combout\ & ((\a~combout\(0))))) # (!\shamt~combout\(4) & (((\ShiftLeft0~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(4),
	datab => \ShiftLeft0~4_combout\,
	datac => \ShiftLeft0~58_combout\,
	datad => \a~combout\(0),
	combout => \Mux15~5_combout\);

-- Location: LCCOMB_X29_Y15_N8
\ShiftLeft0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~14_combout\ = (!\shamt~combout\(0) & ((\shamt~combout\(1) & (\a~combout\(2))) # (!\shamt~combout\(1) & ((\a~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \shamt~combout\(1),
	datac => \a~combout\(4),
	datad => \shamt~combout\(0),
	combout => \ShiftLeft0~14_combout\);

-- Location: LCCOMB_X29_Y14_N6
\Mux15~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~6_combout\ = (!\shamt~combout\(2) & ((\shamt~combout\(0) & (\ShiftLeft0~22_combout\)) # (!\shamt~combout\(0) & ((\ShiftLeft0~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~22_combout\,
	datab => \ShiftLeft0~26_combout\,
	datac => \shamt~combout\(2),
	datad => \shamt~combout\(0),
	combout => \Mux15~6_combout\);

-- Location: LCCOMB_X29_Y15_N30
\Mux15~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~7_combout\ = (\Mux15~6_combout\) # ((\shamt~combout\(2) & ((\ShiftLeft0~13_combout\) # (\ShiftLeft0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~13_combout\,
	datab => \ShiftLeft0~14_combout\,
	datac => \shamt~combout\(2),
	datad => \Mux15~6_combout\,
	combout => \Mux15~7_combout\);

-- Location: LCCOMB_X23_Y14_N24
\Mux15~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~8_combout\ = (\shamt~combout\(3) & (!\shamt~combout\(4) & ((\Mux15~7_combout\)))) # (!\shamt~combout\(3) & (((\Mux15~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(4),
	datab => \Mux15~5_combout\,
	datac => \shamt~combout\(3),
	datad => \Mux15~7_combout\,
	combout => \Mux15~8_combout\);

-- Location: LCCOMB_X21_Y13_N16
\i1_sr|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add0~32_combout\ = ((\b_ext[16]~16_combout\ $ (\a~combout\(16) $ (\i1_sr|Add0~31\)))) # (GND)
-- \i1_sr|Add0~33\ = CARRY((\b_ext[16]~16_combout\ & (\a~combout\(16) & !\i1_sr|Add0~31\)) # (!\b_ext[16]~16_combout\ & ((\a~combout\(16)) # (!\i1_sr|Add0~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_ext[16]~16_combout\,
	datab => \a~combout\(16),
	datad => VCC,
	cin => \i1_sr|Add0~31\,
	combout => \i1_sr|Add0~32_combout\,
	cout => \i1_sr|Add0~33\);

-- Location: LCCOMB_X22_Y13_N16
\i1_sr|Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1~32_combout\ = ((\b_ext[16]~16_combout\ $ (\a~combout\(16) $ (!\i1_sr|Add1~31\)))) # (GND)
-- \i1_sr|Add1~33\ = CARRY((\b_ext[16]~16_combout\ & ((\a~combout\(16)) # (!\i1_sr|Add1~31\))) # (!\b_ext[16]~16_combout\ & (\a~combout\(16) & !\i1_sr|Add1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_ext[16]~16_combout\,
	datab => \a~combout\(16),
	datad => VCC,
	cin => \i1_sr|Add1~31\,
	combout => \i1_sr|Add1~32_combout\,
	cout => \i1_sr|Add1~33\);

-- Location: LCCOMB_X23_Y14_N28
\Mux15~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = (!\alu_op~combout\(0) & ((\i1_sr|Equal0~0_combout\ & ((\i1_sr|Add1~32_combout\))) # (!\i1_sr|Equal0~0_combout\ & (\i1_sr|Add0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(0),
	datab => \i1_sr|Add0~32_combout\,
	datac => \i1_sr|Equal0~0_combout\,
	datad => \i1_sr|Add1~32_combout\,
	combout => \Mux15~4_combout\);

-- Location: LCCOMB_X23_Y14_N2
\Mux15~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~9_combout\ = (\Mux15~4_combout\) # ((\alu_op~combout\(0) & (!\alu_op~combout\(3) & \Mux15~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(0),
	datab => \alu_op~combout\(3),
	datac => \Mux15~8_combout\,
	datad => \Mux15~4_combout\,
	combout => \Mux15~9_combout\);

-- Location: LCCOMB_X22_Y15_N4
\Mux15~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~12_combout\ = (\shamt~combout\(4) & (\a~combout\(31) & (\alu_op~combout\(3)))) # (!\shamt~combout\(4) & (((\ShiftRight0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(31),
	datab => \alu_op~combout\(3),
	datac => \ShiftRight0~17_combout\,
	datad => \shamt~combout\(4),
	combout => \Mux15~12_combout\);

-- Location: LCCOMB_X22_Y15_N22
\Mux15~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~10_combout\ = (\b~combout\(16) & ((\a~combout\(16) & (\alu_op~combout\(1))) # (!\a~combout\(16) & ((!\alu_op~combout\(0)))))) # (!\b~combout\(16) & (((!\alu_op~combout\(0) & \a~combout\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(16),
	datab => \alu_op~combout\(1),
	datac => \alu_op~combout\(0),
	datad => \a~combout\(16),
	combout => \Mux15~10_combout\);

-- Location: LCCOMB_X22_Y15_N0
\Mux15~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~11_combout\ = (\Mux1~0_combout\ & ((\Mux15~12_combout\) # ((!\alu_op~combout\(3) & \Mux15~10_combout\)))) # (!\Mux1~0_combout\ & (!\alu_op~combout\(3) & ((\Mux15~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \alu_op~combout\(3),
	datac => \Mux15~12_combout\,
	datad => \Mux15~10_combout\,
	combout => \Mux15~11_combout\);

-- Location: LCCOMB_X22_Y15_N6
\Mux15~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~13_combout\ = (\alu_op~combout\(2) & (((\Mux15~11_combout\)))) # (!\alu_op~combout\(2) & (\Mux15~9_combout\ & ((!\alu_op~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~9_combout\,
	datab => \Mux15~11_combout\,
	datac => \alu_op~combout\(2),
	datad => \alu_op~combout\(1),
	combout => \Mux15~13_combout\);

-- Location: LCCOMB_X21_Y13_N18
\i1_sr|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add0~34_combout\ = (\b_ext[17]~15_combout\ & ((\a~combout\(17) & (!\i1_sr|Add0~33\)) # (!\a~combout\(17) & ((\i1_sr|Add0~33\) # (GND))))) # (!\b_ext[17]~15_combout\ & ((\a~combout\(17) & (\i1_sr|Add0~33\ & VCC)) # (!\a~combout\(17) & 
-- (!\i1_sr|Add0~33\))))
-- \i1_sr|Add0~35\ = CARRY((\b_ext[17]~15_combout\ & ((!\i1_sr|Add0~33\) # (!\a~combout\(17)))) # (!\b_ext[17]~15_combout\ & (!\a~combout\(17) & !\i1_sr|Add0~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_ext[17]~15_combout\,
	datab => \a~combout\(17),
	datad => VCC,
	cin => \i1_sr|Add0~33\,
	combout => \i1_sr|Add0~34_combout\,
	cout => \i1_sr|Add0~35\);

-- Location: LCCOMB_X20_Y15_N2
\Mux14~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (\Mux14~3_combout\ & (((\alu_op~combout\(0) & \alu_op~combout\(2))) # (!\alu_op~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~3_combout\,
	datab => \alu_op~combout\(0),
	datac => \alu_op~combout\(2),
	datad => \alu_op~combout\(3),
	combout => \Mux14~4_combout\);

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[17]~I\ : cycloneii_io
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
	padio => ww_b(17),
	combout => \b~combout\(17));

-- Location: LCCOMB_X21_Y15_N24
\or_out[17]\ : cycloneii_lcell_comb
-- Equation(s):
-- or_out(17) = (\a~combout\(17)) # (\b~combout\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(17),
	datac => \b~combout\(17),
	combout => or_out(17));

-- Location: LCCOMB_X20_Y15_N20
\Mux14~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = (\Mux27~10_combout\ & (((\Mux27~9_combout\ & or_out(17))))) # (!\Mux27~10_combout\ & ((\Mux14~4_combout\) # ((!\Mux27~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~10_combout\,
	datab => \Mux14~4_combout\,
	datac => \Mux27~9_combout\,
	datad => or_out(17),
	combout => \Mux14~5_combout\);

-- Location: LCCOMB_X22_Y13_N18
\i1_sr|Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1~34_combout\ = (\b_ext[17]~15_combout\ & ((\a~combout\(17) & (\i1_sr|Add1~33\ & VCC)) # (!\a~combout\(17) & (!\i1_sr|Add1~33\)))) # (!\b_ext[17]~15_combout\ & ((\a~combout\(17) & (!\i1_sr|Add1~33\)) # (!\a~combout\(17) & ((\i1_sr|Add1~33\) # 
-- (GND)))))
-- \i1_sr|Add1~35\ = CARRY((\b_ext[17]~15_combout\ & (!\a~combout\(17) & !\i1_sr|Add1~33\)) # (!\b_ext[17]~15_combout\ & ((!\i1_sr|Add1~33\) # (!\a~combout\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_ext[17]~15_combout\,
	datab => \a~combout\(17),
	datad => VCC,
	cin => \i1_sr|Add1~33\,
	combout => \i1_sr|Add1~34_combout\,
	cout => \i1_sr|Add1~35\);

-- Location: LCCOMB_X20_Y15_N14
\Mux14~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~6_combout\ = (\Mux27~2_combout\ & (((\Mux14~5_combout\)))) # (!\Mux27~2_combout\ & ((\Mux14~5_combout\ & (\i1_sr|Add0~34_combout\)) # (!\Mux14~5_combout\ & ((\i1_sr|Add1~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~2_combout\,
	datab => \i1_sr|Add0~34_combout\,
	datac => \Mux14~5_combout\,
	datad => \i1_sr|Add1~34_combout\,
	combout => \Mux14~6_combout\);

-- Location: LCCOMB_X21_Y15_N12
\Mux14~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~7_combout\ = (\Mux27~13_combout\ & (((\a~combout\(17) & \b~combout\(17))))) # (!\Mux27~13_combout\ & (\Mux14~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~6_combout\,
	datab => \a~combout\(17),
	datac => \b~combout\(17),
	datad => \Mux27~13_combout\,
	combout => \Mux14~7_combout\);

-- Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[18]~I\ : cycloneii_io
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
	padio => ww_b(18),
	combout => \b~combout\(18));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[18]~I\ : cycloneii_io
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
	padio => ww_a(18),
	combout => \a~combout\(18));

-- Location: LCCOMB_X21_Y15_N26
\b_ext[18]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_ext[18]~14_combout\ = (\Equal0~1_combout\ & (\b~combout\(18))) # (!\Equal0~1_combout\ & ((\a~combout\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(18),
	datab => \a~combout\(18),
	datac => \Equal0~1_combout\,
	combout => \b_ext[18]~14_combout\);

-- Location: LCCOMB_X21_Y13_N20
\i1_sr|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add0~36_combout\ = ((\a~combout\(18) $ (\b_ext[18]~14_combout\ $ (\i1_sr|Add0~35\)))) # (GND)
-- \i1_sr|Add0~37\ = CARRY((\a~combout\(18) & ((!\i1_sr|Add0~35\) # (!\b_ext[18]~14_combout\))) # (!\a~combout\(18) & (!\b_ext[18]~14_combout\ & !\i1_sr|Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(18),
	datab => \b_ext[18]~14_combout\,
	datad => VCC,
	cin => \i1_sr|Add0~35\,
	combout => \i1_sr|Add0~36_combout\,
	cout => \i1_sr|Add0~37\);

-- Location: LCCOMB_X20_Y13_N8
\or_out[18]\ : cycloneii_lcell_comb
-- Equation(s):
-- or_out(18) = (\b~combout\(18)) # (\a~combout\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(18),
	datac => \a~combout\(18),
	combout => or_out(18));

-- Location: LCCOMB_X26_Y16_N18
\Mux13~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~6_combout\ = (\alu_op~combout\(3) & (((\shamt~combout\(4))))) # (!\alu_op~combout\(3) & (\alu_op~combout\(2) & (\alu_op~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(2),
	datab => \alu_op~combout\(0),
	datac => \alu_op~combout\(3),
	datad => \shamt~combout\(4),
	combout => \Mux13~6_combout\);

-- Location: LCCOMB_X24_Y15_N0
\Mux13~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (\alu_op~combout\(2)) # ((!\shamt~combout\(4) & \shamt~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_op~combout\(2),
	datac => \shamt~combout\(4),
	datad => \shamt~combout\(3),
	combout => \Mux13~4_combout\);

-- Location: LCCOMB_X21_Y15_N14
\xor_out[18]\ : cycloneii_lcell_comb
-- Equation(s):
-- xor_out(18) = \a~combout\(18) $ (\b~combout\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(18),
	datac => \b~combout\(18),
	combout => xor_out(18));

-- Location: LCCOMB_X24_Y15_N18
\Mux13~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~7_combout\ = (\Mux13~4_combout\ & (((xor_out(18))))) # (!\Mux13~4_combout\ & (\ShiftRight0~47_combout\ & ((\ShiftLeft0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~47_combout\,
	datab => \Mux13~4_combout\,
	datac => xor_out(18),
	datad => \ShiftLeft0~9_combout\,
	combout => \Mux13~7_combout\);

-- Location: LCCOMB_X24_Y16_N2
\ShiftLeft0~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~59_combout\ = (\shamt~combout\(1) & (\a~combout\(15))) # (!\shamt~combout\(1) & ((\a~combout\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(15),
	datac => \shamt~combout\(1),
	datad => \a~combout\(17),
	combout => \ShiftLeft0~59_combout\);

-- Location: LCCOMB_X24_Y16_N30
\ShiftLeft0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~62_combout\ = (\shamt~combout\(1) & ((\a~combout\(16)))) # (!\shamt~combout\(1) & (\a~combout\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(18),
	datab => \a~combout\(16),
	datac => \shamt~combout\(1),
	combout => \ShiftLeft0~62_combout\);

-- Location: LCCOMB_X24_Y16_N16
\ShiftLeft0~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~63_combout\ = (\shamt~combout\(0) & (\ShiftLeft0~59_combout\)) # (!\shamt~combout\(0) & ((\ShiftLeft0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~59_combout\,
	datac => \ShiftLeft0~62_combout\,
	datad => \shamt~combout\(0),
	combout => \ShiftLeft0~63_combout\);

-- Location: LCCOMB_X23_Y15_N4
\ShiftLeft0~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~64_combout\ = (\shamt~combout\(2) & (\ShiftLeft0~49_combout\)) # (!\shamt~combout\(2) & ((\ShiftLeft0~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~49_combout\,
	datab => \ShiftLeft0~63_combout\,
	datac => \shamt~combout\(2),
	combout => \ShiftLeft0~64_combout\);

-- Location: LCCOMB_X24_Y15_N4
\Mux13~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~8_combout\ = (\Mux13~4_combout\ & (\ShiftLeft0~35_combout\)) # (!\Mux13~4_combout\ & ((\ShiftLeft0~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~35_combout\,
	datac => \ShiftLeft0~64_combout\,
	datad => \Mux13~4_combout\,
	combout => \Mux13~8_combout\);

-- Location: LCCOMB_X24_Y15_N28
\Mux13~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~15_combout\ = (\shamt~combout\(4) & (\Mux13~7_combout\)) # (!\shamt~combout\(4) & ((\alu_op~combout\(2) & (\Mux13~7_combout\)) # (!\alu_op~combout\(2) & ((\Mux13~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(4),
	datab => \Mux13~7_combout\,
	datac => \Mux13~8_combout\,
	datad => \alu_op~combout\(2),
	combout => \Mux13~15_combout\);

-- Location: LCCOMB_X30_Y14_N18
\ShiftRight1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~4_combout\ = (\shamt~combout\(0) & ((\a~combout\(31)))) # (!\shamt~combout\(0) & (\a~combout\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(30),
	datac => \a~combout\(31),
	datad => \shamt~combout\(0),
	combout => \ShiftRight1~4_combout\);

-- Location: LCCOMB_X30_Y14_N8
\ShiftRight0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~44_combout\ = (\ShiftRight0~43_combout\) # ((!\shamt~combout\(1) & (\ShiftRight1~4_combout\ & \shamt~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datab => \ShiftRight0~43_combout\,
	datac => \ShiftRight1~4_combout\,
	datad => \shamt~combout\(2),
	combout => \ShiftRight0~44_combout\);

-- Location: LCCOMB_X27_Y16_N28
\ShiftRight1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~20_combout\ = (\shamt~combout\(0) & (\ShiftRight1~19_combout\)) # (!\shamt~combout\(0) & ((\ShiftRight1~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~19_combout\,
	datac => \ShiftRight1~11_combout\,
	datad => \shamt~combout\(0),
	combout => \ShiftRight1~20_combout\);

-- Location: LCCOMB_X30_Y14_N2
\ShiftRight0~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~45_combout\ = (\shamt~combout\(2) & ((\ShiftRight1~20_combout\))) # (!\shamt~combout\(2) & (\ShiftRight1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~22_combout\,
	datab => \ShiftRight1~20_combout\,
	datad => \shamt~combout\(2),
	combout => \ShiftRight0~45_combout\);

-- Location: LCCOMB_X30_Y14_N28
\ShiftRight0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~46_combout\ = (\shamt~combout\(3) & (\ShiftRight0~44_combout\)) # (!\shamt~combout\(3) & ((\ShiftRight0~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~44_combout\,
	datac => \shamt~combout\(3),
	datad => \ShiftRight0~45_combout\,
	combout => \ShiftRight0~46_combout\);

-- Location: LCCOMB_X24_Y13_N18
\Mux13~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~9_combout\ = (\Mux13~5_combout\ & ((\Mux13~6_combout\ & ((\ShiftRight0~46_combout\))) # (!\Mux13~6_combout\ & (\Mux13~15_combout\)))) # (!\Mux13~5_combout\ & (!\Mux13~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~5_combout\,
	datab => \Mux13~6_combout\,
	datac => \Mux13~15_combout\,
	datad => \ShiftRight0~46_combout\,
	combout => \Mux13~9_combout\);

-- Location: LCCOMB_X24_Y13_N20
\Mux13~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~10_combout\ = (\Mux13~9_combout\ & ((\ShiftRight1~25_combout\) # ((!\alu_op~combout\(3))))) # (!\Mux13~9_combout\ & (((\alu_op~combout\(3) & \a~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~25_combout\,
	datab => \Mux13~9_combout\,
	datac => \alu_op~combout\(3),
	datad => \a~combout\(31),
	combout => \Mux13~10_combout\);

-- Location: LCCOMB_X20_Y13_N26
\Mux13~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~11_combout\ = (\Mux13~10_combout\ & (((\alu_op~combout\(0) & \alu_op~combout\(2))) # (!\alu_op~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(0),
	datab => \alu_op~combout\(3),
	datac => \alu_op~combout\(2),
	datad => \Mux13~10_combout\,
	combout => \Mux13~11_combout\);

-- Location: LCCOMB_X20_Y13_N12
\Mux13~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~12_combout\ = (\Mux27~9_combout\ & ((\Mux27~10_combout\ & (or_out(18))) # (!\Mux27~10_combout\ & ((\Mux13~11_combout\))))) # (!\Mux27~9_combout\ & (((!\Mux27~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~9_combout\,
	datab => or_out(18),
	datac => \Mux27~10_combout\,
	datad => \Mux13~11_combout\,
	combout => \Mux13~12_combout\);

-- Location: LCCOMB_X20_Y13_N22
\Mux13~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~13_combout\ = (\Mux27~2_combout\ & (((\Mux13~12_combout\)))) # (!\Mux27~2_combout\ & ((\Mux13~12_combout\ & ((\i1_sr|Add0~36_combout\))) # (!\Mux13~12_combout\ & (\i1_sr|Add1~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1_sr|Add1~36_combout\,
	datab => \i1_sr|Add0~36_combout\,
	datac => \Mux27~2_combout\,
	datad => \Mux13~12_combout\,
	combout => \Mux13~13_combout\);

-- Location: LCCOMB_X21_Y15_N16
\Mux13~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~14_combout\ = (\Mux27~13_combout\ & (\b~combout\(18) & (\a~combout\(18)))) # (!\Mux27~13_combout\ & (((\Mux13~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(18),
	datab => \Mux27~13_combout\,
	datac => \a~combout\(18),
	datad => \Mux13~13_combout\,
	combout => \Mux13~14_combout\);

-- Location: LCCOMB_X29_Y13_N22
\ShiftRight0~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~51_combout\ = (\shamt~combout\(3) & ((\ShiftRight0~49_combout\))) # (!\shamt~combout\(3) & (\ShiftRight0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~50_combout\,
	datac => \shamt~combout\(3),
	datad => \ShiftRight0~49_combout\,
	combout => \ShiftRight0~51_combout\);

-- Location: LCCOMB_X24_Y15_N22
\Mux13~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\shamt~combout\(4)) # (\alu_op~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \shamt~combout\(4),
	datad => \alu_op~combout\(2),
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X26_Y15_N10
\ShiftLeft0~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~53_combout\ = (\shamt~combout\(0) & (\ShiftLeft0~48_combout\)) # (!\shamt~combout\(0) & ((\ShiftLeft0~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~48_combout\,
	datac => \shamt~combout\(0),
	datad => \ShiftLeft0~52_combout\,
	combout => \ShiftLeft0~53_combout\);

-- Location: LCCOMB_X24_Y16_N18
\ShiftLeft0~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~67_combout\ = (\shamt~combout\(0) & ((\ShiftLeft0~62_combout\))) # (!\shamt~combout\(0) & (\ShiftLeft0~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~66_combout\,
	datab => \ShiftLeft0~62_combout\,
	datad => \shamt~combout\(0),
	combout => \ShiftLeft0~67_combout\);

-- Location: LCCOMB_X25_Y16_N2
\ShiftLeft0~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~68_combout\ = (\shamt~combout\(2) & (\ShiftLeft0~53_combout\)) # (!\shamt~combout\(2) & ((\ShiftLeft0~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~53_combout\,
	datac => \shamt~combout\(2),
	datad => \ShiftLeft0~67_combout\,
	combout => \ShiftLeft0~68_combout\);

-- Location: LCCOMB_X26_Y14_N14
\ShiftLeft0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~38_combout\ = (\shamt~combout\(0) & ((\ShiftLeft0~33_combout\))) # (!\shamt~combout\(0) & (\ShiftLeft0~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~37_combout\,
	datac => \ShiftLeft0~33_combout\,
	datad => \shamt~combout\(0),
	combout => \ShiftLeft0~38_combout\);

-- Location: LCCOMB_X25_Y16_N18
\ShiftLeft0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~39_combout\ = (\shamt~combout\(2) & (\ShiftLeft0~23_combout\)) # (!\shamt~combout\(2) & ((\ShiftLeft0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~23_combout\,
	datab => \shamt~combout\(2),
	datad => \ShiftLeft0~38_combout\,
	combout => \ShiftLeft0~39_combout\);

-- Location: LCCOMB_X25_Y16_N28
\Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\Mux13~3_combout\ & (((\Mux13~4_combout\)))) # (!\Mux13~3_combout\ & ((\Mux13~4_combout\ & ((\ShiftLeft0~39_combout\))) # (!\Mux13~4_combout\ & (\ShiftLeft0~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~3_combout\,
	datab => \ShiftLeft0~68_combout\,
	datac => \Mux13~4_combout\,
	datad => \ShiftLeft0~39_combout\,
	combout => \Mux12~0_combout\);

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[19]~I\ : cycloneii_io
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
	padio => ww_b(19),
	combout => \b~combout\(19));

-- Location: LCCOMB_X21_Y15_N4
\xor_out[19]\ : cycloneii_lcell_comb
-- Equation(s):
-- xor_out(19) = \a~combout\(19) $ (\b~combout\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(19),
	datac => \b~combout\(19),
	combout => xor_out(19));

-- Location: LCCOMB_X25_Y15_N26
\Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\Mux13~3_combout\ & ((\Mux12~0_combout\ & ((xor_out(19)))) # (!\Mux12~0_combout\ & (\ShiftLeft0~65_combout\)))) # (!\Mux13~3_combout\ & (((\Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~65_combout\,
	datab => \Mux13~3_combout\,
	datac => \Mux12~0_combout\,
	datad => xor_out(19),
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X24_Y13_N22
\Mux12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\Mux13~5_combout\ & ((\Mux13~6_combout\ & (\ShiftRight0~51_combout\)) # (!\Mux13~6_combout\ & ((\Mux12~1_combout\))))) # (!\Mux13~5_combout\ & (!\Mux13~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~5_combout\,
	datab => \Mux13~6_combout\,
	datac => \ShiftRight0~51_combout\,
	datad => \Mux12~1_combout\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X29_Y13_N18
\ShiftRight1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~38_combout\ = (\ShiftRight1~37_combout\) # ((\ShiftRight0~50_combout\ & !\shamt~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~37_combout\,
	datab => \ShiftRight0~50_combout\,
	datac => \shamt~combout\(3),
	combout => \ShiftRight1~38_combout\);

-- Location: LCCOMB_X24_Y13_N8
\Mux12~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\Mux12~2_combout\ & (((\ShiftRight1~38_combout\) # (!\alu_op~combout\(3))))) # (!\Mux12~2_combout\ & (\a~combout\(31) & (\alu_op~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(31),
	datab => \Mux12~2_combout\,
	datac => \alu_op~combout\(3),
	datad => \ShiftRight1~38_combout\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X20_Y13_N0
\Mux12~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (\Mux12~3_combout\ & (((\alu_op~combout\(0) & \alu_op~combout\(2))) # (!\alu_op~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(0),
	datab => \alu_op~combout\(2),
	datac => \alu_op~combout\(3),
	datad => \Mux12~3_combout\,
	combout => \Mux12~4_combout\);

-- Location: LCCOMB_X21_Y15_N18
\or_out[19]\ : cycloneii_lcell_comb
-- Equation(s):
-- or_out(19) = (\a~combout\(19)) # (\b~combout\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(19),
	datac => \b~combout\(19),
	combout => or_out(19));

-- Location: LCCOMB_X20_Y13_N10
\Mux12~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = (\Mux27~9_combout\ & ((\Mux27~10_combout\ & ((or_out(19)))) # (!\Mux27~10_combout\ & (\Mux12~4_combout\)))) # (!\Mux27~9_combout\ & (((!\Mux27~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~9_combout\,
	datab => \Mux12~4_combout\,
	datac => \Mux27~10_combout\,
	datad => or_out(19),
	combout => \Mux12~5_combout\);

-- Location: LCCOMB_X21_Y15_N8
\b_ext[19]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_ext[19]~13_combout\ = (\Equal0~1_combout\ & ((\b~combout\(19)))) # (!\Equal0~1_combout\ & (\a~combout\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(19),
	datab => \Equal0~1_combout\,
	datac => \b~combout\(19),
	combout => \b_ext[19]~13_combout\);

-- Location: LCCOMB_X21_Y13_N22
\i1_sr|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add0~38_combout\ = (\a~combout\(19) & ((\b_ext[19]~13_combout\ & (!\i1_sr|Add0~37\)) # (!\b_ext[19]~13_combout\ & (\i1_sr|Add0~37\ & VCC)))) # (!\a~combout\(19) & ((\b_ext[19]~13_combout\ & ((\i1_sr|Add0~37\) # (GND))) # (!\b_ext[19]~13_combout\ & 
-- (!\i1_sr|Add0~37\))))
-- \i1_sr|Add0~39\ = CARRY((\a~combout\(19) & (\b_ext[19]~13_combout\ & !\i1_sr|Add0~37\)) # (!\a~combout\(19) & ((\b_ext[19]~13_combout\) # (!\i1_sr|Add0~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(19),
	datab => \b_ext[19]~13_combout\,
	datad => VCC,
	cin => \i1_sr|Add0~37\,
	combout => \i1_sr|Add0~38_combout\,
	cout => \i1_sr|Add0~39\);

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[19]~I\ : cycloneii_io
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
	padio => ww_a(19),
	combout => \a~combout\(19));

-- Location: LCCOMB_X22_Y13_N22
\i1_sr|Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1~38_combout\ = (\b_ext[19]~13_combout\ & ((\a~combout\(19) & (\i1_sr|Add1~37\ & VCC)) # (!\a~combout\(19) & (!\i1_sr|Add1~37\)))) # (!\b_ext[19]~13_combout\ & ((\a~combout\(19) & (!\i1_sr|Add1~37\)) # (!\a~combout\(19) & ((\i1_sr|Add1~37\) # 
-- (GND)))))
-- \i1_sr|Add1~39\ = CARRY((\b_ext[19]~13_combout\ & (!\a~combout\(19) & !\i1_sr|Add1~37\)) # (!\b_ext[19]~13_combout\ & ((!\i1_sr|Add1~37\) # (!\a~combout\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_ext[19]~13_combout\,
	datab => \a~combout\(19),
	datad => VCC,
	cin => \i1_sr|Add1~37\,
	combout => \i1_sr|Add1~38_combout\,
	cout => \i1_sr|Add1~39\);

-- Location: LCCOMB_X20_Y13_N20
\Mux12~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~6_combout\ = (\Mux27~2_combout\ & (\Mux12~5_combout\)) # (!\Mux27~2_combout\ & ((\Mux12~5_combout\ & (\i1_sr|Add0~38_combout\)) # (!\Mux12~5_combout\ & ((\i1_sr|Add1~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~2_combout\,
	datab => \Mux12~5_combout\,
	datac => \i1_sr|Add0~38_combout\,
	datad => \i1_sr|Add1~38_combout\,
	combout => \Mux12~6_combout\);

-- Location: LCCOMB_X21_Y15_N6
\Mux12~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~7_combout\ = (\Mux27~13_combout\ & (((\a~combout\(19) & \b~combout\(19))))) # (!\Mux27~13_combout\ & (\Mux12~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~6_combout\,
	datab => \Mux27~13_combout\,
	datac => \a~combout\(19),
	datad => \b~combout\(19),
	combout => \Mux12~7_combout\);

-- Location: LCCOMB_X21_Y13_N24
\i1_sr|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add0~40_combout\ = ((\b_ext[20]~12_combout\ $ (\a~combout\(20) $ (\i1_sr|Add0~39\)))) # (GND)
-- \i1_sr|Add0~41\ = CARRY((\b_ext[20]~12_combout\ & (\a~combout\(20) & !\i1_sr|Add0~39\)) # (!\b_ext[20]~12_combout\ & ((\a~combout\(20)) # (!\i1_sr|Add0~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_ext[20]~12_combout\,
	datab => \a~combout\(20),
	datad => VCC,
	cin => \i1_sr|Add0~39\,
	combout => \i1_sr|Add0~40_combout\,
	cout => \i1_sr|Add0~41\);

-- Location: LCCOMB_X22_Y13_N24
\i1_sr|Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1~40_combout\ = ((\b_ext[20]~12_combout\ $ (\a~combout\(20) $ (!\i1_sr|Add1~39\)))) # (GND)
-- \i1_sr|Add1~41\ = CARRY((\b_ext[20]~12_combout\ & ((\a~combout\(20)) # (!\i1_sr|Add1~39\))) # (!\b_ext[20]~12_combout\ & (\a~combout\(20) & !\i1_sr|Add1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_ext[20]~12_combout\,
	datab => \a~combout\(20),
	datad => VCC,
	cin => \i1_sr|Add1~39\,
	combout => \i1_sr|Add1~40_combout\,
	cout => \i1_sr|Add1~41\);

-- Location: LCCOMB_X20_Y13_N18
\Mux11~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~7_combout\ = (\Mux11~6_combout\ & ((\i1_sr|Add0~40_combout\) # ((\Mux27~2_combout\)))) # (!\Mux11~6_combout\ & (((\i1_sr|Add1~40_combout\ & !\Mux27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~6_combout\,
	datab => \i1_sr|Add0~40_combout\,
	datac => \i1_sr|Add1~40_combout\,
	datad => \Mux27~2_combout\,
	combout => \Mux11~7_combout\);

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[20]~I\ : cycloneii_io
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
	padio => ww_b(20),
	combout => \b~combout\(20));

-- Location: LCCOMB_X22_Y16_N30
\Mux11~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~8_combout\ = (\Mux27~13_combout\ & (((\b~combout\(20) & \a~combout\(20))))) # (!\Mux27~13_combout\ & (\Mux11~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~13_combout\,
	datab => \Mux11~7_combout\,
	datac => \b~combout\(20),
	datad => \a~combout\(20),
	combout => \Mux11~8_combout\);

-- Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[21]~I\ : cycloneii_io
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
	padio => ww_b(21),
	combout => \b~combout\(21));

-- Location: LCCOMB_X21_Y13_N26
\i1_sr|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add0~42_combout\ = (\b_ext[21]~11_combout\ & ((\a~combout\(21) & (!\i1_sr|Add0~41\)) # (!\a~combout\(21) & ((\i1_sr|Add0~41\) # (GND))))) # (!\b_ext[21]~11_combout\ & ((\a~combout\(21) & (\i1_sr|Add0~41\ & VCC)) # (!\a~combout\(21) & 
-- (!\i1_sr|Add0~41\))))
-- \i1_sr|Add0~43\ = CARRY((\b_ext[21]~11_combout\ & ((!\i1_sr|Add0~41\) # (!\a~combout\(21)))) # (!\b_ext[21]~11_combout\ & (!\a~combout\(21) & !\i1_sr|Add0~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_ext[21]~11_combout\,
	datab => \a~combout\(21),
	datad => VCC,
	cin => \i1_sr|Add0~41\,
	combout => \i1_sr|Add0~42_combout\,
	cout => \i1_sr|Add0~43\);

-- Location: LCCOMB_X21_Y16_N22
\Mux10~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = (\Mux10~5_combout\ & (((\alu_op~combout\(0) & \alu_op~combout\(2))) # (!\alu_op~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~5_combout\,
	datab => \alu_op~combout\(3),
	datac => \alu_op~combout\(0),
	datad => \alu_op~combout\(2),
	combout => \Mux10~6_combout\);

-- Location: LCCOMB_X21_Y16_N16
\Mux10~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~7_combout\ = (\Mux27~10_combout\ & (or_out(21) & (\Mux27~9_combout\))) # (!\Mux27~10_combout\ & (((\Mux10~6_combout\) # (!\Mux27~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => or_out(21),
	datab => \Mux27~10_combout\,
	datac => \Mux27~9_combout\,
	datad => \Mux10~6_combout\,
	combout => \Mux10~7_combout\);

-- Location: LCCOMB_X21_Y16_N18
\b_ext[21]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_ext[21]~11_combout\ = (\Equal0~1_combout\ & (\b~combout\(21))) # (!\Equal0~1_combout\ & ((\a~combout\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(21),
	datab => \Equal0~1_combout\,
	datac => \a~combout\(21),
	combout => \b_ext[21]~11_combout\);

-- Location: LCCOMB_X22_Y13_N26
\i1_sr|Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1~42_combout\ = (\a~combout\(21) & ((\b_ext[21]~11_combout\ & (\i1_sr|Add1~41\ & VCC)) # (!\b_ext[21]~11_combout\ & (!\i1_sr|Add1~41\)))) # (!\a~combout\(21) & ((\b_ext[21]~11_combout\ & (!\i1_sr|Add1~41\)) # (!\b_ext[21]~11_combout\ & 
-- ((\i1_sr|Add1~41\) # (GND)))))
-- \i1_sr|Add1~43\ = CARRY((\a~combout\(21) & (!\b_ext[21]~11_combout\ & !\i1_sr|Add1~41\)) # (!\a~combout\(21) & ((!\i1_sr|Add1~41\) # (!\b_ext[21]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(21),
	datab => \b_ext[21]~11_combout\,
	datad => VCC,
	cin => \i1_sr|Add1~41\,
	combout => \i1_sr|Add1~42_combout\,
	cout => \i1_sr|Add1~43\);

-- Location: LCCOMB_X21_Y16_N2
\Mux10~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~8_combout\ = (\Mux27~2_combout\ & (((\Mux10~7_combout\)))) # (!\Mux27~2_combout\ & ((\Mux10~7_combout\ & (\i1_sr|Add0~42_combout\)) # (!\Mux10~7_combout\ & ((\i1_sr|Add1~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~2_combout\,
	datab => \i1_sr|Add0~42_combout\,
	datac => \Mux10~7_combout\,
	datad => \i1_sr|Add1~42_combout\,
	combout => \Mux10~8_combout\);

-- Location: LCCOMB_X21_Y16_N20
\Mux10~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~9_combout\ = (\Mux27~13_combout\ & (\b~combout\(21) & (\a~combout\(21)))) # (!\Mux27~13_combout\ & (((\Mux10~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(21),
	datab => \Mux27~13_combout\,
	datac => \a~combout\(21),
	datad => \Mux10~8_combout\,
	combout => \Mux10~9_combout\);

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[22]~I\ : cycloneii_io
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
	padio => ww_b(22),
	combout => \b~combout\(22));

-- Location: LCCOMB_X22_Y16_N24
\b_ext[22]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_ext[22]~10_combout\ = (\Equal0~1_combout\ & ((\b~combout\(22)))) # (!\Equal0~1_combout\ & (\a~combout\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(22),
	datac => \b~combout\(22),
	datad => \Equal0~1_combout\,
	combout => \b_ext[22]~10_combout\);

-- Location: LCCOMB_X21_Y13_N28
\i1_sr|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add0~44_combout\ = ((\a~combout\(22) $ (\b_ext[22]~10_combout\ $ (\i1_sr|Add0~43\)))) # (GND)
-- \i1_sr|Add0~45\ = CARRY((\a~combout\(22) & ((!\i1_sr|Add0~43\) # (!\b_ext[22]~10_combout\))) # (!\a~combout\(22) & (!\b_ext[22]~10_combout\ & !\i1_sr|Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(22),
	datab => \b_ext[22]~10_combout\,
	datad => VCC,
	cin => \i1_sr|Add0~43\,
	combout => \i1_sr|Add0~44_combout\,
	cout => \i1_sr|Add0~45\);

-- Location: LCCOMB_X22_Y13_N28
\i1_sr|Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1~44_combout\ = ((\b_ext[22]~10_combout\ $ (\a~combout\(22) $ (!\i1_sr|Add1~43\)))) # (GND)
-- \i1_sr|Add1~45\ = CARRY((\b_ext[22]~10_combout\ & ((\a~combout\(22)) # (!\i1_sr|Add1~43\))) # (!\b_ext[22]~10_combout\ & (\a~combout\(22) & !\i1_sr|Add1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_ext[22]~10_combout\,
	datab => \a~combout\(22),
	datad => VCC,
	cin => \i1_sr|Add1~43\,
	combout => \i1_sr|Add1~44_combout\,
	cout => \i1_sr|Add1~45\);

-- Location: LCCOMB_X20_Y13_N16
\Mux9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~6_combout\ = (\Mux9~5_combout\ & ((\i1_sr|Add0~44_combout\) # ((\Mux27~2_combout\)))) # (!\Mux9~5_combout\ & (((!\Mux27~2_combout\ & \i1_sr|Add1~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~5_combout\,
	datab => \i1_sr|Add0~44_combout\,
	datac => \Mux27~2_combout\,
	datad => \i1_sr|Add1~44_combout\,
	combout => \Mux9~6_combout\);

-- Location: LCCOMB_X22_Y16_N10
\Mux9~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~7_combout\ = (\Mux27~13_combout\ & (((\a~combout\(22) & \b~combout\(22))))) # (!\Mux27~13_combout\ & (\Mux9~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~6_combout\,
	datab => \a~combout\(22),
	datac => \b~combout\(22),
	datad => \Mux27~13_combout\,
	combout => \Mux9~7_combout\);

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[23]~I\ : cycloneii_io
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
	padio => ww_b(23),
	combout => \b~combout\(23));

-- Location: LCCOMB_X21_Y16_N28
\Mux8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\Mux8~3_combout\ & (((\alu_op~combout\(0) & \alu_op~combout\(2))) # (!\alu_op~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~3_combout\,
	datab => \alu_op~combout\(3),
	datac => \alu_op~combout\(0),
	datad => \alu_op~combout\(2),
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X21_Y16_N30
\Mux8~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = (\Mux27~10_combout\ & (or_out(23) & (\Mux27~9_combout\))) # (!\Mux27~10_combout\ & (((\Mux8~4_combout\) # (!\Mux27~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => or_out(23),
	datab => \Mux27~10_combout\,
	datac => \Mux27~9_combout\,
	datad => \Mux8~4_combout\,
	combout => \Mux8~5_combout\);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[23]~I\ : cycloneii_io
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
	padio => ww_a(23),
	combout => \a~combout\(23));

-- Location: LCCOMB_X21_Y13_N30
\i1_sr|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add0~46_combout\ = (\b_ext[23]~9_combout\ & ((\a~combout\(23) & (!\i1_sr|Add0~45\)) # (!\a~combout\(23) & ((\i1_sr|Add0~45\) # (GND))))) # (!\b_ext[23]~9_combout\ & ((\a~combout\(23) & (\i1_sr|Add0~45\ & VCC)) # (!\a~combout\(23) & 
-- (!\i1_sr|Add0~45\))))
-- \i1_sr|Add0~47\ = CARRY((\b_ext[23]~9_combout\ & ((!\i1_sr|Add0~45\) # (!\a~combout\(23)))) # (!\b_ext[23]~9_combout\ & (!\a~combout\(23) & !\i1_sr|Add0~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_ext[23]~9_combout\,
	datab => \a~combout\(23),
	datad => VCC,
	cin => \i1_sr|Add0~45\,
	combout => \i1_sr|Add0~46_combout\,
	cout => \i1_sr|Add0~47\);

-- Location: LCCOMB_X21_Y16_N0
\b_ext[23]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_ext[23]~9_combout\ = (\Equal0~1_combout\ & ((\b~combout\(23)))) # (!\Equal0~1_combout\ & (\a~combout\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(23),
	datab => \Equal0~1_combout\,
	datac => \b~combout\(23),
	combout => \b_ext[23]~9_combout\);

-- Location: LCCOMB_X22_Y13_N30
\i1_sr|Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1~46_combout\ = (\a~combout\(23) & ((\b_ext[23]~9_combout\ & (\i1_sr|Add1~45\ & VCC)) # (!\b_ext[23]~9_combout\ & (!\i1_sr|Add1~45\)))) # (!\a~combout\(23) & ((\b_ext[23]~9_combout\ & (!\i1_sr|Add1~45\)) # (!\b_ext[23]~9_combout\ & 
-- ((\i1_sr|Add1~45\) # (GND)))))
-- \i1_sr|Add1~47\ = CARRY((\a~combout\(23) & (!\b_ext[23]~9_combout\ & !\i1_sr|Add1~45\)) # (!\a~combout\(23) & ((!\i1_sr|Add1~45\) # (!\b_ext[23]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(23),
	datab => \b_ext[23]~9_combout\,
	datad => VCC,
	cin => \i1_sr|Add1~45\,
	combout => \i1_sr|Add1~46_combout\,
	cout => \i1_sr|Add1~47\);

-- Location: LCCOMB_X21_Y16_N8
\Mux8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~6_combout\ = (\Mux27~2_combout\ & (\Mux8~5_combout\)) # (!\Mux27~2_combout\ & ((\Mux8~5_combout\ & (\i1_sr|Add0~46_combout\)) # (!\Mux8~5_combout\ & ((\i1_sr|Add1~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~2_combout\,
	datab => \Mux8~5_combout\,
	datac => \i1_sr|Add0~46_combout\,
	datad => \i1_sr|Add1~46_combout\,
	combout => \Mux8~6_combout\);

-- Location: LCCOMB_X21_Y16_N26
\Mux8~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~7_combout\ = (\Mux27~13_combout\ & (\b~combout\(23) & ((\a~combout\(23))))) # (!\Mux27~13_combout\ & (((\Mux8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(23),
	datab => \Mux8~6_combout\,
	datac => \Mux27~13_combout\,
	datad => \a~combout\(23),
	combout => \Mux8~7_combout\);

-- Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[24]~I\ : cycloneii_io
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
	padio => ww_b(24),
	combout => \b~combout\(24));

-- Location: LCCOMB_X22_Y12_N28
\b_ext[24]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_ext[24]~8_combout\ = (\Equal0~1_combout\ & (\b~combout\(24))) # (!\Equal0~1_combout\ & ((\a~combout\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \b~combout\(24),
	datac => \a~combout\(24),
	combout => \b_ext[24]~8_combout\);

-- Location: LCCOMB_X22_Y12_N0
\i1_sr|Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1~48_combout\ = ((\a~combout\(24) $ (\b_ext[24]~8_combout\ $ (!\i1_sr|Add1~47\)))) # (GND)
-- \i1_sr|Add1~49\ = CARRY((\a~combout\(24) & ((\b_ext[24]~8_combout\) # (!\i1_sr|Add1~47\))) # (!\a~combout\(24) & (\b_ext[24]~8_combout\ & !\i1_sr|Add1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(24),
	datab => \b_ext[24]~8_combout\,
	datad => VCC,
	cin => \i1_sr|Add1~47\,
	combout => \i1_sr|Add1~48_combout\,
	cout => \i1_sr|Add1~49\);

-- Location: LCCOMB_X21_Y12_N0
\i1_sr|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add0~48_combout\ = ((\b_ext[24]~8_combout\ $ (\a~combout\(24) $ (\i1_sr|Add0~47\)))) # (GND)
-- \i1_sr|Add0~49\ = CARRY((\b_ext[24]~8_combout\ & (\a~combout\(24) & !\i1_sr|Add0~47\)) # (!\b_ext[24]~8_combout\ & ((\a~combout\(24)) # (!\i1_sr|Add0~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_ext[24]~8_combout\,
	datab => \a~combout\(24),
	datad => VCC,
	cin => \i1_sr|Add0~47\,
	combout => \i1_sr|Add0~48_combout\,
	cout => \i1_sr|Add0~49\);

-- Location: LCCOMB_X27_Y12_N30
\xor_out[24]\ : cycloneii_lcell_comb
-- Equation(s):
-- xor_out(24) = \a~combout\(24) $ (\b~combout\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(24),
	datad => \b~combout\(24),
	combout => xor_out(24));

-- Location: LCCOMB_X25_Y15_N22
\Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\shamt~combout\(4)) # ((!\shamt~combout\(3) & \shamt~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shamt~combout\(3),
	datac => \shamt~combout\(4),
	datad => \shamt~combout\(2),
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X29_Y15_N24
\ShiftLeft0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~24_combout\ = (!\shamt~combout\(3) & (\shamt~combout\(2) & ((\ShiftLeft0~13_combout\) # (\ShiftLeft0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~13_combout\,
	datab => \shamt~combout\(3),
	datac => \shamt~combout\(2),
	datad => \ShiftLeft0~14_combout\,
	combout => \ShiftLeft0~24_combout\);

-- Location: LCCOMB_X29_Y14_N18
\ShiftLeft0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~27_combout\ = (\ShiftRight0~47_combout\ & ((\shamt~combout\(0) & (\ShiftLeft0~22_combout\)) # (!\shamt~combout\(0) & ((\ShiftLeft0~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~22_combout\,
	datab => \ShiftRight0~47_combout\,
	datac => \ShiftLeft0~26_combout\,
	datad => \shamt~combout\(0),
	combout => \ShiftLeft0~27_combout\);

-- Location: LCCOMB_X30_Y14_N0
\ShiftLeft0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~25_combout\ = (!\ShiftLeft0~4_combout\ & (\shamt~combout\(3) & \a~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~4_combout\,
	datac => \shamt~combout\(3),
	datad => \a~combout\(0),
	combout => \ShiftLeft0~25_combout\);

-- Location: LCCOMB_X27_Y15_N14
\ShiftLeft0~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~85_combout\ = (\ShiftLeft0~24_combout\) # ((\ShiftLeft0~27_combout\) # (\ShiftLeft0~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~24_combout\,
	datac => \ShiftLeft0~27_combout\,
	datad => \ShiftLeft0~25_combout\,
	combout => \ShiftLeft0~85_combout\);

-- Location: LCCOMB_X22_Y16_N20
\ShiftLeft0~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~83_combout\ = (\shamt~combout\(1) & (\a~combout\(22))) # (!\shamt~combout\(1) & ((\a~combout\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datab => \a~combout\(22),
	datad => \a~combout\(24),
	combout => \ShiftLeft0~83_combout\);

-- Location: LCCOMB_X27_Y15_N2
\ShiftLeft0~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~84_combout\ = (\shamt~combout\(0) & (\ShiftLeft0~80_combout\)) # (!\shamt~combout\(0) & ((\ShiftLeft0~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~80_combout\,
	datac => \shamt~combout\(0),
	datad => \ShiftLeft0~83_combout\,
	combout => \ShiftLeft0~84_combout\);

-- Location: LCCOMB_X27_Y15_N12
\Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\Mux17~2_combout\ & (((\ShiftLeft0~84_combout\ & !\Mux6~2_combout\)))) # (!\Mux17~2_combout\ & ((\ShiftLeft0~58_combout\) # ((\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~58_combout\,
	datab => \ShiftLeft0~84_combout\,
	datac => \Mux17~2_combout\,
	datad => \Mux6~2_combout\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X27_Y15_N0
\Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\Mux6~2_combout\ & ((\Mux7~2_combout\ & ((\ShiftLeft0~85_combout\))) # (!\Mux7~2_combout\ & (\ShiftLeft0~70_combout\)))) # (!\Mux6~2_combout\ & (((\Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~70_combout\,
	datab => \Mux6~2_combout\,
	datac => \ShiftLeft0~85_combout\,
	datad => \Mux7~2_combout\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X27_Y12_N18
\Mux7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\Mux29~6_combout\ & (((!\Mux29~10_combout\)))) # (!\Mux29~6_combout\ & ((\Mux29~10_combout\ & (\Mux7~1_combout\)) # (!\Mux29~10_combout\ & ((\Mux7~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \Mux29~6_combout\,
	datac => \Mux7~3_combout\,
	datad => \Mux29~10_combout\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X27_Y14_N12
\ShiftRight0~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~66_combout\ = (!\shamt~combout\(3) & ((\shamt~combout\(2) & ((\ShiftRight0~5_combout\))) # (!\shamt~combout\(2) & (\ShiftRight0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~8_combout\,
	datab => \shamt~combout\(3),
	datac => \ShiftRight0~5_combout\,
	datad => \shamt~combout\(2),
	combout => \ShiftRight0~66_combout\);

-- Location: LCCOMB_X27_Y12_N20
\Mux7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\Mux6~1_combout\ & ((\Mux7~4_combout\ & (xor_out(24))) # (!\Mux7~4_combout\ & ((\ShiftRight0~66_combout\))))) # (!\Mux6~1_combout\ & (((\Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => xor_out(24),
	datac => \Mux7~4_combout\,
	datad => \ShiftRight0~66_combout\,
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X25_Y12_N16
\Mux7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (\Mux6~0_combout\ & (((!\Equal0~0_combout\)))) # (!\Mux6~0_combout\ & ((\Equal0~0_combout\ & (\i1_sr|Add0~48_combout\)) # (!\Equal0~0_combout\ & ((\Mux7~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \i1_sr|Add0~48_combout\,
	datac => \Equal0~0_combout\,
	datad => \Mux7~5_combout\,
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X24_Y12_N12
\Mux13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\alu_op~combout\(3) & \shamt~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(3),
	datad => \shamt~combout\(4),
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X24_Y12_N14
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\alu_op~combout\(0) & (\alu_op~combout\(2) & ((\Mux13~2_combout\)))) # (!\alu_op~combout\(0) & (!\alu_op~combout\(2) & (\i1_sr|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(0),
	datab => \alu_op~combout\(2),
	datac => \i1_sr|Equal0~0_combout\,
	datad => \Mux13~2_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X25_Y12_N18
\Mux7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = (\Mux7~6_combout\ & ((\a~combout\(31)) # ((!\Mux6~0_combout\)))) # (!\Mux7~6_combout\ & (((\i1_sr|Add1~48_combout\ & \Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(31),
	datab => \i1_sr|Add1~48_combout\,
	datac => \Mux7~6_combout\,
	datad => \Mux6~0_combout\,
	combout => \Mux7~7_combout\);

-- Location: LCCOMB_X27_Y12_N12
\Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\a~combout\(24) & ((\b~combout\(24)) # (!\alu_op~combout\(0)))) # (!\a~combout\(24) & (!\alu_op~combout\(0) & \b~combout\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(24),
	datac => \alu_op~combout\(0),
	datad => \b~combout\(24),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X27_Y12_N22
\Mux7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~8_combout\ = (\alu_op~combout\(1) & (((\Mux29~6_combout\ & \Mux7~0_combout\)))) # (!\alu_op~combout\(1) & (\Mux7~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(1),
	datab => \Mux7~7_combout\,
	datac => \Mux29~6_combout\,
	datad => \Mux7~0_combout\,
	combout => \Mux7~8_combout\);

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[25]~I\ : cycloneii_io
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
	padio => ww_b(25),
	combout => \b~combout\(25));

-- Location: LCCOMB_X22_Y12_N18
\b_ext[25]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_ext[25]~7_combout\ = (\Equal0~1_combout\ & (\b~combout\(25))) # (!\Equal0~1_combout\ & ((\a~combout\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \b~combout\(25),
	datad => \a~combout\(25),
	combout => \b_ext[25]~7_combout\);

-- Location: LCCOMB_X21_Y12_N2
\i1_sr|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add0~50_combout\ = (\a~combout\(25) & ((\b_ext[25]~7_combout\ & (!\i1_sr|Add0~49\)) # (!\b_ext[25]~7_combout\ & (\i1_sr|Add0~49\ & VCC)))) # (!\a~combout\(25) & ((\b_ext[25]~7_combout\ & ((\i1_sr|Add0~49\) # (GND))) # (!\b_ext[25]~7_combout\ & 
-- (!\i1_sr|Add0~49\))))
-- \i1_sr|Add0~51\ = CARRY((\a~combout\(25) & (\b_ext[25]~7_combout\ & !\i1_sr|Add0~49\)) # (!\a~combout\(25) & ((\b_ext[25]~7_combout\) # (!\i1_sr|Add0~49\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(25),
	datab => \b_ext[25]~7_combout\,
	datad => VCC,
	cin => \i1_sr|Add0~49\,
	combout => \i1_sr|Add0~50_combout\,
	cout => \i1_sr|Add0~51\);

-- Location: LCCOMB_X26_Y15_N28
\ShiftLeft0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~56_combout\ = (\shamt~combout\(1) & ((\a~combout\(14)))) # (!\shamt~combout\(1) & (\a~combout\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datac => \a~combout\(16),
	datad => \a~combout\(14),
	combout => \ShiftLeft0~56_combout\);

-- Location: LCCOMB_X24_Y16_N4
\ShiftLeft0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~60_combout\ = (\shamt~combout\(0) & ((\ShiftLeft0~56_combout\))) # (!\shamt~combout\(0) & (\ShiftLeft0~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~59_combout\,
	datac => \ShiftLeft0~56_combout\,
	datad => \shamt~combout\(0),
	combout => \ShiftLeft0~60_combout\);

-- Location: LCCOMB_X25_Y15_N2
\ShiftLeft0~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~61_combout\ = (\shamt~combout\(2) & (\ShiftLeft0~45_combout\)) # (!\shamt~combout\(2) & ((\ShiftLeft0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~45_combout\,
	datab => \ShiftLeft0~60_combout\,
	datad => \shamt~combout\(2),
	combout => \ShiftLeft0~61_combout\);

-- Location: LCCOMB_X25_Y15_N8
\Mux6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\Mux17~2_combout\ & (\ShiftLeft0~87_combout\ & ((!\Mux6~2_combout\)))) # (!\Mux17~2_combout\ & (((\ShiftLeft0~61_combout\) # (\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~87_combout\,
	datab => \ShiftLeft0~61_combout\,
	datac => \Mux17~2_combout\,
	datad => \Mux6~2_combout\,
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X24_Y16_N28
\ShiftLeft0~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~69_combout\ = (\shamt~combout\(1) & (\a~combout\(18))) # (!\shamt~combout\(1) & ((\a~combout\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(18),
	datac => \shamt~combout\(1),
	datad => \a~combout\(20),
	combout => \ShiftLeft0~69_combout\);

-- Location: LCCOMB_X24_Y16_N8
\ShiftLeft0~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~73_combout\ = (\shamt~combout\(0) & ((\ShiftLeft0~69_combout\))) # (!\shamt~combout\(0) & (\ShiftLeft0~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~72_combout\,
	datab => \ShiftLeft0~69_combout\,
	datad => \shamt~combout\(0),
	combout => \ShiftLeft0~73_combout\);

-- Location: LCCOMB_X25_Y15_N4
\Mux6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (\Mux6~5_combout\ & ((\ShiftLeft0~88_combout\) # ((!\Mux6~2_combout\)))) # (!\Mux6~5_combout\ & (((\ShiftLeft0~73_combout\ & \Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~88_combout\,
	datab => \Mux6~5_combout\,
	datac => \ShiftLeft0~73_combout\,
	datad => \Mux6~2_combout\,
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X27_Y12_N26
\Mux6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = (\Mux29~6_combout\ & (((!\Mux29~10_combout\)))) # (!\Mux29~6_combout\ & ((\Mux29~10_combout\ & (\Mux6~4_combout\)) # (!\Mux29~10_combout\ & ((\Mux6~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~4_combout\,
	datab => \Mux29~6_combout\,
	datac => \Mux6~6_combout\,
	datad => \Mux29~10_combout\,
	combout => \Mux6~7_combout\);

-- Location: LCCOMB_X30_Y13_N8
\ShiftRight0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~41_combout\ = (\shamt~combout\(2) & ((\shamt~combout\(1) & ((\ShiftRight0~40_combout\))) # (!\shamt~combout\(1) & (\ShiftRight1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~14_combout\,
	datab => \ShiftRight0~40_combout\,
	datac => \shamt~combout\(2),
	datad => \shamt~combout\(1),
	combout => \ShiftRight0~41_combout\);

-- Location: LCCOMB_X27_Y16_N24
\ShiftRight0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~6_combout\ = (\shamt~combout\(1) & (\a~combout\(27))) # (!\shamt~combout\(1) & ((\a~combout\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(27),
	datac => \shamt~combout\(1),
	datad => \a~combout\(25),
	combout => \ShiftRight0~6_combout\);

-- Location: LCCOMB_X30_Y15_N26
\ShiftRight1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~13_combout\ = (\shamt~combout\(1) & ((\a~combout\(28)))) # (!\shamt~combout\(1) & (\a~combout\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datab => \a~combout\(26),
	datac => \a~combout\(28),
	combout => \ShiftRight1~13_combout\);

-- Location: LCCOMB_X30_Y13_N10
\ShiftRight0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~39_combout\ = (!\shamt~combout\(2) & ((\shamt~combout\(0) & ((\ShiftRight1~13_combout\))) # (!\shamt~combout\(0) & (\ShiftRight0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(2),
	datab => \ShiftRight0~6_combout\,
	datac => \shamt~combout\(0),
	datad => \ShiftRight1~13_combout\,
	combout => \ShiftRight0~39_combout\);

-- Location: LCCOMB_X30_Y13_N14
\ShiftRight0~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~68_combout\ = (!\shamt~combout\(3) & ((\ShiftRight0~41_combout\) # (\ShiftRight0~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(3),
	datac => \ShiftRight0~41_combout\,
	datad => \ShiftRight0~39_combout\,
	combout => \ShiftRight0~68_combout\);

-- Location: LCCOMB_X27_Y16_N4
\xor_out[25]\ : cycloneii_lcell_comb
-- Equation(s):
-- xor_out(25) = \a~combout\(25) $ (\b~combout\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(25),
	datac => \b~combout\(25),
	combout => xor_out(25));

-- Location: LCCOMB_X25_Y12_N12
\Mux6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~8_combout\ = (\Mux6~1_combout\ & ((\Mux6~7_combout\ & ((xor_out(25)))) # (!\Mux6~7_combout\ & (\ShiftRight0~68_combout\)))) # (!\Mux6~1_combout\ & (\Mux6~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \Mux6~7_combout\,
	datac => \ShiftRight0~68_combout\,
	datad => xor_out(25),
	combout => \Mux6~8_combout\);

-- Location: LCCOMB_X25_Y12_N30
\Mux6~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~9_combout\ = (\Mux6~0_combout\ & (((!\Equal0~0_combout\)))) # (!\Mux6~0_combout\ & ((\Equal0~0_combout\ & (\i1_sr|Add0~50_combout\)) # (!\Equal0~0_combout\ & ((\Mux6~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \i1_sr|Add0~50_combout\,
	datac => \Equal0~0_combout\,
	datad => \Mux6~8_combout\,
	combout => \Mux6~9_combout\);

-- Location: LCCOMB_X22_Y12_N2
\i1_sr|Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1~50_combout\ = (\a~combout\(25) & ((\b_ext[25]~7_combout\ & (\i1_sr|Add1~49\ & VCC)) # (!\b_ext[25]~7_combout\ & (!\i1_sr|Add1~49\)))) # (!\a~combout\(25) & ((\b_ext[25]~7_combout\ & (!\i1_sr|Add1~49\)) # (!\b_ext[25]~7_combout\ & 
-- ((\i1_sr|Add1~49\) # (GND)))))
-- \i1_sr|Add1~51\ = CARRY((\a~combout\(25) & (!\b_ext[25]~7_combout\ & !\i1_sr|Add1~49\)) # (!\a~combout\(25) & ((!\i1_sr|Add1~49\) # (!\b_ext[25]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(25),
	datab => \b_ext[25]~7_combout\,
	datad => VCC,
	cin => \i1_sr|Add1~49\,
	combout => \i1_sr|Add1~50_combout\,
	cout => \i1_sr|Add1~51\);

-- Location: LCCOMB_X25_Y12_N24
\Mux6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~10_combout\ = (\Mux6~0_combout\ & ((\Mux6~9_combout\ & (\a~combout\(31))) # (!\Mux6~9_combout\ & ((\i1_sr|Add1~50_combout\))))) # (!\Mux6~0_combout\ & (\Mux6~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \Mux6~9_combout\,
	datac => \a~combout\(31),
	datad => \i1_sr|Add1~50_combout\,
	combout => \Mux6~10_combout\);

-- Location: LCCOMB_X26_Y12_N2
\Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\a~combout\(25) & ((\b~combout\(25)) # (!\alu_op~combout\(0)))) # (!\a~combout\(25) & (!\alu_op~combout\(0) & \b~combout\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(25),
	datac => \alu_op~combout\(0),
	datad => \b~combout\(25),
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X26_Y12_N12
\Mux6~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~11_combout\ = (\alu_op~combout\(1) & (\Mux29~6_combout\ & ((\Mux6~3_combout\)))) # (!\alu_op~combout\(1) & (((\Mux6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(1),
	datab => \Mux29~6_combout\,
	datac => \Mux6~10_combout\,
	datad => \Mux6~3_combout\,
	combout => \Mux6~11_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[26]~I\ : cycloneii_io
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
	padio => ww_b(26),
	combout => \b~combout\(26));

-- Location: LCCOMB_X22_Y12_N24
\b_ext[26]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_ext[26]~6_combout\ = (\Equal0~1_combout\ & (\b~combout\(26))) # (!\Equal0~1_combout\ & ((\a~combout\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(26),
	datac => \Equal0~1_combout\,
	datad => \a~combout\(26),
	combout => \b_ext[26]~6_combout\);

-- Location: LCCOMB_X21_Y12_N4
\i1_sr|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add0~52_combout\ = ((\a~combout\(26) $ (\b_ext[26]~6_combout\ $ (\i1_sr|Add0~51\)))) # (GND)
-- \i1_sr|Add0~53\ = CARRY((\a~combout\(26) & ((!\i1_sr|Add0~51\) # (!\b_ext[26]~6_combout\))) # (!\a~combout\(26) & (!\b_ext[26]~6_combout\ & !\i1_sr|Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(26),
	datab => \b_ext[26]~6_combout\,
	datad => VCC,
	cin => \i1_sr|Add0~51\,
	combout => \i1_sr|Add0~52_combout\,
	cout => \i1_sr|Add0~53\);

-- Location: LCCOMB_X27_Y12_N28
\Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\alu_op~combout\(2) & (\ShiftRight1~52_combout\ & \alu_op~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(2),
	datab => \ShiftRight1~52_combout\,
	datac => \alu_op~combout\(0),
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X27_Y12_N6
\Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\Mux29~10_combout\ & (((!\Mux29~6_combout\ & \Mux5~1_combout\)))) # (!\Mux29~10_combout\ & ((\Mux5~3_combout\) # ((\Mux29~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux29~10_combout\,
	datac => \Mux29~6_combout\,
	datad => \Mux5~1_combout\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X20_Y13_N2
\xor_out[26]\ : cycloneii_lcell_comb
-- Equation(s):
-- xor_out(26) = \b~combout\(26) $ (\a~combout\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(26),
	datad => \a~combout\(26),
	combout => xor_out(26));

-- Location: LCCOMB_X30_Y14_N12
\ShiftRight0~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~69_combout\ = (\ShiftRight0~44_combout\ & !\shamt~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~44_combout\,
	datac => \shamt~combout\(3),
	combout => \ShiftRight0~69_combout\);

-- Location: LCCOMB_X25_Y12_N20
\Mux5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\Mux6~1_combout\ & ((\Mux5~4_combout\ & (xor_out(26))) # (!\Mux5~4_combout\ & ((\ShiftRight0~69_combout\))))) # (!\Mux6~1_combout\ & (\Mux5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \Mux5~4_combout\,
	datac => xor_out(26),
	datad => \ShiftRight0~69_combout\,
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X25_Y12_N14
\Mux5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (\Equal0~0_combout\ & (\i1_sr|Add0~52_combout\ & ((!\Mux6~0_combout\)))) # (!\Equal0~0_combout\ & (((\Mux5~5_combout\) # (\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \i1_sr|Add0~52_combout\,
	datac => \Mux5~5_combout\,
	datad => \Mux6~0_combout\,
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X22_Y12_N4
\i1_sr|Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1~52_combout\ = ((\b_ext[26]~6_combout\ $ (\a~combout\(26) $ (!\i1_sr|Add1~51\)))) # (GND)
-- \i1_sr|Add1~53\ = CARRY((\b_ext[26]~6_combout\ & ((\a~combout\(26)) # (!\i1_sr|Add1~51\))) # (!\b_ext[26]~6_combout\ & (\a~combout\(26) & !\i1_sr|Add1~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_ext[26]~6_combout\,
	datab => \a~combout\(26),
	datad => VCC,
	cin => \i1_sr|Add1~51\,
	combout => \i1_sr|Add1~52_combout\,
	cout => \i1_sr|Add1~53\);

-- Location: LCCOMB_X25_Y12_N8
\Mux5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = (\Mux6~0_combout\ & ((\Mux5~6_combout\ & (\a~combout\(31))) # (!\Mux5~6_combout\ & ((\i1_sr|Add1~52_combout\))))) # (!\Mux6~0_combout\ & (\Mux5~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \Mux5~6_combout\,
	datac => \a~combout\(31),
	datad => \i1_sr|Add1~52_combout\,
	combout => \Mux5~7_combout\);

-- Location: LCCOMB_X25_Y12_N2
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\alu_op~combout\(0) & (\b~combout\(26) & \a~combout\(26))) # (!\alu_op~combout\(0) & ((\b~combout\(26)) # (\a~combout\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_op~combout\(0),
	datac => \b~combout\(26),
	datad => \a~combout\(26),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X25_Y12_N10
\Mux5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~8_combout\ = (\alu_op~combout\(1) & (\Mux29~6_combout\ & ((\Mux5~0_combout\)))) # (!\alu_op~combout\(1) & (((\Mux5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(1),
	datab => \Mux29~6_combout\,
	datac => \Mux5~7_combout\,
	datad => \Mux5~0_combout\,
	combout => \Mux5~8_combout\);

-- Location: LCCOMB_X22_Y12_N6
\i1_sr|Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1~54_combout\ = (\b_ext[27]~5_combout\ & ((\a~combout\(27) & (\i1_sr|Add1~53\ & VCC)) # (!\a~combout\(27) & (!\i1_sr|Add1~53\)))) # (!\b_ext[27]~5_combout\ & ((\a~combout\(27) & (!\i1_sr|Add1~53\)) # (!\a~combout\(27) & ((\i1_sr|Add1~53\) # 
-- (GND)))))
-- \i1_sr|Add1~55\ = CARRY((\b_ext[27]~5_combout\ & (!\a~combout\(27) & !\i1_sr|Add1~53\)) # (!\b_ext[27]~5_combout\ & ((!\i1_sr|Add1~53\) # (!\a~combout\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_ext[27]~5_combout\,
	datab => \a~combout\(27),
	datad => VCC,
	cin => \i1_sr|Add1~53\,
	combout => \i1_sr|Add1~54_combout\,
	cout => \i1_sr|Add1~55\);

-- Location: LCCOMB_X29_Y13_N10
\ShiftRight1~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~55_combout\ = (\shamt~combout\(3) & (\a~combout\(31))) # (!\shamt~combout\(3) & ((\shamt~combout\(2) & (\a~combout\(31))) # (!\shamt~combout\(2) & ((\ShiftRight1~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(31),
	datab => \shamt~combout\(3),
	datac => \shamt~combout\(2),
	datad => \ShiftRight1~34_combout\,
	combout => \ShiftRight1~55_combout\);

-- Location: LCCOMB_X26_Y12_N14
\Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\alu_op~combout\(0) & (\alu_op~combout\(2) & \ShiftRight1~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(0),
	datac => \alu_op~combout\(2),
	datad => \ShiftRight1~55_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X25_Y16_N22
\ShiftLeft0~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~111_combout\ = (\shamt~combout\(3) & (((!\shamt~combout\(2) & \ShiftLeft0~11_combout\)))) # (!\shamt~combout\(3) & (\ShiftLeft0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(3),
	datab => \ShiftLeft0~39_combout\,
	datac => \shamt~combout\(2),
	datad => \ShiftLeft0~11_combout\,
	combout => \ShiftLeft0~111_combout\);

-- Location: LCCOMB_X30_Y15_N22
\ShiftLeft0~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~93_combout\ = (\shamt~combout\(1) & ((\shamt~combout\(0) & (\a~combout\(24))) # (!\shamt~combout\(0) & ((\a~combout\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datab => \a~combout\(24),
	datac => \a~combout\(25),
	datad => \shamt~combout\(0),
	combout => \ShiftLeft0~93_combout\);

-- Location: LCCOMB_X30_Y15_N0
\ShiftLeft0~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~94_combout\ = (\shamt~combout\(0) & (\a~combout\(26))) # (!\shamt~combout\(0) & ((\a~combout\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(26),
	datac => \a~combout\(27),
	datad => \shamt~combout\(0),
	combout => \ShiftLeft0~94_combout\);

-- Location: LCCOMB_X30_Y15_N2
\ShiftLeft0~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~95_combout\ = (\ShiftLeft0~93_combout\) # ((!\shamt~combout\(1) & \ShiftLeft0~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(1),
	datab => \ShiftLeft0~93_combout\,
	datad => \ShiftLeft0~94_combout\,
	combout => \ShiftLeft0~95_combout\);

-- Location: LCCOMB_X25_Y16_N4
\Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\Mux17~2_combout\ & (((!\Mux6~2_combout\ & \ShiftLeft0~95_combout\)))) # (!\Mux17~2_combout\ & ((\ShiftLeft0~68_combout\) # ((\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~2_combout\,
	datab => \ShiftLeft0~68_combout\,
	datac => \Mux6~2_combout\,
	datad => \ShiftLeft0~95_combout\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X25_Y16_N14
\Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\Mux6~2_combout\ & ((\Mux4~2_combout\ & ((\ShiftLeft0~111_combout\))) # (!\Mux4~2_combout\ & (\ShiftLeft0~81_combout\)))) # (!\Mux6~2_combout\ & (((\Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~81_combout\,
	datab => \ShiftLeft0~111_combout\,
	datac => \Mux6~2_combout\,
	datad => \Mux4~2_combout\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X26_Y12_N24
\Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\Mux29~10_combout\ & (!\Mux29~6_combout\ & (\Mux4~1_combout\))) # (!\Mux29~10_combout\ & ((\Mux29~6_combout\) # ((\Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~10_combout\,
	datab => \Mux29~6_combout\,
	datac => \Mux4~1_combout\,
	datad => \Mux4~3_combout\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X24_Y12_N0
\Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (!\alu_op~combout\(3) & (\alu_op~combout\(2) & ((!\shamt~combout\(4)) # (!\alu_op~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(3),
	datab => \alu_op~combout\(2),
	datac => \alu_op~combout\(0),
	datad => \shamt~combout\(4),
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X25_Y12_N0
\Mux4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\Mux4~4_combout\ & ((xor_out(27)) # ((!\Mux6~1_combout\)))) # (!\Mux4~4_combout\ & (((\ShiftRight0~70_combout\ & \Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => xor_out(27),
	datab => \Mux4~4_combout\,
	datac => \ShiftRight0~70_combout\,
	datad => \Mux6~1_combout\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X25_Y12_N26
\Mux4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (\Equal0~0_combout\ & (\i1_sr|Add0~54_combout\ & ((!\Mux6~0_combout\)))) # (!\Equal0~0_combout\ & (((\Mux4~5_combout\) # (\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1_sr|Add0~54_combout\,
	datab => \Mux4~5_combout\,
	datac => \Equal0~0_combout\,
	datad => \Mux6~0_combout\,
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X25_Y12_N4
\Mux4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (\Mux6~0_combout\ & ((\Mux4~6_combout\ & ((\a~combout\(31)))) # (!\Mux4~6_combout\ & (\i1_sr|Add1~54_combout\)))) # (!\Mux6~0_combout\ & (((\Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \i1_sr|Add1~54_combout\,
	datac => \a~combout\(31),
	datad => \Mux4~6_combout\,
	combout => \Mux4~7_combout\);

-- Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[27]~I\ : cycloneii_io
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
	padio => ww_b(27),
	combout => \b~combout\(27));

-- Location: LCCOMB_X25_Y12_N28
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\alu_op~combout\(0) & (\a~combout\(27) & \b~combout\(27))) # (!\alu_op~combout\(0) & ((\a~combout\(27)) # (\b~combout\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_op~combout\(0),
	datac => \a~combout\(27),
	datad => \b~combout\(27),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X25_Y12_N22
\Mux4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~8_combout\ = (\alu_op~combout\(1) & (\Mux29~6_combout\ & ((\Mux4~0_combout\)))) # (!\alu_op~combout\(1) & (((\Mux4~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(1),
	datab => \Mux29~6_combout\,
	datac => \Mux4~7_combout\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~8_combout\);

-- Location: LCCOMB_X23_Y13_N18
\Mux3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~12_combout\ = (!\alu_op~combout\(1) & ((\alu_op~combout\(0) $ (!\alu_op~combout\(2))) # (!\alu_op~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(0),
	datab => \alu_op~combout\(1),
	datac => \alu_op~combout\(3),
	datad => \alu_op~combout\(2),
	combout => \Mux3~12_combout\);

-- Location: LCCOMB_X23_Y11_N0
\Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\alu_op~combout\(0) & (((\alu_op~combout\(3) & \shamt~combout\(4))))) # (!\alu_op~combout\(0) & (((\alu_op~combout\(3) & \shamt~combout\(4))) # (!\alu_op~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(0),
	datab => \alu_op~combout\(2),
	datac => \alu_op~combout\(3),
	datad => \shamt~combout\(4),
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X23_Y11_N4
\Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\alu_op~combout\(2) & ((!\shamt~combout\(4)) # (!\alu_op~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(0),
	datab => \alu_op~combout\(2),
	datad => \shamt~combout\(4),
	combout => \Mux3~4_combout\);

-- Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[28]~I\ : cycloneii_io
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
	padio => ww_b(28),
	combout => \b~combout\(28));

-- Location: LCCOMB_X22_Y12_N22
\xor_out[28]\ : cycloneii_lcell_comb
-- Equation(s):
-- xor_out(28) = \a~combout\(28) $ (\b~combout\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(28),
	datad => \b~combout\(28),
	combout => xor_out(28));

-- Location: LCCOMB_X23_Y11_N2
\Mux3~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~9_combout\ = (\Mux3~8_combout\ & (((xor_out(28))) # (!\Mux3~4_combout\))) # (!\Mux3~8_combout\ & (\Mux3~4_combout\ & ((\ShiftRight0~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~8_combout\,
	datab => \Mux3~4_combout\,
	datac => xor_out(28),
	datad => \ShiftRight0~71_combout\,
	combout => \Mux3~9_combout\);

-- Location: LCCOMB_X23_Y11_N28
\Mux3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~10_combout\ = (\Mux3~3_combout\ & ((\Mux3~2_combout\) # ((\ShiftRight1~56_combout\)))) # (!\Mux3~3_combout\ & (!\Mux3~2_combout\ & ((\Mux3~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => \Mux3~2_combout\,
	datac => \ShiftRight1~56_combout\,
	datad => \Mux3~9_combout\,
	combout => \Mux3~10_combout\);

-- Location: LCCOMB_X23_Y11_N22
\Mux3~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~11_combout\ = (\Mux3~10_combout\ & (((\a~combout\(31)) # (!\Mux3~2_combout\)))) # (!\Mux3~10_combout\ & (\i1_sr|Add0~56_combout\ & ((\Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1_sr|Add0~56_combout\,
	datab => \Mux3~10_combout\,
	datac => \a~combout\(31),
	datad => \Mux3~2_combout\,
	combout => \Mux3~11_combout\);

-- Location: LCCOMB_X23_Y13_N4
\Mux3~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~13_combout\ = (\Mux3~12_combout\ & ((\Mux22~3_combout\ & (\i1_sr|Add1~56_combout\)) # (!\Mux22~3_combout\ & ((\Mux3~11_combout\))))) # (!\Mux3~12_combout\ & (((\Mux22~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1_sr|Add1~56_combout\,
	datab => \Mux3~12_combout\,
	datac => \Mux3~11_combout\,
	datad => \Mux22~3_combout\,
	combout => \Mux3~13_combout\);

-- Location: LCCOMB_X23_Y13_N30
\Mux3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~14_combout\ = (\Mux3~13_combout\ & (((\b~combout\(28) & \a~combout\(28))) # (!\alu_op~combout\(1)))) # (!\Mux3~13_combout\ & (\alu_op~combout\(1) & ((\b~combout\(28)) # (\a~combout\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(28),
	datab => \Mux3~13_combout\,
	datac => \alu_op~combout\(1),
	datad => \a~combout\(28),
	combout => \Mux3~14_combout\);

-- Location: LCCOMB_X23_Y13_N6
\Mux3~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~15_combout\ = (\Mux3~14_combout\ & (((\alu_op~combout\(2) & !\alu_op~combout\(3))) # (!\alu_op~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(2),
	datab => \alu_op~combout\(3),
	datac => \alu_op~combout\(1),
	datad => \Mux3~14_combout\,
	combout => \Mux3~15_combout\);

-- Location: LCCOMB_X23_Y11_N26
\Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\alu_op~combout\(3) & ((\alu_op~combout\(0)) # (\alu_op~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(0),
	datac => \alu_op~combout\(3),
	datad => \alu_op~combout\(2),
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X23_Y11_N14
\Mux2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (\Mux3~3_combout\ & (((\ShiftRight1~53_combout\) # (\Mux3~2_combout\)))) # (!\Mux3~3_combout\ & (\Mux2~5_combout\ & ((!\Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~5_combout\,
	datab => \Mux3~3_combout\,
	datac => \ShiftRight1~53_combout\,
	datad => \Mux3~2_combout\,
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X23_Y11_N8
\Mux2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\Mux2~6_combout\ & (((\a~combout\(31)) # (!\Mux3~2_combout\)))) # (!\Mux2~6_combout\ & (\i1_sr|Add0~58_combout\ & ((\Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1_sr|Add0~58_combout\,
	datab => \Mux2~6_combout\,
	datac => \a~combout\(31),
	datad => \Mux3~2_combout\,
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X23_Y13_N0
\Mux2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (\Mux3~12_combout\ & ((\Mux22~3_combout\ & (\i1_sr|Add1~58_combout\)) # (!\Mux22~3_combout\ & ((\Mux2~7_combout\))))) # (!\Mux3~12_combout\ & (((\Mux22~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1_sr|Add1~58_combout\,
	datab => \Mux3~12_combout\,
	datac => \Mux2~7_combout\,
	datad => \Mux22~3_combout\,
	combout => \Mux2~8_combout\);

-- Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[29]~I\ : cycloneii_io
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
	padio => ww_b(29),
	combout => \b~combout\(29));

-- Location: LCCOMB_X23_Y11_N10
\Mux2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~9_combout\ = (\alu_op~combout\(1) & ((\Mux2~8_combout\ & (\a~combout\(29) & \b~combout\(29))) # (!\Mux2~8_combout\ & ((\a~combout\(29)) # (\b~combout\(29)))))) # (!\alu_op~combout\(1) & (\Mux2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(1),
	datab => \Mux2~8_combout\,
	datac => \a~combout\(29),
	datad => \b~combout\(29),
	combout => \Mux2~9_combout\);

-- Location: LCCOMB_X23_Y11_N6
\Mux2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~10_combout\ = (\Mux2~9_combout\ & (((!\alu_op~combout\(3) & \alu_op~combout\(2))) # (!\alu_op~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~9_combout\,
	datab => \alu_op~combout\(3),
	datac => \alu_op~combout\(1),
	datad => \alu_op~combout\(2),
	combout => \Mux2~10_combout\);

-- Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[30]~I\ : cycloneii_io
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
	padio => ww_b(30),
	combout => \b~combout\(30));

-- Location: LCCOMB_X21_Y12_N26
\Mux1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~7_combout\ = (!\alu_op~combout\(0) & ((\b~combout\(30) & ((\alu_op~combout\(1)) # (!\a~combout\(30)))) # (!\b~combout\(30) & ((\a~combout\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(1),
	datab => \b~combout\(30),
	datac => \a~combout\(30),
	datad => \alu_op~combout\(0),
	combout => \Mux1~7_combout\);

-- Location: LCCOMB_X23_Y12_N16
\ShiftRight0~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~75_combout\ = (!\shamt~combout\(3) & (\ShiftRight1~4_combout\ & (!\shamt~combout\(2) & !\shamt~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(3),
	datab => \ShiftRight1~4_combout\,
	datac => \shamt~combout\(2),
	datad => \shamt~combout\(1),
	combout => \ShiftRight0~75_combout\);

-- Location: LCCOMB_X23_Y12_N10
\Mux1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~8_combout\ = (\Mux1~7_combout\) # ((\Mux1~0_combout\ & (\ShiftRight0~75_combout\ & !\shamt~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \Mux1~7_combout\,
	datac => \ShiftRight0~75_combout\,
	datad => \shamt~combout\(4),
	combout => \Mux1~8_combout\);

-- Location: LCCOMB_X23_Y15_N16
\ShiftLeft0~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~78_combout\ = (\shamt~combout\(2) & ((\ShiftLeft0~63_combout\))) # (!\shamt~combout\(2) & (\ShiftLeft0~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~77_combout\,
	datab => \ShiftLeft0~63_combout\,
	datac => \shamt~combout\(2),
	combout => \ShiftLeft0~78_combout\);

-- Location: LCCOMB_X23_Y15_N8
\ShiftLeft0~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~99_combout\ = (\shamt~combout\(3) & ((\shamt~combout\(4) & (\ShiftLeft0~47_combout\)) # (!\shamt~combout\(4) & ((\ShiftLeft0~78_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(4),
	datab => \ShiftLeft0~47_combout\,
	datac => \shamt~combout\(3),
	datad => \ShiftLeft0~78_combout\,
	combout => \ShiftLeft0~99_combout\);

-- Location: LCCOMB_X20_Y15_N24
\Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (!\alu_op~combout\(3) & (!\alu_op~combout\(2) & ((\ShiftLeft0~103_combout\) # (\ShiftLeft0~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~103_combout\,
	datab => \alu_op~combout\(3),
	datac => \alu_op~combout\(2),
	datad => \ShiftLeft0~99_combout\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X20_Y15_N10
\Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\Mux1~2_combout\) # ((\Mux1~3_combout\ & (\alu_op~combout\(3) & \alu_op~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~3_combout\,
	datab => \alu_op~combout\(3),
	datac => \alu_op~combout\(2),
	datad => \Mux1~2_combout\,
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X23_Y12_N22
\Mux1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (!\alu_op~combout\(1) & ((\Mux1~1_combout\) # ((\Mux1~4_combout\ & \alu_op~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \Mux1~4_combout\,
	datac => \alu_op~combout\(0),
	datad => \alu_op~combout\(1),
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X23_Y12_N8
\Mux1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = (\alu_op~combout\(1) & (\a~combout\(30) & \b~combout\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(1),
	datab => \a~combout\(30),
	datad => \b~combout\(30),
	combout => \Mux1~6_combout\);

-- Location: LCCOMB_X23_Y12_N20
\Mux1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~9_combout\ = (\Mux1~5_combout\) # ((\Mux29~6_combout\ & ((\Mux1~8_combout\) # (\Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~8_combout\,
	datab => \Mux1~5_combout\,
	datac => \Mux1~6_combout\,
	datad => \Mux29~6_combout\,
	combout => \Mux1~9_combout\);

-- Location: LCCOMB_X25_Y16_N0
\ShiftLeft0~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~82_combout\ = (\shamt~combout\(2) & ((\ShiftLeft0~67_combout\))) # (!\shamt~combout\(2) & (\ShiftLeft0~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~81_combout\,
	datab => \ShiftLeft0~67_combout\,
	datac => \shamt~combout\(2),
	combout => \ShiftLeft0~82_combout\);

-- Location: LCCOMB_X25_Y16_N20
\ShiftLeft0~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~51_combout\ = (\shamt~combout\(2) & ((\ShiftLeft0~11_combout\))) # (!\shamt~combout\(2) & (\ShiftLeft0~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~23_combout\,
	datab => \ShiftLeft0~11_combout\,
	datac => \shamt~combout\(2),
	combout => \ShiftLeft0~51_combout\);

-- Location: LCCOMB_X25_Y16_N24
\ShiftLeft0~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~105_combout\ = (\shamt~combout\(3) & ((\shamt~combout\(4) & ((\ShiftLeft0~51_combout\))) # (!\shamt~combout\(4) & (\ShiftLeft0~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(3),
	datab => \ShiftLeft0~82_combout\,
	datac => \ShiftLeft0~51_combout\,
	datad => \shamt~combout\(4),
	combout => \ShiftLeft0~105_combout\);

-- Location: LCCOMB_X26_Y16_N24
\Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (\alu_op~combout\(0) & (!\alu_op~combout\(3) & ((\ShiftLeft0~109_combout\) # (\ShiftLeft0~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~109_combout\,
	datab => \alu_op~combout\(0),
	datac => \alu_op~combout\(3),
	datad => \ShiftLeft0~105_combout\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X21_Y12_N24
\b_ext[30]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_ext[30]~2_combout\ = (\Equal0~1_combout\ & (\b~combout\(30))) # (!\Equal0~1_combout\ & ((\a~combout\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \b~combout\(30),
	datac => \a~combout\(30),
	combout => \b_ext[30]~2_combout\);

-- Location: LCCOMB_X22_Y12_N20
\b_ext[28]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_ext[28]~4_combout\ = (\Equal0~1_combout\ & (\b~combout\(28))) # (!\Equal0~1_combout\ & ((\a~combout\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(28),
	datab => \a~combout\(28),
	datac => \Equal0~1_combout\,
	combout => \b_ext[28]~4_combout\);

-- Location: LCCOMB_X22_Y12_N30
\b_ext[27]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_ext[27]~5_combout\ = (\Equal0~1_combout\ & ((\b~combout\(27)))) # (!\Equal0~1_combout\ & (\a~combout\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(27),
	datac => \Equal0~1_combout\,
	datad => \b~combout\(27),
	combout => \b_ext[27]~5_combout\);

-- Location: LCCOMB_X21_Y12_N14
\i1_sr|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add0~62_combout\ = (\b_ext[31]~1_combout\ & ((\a~combout\(31) & (!\i1_sr|Add0~61\)) # (!\a~combout\(31) & ((\i1_sr|Add0~61\) # (GND))))) # (!\b_ext[31]~1_combout\ & ((\a~combout\(31) & (\i1_sr|Add0~61\ & VCC)) # (!\a~combout\(31) & 
-- (!\i1_sr|Add0~61\))))
-- \i1_sr|Add0~63\ = CARRY((\b_ext[31]~1_combout\ & ((!\i1_sr|Add0~61\) # (!\a~combout\(31)))) # (!\b_ext[31]~1_combout\ & (!\a~combout\(31) & !\i1_sr|Add0~61\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_ext[31]~1_combout\,
	datab => \a~combout\(31),
	datad => VCC,
	cin => \i1_sr|Add0~61\,
	combout => \i1_sr|Add0~62_combout\,
	cout => \i1_sr|Add0~63\);

-- Location: LCCOMB_X26_Y16_N26
\Mux0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (!\alu_op~combout\(0) & ((\i1_sr|Equal0~0_combout\ & (\i1_sr|Add1~62_combout\)) # (!\i1_sr|Equal0~0_combout\ & ((\i1_sr|Add0~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1_sr|Add1~62_combout\,
	datab => \alu_op~combout\(0),
	datac => \i1_sr|Add0~62_combout\,
	datad => \i1_sr|Equal0~0_combout\,
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X23_Y14_N6
\ShiftLeft0~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~104_combout\ = (\shamt~combout\(3)) # ((\shamt~combout\(4)) # (\ShiftLeft0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shamt~combout\(3),
	datac => \shamt~combout\(4),
	datad => \ShiftLeft0~4_combout\,
	combout => \ShiftLeft0~104_combout\);

-- Location: LCCOMB_X23_Y14_N14
\Mux0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = (\alu_op~combout\(0) & (!\alu_op~combout\(1) & ((\alu_op~combout\(3)) # (!\ShiftLeft0~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(0),
	datab => \alu_op~combout\(3),
	datac => \alu_op~combout\(1),
	datad => \ShiftLeft0~104_combout\,
	combout => \Mux0~8_combout\);

-- Location: LCCOMB_X23_Y14_N4
\Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\alu_op~combout\(2) & ((\Mux0~3_combout\ & ((\Mux0~8_combout\) # (!\a~combout\(31)))) # (!\Mux0~3_combout\ & ((\a~combout\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datab => \Mux0~8_combout\,
	datac => \a~combout\(31),
	datad => \alu_op~combout\(2),
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X26_Y16_N4
\Mux0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (\Mux0~4_combout\) # ((\i1_sr|Equal0~1_combout\ & ((\Mux0~5_combout\) # (\Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~5_combout\,
	datab => \Mux0~6_combout\,
	datac => \i1_sr|Equal0~1_combout\,
	datad => \Mux0~4_combout\,
	combout => \Mux0~7_combout\);

-- Location: LCCOMB_X23_Y11_N20
\Equal2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~11_combout\ = (\Equal2~10_combout\ & (!xor_out(28) & (\a~combout\(29) $ (!\b~combout\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~10_combout\,
	datab => \a~combout\(29),
	datac => xor_out(28),
	datad => \b~combout\(29),
	combout => \Equal2~11_combout\);

-- Location: LCCOMB_X22_Y14_N4
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\b~combout\(1) & (\a~combout\(1) & (\b~combout\(0) $ (!\a~combout\(0))))) # (!\b~combout\(1) & (!\a~combout\(1) & (\b~combout\(0) $ (!\a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \b~combout\(0),
	datac => \a~combout\(1),
	datad => \a~combout\(0),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X22_Y14_N6
\Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!xor_out(3) & (\Equal2~0_combout\ & (\b~combout\(2) $ (!\a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => xor_out(3),
	datab => \b~combout\(2),
	datac => \Equal2~0_combout\,
	datad => \a~combout\(2),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X23_Y13_N20
\xor_out[12]\ : cycloneii_lcell_comb
-- Equation(s):
-- xor_out(12) = \b~combout\(12) $ (\a~combout\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(12),
	datac => \a~combout\(12),
	combout => xor_out(12));

-- Location: LCCOMB_X23_Y12_N6
\Equal2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (!xor_out(15) & (!xor_out(12) & (!xor_out(14) & !xor_out(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => xor_out(15),
	datab => xor_out(12),
	datac => xor_out(14),
	datad => xor_out(13),
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X20_Y14_N20
\xor_out[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- xor_out(5) = \b~combout\(5) $ (\a~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(5),
	datad => \a~combout\(5),
	combout => xor_out(5));

-- Location: LCCOMB_X24_Y14_N28
\xor_out[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- xor_out(6) = \a~combout\(6) $ (\b~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(6),
	datac => \b~combout\(6),
	combout => xor_out(6));

-- Location: LCCOMB_X24_Y14_N0
\Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (!xor_out(4) & (!xor_out(7) & (!xor_out(5) & !xor_out(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => xor_out(4),
	datab => xor_out(7),
	datac => xor_out(5),
	datad => xor_out(6),
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X21_Y15_N0
\Equal2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = (\Equal2~3_combout\ & (\Equal2~1_combout\ & (\Equal2~4_combout\ & \Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~3_combout\,
	datab => \Equal2~1_combout\,
	datac => \Equal2~4_combout\,
	datad => \Equal2~2_combout\,
	combout => \Equal2~5_combout\);

-- Location: LCCOMB_X21_Y16_N24
\xor_out[23]\ : cycloneii_lcell_comb
-- Equation(s):
-- xor_out(23) = \b~combout\(23) $ (\a~combout\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(23),
	datad => \a~combout\(23),
	combout => xor_out(23));

-- Location: LCCOMB_X23_Y16_N4
\xor_out[21]\ : cycloneii_lcell_comb
-- Equation(s):
-- xor_out(21) = \b~combout\(21) $ (\a~combout\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(21),
	datad => \a~combout\(21),
	combout => xor_out(21));

-- Location: LCCOMB_X22_Y16_N2
\xor_out[20]\ : cycloneii_lcell_comb
-- Equation(s):
-- xor_out(20) = \b~combout\(20) $ (\a~combout\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(20),
	datad => \a~combout\(20),
	combout => xor_out(20));

-- Location: LCCOMB_X22_Y16_N6
\Equal2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~7_combout\ = (!xor_out(22) & (!xor_out(23) & (!xor_out(21) & !xor_out(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => xor_out(22),
	datab => xor_out(23),
	datac => xor_out(21),
	datad => xor_out(20),
	combout => \Equal2~7_combout\);

-- Location: LCCOMB_X21_Y15_N20
\Equal2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~8_combout\ = (\Equal2~6_combout\ & (!xor_out(19) & (!xor_out(18) & \Equal2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~6_combout\,
	datab => xor_out(19),
	datac => xor_out(18),
	datad => \Equal2~7_combout\,
	combout => \Equal2~8_combout\);

-- Location: LCCOMB_X25_Y12_N6
\xor_out[27]\ : cycloneii_lcell_comb
-- Equation(s):
-- xor_out(27) = \a~combout\(27) $ (\b~combout\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(27),
	datad => \b~combout\(27),
	combout => xor_out(27));

-- Location: LCCOMB_X24_Y16_N20
\Equal2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~9_combout\ = (!xor_out(24) & (!xor_out(27) & (!xor_out(26) & !xor_out(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => xor_out(24),
	datab => xor_out(27),
	datac => xor_out(26),
	datad => xor_out(25),
	combout => \Equal2~9_combout\);

-- Location: LCCOMB_X21_Y15_N22
\Equal2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~12_combout\ = (\Equal2~11_combout\ & (\Equal2~5_combout\ & (\Equal2~8_combout\ & \Equal2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~11_combout\,
	datab => \Equal2~5_combout\,
	datac => \Equal2~8_combout\,
	datad => \Equal2~9_combout\,
	combout => \Equal2~12_combout\);

-- Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[31]~I\ : cycloneii_io
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
	padio => ww_b(31),
	combout => \b~combout\(31));

-- Location: LCCOMB_X21_Y12_N18
\b_ext[32]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_ext[32]~0_combout\ = (!\alu_op~combout\(3) & (\Equal0~0_combout\ & (\b~combout\(31) & \alu_op~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(3),
	datab => \Equal0~0_combout\,
	datac => \b~combout\(31),
	datad => \alu_op~combout\(1),
	combout => \b_ext[32]~0_combout\);

-- Location: LCCOMB_X21_Y12_N28
\a_ext[32]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \a_ext[32]~0_combout\ = (\alu_op~combout\(1) & (\Equal0~0_combout\ & (!\alu_op~combout\(3) & \a~combout\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(1),
	datab => \Equal0~0_combout\,
	datac => \alu_op~combout\(3),
	datad => \a~combout\(31),
	combout => \a_ext[32]~0_combout\);

-- Location: LCCOMB_X21_Y12_N16
\i1_sr|Add0~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add0~64_combout\ = \b_ext[32]~0_combout\ $ (\i1_sr|Add0~63\ $ (\a_ext[32]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b_ext[32]~0_combout\,
	datad => \a_ext[32]~0_combout\,
	cin => \i1_sr|Add0~63\,
	combout => \i1_sr|Add0~64_combout\);

-- Location: LCCOMB_X21_Y12_N22
\b_ext[31]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_ext[31]~1_combout\ = (\Equal0~1_combout\ & (\b~combout\(31))) # (!\Equal0~1_combout\ & ((\a~combout\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(31),
	datac => \Equal0~1_combout\,
	datad => \a~combout\(31),
	combout => \b_ext[31]~1_combout\);

-- Location: LCCOMB_X22_Y12_N16
\i1_sr|Add1~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|Add1~64_combout\ = \b_ext[32]~0_combout\ $ (\i1_sr|Add1~63\ $ (!\a_ext[32]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_ext[32]~0_combout\,
	datad => \a_ext[32]~0_combout\,
	cin => \i1_sr|Add1~63\,
	combout => \i1_sr|Add1~64_combout\);

-- Location: LCCOMB_X22_Y15_N10
\i1_sr|sig~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_sr|sig~0_combout\ = (\i1_sr|Equal0~0_combout\ & ((\i1_sr|Add1~64_combout\))) # (!\i1_sr|Equal0~0_combout\ & (\i1_sr|Add0~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1_sr|Add0~64_combout\,
	datac => \i1_sr|Add1~64_combout\,
	datad => \i1_sr|Equal0~0_combout\,
	combout => \i1_sr|sig~0_combout\);

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Mux31~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(0));

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Mux30~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(1));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Mux29~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(2));

-- Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Mux28~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(3));

-- Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out[4]~I\ : cycloneii_io
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
	datain => \Mux27~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(4));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out[5]~I\ : cycloneii_io
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
	datain => \Mux26~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(5));

-- Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out[6]~I\ : cycloneii_io
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
	datain => \Mux25~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(6));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out[7]~I\ : cycloneii_io
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
	datain => \Mux24~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(7));

-- Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out[8]~I\ : cycloneii_io
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
	datain => \Mux23~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(8));

-- Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out[9]~I\ : cycloneii_io
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
	datain => \Mux22~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(9));

-- Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out[10]~I\ : cycloneii_io
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
	datain => \Mux21~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(10));

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out[11]~I\ : cycloneii_io
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
	datain => \Mux20~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(11));

-- Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out[12]~I\ : cycloneii_io
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
	datain => \Mux19~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(12));

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out[13]~I\ : cycloneii_io
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
	datain => \Mux18~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(13));

-- Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out[14]~I\ : cycloneii_io
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
	datain => \Mux17~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(14));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out[15]~I\ : cycloneii_io
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
	datain => \Mux16~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(15));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out[16]~I\ : cycloneii_io
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
	datain => \Mux15~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(16));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out[17]~I\ : cycloneii_io
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
	datain => \Mux14~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(17));

-- Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out[18]~I\ : cycloneii_io
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
	datain => \Mux13~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(18));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out[19]~I\ : cycloneii_io
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
	datain => \Mux12~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(19));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out[20]~I\ : cycloneii_io
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
	datain => \Mux11~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(20));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out[21]~I\ : cycloneii_io
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
	datain => \Mux10~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(21));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out[22]~I\ : cycloneii_io
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
	datain => \Mux9~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(22));

-- Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out[23]~I\ : cycloneii_io
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
	datain => \Mux8~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(23));

-- Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out[24]~I\ : cycloneii_io
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
	datain => \Mux7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(24));

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out[25]~I\ : cycloneii_io
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
	datain => \Mux6~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(25));

-- Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out[26]~I\ : cycloneii_io
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
	datain => \Mux5~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(26));

-- Location: PIN_AB14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out[27]~I\ : cycloneii_io
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
	datain => \Mux4~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(27));

-- Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out[28]~I\ : cycloneii_io
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
	datain => \Mux3~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(28));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out[29]~I\ : cycloneii_io
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
	padio => ww_alu_out(29));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out[30]~I\ : cycloneii_io
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
	datain => \Mux1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(30));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out[31]~I\ : cycloneii_io
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
	datain => \Mux0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(31));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Equal2~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_z);

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i1_sr|sig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lt);

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i1_sr|ALT_INV_sig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ge);
END structure;


