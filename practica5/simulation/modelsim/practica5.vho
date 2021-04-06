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

-- DATE "04/06/2021 17:42:17"

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

ENTITY 	BancoRegistros IS
    PORT (
	addrA : IN std_logic_vector(4 DOWNTO 0);
	addrB : IN std_logic_vector(4 DOWNTO 0);
	addrW : IN std_logic_vector(4 DOWNTO 0);
	d_in : IN std_logic_vector(31 DOWNTO 0);
	clk : IN std_logic;
	reset_n : IN std_logic;
	en : IN std_logic;
	regA : OUT std_logic_vector(31 DOWNTO 0);
	regB : OUT std_logic_vector(31 DOWNTO 0)
	);
END BancoRegistros;

-- Design Ports Information
-- addrB[0]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addrB[1]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addrB[2]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addrB[3]	=>  Location: PIN_AB14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addrB[4]	=>  Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- regA[0]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regA[1]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regA[2]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regA[3]	=>  Location: PIN_AB7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regA[4]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regA[5]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regA[6]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regA[7]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regA[8]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regA[9]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regA[10]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regA[11]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regA[12]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regA[13]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regA[14]	=>  Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regA[15]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regA[16]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regA[17]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regA[18]	=>  Location: PIN_Y9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regA[19]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regA[20]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regA[21]	=>  Location: PIN_N6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regA[22]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regA[23]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regA[24]	=>  Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regA[25]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regA[26]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regA[27]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regA[28]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regA[29]	=>  Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regA[30]	=>  Location: PIN_T1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regA[31]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regB[0]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regB[1]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regB[2]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regB[3]	=>  Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regB[4]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regB[5]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regB[6]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regB[7]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regB[8]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regB[9]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regB[10]	=>  Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regB[11]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regB[12]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regB[13]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regB[14]	=>  Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regB[15]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regB[16]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regB[17]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regB[18]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regB[19]	=>  Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regB[20]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regB[21]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regB[22]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regB[23]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regB[24]	=>  Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regB[25]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regB[26]	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regB[27]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regB[28]	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regB[29]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regB[30]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regB[31]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- addrA[3]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addrA[2]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addrA[1]	=>  Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addrA[0]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addrA[4]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[0]	=>  Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_n	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addrW[1]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addrW[3]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addrW[4]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- en	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addrW[2]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addrW[0]	=>  Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[1]	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[2]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[3]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[4]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[5]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[6]	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[7]	=>  Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[8]	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[9]	=>  Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[10]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[11]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[12]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[13]	=>  Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[14]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[15]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[16]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[17]	=>  Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[18]	=>  Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[19]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[20]	=>  Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[21]	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[22]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[23]	=>  Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[24]	=>  Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[25]	=>  Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[26]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[27]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[28]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[29]	=>  Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[30]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d_in[31]	=>  Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF BancoRegistros IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_addrA : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_addrB : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_addrW : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_d_in : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL ww_regA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_regB : std_logic_vector(31 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_n~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg[28][0]~regout\ : std_logic;
SIGNAL \reg[5][0]~regout\ : std_logic;
SIGNAL \reg[6][0]~regout\ : std_logic;
SIGNAL \reg[7][0]~regout\ : std_logic;
SIGNAL \Mux31~19_combout\ : std_logic;
SIGNAL \reg[4][0]~regout\ : std_logic;
SIGNAL \Mux31~20_combout\ : std_logic;
SIGNAL \Mux31~21_combout\ : std_logic;
SIGNAL \Mux31~26_combout\ : std_logic;
SIGNAL \reg[9][1]~regout\ : std_logic;
SIGNAL \reg[8][1]~regout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \reg[26][1]~regout\ : std_logic;
SIGNAL \reg[22][1]~regout\ : std_logic;
SIGNAL \reg[18][1]~regout\ : std_logic;
SIGNAL \Mux30~4_combout\ : std_logic;
SIGNAL \reg[30][1]~regout\ : std_logic;
SIGNAL \Mux30~5_combout\ : std_logic;
SIGNAL \reg[28][1]~regout\ : std_logic;
SIGNAL \reg[27][1]~regout\ : std_logic;
SIGNAL \reg[23][1]~regout\ : std_logic;
SIGNAL \reg[19][1]~regout\ : std_logic;
SIGNAL \Mux30~9_combout\ : std_logic;
SIGNAL \reg[31][1]~regout\ : std_logic;
SIGNAL \Mux30~10_combout\ : std_logic;
SIGNAL \reg[2][1]~regout\ : std_logic;
SIGNAL \reg[3][1]~regout\ : std_logic;
SIGNAL \reg[1][1]~regout\ : std_logic;
SIGNAL \reg[5][1]~regout\ : std_logic;
SIGNAL \reg[6][1]~regout\ : std_logic;
SIGNAL \reg[4][1]~regout\ : std_logic;
SIGNAL \Mux30~12_combout\ : std_logic;
SIGNAL \reg[7][1]~regout\ : std_logic;
SIGNAL \Mux30~13_combout\ : std_logic;
SIGNAL \Mux30~14_combout\ : std_logic;
SIGNAL \Mux30~15_combout\ : std_logic;
SIGNAL \reg[20][2]~regout\ : std_logic;
SIGNAL \reg[24][2]~regout\ : std_logic;
SIGNAL \reg[16][2]~regout\ : std_logic;
SIGNAL \Mux29~8_combout\ : std_logic;
SIGNAL \reg[28][2]~regout\ : std_logic;
SIGNAL \Mux29~9_combout\ : std_logic;
SIGNAL \reg[27][2]~regout\ : std_logic;
SIGNAL \reg[23][2]~regout\ : std_logic;
SIGNAL \reg[19][2]~regout\ : std_logic;
SIGNAL \Mux29~11_combout\ : std_logic;
SIGNAL \reg[31][2]~regout\ : std_logic;
SIGNAL \Mux29~12_combout\ : std_logic;
SIGNAL \reg[2][2]~regout\ : std_logic;
SIGNAL \reg[5][2]~regout\ : std_logic;
SIGNAL \reg[6][2]~regout\ : std_logic;
SIGNAL \reg[7][2]~regout\ : std_logic;
SIGNAL \Mux29~15_combout\ : std_logic;
SIGNAL \reg[4][2]~regout\ : std_logic;
SIGNAL \Mux29~16_combout\ : std_logic;
SIGNAL \Mux29~17_combout\ : std_logic;
SIGNAL \Mux29~18_combout\ : std_logic;
SIGNAL \reg[10][2]~regout\ : std_logic;
SIGNAL \reg[8][2]~regout\ : std_logic;
SIGNAL \Mux29~19_combout\ : std_logic;
SIGNAL \reg[12][2]~regout\ : std_logic;
SIGNAL \reg[9][3]~regout\ : std_logic;
SIGNAL \reg[8][3]~regout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \reg[21][3]~regout\ : std_logic;
SIGNAL \reg[25][3]~regout\ : std_logic;
SIGNAL \reg[17][3]~regout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \reg[29][3]~regout\ : std_logic;
SIGNAL \Mux28~3_combout\ : std_logic;
SIGNAL \reg[26][3]~regout\ : std_logic;
SIGNAL \reg[22][3]~regout\ : std_logic;
SIGNAL \reg[18][3]~regout\ : std_logic;
SIGNAL \Mux28~4_combout\ : std_logic;
SIGNAL \reg[30][3]~regout\ : std_logic;
SIGNAL \Mux28~5_combout\ : std_logic;
SIGNAL \reg[20][3]~regout\ : std_logic;
SIGNAL \reg[24][3]~regout\ : std_logic;
SIGNAL \reg[16][3]~regout\ : std_logic;
SIGNAL \Mux28~6_combout\ : std_logic;
SIGNAL \reg[28][3]~regout\ : std_logic;
SIGNAL \Mux28~7_combout\ : std_logic;
SIGNAL \Mux28~8_combout\ : std_logic;
SIGNAL \reg[27][3]~regout\ : std_logic;
SIGNAL \reg[23][3]~regout\ : std_logic;
SIGNAL \reg[19][3]~regout\ : std_logic;
SIGNAL \Mux28~9_combout\ : std_logic;
SIGNAL \reg[31][3]~regout\ : std_logic;
SIGNAL \Mux28~10_combout\ : std_logic;
SIGNAL \Mux28~11_combout\ : std_logic;
SIGNAL \reg[5][3]~regout\ : std_logic;
SIGNAL \reg[6][3]~regout\ : std_logic;
SIGNAL \reg[4][3]~regout\ : std_logic;
SIGNAL \Mux28~12_combout\ : std_logic;
SIGNAL \reg[7][3]~regout\ : std_logic;
SIGNAL \Mux28~13_combout\ : std_logic;
SIGNAL \reg[20][4]~regout\ : std_logic;
SIGNAL \reg[24][4]~regout\ : std_logic;
SIGNAL \reg[16][4]~regout\ : std_logic;
SIGNAL \Mux27~8_combout\ : std_logic;
SIGNAL \reg[28][4]~regout\ : std_logic;
SIGNAL \Mux27~9_combout\ : std_logic;
SIGNAL \reg[27][4]~regout\ : std_logic;
SIGNAL \reg[23][4]~regout\ : std_logic;
SIGNAL \reg[19][4]~regout\ : std_logic;
SIGNAL \Mux27~11_combout\ : std_logic;
SIGNAL \reg[31][4]~regout\ : std_logic;
SIGNAL \Mux27~12_combout\ : std_logic;
SIGNAL \reg[5][4]~regout\ : std_logic;
SIGNAL \reg[6][4]~regout\ : std_logic;
SIGNAL \reg[7][4]~regout\ : std_logic;
SIGNAL \Mux27~15_combout\ : std_logic;
SIGNAL \reg[4][4]~regout\ : std_logic;
SIGNAL \Mux27~16_combout\ : std_logic;
SIGNAL \Mux27~17_combout\ : std_logic;
SIGNAL \reg[9][4]~regout\ : std_logic;
SIGNAL \reg[10][4]~regout\ : std_logic;
SIGNAL \reg[8][4]~regout\ : std_logic;
SIGNAL \Mux27~19_combout\ : std_logic;
SIGNAL \reg[11][4]~regout\ : std_logic;
SIGNAL \Mux27~20_combout\ : std_logic;
SIGNAL \reg[11][5]~regout\ : std_logic;
SIGNAL \reg[21][5]~regout\ : std_logic;
SIGNAL \reg[25][5]~regout\ : std_logic;
SIGNAL \reg[17][5]~regout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \reg[29][5]~regout\ : std_logic;
SIGNAL \Mux26~3_combout\ : std_logic;
SIGNAL \reg[26][5]~regout\ : std_logic;
SIGNAL \reg[22][5]~regout\ : std_logic;
SIGNAL \reg[18][5]~regout\ : std_logic;
SIGNAL \Mux26~4_combout\ : std_logic;
SIGNAL \reg[30][5]~regout\ : std_logic;
SIGNAL \Mux26~5_combout\ : std_logic;
SIGNAL \reg[20][5]~regout\ : std_logic;
SIGNAL \reg[24][5]~regout\ : std_logic;
SIGNAL \reg[16][5]~regout\ : std_logic;
SIGNAL \Mux26~6_combout\ : std_logic;
SIGNAL \reg[28][5]~regout\ : std_logic;
SIGNAL \Mux26~7_combout\ : std_logic;
SIGNAL \Mux26~8_combout\ : std_logic;
SIGNAL \reg[27][5]~regout\ : std_logic;
SIGNAL \reg[23][5]~regout\ : std_logic;
SIGNAL \reg[19][5]~regout\ : std_logic;
SIGNAL \Mux26~9_combout\ : std_logic;
SIGNAL \reg[31][5]~regout\ : std_logic;
SIGNAL \Mux26~10_combout\ : std_logic;
SIGNAL \Mux26~11_combout\ : std_logic;
SIGNAL \reg[5][5]~regout\ : std_logic;
SIGNAL \reg[6][5]~regout\ : std_logic;
SIGNAL \reg[4][5]~regout\ : std_logic;
SIGNAL \Mux26~12_combout\ : std_logic;
SIGNAL \reg[7][5]~regout\ : std_logic;
SIGNAL \Mux26~13_combout\ : std_logic;
SIGNAL \reg[26][6]~regout\ : std_logic;
SIGNAL \reg[22][6]~regout\ : std_logic;
SIGNAL \reg[18][6]~regout\ : std_logic;
SIGNAL \Mux25~4_combout\ : std_logic;
SIGNAL \reg[30][6]~regout\ : std_logic;
SIGNAL \Mux25~5_combout\ : std_logic;
SIGNAL \reg[24][6]~regout\ : std_logic;
SIGNAL \reg[16][6]~regout\ : std_logic;
SIGNAL \Mux25~8_combout\ : std_logic;
SIGNAL \reg[31][6]~regout\ : std_logic;
SIGNAL \reg[4][6]~regout\ : std_logic;
SIGNAL \Mux25~16_combout\ : std_logic;
SIGNAL \reg[10][6]~regout\ : std_logic;
SIGNAL \reg[8][6]~regout\ : std_logic;
SIGNAL \Mux25~19_combout\ : std_logic;
SIGNAL \Mux25~21_combout\ : std_logic;
SIGNAL \reg[13][6]~regout\ : std_logic;
SIGNAL \reg[12][6]~regout\ : std_logic;
SIGNAL \Mux25~23_combout\ : std_logic;
SIGNAL \reg[9][7]~regout\ : std_logic;
SIGNAL \reg[8][7]~regout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \reg[21][7]~regout\ : std_logic;
SIGNAL \reg[25][7]~regout\ : std_logic;
SIGNAL \reg[17][7]~regout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \reg[29][7]~regout\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \reg[26][7]~regout\ : std_logic;
SIGNAL \reg[22][7]~regout\ : std_logic;
SIGNAL \reg[18][7]~regout\ : std_logic;
SIGNAL \Mux24~4_combout\ : std_logic;
SIGNAL \reg[30][7]~regout\ : std_logic;
SIGNAL \Mux24~5_combout\ : std_logic;
SIGNAL \reg[24][7]~regout\ : std_logic;
SIGNAL \reg[16][7]~regout\ : std_logic;
SIGNAL \Mux24~6_combout\ : std_logic;
SIGNAL \reg[23][7]~regout\ : std_logic;
SIGNAL \reg[19][7]~regout\ : std_logic;
SIGNAL \Mux24~9_combout\ : std_logic;
SIGNAL \reg[14][7]~regout\ : std_logic;
SIGNAL \reg[12][7]~regout\ : std_logic;
SIGNAL \Mux24~17_combout\ : std_logic;
SIGNAL \reg[22][8]~regout\ : std_logic;
SIGNAL \reg[18][8]~regout\ : std_logic;
SIGNAL \Mux23~4_combout\ : std_logic;
SIGNAL \reg[21][8]~regout\ : std_logic;
SIGNAL \reg[25][8]~regout\ : std_logic;
SIGNAL \reg[17][8]~regout\ : std_logic;
SIGNAL \Mux23~6_combout\ : std_logic;
SIGNAL \reg[29][8]~regout\ : std_logic;
SIGNAL \Mux23~7_combout\ : std_logic;
SIGNAL \reg[27][8]~regout\ : std_logic;
SIGNAL \reg[23][8]~regout\ : std_logic;
SIGNAL \reg[19][8]~regout\ : std_logic;
SIGNAL \Mux23~11_combout\ : std_logic;
SIGNAL \reg[31][8]~regout\ : std_logic;
SIGNAL \Mux23~12_combout\ : std_logic;
SIGNAL \reg[9][8]~regout\ : std_logic;
SIGNAL \reg[10][8]~regout\ : std_logic;
SIGNAL \reg[8][8]~regout\ : std_logic;
SIGNAL \Mux23~19_combout\ : std_logic;
SIGNAL \reg[11][8]~regout\ : std_logic;
SIGNAL \Mux23~20_combout\ : std_logic;
SIGNAL \reg[15][8]~regout\ : std_logic;
SIGNAL \reg[11][9]~regout\ : std_logic;
SIGNAL \reg[22][9]~regout\ : std_logic;
SIGNAL \reg[18][9]~regout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \reg[28][9]~regout\ : std_logic;
SIGNAL \reg[23][9]~regout\ : std_logic;
SIGNAL \reg[19][9]~regout\ : std_logic;
SIGNAL \Mux22~9_combout\ : std_logic;
SIGNAL \reg[1][9]~regout\ : std_logic;
SIGNAL \reg[5][9]~regout\ : std_logic;
SIGNAL \reg[6][9]~regout\ : std_logic;
SIGNAL \reg[4][9]~regout\ : std_logic;
SIGNAL \Mux22~12_combout\ : std_logic;
SIGNAL \reg[7][9]~regout\ : std_logic;
SIGNAL \Mux22~13_combout\ : std_logic;
SIGNAL \Mux22~14_combout\ : std_logic;
SIGNAL \reg[22][10]~regout\ : std_logic;
SIGNAL \reg[18][10]~regout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \reg[21][10]~regout\ : std_logic;
SIGNAL \reg[25][10]~regout\ : std_logic;
SIGNAL \reg[17][10]~regout\ : std_logic;
SIGNAL \Mux21~6_combout\ : std_logic;
SIGNAL \reg[29][10]~regout\ : std_logic;
SIGNAL \Mux21~7_combout\ : std_logic;
SIGNAL \reg[27][10]~regout\ : std_logic;
SIGNAL \reg[23][10]~regout\ : std_logic;
SIGNAL \reg[19][10]~regout\ : std_logic;
SIGNAL \Mux21~11_combout\ : std_logic;
SIGNAL \reg[31][10]~regout\ : std_logic;
SIGNAL \Mux21~12_combout\ : std_logic;
SIGNAL \reg[2][10]~regout\ : std_logic;
SIGNAL \reg[5][10]~regout\ : std_logic;
SIGNAL \reg[6][10]~regout\ : std_logic;
SIGNAL \reg[7][10]~regout\ : std_logic;
SIGNAL \Mux21~15_combout\ : std_logic;
SIGNAL \reg[4][10]~regout\ : std_logic;
SIGNAL \Mux21~16_combout\ : std_logic;
SIGNAL \Mux21~17_combout\ : std_logic;
SIGNAL \Mux21~18_combout\ : std_logic;
SIGNAL \reg[11][10]~regout\ : std_logic;
SIGNAL \reg[15][10]~regout\ : std_logic;
SIGNAL \reg[11][11]~regout\ : std_logic;
SIGNAL \reg[21][11]~regout\ : std_logic;
SIGNAL \reg[25][11]~regout\ : std_logic;
SIGNAL \reg[17][11]~regout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \reg[29][11]~regout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \reg[26][11]~regout\ : std_logic;
SIGNAL \reg[22][11]~regout\ : std_logic;
SIGNAL \reg[18][11]~regout\ : std_logic;
SIGNAL \Mux20~4_combout\ : std_logic;
SIGNAL \reg[30][11]~regout\ : std_logic;
SIGNAL \Mux20~5_combout\ : std_logic;
SIGNAL \reg[20][11]~regout\ : std_logic;
SIGNAL \reg[24][11]~regout\ : std_logic;
SIGNAL \reg[16][11]~regout\ : std_logic;
SIGNAL \Mux20~6_combout\ : std_logic;
SIGNAL \reg[28][11]~regout\ : std_logic;
SIGNAL \Mux20~7_combout\ : std_logic;
SIGNAL \Mux20~8_combout\ : std_logic;
SIGNAL \reg[27][11]~regout\ : std_logic;
SIGNAL \reg[23][11]~regout\ : std_logic;
SIGNAL \reg[19][11]~regout\ : std_logic;
SIGNAL \Mux20~9_combout\ : std_logic;
SIGNAL \reg[31][11]~regout\ : std_logic;
SIGNAL \Mux20~10_combout\ : std_logic;
SIGNAL \Mux20~11_combout\ : std_logic;
SIGNAL \reg[3][11]~regout\ : std_logic;
SIGNAL \reg[7][11]~regout\ : std_logic;
SIGNAL \reg[26][12]~regout\ : std_logic;
SIGNAL \reg[22][12]~regout\ : std_logic;
SIGNAL \reg[18][12]~regout\ : std_logic;
SIGNAL \Mux19~4_combout\ : std_logic;
SIGNAL \reg[30][12]~regout\ : std_logic;
SIGNAL \Mux19~5_combout\ : std_logic;
SIGNAL \reg[21][12]~regout\ : std_logic;
SIGNAL \reg[25][12]~regout\ : std_logic;
SIGNAL \reg[17][12]~regout\ : std_logic;
SIGNAL \Mux19~6_combout\ : std_logic;
SIGNAL \reg[29][12]~regout\ : std_logic;
SIGNAL \Mux19~7_combout\ : std_logic;
SIGNAL \reg[24][12]~regout\ : std_logic;
SIGNAL \reg[16][12]~regout\ : std_logic;
SIGNAL \Mux19~8_combout\ : std_logic;
SIGNAL \reg[4][12]~regout\ : std_logic;
SIGNAL \Mux19~16_combout\ : std_logic;
SIGNAL \reg[9][12]~regout\ : std_logic;
SIGNAL \reg[10][12]~regout\ : std_logic;
SIGNAL \reg[8][12]~regout\ : std_logic;
SIGNAL \Mux19~19_combout\ : std_logic;
SIGNAL \reg[11][12]~regout\ : std_logic;
SIGNAL \Mux19~20_combout\ : std_logic;
SIGNAL \reg[13][12]~regout\ : std_logic;
SIGNAL \reg[12][12]~regout\ : std_logic;
SIGNAL \Mux19~23_combout\ : std_logic;
SIGNAL \reg[11][13]~regout\ : std_logic;
SIGNAL \reg[25][13]~regout\ : std_logic;
SIGNAL \reg[17][13]~regout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \reg[26][13]~regout\ : std_logic;
SIGNAL \reg[22][13]~regout\ : std_logic;
SIGNAL \reg[18][13]~regout\ : std_logic;
SIGNAL \Mux18~4_combout\ : std_logic;
SIGNAL \reg[30][13]~regout\ : std_logic;
SIGNAL \Mux18~5_combout\ : std_logic;
SIGNAL \reg[20][13]~regout\ : std_logic;
SIGNAL \reg[24][13]~regout\ : std_logic;
SIGNAL \reg[16][13]~regout\ : std_logic;
SIGNAL \Mux18~6_combout\ : std_logic;
SIGNAL \reg[28][13]~regout\ : std_logic;
SIGNAL \Mux18~7_combout\ : std_logic;
SIGNAL \Mux18~8_combout\ : std_logic;
SIGNAL \reg[5][13]~regout\ : std_logic;
SIGNAL \reg[6][13]~regout\ : std_logic;
SIGNAL \reg[4][13]~regout\ : std_logic;
SIGNAL \Mux18~12_combout\ : std_logic;
SIGNAL \reg[7][13]~regout\ : std_logic;
SIGNAL \Mux18~13_combout\ : std_logic;
SIGNAL \reg[22][14]~regout\ : std_logic;
SIGNAL \reg[18][14]~regout\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \reg[27][14]~regout\ : std_logic;
SIGNAL \reg[23][14]~regout\ : std_logic;
SIGNAL \reg[19][14]~regout\ : std_logic;
SIGNAL \Mux17~11_combout\ : std_logic;
SIGNAL \reg[31][14]~regout\ : std_logic;
SIGNAL \Mux17~12_combout\ : std_logic;
SIGNAL \reg[5][14]~regout\ : std_logic;
SIGNAL \reg[6][14]~regout\ : std_logic;
SIGNAL \reg[7][14]~regout\ : std_logic;
SIGNAL \Mux17~15_combout\ : std_logic;
SIGNAL \reg[4][14]~regout\ : std_logic;
SIGNAL \Mux17~16_combout\ : std_logic;
SIGNAL \Mux17~17_combout\ : std_logic;
SIGNAL \reg[9][15]~regout\ : std_logic;
SIGNAL \reg[8][15]~regout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \reg[25][15]~regout\ : std_logic;
SIGNAL \reg[17][15]~regout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \reg[26][15]~regout\ : std_logic;
SIGNAL \reg[22][15]~regout\ : std_logic;
SIGNAL \reg[18][15]~regout\ : std_logic;
SIGNAL \Mux16~4_combout\ : std_logic;
SIGNAL \reg[30][15]~regout\ : std_logic;
SIGNAL \Mux16~5_combout\ : std_logic;
SIGNAL \reg[20][15]~regout\ : std_logic;
SIGNAL \reg[24][15]~regout\ : std_logic;
SIGNAL \reg[16][15]~regout\ : std_logic;
SIGNAL \Mux16~6_combout\ : std_logic;
SIGNAL \reg[28][15]~regout\ : std_logic;
SIGNAL \Mux16~7_combout\ : std_logic;
SIGNAL \Mux16~8_combout\ : std_logic;
SIGNAL \reg[3][15]~regout\ : std_logic;
SIGNAL \reg[5][15]~regout\ : std_logic;
SIGNAL \reg[6][15]~regout\ : std_logic;
SIGNAL \reg[4][15]~regout\ : std_logic;
SIGNAL \Mux16~12_combout\ : std_logic;
SIGNAL \reg[7][15]~regout\ : std_logic;
SIGNAL \Mux16~13_combout\ : std_logic;
SIGNAL \reg[14][15]~regout\ : std_logic;
SIGNAL \reg[12][15]~regout\ : std_logic;
SIGNAL \Mux16~17_combout\ : std_logic;
SIGNAL \reg[18][16]~regout\ : std_logic;
SIGNAL \reg[30][16]~regout\ : std_logic;
SIGNAL \reg[21][16]~regout\ : std_logic;
SIGNAL \reg[25][16]~regout\ : std_logic;
SIGNAL \reg[17][16]~regout\ : std_logic;
SIGNAL \Mux15~6_combout\ : std_logic;
SIGNAL \reg[29][16]~regout\ : std_logic;
SIGNAL \Mux15~7_combout\ : std_logic;
SIGNAL \reg[20][16]~regout\ : std_logic;
SIGNAL \reg[24][16]~regout\ : std_logic;
SIGNAL \reg[16][16]~regout\ : std_logic;
SIGNAL \Mux15~8_combout\ : std_logic;
SIGNAL \reg[28][16]~regout\ : std_logic;
SIGNAL \Mux15~9_combout\ : std_logic;
SIGNAL \Mux15~10_combout\ : std_logic;
SIGNAL \reg[2][16]~regout\ : std_logic;
SIGNAL \reg[5][16]~regout\ : std_logic;
SIGNAL \reg[6][16]~regout\ : std_logic;
SIGNAL \reg[7][16]~regout\ : std_logic;
SIGNAL \Mux15~15_combout\ : std_logic;
SIGNAL \reg[4][16]~regout\ : std_logic;
SIGNAL \Mux15~16_combout\ : std_logic;
SIGNAL \Mux15~17_combout\ : std_logic;
SIGNAL \Mux15~18_combout\ : std_logic;
SIGNAL \reg[8][16]~regout\ : std_logic;
SIGNAL \reg[13][16]~regout\ : std_logic;
SIGNAL \reg[12][16]~regout\ : std_logic;
SIGNAL \Mux15~23_combout\ : std_logic;
SIGNAL \reg[25][17]~regout\ : std_logic;
SIGNAL \reg[17][17]~regout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \reg[26][17]~regout\ : std_logic;
SIGNAL \reg[22][17]~regout\ : std_logic;
SIGNAL \reg[18][17]~regout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \reg[30][17]~regout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \reg[20][17]~regout\ : std_logic;
SIGNAL \reg[24][17]~regout\ : std_logic;
SIGNAL \reg[16][17]~regout\ : std_logic;
SIGNAL \Mux14~6_combout\ : std_logic;
SIGNAL \reg[28][17]~regout\ : std_logic;
SIGNAL \Mux14~7_combout\ : std_logic;
SIGNAL \Mux14~8_combout\ : std_logic;
SIGNAL \reg[1][17]~regout\ : std_logic;
SIGNAL \reg[5][17]~regout\ : std_logic;
SIGNAL \reg[6][17]~regout\ : std_logic;
SIGNAL \reg[4][17]~regout\ : std_logic;
SIGNAL \Mux14~12_combout\ : std_logic;
SIGNAL \reg[7][17]~regout\ : std_logic;
SIGNAL \Mux14~13_combout\ : std_logic;
SIGNAL \Mux14~14_combout\ : std_logic;
SIGNAL \reg[14][17]~regout\ : std_logic;
SIGNAL \reg[12][17]~regout\ : std_logic;
SIGNAL \Mux14~17_combout\ : std_logic;
SIGNAL \reg[25][18]~regout\ : std_logic;
SIGNAL \reg[17][18]~regout\ : std_logic;
SIGNAL \Mux13~6_combout\ : std_logic;
SIGNAL \reg[20][18]~regout\ : std_logic;
SIGNAL \reg[24][18]~regout\ : std_logic;
SIGNAL \reg[16][18]~regout\ : std_logic;
SIGNAL \Mux13~8_combout\ : std_logic;
SIGNAL \reg[28][18]~regout\ : std_logic;
SIGNAL \Mux13~9_combout\ : std_logic;
SIGNAL \reg[5][18]~regout\ : std_logic;
SIGNAL \reg[6][18]~regout\ : std_logic;
SIGNAL \reg[7][18]~regout\ : std_logic;
SIGNAL \Mux13~15_combout\ : std_logic;
SIGNAL \reg[4][18]~regout\ : std_logic;
SIGNAL \Mux13~16_combout\ : std_logic;
SIGNAL \Mux13~17_combout\ : std_logic;
SIGNAL \reg[11][18]~regout\ : std_logic;
SIGNAL \Mux13~21_combout\ : std_logic;
SIGNAL \reg[15][18]~regout\ : std_logic;
SIGNAL \reg[9][19]~regout\ : std_logic;
SIGNAL \reg[8][19]~regout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \reg[18][19]~regout\ : std_logic;
SIGNAL \reg[20][19]~regout\ : std_logic;
SIGNAL \reg[24][19]~regout\ : std_logic;
SIGNAL \reg[16][19]~regout\ : std_logic;
SIGNAL \Mux12~6_combout\ : std_logic;
SIGNAL \reg[28][19]~regout\ : std_logic;
SIGNAL \Mux12~7_combout\ : std_logic;
SIGNAL \reg[27][19]~regout\ : std_logic;
SIGNAL \reg[23][19]~regout\ : std_logic;
SIGNAL \reg[19][19]~regout\ : std_logic;
SIGNAL \Mux12~9_combout\ : std_logic;
SIGNAL \reg[31][19]~regout\ : std_logic;
SIGNAL \Mux12~10_combout\ : std_logic;
SIGNAL \reg[6][19]~regout\ : std_logic;
SIGNAL \reg[4][19]~regout\ : std_logic;
SIGNAL \Mux12~12_combout\ : std_logic;
SIGNAL \reg[20][20]~regout\ : std_logic;
SIGNAL \reg[24][20]~regout\ : std_logic;
SIGNAL \reg[16][20]~regout\ : std_logic;
SIGNAL \Mux11~8_combout\ : std_logic;
SIGNAL \reg[28][20]~regout\ : std_logic;
SIGNAL \Mux11~9_combout\ : std_logic;
SIGNAL \reg[27][20]~regout\ : std_logic;
SIGNAL \reg[23][20]~regout\ : std_logic;
SIGNAL \reg[19][20]~regout\ : std_logic;
SIGNAL \Mux11~11_combout\ : std_logic;
SIGNAL \reg[31][20]~regout\ : std_logic;
SIGNAL \Mux11~12_combout\ : std_logic;
SIGNAL \reg[3][20]~regout\ : std_logic;
SIGNAL \reg[11][20]~regout\ : std_logic;
SIGNAL \Mux11~21_combout\ : std_logic;
SIGNAL \reg[13][20]~regout\ : std_logic;
SIGNAL \reg[12][20]~regout\ : std_logic;
SIGNAL \Mux11~23_combout\ : std_logic;
SIGNAL \reg[11][21]~regout\ : std_logic;
SIGNAL \reg[21][21]~regout\ : std_logic;
SIGNAL \reg[25][21]~regout\ : std_logic;
SIGNAL \reg[17][21]~regout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \reg[29][21]~regout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \reg[26][21]~regout\ : std_logic;
SIGNAL \reg[22][21]~regout\ : std_logic;
SIGNAL \reg[18][21]~regout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \reg[30][21]~regout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \reg[20][21]~regout\ : std_logic;
SIGNAL \reg[24][21]~regout\ : std_logic;
SIGNAL \reg[16][21]~regout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \reg[28][21]~regout\ : std_logic;
SIGNAL \Mux10~7_combout\ : std_logic;
SIGNAL \Mux10~8_combout\ : std_logic;
SIGNAL \reg[27][21]~regout\ : std_logic;
SIGNAL \reg[23][21]~regout\ : std_logic;
SIGNAL \reg[19][21]~regout\ : std_logic;
SIGNAL \Mux10~9_combout\ : std_logic;
SIGNAL \reg[31][21]~regout\ : std_logic;
SIGNAL \Mux10~10_combout\ : std_logic;
SIGNAL \Mux10~11_combout\ : std_logic;
SIGNAL \reg[6][21]~regout\ : std_logic;
SIGNAL \reg[4][21]~regout\ : std_logic;
SIGNAL \Mux10~12_combout\ : std_logic;
SIGNAL \reg[14][21]~regout\ : std_logic;
SIGNAL \reg[12][21]~regout\ : std_logic;
SIGNAL \Mux10~17_combout\ : std_logic;
SIGNAL \reg[21][22]~regout\ : std_logic;
SIGNAL \reg[25][22]~regout\ : std_logic;
SIGNAL \reg[17][22]~regout\ : std_logic;
SIGNAL \Mux9~6_combout\ : std_logic;
SIGNAL \reg[29][22]~regout\ : std_logic;
SIGNAL \Mux9~7_combout\ : std_logic;
SIGNAL \reg[20][22]~regout\ : std_logic;
SIGNAL \reg[24][22]~regout\ : std_logic;
SIGNAL \reg[16][22]~regout\ : std_logic;
SIGNAL \Mux9~8_combout\ : std_logic;
SIGNAL \reg[28][22]~regout\ : std_logic;
SIGNAL \Mux9~9_combout\ : std_logic;
SIGNAL \Mux9~10_combout\ : std_logic;
SIGNAL \Mux9~21_combout\ : std_logic;
SIGNAL \reg[13][22]~regout\ : std_logic;
SIGNAL \reg[12][22]~regout\ : std_logic;
SIGNAL \Mux9~23_combout\ : std_logic;
SIGNAL \reg[11][23]~regout\ : std_logic;
SIGNAL \reg[22][23]~regout\ : std_logic;
SIGNAL \reg[18][23]~regout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \reg[20][23]~regout\ : std_logic;
SIGNAL \reg[24][23]~regout\ : std_logic;
SIGNAL \reg[16][23]~regout\ : std_logic;
SIGNAL \Mux8~6_combout\ : std_logic;
SIGNAL \reg[28][23]~regout\ : std_logic;
SIGNAL \Mux8~7_combout\ : std_logic;
SIGNAL \reg[27][23]~regout\ : std_logic;
SIGNAL \reg[23][23]~regout\ : std_logic;
SIGNAL \reg[19][23]~regout\ : std_logic;
SIGNAL \Mux8~9_combout\ : std_logic;
SIGNAL \reg[31][23]~regout\ : std_logic;
SIGNAL \Mux8~10_combout\ : std_logic;
SIGNAL \reg[1][23]~regout\ : std_logic;
SIGNAL \reg[5][23]~regout\ : std_logic;
SIGNAL \reg[6][23]~regout\ : std_logic;
SIGNAL \reg[4][23]~regout\ : std_logic;
SIGNAL \Mux8~12_combout\ : std_logic;
SIGNAL \reg[7][23]~regout\ : std_logic;
SIGNAL \Mux8~13_combout\ : std_logic;
SIGNAL \Mux8~14_combout\ : std_logic;
SIGNAL \reg[22][24]~regout\ : std_logic;
SIGNAL \reg[18][24]~regout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \reg[23][24]~regout\ : std_logic;
SIGNAL \reg[19][24]~regout\ : std_logic;
SIGNAL \Mux7~11_combout\ : std_logic;
SIGNAL \reg[5][24]~regout\ : std_logic;
SIGNAL \reg[6][24]~regout\ : std_logic;
SIGNAL \reg[7][24]~regout\ : std_logic;
SIGNAL \Mux7~15_combout\ : std_logic;
SIGNAL \reg[4][24]~regout\ : std_logic;
SIGNAL \Mux7~16_combout\ : std_logic;
SIGNAL \Mux7~17_combout\ : std_logic;
SIGNAL \reg[9][24]~regout\ : std_logic;
SIGNAL \reg[10][24]~regout\ : std_logic;
SIGNAL \reg[8][24]~regout\ : std_logic;
SIGNAL \Mux7~19_combout\ : std_logic;
SIGNAL \reg[11][24]~regout\ : std_logic;
SIGNAL \Mux7~20_combout\ : std_logic;
SIGNAL \reg[13][24]~regout\ : std_logic;
SIGNAL \reg[12][24]~regout\ : std_logic;
SIGNAL \Mux7~23_combout\ : std_logic;
SIGNAL \reg[11][25]~regout\ : std_logic;
SIGNAL \reg[26][25]~regout\ : std_logic;
SIGNAL \reg[22][25]~regout\ : std_logic;
SIGNAL \reg[18][25]~regout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \reg[30][25]~regout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \reg[20][25]~regout\ : std_logic;
SIGNAL \reg[24][25]~regout\ : std_logic;
SIGNAL \reg[16][25]~regout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \reg[28][25]~regout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \Mux6~8_combout\ : std_logic;
SIGNAL \reg[31][25]~regout\ : std_logic;
SIGNAL \reg[3][25]~regout\ : std_logic;
SIGNAL \reg[5][25]~regout\ : std_logic;
SIGNAL \reg[6][25]~regout\ : std_logic;
SIGNAL \reg[4][25]~regout\ : std_logic;
SIGNAL \Mux6~12_combout\ : std_logic;
SIGNAL \reg[7][25]~regout\ : std_logic;
SIGNAL \Mux6~13_combout\ : std_logic;
SIGNAL \reg[14][25]~regout\ : std_logic;
SIGNAL \reg[12][25]~regout\ : std_logic;
SIGNAL \Mux6~17_combout\ : std_logic;
SIGNAL \reg[26][26]~regout\ : std_logic;
SIGNAL \reg[22][26]~regout\ : std_logic;
SIGNAL \reg[18][26]~regout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \reg[30][26]~regout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \reg[28][26]~regout\ : std_logic;
SIGNAL \reg[2][26]~regout\ : std_logic;
SIGNAL \reg[3][26]~regout\ : std_logic;
SIGNAL \reg[1][26]~regout\ : std_logic;
SIGNAL \reg[6][26]~regout\ : std_logic;
SIGNAL \reg[5][26]~regout\ : std_logic;
SIGNAL \reg[4][26]~regout\ : std_logic;
SIGNAL \Mux5~12_combout\ : std_logic;
SIGNAL \reg[7][26]~regout\ : std_logic;
SIGNAL \Mux5~13_combout\ : std_logic;
SIGNAL \Mux5~14_combout\ : std_logic;
SIGNAL \Mux5~15_combout\ : std_logic;
SIGNAL \reg[15][26]~regout\ : std_logic;
SIGNAL \reg[11][27]~regout\ : std_logic;
SIGNAL \reg[21][27]~regout\ : std_logic;
SIGNAL \reg[25][27]~regout\ : std_logic;
SIGNAL \reg[17][27]~regout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \reg[29][27]~regout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \reg[26][27]~regout\ : std_logic;
SIGNAL \reg[22][27]~regout\ : std_logic;
SIGNAL \reg[18][27]~regout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \reg[30][27]~regout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \reg[20][27]~regout\ : std_logic;
SIGNAL \reg[24][27]~regout\ : std_logic;
SIGNAL \reg[16][27]~regout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \reg[28][27]~regout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Mux4~8_combout\ : std_logic;
SIGNAL \reg[27][27]~regout\ : std_logic;
SIGNAL \reg[23][27]~regout\ : std_logic;
SIGNAL \reg[19][27]~regout\ : std_logic;
SIGNAL \Mux4~9_combout\ : std_logic;
SIGNAL \reg[31][27]~regout\ : std_logic;
SIGNAL \Mux4~10_combout\ : std_logic;
SIGNAL \Mux4~11_combout\ : std_logic;
SIGNAL \reg[1][27]~regout\ : std_logic;
SIGNAL \reg[5][27]~regout\ : std_logic;
SIGNAL \reg[6][27]~regout\ : std_logic;
SIGNAL \reg[4][27]~regout\ : std_logic;
SIGNAL \Mux4~12_combout\ : std_logic;
SIGNAL \reg[7][27]~regout\ : std_logic;
SIGNAL \Mux4~13_combout\ : std_logic;
SIGNAL \Mux4~14_combout\ : std_logic;
SIGNAL \reg[30][28]~regout\ : std_logic;
SIGNAL \reg[24][28]~regout\ : std_logic;
SIGNAL \reg[16][28]~regout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \reg[27][28]~regout\ : std_logic;
SIGNAL \reg[23][28]~regout\ : std_logic;
SIGNAL \reg[19][28]~regout\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \reg[31][28]~regout\ : std_logic;
SIGNAL \Mux3~8_combout\ : std_logic;
SIGNAL \reg[9][28]~regout\ : std_logic;
SIGNAL \reg[10][28]~regout\ : std_logic;
SIGNAL \reg[8][28]~regout\ : std_logic;
SIGNAL \Mux3~10_combout\ : std_logic;
SIGNAL \reg[11][28]~regout\ : std_logic;
SIGNAL \Mux3~11_combout\ : std_logic;
SIGNAL \reg[3][28]~regout\ : std_logic;
SIGNAL \reg[15][28]~regout\ : std_logic;
SIGNAL \reg[21][29]~regout\ : std_logic;
SIGNAL \reg[25][29]~regout\ : std_logic;
SIGNAL \reg[17][29]~regout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \reg[29][29]~regout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \reg[26][29]~regout\ : std_logic;
SIGNAL \reg[22][29]~regout\ : std_logic;
SIGNAL \reg[18][29]~regout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \reg[30][29]~regout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \reg[20][29]~regout\ : std_logic;
SIGNAL \reg[24][29]~regout\ : std_logic;
SIGNAL \reg[16][29]~regout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \reg[28][29]~regout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \reg[27][29]~regout\ : std_logic;
SIGNAL \reg[23][29]~regout\ : std_logic;
SIGNAL \reg[19][29]~regout\ : std_logic;
SIGNAL \Mux2~9_combout\ : std_logic;
SIGNAL \reg[31][29]~regout\ : std_logic;
SIGNAL \Mux2~10_combout\ : std_logic;
SIGNAL \Mux2~11_combout\ : std_logic;
SIGNAL \reg[1][29]~regout\ : std_logic;
SIGNAL \reg[5][29]~regout\ : std_logic;
SIGNAL \reg[6][29]~regout\ : std_logic;
SIGNAL \reg[4][29]~regout\ : std_logic;
SIGNAL \Mux2~12_combout\ : std_logic;
SIGNAL \reg[7][29]~regout\ : std_logic;
SIGNAL \Mux2~13_combout\ : std_logic;
SIGNAL \Mux2~14_combout\ : std_logic;
SIGNAL \reg[12][29]~regout\ : std_logic;
SIGNAL \reg[15][29]~regout\ : std_logic;
SIGNAL \reg[18][30]~regout\ : std_logic;
SIGNAL \reg[30][30]~regout\ : std_logic;
SIGNAL \reg[27][30]~regout\ : std_logic;
SIGNAL \reg[23][30]~regout\ : std_logic;
SIGNAL \reg[19][30]~regout\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \reg[31][30]~regout\ : std_logic;
SIGNAL \Mux1~8_combout\ : std_logic;
SIGNAL \reg[10][30]~regout\ : std_logic;
SIGNAL \reg[8][30]~regout\ : std_logic;
SIGNAL \Mux1~10_combout\ : std_logic;
SIGNAL \reg[3][30]~regout\ : std_logic;
SIGNAL \reg[6][30]~regout\ : std_logic;
SIGNAL \reg[5][30]~regout\ : std_logic;
SIGNAL \reg[4][30]~regout\ : std_logic;
SIGNAL \Mux1~12_combout\ : std_logic;
SIGNAL \reg[7][30]~regout\ : std_logic;
SIGNAL \Mux1~13_combout\ : std_logic;
SIGNAL \reg[13][30]~regout\ : std_logic;
SIGNAL \reg[12][30]~regout\ : std_logic;
SIGNAL \Mux1~17_combout\ : std_logic;
SIGNAL \reg[9][31]~regout\ : std_logic;
SIGNAL \reg[8][31]~regout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \reg[21][31]~regout\ : std_logic;
SIGNAL \reg[25][31]~regout\ : std_logic;
SIGNAL \reg[17][31]~regout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \reg[29][31]~regout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \reg[20][31]~regout\ : std_logic;
SIGNAL \reg[24][31]~regout\ : std_logic;
SIGNAL \reg[16][31]~regout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \reg[28][31]~regout\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \reg[23][31]~regout\ : std_logic;
SIGNAL \reg[19][31]~regout\ : std_logic;
SIGNAL \Mux0~9_combout\ : std_logic;
SIGNAL \reg[7][31]~regout\ : std_logic;
SIGNAL \reg[15][31]~regout\ : std_logic;
SIGNAL \Mux27~26_combout\ : std_logic;
SIGNAL \Mux23~26_combout\ : std_logic;
SIGNAL \Mux19~26_combout\ : std_logic;
SIGNAL \Mux7~26_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \reg[31][1]~feeder_combout\ : std_logic;
SIGNAL \reg[30][1]~feeder_combout\ : std_logic;
SIGNAL \reg[19][2]~feeder_combout\ : std_logic;
SIGNAL \reg[12][2]~feeder_combout\ : std_logic;
SIGNAL \reg[28][2]~feeder_combout\ : std_logic;
SIGNAL \reg[18][3]~feeder_combout\ : std_logic;
SIGNAL \reg[30][3]~feeder_combout\ : std_logic;
SIGNAL \reg[28][3]~feeder_combout\ : std_logic;
SIGNAL \reg[4][3]~feeder_combout\ : std_logic;
SIGNAL \reg[31][3]~feeder_combout\ : std_logic;
SIGNAL \reg[28][4]~feeder_combout\ : std_logic;
SIGNAL \reg[7][4]~feeder_combout\ : std_logic;
SIGNAL \reg[19][4]~feeder_combout\ : std_logic;
SIGNAL \reg[31][4]~feeder_combout\ : std_logic;
SIGNAL \reg[8][4]~feeder_combout\ : std_logic;
SIGNAL \reg[18][5]~feeder_combout\ : std_logic;
SIGNAL \reg[17][5]~feeder_combout\ : std_logic;
SIGNAL \reg[19][5]~feeder_combout\ : std_logic;
SIGNAL \reg[7][5]~feeder_combout\ : std_logic;
SIGNAL \reg[16][5]~feeder_combout\ : std_logic;
SIGNAL \reg[30][6]~feeder_combout\ : std_logic;
SIGNAL \reg[19][7]~feeder_combout\ : std_logic;
SIGNAL \reg[17][7]~feeder_combout\ : std_logic;
SIGNAL \reg[12][7]~feeder_combout\ : std_logic;
SIGNAL \reg[11][8]~feeder_combout\ : std_logic;
SIGNAL \reg[29][8]~feeder_combout\ : std_logic;
SIGNAL \reg[19][8]~feeder_combout\ : std_logic;
SIGNAL \reg[7][9]~feeder_combout\ : std_logic;
SIGNAL \reg[16][11]~feeder_combout\ : std_logic;
SIGNAL \reg[28][11]~feeder_combout\ : std_logic;
SIGNAL \reg[11][11]~feeder_combout\ : std_logic;
SIGNAL \reg[3][11]~feeder_combout\ : std_logic;
SIGNAL \reg[19][11]~feeder_combout\ : std_logic;
SIGNAL \reg[30][12]~feeder_combout\ : std_logic;
SIGNAL \reg[29][12]~feeder_combout\ : std_logic;
SIGNAL \reg[7][13]~feeder_combout\ : std_logic;
SIGNAL \reg[4][13]~feeder_combout\ : std_logic;
SIGNAL \reg[11][13]~feeder_combout\ : std_logic;
SIGNAL \reg[16][13]~feeder_combout\ : std_logic;
SIGNAL \reg[19][14]~feeder_combout\ : std_logic;
SIGNAL \reg[31][14]~feeder_combout\ : std_logic;
SIGNAL \reg[17][15]~feeder_combout\ : std_logic;
SIGNAL \reg[30][15]~feeder_combout\ : std_logic;
SIGNAL \reg[18][15]~feeder_combout\ : std_logic;
SIGNAL \reg[8][15]~feeder_combout\ : std_logic;
SIGNAL \reg[16][16]~feeder_combout\ : std_logic;
SIGNAL \reg[28][16]~feeder_combout\ : std_logic;
SIGNAL \reg[8][16]~feeder_combout\ : std_logic;
SIGNAL \reg[7][16]~feeder_combout\ : std_logic;
SIGNAL \reg[18][16]~feeder_combout\ : std_logic;
SIGNAL \reg[12][16]~feeder_combout\ : std_logic;
SIGNAL \reg[16][17]~feeder_combout\ : std_logic;
SIGNAL \reg[18][17]~feeder_combout\ : std_logic;
SIGNAL \reg[17][17]~feeder_combout\ : std_logic;
SIGNAL \reg[4][17]~feeder_combout\ : std_logic;
SIGNAL \reg[7][17]~feeder_combout\ : std_logic;
SIGNAL \reg[17][18]~feeder_combout\ : std_logic;
SIGNAL \reg[16][18]~feeder_combout\ : std_logic;
SIGNAL \reg[4][19]~feeder_combout\ : std_logic;
SIGNAL \reg[16][20]~feeder_combout\ : std_logic;
SIGNAL \reg[28][20]~feeder_combout\ : std_logic;
SIGNAL \reg[31][21]~feeder_combout\ : std_logic;
SIGNAL \reg[28][21]~feeder_combout\ : std_logic;
SIGNAL \reg[12][21]~feeder_combout\ : std_logic;
SIGNAL \reg[17][21]~feeder_combout\ : std_logic;
SIGNAL \reg[29][21]~feeder_combout\ : std_logic;
SIGNAL \reg[11][21]~feeder_combout\ : std_logic;
SIGNAL \reg[18][21]~feeder_combout\ : std_logic;
SIGNAL \reg[29][22]~feeder_combout\ : std_logic;
SIGNAL \reg[12][22]~feeder_combout\ : std_logic;
SIGNAL \reg[4][23]~feeder_combout\ : std_logic;
SIGNAL \reg[18][23]~feeder_combout\ : std_logic;
SIGNAL \reg[19][24]~feeder_combout\ : std_logic;
SIGNAL \reg[11][24]~feeder_combout\ : std_logic;
SIGNAL \reg[18][24]~feeder_combout\ : std_logic;
SIGNAL \reg[3][25]~feeder_combout\ : std_logic;
SIGNAL \reg[4][25]~feeder_combout\ : std_logic;
SIGNAL \reg[30][25]~feeder_combout\ : std_logic;
SIGNAL \reg[15][26]~feeder_combout\ : std_logic;
SIGNAL \reg[18][26]~feeder_combout\ : std_logic;
SIGNAL \reg[7][26]~feeder_combout\ : std_logic;
SIGNAL \reg[4][26]~feeder_combout\ : std_logic;
SIGNAL \reg[18][27]~feeder_combout\ : std_logic;
SIGNAL \reg[31][27]~feeder_combout\ : std_logic;
SIGNAL \reg[19][27]~feeder_combout\ : std_logic;
SIGNAL \reg[29][27]~feeder_combout\ : std_logic;
SIGNAL \reg[4][27]~feeder_combout\ : std_logic;
SIGNAL \reg[19][28]~feeder_combout\ : std_logic;
SIGNAL \reg[3][28]~feeder_combout\ : std_logic;
SIGNAL \reg[30][28]~feeder_combout\ : std_logic;
SIGNAL \reg[11][28]~feeder_combout\ : std_logic;
SIGNAL \reg[31][29]~feeder_combout\ : std_logic;
SIGNAL \reg[16][29]~feeder_combout\ : std_logic;
SIGNAL \reg[19][29]~feeder_combout\ : std_logic;
SIGNAL \reg[4][29]~feeder_combout\ : std_logic;
SIGNAL \reg[12][29]~feeder_combout\ : std_logic;
SIGNAL \reg[30][29]~feeder_combout\ : std_logic;
SIGNAL \reg[8][30]~feeder_combout\ : std_logic;
SIGNAL \reg[3][30]~feeder_combout\ : std_logic;
SIGNAL \reg[12][30]~feeder_combout\ : std_logic;
SIGNAL \reg[19][30]~feeder_combout\ : std_logic;
SIGNAL \reg[18][30]~feeder_combout\ : std_logic;
SIGNAL \reg[7][31]~feeder_combout\ : std_logic;
SIGNAL \reg[8][31]~feeder_combout\ : std_logic;
SIGNAL \reg[19][31]~feeder_combout\ : std_logic;
SIGNAL \Mux31~14_combout\ : std_logic;
SIGNAL \reset_n~combout\ : std_logic;
SIGNAL \reset_n~clkctrl_outclk\ : std_logic;
SIGNAL \en~combout\ : std_logic;
SIGNAL \Equal15~25_combout\ : std_logic;
SIGNAL \Equal15~38_combout\ : std_logic;
SIGNAL \reg[15][0]~regout\ : std_logic;
SIGNAL \Equal15~27_combout\ : std_logic;
SIGNAL \Equal15~35_combout\ : std_logic;
SIGNAL \reg[14][0]~regout\ : std_logic;
SIGNAL \Equal15~36_combout\ : std_logic;
SIGNAL \reg[13][0]~regout\ : std_logic;
SIGNAL \Equal15~37_combout\ : std_logic;
SIGNAL \reg[12][0]~regout\ : std_logic;
SIGNAL \Mux31~28_combout\ : std_logic;
SIGNAL \Mux31~29_combout\ : std_logic;
SIGNAL \Equal15~20_combout\ : std_logic;
SIGNAL \Equal15~24_combout\ : std_logic;
SIGNAL \reg[3][0]~regout\ : std_logic;
SIGNAL \Equal15~22_combout\ : std_logic;
SIGNAL \Equal15~23_combout\ : std_logic;
SIGNAL \reg[2][0]~regout\ : std_logic;
SIGNAL \Mux31~18_combout\ : std_logic;
SIGNAL \Mux31~22_combout\ : std_logic;
SIGNAL \Equal15~34_combout\ : std_logic;
SIGNAL \reg[11][0]~regout\ : std_logic;
SIGNAL \Equal15~31_combout\ : std_logic;
SIGNAL \reg[9][0]~regout\ : std_logic;
SIGNAL \Equal15~32_combout\ : std_logic;
SIGNAL \reg[10][0]~regout\ : std_logic;
SIGNAL \Equal15~33_combout\ : std_logic;
SIGNAL \reg[8][0]~regout\ : std_logic;
SIGNAL \Mux31~24_combout\ : std_logic;
SIGNAL \Mux31~25_combout\ : std_logic;
SIGNAL \Mux31~31_combout\ : std_logic;
SIGNAL \Mux31~16_combout\ : std_logic;
SIGNAL \Equal15~21_combout\ : std_logic;
SIGNAL \reg[1][0]~regout\ : std_logic;
SIGNAL \Mux31~15_combout\ : std_logic;
SIGNAL \Mux31~17_combout\ : std_logic;
SIGNAL \Mux31~27_combout\ : std_logic;
SIGNAL \Equal15~8_combout\ : std_logic;
SIGNAL \Equal15~9_combout\ : std_logic;
SIGNAL \reg[25][0]~regout\ : std_logic;
SIGNAL \Equal15~10_combout\ : std_logic;
SIGNAL \reg[17][0]~regout\ : std_logic;
SIGNAL \Mux31~6_combout\ : std_logic;
SIGNAL \Equal15~6_combout\ : std_logic;
SIGNAL \Equal15~7_combout\ : std_logic;
SIGNAL \reg[21][0]~regout\ : std_logic;
SIGNAL \Equal15~11_combout\ : std_logic;
SIGNAL \reg[29][0]~regout\ : std_logic;
SIGNAL \Mux31~7_combout\ : std_logic;
SIGNAL \Equal15~0_combout\ : std_logic;
SIGNAL \Equal15~12_combout\ : std_logic;
SIGNAL \reg[24][0]~regout\ : std_logic;
SIGNAL \Equal15~2_combout\ : std_logic;
SIGNAL \Equal15~13_combout\ : std_logic;
SIGNAL \reg[20][0]~regout\ : std_logic;
SIGNAL \Equal15~14_combout\ : std_logic;
SIGNAL \reg[16][0]~regout\ : std_logic;
SIGNAL \Mux31~8_combout\ : std_logic;
SIGNAL \Mux31~9_combout\ : std_logic;
SIGNAL \Mux31~10_combout\ : std_logic;
SIGNAL \Equal15~19_combout\ : std_logic;
SIGNAL \reg[31][0]~regout\ : std_logic;
SIGNAL \Equal15~16_combout\ : std_logic;
SIGNAL \reg[27][0]~regout\ : std_logic;
SIGNAL \Equal15~17_combout\ : std_logic;
SIGNAL \reg[23][0]~regout\ : std_logic;
SIGNAL \Equal15~18_combout\ : std_logic;
SIGNAL \reg[19][0]~regout\ : std_logic;
SIGNAL \Mux31~11_combout\ : std_logic;
SIGNAL \Mux31~12_combout\ : std_logic;
SIGNAL \Equal15~3_combout\ : std_logic;
SIGNAL \reg[22][0]~regout\ : std_logic;
SIGNAL \Equal15~4_combout\ : std_logic;
SIGNAL \reg[18][0]~regout\ : std_logic;
SIGNAL \Mux31~4_combout\ : std_logic;
SIGNAL \Equal15~1_combout\ : std_logic;
SIGNAL \reg[26][0]~regout\ : std_logic;
SIGNAL \Equal15~5_combout\ : std_logic;
SIGNAL \reg[30][0]~regout\ : std_logic;
SIGNAL \Mux31~5_combout\ : std_logic;
SIGNAL \Mux31~13_combout\ : std_logic;
SIGNAL \Mux31~30_combout\ : std_logic;
SIGNAL \Mux31~23_combout\ : std_logic;
SIGNAL \reg[10][1]~regout\ : std_logic;
SIGNAL \reg[11][1]~regout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \reg[25][1]~regout\ : std_logic;
SIGNAL \reg[17][1]~regout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \reg[21][1]~regout\ : std_logic;
SIGNAL \reg[29][1]~regout\ : std_logic;
SIGNAL \Mux30~3_combout\ : std_logic;
SIGNAL \reg[20][1]~regout\ : std_logic;
SIGNAL \reg[24][1]~regout\ : std_logic;
SIGNAL \reg[16][1]~regout\ : std_logic;
SIGNAL \Mux30~6_combout\ : std_logic;
SIGNAL \Mux30~7_combout\ : std_logic;
SIGNAL \Mux30~8_combout\ : std_logic;
SIGNAL \Mux30~11_combout\ : std_logic;
SIGNAL \Mux30~16_combout\ : std_logic;
SIGNAL \reg[15][1]~regout\ : std_logic;
SIGNAL \reg[13][1]~regout\ : std_logic;
SIGNAL \reg[12][1]~feeder_combout\ : std_logic;
SIGNAL \reg[12][1]~regout\ : std_logic;
SIGNAL \reg[14][1]~regout\ : std_logic;
SIGNAL \Mux30~17_combout\ : std_logic;
SIGNAL \Mux30~18_combout\ : std_logic;
SIGNAL \Mux30~19_combout\ : std_logic;
SIGNAL \reg[25][2]~regout\ : std_logic;
SIGNAL \reg[17][2]~regout\ : std_logic;
SIGNAL \Mux29~6_combout\ : std_logic;
SIGNAL \reg[21][2]~regout\ : std_logic;
SIGNAL \reg[29][2]~feeder_combout\ : std_logic;
SIGNAL \reg[29][2]~regout\ : std_logic;
SIGNAL \Mux29~7_combout\ : std_logic;
SIGNAL \Mux29~10_combout\ : std_logic;
SIGNAL \reg[22][2]~regout\ : std_logic;
SIGNAL \reg[18][2]~feeder_combout\ : std_logic;
SIGNAL \reg[18][2]~regout\ : std_logic;
SIGNAL \Mux29~4_combout\ : std_logic;
SIGNAL \reg[26][2]~regout\ : std_logic;
SIGNAL \reg[30][2]~feeder_combout\ : std_logic;
SIGNAL \reg[30][2]~regout\ : std_logic;
SIGNAL \Mux29~5_combout\ : std_logic;
SIGNAL \Mux29~13_combout\ : std_logic;
SIGNAL \reg[3][2]~regout\ : std_logic;
SIGNAL \Mux29~21_combout\ : std_logic;
SIGNAL \reg[9][2]~regout\ : std_logic;
SIGNAL \reg[11][2]~feeder_combout\ : std_logic;
SIGNAL \reg[11][2]~regout\ : std_logic;
SIGNAL \Mux29~20_combout\ : std_logic;
SIGNAL \Mux29~26_combout\ : std_logic;
SIGNAL \reg[1][2]~regout\ : std_logic;
SIGNAL \Mux29~14_combout\ : std_logic;
SIGNAL \Mux29~22_combout\ : std_logic;
SIGNAL \reg[15][2]~feeder_combout\ : std_logic;
SIGNAL \reg[15][2]~regout\ : std_logic;
SIGNAL \reg[14][2]~regout\ : std_logic;
SIGNAL \reg[13][2]~regout\ : std_logic;
SIGNAL \Mux29~23_combout\ : std_logic;
SIGNAL \Mux29~24_combout\ : std_logic;
SIGNAL \Mux29~25_combout\ : std_logic;
SIGNAL \reg[10][3]~regout\ : std_logic;
SIGNAL \reg[11][3]~feeder_combout\ : std_logic;
SIGNAL \reg[11][3]~regout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \reg[3][3]~regout\ : std_logic;
SIGNAL \reg[2][3]~regout\ : std_logic;
SIGNAL \reg[1][3]~regout\ : std_logic;
SIGNAL \Mux28~14_combout\ : std_logic;
SIGNAL \Mux28~15_combout\ : std_logic;
SIGNAL \Mux28~16_combout\ : std_logic;
SIGNAL \reg[15][3]~regout\ : std_logic;
SIGNAL \reg[13][3]~regout\ : std_logic;
SIGNAL \reg[12][3]~feeder_combout\ : std_logic;
SIGNAL \reg[12][3]~regout\ : std_logic;
SIGNAL \reg[14][3]~regout\ : std_logic;
SIGNAL \Mux28~17_combout\ : std_logic;
SIGNAL \Mux28~18_combout\ : std_logic;
SIGNAL \Mux28~19_combout\ : std_logic;
SIGNAL \reg[13][4]~regout\ : std_logic;
SIGNAL \reg[12][4]~feeder_combout\ : std_logic;
SIGNAL \reg[12][4]~regout\ : std_logic;
SIGNAL \Mux27~23_combout\ : std_logic;
SIGNAL \reg[14][4]~regout\ : std_logic;
SIGNAL \reg[15][4]~regout\ : std_logic;
SIGNAL \Mux27~24_combout\ : std_logic;
SIGNAL \reg[3][4]~regout\ : std_logic;
SIGNAL \reg[2][4]~regout\ : std_logic;
SIGNAL \Mux27~18_combout\ : std_logic;
SIGNAL \reg[1][4]~regout\ : std_logic;
SIGNAL \Mux27~14_combout\ : std_logic;
SIGNAL \Mux27~21_combout\ : std_logic;
SIGNAL \Mux27~22_combout\ : std_logic;
SIGNAL \reg[22][4]~regout\ : std_logic;
SIGNAL \reg[18][4]~regout\ : std_logic;
SIGNAL \Mux27~4_combout\ : std_logic;
SIGNAL \reg[26][4]~regout\ : std_logic;
SIGNAL \reg[30][4]~feeder_combout\ : std_logic;
SIGNAL \reg[30][4]~regout\ : std_logic;
SIGNAL \Mux27~5_combout\ : std_logic;
SIGNAL \reg[29][4]~regout\ : std_logic;
SIGNAL \reg[21][4]~regout\ : std_logic;
SIGNAL \reg[25][4]~regout\ : std_logic;
SIGNAL \reg[17][4]~regout\ : std_logic;
SIGNAL \Mux27~6_combout\ : std_logic;
SIGNAL \Mux27~7_combout\ : std_logic;
SIGNAL \Mux27~10_combout\ : std_logic;
SIGNAL \Mux27~13_combout\ : std_logic;
SIGNAL \Mux27~25_combout\ : std_logic;
SIGNAL \reg[10][5]~regout\ : std_logic;
SIGNAL \reg[9][5]~regout\ : std_logic;
SIGNAL \reg[8][5]~feeder_combout\ : std_logic;
SIGNAL \reg[8][5]~regout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \reg[15][5]~feeder_combout\ : std_logic;
SIGNAL \reg[15][5]~regout\ : std_logic;
SIGNAL \reg[13][5]~regout\ : std_logic;
SIGNAL \reg[12][5]~regout\ : std_logic;
SIGNAL \reg[14][5]~regout\ : std_logic;
SIGNAL \Mux26~17_combout\ : std_logic;
SIGNAL \Mux26~18_combout\ : std_logic;
SIGNAL \reg[3][5]~regout\ : std_logic;
SIGNAL \reg[2][5]~regout\ : std_logic;
SIGNAL \reg[1][5]~regout\ : std_logic;
SIGNAL \Mux26~14_combout\ : std_logic;
SIGNAL \Mux26~15_combout\ : std_logic;
SIGNAL \Mux26~16_combout\ : std_logic;
SIGNAL \Mux26~19_combout\ : std_logic;
SIGNAL \reg[27][6]~regout\ : std_logic;
SIGNAL \reg[23][6]~regout\ : std_logic;
SIGNAL \reg[19][6]~feeder_combout\ : std_logic;
SIGNAL \reg[19][6]~regout\ : std_logic;
SIGNAL \Mux25~11_combout\ : std_logic;
SIGNAL \Mux25~12_combout\ : std_logic;
SIGNAL \reg[25][6]~regout\ : std_logic;
SIGNAL \reg[17][6]~regout\ : std_logic;
SIGNAL \Mux25~6_combout\ : std_logic;
SIGNAL \reg[21][6]~regout\ : std_logic;
SIGNAL \reg[29][6]~regout\ : std_logic;
SIGNAL \Mux25~7_combout\ : std_logic;
SIGNAL \reg[20][6]~regout\ : std_logic;
SIGNAL \reg[28][6]~feeder_combout\ : std_logic;
SIGNAL \Equal15~15_combout\ : std_logic;
SIGNAL \reg[28][6]~regout\ : std_logic;
SIGNAL \Mux25~9_combout\ : std_logic;
SIGNAL \Mux25~10_combout\ : std_logic;
SIGNAL \Mux25~13_combout\ : std_logic;
SIGNAL \reg[1][6]~regout\ : std_logic;
SIGNAL \Mux25~14_combout\ : std_logic;
SIGNAL \reg[9][6]~regout\ : std_logic;
SIGNAL \reg[11][6]~regout\ : std_logic;
SIGNAL \Mux25~20_combout\ : std_logic;
SIGNAL \Mux25~26_combout\ : std_logic;
SIGNAL \Equal15~26_combout\ : std_logic;
SIGNAL \reg[5][6]~regout\ : std_logic;
SIGNAL \Equal15~28_combout\ : std_logic;
SIGNAL \reg[6][6]~regout\ : std_logic;
SIGNAL \reg[7][6]~feeder_combout\ : std_logic;
SIGNAL \Equal15~29_combout\ : std_logic;
SIGNAL \reg[7][6]~regout\ : std_logic;
SIGNAL \Mux25~15_combout\ : std_logic;
SIGNAL \Mux25~17_combout\ : std_logic;
SIGNAL \reg[2][6]~regout\ : std_logic;
SIGNAL \reg[3][6]~regout\ : std_logic;
SIGNAL \Mux25~18_combout\ : std_logic;
SIGNAL \Mux25~22_combout\ : std_logic;
SIGNAL \reg[14][6]~regout\ : std_logic;
SIGNAL \reg[15][6]~regout\ : std_logic;
SIGNAL \Mux25~24_combout\ : std_logic;
SIGNAL \Mux25~25_combout\ : std_logic;
SIGNAL \reg[3][7]~regout\ : std_logic;
SIGNAL \reg[2][7]~regout\ : std_logic;
SIGNAL \reg[6][7]~regout\ : std_logic;
SIGNAL \Equal15~30_combout\ : std_logic;
SIGNAL \reg[4][7]~regout\ : std_logic;
SIGNAL \Mux24~12_combout\ : std_logic;
SIGNAL \reg[5][7]~regout\ : std_logic;
SIGNAL \reg[7][7]~feeder_combout\ : std_logic;
SIGNAL \reg[7][7]~regout\ : std_logic;
SIGNAL \Mux24~13_combout\ : std_logic;
SIGNAL \reg[1][7]~regout\ : std_logic;
SIGNAL \Mux24~14_combout\ : std_logic;
SIGNAL \Mux24~15_combout\ : std_logic;
SIGNAL \reg[27][7]~regout\ : std_logic;
SIGNAL \reg[31][7]~regout\ : std_logic;
SIGNAL \Mux24~10_combout\ : std_logic;
SIGNAL \reg[20][7]~regout\ : std_logic;
SIGNAL \reg[28][7]~feeder_combout\ : std_logic;
SIGNAL \reg[28][7]~regout\ : std_logic;
SIGNAL \Mux24~7_combout\ : std_logic;
SIGNAL \Mux24~8_combout\ : std_logic;
SIGNAL \Mux24~11_combout\ : std_logic;
SIGNAL \Mux24~16_combout\ : std_logic;
SIGNAL \reg[13][7]~regout\ : std_logic;
SIGNAL \reg[15][7]~regout\ : std_logic;
SIGNAL \Mux24~18_combout\ : std_logic;
SIGNAL \reg[10][7]~regout\ : std_logic;
SIGNAL \reg[11][7]~regout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux24~19_combout\ : std_logic;
SIGNAL \reg[26][8]~regout\ : std_logic;
SIGNAL \reg[30][8]~regout\ : std_logic;
SIGNAL \Mux23~5_combout\ : std_logic;
SIGNAL \reg[28][8]~feeder_combout\ : std_logic;
SIGNAL \reg[28][8]~regout\ : std_logic;
SIGNAL \reg[20][8]~regout\ : std_logic;
SIGNAL \reg[24][8]~regout\ : std_logic;
SIGNAL \reg[16][8]~feeder_combout\ : std_logic;
SIGNAL \reg[16][8]~regout\ : std_logic;
SIGNAL \Mux23~8_combout\ : std_logic;
SIGNAL \Mux23~9_combout\ : std_logic;
SIGNAL \Mux23~10_combout\ : std_logic;
SIGNAL \Mux23~13_combout\ : std_logic;
SIGNAL \reg[1][8]~regout\ : std_logic;
SIGNAL \Mux23~14_combout\ : std_logic;
SIGNAL \reg[3][8]~regout\ : std_logic;
SIGNAL \Mux23~21_combout\ : std_logic;
SIGNAL \reg[4][8]~regout\ : std_logic;
SIGNAL \reg[6][8]~regout\ : std_logic;
SIGNAL \reg[7][8]~regout\ : std_logic;
SIGNAL \Mux23~15_combout\ : std_logic;
SIGNAL \Mux23~16_combout\ : std_logic;
SIGNAL \reg[5][8]~regout\ : std_logic;
SIGNAL \Mux23~17_combout\ : std_logic;
SIGNAL \reg[2][8]~regout\ : std_logic;
SIGNAL \Mux23~18_combout\ : std_logic;
SIGNAL \Mux23~22_combout\ : std_logic;
SIGNAL \reg[14][8]~regout\ : std_logic;
SIGNAL \reg[13][8]~regout\ : std_logic;
SIGNAL \reg[12][8]~feeder_combout\ : std_logic;
SIGNAL \reg[12][8]~regout\ : std_logic;
SIGNAL \Mux23~23_combout\ : std_logic;
SIGNAL \Mux23~24_combout\ : std_logic;
SIGNAL \Mux23~25_combout\ : std_logic;
SIGNAL \reg[10][9]~regout\ : std_logic;
SIGNAL \reg[9][9]~regout\ : std_logic;
SIGNAL \reg[8][9]~feeder_combout\ : std_logic;
SIGNAL \reg[8][9]~regout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \reg[3][9]~regout\ : std_logic;
SIGNAL \reg[2][9]~regout\ : std_logic;
SIGNAL \Mux22~15_combout\ : std_logic;
SIGNAL \reg[26][9]~regout\ : std_logic;
SIGNAL \reg[30][9]~feeder_combout\ : std_logic;
SIGNAL \reg[30][9]~regout\ : std_logic;
SIGNAL \Mux22~5_combout\ : std_logic;
SIGNAL \reg[20][9]~regout\ : std_logic;
SIGNAL \reg[24][9]~regout\ : std_logic;
SIGNAL \reg[16][9]~feeder_combout\ : std_logic;
SIGNAL \reg[16][9]~regout\ : std_logic;
SIGNAL \Mux22~6_combout\ : std_logic;
SIGNAL \Mux22~7_combout\ : std_logic;
SIGNAL \Mux22~8_combout\ : std_logic;
SIGNAL \reg[25][9]~regout\ : std_logic;
SIGNAL \reg[17][9]~feeder_combout\ : std_logic;
SIGNAL \reg[17][9]~regout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \reg[21][9]~regout\ : std_logic;
SIGNAL \reg[29][9]~regout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \reg[27][9]~regout\ : std_logic;
SIGNAL \reg[31][9]~regout\ : std_logic;
SIGNAL \Mux22~10_combout\ : std_logic;
SIGNAL \Mux22~11_combout\ : std_logic;
SIGNAL \Mux22~16_combout\ : std_logic;
SIGNAL \reg[15][9]~regout\ : std_logic;
SIGNAL \reg[13][9]~regout\ : std_logic;
SIGNAL \reg[14][9]~regout\ : std_logic;
SIGNAL \reg[12][9]~feeder_combout\ : std_logic;
SIGNAL \reg[12][9]~regout\ : std_logic;
SIGNAL \Mux22~17_combout\ : std_logic;
SIGNAL \Mux22~18_combout\ : std_logic;
SIGNAL \Mux22~19_combout\ : std_logic;
SIGNAL \reg[3][10]~regout\ : std_logic;
SIGNAL \reg[1][10]~regout\ : std_logic;
SIGNAL \Mux21~14_combout\ : std_logic;
SIGNAL \Mux21~21_combout\ : std_logic;
SIGNAL \reg[10][10]~regout\ : std_logic;
SIGNAL \reg[8][10]~regout\ : std_logic;
SIGNAL \Mux21~19_combout\ : std_logic;
SIGNAL \reg[9][10]~regout\ : std_logic;
SIGNAL \Mux21~20_combout\ : std_logic;
SIGNAL \Mux21~26_combout\ : std_logic;
SIGNAL \Mux21~22_combout\ : std_logic;
SIGNAL \reg[14][10]~regout\ : std_logic;
SIGNAL \reg[13][10]~regout\ : std_logic;
SIGNAL \reg[12][10]~regout\ : std_logic;
SIGNAL \Mux21~23_combout\ : std_logic;
SIGNAL \Mux21~24_combout\ : std_logic;
SIGNAL \reg[26][10]~regout\ : std_logic;
SIGNAL \reg[30][10]~regout\ : std_logic;
SIGNAL \Mux21~5_combout\ : std_logic;
SIGNAL \reg[24][10]~regout\ : std_logic;
SIGNAL \reg[16][10]~feeder_combout\ : std_logic;
SIGNAL \reg[16][10]~regout\ : std_logic;
SIGNAL \Mux21~8_combout\ : std_logic;
SIGNAL \reg[20][10]~regout\ : std_logic;
SIGNAL \reg[28][10]~regout\ : std_logic;
SIGNAL \Mux21~9_combout\ : std_logic;
SIGNAL \Mux21~10_combout\ : std_logic;
SIGNAL \Mux21~13_combout\ : std_logic;
SIGNAL \Mux21~25_combout\ : std_logic;
SIGNAL \reg[10][11]~regout\ : std_logic;
SIGNAL \reg[9][11]~regout\ : std_logic;
SIGNAL \reg[8][11]~feeder_combout\ : std_logic;
SIGNAL \reg[8][11]~regout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \reg[2][11]~regout\ : std_logic;
SIGNAL \reg[5][11]~regout\ : std_logic;
SIGNAL \reg[6][11]~regout\ : std_logic;
SIGNAL \reg[4][11]~feeder_combout\ : std_logic;
SIGNAL \reg[4][11]~regout\ : std_logic;
SIGNAL \Mux20~12_combout\ : std_logic;
SIGNAL \Mux20~13_combout\ : std_logic;
SIGNAL \reg[1][11]~regout\ : std_logic;
SIGNAL \Mux20~14_combout\ : std_logic;
SIGNAL \Mux20~15_combout\ : std_logic;
SIGNAL \Mux20~16_combout\ : std_logic;
SIGNAL \reg[14][11]~regout\ : std_logic;
SIGNAL \reg[12][11]~regout\ : std_logic;
SIGNAL \Mux20~17_combout\ : std_logic;
SIGNAL \reg[13][11]~regout\ : std_logic;
SIGNAL \reg[15][11]~feeder_combout\ : std_logic;
SIGNAL \reg[15][11]~regout\ : std_logic;
SIGNAL \Mux20~18_combout\ : std_logic;
SIGNAL \Mux20~19_combout\ : std_logic;
SIGNAL \reg[14][12]~regout\ : std_logic;
SIGNAL \reg[15][12]~regout\ : std_logic;
SIGNAL \Mux19~24_combout\ : std_logic;
SIGNAL \reg[19][12]~feeder_combout\ : std_logic;
SIGNAL \reg[19][12]~regout\ : std_logic;
SIGNAL \reg[23][12]~regout\ : std_logic;
SIGNAL \Mux19~11_combout\ : std_logic;
SIGNAL \reg[27][12]~regout\ : std_logic;
SIGNAL \reg[31][12]~feeder_combout\ : std_logic;
SIGNAL \reg[31][12]~regout\ : std_logic;
SIGNAL \Mux19~12_combout\ : std_logic;
SIGNAL \reg[20][12]~regout\ : std_logic;
SIGNAL \reg[28][12]~regout\ : std_logic;
SIGNAL \Mux19~9_combout\ : std_logic;
SIGNAL \Mux19~10_combout\ : std_logic;
SIGNAL \Mux19~13_combout\ : std_logic;
SIGNAL \reg[1][12]~regout\ : std_logic;
SIGNAL \Mux19~14_combout\ : std_logic;
SIGNAL \reg[2][12]~regout\ : std_logic;
SIGNAL \reg[5][12]~regout\ : std_logic;
SIGNAL \reg[6][12]~regout\ : std_logic;
SIGNAL \reg[7][12]~feeder_combout\ : std_logic;
SIGNAL \reg[7][12]~regout\ : std_logic;
SIGNAL \Mux19~15_combout\ : std_logic;
SIGNAL \Mux19~17_combout\ : std_logic;
SIGNAL \Mux19~18_combout\ : std_logic;
SIGNAL \reg[3][12]~regout\ : std_logic;
SIGNAL \Mux19~21_combout\ : std_logic;
SIGNAL \Mux19~22_combout\ : std_logic;
SIGNAL \Mux19~25_combout\ : std_logic;
SIGNAL \reg[1][13]~regout\ : std_logic;
SIGNAL \Mux18~14_combout\ : std_logic;
SIGNAL \reg[2][13]~regout\ : std_logic;
SIGNAL \reg[3][13]~regout\ : std_logic;
SIGNAL \Mux18~15_combout\ : std_logic;
SIGNAL \reg[29][13]~feeder_combout\ : std_logic;
SIGNAL \reg[29][13]~regout\ : std_logic;
SIGNAL \reg[21][13]~regout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \reg[19][13]~feeder_combout\ : std_logic;
SIGNAL \reg[19][13]~regout\ : std_logic;
SIGNAL \reg[23][13]~regout\ : std_logic;
SIGNAL \Mux18~9_combout\ : std_logic;
SIGNAL \reg[27][13]~regout\ : std_logic;
SIGNAL \reg[31][13]~regout\ : std_logic;
SIGNAL \Mux18~10_combout\ : std_logic;
SIGNAL \Mux18~11_combout\ : std_logic;
SIGNAL \Mux18~16_combout\ : std_logic;
SIGNAL \reg[14][13]~regout\ : std_logic;
SIGNAL \reg[12][13]~feeder_combout\ : std_logic;
SIGNAL \reg[12][13]~regout\ : std_logic;
SIGNAL \Mux18~17_combout\ : std_logic;
SIGNAL \reg[13][13]~regout\ : std_logic;
SIGNAL \reg[15][13]~regout\ : std_logic;
SIGNAL \Mux18~18_combout\ : std_logic;
SIGNAL \reg[10][13]~regout\ : std_logic;
SIGNAL \reg[9][13]~regout\ : std_logic;
SIGNAL \reg[8][13]~regout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux18~19_combout\ : std_logic;
SIGNAL \reg[13][14]~regout\ : std_logic;
SIGNAL \reg[12][14]~regout\ : std_logic;
SIGNAL \Mux17~23_combout\ : std_logic;
SIGNAL \reg[14][14]~regout\ : std_logic;
SIGNAL \reg[15][14]~feeder_combout\ : std_logic;
SIGNAL \reg[15][14]~regout\ : std_logic;
SIGNAL \Mux17~24_combout\ : std_logic;
SIGNAL \reg[25][14]~regout\ : std_logic;
SIGNAL \reg[17][14]~feeder_combout\ : std_logic;
SIGNAL \reg[17][14]~regout\ : std_logic;
SIGNAL \Mux17~6_combout\ : std_logic;
SIGNAL \reg[21][14]~regout\ : std_logic;
SIGNAL \reg[29][14]~regout\ : std_logic;
SIGNAL \Mux17~7_combout\ : std_logic;
SIGNAL \reg[24][14]~regout\ : std_logic;
SIGNAL \reg[16][14]~feeder_combout\ : std_logic;
SIGNAL \reg[16][14]~regout\ : std_logic;
SIGNAL \Mux17~8_combout\ : std_logic;
SIGNAL \reg[20][14]~regout\ : std_logic;
SIGNAL \reg[28][14]~regout\ : std_logic;
SIGNAL \Mux17~9_combout\ : std_logic;
SIGNAL \Mux17~10_combout\ : std_logic;
SIGNAL \reg[30][14]~regout\ : std_logic;
SIGNAL \reg[26][14]~regout\ : std_logic;
SIGNAL \Mux17~5_combout\ : std_logic;
SIGNAL \Mux17~13_combout\ : std_logic;
SIGNAL \reg[10][14]~regout\ : std_logic;
SIGNAL \reg[8][14]~regout\ : std_logic;
SIGNAL \Mux17~19_combout\ : std_logic;
SIGNAL \reg[9][14]~regout\ : std_logic;
SIGNAL \reg[11][14]~regout\ : std_logic;
SIGNAL \Mux17~20_combout\ : std_logic;
SIGNAL \Mux17~26_combout\ : std_logic;
SIGNAL \reg[3][14]~regout\ : std_logic;
SIGNAL \reg[1][14]~regout\ : std_logic;
SIGNAL \Mux17~14_combout\ : std_logic;
SIGNAL \Mux17~21_combout\ : std_logic;
SIGNAL \reg[2][14]~regout\ : std_logic;
SIGNAL \Mux17~18_combout\ : std_logic;
SIGNAL \Mux17~22_combout\ : std_logic;
SIGNAL \Mux17~25_combout\ : std_logic;
SIGNAL \reg[1][15]~regout\ : std_logic;
SIGNAL \Mux16~14_combout\ : std_logic;
SIGNAL \reg[2][15]~regout\ : std_logic;
SIGNAL \Mux16~15_combout\ : std_logic;
SIGNAL \reg[21][15]~regout\ : std_logic;
SIGNAL \reg[29][15]~regout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \reg[31][15]~regout\ : std_logic;
SIGNAL \reg[27][15]~regout\ : std_logic;
SIGNAL \reg[23][15]~regout\ : std_logic;
SIGNAL \reg[19][15]~regout\ : std_logic;
SIGNAL \Mux16~9_combout\ : std_logic;
SIGNAL \Mux16~10_combout\ : std_logic;
SIGNAL \Mux16~11_combout\ : std_logic;
SIGNAL \Mux16~16_combout\ : std_logic;
SIGNAL \reg[11][15]~feeder_combout\ : std_logic;
SIGNAL \reg[11][15]~regout\ : std_logic;
SIGNAL \reg[10][15]~regout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \reg[13][15]~regout\ : std_logic;
SIGNAL \reg[15][15]~regout\ : std_logic;
SIGNAL \Mux16~18_combout\ : std_logic;
SIGNAL \Mux16~19_combout\ : std_logic;
SIGNAL \reg[14][16]~regout\ : std_logic;
SIGNAL \reg[15][16]~regout\ : std_logic;
SIGNAL \Mux15~24_combout\ : std_logic;
SIGNAL \reg[31][16]~regout\ : std_logic;
SIGNAL \reg[27][16]~regout\ : std_logic;
SIGNAL \reg[23][16]~regout\ : std_logic;
SIGNAL \reg[19][16]~regout\ : std_logic;
SIGNAL \Mux15~11_combout\ : std_logic;
SIGNAL \Mux15~12_combout\ : std_logic;
SIGNAL \reg[26][16]~regout\ : std_logic;
SIGNAL \reg[22][16]~regout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \Mux15~5_combout\ : std_logic;
SIGNAL \Mux15~13_combout\ : std_logic;
SIGNAL \reg[1][16]~regout\ : std_logic;
SIGNAL \Mux15~14_combout\ : std_logic;
SIGNAL \reg[3][16]~regout\ : std_logic;
SIGNAL \Mux15~21_combout\ : std_logic;
SIGNAL \reg[11][16]~regout\ : std_logic;
SIGNAL \reg[9][16]~regout\ : std_logic;
SIGNAL \reg[10][16]~regout\ : std_logic;
SIGNAL \Mux15~19_combout\ : std_logic;
SIGNAL \Mux15~20_combout\ : std_logic;
SIGNAL \Mux15~26_combout\ : std_logic;
SIGNAL \Mux15~22_combout\ : std_logic;
SIGNAL \Mux15~25_combout\ : std_logic;
SIGNAL \reg[31][17]~feeder_combout\ : std_logic;
SIGNAL \reg[31][17]~regout\ : std_logic;
SIGNAL \reg[27][17]~regout\ : std_logic;
SIGNAL \reg[23][17]~regout\ : std_logic;
SIGNAL \reg[19][17]~feeder_combout\ : std_logic;
SIGNAL \reg[19][17]~regout\ : std_logic;
SIGNAL \Mux14~9_combout\ : std_logic;
SIGNAL \Mux14~10_combout\ : std_logic;
SIGNAL \reg[21][17]~regout\ : std_logic;
SIGNAL \reg[29][17]~feeder_combout\ : std_logic;
SIGNAL \reg[29][17]~regout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux14~11_combout\ : std_logic;
SIGNAL \reg[3][17]~regout\ : std_logic;
SIGNAL \reg[2][17]~regout\ : std_logic;
SIGNAL \Mux14~15_combout\ : std_logic;
SIGNAL \Mux14~16_combout\ : std_logic;
SIGNAL \reg[11][17]~feeder_combout\ : std_logic;
SIGNAL \reg[11][17]~regout\ : std_logic;
SIGNAL \reg[10][17]~regout\ : std_logic;
SIGNAL \reg[9][17]~regout\ : std_logic;
SIGNAL \reg[8][17]~feeder_combout\ : std_logic;
SIGNAL \reg[8][17]~regout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \reg[13][17]~regout\ : std_logic;
SIGNAL \reg[15][17]~feeder_combout\ : std_logic;
SIGNAL \reg[15][17]~regout\ : std_logic;
SIGNAL \Mux14~18_combout\ : std_logic;
SIGNAL \Mux14~19_combout\ : std_logic;
SIGNAL \reg[1][18]~regout\ : std_logic;
SIGNAL \Mux13~14_combout\ : std_logic;
SIGNAL \reg[10][18]~regout\ : std_logic;
SIGNAL \reg[8][18]~regout\ : std_logic;
SIGNAL \Mux13~19_combout\ : std_logic;
SIGNAL \reg[9][18]~regout\ : std_logic;
SIGNAL \Mux13~20_combout\ : std_logic;
SIGNAL \Mux13~26_combout\ : std_logic;
SIGNAL \reg[2][18]~regout\ : std_logic;
SIGNAL \reg[3][18]~regout\ : std_logic;
SIGNAL \Mux13~18_combout\ : std_logic;
SIGNAL \Mux13~22_combout\ : std_logic;
SIGNAL \reg[14][18]~regout\ : std_logic;
SIGNAL \reg[13][18]~regout\ : std_logic;
SIGNAL \reg[12][18]~regout\ : std_logic;
SIGNAL \Mux13~23_combout\ : std_logic;
SIGNAL \Mux13~24_combout\ : std_logic;
SIGNAL \reg[30][18]~feeder_combout\ : std_logic;
SIGNAL \reg[30][18]~regout\ : std_logic;
SIGNAL \reg[26][18]~regout\ : std_logic;
SIGNAL \reg[22][18]~regout\ : std_logic;
SIGNAL \reg[18][18]~feeder_combout\ : std_logic;
SIGNAL \reg[18][18]~regout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Mux13~5_combout\ : std_logic;
SIGNAL \reg[31][18]~regout\ : std_logic;
SIGNAL \reg[27][18]~regout\ : std_logic;
SIGNAL \reg[19][18]~regout\ : std_logic;
SIGNAL \reg[23][18]~regout\ : std_logic;
SIGNAL \Mux13~11_combout\ : std_logic;
SIGNAL \Mux13~12_combout\ : std_logic;
SIGNAL \reg[21][18]~regout\ : std_logic;
SIGNAL \reg[29][18]~feeder_combout\ : std_logic;
SIGNAL \reg[29][18]~regout\ : std_logic;
SIGNAL \Mux13~7_combout\ : std_logic;
SIGNAL \Mux13~10_combout\ : std_logic;
SIGNAL \Mux13~13_combout\ : std_logic;
SIGNAL \Mux13~25_combout\ : std_logic;
SIGNAL \reg[11][19]~regout\ : std_logic;
SIGNAL \reg[10][19]~regout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \reg[5][19]~regout\ : std_logic;
SIGNAL \reg[7][19]~feeder_combout\ : std_logic;
SIGNAL \reg[7][19]~regout\ : std_logic;
SIGNAL \Mux12~13_combout\ : std_logic;
SIGNAL \reg[1][19]~regout\ : std_logic;
SIGNAL \Mux12~14_combout\ : std_logic;
SIGNAL \reg[2][19]~regout\ : std_logic;
SIGNAL \reg[3][19]~regout\ : std_logic;
SIGNAL \Mux12~15_combout\ : std_logic;
SIGNAL \reg[25][19]~regout\ : std_logic;
SIGNAL \reg[17][19]~regout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \reg[21][19]~regout\ : std_logic;
SIGNAL \reg[29][19]~feeder_combout\ : std_logic;
SIGNAL \reg[29][19]~regout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \reg[30][19]~regout\ : std_logic;
SIGNAL \reg[26][19]~regout\ : std_logic;
SIGNAL \reg[22][19]~regout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mux12~8_combout\ : std_logic;
SIGNAL \Mux12~11_combout\ : std_logic;
SIGNAL \Mux12~16_combout\ : std_logic;
SIGNAL \reg[12][19]~regout\ : std_logic;
SIGNAL \reg[14][19]~regout\ : std_logic;
SIGNAL \Mux12~17_combout\ : std_logic;
SIGNAL \reg[13][19]~regout\ : std_logic;
SIGNAL \reg[15][19]~regout\ : std_logic;
SIGNAL \Mux12~18_combout\ : std_logic;
SIGNAL \Mux12~19_combout\ : std_logic;
SIGNAL \reg[14][20]~regout\ : std_logic;
SIGNAL \reg[15][20]~regout\ : std_logic;
SIGNAL \Mux11~24_combout\ : std_logic;
SIGNAL \reg[30][20]~regout\ : std_logic;
SIGNAL \reg[26][20]~regout\ : std_logic;
SIGNAL \reg[18][20]~regout\ : std_logic;
SIGNAL \reg[22][20]~regout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \reg[29][20]~regout\ : std_logic;
SIGNAL \reg[21][20]~regout\ : std_logic;
SIGNAL \reg[25][20]~regout\ : std_logic;
SIGNAL \reg[17][20]~feeder_combout\ : std_logic;
SIGNAL \reg[17][20]~regout\ : std_logic;
SIGNAL \Mux11~6_combout\ : std_logic;
SIGNAL \Mux11~7_combout\ : std_logic;
SIGNAL \Mux11~10_combout\ : std_logic;
SIGNAL \Mux11~13_combout\ : std_logic;
SIGNAL \reg[9][20]~regout\ : std_logic;
SIGNAL \reg[10][20]~regout\ : std_logic;
SIGNAL \reg[8][20]~feeder_combout\ : std_logic;
SIGNAL \reg[8][20]~regout\ : std_logic;
SIGNAL \Mux11~19_combout\ : std_logic;
SIGNAL \Mux11~20_combout\ : std_logic;
SIGNAL \Mux11~26_combout\ : std_logic;
SIGNAL \reg[1][20]~regout\ : std_logic;
SIGNAL \Mux11~14_combout\ : std_logic;
SIGNAL \reg[7][20]~feeder_combout\ : std_logic;
SIGNAL \reg[7][20]~regout\ : std_logic;
SIGNAL \reg[6][20]~regout\ : std_logic;
SIGNAL \Mux11~15_combout\ : std_logic;
SIGNAL \reg[4][20]~regout\ : std_logic;
SIGNAL \Mux11~16_combout\ : std_logic;
SIGNAL \reg[5][20]~regout\ : std_logic;
SIGNAL \Mux11~17_combout\ : std_logic;
SIGNAL \reg[2][20]~regout\ : std_logic;
SIGNAL \Mux11~18_combout\ : std_logic;
SIGNAL \Mux11~22_combout\ : std_logic;
SIGNAL \Mux11~25_combout\ : std_logic;
SIGNAL \reg[7][21]~regout\ : std_logic;
SIGNAL \reg[5][21]~regout\ : std_logic;
SIGNAL \Mux10~13_combout\ : std_logic;
SIGNAL \reg[1][21]~regout\ : std_logic;
SIGNAL \Mux10~14_combout\ : std_logic;
SIGNAL \reg[2][21]~regout\ : std_logic;
SIGNAL \reg[3][21]~regout\ : std_logic;
SIGNAL \Mux10~15_combout\ : std_logic;
SIGNAL \Mux10~16_combout\ : std_logic;
SIGNAL \reg[10][21]~regout\ : std_logic;
SIGNAL \reg[9][21]~regout\ : std_logic;
SIGNAL \reg[8][21]~regout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \reg[13][21]~regout\ : std_logic;
SIGNAL \reg[15][21]~regout\ : std_logic;
SIGNAL \Mux10~18_combout\ : std_logic;
SIGNAL \Mux10~19_combout\ : std_logic;
SIGNAL \reg[31][22]~feeder_combout\ : std_logic;
SIGNAL \reg[31][22]~regout\ : std_logic;
SIGNAL \reg[27][22]~regout\ : std_logic;
SIGNAL \reg[23][22]~regout\ : std_logic;
SIGNAL \reg[19][22]~feeder_combout\ : std_logic;
SIGNAL \reg[19][22]~regout\ : std_logic;
SIGNAL \Mux9~11_combout\ : std_logic;
SIGNAL \Mux9~12_combout\ : std_logic;
SIGNAL \reg[30][22]~feeder_combout\ : std_logic;
SIGNAL \reg[30][22]~regout\ : std_logic;
SIGNAL \reg[26][22]~regout\ : std_logic;
SIGNAL \reg[22][22]~regout\ : std_logic;
SIGNAL \reg[18][22]~feeder_combout\ : std_logic;
SIGNAL \reg[18][22]~regout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Mux9~13_combout\ : std_logic;
SIGNAL \reg[14][22]~regout\ : std_logic;
SIGNAL \reg[15][22]~regout\ : std_logic;
SIGNAL \Mux9~24_combout\ : std_logic;
SIGNAL \reg[11][22]~regout\ : std_logic;
SIGNAL \reg[9][22]~regout\ : std_logic;
SIGNAL \reg[10][22]~regout\ : std_logic;
SIGNAL \reg[8][22]~regout\ : std_logic;
SIGNAL \Mux9~19_combout\ : std_logic;
SIGNAL \Mux9~20_combout\ : std_logic;
SIGNAL \Mux9~26_combout\ : std_logic;
SIGNAL \reg[1][22]~regout\ : std_logic;
SIGNAL \Mux9~14_combout\ : std_logic;
SIGNAL \reg[7][22]~regout\ : std_logic;
SIGNAL \reg[6][22]~regout\ : std_logic;
SIGNAL \Mux9~15_combout\ : std_logic;
SIGNAL \reg[5][22]~regout\ : std_logic;
SIGNAL \reg[4][22]~regout\ : std_logic;
SIGNAL \Mux9~16_combout\ : std_logic;
SIGNAL \Mux9~17_combout\ : std_logic;
SIGNAL \reg[2][22]~regout\ : std_logic;
SIGNAL \reg[3][22]~regout\ : std_logic;
SIGNAL \Mux9~18_combout\ : std_logic;
SIGNAL \Mux9~22_combout\ : std_logic;
SIGNAL \Mux9~25_combout\ : std_logic;
SIGNAL \reg[15][23]~feeder_combout\ : std_logic;
SIGNAL \reg[15][23]~regout\ : std_logic;
SIGNAL \reg[13][23]~regout\ : std_logic;
SIGNAL \reg[14][23]~regout\ : std_logic;
SIGNAL \reg[12][23]~regout\ : std_logic;
SIGNAL \Mux8~17_combout\ : std_logic;
SIGNAL \Mux8~18_combout\ : std_logic;
SIGNAL \reg[3][23]~feeder_combout\ : std_logic;
SIGNAL \reg[3][23]~regout\ : std_logic;
SIGNAL \reg[2][23]~regout\ : std_logic;
SIGNAL \Mux8~15_combout\ : std_logic;
SIGNAL \reg[25][23]~regout\ : std_logic;
SIGNAL \reg[17][23]~regout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \reg[21][23]~regout\ : std_logic;
SIGNAL \reg[29][23]~feeder_combout\ : std_logic;
SIGNAL \reg[29][23]~regout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \reg[30][23]~regout\ : std_logic;
SIGNAL \reg[26][23]~regout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \Mux8~8_combout\ : std_logic;
SIGNAL \Mux8~11_combout\ : std_logic;
SIGNAL \Mux8~16_combout\ : std_logic;
SIGNAL \reg[10][23]~regout\ : std_logic;
SIGNAL \reg[9][23]~regout\ : std_logic;
SIGNAL \reg[8][23]~feeder_combout\ : std_logic;
SIGNAL \reg[8][23]~regout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~19_combout\ : std_logic;
SIGNAL \reg[14][24]~regout\ : std_logic;
SIGNAL \reg[15][24]~feeder_combout\ : std_logic;
SIGNAL \reg[15][24]~regout\ : std_logic;
SIGNAL \Mux7~24_combout\ : std_logic;
SIGNAL \reg[29][24]~regout\ : std_logic;
SIGNAL \reg[21][24]~regout\ : std_logic;
SIGNAL \reg[25][24]~regout\ : std_logic;
SIGNAL \reg[17][24]~feeder_combout\ : std_logic;
SIGNAL \reg[17][24]~regout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \reg[24][24]~regout\ : std_logic;
SIGNAL \reg[16][24]~regout\ : std_logic;
SIGNAL \Mux7~8_combout\ : std_logic;
SIGNAL \reg[20][24]~regout\ : std_logic;
SIGNAL \reg[28][24]~regout\ : std_logic;
SIGNAL \Mux7~9_combout\ : std_logic;
SIGNAL \Mux7~10_combout\ : std_logic;
SIGNAL \reg[27][24]~regout\ : std_logic;
SIGNAL \reg[31][24]~feeder_combout\ : std_logic;
SIGNAL \reg[31][24]~regout\ : std_logic;
SIGNAL \Mux7~12_combout\ : std_logic;
SIGNAL \reg[26][24]~regout\ : std_logic;
SIGNAL \reg[30][24]~regout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~13_combout\ : std_logic;
SIGNAL \reg[3][24]~regout\ : std_logic;
SIGNAL \Mux7~21_combout\ : std_logic;
SIGNAL \reg[2][24]~regout\ : std_logic;
SIGNAL \Mux7~18_combout\ : std_logic;
SIGNAL \reg[1][24]~regout\ : std_logic;
SIGNAL \Mux7~14_combout\ : std_logic;
SIGNAL \Mux7~22_combout\ : std_logic;
SIGNAL \Mux7~25_combout\ : std_logic;
SIGNAL \reg[9][25]~regout\ : std_logic;
SIGNAL \reg[8][25]~feeder_combout\ : std_logic;
SIGNAL \reg[8][25]~regout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \reg[10][25]~regout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \reg[13][25]~regout\ : std_logic;
SIGNAL \reg[15][25]~regout\ : std_logic;
SIGNAL \Mux6~18_combout\ : std_logic;
SIGNAL \reg[25][25]~regout\ : std_logic;
SIGNAL \reg[17][25]~feeder_combout\ : std_logic;
SIGNAL \reg[17][25]~regout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \reg[21][25]~regout\ : std_logic;
SIGNAL \reg[29][25]~regout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \reg[23][25]~regout\ : std_logic;
SIGNAL \reg[19][25]~regout\ : std_logic;
SIGNAL \Mux6~9_combout\ : std_logic;
SIGNAL \reg[27][25]~regout\ : std_logic;
SIGNAL \Mux6~10_combout\ : std_logic;
SIGNAL \Mux6~11_combout\ : std_logic;
SIGNAL \reg[1][25]~regout\ : std_logic;
SIGNAL \Mux6~14_combout\ : std_logic;
SIGNAL \reg[2][25]~regout\ : std_logic;
SIGNAL \Mux6~15_combout\ : std_logic;
SIGNAL \Mux6~16_combout\ : std_logic;
SIGNAL \Mux6~19_combout\ : std_logic;
SIGNAL \reg[11][26]~regout\ : std_logic;
SIGNAL \reg[9][26]~regout\ : std_logic;
SIGNAL \reg[10][26]~regout\ : std_logic;
SIGNAL \reg[8][26]~regout\ : std_logic;
SIGNAL \Mux5~10_combout\ : std_logic;
SIGNAL \Mux5~11_combout\ : std_logic;
SIGNAL \Mux5~16_combout\ : std_logic;
SIGNAL \reg[31][26]~feeder_combout\ : std_logic;
SIGNAL \reg[31][26]~regout\ : std_logic;
SIGNAL \reg[27][26]~regout\ : std_logic;
SIGNAL \reg[23][26]~regout\ : std_logic;
SIGNAL \reg[19][26]~regout\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \Mux5~8_combout\ : std_logic;
SIGNAL \reg[29][26]~regout\ : std_logic;
SIGNAL \reg[21][26]~regout\ : std_logic;
SIGNAL \reg[25][26]~regout\ : std_logic;
SIGNAL \reg[17][26]~regout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \reg[20][26]~regout\ : std_logic;
SIGNAL \reg[24][26]~regout\ : std_logic;
SIGNAL \reg[16][26]~feeder_combout\ : std_logic;
SIGNAL \reg[16][26]~regout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux5~9_combout\ : std_logic;
SIGNAL \reg[14][26]~regout\ : std_logic;
SIGNAL \reg[13][26]~regout\ : std_logic;
SIGNAL \reg[12][26]~regout\ : std_logic;
SIGNAL \Mux5~17_combout\ : std_logic;
SIGNAL \Mux5~18_combout\ : std_logic;
SIGNAL \Mux5~19_combout\ : std_logic;
SIGNAL \reg[3][27]~regout\ : std_logic;
SIGNAL \reg[2][27]~regout\ : std_logic;
SIGNAL \Mux4~15_combout\ : std_logic;
SIGNAL \Mux4~16_combout\ : std_logic;
SIGNAL \reg[10][27]~regout\ : std_logic;
SIGNAL \reg[9][27]~regout\ : std_logic;
SIGNAL \reg[8][27]~feeder_combout\ : std_logic;
SIGNAL \reg[8][27]~regout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \reg[15][27]~regout\ : std_logic;
SIGNAL \reg[13][27]~regout\ : std_logic;
SIGNAL \reg[12][27]~regout\ : std_logic;
SIGNAL \reg[14][27]~regout\ : std_logic;
SIGNAL \Mux4~17_combout\ : std_logic;
SIGNAL \Mux4~18_combout\ : std_logic;
SIGNAL \Mux4~19_combout\ : std_logic;
SIGNAL \reg[26][28]~regout\ : std_logic;
SIGNAL \reg[22][28]~regout\ : std_logic;
SIGNAL \reg[18][28]~regout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \reg[25][28]~regout\ : std_logic;
SIGNAL \reg[17][28]~regout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \reg[21][28]~regout\ : std_logic;
SIGNAL \reg[29][28]~regout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \reg[20][28]~regout\ : std_logic;
SIGNAL \reg[28][28]~regout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux3~9_combout\ : std_logic;
SIGNAL \reg[14][28]~regout\ : std_logic;
SIGNAL \reg[12][28]~regout\ : std_logic;
SIGNAL \reg[13][28]~regout\ : std_logic;
SIGNAL \Mux3~17_combout\ : std_logic;
SIGNAL \Mux3~18_combout\ : std_logic;
SIGNAL \reg[1][28]~regout\ : std_logic;
SIGNAL \reg[5][28]~regout\ : std_logic;
SIGNAL \reg[4][28]~feeder_combout\ : std_logic;
SIGNAL \reg[4][28]~regout\ : std_logic;
SIGNAL \Mux3~12_combout\ : std_logic;
SIGNAL \reg[6][28]~regout\ : std_logic;
SIGNAL \reg[7][28]~regout\ : std_logic;
SIGNAL \Mux3~13_combout\ : std_logic;
SIGNAL \Mux3~14_combout\ : std_logic;
SIGNAL \reg[2][28]~regout\ : std_logic;
SIGNAL \Mux3~15_combout\ : std_logic;
SIGNAL \Mux3~16_combout\ : std_logic;
SIGNAL \Mux3~19_combout\ : std_logic;
SIGNAL \reg[3][29]~regout\ : std_logic;
SIGNAL \reg[2][29]~regout\ : std_logic;
SIGNAL \Mux2~15_combout\ : std_logic;
SIGNAL \Mux2~16_combout\ : std_logic;
SIGNAL \reg[11][29]~regout\ : std_logic;
SIGNAL \reg[10][29]~regout\ : std_logic;
SIGNAL \reg[9][29]~regout\ : std_logic;
SIGNAL \reg[8][29]~feeder_combout\ : std_logic;
SIGNAL \reg[8][29]~regout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \reg[14][29]~regout\ : std_logic;
SIGNAL \Mux2~17_combout\ : std_logic;
SIGNAL \reg[13][29]~regout\ : std_logic;
SIGNAL \Mux2~18_combout\ : std_logic;
SIGNAL \Mux2~19_combout\ : std_logic;
SIGNAL \reg[1][30]~regout\ : std_logic;
SIGNAL \Mux1~14_combout\ : std_logic;
SIGNAL \reg[2][30]~regout\ : std_logic;
SIGNAL \Mux1~15_combout\ : std_logic;
SIGNAL \reg[11][30]~regout\ : std_logic;
SIGNAL \reg[9][30]~regout\ : std_logic;
SIGNAL \Mux1~11_combout\ : std_logic;
SIGNAL \Mux1~16_combout\ : std_logic;
SIGNAL \reg[26][30]~regout\ : std_logic;
SIGNAL \reg[22][30]~regout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \reg[17][30]~regout\ : std_logic;
SIGNAL \reg[25][30]~regout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \reg[21][30]~regout\ : std_logic;
SIGNAL \reg[29][30]~feeder_combout\ : std_logic;
SIGNAL \reg[29][30]~regout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \reg[28][30]~regout\ : std_logic;
SIGNAL \reg[20][30]~regout\ : std_logic;
SIGNAL \reg[16][30]~feeder_combout\ : std_logic;
SIGNAL \reg[16][30]~regout\ : std_logic;
SIGNAL \reg[24][30]~regout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \Mux1~9_combout\ : std_logic;
SIGNAL \reg[14][30]~regout\ : std_logic;
SIGNAL \reg[15][30]~feeder_combout\ : std_logic;
SIGNAL \reg[15][30]~regout\ : std_logic;
SIGNAL \Mux1~18_combout\ : std_logic;
SIGNAL \Mux1~19_combout\ : std_logic;
SIGNAL \reg[12][31]~regout\ : std_logic;
SIGNAL \reg[14][31]~regout\ : std_logic;
SIGNAL \Mux0~17_combout\ : std_logic;
SIGNAL \reg[13][31]~regout\ : std_logic;
SIGNAL \Mux0~18_combout\ : std_logic;
SIGNAL \reg[10][31]~regout\ : std_logic;
SIGNAL \reg[11][31]~feeder_combout\ : std_logic;
SIGNAL \reg[11][31]~regout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \reg[3][31]~feeder_combout\ : std_logic;
SIGNAL \reg[3][31]~regout\ : std_logic;
SIGNAL \reg[2][31]~regout\ : std_logic;
SIGNAL \reg[5][31]~regout\ : std_logic;
SIGNAL \reg[6][31]~regout\ : std_logic;
SIGNAL \reg[4][31]~regout\ : std_logic;
SIGNAL \Mux0~12_combout\ : std_logic;
SIGNAL \Mux0~13_combout\ : std_logic;
SIGNAL \reg[1][31]~regout\ : std_logic;
SIGNAL \Mux0~14_combout\ : std_logic;
SIGNAL \Mux0~15_combout\ : std_logic;
SIGNAL \reg[22][31]~regout\ : std_logic;
SIGNAL \reg[18][31]~feeder_combout\ : std_logic;
SIGNAL \reg[18][31]~regout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \reg[26][31]~regout\ : std_logic;
SIGNAL \reg[30][31]~regout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \reg[31][31]~regout\ : std_logic;
SIGNAL \reg[27][31]~regout\ : std_logic;
SIGNAL \Mux0~10_combout\ : std_logic;
SIGNAL \Mux0~11_combout\ : std_logic;
SIGNAL \Mux0~16_combout\ : std_logic;
SIGNAL \Mux0~19_combout\ : std_logic;
SIGNAL \d_in~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \addrW~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \addrA~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_reset_n~clkctrl_outclk\ : std_logic;

BEGIN

ww_addrA <= addrA;
ww_addrB <= addrB;
ww_addrW <= addrW;
ww_d_in <= d_in;
ww_clk <= clk;
ww_reset_n <= reset_n;
ww_en <= en;
regA <= ww_regA;
regB <= ww_regB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\reset_n~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset_n~combout\);
\ALT_INV_reset_n~clkctrl_outclk\ <= NOT \reset_n~clkctrl_outclk\;

-- Location: LCFF_X24_Y13_N11
\reg[28][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(0),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[28][0]~regout\);

-- Location: LCFF_X23_Y11_N9
\reg[5][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(0),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[5][0]~regout\);

-- Location: LCFF_X24_Y11_N25
\reg[6][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(0),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[6][0]~regout\);

-- Location: LCFF_X23_Y11_N19
\reg[7][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(0),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[7][0]~regout\);

-- Location: LCCOMB_X24_Y11_N24
\Mux31~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~19_combout\ = (\addrA~combout\(0) & (((\reg[7][0]~regout\)) # (!\addrA~combout\(1)))) # (!\addrA~combout\(0) & (\addrA~combout\(1) & (\reg[6][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \addrA~combout\(1),
	datac => \reg[6][0]~regout\,
	datad => \reg[7][0]~regout\,
	combout => \Mux31~19_combout\);

-- Location: LCFF_X24_Y11_N3
\reg[4][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(0),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[4][0]~regout\);

-- Location: LCCOMB_X24_Y11_N2
\Mux31~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~20_combout\ = (\Mux31~16_combout\ & ((\Mux31~19_combout\) # (\reg[4][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~19_combout\,
	datab => \Mux31~16_combout\,
	datac => \reg[4][0]~regout\,
	combout => \Mux31~20_combout\);

-- Location: LCCOMB_X23_Y11_N8
\Mux31~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~21_combout\ = (\Mux31~20_combout\ & ((\addrA~combout\(1) & ((\Mux31~19_combout\))) # (!\addrA~combout\(1) & ((\reg[5][0]~regout\) # (!\Mux31~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~20_combout\,
	datab => \addrA~combout\(1),
	datac => \reg[5][0]~regout\,
	datad => \Mux31~19_combout\,
	combout => \Mux31~21_combout\);

-- Location: LCCOMB_X23_Y15_N6
\Mux31~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~26_combout\ = (\Mux31~23_combout\) # ((\Mux31~17_combout\ & ((\reg[3][0]~regout\) # (!\Mux31~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~17_combout\,
	datab => \Mux31~23_combout\,
	datac => \reg[3][0]~regout\,
	datad => \Mux31~18_combout\,
	combout => \Mux31~26_combout\);

-- Location: LCFF_X23_Y14_N9
\reg[9][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(1),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[9][1]~regout\);

-- Location: LCFF_X24_Y14_N17
\reg[8][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(1),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[8][1]~regout\);

-- Location: LCCOMB_X23_Y14_N8
\Mux30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\addrA~combout\(1) & (\addrA~combout\(0))) # (!\addrA~combout\(1) & ((\addrA~combout\(0) & (\reg[9][1]~regout\)) # (!\addrA~combout\(0) & ((\reg[8][1]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \addrA~combout\(0),
	datac => \reg[9][1]~regout\,
	datad => \reg[8][1]~regout\,
	combout => \Mux30~0_combout\);

-- Location: LCFF_X24_Y17_N29
\reg[26][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(1),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[26][1]~regout\);

-- Location: LCFF_X23_Y18_N17
\reg[22][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(1),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[22][1]~regout\);

-- Location: LCFF_X23_Y18_N27
\reg[18][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(1),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[18][1]~regout\);

-- Location: LCCOMB_X23_Y18_N16
\Mux30~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~4_combout\ = (\addrA~combout\(2) & ((\addrA~combout\(3)) # ((\reg[22][1]~regout\)))) # (!\addrA~combout\(2) & (!\addrA~combout\(3) & ((\reg[18][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[22][1]~regout\,
	datad => \reg[18][1]~regout\,
	combout => \Mux30~4_combout\);

-- Location: LCFF_X25_Y17_N29
\reg[30][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[30][1]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[30][1]~regout\);

-- Location: LCCOMB_X24_Y17_N28
\Mux30~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~5_combout\ = (\addrA~combout\(3) & ((\Mux30~4_combout\ & ((\reg[30][1]~regout\))) # (!\Mux30~4_combout\ & (\reg[26][1]~regout\)))) # (!\addrA~combout\(3) & (\Mux30~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \Mux30~4_combout\,
	datac => \reg[26][1]~regout\,
	datad => \reg[30][1]~regout\,
	combout => \Mux30~5_combout\);

-- Location: LCFF_X25_Y14_N11
\reg[28][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(1),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[28][1]~regout\);

-- Location: LCFF_X20_Y15_N5
\reg[27][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(1),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[27][1]~regout\);

-- Location: LCFF_X20_Y17_N13
\reg[23][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(1),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[23][1]~regout\);

-- Location: LCFF_X20_Y17_N7
\reg[19][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(1),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[19][1]~regout\);

-- Location: LCCOMB_X20_Y17_N12
\Mux30~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~9_combout\ = (\addrA~combout\(3) & (\addrA~combout\(2))) # (!\addrA~combout\(3) & ((\addrA~combout\(2) & (\reg[23][1]~regout\)) # (!\addrA~combout\(2) & ((\reg[19][1]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \reg[23][1]~regout\,
	datad => \reg[19][1]~regout\,
	combout => \Mux30~9_combout\);

-- Location: LCFF_X20_Y15_N7
\reg[31][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[31][1]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[31][1]~regout\);

-- Location: LCCOMB_X20_Y15_N4
\Mux30~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~10_combout\ = (\addrA~combout\(3) & ((\Mux30~9_combout\ & (\reg[31][1]~regout\)) # (!\Mux30~9_combout\ & ((\reg[27][1]~regout\))))) # (!\addrA~combout\(3) & (((\Mux30~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[31][1]~regout\,
	datab => \addrA~combout\(3),
	datac => \reg[27][1]~regout\,
	datad => \Mux30~9_combout\,
	combout => \Mux30~10_combout\);

-- Location: LCFF_X21_Y10_N17
\reg[2][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(1),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[2][1]~regout\);

-- Location: LCFF_X21_Y10_N27
\reg[3][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(1),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[3][1]~regout\);

-- Location: LCFF_X24_Y15_N19
\reg[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(1),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[1][1]~regout\);

-- Location: LCFF_X23_Y11_N5
\reg[5][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(1),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[5][1]~regout\);

-- Location: LCFF_X22_Y15_N17
\reg[6][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(1),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[6][1]~regout\);

-- Location: LCFF_X22_Y15_N19
\reg[4][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(1),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[4][1]~regout\);

-- Location: LCCOMB_X22_Y15_N16
\Mux30~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~12_combout\ = (\addrA~combout\(1) & ((\addrA~combout\(0)) # ((\reg[6][1]~regout\)))) # (!\addrA~combout\(1) & (!\addrA~combout\(0) & ((\reg[4][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \addrA~combout\(0),
	datac => \reg[6][1]~regout\,
	datad => \reg[4][1]~regout\,
	combout => \Mux30~12_combout\);

-- Location: LCFF_X23_Y11_N7
\reg[7][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(1),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[7][1]~regout\);

-- Location: LCCOMB_X23_Y11_N4
\Mux30~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~13_combout\ = (\addrA~combout\(0) & ((\Mux30~12_combout\ & ((\reg[7][1]~regout\))) # (!\Mux30~12_combout\ & (\reg[5][1]~regout\)))) # (!\addrA~combout\(0) & (\Mux30~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \Mux30~12_combout\,
	datac => \reg[5][1]~regout\,
	datad => \reg[7][1]~regout\,
	combout => \Mux30~13_combout\);

-- Location: LCCOMB_X24_Y15_N18
\Mux30~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~14_combout\ = (\Mux31~16_combout\ & ((\Mux30~13_combout\) # ((!\Mux31~15_combout\)))) # (!\Mux31~16_combout\ & (((\reg[1][1]~regout\ & \Mux31~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~13_combout\,
	datab => \Mux31~16_combout\,
	datac => \reg[1][1]~regout\,
	datad => \Mux31~15_combout\,
	combout => \Mux30~14_combout\);

-- Location: LCCOMB_X21_Y10_N16
\Mux30~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~15_combout\ = (\Mux30~14_combout\ & ((\reg[3][1]~regout\) # ((!\Mux31~18_combout\)))) # (!\Mux30~14_combout\ & (((\reg[2][1]~regout\ & \Mux31~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~14_combout\,
	datab => \reg[3][1]~regout\,
	datac => \reg[2][1]~regout\,
	datad => \Mux31~18_combout\,
	combout => \Mux30~15_combout\);

-- Location: LCFF_X25_Y14_N21
\reg[20][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(2),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[20][2]~regout\);

-- Location: LCFF_X26_Y13_N5
\reg[24][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(2),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[24][2]~regout\);

-- Location: LCFF_X26_Y13_N7
\reg[16][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(2),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[16][2]~regout\);

-- Location: LCCOMB_X26_Y13_N4
\Mux29~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~8_combout\ = (\addrA~combout\(2) & (\addrA~combout\(3))) # (!\addrA~combout\(2) & ((\addrA~combout\(3) & (\reg[24][2]~regout\)) # (!\addrA~combout\(3) & ((\reg[16][2]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[24][2]~regout\,
	datad => \reg[16][2]~regout\,
	combout => \Mux29~8_combout\);

-- Location: LCFF_X25_Y14_N15
\reg[28][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[28][2]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[28][2]~regout\);

-- Location: LCCOMB_X25_Y14_N20
\Mux29~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~9_combout\ = (\Mux29~8_combout\ & ((\reg[28][2]~regout\) # ((!\addrA~combout\(2))))) # (!\Mux29~8_combout\ & (((\reg[20][2]~regout\ & \addrA~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~8_combout\,
	datab => \reg[28][2]~regout\,
	datac => \reg[20][2]~regout\,
	datad => \addrA~combout\(2),
	combout => \Mux29~9_combout\);

-- Location: LCFF_X20_Y15_N9
\reg[27][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(2),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[27][2]~regout\);

-- Location: LCFF_X20_Y17_N1
\reg[23][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(2),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[23][2]~regout\);

-- Location: LCFF_X20_Y17_N27
\reg[19][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[19][2]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[19][2]~regout\);

-- Location: LCCOMB_X20_Y17_N0
\Mux29~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~11_combout\ = (\addrA~combout\(3) & (\addrA~combout\(2))) # (!\addrA~combout\(3) & ((\addrA~combout\(2) & (\reg[23][2]~regout\)) # (!\addrA~combout\(2) & ((\reg[19][2]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \reg[23][2]~regout\,
	datad => \reg[19][2]~regout\,
	combout => \Mux29~11_combout\);

-- Location: LCFF_X20_Y15_N11
\reg[31][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(2),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[31][2]~regout\);

-- Location: LCCOMB_X20_Y15_N8
\Mux29~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~12_combout\ = (\addrA~combout\(3) & ((\Mux29~11_combout\ & (\reg[31][2]~regout\)) # (!\Mux29~11_combout\ & ((\reg[27][2]~regout\))))) # (!\addrA~combout\(3) & (((\Mux29~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[31][2]~regout\,
	datab => \addrA~combout\(3),
	datac => \reg[27][2]~regout\,
	datad => \Mux29~11_combout\,
	combout => \Mux29~12_combout\);

-- Location: LCFF_X23_Y15_N13
\reg[2][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(2),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[2][2]~regout\);

-- Location: LCFF_X23_Y11_N17
\reg[5][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(2),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[5][2]~regout\);

-- Location: LCFF_X24_Y11_N5
\reg[6][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(2),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[6][2]~regout\);

-- Location: LCFF_X23_Y11_N3
\reg[7][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(2),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[7][2]~regout\);

-- Location: LCCOMB_X24_Y11_N4
\Mux29~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~15_combout\ = (\addrA~combout\(0) & (((\reg[7][2]~regout\)) # (!\addrA~combout\(1)))) # (!\addrA~combout\(0) & (\addrA~combout\(1) & (\reg[6][2]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \addrA~combout\(1),
	datac => \reg[6][2]~regout\,
	datad => \reg[7][2]~regout\,
	combout => \Mux29~15_combout\);

-- Location: LCFF_X24_Y11_N31
\reg[4][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(2),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[4][2]~regout\);

-- Location: LCCOMB_X24_Y11_N30
\Mux29~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~16_combout\ = (\Mux31~16_combout\ & ((\Mux29~15_combout\) # (\reg[4][2]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux29~15_combout\,
	datac => \reg[4][2]~regout\,
	datad => \Mux31~16_combout\,
	combout => \Mux29~16_combout\);

-- Location: LCCOMB_X23_Y11_N16
\Mux29~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~17_combout\ = (\Mux29~16_combout\ & ((\Mux29~15_combout\ & ((\addrA~combout\(1)) # (\reg[5][2]~regout\))) # (!\Mux29~15_combout\ & (!\addrA~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~15_combout\,
	datab => \addrA~combout\(1),
	datac => \reg[5][2]~regout\,
	datad => \Mux29~16_combout\,
	combout => \Mux29~17_combout\);

-- Location: LCCOMB_X23_Y15_N12
\Mux29~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~18_combout\ = (\Mux29~17_combout\ & ((\reg[3][2]~regout\) # ((!\Mux31~18_combout\)))) # (!\Mux29~17_combout\ & (((\reg[2][2]~regout\ & \Mux31~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~17_combout\,
	datab => \reg[3][2]~regout\,
	datac => \reg[2][2]~regout\,
	datad => \Mux31~18_combout\,
	combout => \Mux29~18_combout\);

-- Location: LCFF_X22_Y12_N5
\reg[10][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(2),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[10][2]~regout\);

-- Location: LCFF_X22_Y12_N7
\reg[8][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(2),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[8][2]~regout\);

-- Location: LCCOMB_X22_Y12_N4
\Mux29~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~19_combout\ = (\addrA~combout\(0) & (\addrA~combout\(1))) # (!\addrA~combout\(0) & ((\addrA~combout\(1) & (\reg[10][2]~regout\)) # (!\addrA~combout\(1) & ((\reg[8][2]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \addrA~combout\(1),
	datac => \reg[10][2]~regout\,
	datad => \reg[8][2]~regout\,
	combout => \Mux29~19_combout\);

-- Location: LCFF_X25_Y17_N27
\reg[12][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[12][2]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[12][2]~regout\);

-- Location: LCFF_X23_Y14_N27
\reg[9][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(3),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[9][3]~regout\);

-- Location: LCFF_X24_Y14_N3
\reg[8][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(3),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[8][3]~regout\);

-- Location: LCCOMB_X23_Y14_N26
\Mux28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\addrA~combout\(1) & (\addrA~combout\(0))) # (!\addrA~combout\(1) & ((\addrA~combout\(0) & (\reg[9][3]~regout\)) # (!\addrA~combout\(0) & ((\reg[8][3]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \addrA~combout\(0),
	datac => \reg[9][3]~regout\,
	datad => \reg[8][3]~regout\,
	combout => \Mux28~0_combout\);

-- Location: LCFF_X21_Y15_N13
\reg[21][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(3),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[21][3]~regout\);

-- Location: LCFF_X20_Y11_N21
\reg[25][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(3),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[25][3]~regout\);

-- Location: LCFF_X20_Y11_N23
\reg[17][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(3),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[17][3]~regout\);

-- Location: LCCOMB_X20_Y11_N20
\Mux28~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = (\addrA~combout\(2) & (\addrA~combout\(3))) # (!\addrA~combout\(2) & ((\addrA~combout\(3) & (\reg[25][3]~regout\)) # (!\addrA~combout\(3) & ((\reg[17][3]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[25][3]~regout\,
	datad => \reg[17][3]~regout\,
	combout => \Mux28~2_combout\);

-- Location: LCFF_X21_Y15_N23
\reg[29][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(3),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[29][3]~regout\);

-- Location: LCCOMB_X21_Y15_N12
\Mux28~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~3_combout\ = (\Mux28~2_combout\ & ((\reg[29][3]~regout\) # ((!\addrA~combout\(2))))) # (!\Mux28~2_combout\ & (((\reg[21][3]~regout\ & \addrA~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~2_combout\,
	datab => \reg[29][3]~regout\,
	datac => \reg[21][3]~regout\,
	datad => \addrA~combout\(2),
	combout => \Mux28~3_combout\);

-- Location: LCFF_X24_Y17_N13
\reg[26][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(3),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[26][3]~regout\);

-- Location: LCFF_X23_Y18_N25
\reg[22][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(3),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[22][3]~regout\);

-- Location: LCFF_X23_Y18_N11
\reg[18][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[18][3]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[18][3]~regout\);

-- Location: LCCOMB_X23_Y18_N24
\Mux28~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~4_combout\ = (\addrA~combout\(2) & ((\addrA~combout\(3)) # ((\reg[22][3]~regout\)))) # (!\addrA~combout\(2) & (!\addrA~combout\(3) & ((\reg[18][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[22][3]~regout\,
	datad => \reg[18][3]~regout\,
	combout => \Mux28~4_combout\);

-- Location: LCFF_X25_Y17_N21
\reg[30][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[30][3]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[30][3]~regout\);

-- Location: LCCOMB_X24_Y17_N12
\Mux28~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~5_combout\ = (\addrA~combout\(3) & ((\Mux28~4_combout\ & ((\reg[30][3]~regout\))) # (!\Mux28~4_combout\ & (\reg[26][3]~regout\)))) # (!\addrA~combout\(3) & (\Mux28~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \Mux28~4_combout\,
	datac => \reg[26][3]~regout\,
	datad => \reg[30][3]~regout\,
	combout => \Mux28~5_combout\);

-- Location: LCFF_X25_Y14_N9
\reg[20][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(3),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[20][3]~regout\);

-- Location: LCFF_X26_Y13_N25
\reg[24][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(3),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[24][3]~regout\);

-- Location: LCFF_X26_Y13_N27
\reg[16][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(3),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[16][3]~regout\);

-- Location: LCCOMB_X26_Y13_N24
\Mux28~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~6_combout\ = (\addrA~combout\(2) & (\addrA~combout\(3))) # (!\addrA~combout\(2) & ((\addrA~combout\(3) & (\reg[24][3]~regout\)) # (!\addrA~combout\(3) & ((\reg[16][3]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[24][3]~regout\,
	datad => \reg[16][3]~regout\,
	combout => \Mux28~6_combout\);

-- Location: LCFF_X25_Y14_N19
\reg[28][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[28][3]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[28][3]~regout\);

-- Location: LCCOMB_X25_Y14_N8
\Mux28~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~7_combout\ = (\Mux28~6_combout\ & ((\reg[28][3]~regout\) # ((!\addrA~combout\(2))))) # (!\Mux28~6_combout\ & (((\reg[20][3]~regout\ & \addrA~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~6_combout\,
	datab => \reg[28][3]~regout\,
	datac => \reg[20][3]~regout\,
	datad => \addrA~combout\(2),
	combout => \Mux28~7_combout\);

-- Location: LCCOMB_X25_Y15_N16
\Mux28~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~8_combout\ = (\addrA~combout\(0) & (((\addrA~combout\(1))))) # (!\addrA~combout\(0) & ((\addrA~combout\(1) & (\Mux28~5_combout\)) # (!\addrA~combout\(1) & ((\Mux28~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \Mux28~5_combout\,
	datac => \addrA~combout\(1),
	datad => \Mux28~7_combout\,
	combout => \Mux28~8_combout\);

-- Location: LCFF_X20_Y15_N21
\reg[27][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(3),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[27][3]~regout\);

-- Location: LCFF_X20_Y17_N5
\reg[23][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(3),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[23][3]~regout\);

-- Location: LCFF_X20_Y17_N23
\reg[19][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(3),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[19][3]~regout\);

-- Location: LCCOMB_X20_Y17_N4
\Mux28~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~9_combout\ = (\addrA~combout\(3) & (\addrA~combout\(2))) # (!\addrA~combout\(3) & ((\addrA~combout\(2) & (\reg[23][3]~regout\)) # (!\addrA~combout\(2) & ((\reg[19][3]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \reg[23][3]~regout\,
	datad => \reg[19][3]~regout\,
	combout => \Mux28~9_combout\);

-- Location: LCFF_X20_Y15_N23
\reg[31][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[31][3]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[31][3]~regout\);

-- Location: LCCOMB_X20_Y15_N20
\Mux28~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~10_combout\ = (\Mux28~9_combout\ & (((\reg[31][3]~regout\)) # (!\addrA~combout\(3)))) # (!\Mux28~9_combout\ & (\addrA~combout\(3) & (\reg[27][3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~9_combout\,
	datab => \addrA~combout\(3),
	datac => \reg[27][3]~regout\,
	datad => \reg[31][3]~regout\,
	combout => \Mux28~10_combout\);

-- Location: LCCOMB_X25_Y15_N10
\Mux28~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~11_combout\ = (\addrA~combout\(0) & ((\Mux28~8_combout\ & (\Mux28~10_combout\)) # (!\Mux28~8_combout\ & ((\Mux28~3_combout\))))) # (!\addrA~combout\(0) & (((\Mux28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \Mux28~10_combout\,
	datac => \Mux28~8_combout\,
	datad => \Mux28~3_combout\,
	combout => \Mux28~11_combout\);

-- Location: LCFF_X23_Y11_N29
\reg[5][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(3),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[5][3]~regout\);

-- Location: LCFF_X22_Y15_N21
\reg[6][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(3),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[6][3]~regout\);

-- Location: LCFF_X22_Y15_N31
\reg[4][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[4][3]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[4][3]~regout\);

-- Location: LCCOMB_X22_Y15_N20
\Mux28~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~12_combout\ = (\addrA~combout\(1) & ((\addrA~combout\(0)) # ((\reg[6][3]~regout\)))) # (!\addrA~combout\(1) & (!\addrA~combout\(0) & ((\reg[4][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \addrA~combout\(0),
	datac => \reg[6][3]~regout\,
	datad => \reg[4][3]~regout\,
	combout => \Mux28~12_combout\);

-- Location: LCFF_X23_Y11_N23
\reg[7][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(3),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[7][3]~regout\);

-- Location: LCCOMB_X23_Y11_N28
\Mux28~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~13_combout\ = (\addrA~combout\(0) & ((\Mux28~12_combout\ & ((\reg[7][3]~regout\))) # (!\Mux28~12_combout\ & (\reg[5][3]~regout\)))) # (!\addrA~combout\(0) & (\Mux28~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \Mux28~12_combout\,
	datac => \reg[5][3]~regout\,
	datad => \reg[7][3]~regout\,
	combout => \Mux28~13_combout\);

-- Location: LCFF_X25_Y14_N29
\reg[20][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(4),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[20][4]~regout\);

-- Location: LCFF_X26_Y13_N21
\reg[24][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(4),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[24][4]~regout\);

-- Location: LCFF_X26_Y13_N15
\reg[16][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(4),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[16][4]~regout\);

-- Location: LCCOMB_X26_Y13_N20
\Mux27~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~8_combout\ = (\addrA~combout\(2) & (((\addrA~combout\(3))))) # (!\addrA~combout\(2) & ((\addrA~combout\(3) & ((\reg[24][4]~regout\))) # (!\addrA~combout\(3) & (\reg[16][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \reg[16][4]~regout\,
	datac => \reg[24][4]~regout\,
	datad => \addrA~combout\(3),
	combout => \Mux27~8_combout\);

-- Location: LCFF_X25_Y14_N23
\reg[28][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[28][4]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[28][4]~regout\);

-- Location: LCCOMB_X25_Y14_N28
\Mux27~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~9_combout\ = (\Mux27~8_combout\ & ((\reg[28][4]~regout\) # ((!\addrA~combout\(2))))) # (!\Mux27~8_combout\ & (((\reg[20][4]~regout\ & \addrA~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[28][4]~regout\,
	datab => \Mux27~8_combout\,
	datac => \reg[20][4]~regout\,
	datad => \addrA~combout\(2),
	combout => \Mux27~9_combout\);

-- Location: LCFF_X20_Y15_N25
\reg[27][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(4),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[27][4]~regout\);

-- Location: LCFF_X20_Y17_N25
\reg[23][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(4),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[23][4]~regout\);

-- Location: LCFF_X20_Y17_N19
\reg[19][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[19][4]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[19][4]~regout\);

-- Location: LCCOMB_X20_Y17_N24
\Mux27~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~11_combout\ = (\addrA~combout\(3) & (\addrA~combout\(2))) # (!\addrA~combout\(3) & ((\addrA~combout\(2) & (\reg[23][4]~regout\)) # (!\addrA~combout\(2) & ((\reg[19][4]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \reg[23][4]~regout\,
	datad => \reg[19][4]~regout\,
	combout => \Mux27~11_combout\);

-- Location: LCFF_X20_Y15_N19
\reg[31][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[31][4]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[31][4]~regout\);

-- Location: LCCOMB_X20_Y15_N24
\Mux27~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~12_combout\ = (\Mux27~11_combout\ & (((\reg[31][4]~regout\)) # (!\addrA~combout\(3)))) # (!\Mux27~11_combout\ & (\addrA~combout\(3) & (\reg[27][4]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~11_combout\,
	datab => \addrA~combout\(3),
	datac => \reg[27][4]~regout\,
	datad => \reg[31][4]~regout\,
	combout => \Mux27~12_combout\);

-- Location: LCFF_X23_Y11_N1
\reg[5][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(4),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[5][4]~regout\);

-- Location: LCFF_X24_Y11_N9
\reg[6][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(4),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[6][4]~regout\);

-- Location: LCFF_X23_Y11_N11
\reg[7][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[7][4]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[7][4]~regout\);

-- Location: LCCOMB_X24_Y11_N8
\Mux27~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~15_combout\ = (\addrA~combout\(0) & (((\reg[7][4]~regout\)) # (!\addrA~combout\(1)))) # (!\addrA~combout\(0) & (\addrA~combout\(1) & (\reg[6][4]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \addrA~combout\(1),
	datac => \reg[6][4]~regout\,
	datad => \reg[7][4]~regout\,
	combout => \Mux27~15_combout\);

-- Location: LCFF_X24_Y11_N19
\reg[4][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(4),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[4][4]~regout\);

-- Location: LCCOMB_X24_Y11_N18
\Mux27~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~16_combout\ = (\Mux31~16_combout\ & ((\reg[4][4]~regout\) # (\Mux27~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux31~16_combout\,
	datac => \reg[4][4]~regout\,
	datad => \Mux27~15_combout\,
	combout => \Mux27~16_combout\);

-- Location: LCCOMB_X23_Y11_N0
\Mux27~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~17_combout\ = (\Mux27~16_combout\ & ((\Mux27~15_combout\ & ((\reg[5][4]~regout\) # (\addrA~combout\(1)))) # (!\Mux27~15_combout\ & ((!\addrA~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~16_combout\,
	datab => \Mux27~15_combout\,
	datac => \reg[5][4]~regout\,
	datad => \addrA~combout\(1),
	combout => \Mux27~17_combout\);

-- Location: LCFF_X21_Y12_N1
\reg[9][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(4),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[9][4]~regout\);

-- Location: LCFF_X22_Y12_N9
\reg[10][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(4),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[10][4]~regout\);

-- Location: LCFF_X22_Y12_N27
\reg[8][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[8][4]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[8][4]~regout\);

-- Location: LCCOMB_X22_Y12_N8
\Mux27~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~19_combout\ = (\addrA~combout\(0) & (\addrA~combout\(1))) # (!\addrA~combout\(0) & ((\addrA~combout\(1) & (\reg[10][4]~regout\)) # (!\addrA~combout\(1) & ((\reg[8][4]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \addrA~combout\(1),
	datac => \reg[10][4]~regout\,
	datad => \reg[8][4]~regout\,
	combout => \Mux27~19_combout\);

-- Location: LCFF_X21_Y12_N11
\reg[11][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(4),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[11][4]~regout\);

-- Location: LCCOMB_X21_Y12_N0
\Mux27~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~20_combout\ = (\Mux27~19_combout\ & ((\reg[11][4]~regout\) # ((!\addrA~combout\(0))))) # (!\Mux27~19_combout\ & (((\reg[9][4]~regout\ & \addrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[11][4]~regout\,
	datab => \Mux27~19_combout\,
	datac => \reg[9][4]~regout\,
	datad => \addrA~combout\(0),
	combout => \Mux27~20_combout\);

-- Location: LCFF_X22_Y17_N21
\reg[11][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(5),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[11][5]~regout\);

-- Location: LCFF_X21_Y15_N5
\reg[21][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(5),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[21][5]~regout\);

-- Location: LCFF_X20_Y11_N13
\reg[25][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(5),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[25][5]~regout\);

-- Location: LCFF_X20_Y11_N31
\reg[17][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[17][5]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[17][5]~regout\);

-- Location: LCCOMB_X20_Y11_N12
\Mux26~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = (\addrA~combout\(2) & (\addrA~combout\(3))) # (!\addrA~combout\(2) & ((\addrA~combout\(3) & (\reg[25][5]~regout\)) # (!\addrA~combout\(3) & ((\reg[17][5]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[25][5]~regout\,
	datad => \reg[17][5]~regout\,
	combout => \Mux26~2_combout\);

-- Location: LCFF_X21_Y15_N31
\reg[29][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(5),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[29][5]~regout\);

-- Location: LCCOMB_X21_Y15_N4
\Mux26~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~3_combout\ = (\addrA~combout\(2) & ((\Mux26~2_combout\ & ((\reg[29][5]~regout\))) # (!\Mux26~2_combout\ & (\reg[21][5]~regout\)))) # (!\addrA~combout\(2) & (\Mux26~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \Mux26~2_combout\,
	datac => \reg[21][5]~regout\,
	datad => \reg[29][5]~regout\,
	combout => \Mux26~3_combout\);

-- Location: LCFF_X21_Y17_N1
\reg[26][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(5),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[26][5]~regout\);

-- Location: LCFF_X23_Y18_N9
\reg[22][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(5),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[22][5]~regout\);

-- Location: LCFF_X23_Y18_N19
\reg[18][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[18][5]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[18][5]~regout\);

-- Location: LCCOMB_X23_Y18_N8
\Mux26~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~4_combout\ = (\addrA~combout\(2) & ((\addrA~combout\(3)) # ((\reg[22][5]~regout\)))) # (!\addrA~combout\(2) & (!\addrA~combout\(3) & ((\reg[18][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[22][5]~regout\,
	datad => \reg[18][5]~regout\,
	combout => \Mux26~4_combout\);

-- Location: LCFF_X21_Y17_N11
\reg[30][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(5),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[30][5]~regout\);

-- Location: LCCOMB_X21_Y17_N0
\Mux26~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~5_combout\ = (\addrA~combout\(3) & ((\Mux26~4_combout\ & (\reg[30][5]~regout\)) # (!\Mux26~4_combout\ & ((\reg[26][5]~regout\))))) # (!\addrA~combout\(3) & (((\Mux26~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[30][5]~regout\,
	datab => \addrA~combout\(3),
	datac => \reg[26][5]~regout\,
	datad => \Mux26~4_combout\,
	combout => \Mux26~5_combout\);

-- Location: LCFF_X25_Y14_N25
\reg[20][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(5),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[20][5]~regout\);

-- Location: LCFF_X26_Y13_N17
\reg[24][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(5),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[24][5]~regout\);

-- Location: LCFF_X26_Y13_N11
\reg[16][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[16][5]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[16][5]~regout\);

-- Location: LCCOMB_X26_Y13_N16
\Mux26~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~6_combout\ = (\addrA~combout\(2) & (\addrA~combout\(3))) # (!\addrA~combout\(2) & ((\addrA~combout\(3) & (\reg[24][5]~regout\)) # (!\addrA~combout\(3) & ((\reg[16][5]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[24][5]~regout\,
	datad => \reg[16][5]~regout\,
	combout => \Mux26~6_combout\);

-- Location: LCFF_X25_Y14_N3
\reg[28][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(5),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[28][5]~regout\);

-- Location: LCCOMB_X25_Y14_N24
\Mux26~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~7_combout\ = (\Mux26~6_combout\ & (((\reg[28][5]~regout\)) # (!\addrA~combout\(2)))) # (!\Mux26~6_combout\ & (\addrA~combout\(2) & (\reg[20][5]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~6_combout\,
	datab => \addrA~combout\(2),
	datac => \reg[20][5]~regout\,
	datad => \reg[28][5]~regout\,
	combout => \Mux26~7_combout\);

-- Location: LCCOMB_X22_Y17_N30
\Mux26~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~8_combout\ = (\addrA~combout\(1) & ((\Mux26~5_combout\) # ((\addrA~combout\(0))))) # (!\addrA~combout\(1) & (((!\addrA~combout\(0) & \Mux26~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~5_combout\,
	datab => \addrA~combout\(1),
	datac => \addrA~combout\(0),
	datad => \Mux26~7_combout\,
	combout => \Mux26~8_combout\);

-- Location: LCFF_X19_Y15_N25
\reg[27][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(5),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[27][5]~regout\);

-- Location: LCFF_X20_Y17_N29
\reg[23][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(5),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[23][5]~regout\);

-- Location: LCFF_X20_Y17_N31
\reg[19][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[19][5]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[19][5]~regout\);

-- Location: LCCOMB_X20_Y17_N28
\Mux26~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~9_combout\ = (\addrA~combout\(3) & (\addrA~combout\(2))) # (!\addrA~combout\(3) & ((\addrA~combout\(2) & (\reg[23][5]~regout\)) # (!\addrA~combout\(2) & ((\reg[19][5]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \reg[23][5]~regout\,
	datad => \reg[19][5]~regout\,
	combout => \Mux26~9_combout\);

-- Location: LCFF_X19_Y15_N19
\reg[31][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(5),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[31][5]~regout\);

-- Location: LCCOMB_X19_Y15_N24
\Mux26~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~10_combout\ = (\addrA~combout\(3) & ((\Mux26~9_combout\ & ((\reg[31][5]~regout\))) # (!\Mux26~9_combout\ & (\reg[27][5]~regout\)))) # (!\addrA~combout\(3) & (\Mux26~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \Mux26~9_combout\,
	datac => \reg[27][5]~regout\,
	datad => \reg[31][5]~regout\,
	combout => \Mux26~10_combout\);

-- Location: LCCOMB_X22_Y17_N24
\Mux26~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~11_combout\ = (\addrA~combout\(0) & ((\Mux26~8_combout\ & ((\Mux26~10_combout\))) # (!\Mux26~8_combout\ & (\Mux26~3_combout\)))) # (!\addrA~combout\(0) & (((\Mux26~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~3_combout\,
	datab => \Mux26~10_combout\,
	datac => \addrA~combout\(0),
	datad => \Mux26~8_combout\,
	combout => \Mux26~11_combout\);

-- Location: LCFF_X23_Y11_N13
\reg[5][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(5),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[5][5]~regout\);

-- Location: LCFF_X22_Y15_N9
\reg[6][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(5),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[6][5]~regout\);

-- Location: LCFF_X22_Y15_N3
\reg[4][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(5),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[4][5]~regout\);

-- Location: LCCOMB_X22_Y15_N8
\Mux26~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~12_combout\ = (\addrA~combout\(1) & ((\addrA~combout\(0)) # ((\reg[6][5]~regout\)))) # (!\addrA~combout\(1) & (!\addrA~combout\(0) & ((\reg[4][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \addrA~combout\(0),
	datac => \reg[6][5]~regout\,
	datad => \reg[4][5]~regout\,
	combout => \Mux26~12_combout\);

-- Location: LCFF_X23_Y11_N31
\reg[7][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[7][5]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[7][5]~regout\);

-- Location: LCCOMB_X23_Y11_N12
\Mux26~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~13_combout\ = (\addrA~combout\(0) & ((\Mux26~12_combout\ & ((\reg[7][5]~regout\))) # (!\Mux26~12_combout\ & (\reg[5][5]~regout\)))) # (!\addrA~combout\(0) & (\Mux26~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \Mux26~12_combout\,
	datac => \reg[5][5]~regout\,
	datad => \reg[7][5]~regout\,
	combout => \Mux26~13_combout\);

-- Location: LCFF_X21_Y17_N21
\reg[26][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(6),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[26][6]~regout\);

-- Location: LCFF_X23_Y18_N13
\reg[22][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(6),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[22][6]~regout\);

-- Location: LCFF_X23_Y18_N31
\reg[18][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(6),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[18][6]~regout\);

-- Location: LCCOMB_X23_Y18_N12
\Mux25~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~4_combout\ = (\addrA~combout\(2) & ((\addrA~combout\(3)) # ((\reg[22][6]~regout\)))) # (!\addrA~combout\(2) & (!\addrA~combout\(3) & ((\reg[18][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[22][6]~regout\,
	datad => \reg[18][6]~regout\,
	combout => \Mux25~4_combout\);

-- Location: LCFF_X21_Y17_N23
\reg[30][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[30][6]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[30][6]~regout\);

-- Location: LCCOMB_X21_Y17_N20
\Mux25~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~5_combout\ = (\Mux25~4_combout\ & (((\reg[30][6]~regout\)) # (!\addrA~combout\(3)))) # (!\Mux25~4_combout\ & (\addrA~combout\(3) & (\reg[26][6]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~4_combout\,
	datab => \addrA~combout\(3),
	datac => \reg[26][6]~regout\,
	datad => \reg[30][6]~regout\,
	combout => \Mux25~5_combout\);

-- Location: LCFF_X26_Y13_N29
\reg[24][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(6),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[24][6]~regout\);

-- Location: LCFF_X26_Y13_N23
\reg[16][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(6),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[16][6]~regout\);

-- Location: LCCOMB_X26_Y13_N28
\Mux25~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~8_combout\ = (\addrA~combout\(2) & (\addrA~combout\(3))) # (!\addrA~combout\(2) & ((\addrA~combout\(3) & (\reg[24][6]~regout\)) # (!\addrA~combout\(3) & ((\reg[16][6]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[24][6]~regout\,
	datad => \reg[16][6]~regout\,
	combout => \Mux25~8_combout\);

-- Location: LCFF_X19_Y15_N7
\reg[31][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(6),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[31][6]~regout\);

-- Location: LCFF_X24_Y11_N7
\reg[4][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(6),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[4][6]~regout\);

-- Location: LCCOMB_X24_Y11_N6
\Mux25~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~16_combout\ = (\Mux31~16_combout\ & ((\reg[4][6]~regout\) # (\Mux25~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux31~16_combout\,
	datac => \reg[4][6]~regout\,
	datad => \Mux25~15_combout\,
	combout => \Mux25~16_combout\);

-- Location: LCFF_X22_Y12_N29
\reg[10][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(6),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[10][6]~regout\);

-- Location: LCFF_X22_Y12_N23
\reg[8][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(6),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[8][6]~regout\);

-- Location: LCCOMB_X22_Y12_N28
\Mux25~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~19_combout\ = (\addrA~combout\(0) & (\addrA~combout\(1))) # (!\addrA~combout\(0) & ((\addrA~combout\(1) & (\reg[10][6]~regout\)) # (!\addrA~combout\(1) & ((\reg[8][6]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \addrA~combout\(1),
	datac => \reg[10][6]~regout\,
	datad => \reg[8][6]~regout\,
	combout => \Mux25~19_combout\);

-- Location: LCCOMB_X25_Y15_N20
\Mux25~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~21_combout\ = (\Mux31~23_combout\) # ((\Mux25~14_combout\ & ((\reg[3][6]~regout\) # (!\Mux31~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~18_combout\,
	datab => \Mux31~23_combout\,
	datac => \reg[3][6]~regout\,
	datad => \Mux25~14_combout\,
	combout => \Mux25~21_combout\);

-- Location: LCFF_X24_Y16_N13
\reg[13][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(6),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[13][6]~regout\);

-- Location: LCFF_X23_Y16_N3
\reg[12][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(6),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[12][6]~regout\);

-- Location: LCCOMB_X24_Y16_N12
\Mux25~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~23_combout\ = (\addrA~combout\(0) & ((\addrA~combout\(1)) # ((\reg[13][6]~regout\)))) # (!\addrA~combout\(0) & (!\addrA~combout\(1) & ((\reg[12][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \addrA~combout\(1),
	datac => \reg[13][6]~regout\,
	datad => \reg[12][6]~regout\,
	combout => \Mux25~23_combout\);

-- Location: LCFF_X25_Y10_N17
\reg[9][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(7),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[9][7]~regout\);

-- Location: LCFF_X24_Y14_N15
\reg[8][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(7),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[8][7]~regout\);

-- Location: LCCOMB_X25_Y10_N16
\Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\addrA~combout\(0) & ((\addrA~combout\(1)) # ((\reg[9][7]~regout\)))) # (!\addrA~combout\(0) & (!\addrA~combout\(1) & ((\reg[8][7]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \addrA~combout\(1),
	datac => \reg[9][7]~regout\,
	datad => \reg[8][7]~regout\,
	combout => \Mux24~0_combout\);

-- Location: LCFF_X21_Y15_N21
\reg[21][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(7),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[21][7]~regout\);

-- Location: LCFF_X20_Y11_N29
\reg[25][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(7),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[25][7]~regout\);

-- Location: LCFF_X20_Y11_N15
\reg[17][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[17][7]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[17][7]~regout\);

-- Location: LCCOMB_X20_Y11_N28
\Mux24~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (\addrA~combout\(2) & (\addrA~combout\(3))) # (!\addrA~combout\(2) & ((\addrA~combout\(3) & (\reg[25][7]~regout\)) # (!\addrA~combout\(3) & ((\reg[17][7]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[25][7]~regout\,
	datad => \reg[17][7]~regout\,
	combout => \Mux24~2_combout\);

-- Location: LCFF_X21_Y15_N15
\reg[29][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(7),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[29][7]~regout\);

-- Location: LCCOMB_X21_Y15_N20
\Mux24~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = (\addrA~combout\(2) & ((\Mux24~2_combout\ & (\reg[29][7]~regout\)) # (!\Mux24~2_combout\ & ((\reg[21][7]~regout\))))) # (!\addrA~combout\(2) & (((\Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \reg[29][7]~regout\,
	datac => \reg[21][7]~regout\,
	datad => \Mux24~2_combout\,
	combout => \Mux24~3_combout\);

-- Location: LCFF_X21_Y17_N25
\reg[26][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(7),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[26][7]~regout\);

-- Location: LCFF_X23_Y18_N1
\reg[22][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(7),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[22][7]~regout\);

-- Location: LCFF_X23_Y18_N3
\reg[18][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(7),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[18][7]~regout\);

-- Location: LCCOMB_X23_Y18_N0
\Mux24~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~4_combout\ = (\addrA~combout\(2) & ((\addrA~combout\(3)) # ((\reg[22][7]~regout\)))) # (!\addrA~combout\(2) & (!\addrA~combout\(3) & ((\reg[18][7]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[22][7]~regout\,
	datad => \reg[18][7]~regout\,
	combout => \Mux24~4_combout\);

-- Location: LCFF_X21_Y17_N19
\reg[30][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(7),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[30][7]~regout\);

-- Location: LCCOMB_X21_Y17_N24
\Mux24~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~5_combout\ = (\Mux24~4_combout\ & (((\reg[30][7]~regout\)) # (!\addrA~combout\(3)))) # (!\Mux24~4_combout\ & (\addrA~combout\(3) & (\reg[26][7]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~4_combout\,
	datab => \addrA~combout\(3),
	datac => \reg[26][7]~regout\,
	datad => \reg[30][7]~regout\,
	combout => \Mux24~5_combout\);

-- Location: LCFF_X26_Y13_N1
\reg[24][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(7),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[24][7]~regout\);

-- Location: LCFF_X26_Y13_N19
\reg[16][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(7),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[16][7]~regout\);

-- Location: LCCOMB_X26_Y13_N0
\Mux24~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~6_combout\ = (\addrA~combout\(2) & (\addrA~combout\(3))) # (!\addrA~combout\(2) & ((\addrA~combout\(3) & (\reg[24][7]~regout\)) # (!\addrA~combout\(3) & ((\reg[16][7]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[24][7]~regout\,
	datad => \reg[16][7]~regout\,
	combout => \Mux24~6_combout\);

-- Location: LCFF_X18_Y15_N9
\reg[23][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(7),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[23][7]~regout\);

-- Location: LCFF_X18_Y15_N27
\reg[19][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[19][7]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[19][7]~regout\);

-- Location: LCCOMB_X18_Y15_N8
\Mux24~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~9_combout\ = (\addrA~combout\(2) & (((\reg[23][7]~regout\) # (\addrA~combout\(3))))) # (!\addrA~combout\(2) & (\reg[19][7]~regout\ & ((!\addrA~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \reg[19][7]~regout\,
	datac => \reg[23][7]~regout\,
	datad => \addrA~combout\(3),
	combout => \Mux24~9_combout\);

-- Location: LCFF_X23_Y16_N13
\reg[14][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(7),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[14][7]~regout\);

-- Location: LCFF_X23_Y16_N7
\reg[12][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[12][7]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[12][7]~regout\);

-- Location: LCCOMB_X23_Y16_N12
\Mux24~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~17_combout\ = (\addrA~combout\(0) & (\addrA~combout\(1))) # (!\addrA~combout\(0) & ((\addrA~combout\(1) & (\reg[14][7]~regout\)) # (!\addrA~combout\(1) & ((\reg[12][7]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \addrA~combout\(1),
	datac => \reg[14][7]~regout\,
	datad => \reg[12][7]~regout\,
	combout => \Mux24~17_combout\);

-- Location: LCFF_X18_Y17_N9
\reg[22][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(8),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[22][8]~regout\);

-- Location: LCFF_X18_Y17_N3
\reg[18][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(8),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[18][8]~regout\);

-- Location: LCCOMB_X18_Y17_N8
\Mux23~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~4_combout\ = (\addrA~combout\(3) & (\addrA~combout\(2))) # (!\addrA~combout\(3) & ((\addrA~combout\(2) & (\reg[22][8]~regout\)) # (!\addrA~combout\(2) & ((\reg[18][8]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \reg[22][8]~regout\,
	datad => \reg[18][8]~regout\,
	combout => \Mux23~4_combout\);

-- Location: LCFF_X19_Y13_N17
\reg[21][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(8),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[21][8]~regout\);

-- Location: LCFF_X18_Y13_N1
\reg[25][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(8),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[25][8]~regout\);

-- Location: LCFF_X18_Y13_N3
\reg[17][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(8),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[17][8]~regout\);

-- Location: LCCOMB_X18_Y13_N0
\Mux23~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~6_combout\ = (\addrA~combout\(3) & ((\addrA~combout\(2)) # ((\reg[25][8]~regout\)))) # (!\addrA~combout\(3) & (!\addrA~combout\(2) & ((\reg[17][8]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \reg[25][8]~regout\,
	datad => \reg[17][8]~regout\,
	combout => \Mux23~6_combout\);

-- Location: LCFF_X19_Y13_N27
\reg[29][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[29][8]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[29][8]~regout\);

-- Location: LCCOMB_X19_Y13_N16
\Mux23~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~7_combout\ = (\Mux23~6_combout\ & ((\reg[29][8]~regout\) # ((!\addrA~combout\(2))))) # (!\Mux23~6_combout\ & (((\reg[21][8]~regout\ & \addrA~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~6_combout\,
	datab => \reg[29][8]~regout\,
	datac => \reg[21][8]~regout\,
	datad => \addrA~combout\(2),
	combout => \Mux23~7_combout\);

-- Location: LCFF_X19_Y15_N5
\reg[27][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(8),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[27][8]~regout\);

-- Location: LCFF_X18_Y15_N5
\reg[23][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(8),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[23][8]~regout\);

-- Location: LCFF_X18_Y15_N23
\reg[19][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[19][8]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[19][8]~regout\);

-- Location: LCCOMB_X18_Y15_N4
\Mux23~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~11_combout\ = (\addrA~combout\(2) & (((\reg[23][8]~regout\) # (\addrA~combout\(3))))) # (!\addrA~combout\(2) & (\reg[19][8]~regout\ & ((!\addrA~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \reg[19][8]~regout\,
	datac => \reg[23][8]~regout\,
	datad => \addrA~combout\(3),
	combout => \Mux23~11_combout\);

-- Location: LCFF_X19_Y15_N23
\reg[31][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(8),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[31][8]~regout\);

-- Location: LCCOMB_X19_Y15_N4
\Mux23~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~12_combout\ = (\Mux23~11_combout\ & (((\reg[31][8]~regout\)) # (!\addrA~combout\(3)))) # (!\Mux23~11_combout\ & (\addrA~combout\(3) & (\reg[27][8]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~11_combout\,
	datab => \addrA~combout\(3),
	datac => \reg[27][8]~regout\,
	datad => \reg[31][8]~regout\,
	combout => \Mux23~12_combout\);

-- Location: LCFF_X21_Y12_N9
\reg[9][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(8),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[9][8]~regout\);

-- Location: LCFF_X22_Y14_N19
\reg[10][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(8),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[10][8]~regout\);

-- Location: LCFF_X24_Y14_N1
\reg[8][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(8),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[8][8]~regout\);

-- Location: LCCOMB_X22_Y14_N18
\Mux23~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~19_combout\ = (\addrA~combout\(0) & (\addrA~combout\(1))) # (!\addrA~combout\(0) & ((\addrA~combout\(1) & (\reg[10][8]~regout\)) # (!\addrA~combout\(1) & ((\reg[8][8]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \addrA~combout\(1),
	datac => \reg[10][8]~regout\,
	datad => \reg[8][8]~regout\,
	combout => \Mux23~19_combout\);

-- Location: LCFF_X21_Y12_N19
\reg[11][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[11][8]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[11][8]~regout\);

-- Location: LCCOMB_X21_Y12_N8
\Mux23~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~20_combout\ = (\Mux23~19_combout\ & (((\reg[11][8]~regout\)) # (!\addrA~combout\(0)))) # (!\Mux23~19_combout\ & (\addrA~combout\(0) & (\reg[9][8]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~19_combout\,
	datab => \addrA~combout\(0),
	datac => \reg[9][8]~regout\,
	datad => \reg[11][8]~regout\,
	combout => \Mux23~20_combout\);

-- Location: LCFF_X24_Y16_N27
\reg[15][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(8),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[15][8]~regout\);

-- Location: LCFF_X25_Y10_N15
\reg[11][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(9),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[11][9]~regout\);

-- Location: LCFF_X18_Y17_N13
\reg[22][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(9),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[22][9]~regout\);

-- Location: LCFF_X18_Y17_N7
\reg[18][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(9),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[18][9]~regout\);

-- Location: LCCOMB_X18_Y17_N12
\Mux22~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = (\addrA~combout\(3) & (\addrA~combout\(2))) # (!\addrA~combout\(3) & ((\addrA~combout\(2) & (\reg[22][9]~regout\)) # (!\addrA~combout\(2) & ((\reg[18][9]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \reg[22][9]~regout\,
	datad => \reg[18][9]~regout\,
	combout => \Mux22~4_combout\);

-- Location: LCFF_X26_Y14_N7
\reg[28][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(9),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[28][9]~regout\);

-- Location: LCFF_X18_Y15_N17
\reg[23][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(9),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[23][9]~regout\);

-- Location: LCFF_X18_Y15_N11
\reg[19][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(9),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[19][9]~regout\);

-- Location: LCCOMB_X18_Y15_N16
\Mux22~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~9_combout\ = (\addrA~combout\(2) & ((\addrA~combout\(3)) # ((\reg[23][9]~regout\)))) # (!\addrA~combout\(2) & (!\addrA~combout\(3) & ((\reg[19][9]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[23][9]~regout\,
	datad => \reg[19][9]~regout\,
	combout => \Mux22~9_combout\);

-- Location: LCFF_X24_Y15_N17
\reg[1][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(9),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[1][9]~regout\);

-- Location: LCFF_X23_Y11_N25
\reg[5][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(9),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[5][9]~regout\);

-- Location: LCFF_X24_Y11_N21
\reg[6][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(9),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[6][9]~regout\);

-- Location: LCFF_X24_Y11_N15
\reg[4][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(9),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[4][9]~regout\);

-- Location: LCCOMB_X24_Y11_N20
\Mux22~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~12_combout\ = (\addrA~combout\(0) & (((\addrA~combout\(1))))) # (!\addrA~combout\(0) & ((\addrA~combout\(1) & ((\reg[6][9]~regout\))) # (!\addrA~combout\(1) & (\reg[4][9]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \reg[4][9]~regout\,
	datac => \reg[6][9]~regout\,
	datad => \addrA~combout\(1),
	combout => \Mux22~12_combout\);

-- Location: LCFF_X23_Y11_N27
\reg[7][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[7][9]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[7][9]~regout\);

-- Location: LCCOMB_X23_Y11_N24
\Mux22~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~13_combout\ = (\addrA~combout\(0) & ((\Mux22~12_combout\ & (\reg[7][9]~regout\)) # (!\Mux22~12_combout\ & ((\reg[5][9]~regout\))))) # (!\addrA~combout\(0) & (((\Mux22~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \reg[7][9]~regout\,
	datac => \reg[5][9]~regout\,
	datad => \Mux22~12_combout\,
	combout => \Mux22~13_combout\);

-- Location: LCCOMB_X24_Y15_N16
\Mux22~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~14_combout\ = (\Mux31~16_combout\ & ((\Mux22~13_combout\) # ((!\Mux31~15_combout\)))) # (!\Mux31~16_combout\ & (((\reg[1][9]~regout\ & \Mux31~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~16_combout\,
	datab => \Mux22~13_combout\,
	datac => \reg[1][9]~regout\,
	datad => \Mux31~15_combout\,
	combout => \Mux22~14_combout\);

-- Location: LCFF_X18_Y17_N25
\reg[22][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(10),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[22][10]~regout\);

-- Location: LCFF_X18_Y17_N11
\reg[18][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(10),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[18][10]~regout\);

-- Location: LCCOMB_X18_Y17_N24
\Mux21~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = (\addrA~combout\(3) & (\addrA~combout\(2))) # (!\addrA~combout\(3) & ((\addrA~combout\(2) & (\reg[22][10]~regout\)) # (!\addrA~combout\(2) & ((\reg[18][10]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \reg[22][10]~regout\,
	datad => \reg[18][10]~regout\,
	combout => \Mux21~4_combout\);

-- Location: LCFF_X19_Y13_N25
\reg[21][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(10),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[21][10]~regout\);

-- Location: LCFF_X18_Y13_N25
\reg[25][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(10),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[25][10]~regout\);

-- Location: LCFF_X18_Y13_N27
\reg[17][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(10),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[17][10]~regout\);

-- Location: LCCOMB_X18_Y13_N24
\Mux21~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~6_combout\ = (\addrA~combout\(3) & ((\addrA~combout\(2)) # ((\reg[25][10]~regout\)))) # (!\addrA~combout\(3) & (!\addrA~combout\(2) & ((\reg[17][10]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \reg[25][10]~regout\,
	datad => \reg[17][10]~regout\,
	combout => \Mux21~6_combout\);

-- Location: LCFF_X19_Y13_N11
\reg[29][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(10),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[29][10]~regout\);

-- Location: LCCOMB_X19_Y13_N24
\Mux21~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~7_combout\ = (\addrA~combout\(2) & ((\Mux21~6_combout\ & ((\reg[29][10]~regout\))) # (!\Mux21~6_combout\ & (\reg[21][10]~regout\)))) # (!\addrA~combout\(2) & (\Mux21~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \Mux21~6_combout\,
	datac => \reg[21][10]~regout\,
	datad => \reg[29][10]~regout\,
	combout => \Mux21~7_combout\);

-- Location: LCFF_X19_Y15_N29
\reg[27][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(10),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[27][10]~regout\);

-- Location: LCFF_X18_Y15_N21
\reg[23][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(10),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[23][10]~regout\);

-- Location: LCFF_X18_Y15_N7
\reg[19][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(10),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[19][10]~regout\);

-- Location: LCCOMB_X18_Y15_N20
\Mux21~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~11_combout\ = (\addrA~combout\(2) & ((\addrA~combout\(3)) # ((\reg[23][10]~regout\)))) # (!\addrA~combout\(2) & (!\addrA~combout\(3) & ((\reg[19][10]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[23][10]~regout\,
	datad => \reg[19][10]~regout\,
	combout => \Mux21~11_combout\);

-- Location: LCFF_X19_Y15_N31
\reg[31][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(10),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[31][10]~regout\);

-- Location: LCCOMB_X19_Y15_N28
\Mux21~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~12_combout\ = (\Mux21~11_combout\ & (((\reg[31][10]~regout\)) # (!\addrA~combout\(3)))) # (!\Mux21~11_combout\ & (\addrA~combout\(3) & (\reg[27][10]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~11_combout\,
	datab => \addrA~combout\(3),
	datac => \reg[27][10]~regout\,
	datad => \reg[31][10]~regout\,
	combout => \Mux21~12_combout\);

-- Location: LCFF_X25_Y16_N29
\reg[2][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(10),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[2][10]~regout\);

-- Location: LCFF_X25_Y11_N1
\reg[5][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(10),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[5][10]~regout\);

-- Location: LCFF_X26_Y11_N25
\reg[6][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(10),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[6][10]~regout\);

-- Location: LCFF_X22_Y14_N13
\reg[7][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(10),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[7][10]~regout\);

-- Location: LCCOMB_X26_Y11_N24
\Mux21~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~15_combout\ = (\addrA~combout\(1) & ((\addrA~combout\(0) & ((\reg[7][10]~regout\))) # (!\addrA~combout\(0) & (\reg[6][10]~regout\)))) # (!\addrA~combout\(1) & (\addrA~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \addrA~combout\(0),
	datac => \reg[6][10]~regout\,
	datad => \reg[7][10]~regout\,
	combout => \Mux21~15_combout\);

-- Location: LCFF_X26_Y11_N19
\reg[4][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(10),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[4][10]~regout\);

-- Location: LCCOMB_X26_Y11_N18
\Mux21~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~16_combout\ = (\Mux31~16_combout\ & ((\Mux21~15_combout\) # (\reg[4][10]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~15_combout\,
	datab => \Mux31~16_combout\,
	datac => \reg[4][10]~regout\,
	combout => \Mux21~16_combout\);

-- Location: LCCOMB_X25_Y11_N0
\Mux21~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~17_combout\ = (\Mux21~16_combout\ & ((\Mux21~15_combout\ & ((\reg[5][10]~regout\) # (\addrA~combout\(1)))) # (!\Mux21~15_combout\ & ((!\addrA~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~15_combout\,
	datab => \Mux21~16_combout\,
	datac => \reg[5][10]~regout\,
	datad => \addrA~combout\(1),
	combout => \Mux21~17_combout\);

-- Location: LCCOMB_X25_Y16_N28
\Mux21~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~18_combout\ = (\Mux21~17_combout\ & (((\reg[3][10]~regout\)) # (!\Mux31~18_combout\))) # (!\Mux21~17_combout\ & (\Mux31~18_combout\ & (\reg[2][10]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~17_combout\,
	datab => \Mux31~18_combout\,
	datac => \reg[2][10]~regout\,
	datad => \reg[3][10]~regout\,
	combout => \Mux21~18_combout\);

-- Location: LCFF_X21_Y12_N7
\reg[11][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(10),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[11][10]~regout\);

-- Location: LCFF_X19_Y12_N27
\reg[15][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(10),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[15][10]~regout\);

-- Location: LCFF_X22_Y13_N25
\reg[11][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[11][11]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[11][11]~regout\);

-- Location: LCFF_X19_Y13_N21
\reg[21][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(11),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[21][11]~regout\);

-- Location: LCFF_X18_Y13_N29
\reg[25][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(11),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[25][11]~regout\);

-- Location: LCFF_X18_Y13_N31
\reg[17][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(11),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[17][11]~regout\);

-- Location: LCCOMB_X18_Y13_N28
\Mux20~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (\addrA~combout\(3) & ((\addrA~combout\(2)) # ((\reg[25][11]~regout\)))) # (!\addrA~combout\(3) & (!\addrA~combout\(2) & ((\reg[17][11]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \reg[25][11]~regout\,
	datad => \reg[17][11]~regout\,
	combout => \Mux20~2_combout\);

-- Location: LCFF_X19_Y13_N23
\reg[29][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(11),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[29][11]~regout\);

-- Location: LCCOMB_X19_Y13_N20
\Mux20~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = (\addrA~combout\(2) & ((\Mux20~2_combout\ & ((\reg[29][11]~regout\))) # (!\Mux20~2_combout\ & (\reg[21][11]~regout\)))) # (!\addrA~combout\(2) & (\Mux20~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \Mux20~2_combout\,
	datac => \reg[21][11]~regout\,
	datad => \reg[29][11]~regout\,
	combout => \Mux20~3_combout\);

-- Location: LCFF_X19_Y17_N1
\reg[26][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(11),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[26][11]~regout\);

-- Location: LCFF_X18_Y17_N29
\reg[22][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(11),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[22][11]~regout\);

-- Location: LCFF_X18_Y17_N23
\reg[18][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(11),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[18][11]~regout\);

-- Location: LCCOMB_X18_Y17_N28
\Mux20~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~4_combout\ = (\addrA~combout\(3) & (\addrA~combout\(2))) # (!\addrA~combout\(3) & ((\addrA~combout\(2) & (\reg[22][11]~regout\)) # (!\addrA~combout\(2) & ((\reg[18][11]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \reg[22][11]~regout\,
	datad => \reg[18][11]~regout\,
	combout => \Mux20~4_combout\);

-- Location: LCFF_X19_Y17_N11
\reg[30][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(11),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[30][11]~regout\);

-- Location: LCCOMB_X19_Y17_N0
\Mux20~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~5_combout\ = (\addrA~combout\(3) & ((\Mux20~4_combout\ & (\reg[30][11]~regout\)) # (!\Mux20~4_combout\ & ((\reg[26][11]~regout\))))) # (!\addrA~combout\(3) & (((\Mux20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[30][11]~regout\,
	datab => \addrA~combout\(3),
	datac => \reg[26][11]~regout\,
	datad => \Mux20~4_combout\,
	combout => \Mux20~5_combout\);

-- Location: LCFF_X26_Y14_N21
\reg[20][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(11),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[20][11]~regout\);

-- Location: LCFF_X27_Y14_N21
\reg[24][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(11),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[24][11]~regout\);

-- Location: LCFF_X27_Y14_N23
\reg[16][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[16][11]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[16][11]~regout\);

-- Location: LCCOMB_X27_Y14_N20
\Mux20~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~6_combout\ = (\addrA~combout\(2) & (\addrA~combout\(3))) # (!\addrA~combout\(2) & ((\addrA~combout\(3) & (\reg[24][11]~regout\)) # (!\addrA~combout\(3) & ((\reg[16][11]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[24][11]~regout\,
	datad => \reg[16][11]~regout\,
	combout => \Mux20~6_combout\);

-- Location: LCFF_X26_Y14_N15
\reg[28][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[28][11]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[28][11]~regout\);

-- Location: LCCOMB_X26_Y14_N20
\Mux20~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~7_combout\ = (\addrA~combout\(2) & ((\Mux20~6_combout\ & (\reg[28][11]~regout\)) # (!\Mux20~6_combout\ & ((\reg[20][11]~regout\))))) # (!\addrA~combout\(2) & (((\Mux20~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \reg[28][11]~regout\,
	datac => \reg[20][11]~regout\,
	datad => \Mux20~6_combout\,
	combout => \Mux20~7_combout\);

-- Location: LCCOMB_X22_Y14_N2
\Mux20~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~8_combout\ = (\addrA~combout\(0) & (\addrA~combout\(1))) # (!\addrA~combout\(0) & ((\addrA~combout\(1) & (\Mux20~5_combout\)) # (!\addrA~combout\(1) & ((\Mux20~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \addrA~combout\(1),
	datac => \Mux20~5_combout\,
	datad => \Mux20~7_combout\,
	combout => \Mux20~8_combout\);

-- Location: LCFF_X19_Y15_N17
\reg[27][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(11),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[27][11]~regout\);

-- Location: LCFF_X18_Y15_N25
\reg[23][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(11),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[23][11]~regout\);

-- Location: LCFF_X18_Y15_N3
\reg[19][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[19][11]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[19][11]~regout\);

-- Location: LCCOMB_X18_Y15_N24
\Mux20~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~9_combout\ = (\addrA~combout\(2) & (((\reg[23][11]~regout\) # (\addrA~combout\(3))))) # (!\addrA~combout\(2) & (\reg[19][11]~regout\ & ((!\addrA~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \reg[19][11]~regout\,
	datac => \reg[23][11]~regout\,
	datad => \addrA~combout\(3),
	combout => \Mux20~9_combout\);

-- Location: LCFF_X19_Y15_N27
\reg[31][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(11),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[31][11]~regout\);

-- Location: LCCOMB_X19_Y15_N16
\Mux20~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~10_combout\ = (\addrA~combout\(3) & ((\Mux20~9_combout\ & ((\reg[31][11]~regout\))) # (!\Mux20~9_combout\ & (\reg[27][11]~regout\)))) # (!\addrA~combout\(3) & (\Mux20~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \Mux20~9_combout\,
	datac => \reg[27][11]~regout\,
	datad => \reg[31][11]~regout\,
	combout => \Mux20~10_combout\);

-- Location: LCCOMB_X22_Y14_N20
\Mux20~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~11_combout\ = (\addrA~combout\(0) & ((\Mux20~8_combout\ & ((\Mux20~10_combout\))) # (!\Mux20~8_combout\ & (\Mux20~3_combout\)))) # (!\addrA~combout\(0) & (((\Mux20~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~3_combout\,
	datab => \Mux20~10_combout\,
	datac => \addrA~combout\(0),
	datad => \Mux20~8_combout\,
	combout => \Mux20~11_combout\);

-- Location: LCFF_X22_Y13_N19
\reg[3][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[3][11]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[3][11]~regout\);

-- Location: LCFF_X22_Y14_N7
\reg[7][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(11),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[7][11]~regout\);

-- Location: LCFF_X19_Y17_N13
\reg[26][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(12),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[26][12]~regout\);

-- Location: LCFF_X18_Y17_N17
\reg[22][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(12),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[22][12]~regout\);

-- Location: LCFF_X18_Y17_N19
\reg[18][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(12),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[18][12]~regout\);

-- Location: LCCOMB_X18_Y17_N16
\Mux19~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~4_combout\ = (\addrA~combout\(3) & (\addrA~combout\(2))) # (!\addrA~combout\(3) & ((\addrA~combout\(2) & (\reg[22][12]~regout\)) # (!\addrA~combout\(2) & ((\reg[18][12]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \reg[22][12]~regout\,
	datad => \reg[18][12]~regout\,
	combout => \Mux19~4_combout\);

-- Location: LCFF_X19_Y17_N23
\reg[30][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[30][12]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[30][12]~regout\);

-- Location: LCCOMB_X19_Y17_N12
\Mux19~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~5_combout\ = (\addrA~combout\(3) & ((\Mux19~4_combout\ & ((\reg[30][12]~regout\))) # (!\Mux19~4_combout\ & (\reg[26][12]~regout\)))) # (!\addrA~combout\(3) & (\Mux19~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \Mux19~4_combout\,
	datac => \reg[26][12]~regout\,
	datad => \reg[30][12]~regout\,
	combout => \Mux19~5_combout\);

-- Location: LCFF_X19_Y13_N1
\reg[21][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(12),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[21][12]~regout\);

-- Location: LCFF_X18_Y13_N17
\reg[25][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(12),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[25][12]~regout\);

-- Location: LCFF_X18_Y13_N19
\reg[17][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(12),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[17][12]~regout\);

-- Location: LCCOMB_X18_Y13_N16
\Mux19~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~6_combout\ = (\addrA~combout\(3) & ((\addrA~combout\(2)) # ((\reg[25][12]~regout\)))) # (!\addrA~combout\(3) & (!\addrA~combout\(2) & ((\reg[17][12]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \reg[25][12]~regout\,
	datad => \reg[17][12]~regout\,
	combout => \Mux19~6_combout\);

-- Location: LCFF_X19_Y13_N3
\reg[29][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[29][12]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[29][12]~regout\);

-- Location: LCCOMB_X19_Y13_N0
\Mux19~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~7_combout\ = (\addrA~combout\(2) & ((\Mux19~6_combout\ & ((\reg[29][12]~regout\))) # (!\Mux19~6_combout\ & (\reg[21][12]~regout\)))) # (!\addrA~combout\(2) & (\Mux19~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \Mux19~6_combout\,
	datac => \reg[21][12]~regout\,
	datad => \reg[29][12]~regout\,
	combout => \Mux19~7_combout\);

-- Location: LCFF_X27_Y14_N17
\reg[24][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(12),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[24][12]~regout\);

-- Location: LCFF_X27_Y14_N19
\reg[16][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(12),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[16][12]~regout\);

-- Location: LCCOMB_X27_Y14_N16
\Mux19~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~8_combout\ = (\addrA~combout\(2) & (\addrA~combout\(3))) # (!\addrA~combout\(2) & ((\addrA~combout\(3) & (\reg[24][12]~regout\)) # (!\addrA~combout\(3) & ((\reg[16][12]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[24][12]~regout\,
	datad => \reg[16][12]~regout\,
	combout => \Mux19~8_combout\);

-- Location: LCFF_X26_Y11_N3
\reg[4][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(12),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[4][12]~regout\);

-- Location: LCCOMB_X26_Y11_N2
\Mux19~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~16_combout\ = (\Mux31~16_combout\ & ((\Mux19~15_combout\) # (\reg[4][12]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~15_combout\,
	datab => \Mux31~16_combout\,
	datac => \reg[4][12]~regout\,
	combout => \Mux19~16_combout\);

-- Location: LCFF_X23_Y12_N17
\reg[9][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(12),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[9][12]~regout\);

-- Location: LCFF_X22_Y12_N17
\reg[10][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(12),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[10][12]~regout\);

-- Location: LCFF_X22_Y12_N3
\reg[8][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(12),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[8][12]~regout\);

-- Location: LCCOMB_X22_Y12_N16
\Mux19~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~19_combout\ = (\addrA~combout\(0) & (\addrA~combout\(1))) # (!\addrA~combout\(0) & ((\addrA~combout\(1) & (\reg[10][12]~regout\)) # (!\addrA~combout\(1) & ((\reg[8][12]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \addrA~combout\(1),
	datac => \reg[10][12]~regout\,
	datad => \reg[8][12]~regout\,
	combout => \Mux19~19_combout\);

-- Location: LCFF_X22_Y13_N21
\reg[11][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(12),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[11][12]~regout\);

-- Location: LCCOMB_X23_Y12_N16
\Mux19~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~20_combout\ = (\addrA~combout\(0) & ((\Mux19~19_combout\ & ((\reg[11][12]~regout\))) # (!\Mux19~19_combout\ & (\reg[9][12]~regout\)))) # (!\addrA~combout\(0) & (\Mux19~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \Mux19~19_combout\,
	datac => \reg[9][12]~regout\,
	datad => \reg[11][12]~regout\,
	combout => \Mux19~20_combout\);

-- Location: LCFF_X22_Y16_N5
\reg[13][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(12),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[13][12]~regout\);

-- Location: LCFF_X25_Y17_N3
\reg[12][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(12),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[12][12]~regout\);

-- Location: LCCOMB_X22_Y16_N4
\Mux19~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~23_combout\ = (\addrA~combout\(1) & (((\addrA~combout\(0))))) # (!\addrA~combout\(1) & ((\addrA~combout\(0) & ((\reg[13][12]~regout\))) # (!\addrA~combout\(0) & (\reg[12][12]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[12][12]~regout\,
	datab => \addrA~combout\(1),
	datac => \reg[13][12]~regout\,
	datad => \addrA~combout\(0),
	combout => \Mux19~23_combout\);

-- Location: LCFF_X22_Y13_N7
\reg[11][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[11][13]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[11][13]~regout\);

-- Location: LCFF_X18_Y13_N21
\reg[25][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(13),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[25][13]~regout\);

-- Location: LCFF_X18_Y13_N7
\reg[17][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(13),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[17][13]~regout\);

-- Location: LCCOMB_X18_Y13_N20
\Mux18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (\addrA~combout\(3) & ((\addrA~combout\(2)) # ((\reg[25][13]~regout\)))) # (!\addrA~combout\(3) & (!\addrA~combout\(2) & ((\reg[17][13]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \reg[25][13]~regout\,
	datad => \reg[17][13]~regout\,
	combout => \Mux18~2_combout\);

-- Location: LCFF_X19_Y17_N17
\reg[26][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(13),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[26][13]~regout\);

-- Location: LCFF_X18_Y17_N21
\reg[22][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(13),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[22][13]~regout\);

-- Location: LCFF_X18_Y17_N15
\reg[18][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(13),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[18][13]~regout\);

-- Location: LCCOMB_X18_Y17_N20
\Mux18~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~4_combout\ = (\addrA~combout\(3) & (\addrA~combout\(2))) # (!\addrA~combout\(3) & ((\addrA~combout\(2) & (\reg[22][13]~regout\)) # (!\addrA~combout\(2) & ((\reg[18][13]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \reg[22][13]~regout\,
	datad => \reg[18][13]~regout\,
	combout => \Mux18~4_combout\);

-- Location: LCFF_X19_Y17_N19
\reg[30][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(13),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[30][13]~regout\);

-- Location: LCCOMB_X19_Y17_N16
\Mux18~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~5_combout\ = (\Mux18~4_combout\ & (((\reg[30][13]~regout\)) # (!\addrA~combout\(3)))) # (!\Mux18~4_combout\ & (\addrA~combout\(3) & (\reg[26][13]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~4_combout\,
	datab => \addrA~combout\(3),
	datac => \reg[26][13]~regout\,
	datad => \reg[30][13]~regout\,
	combout => \Mux18~5_combout\);

-- Location: LCFF_X26_Y14_N29
\reg[20][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(13),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[20][13]~regout\);

-- Location: LCFF_X27_Y14_N13
\reg[24][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(13),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[24][13]~regout\);

-- Location: LCFF_X27_Y14_N31
\reg[16][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[16][13]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[16][13]~regout\);

-- Location: LCCOMB_X27_Y14_N12
\Mux18~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~6_combout\ = (\addrA~combout\(2) & (\addrA~combout\(3))) # (!\addrA~combout\(2) & ((\addrA~combout\(3) & (\reg[24][13]~regout\)) # (!\addrA~combout\(3) & ((\reg[16][13]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[24][13]~regout\,
	datad => \reg[16][13]~regout\,
	combout => \Mux18~6_combout\);

-- Location: LCFF_X26_Y14_N23
\reg[28][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(13),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[28][13]~regout\);

-- Location: LCCOMB_X26_Y14_N28
\Mux18~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~7_combout\ = (\addrA~combout\(2) & ((\Mux18~6_combout\ & (\reg[28][13]~regout\)) # (!\Mux18~6_combout\ & ((\reg[20][13]~regout\))))) # (!\addrA~combout\(2) & (((\Mux18~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \reg[28][13]~regout\,
	datac => \reg[20][13]~regout\,
	datad => \Mux18~6_combout\,
	combout => \Mux18~7_combout\);

-- Location: LCCOMB_X21_Y16_N10
\Mux18~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~8_combout\ = (\addrA~combout\(0) & (((\addrA~combout\(1))))) # (!\addrA~combout\(0) & ((\addrA~combout\(1) & (\Mux18~5_combout\)) # (!\addrA~combout\(1) & ((\Mux18~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~5_combout\,
	datab => \addrA~combout\(0),
	datac => \addrA~combout\(1),
	datad => \Mux18~7_combout\,
	combout => \Mux18~8_combout\);

-- Location: LCFF_X22_Y11_N11
\reg[5][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(13),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[5][13]~regout\);

-- Location: LCFF_X26_Y11_N21
\reg[6][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(13),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[6][13]~regout\);

-- Location: LCFF_X26_Y11_N15
\reg[4][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[4][13]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[4][13]~regout\);

-- Location: LCCOMB_X26_Y11_N20
\Mux18~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~12_combout\ = (\addrA~combout\(1) & (((\reg[6][13]~regout\) # (\addrA~combout\(0))))) # (!\addrA~combout\(1) & (\reg[4][13]~regout\ & ((!\addrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \reg[4][13]~regout\,
	datac => \reg[6][13]~regout\,
	datad => \addrA~combout\(0),
	combout => \Mux18~12_combout\);

-- Location: LCFF_X22_Y14_N23
\reg[7][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[7][13]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[7][13]~regout\);

-- Location: LCCOMB_X22_Y11_N10
\Mux18~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~13_combout\ = (\addrA~combout\(0) & ((\Mux18~12_combout\ & (\reg[7][13]~regout\)) # (!\Mux18~12_combout\ & ((\reg[5][13]~regout\))))) # (!\addrA~combout\(0) & (((\Mux18~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[7][13]~regout\,
	datab => \addrA~combout\(0),
	datac => \reg[5][13]~regout\,
	datad => \Mux18~12_combout\,
	combout => \Mux18~13_combout\);

-- Location: LCFF_X18_Y17_N1
\reg[22][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(14),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[22][14]~regout\);

-- Location: LCFF_X18_Y17_N27
\reg[18][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(14),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[18][14]~regout\);

-- Location: LCCOMB_X18_Y17_N0
\Mux17~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = (\addrA~combout\(3) & (\addrA~combout\(2))) # (!\addrA~combout\(3) & ((\addrA~combout\(2) & (\reg[22][14]~regout\)) # (!\addrA~combout\(2) & ((\reg[18][14]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \reg[22][14]~regout\,
	datad => \reg[18][14]~regout\,
	combout => \Mux17~4_combout\);

-- Location: LCFF_X19_Y16_N17
\reg[27][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(14),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[27][14]~regout\);

-- Location: LCFF_X20_Y16_N9
\reg[23][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(14),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[23][14]~regout\);

-- Location: LCFF_X20_Y16_N3
\reg[19][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[19][14]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[19][14]~regout\);

-- Location: LCCOMB_X20_Y16_N8
\Mux17~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~11_combout\ = (\addrA~combout\(2) & ((\addrA~combout\(3)) # ((\reg[23][14]~regout\)))) # (!\addrA~combout\(2) & (!\addrA~combout\(3) & ((\reg[19][14]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[23][14]~regout\,
	datad => \reg[19][14]~regout\,
	combout => \Mux17~11_combout\);

-- Location: LCFF_X19_Y16_N3
\reg[31][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[31][14]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[31][14]~regout\);

-- Location: LCCOMB_X19_Y16_N16
\Mux17~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~12_combout\ = (\addrA~combout\(3) & ((\Mux17~11_combout\ & ((\reg[31][14]~regout\))) # (!\Mux17~11_combout\ & (\reg[27][14]~regout\)))) # (!\addrA~combout\(3) & (\Mux17~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \Mux17~11_combout\,
	datac => \reg[27][14]~regout\,
	datad => \reg[31][14]~regout\,
	combout => \Mux17~12_combout\);

-- Location: LCFF_X25_Y11_N5
\reg[5][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(14),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[5][14]~regout\);

-- Location: LCFF_X26_Y11_N1
\reg[6][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(14),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[6][14]~regout\);

-- Location: LCFF_X22_Y9_N9
\reg[7][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(14),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[7][14]~regout\);

-- Location: LCCOMB_X26_Y11_N0
\Mux17~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~15_combout\ = (\addrA~combout\(1) & ((\addrA~combout\(0) & ((\reg[7][14]~regout\))) # (!\addrA~combout\(0) & (\reg[6][14]~regout\)))) # (!\addrA~combout\(1) & (\addrA~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \addrA~combout\(0),
	datac => \reg[6][14]~regout\,
	datad => \reg[7][14]~regout\,
	combout => \Mux17~15_combout\);

-- Location: LCFF_X26_Y11_N11
\reg[4][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(14),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[4][14]~regout\);

-- Location: LCCOMB_X26_Y11_N10
\Mux17~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~16_combout\ = (\Mux31~16_combout\ & ((\reg[4][14]~regout\) # (\Mux17~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux31~16_combout\,
	datac => \reg[4][14]~regout\,
	datad => \Mux17~15_combout\,
	combout => \Mux17~16_combout\);

-- Location: LCCOMB_X25_Y11_N4
\Mux17~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~17_combout\ = (\Mux17~16_combout\ & ((\Mux17~15_combout\ & ((\reg[5][14]~regout\) # (\addrA~combout\(1)))) # (!\Mux17~15_combout\ & ((!\addrA~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~15_combout\,
	datab => \Mux17~16_combout\,
	datac => \reg[5][14]~regout\,
	datad => \addrA~combout\(1),
	combout => \Mux17~17_combout\);

-- Location: LCFF_X23_Y14_N19
\reg[9][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(15),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[9][15]~regout\);

-- Location: LCFF_X24_Y14_N9
\reg[8][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[8][15]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[8][15]~regout\);

-- Location: LCCOMB_X23_Y14_N18
\Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\addrA~combout\(1) & (((\addrA~combout\(0))))) # (!\addrA~combout\(1) & ((\addrA~combout\(0) & ((\reg[9][15]~regout\))) # (!\addrA~combout\(0) & (\reg[8][15]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \reg[8][15]~regout\,
	datac => \reg[9][15]~regout\,
	datad => \addrA~combout\(0),
	combout => \Mux16~0_combout\);

-- Location: LCFF_X13_Y14_N9
\reg[25][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(15),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[25][15]~regout\);

-- Location: LCFF_X13_Y14_N19
\reg[17][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[17][15]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[17][15]~regout\);

-- Location: LCCOMB_X13_Y14_N8
\Mux16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (\addrA~combout\(2) & (\addrA~combout\(3))) # (!\addrA~combout\(2) & ((\addrA~combout\(3) & (\reg[25][15]~regout\)) # (!\addrA~combout\(3) & ((\reg[17][15]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[25][15]~regout\,
	datad => \reg[17][15]~regout\,
	combout => \Mux16~2_combout\);

-- Location: LCFF_X19_Y17_N9
\reg[26][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(15),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[26][15]~regout\);

-- Location: LCFF_X20_Y18_N25
\reg[22][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(15),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[22][15]~regout\);

-- Location: LCFF_X21_Y18_N25
\reg[18][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[18][15]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[18][15]~regout\);

-- Location: LCCOMB_X20_Y18_N24
\Mux16~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~4_combout\ = (\addrA~combout\(2) & ((\addrA~combout\(3)) # ((\reg[22][15]~regout\)))) # (!\addrA~combout\(2) & (!\addrA~combout\(3) & ((\reg[18][15]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[22][15]~regout\,
	datad => \reg[18][15]~regout\,
	combout => \Mux16~4_combout\);

-- Location: LCFF_X19_Y17_N3
\reg[30][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[30][15]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[30][15]~regout\);

-- Location: LCCOMB_X19_Y17_N8
\Mux16~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~5_combout\ = (\Mux16~4_combout\ & (((\reg[30][15]~regout\)) # (!\addrA~combout\(3)))) # (!\Mux16~4_combout\ & (\addrA~combout\(3) & (\reg[26][15]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~4_combout\,
	datab => \addrA~combout\(3),
	datac => \reg[26][15]~regout\,
	datad => \reg[30][15]~regout\,
	combout => \Mux16~5_combout\);

-- Location: LCFF_X16_Y14_N25
\reg[20][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(15),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[20][15]~regout\);

-- Location: LCFF_X15_Y14_N9
\reg[24][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(15),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[24][15]~regout\);

-- Location: LCFF_X15_Y14_N11
\reg[16][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(15),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[16][15]~regout\);

-- Location: LCCOMB_X15_Y14_N8
\Mux16~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~6_combout\ = (\addrA~combout\(2) & (\addrA~combout\(3))) # (!\addrA~combout\(2) & ((\addrA~combout\(3) & (\reg[24][15]~regout\)) # (!\addrA~combout\(3) & ((\reg[16][15]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[24][15]~regout\,
	datad => \reg[16][15]~regout\,
	combout => \Mux16~6_combout\);

-- Location: LCFF_X16_Y14_N27
\reg[28][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(15),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[28][15]~regout\);

-- Location: LCCOMB_X16_Y14_N24
\Mux16~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~7_combout\ = (\Mux16~6_combout\ & (((\reg[28][15]~regout\)) # (!\addrA~combout\(2)))) # (!\Mux16~6_combout\ & (\addrA~combout\(2) & (\reg[20][15]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~6_combout\,
	datab => \addrA~combout\(2),
	datac => \reg[20][15]~regout\,
	datad => \reg[28][15]~regout\,
	combout => \Mux16~7_combout\);

-- Location: LCCOMB_X18_Y16_N12
\Mux16~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~8_combout\ = (\addrA~combout\(1) & ((\Mux16~5_combout\) # ((\addrA~combout\(0))))) # (!\addrA~combout\(1) & (((\Mux16~7_combout\ & !\addrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \Mux16~5_combout\,
	datac => \Mux16~7_combout\,
	datad => \addrA~combout\(0),
	combout => \Mux16~8_combout\);

-- Location: LCFF_X21_Y11_N11
\reg[3][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(15),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[3][15]~regout\);

-- Location: LCFF_X22_Y11_N7
\reg[5][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(15),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[5][15]~regout\);

-- Location: LCFF_X26_Y11_N13
\reg[6][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(15),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[6][15]~regout\);

-- Location: LCFF_X26_Y11_N23
\reg[4][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(15),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[4][15]~regout\);

-- Location: LCCOMB_X26_Y11_N12
\Mux16~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~12_combout\ = (\addrA~combout\(1) & ((\addrA~combout\(0)) # ((\reg[6][15]~regout\)))) # (!\addrA~combout\(1) & (!\addrA~combout\(0) & ((\reg[4][15]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \addrA~combout\(0),
	datac => \reg[6][15]~regout\,
	datad => \reg[4][15]~regout\,
	combout => \Mux16~12_combout\);

-- Location: LCFF_X22_Y14_N27
\reg[7][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(15),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[7][15]~regout\);

-- Location: LCCOMB_X22_Y11_N6
\Mux16~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~13_combout\ = (\Mux16~12_combout\ & ((\reg[7][15]~regout\) # ((!\addrA~combout\(0))))) # (!\Mux16~12_combout\ & (((\reg[5][15]~regout\ & \addrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[7][15]~regout\,
	datab => \Mux16~12_combout\,
	datac => \reg[5][15]~regout\,
	datad => \addrA~combout\(0),
	combout => \Mux16~13_combout\);

-- Location: LCFF_X18_Y16_N19
\reg[14][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(15),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[14][15]~regout\);

-- Location: LCFF_X18_Y16_N29
\reg[12][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(15),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[12][15]~regout\);

-- Location: LCCOMB_X18_Y16_N18
\Mux16~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~17_combout\ = (\addrA~combout\(1) & (((\reg[14][15]~regout\) # (\addrA~combout\(0))))) # (!\addrA~combout\(1) & (\reg[12][15]~regout\ & ((!\addrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \reg[12][15]~regout\,
	datac => \reg[14][15]~regout\,
	datad => \addrA~combout\(0),
	combout => \Mux16~17_combout\);

-- Location: LCFF_X21_Y18_N3
\reg[18][16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[18][16]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[18][16]~regout\);

-- Location: LCFF_X19_Y17_N7
\reg[30][16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(16),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[30][16]~regout\);

-- Location: LCFF_X14_Y14_N29
\reg[21][16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(16),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[21][16]~regout\);

-- Location: LCFF_X13_Y14_N21
\reg[25][16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(16),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[25][16]~regout\);

-- Location: LCFF_X13_Y14_N23
\reg[17][16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(16),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[17][16]~regout\);

-- Location: LCCOMB_X13_Y14_N20
\Mux15~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~6_combout\ = (\addrA~combout\(2) & (\addrA~combout\(3))) # (!\addrA~combout\(2) & ((\addrA~combout\(3) & (\reg[25][16]~regout\)) # (!\addrA~combout\(3) & ((\reg[17][16]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[25][16]~regout\,
	datad => \reg[17][16]~regout\,
	combout => \Mux15~6_combout\);

-- Location: LCFF_X14_Y14_N31
\reg[29][16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(16),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[29][16]~regout\);

-- Location: LCCOMB_X14_Y14_N28
\Mux15~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~7_combout\ = (\Mux15~6_combout\ & (((\reg[29][16]~regout\)) # (!\addrA~combout\(2)))) # (!\Mux15~6_combout\ & (\addrA~combout\(2) & (\reg[21][16]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~6_combout\,
	datab => \addrA~combout\(2),
	datac => \reg[21][16]~regout\,
	datad => \reg[29][16]~regout\,
	combout => \Mux15~7_combout\);

-- Location: LCFF_X16_Y14_N13
\reg[20][16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(16),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[20][16]~regout\);

-- Location: LCFF_X15_Y14_N5
\reg[24][16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(16),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[24][16]~regout\);

-- Location: LCFF_X15_Y14_N7
\reg[16][16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[16][16]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[16][16]~regout\);

-- Location: LCCOMB_X15_Y14_N4
\Mux15~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~8_combout\ = (\addrA~combout\(2) & (\addrA~combout\(3))) # (!\addrA~combout\(2) & ((\addrA~combout\(3) & (\reg[24][16]~regout\)) # (!\addrA~combout\(3) & ((\reg[16][16]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[24][16]~regout\,
	datad => \reg[16][16]~regout\,
	combout => \Mux15~8_combout\);

-- Location: LCFF_X16_Y14_N31
\reg[28][16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[28][16]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[28][16]~regout\);

-- Location: LCCOMB_X16_Y14_N12
\Mux15~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~9_combout\ = (\addrA~combout\(2) & ((\Mux15~8_combout\ & ((\reg[28][16]~regout\))) # (!\Mux15~8_combout\ & (\reg[20][16]~regout\)))) # (!\addrA~combout\(2) & (\Mux15~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \Mux15~8_combout\,
	datac => \reg[20][16]~regout\,
	datad => \reg[28][16]~regout\,
	combout => \Mux15~9_combout\);

-- Location: LCCOMB_X18_Y16_N24
\Mux15~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~10_combout\ = (\addrA~combout\(1) & (((\addrA~combout\(0))))) # (!\addrA~combout\(1) & ((\addrA~combout\(0) & (\Mux15~7_combout\)) # (!\addrA~combout\(0) & ((\Mux15~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \Mux15~7_combout\,
	datac => \Mux15~9_combout\,
	datad => \addrA~combout\(0),
	combout => \Mux15~10_combout\);

-- Location: LCFF_X25_Y12_N31
\reg[2][16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(16),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[2][16]~regout\);

-- Location: LCFF_X25_Y11_N15
\reg[5][16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(16),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[5][16]~regout\);

-- Location: LCFF_X26_Y11_N9
\reg[6][16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(16),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[6][16]~regout\);

-- Location: LCFF_X23_Y9_N23
\reg[7][16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[7][16]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[7][16]~regout\);

-- Location: LCCOMB_X26_Y11_N8
\Mux15~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~15_combout\ = (\addrA~combout\(1) & ((\addrA~combout\(0) & ((\reg[7][16]~regout\))) # (!\addrA~combout\(0) & (\reg[6][16]~regout\)))) # (!\addrA~combout\(1) & (\addrA~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \addrA~combout\(0),
	datac => \reg[6][16]~regout\,
	datad => \reg[7][16]~regout\,
	combout => \Mux15~15_combout\);

-- Location: LCFF_X26_Y11_N27
\reg[4][16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(16),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[4][16]~regout\);

-- Location: LCCOMB_X26_Y11_N26
\Mux15~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~16_combout\ = (\Mux31~16_combout\ & ((\reg[4][16]~regout\) # (\Mux15~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux31~16_combout\,
	datac => \reg[4][16]~regout\,
	datad => \Mux15~15_combout\,
	combout => \Mux15~16_combout\);

-- Location: LCCOMB_X25_Y11_N14
\Mux15~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~17_combout\ = (\Mux15~16_combout\ & ((\Mux15~15_combout\ & ((\reg[5][16]~regout\) # (\addrA~combout\(1)))) # (!\Mux15~15_combout\ & ((!\addrA~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~16_combout\,
	datab => \Mux15~15_combout\,
	datac => \reg[5][16]~regout\,
	datad => \addrA~combout\(1),
	combout => \Mux15~17_combout\);

-- Location: LCCOMB_X25_Y12_N30
\Mux15~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~18_combout\ = (\Mux15~17_combout\ & ((\reg[3][16]~regout\) # ((!\Mux31~18_combout\)))) # (!\Mux15~17_combout\ & (((\reg[2][16]~regout\ & \Mux31~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~17_combout\,
	datab => \reg[3][16]~regout\,
	datac => \reg[2][16]~regout\,
	datad => \Mux31~18_combout\,
	combout => \Mux15~18_combout\);

-- Location: LCFF_X23_Y9_N17
\reg[8][16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[8][16]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[8][16]~regout\);

-- Location: LCFF_X18_Y12_N3
\reg[13][16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(16),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[13][16]~regout\);

-- Location: LCFF_X25_Y17_N5
\reg[12][16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[12][16]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[12][16]~regout\);

-- Location: LCCOMB_X18_Y12_N2
\Mux15~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~23_combout\ = (\addrA~combout\(1) & (\addrA~combout\(0))) # (!\addrA~combout\(1) & ((\addrA~combout\(0) & (\reg[13][16]~regout\)) # (!\addrA~combout\(0) & ((\reg[12][16]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \addrA~combout\(0),
	datac => \reg[13][16]~regout\,
	datad => \reg[12][16]~regout\,
	combout => \Mux15~23_combout\);

-- Location: LCFF_X13_Y14_N1
\reg[25][17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(17),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[25][17]~regout\);

-- Location: LCFF_X13_Y14_N11
\reg[17][17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[17][17]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[17][17]~regout\);

-- Location: LCCOMB_X13_Y14_N0
\Mux14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\addrA~combout\(3) & (((\reg[25][17]~regout\) # (\addrA~combout\(2))))) # (!\addrA~combout\(3) & (\reg[17][17]~regout\ & ((!\addrA~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[17][17]~regout\,
	datab => \addrA~combout\(3),
	datac => \reg[25][17]~regout\,
	datad => \addrA~combout\(2),
	combout => \Mux14~2_combout\);

-- Location: LCFF_X19_Y17_N25
\reg[26][17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(17),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[26][17]~regout\);

-- Location: LCFF_X20_Y18_N21
\reg[22][17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(17),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[22][17]~regout\);

-- Location: LCFF_X21_Y18_N5
\reg[18][17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[18][17]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[18][17]~regout\);

-- Location: LCCOMB_X20_Y18_N20
\Mux14~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (\addrA~combout\(3) & (((\addrA~combout\(2))))) # (!\addrA~combout\(3) & ((\addrA~combout\(2) & ((\reg[22][17]~regout\))) # (!\addrA~combout\(2) & (\reg[18][17]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[18][17]~regout\,
	datab => \addrA~combout\(3),
	datac => \reg[22][17]~regout\,
	datad => \addrA~combout\(2),
	combout => \Mux14~4_combout\);

-- Location: LCFF_X19_Y17_N27
\reg[30][17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(17),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[30][17]~regout\);

-- Location: LCCOMB_X19_Y17_N24
\Mux14~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = (\addrA~combout\(3) & ((\Mux14~4_combout\ & (\reg[30][17]~regout\)) # (!\Mux14~4_combout\ & ((\reg[26][17]~regout\))))) # (!\addrA~combout\(3) & (((\Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \reg[30][17]~regout\,
	datac => \reg[26][17]~regout\,
	datad => \Mux14~4_combout\,
	combout => \Mux14~5_combout\);

-- Location: LCFF_X16_Y14_N1
\reg[20][17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(17),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[20][17]~regout\);

-- Location: LCFF_X15_Y14_N17
\reg[24][17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(17),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[24][17]~regout\);

-- Location: LCFF_X15_Y14_N3
\reg[16][17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[16][17]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[16][17]~regout\);

-- Location: LCCOMB_X15_Y14_N16
\Mux14~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~6_combout\ = (\addrA~combout\(3) & (((\reg[24][17]~regout\) # (\addrA~combout\(2))))) # (!\addrA~combout\(3) & (\reg[16][17]~regout\ & ((!\addrA~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \reg[16][17]~regout\,
	datac => \reg[24][17]~regout\,
	datad => \addrA~combout\(2),
	combout => \Mux14~6_combout\);

-- Location: LCFF_X16_Y14_N3
\reg[28][17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(17),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[28][17]~regout\);

-- Location: LCCOMB_X16_Y14_N0
\Mux14~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~7_combout\ = (\addrA~combout\(2) & ((\Mux14~6_combout\ & ((\reg[28][17]~regout\))) # (!\Mux14~6_combout\ & (\reg[20][17]~regout\)))) # (!\addrA~combout\(2) & (\Mux14~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \Mux14~6_combout\,
	datac => \reg[20][17]~regout\,
	datad => \reg[28][17]~regout\,
	combout => \Mux14~7_combout\);

-- Location: LCCOMB_X19_Y14_N10
\Mux14~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~8_combout\ = (\addrA~combout\(1) & ((\Mux14~5_combout\) # ((\addrA~combout\(0))))) # (!\addrA~combout\(1) & (((\Mux14~7_combout\ & !\addrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \Mux14~5_combout\,
	datac => \Mux14~7_combout\,
	datad => \addrA~combout\(0),
	combout => \Mux14~8_combout\);

-- Location: LCFF_X22_Y11_N17
\reg[1][17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(17),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[1][17]~regout\);

-- Location: LCFF_X22_Y11_N19
\reg[5][17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(17),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[5][17]~regout\);

-- Location: LCFF_X23_Y13_N1
\reg[6][17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(17),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[6][17]~regout\);

-- Location: LCFF_X23_Y10_N3
\reg[4][17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[4][17]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[4][17]~regout\);

-- Location: LCCOMB_X23_Y13_N0
\Mux14~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~12_combout\ = (\addrA~combout\(0) & (((\addrA~combout\(1))))) # (!\addrA~combout\(0) & ((\addrA~combout\(1) & ((\reg[6][17]~regout\))) # (!\addrA~combout\(1) & (\reg[4][17]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \reg[4][17]~regout\,
	datac => \reg[6][17]~regout\,
	datad => \addrA~combout\(1),
	combout => \Mux14~12_combout\);

-- Location: LCFF_X23_Y9_N19
\reg[7][17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[7][17]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[7][17]~regout\);

-- Location: LCCOMB_X22_Y11_N18
\Mux14~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~13_combout\ = (\Mux14~12_combout\ & ((\reg[7][17]~regout\) # ((!\addrA~combout\(0))))) # (!\Mux14~12_combout\ & (((\reg[5][17]~regout\ & \addrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~12_combout\,
	datab => \reg[7][17]~regout\,
	datac => \reg[5][17]~regout\,
	datad => \addrA~combout\(0),
	combout => \Mux14~13_combout\);

-- Location: LCCOMB_X22_Y11_N16
\Mux14~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~14_combout\ = (\Mux31~16_combout\ & ((\Mux14~13_combout\) # ((!\Mux31~15_combout\)))) # (!\Mux31~16_combout\ & (((\reg[1][17]~regout\ & \Mux31~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~16_combout\,
	datab => \Mux14~13_combout\,
	datac => \reg[1][17]~regout\,
	datad => \Mux31~15_combout\,
	combout => \Mux14~14_combout\);

-- Location: LCFF_X18_Y14_N9
\reg[14][17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(17),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[14][17]~regout\);

-- Location: LCFF_X18_Y14_N27
\reg[12][17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(17),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[12][17]~regout\);

-- Location: LCCOMB_X18_Y14_N8
\Mux14~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~17_combout\ = (\addrA~combout\(1) & (((\reg[14][17]~regout\) # (\addrA~combout\(0))))) # (!\addrA~combout\(1) & (\reg[12][17]~regout\ & ((!\addrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \reg[12][17]~regout\,
	datac => \reg[14][17]~regout\,
	datad => \addrA~combout\(0),
	combout => \Mux14~17_combout\);

-- Location: LCFF_X13_Y14_N29
\reg[25][18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(18),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[25][18]~regout\);

-- Location: LCFF_X13_Y14_N7
\reg[17][18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[17][18]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[17][18]~regout\);

-- Location: LCCOMB_X13_Y14_N28
\Mux13~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~6_combout\ = (\addrA~combout\(3) & (((\reg[25][18]~regout\) # (\addrA~combout\(2))))) # (!\addrA~combout\(3) & (\reg[17][18]~regout\ & ((!\addrA~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[17][18]~regout\,
	datab => \addrA~combout\(3),
	datac => \reg[25][18]~regout\,
	datad => \addrA~combout\(2),
	combout => \Mux13~6_combout\);

-- Location: LCFF_X16_Y14_N29
\reg[20][18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(18),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[20][18]~regout\);

-- Location: LCFF_X15_Y14_N21
\reg[24][18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(18),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[24][18]~regout\);

-- Location: LCFF_X15_Y14_N31
\reg[16][18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[16][18]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[16][18]~regout\);

-- Location: LCCOMB_X15_Y14_N20
\Mux13~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~8_combout\ = (\addrA~combout\(3) & (((\reg[24][18]~regout\) # (\addrA~combout\(2))))) # (!\addrA~combout\(3) & (\reg[16][18]~regout\ & ((!\addrA~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \reg[16][18]~regout\,
	datac => \reg[24][18]~regout\,
	datad => \addrA~combout\(2),
	combout => \Mux13~8_combout\);

-- Location: LCFF_X16_Y14_N7
\reg[28][18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(18),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[28][18]~regout\);

-- Location: LCCOMB_X16_Y14_N28
\Mux13~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~9_combout\ = (\Mux13~8_combout\ & (((\reg[28][18]~regout\)) # (!\addrA~combout\(2)))) # (!\Mux13~8_combout\ & (\addrA~combout\(2) & (\reg[20][18]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~8_combout\,
	datab => \addrA~combout\(2),
	datac => \reg[20][18]~regout\,
	datad => \reg[28][18]~regout\,
	combout => \Mux13~9_combout\);

-- Location: LCFF_X25_Y11_N9
\reg[5][18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(18),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[5][18]~regout\);

-- Location: LCFF_X24_Y11_N1
\reg[6][18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(18),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[6][18]~regout\);

-- Location: LCFF_X23_Y9_N29
\reg[7][18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(18),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[7][18]~regout\);

-- Location: LCCOMB_X24_Y11_N0
\Mux13~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~15_combout\ = (\addrA~combout\(0) & (((\reg[7][18]~regout\)) # (!\addrA~combout\(1)))) # (!\addrA~combout\(0) & (\addrA~combout\(1) & (\reg[6][18]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \addrA~combout\(1),
	datac => \reg[6][18]~regout\,
	datad => \reg[7][18]~regout\,
	combout => \Mux13~15_combout\);

-- Location: LCFF_X24_Y11_N27
\reg[4][18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(18),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[4][18]~regout\);

-- Location: LCCOMB_X24_Y11_N26
\Mux13~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~16_combout\ = (\Mux31~16_combout\ & ((\reg[4][18]~regout\) # (\Mux13~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux31~16_combout\,
	datac => \reg[4][18]~regout\,
	datad => \Mux13~15_combout\,
	combout => \Mux13~16_combout\);

-- Location: LCCOMB_X25_Y11_N8
\Mux13~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~17_combout\ = (\Mux13~16_combout\ & ((\Mux13~15_combout\ & ((\addrA~combout\(1)) # (\reg[5][18]~regout\))) # (!\Mux13~15_combout\ & (!\addrA~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~15_combout\,
	datab => \addrA~combout\(1),
	datac => \reg[5][18]~regout\,
	datad => \Mux13~16_combout\,
	combout => \Mux13~17_combout\);

-- Location: LCFF_X22_Y13_N31
\reg[11][18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(18),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[11][18]~regout\);

-- Location: LCCOMB_X25_Y12_N12
\Mux13~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~21_combout\ = (\Mux31~23_combout\) # ((\Mux13~14_combout\ & ((\reg[3][18]~regout\) # (!\Mux31~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~18_combout\,
	datab => \Mux31~23_combout\,
	datac => \reg[3][18]~regout\,
	datad => \Mux13~14_combout\,
	combout => \Mux13~21_combout\);

-- Location: LCFF_X19_Y12_N5
\reg[15][18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(18),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[15][18]~regout\);

-- Location: LCFF_X25_Y10_N25
\reg[9][19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(19),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[9][19]~regout\);

-- Location: LCFF_X24_Y14_N19
\reg[8][19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(19),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[8][19]~regout\);

-- Location: LCCOMB_X25_Y10_N24
\Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\addrA~combout\(0) & ((\addrA~combout\(1)) # ((\reg[9][19]~regout\)))) # (!\addrA~combout\(0) & (!\addrA~combout\(1) & ((\reg[8][19]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \addrA~combout\(1),
	datac => \reg[9][19]~regout\,
	datad => \reg[8][19]~regout\,
	combout => \Mux12~0_combout\);

-- Location: LCFF_X21_Y18_N17
\reg[18][19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(19),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[18][19]~regout\);

-- Location: LCFF_X16_Y14_N17
\reg[20][19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(19),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[20][19]~regout\);

-- Location: LCFF_X15_Y14_N1
\reg[24][19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(19),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[24][19]~regout\);

-- Location: LCFF_X15_Y14_N19
\reg[16][19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(19),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[16][19]~regout\);

-- Location: LCCOMB_X15_Y14_N0
\Mux12~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~6_combout\ = (\addrA~combout\(3) & (((\reg[24][19]~regout\) # (\addrA~combout\(2))))) # (!\addrA~combout\(3) & (\reg[16][19]~regout\ & ((!\addrA~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \reg[16][19]~regout\,
	datac => \reg[24][19]~regout\,
	datad => \addrA~combout\(2),
	combout => \Mux12~6_combout\);

-- Location: LCFF_X16_Y14_N11
\reg[28][19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(19),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[28][19]~regout\);

-- Location: LCCOMB_X16_Y14_N16
\Mux12~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~7_combout\ = (\Mux12~6_combout\ & (((\reg[28][19]~regout\)) # (!\addrA~combout\(2)))) # (!\Mux12~6_combout\ & (\addrA~combout\(2) & (\reg[20][19]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~6_combout\,
	datab => \addrA~combout\(2),
	datac => \reg[20][19]~regout\,
	datad => \reg[28][19]~regout\,
	combout => \Mux12~7_combout\);

-- Location: LCFF_X20_Y15_N29
\reg[27][19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(19),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[27][19]~regout\);

-- Location: LCFF_X20_Y16_N17
\reg[23][19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(19),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[23][19]~regout\);

-- Location: LCFF_X20_Y16_N19
\reg[19][19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(19),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[19][19]~regout\);

-- Location: LCCOMB_X20_Y16_N16
\Mux12~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~9_combout\ = (\addrA~combout\(2) & ((\addrA~combout\(3)) # ((\reg[23][19]~regout\)))) # (!\addrA~combout\(2) & (!\addrA~combout\(3) & ((\reg[19][19]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[23][19]~regout\,
	datad => \reg[19][19]~regout\,
	combout => \Mux12~9_combout\);

-- Location: LCFF_X20_Y15_N31
\reg[31][19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(19),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[31][19]~regout\);

-- Location: LCCOMB_X20_Y15_N28
\Mux12~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~10_combout\ = (\Mux12~9_combout\ & (((\reg[31][19]~regout\)) # (!\addrA~combout\(3)))) # (!\Mux12~9_combout\ & (\addrA~combout\(3) & (\reg[27][19]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~9_combout\,
	datab => \addrA~combout\(3),
	datac => \reg[27][19]~regout\,
	datad => \reg[31][19]~regout\,
	combout => \Mux12~10_combout\);

-- Location: LCFF_X22_Y15_N13
\reg[6][19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(19),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[6][19]~regout\);

-- Location: LCFF_X22_Y15_N15
\reg[4][19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[4][19]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[4][19]~regout\);

-- Location: LCCOMB_X22_Y15_N12
\Mux12~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~12_combout\ = (\addrA~combout\(1) & (((\reg[6][19]~regout\) # (\addrA~combout\(0))))) # (!\addrA~combout\(1) & (\reg[4][19]~regout\ & ((!\addrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \reg[4][19]~regout\,
	datac => \reg[6][19]~regout\,
	datad => \addrA~combout\(0),
	combout => \Mux12~12_combout\);

-- Location: LCFF_X16_Y14_N21
\reg[20][20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(20),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[20][20]~regout\);

-- Location: LCFF_X15_Y14_N29
\reg[24][20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(20),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[24][20]~regout\);

-- Location: LCFF_X15_Y14_N23
\reg[16][20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[16][20]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[16][20]~regout\);

-- Location: LCCOMB_X15_Y14_N28
\Mux11~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~8_combout\ = (\addrA~combout\(3) & (((\reg[24][20]~regout\) # (\addrA~combout\(2))))) # (!\addrA~combout\(3) & (\reg[16][20]~regout\ & ((!\addrA~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \reg[16][20]~regout\,
	datac => \reg[24][20]~regout\,
	datad => \addrA~combout\(2),
	combout => \Mux11~8_combout\);

-- Location: LCFF_X16_Y14_N23
\reg[28][20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[28][20]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[28][20]~regout\);

-- Location: LCCOMB_X16_Y14_N20
\Mux11~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~9_combout\ = (\addrA~combout\(2) & ((\Mux11~8_combout\ & ((\reg[28][20]~regout\))) # (!\Mux11~8_combout\ & (\reg[20][20]~regout\)))) # (!\addrA~combout\(2) & (\Mux11~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \Mux11~8_combout\,
	datac => \reg[20][20]~regout\,
	datad => \reg[28][20]~regout\,
	combout => \Mux11~9_combout\);

-- Location: LCFF_X16_Y12_N9
\reg[27][20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(20),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[27][20]~regout\);

-- Location: LCFF_X20_Y16_N13
\reg[23][20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(20),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[23][20]~regout\);

-- Location: LCFF_X20_Y16_N7
\reg[19][20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(20),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[19][20]~regout\);

-- Location: LCCOMB_X20_Y16_N12
\Mux11~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~11_combout\ = (\addrA~combout\(2) & ((\addrA~combout\(3)) # ((\reg[23][20]~regout\)))) # (!\addrA~combout\(2) & (!\addrA~combout\(3) & ((\reg[19][20]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[23][20]~regout\,
	datad => \reg[19][20]~regout\,
	combout => \Mux11~11_combout\);

-- Location: LCFF_X16_Y12_N11
\reg[31][20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(20),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[31][20]~regout\);

-- Location: LCCOMB_X16_Y12_N8
\Mux11~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~12_combout\ = (\addrA~combout\(3) & ((\Mux11~11_combout\ & (\reg[31][20]~regout\)) # (!\Mux11~11_combout\ & ((\reg[27][20]~regout\))))) # (!\addrA~combout\(3) & (((\Mux11~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[31][20]~regout\,
	datab => \addrA~combout\(3),
	datac => \reg[27][20]~regout\,
	datad => \Mux11~11_combout\,
	combout => \Mux11~12_combout\);

-- Location: LCFF_X25_Y12_N17
\reg[3][20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(20),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[3][20]~regout\);

-- Location: LCFF_X23_Y12_N21
\reg[11][20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(20),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[11][20]~regout\);

-- Location: LCCOMB_X25_Y12_N16
\Mux11~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~21_combout\ = (\Mux31~23_combout\) # ((\Mux11~14_combout\ & ((\reg[3][20]~regout\) # (!\Mux31~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~14_combout\,
	datab => \Mux31~23_combout\,
	datac => \reg[3][20]~regout\,
	datad => \Mux31~18_combout\,
	combout => \Mux11~21_combout\);

-- Location: LCFF_X18_Y12_N11
\reg[13][20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(20),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[13][20]~regout\);

-- Location: LCFF_X18_Y12_N29
\reg[12][20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(20),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[12][20]~regout\);

-- Location: LCCOMB_X18_Y12_N10
\Mux11~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~23_combout\ = (\addrA~combout\(1) & (\addrA~combout\(0))) # (!\addrA~combout\(1) & ((\addrA~combout\(0) & (\reg[13][20]~regout\)) # (!\addrA~combout\(0) & ((\reg[12][20]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \addrA~combout\(0),
	datac => \reg[13][20]~regout\,
	datad => \reg[12][20]~regout\,
	combout => \Mux11~23_combout\);

-- Location: LCFF_X25_Y10_N23
\reg[11][21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[11][21]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[11][21]~regout\);

-- Location: LCFF_X14_Y14_N5
\reg[21][21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(21),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[21][21]~regout\);

-- Location: LCFF_X13_Y14_N13
\reg[25][21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(21),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[25][21]~regout\);

-- Location: LCFF_X13_Y14_N31
\reg[17][21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[17][21]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[17][21]~regout\);

-- Location: LCCOMB_X13_Y14_N12
\Mux10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\addrA~combout\(2) & (\addrA~combout\(3))) # (!\addrA~combout\(2) & ((\addrA~combout\(3) & (\reg[25][21]~regout\)) # (!\addrA~combout\(3) & ((\reg[17][21]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[25][21]~regout\,
	datad => \reg[17][21]~regout\,
	combout => \Mux10~2_combout\);

-- Location: LCFF_X14_Y14_N7
\reg[29][21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[29][21]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[29][21]~regout\);

-- Location: LCCOMB_X14_Y14_N4
\Mux10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\Mux10~2_combout\ & (((\reg[29][21]~regout\)) # (!\addrA~combout\(2)))) # (!\Mux10~2_combout\ & (\addrA~combout\(2) & (\reg[21][21]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~2_combout\,
	datab => \addrA~combout\(2),
	datac => \reg[21][21]~regout\,
	datad => \reg[29][21]~regout\,
	combout => \Mux10~3_combout\);

-- Location: LCFF_X19_Y18_N25
\reg[26][21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(21),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[26][21]~regout\);

-- Location: LCFF_X20_Y18_N5
\reg[22][21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(21),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[22][21]~regout\);

-- Location: LCFF_X21_Y18_N19
\reg[18][21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[18][21]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[18][21]~regout\);

-- Location: LCCOMB_X20_Y18_N4
\Mux10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\addrA~combout\(2) & ((\addrA~combout\(3)) # ((\reg[22][21]~regout\)))) # (!\addrA~combout\(2) & (!\addrA~combout\(3) & ((\reg[18][21]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[22][21]~regout\,
	datad => \reg[18][21]~regout\,
	combout => \Mux10~4_combout\);

-- Location: LCFF_X19_Y18_N3
\reg[30][21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(21),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[30][21]~regout\);

-- Location: LCCOMB_X19_Y18_N24
\Mux10~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (\addrA~combout\(3) & ((\Mux10~4_combout\ & (\reg[30][21]~regout\)) # (!\Mux10~4_combout\ & ((\reg[26][21]~regout\))))) # (!\addrA~combout\(3) & (((\Mux10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \reg[30][21]~regout\,
	datac => \reg[26][21]~regout\,
	datad => \Mux10~4_combout\,
	combout => \Mux10~5_combout\);

-- Location: LCFF_X16_Y14_N9
\reg[20][21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(21),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[20][21]~regout\);

-- Location: LCFF_X15_Y14_N25
\reg[24][21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(21),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[24][21]~regout\);

-- Location: LCFF_X15_Y14_N27
\reg[16][21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(21),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[16][21]~regout\);

-- Location: LCCOMB_X15_Y14_N24
\Mux10~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = (\addrA~combout\(3) & (((\reg[24][21]~regout\) # (\addrA~combout\(2))))) # (!\addrA~combout\(3) & (\reg[16][21]~regout\ & ((!\addrA~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \reg[16][21]~regout\,
	datac => \reg[24][21]~regout\,
	datad => \addrA~combout\(2),
	combout => \Mux10~6_combout\);

-- Location: LCFF_X16_Y14_N19
\reg[28][21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[28][21]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[28][21]~regout\);

-- Location: LCCOMB_X16_Y14_N8
\Mux10~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~7_combout\ = (\Mux10~6_combout\ & (((\reg[28][21]~regout\)) # (!\addrA~combout\(2)))) # (!\Mux10~6_combout\ & (\addrA~combout\(2) & (\reg[20][21]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~6_combout\,
	datab => \addrA~combout\(2),
	datac => \reg[20][21]~regout\,
	datad => \reg[28][21]~regout\,
	combout => \Mux10~7_combout\);

-- Location: LCCOMB_X18_Y14_N4
\Mux10~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~8_combout\ = (\addrA~combout\(1) & ((\Mux10~5_combout\) # ((\addrA~combout\(0))))) # (!\addrA~combout\(1) & (((\Mux10~7_combout\ & !\addrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~5_combout\,
	datab => \addrA~combout\(1),
	datac => \Mux10~7_combout\,
	datad => \addrA~combout\(0),
	combout => \Mux10~8_combout\);

-- Location: LCFF_X16_Y12_N5
\reg[27][21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(21),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[27][21]~regout\);

-- Location: LCFF_X20_Y16_N1
\reg[23][21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(21),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[23][21]~regout\);

-- Location: LCFF_X20_Y16_N11
\reg[19][21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(21),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[19][21]~regout\);

-- Location: LCCOMB_X20_Y16_N0
\Mux10~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~9_combout\ = (\addrA~combout\(2) & ((\addrA~combout\(3)) # ((\reg[23][21]~regout\)))) # (!\addrA~combout\(2) & (!\addrA~combout\(3) & ((\reg[19][21]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[23][21]~regout\,
	datad => \reg[19][21]~regout\,
	combout => \Mux10~9_combout\);

-- Location: LCFF_X16_Y12_N23
\reg[31][21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[31][21]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[31][21]~regout\);

-- Location: LCCOMB_X16_Y12_N4
\Mux10~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~10_combout\ = (\addrA~combout\(3) & ((\Mux10~9_combout\ & ((\reg[31][21]~regout\))) # (!\Mux10~9_combout\ & (\reg[27][21]~regout\)))) # (!\addrA~combout\(3) & (\Mux10~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \Mux10~9_combout\,
	datac => \reg[27][21]~regout\,
	datad => \reg[31][21]~regout\,
	combout => \Mux10~10_combout\);

-- Location: LCCOMB_X18_Y14_N14
\Mux10~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~11_combout\ = (\Mux10~8_combout\ & (((\Mux10~10_combout\) # (!\addrA~combout\(0))))) # (!\Mux10~8_combout\ & (\Mux10~3_combout\ & ((\addrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~3_combout\,
	datab => \Mux10~8_combout\,
	datac => \Mux10~10_combout\,
	datad => \addrA~combout\(0),
	combout => \Mux10~11_combout\);

-- Location: LCFF_X24_Y11_N13
\reg[6][21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(21),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[6][21]~regout\);

-- Location: LCFF_X24_Y11_N23
\reg[4][21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(21),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[4][21]~regout\);

-- Location: LCCOMB_X24_Y11_N12
\Mux10~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~12_combout\ = (\addrA~combout\(0) & (\addrA~combout\(1))) # (!\addrA~combout\(0) & ((\addrA~combout\(1) & (\reg[6][21]~regout\)) # (!\addrA~combout\(1) & ((\reg[4][21]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \addrA~combout\(1),
	datac => \reg[6][21]~regout\,
	datad => \reg[4][21]~regout\,
	combout => \Mux10~12_combout\);

-- Location: LCFF_X18_Y14_N25
\reg[14][21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(21),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[14][21]~regout\);

-- Location: LCFF_X18_Y14_N19
\reg[12][21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[12][21]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[12][21]~regout\);

-- Location: LCCOMB_X18_Y14_N24
\Mux10~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~17_combout\ = (\addrA~combout\(1) & (((\reg[14][21]~regout\) # (\addrA~combout\(0))))) # (!\addrA~combout\(1) & (\reg[12][21]~regout\ & ((!\addrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \reg[12][21]~regout\,
	datac => \reg[14][21]~regout\,
	datad => \addrA~combout\(0),
	combout => \Mux10~17_combout\);

-- Location: LCFF_X14_Y14_N25
\reg[21][22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(22),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[21][22]~regout\);

-- Location: LCFF_X13_Y14_N25
\reg[25][22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(22),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[25][22]~regout\);

-- Location: LCFF_X13_Y14_N3
\reg[17][22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(22),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[17][22]~regout\);

-- Location: LCCOMB_X13_Y14_N24
\Mux9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~6_combout\ = (\addrA~combout\(2) & (\addrA~combout\(3))) # (!\addrA~combout\(2) & ((\addrA~combout\(3) & (\reg[25][22]~regout\)) # (!\addrA~combout\(3) & ((\reg[17][22]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[25][22]~regout\,
	datad => \reg[17][22]~regout\,
	combout => \Mux9~6_combout\);

-- Location: LCFF_X14_Y14_N11
\reg[29][22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[29][22]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[29][22]~regout\);

-- Location: LCCOMB_X14_Y14_N24
\Mux9~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~7_combout\ = (\addrA~combout\(2) & ((\Mux9~6_combout\ & (\reg[29][22]~regout\)) # (!\Mux9~6_combout\ & ((\reg[21][22]~regout\))))) # (!\addrA~combout\(2) & (((\Mux9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[29][22]~regout\,
	datab => \addrA~combout\(2),
	datac => \reg[21][22]~regout\,
	datad => \Mux9~6_combout\,
	combout => \Mux9~7_combout\);

-- Location: LCFF_X24_Y14_N29
\reg[20][22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(22),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[20][22]~regout\);

-- Location: LCFF_X24_Y13_N5
\reg[24][22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(22),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[24][22]~regout\);

-- Location: LCFF_X23_Y13_N29
\reg[16][22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(22),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[16][22]~regout\);

-- Location: LCCOMB_X24_Y13_N4
\Mux9~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~8_combout\ = (\addrA~combout\(2) & (\addrA~combout\(3))) # (!\addrA~combout\(2) & ((\addrA~combout\(3) & (\reg[24][22]~regout\)) # (!\addrA~combout\(3) & ((\reg[16][22]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[24][22]~regout\,
	datad => \reg[16][22]~regout\,
	combout => \Mux9~8_combout\);

-- Location: LCFF_X24_Y13_N23
\reg[28][22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(22),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[28][22]~regout\);

-- Location: LCCOMB_X24_Y14_N28
\Mux9~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~9_combout\ = (\Mux9~8_combout\ & (((\reg[28][22]~regout\)) # (!\addrA~combout\(2)))) # (!\Mux9~8_combout\ & (\addrA~combout\(2) & (\reg[20][22]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~8_combout\,
	datab => \addrA~combout\(2),
	datac => \reg[20][22]~regout\,
	datad => \reg[28][22]~regout\,
	combout => \Mux9~9_combout\);

-- Location: LCCOMB_X18_Y14_N12
\Mux9~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~10_combout\ = (\addrA~combout\(1) & (((\addrA~combout\(0))))) # (!\addrA~combout\(1) & ((\addrA~combout\(0) & ((\Mux9~7_combout\))) # (!\addrA~combout\(0) & (\Mux9~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~9_combout\,
	datab => \Mux9~7_combout\,
	datac => \addrA~combout\(1),
	datad => \addrA~combout\(0),
	combout => \Mux9~10_combout\);

-- Location: LCCOMB_X25_Y12_N20
\Mux9~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~21_combout\ = (\Mux31~23_combout\) # ((\Mux9~14_combout\ & ((\reg[3][22]~regout\) # (!\Mux31~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~23_combout\,
	datab => \Mux9~14_combout\,
	datac => \reg[3][22]~regout\,
	datad => \Mux31~18_combout\,
	combout => \Mux9~21_combout\);

-- Location: LCFF_X18_Y12_N7
\reg[13][22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(22),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[13][22]~regout\);

-- Location: LCFF_X18_Y12_N9
\reg[12][22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[12][22]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[12][22]~regout\);

-- Location: LCCOMB_X18_Y12_N6
\Mux9~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~23_combout\ = (\addrA~combout\(1) & (\addrA~combout\(0))) # (!\addrA~combout\(1) & ((\addrA~combout\(0) & (\reg[13][22]~regout\)) # (!\addrA~combout\(0) & ((\reg[12][22]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \addrA~combout\(0),
	datac => \reg[13][22]~regout\,
	datad => \reg[12][22]~regout\,
	combout => \Mux9~23_combout\);

-- Location: LCFF_X25_Y10_N11
\reg[11][23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(23),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[11][23]~regout\);

-- Location: LCFF_X20_Y18_N17
\reg[22][23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(23),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[22][23]~regout\);

-- Location: LCFF_X21_Y18_N23
\reg[18][23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[18][23]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[18][23]~regout\);

-- Location: LCCOMB_X20_Y18_N16
\Mux8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\addrA~combout\(3) & (((\addrA~combout\(2))))) # (!\addrA~combout\(3) & ((\addrA~combout\(2) & ((\reg[22][23]~regout\))) # (!\addrA~combout\(2) & (\reg[18][23]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[18][23]~regout\,
	datab => \addrA~combout\(3),
	datac => \reg[22][23]~regout\,
	datad => \addrA~combout\(2),
	combout => \Mux8~4_combout\);

-- Location: LCFF_X25_Y13_N7
\reg[20][23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(23),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[20][23]~regout\);

-- Location: LCFF_X24_Y13_N17
\reg[24][23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(23),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[24][23]~regout\);

-- Location: LCFF_X23_Y13_N9
\reg[16][23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(23),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[16][23]~regout\);

-- Location: LCCOMB_X24_Y13_N16
\Mux8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~6_combout\ = (\addrA~combout\(2) & (\addrA~combout\(3))) # (!\addrA~combout\(2) & ((\addrA~combout\(3) & (\reg[24][23]~regout\)) # (!\addrA~combout\(3) & ((\reg[16][23]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[24][23]~regout\,
	datad => \reg[16][23]~regout\,
	combout => \Mux8~6_combout\);

-- Location: LCFF_X24_Y13_N19
\reg[28][23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(23),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[28][23]~regout\);

-- Location: LCCOMB_X25_Y13_N6
\Mux8~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~7_combout\ = (\addrA~combout\(2) & ((\Mux8~6_combout\ & (\reg[28][23]~regout\)) # (!\Mux8~6_combout\ & ((\reg[20][23]~regout\))))) # (!\addrA~combout\(2) & (((\Mux8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \reg[28][23]~regout\,
	datac => \reg[20][23]~regout\,
	datad => \Mux8~6_combout\,
	combout => \Mux8~7_combout\);

-- Location: LCFF_X16_Y12_N13
\reg[27][23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(23),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[27][23]~regout\);

-- Location: LCFF_X16_Y15_N21
\reg[23][23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(23),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[23][23]~regout\);

-- Location: LCFF_X16_Y15_N31
\reg[19][23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(23),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[19][23]~regout\);

-- Location: LCCOMB_X16_Y15_N20
\Mux8~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~9_combout\ = (\addrA~combout\(2) & ((\addrA~combout\(3)) # ((\reg[23][23]~regout\)))) # (!\addrA~combout\(2) & (!\addrA~combout\(3) & ((\reg[19][23]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[23][23]~regout\,
	datad => \reg[19][23]~regout\,
	combout => \Mux8~9_combout\);

-- Location: LCFF_X16_Y12_N31
\reg[31][23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(23),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[31][23]~regout\);

-- Location: LCCOMB_X16_Y12_N12
\Mux8~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~10_combout\ = (\addrA~combout\(3) & ((\Mux8~9_combout\ & (\reg[31][23]~regout\)) # (!\Mux8~9_combout\ & ((\reg[27][23]~regout\))))) # (!\addrA~combout\(3) & (((\Mux8~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \reg[31][23]~regout\,
	datac => \reg[27][23]~regout\,
	datad => \Mux8~9_combout\,
	combout => \Mux8~10_combout\);

-- Location: LCFF_X22_Y10_N9
\reg[1][23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(23),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[1][23]~regout\);

-- Location: LCFF_X25_Y11_N13
\reg[5][23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(23),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[5][23]~regout\);

-- Location: LCFF_X22_Y10_N19
\reg[6][23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(23),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[6][23]~regout\);

-- Location: LCFF_X23_Y10_N27
\reg[4][23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[4][23]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[4][23]~regout\);

-- Location: LCCOMB_X22_Y10_N18
\Mux8~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~12_combout\ = (\addrA~combout\(0) & (((\addrA~combout\(1))))) # (!\addrA~combout\(0) & ((\addrA~combout\(1) & ((\reg[6][23]~regout\))) # (!\addrA~combout\(1) & (\reg[4][23]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[4][23]~regout\,
	datab => \addrA~combout\(0),
	datac => \reg[6][23]~regout\,
	datad => \addrA~combout\(1),
	combout => \Mux8~12_combout\);

-- Location: LCFF_X22_Y9_N13
\reg[7][23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(23),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[7][23]~regout\);

-- Location: LCCOMB_X25_Y11_N12
\Mux8~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~13_combout\ = (\Mux8~12_combout\ & ((\reg[7][23]~regout\) # ((!\addrA~combout\(0))))) # (!\Mux8~12_combout\ & (((\reg[5][23]~regout\ & \addrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[7][23]~regout\,
	datab => \Mux8~12_combout\,
	datac => \reg[5][23]~regout\,
	datad => \addrA~combout\(0),
	combout => \Mux8~13_combout\);

-- Location: LCCOMB_X22_Y10_N8
\Mux8~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~14_combout\ = (\Mux31~15_combout\ & ((\Mux31~16_combout\ & ((\Mux8~13_combout\))) # (!\Mux31~16_combout\ & (\reg[1][23]~regout\)))) # (!\Mux31~15_combout\ & (\Mux31~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~15_combout\,
	datab => \Mux31~16_combout\,
	datac => \reg[1][23]~regout\,
	datad => \Mux8~13_combout\,
	combout => \Mux8~14_combout\);

-- Location: LCFF_X20_Y18_N13
\reg[22][24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(24),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[22][24]~regout\);

-- Location: LCFF_X21_Y18_N9
\reg[18][24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[18][24]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[18][24]~regout\);

-- Location: LCCOMB_X20_Y18_N12
\Mux7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\addrA~combout\(3) & (((\addrA~combout\(2))))) # (!\addrA~combout\(3) & ((\addrA~combout\(2) & ((\reg[22][24]~regout\))) # (!\addrA~combout\(2) & (\reg[18][24]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \reg[18][24]~regout\,
	datac => \reg[22][24]~regout\,
	datad => \addrA~combout\(2),
	combout => \Mux7~4_combout\);

-- Location: LCFF_X16_Y15_N9
\reg[23][24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(24),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[23][24]~regout\);

-- Location: LCFF_X16_Y15_N27
\reg[19][24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[19][24]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[19][24]~regout\);

-- Location: LCCOMB_X16_Y15_N8
\Mux7~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~11_combout\ = (\addrA~combout\(2) & ((\addrA~combout\(3)) # ((\reg[23][24]~regout\)))) # (!\addrA~combout\(2) & (!\addrA~combout\(3) & ((\reg[19][24]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[23][24]~regout\,
	datad => \reg[19][24]~regout\,
	combout => \Mux7~11_combout\);

-- Location: LCFF_X24_Y10_N19
\reg[5][24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(24),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[5][24]~regout\);

-- Location: LCFF_X22_Y10_N15
\reg[6][24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(24),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[6][24]~regout\);

-- Location: LCFF_X22_Y9_N23
\reg[7][24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(24),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[7][24]~regout\);

-- Location: LCCOMB_X22_Y10_N14
\Mux7~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~15_combout\ = (\addrA~combout\(1) & ((\addrA~combout\(0) & ((\reg[7][24]~regout\))) # (!\addrA~combout\(0) & (\reg[6][24]~regout\)))) # (!\addrA~combout\(1) & (\addrA~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \addrA~combout\(0),
	datac => \reg[6][24]~regout\,
	datad => \reg[7][24]~regout\,
	combout => \Mux7~15_combout\);

-- Location: LCFF_X23_Y10_N5
\reg[4][24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(24),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[4][24]~regout\);

-- Location: LCCOMB_X23_Y10_N4
\Mux7~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~16_combout\ = (\Mux31~16_combout\ & ((\reg[4][24]~regout\) # (\Mux7~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux31~16_combout\,
	datac => \reg[4][24]~regout\,
	datad => \Mux7~15_combout\,
	combout => \Mux7~16_combout\);

-- Location: LCCOMB_X24_Y10_N18
\Mux7~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~17_combout\ = (\Mux7~16_combout\ & ((\addrA~combout\(1) & ((\Mux7~15_combout\))) # (!\addrA~combout\(1) & ((\reg[5][24]~regout\) # (!\Mux7~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \Mux7~16_combout\,
	datac => \reg[5][24]~regout\,
	datad => \Mux7~15_combout\,
	combout => \Mux7~17_combout\);

-- Location: LCFF_X21_Y12_N17
\reg[9][24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(24),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[9][24]~regout\);

-- Location: LCFF_X24_Y10_N13
\reg[10][24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(24),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[10][24]~regout\);

-- Location: LCFF_X23_Y10_N23
\reg[8][24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(24),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[8][24]~regout\);

-- Location: LCCOMB_X24_Y10_N12
\Mux7~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~19_combout\ = (\addrA~combout\(1) & ((\addrA~combout\(0)) # ((\reg[10][24]~regout\)))) # (!\addrA~combout\(1) & (!\addrA~combout\(0) & ((\reg[8][24]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \addrA~combout\(0),
	datac => \reg[10][24]~regout\,
	datad => \reg[8][24]~regout\,
	combout => \Mux7~19_combout\);

-- Location: LCFF_X21_Y12_N3
\reg[11][24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[11][24]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[11][24]~regout\);

-- Location: LCCOMB_X21_Y12_N16
\Mux7~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~20_combout\ = (\Mux7~19_combout\ & (((\reg[11][24]~regout\)) # (!\addrA~combout\(0)))) # (!\Mux7~19_combout\ & (\addrA~combout\(0) & (\reg[9][24]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~19_combout\,
	datab => \addrA~combout\(0),
	datac => \reg[9][24]~regout\,
	datad => \reg[11][24]~regout\,
	combout => \Mux7~20_combout\);

-- Location: LCFF_X18_Y12_N15
\reg[13][24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(24),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[13][24]~regout\);

-- Location: LCFF_X18_Y12_N17
\reg[12][24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(24),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[12][24]~regout\);

-- Location: LCCOMB_X18_Y12_N14
\Mux7~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~23_combout\ = (\addrA~combout\(0) & (((\reg[13][24]~regout\) # (\addrA~combout\(1))))) # (!\addrA~combout\(0) & (\reg[12][24]~regout\ & ((!\addrA~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[12][24]~regout\,
	datab => \addrA~combout\(0),
	datac => \reg[13][24]~regout\,
	datad => \addrA~combout\(1),
	combout => \Mux7~23_combout\);

-- Location: LCFF_X25_Y10_N7
\reg[11][25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(25),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[11][25]~regout\);

-- Location: LCFF_X19_Y18_N9
\reg[26][25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(25),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[26][25]~regout\);

-- Location: LCFF_X21_Y18_N11
\reg[22][25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(25),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[22][25]~regout\);

-- Location: LCFF_X21_Y18_N13
\reg[18][25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(25),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[18][25]~regout\);

-- Location: LCCOMB_X21_Y18_N10
\Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\addrA~combout\(2) & ((\addrA~combout\(3)) # ((\reg[22][25]~regout\)))) # (!\addrA~combout\(2) & (!\addrA~combout\(3) & ((\reg[18][25]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[22][25]~regout\,
	datad => \reg[18][25]~regout\,
	combout => \Mux6~4_combout\);

-- Location: LCFF_X19_Y18_N11
\reg[30][25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[30][25]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[30][25]~regout\);

-- Location: LCCOMB_X19_Y18_N8
\Mux6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\addrA~combout\(3) & ((\Mux6~4_combout\ & ((\reg[30][25]~regout\))) # (!\Mux6~4_combout\ & (\reg[26][25]~regout\)))) # (!\addrA~combout\(3) & (\Mux6~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \Mux6~4_combout\,
	datac => \reg[26][25]~regout\,
	datad => \reg[30][25]~regout\,
	combout => \Mux6~5_combout\);

-- Location: LCFF_X25_Y13_N21
\reg[20][25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(25),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[20][25]~regout\);

-- Location: LCFF_X24_Y13_N1
\reg[24][25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(25),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[24][25]~regout\);

-- Location: LCFF_X23_Y13_N13
\reg[16][25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(25),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[16][25]~regout\);

-- Location: LCCOMB_X24_Y13_N0
\Mux6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (\addrA~combout\(2) & (\addrA~combout\(3))) # (!\addrA~combout\(2) & ((\addrA~combout\(3) & (\reg[24][25]~regout\)) # (!\addrA~combout\(3) & ((\reg[16][25]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[24][25]~regout\,
	datad => \reg[16][25]~regout\,
	combout => \Mux6~6_combout\);

-- Location: LCFF_X24_Y13_N3
\reg[28][25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(25),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[28][25]~regout\);

-- Location: LCCOMB_X25_Y13_N20
\Mux6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = (\addrA~combout\(2) & ((\Mux6~6_combout\ & ((\reg[28][25]~regout\))) # (!\Mux6~6_combout\ & (\reg[20][25]~regout\)))) # (!\addrA~combout\(2) & (\Mux6~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \Mux6~6_combout\,
	datac => \reg[20][25]~regout\,
	datad => \reg[28][25]~regout\,
	combout => \Mux6~7_combout\);

-- Location: LCCOMB_X20_Y10_N10
\Mux6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~8_combout\ = (\addrA~combout\(0) & (((\addrA~combout\(1))))) # (!\addrA~combout\(0) & ((\addrA~combout\(1) & (\Mux6~5_combout\)) # (!\addrA~combout\(1) & ((\Mux6~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \Mux6~5_combout\,
	datac => \addrA~combout\(1),
	datad => \Mux6~7_combout\,
	combout => \Mux6~8_combout\);

-- Location: LCFF_X16_Y12_N7
\reg[31][25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(25),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[31][25]~regout\);

-- Location: LCFF_X21_Y10_N11
\reg[3][25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[3][25]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[3][25]~regout\);

-- Location: LCFF_X23_Y11_N21
\reg[5][25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(25),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[5][25]~regout\);

-- Location: LCFF_X22_Y10_N11
\reg[6][25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(25),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[6][25]~regout\);

-- Location: LCFF_X23_Y10_N19
\reg[4][25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[4][25]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[4][25]~regout\);

-- Location: LCCOMB_X22_Y10_N10
\Mux6~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~12_combout\ = (\addrA~combout\(1) & ((\addrA~combout\(0)) # ((\reg[6][25]~regout\)))) # (!\addrA~combout\(1) & (!\addrA~combout\(0) & ((\reg[4][25]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \addrA~combout\(0),
	datac => \reg[6][25]~regout\,
	datad => \reg[4][25]~regout\,
	combout => \Mux6~12_combout\);

-- Location: LCFF_X23_Y11_N15
\reg[7][25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(25),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[7][25]~regout\);

-- Location: LCCOMB_X23_Y11_N20
\Mux6~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~13_combout\ = (\addrA~combout\(0) & ((\Mux6~12_combout\ & (\reg[7][25]~regout\)) # (!\Mux6~12_combout\ & ((\reg[5][25]~regout\))))) # (!\addrA~combout\(0) & (((\Mux6~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \reg[7][25]~regout\,
	datac => \reg[5][25]~regout\,
	datad => \Mux6~12_combout\,
	combout => \Mux6~13_combout\);

-- Location: LCFF_X21_Y16_N3
\reg[14][25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(25),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[14][25]~regout\);

-- Location: LCFF_X21_Y16_N5
\reg[12][25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(25),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[12][25]~regout\);

-- Location: LCCOMB_X21_Y16_N2
\Mux6~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~17_combout\ = (\addrA~combout\(1) & (((\reg[14][25]~regout\) # (\addrA~combout\(0))))) # (!\addrA~combout\(1) & (\reg[12][25]~regout\ & ((!\addrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \reg[12][25]~regout\,
	datac => \reg[14][25]~regout\,
	datad => \addrA~combout\(0),
	combout => \Mux6~17_combout\);

-- Location: LCFF_X19_Y18_N5
\reg[26][26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(26),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[26][26]~regout\);

-- Location: LCFF_X21_Y18_N15
\reg[22][26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(26),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[22][26]~regout\);

-- Location: LCFF_X21_Y18_N1
\reg[18][26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[18][26]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[18][26]~regout\);

-- Location: LCCOMB_X21_Y18_N14
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\addrA~combout\(2) & ((\addrA~combout\(3)) # ((\reg[22][26]~regout\)))) # (!\addrA~combout\(2) & (!\addrA~combout\(3) & ((\reg[18][26]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[22][26]~regout\,
	datad => \reg[18][26]~regout\,
	combout => \Mux5~0_combout\);

-- Location: LCFF_X19_Y18_N15
\reg[30][26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(26),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[30][26]~regout\);

-- Location: LCCOMB_X19_Y18_N4
\Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\addrA~combout\(3) & ((\Mux5~0_combout\ & (\reg[30][26]~regout\)) # (!\Mux5~0_combout\ & ((\reg[26][26]~regout\))))) # (!\addrA~combout\(3) & (((\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \reg[30][26]~regout\,
	datac => \reg[26][26]~regout\,
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCFF_X24_Y13_N31
\reg[28][26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(26),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[28][26]~regout\);

-- Location: LCFF_X21_Y10_N29
\reg[2][26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(26),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[2][26]~regout\);

-- Location: LCFF_X21_Y10_N31
\reg[3][26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(26),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[3][26]~regout\);

-- Location: LCFF_X22_Y10_N5
\reg[1][26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(26),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[1][26]~regout\);

-- Location: LCFF_X22_Y10_N23
\reg[6][26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(26),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[6][26]~regout\);

-- Location: LCFF_X20_Y10_N19
\reg[5][26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(26),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[5][26]~regout\);

-- Location: LCFF_X20_Y10_N29
\reg[4][26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[4][26]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[4][26]~regout\);

-- Location: LCCOMB_X20_Y10_N18
\Mux5~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~12_combout\ = (\addrA~combout\(0) & ((\addrA~combout\(1)) # ((\reg[5][26]~regout\)))) # (!\addrA~combout\(0) & (!\addrA~combout\(1) & ((\reg[4][26]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \addrA~combout\(1),
	datac => \reg[5][26]~regout\,
	datad => \reg[4][26]~regout\,
	combout => \Mux5~12_combout\);

-- Location: LCFF_X20_Y14_N3
\reg[7][26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[7][26]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[7][26]~regout\);

-- Location: LCCOMB_X22_Y10_N22
\Mux5~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~13_combout\ = (\addrA~combout\(1) & ((\Mux5~12_combout\ & ((\reg[7][26]~regout\))) # (!\Mux5~12_combout\ & (\reg[6][26]~regout\)))) # (!\addrA~combout\(1) & (\Mux5~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \Mux5~12_combout\,
	datac => \reg[6][26]~regout\,
	datad => \reg[7][26]~regout\,
	combout => \Mux5~13_combout\);

-- Location: LCCOMB_X22_Y10_N4
\Mux5~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~14_combout\ = (\Mux31~15_combout\ & ((\Mux31~16_combout\ & ((\Mux5~13_combout\))) # (!\Mux31~16_combout\ & (\reg[1][26]~regout\)))) # (!\Mux31~15_combout\ & (\Mux31~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~15_combout\,
	datab => \Mux31~16_combout\,
	datac => \reg[1][26]~regout\,
	datad => \Mux5~13_combout\,
	combout => \Mux5~14_combout\);

-- Location: LCCOMB_X21_Y10_N28
\Mux5~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~15_combout\ = (\Mux5~14_combout\ & ((\reg[3][26]~regout\) # ((!\Mux31~18_combout\)))) # (!\Mux5~14_combout\ & (((\reg[2][26]~regout\ & \Mux31~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~14_combout\,
	datab => \reg[3][26]~regout\,
	datac => \reg[2][26]~regout\,
	datad => \Mux31~18_combout\,
	combout => \Mux5~15_combout\);

-- Location: LCFF_X22_Y16_N15
\reg[15][26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[15][26]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[15][26]~regout\);

-- Location: LCFF_X25_Y10_N19
\reg[11][27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(27),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[11][27]~regout\);

-- Location: LCFF_X19_Y11_N9
\reg[21][27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(27),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[21][27]~regout\);

-- Location: LCFF_X18_Y11_N25
\reg[25][27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(27),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[25][27]~regout\);

-- Location: LCFF_X18_Y11_N11
\reg[17][27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(27),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[17][27]~regout\);

-- Location: LCCOMB_X18_Y11_N24
\Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\addrA~combout\(3) & ((\addrA~combout\(2)) # ((\reg[25][27]~regout\)))) # (!\addrA~combout\(3) & (!\addrA~combout\(2) & ((\reg[17][27]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \reg[25][27]~regout\,
	datad => \reg[17][27]~regout\,
	combout => \Mux4~2_combout\);

-- Location: LCFF_X19_Y11_N11
\reg[29][27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[29][27]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[29][27]~regout\);

-- Location: LCCOMB_X19_Y11_N8
\Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\addrA~combout\(2) & ((\Mux4~2_combout\ & ((\reg[29][27]~regout\))) # (!\Mux4~2_combout\ & (\reg[21][27]~regout\)))) # (!\addrA~combout\(2) & (\Mux4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \Mux4~2_combout\,
	datac => \reg[21][27]~regout\,
	datad => \reg[29][27]~regout\,
	combout => \Mux4~3_combout\);

-- Location: LCFF_X20_Y14_N5
\reg[26][27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(27),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[26][27]~regout\);

-- Location: LCFF_X21_Y18_N27
\reg[22][27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(27),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[22][27]~regout\);

-- Location: LCFF_X21_Y18_N29
\reg[18][27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[18][27]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[18][27]~regout\);

-- Location: LCCOMB_X21_Y18_N26
\Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\addrA~combout\(2) & ((\addrA~combout\(3)) # ((\reg[22][27]~regout\)))) # (!\addrA~combout\(2) & (!\addrA~combout\(3) & ((\reg[18][27]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[22][27]~regout\,
	datad => \reg[18][27]~regout\,
	combout => \Mux4~4_combout\);

-- Location: LCFF_X20_Y18_N15
\reg[30][27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(27),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[30][27]~regout\);

-- Location: LCCOMB_X20_Y14_N4
\Mux4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\addrA~combout\(3) & ((\Mux4~4_combout\ & (\reg[30][27]~regout\)) # (!\Mux4~4_combout\ & ((\reg[26][27]~regout\))))) # (!\addrA~combout\(3) & (((\Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[30][27]~regout\,
	datab => \addrA~combout\(3),
	datac => \reg[26][27]~regout\,
	datad => \Mux4~4_combout\,
	combout => \Mux4~5_combout\);

-- Location: LCFF_X25_Y13_N31
\reg[20][27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(27),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[20][27]~regout\);

-- Location: LCFF_X24_Y13_N9
\reg[24][27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(27),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[24][27]~regout\);

-- Location: LCFF_X23_Y13_N25
\reg[16][27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(27),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[16][27]~regout\);

-- Location: LCCOMB_X24_Y13_N8
\Mux4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (\addrA~combout\(2) & (\addrA~combout\(3))) # (!\addrA~combout\(2) & ((\addrA~combout\(3) & (\reg[24][27]~regout\)) # (!\addrA~combout\(3) & ((\reg[16][27]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[24][27]~regout\,
	datad => \reg[16][27]~regout\,
	combout => \Mux4~6_combout\);

-- Location: LCFF_X24_Y13_N27
\reg[28][27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(27),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[28][27]~regout\);

-- Location: LCCOMB_X25_Y13_N30
\Mux4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (\addrA~combout\(2) & ((\Mux4~6_combout\ & (\reg[28][27]~regout\)) # (!\Mux4~6_combout\ & ((\reg[20][27]~regout\))))) # (!\addrA~combout\(2) & (((\Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \reg[28][27]~regout\,
	datac => \reg[20][27]~regout\,
	datad => \Mux4~6_combout\,
	combout => \Mux4~7_combout\);

-- Location: LCCOMB_X20_Y14_N30
\Mux4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~8_combout\ = (\addrA~combout\(0) & (((\addrA~combout\(1))))) # (!\addrA~combout\(0) & ((\addrA~combout\(1) & (\Mux4~5_combout\)) # (!\addrA~combout\(1) & ((\Mux4~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \Mux4~5_combout\,
	datac => \addrA~combout\(1),
	datad => \Mux4~7_combout\,
	combout => \Mux4~8_combout\);

-- Location: LCFF_X20_Y15_N17
\reg[27][27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(27),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[27][27]~regout\);

-- Location: LCFF_X16_Y15_N5
\reg[23][27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(27),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[23][27]~regout\);

-- Location: LCFF_X16_Y15_N15
\reg[19][27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[19][27]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[19][27]~regout\);

-- Location: LCCOMB_X16_Y15_N4
\Mux4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~9_combout\ = (\addrA~combout\(2) & (((\reg[23][27]~regout\) # (\addrA~combout\(3))))) # (!\addrA~combout\(2) & (\reg[19][27]~regout\ & ((!\addrA~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \reg[19][27]~regout\,
	datac => \reg[23][27]~regout\,
	datad => \addrA~combout\(3),
	combout => \Mux4~9_combout\);

-- Location: LCFF_X20_Y15_N3
\reg[31][27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[31][27]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[31][27]~regout\);

-- Location: LCCOMB_X20_Y15_N16
\Mux4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~10_combout\ = (\Mux4~9_combout\ & (((\reg[31][27]~regout\)) # (!\addrA~combout\(3)))) # (!\Mux4~9_combout\ & (\addrA~combout\(3) & (\reg[27][27]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~9_combout\,
	datab => \addrA~combout\(3),
	datac => \reg[27][27]~regout\,
	datad => \reg[31][27]~regout\,
	combout => \Mux4~10_combout\);

-- Location: LCCOMB_X20_Y14_N24
\Mux4~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~11_combout\ = (\Mux4~8_combout\ & ((\Mux4~10_combout\) # ((!\addrA~combout\(0))))) # (!\Mux4~8_combout\ & (((\addrA~combout\(0) & \Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~10_combout\,
	datab => \Mux4~8_combout\,
	datac => \addrA~combout\(0),
	datad => \Mux4~3_combout\,
	combout => \Mux4~11_combout\);

-- Location: LCFF_X22_Y10_N17
\reg[1][27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(27),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[1][27]~regout\);

-- Location: LCFF_X25_Y11_N17
\reg[5][27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(27),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[5][27]~regout\);

-- Location: LCFF_X22_Y10_N3
\reg[6][27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(27),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[6][27]~regout\);

-- Location: LCFF_X23_Y10_N31
\reg[4][27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[4][27]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[4][27]~regout\);

-- Location: LCCOMB_X22_Y10_N2
\Mux4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~12_combout\ = (\addrA~combout\(1) & ((\addrA~combout\(0)) # ((\reg[6][27]~regout\)))) # (!\addrA~combout\(1) & (!\addrA~combout\(0) & ((\reg[4][27]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \addrA~combout\(0),
	datac => \reg[6][27]~regout\,
	datad => \reg[4][27]~regout\,
	combout => \Mux4~12_combout\);

-- Location: LCFF_X20_Y14_N11
\reg[7][27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(27),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[7][27]~regout\);

-- Location: LCCOMB_X25_Y11_N16
\Mux4~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~13_combout\ = (\addrA~combout\(0) & ((\Mux4~12_combout\ & (\reg[7][27]~regout\)) # (!\Mux4~12_combout\ & ((\reg[5][27]~regout\))))) # (!\addrA~combout\(0) & (((\Mux4~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[7][27]~regout\,
	datab => \addrA~combout\(0),
	datac => \reg[5][27]~regout\,
	datad => \Mux4~12_combout\,
	combout => \Mux4~13_combout\);

-- Location: LCCOMB_X22_Y10_N16
\Mux4~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~14_combout\ = (\Mux31~16_combout\ & ((\Mux4~13_combout\) # ((!\Mux31~15_combout\)))) # (!\Mux31~16_combout\ & (((\reg[1][27]~regout\ & \Mux31~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~13_combout\,
	datab => \Mux31~16_combout\,
	datac => \reg[1][27]~regout\,
	datad => \Mux31~15_combout\,
	combout => \Mux4~14_combout\);

-- Location: LCFF_X20_Y18_N1
\reg[30][28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[30][28]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[30][28]~regout\);

-- Location: LCFF_X24_Y13_N13
\reg[24][28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(28),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[24][28]~regout\);

-- Location: LCFF_X23_Y13_N19
\reg[16][28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(28),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[16][28]~regout\);

-- Location: LCCOMB_X24_Y13_N12
\Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\addrA~combout\(2) & (\addrA~combout\(3))) # (!\addrA~combout\(2) & ((\addrA~combout\(3) & (\reg[24][28]~regout\)) # (!\addrA~combout\(3) & ((\reg[16][28]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[24][28]~regout\,
	datad => \reg[16][28]~regout\,
	combout => \Mux3~4_combout\);

-- Location: LCFF_X20_Y15_N13
\reg[27][28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(28),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[27][28]~regout\);

-- Location: LCFF_X16_Y15_N1
\reg[23][28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(28),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[23][28]~regout\);

-- Location: LCFF_X16_Y15_N3
\reg[19][28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[19][28]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[19][28]~regout\);

-- Location: LCCOMB_X16_Y15_N0
\Mux3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (\addrA~combout\(2) & ((\addrA~combout\(3)) # ((\reg[23][28]~regout\)))) # (!\addrA~combout\(2) & (!\addrA~combout\(3) & ((\reg[19][28]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[23][28]~regout\,
	datad => \reg[19][28]~regout\,
	combout => \Mux3~7_combout\);

-- Location: LCFF_X20_Y15_N15
\reg[31][28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(28),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[31][28]~regout\);

-- Location: LCCOMB_X20_Y15_N12
\Mux3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~8_combout\ = (\Mux3~7_combout\ & ((\reg[31][28]~regout\) # ((!\addrA~combout\(3))))) # (!\Mux3~7_combout\ & (((\reg[27][28]~regout\ & \addrA~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~7_combout\,
	datab => \reg[31][28]~regout\,
	datac => \reg[27][28]~regout\,
	datad => \addrA~combout\(3),
	combout => \Mux3~8_combout\);

-- Location: LCFF_X23_Y12_N31
\reg[9][28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(28),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[9][28]~regout\);

-- Location: LCFF_X24_Y10_N9
\reg[10][28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(28),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[10][28]~regout\);

-- Location: LCFF_X24_Y14_N23
\reg[8][28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(28),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[8][28]~regout\);

-- Location: LCCOMB_X24_Y10_N8
\Mux3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~10_combout\ = (\addrA~combout\(1) & ((\addrA~combout\(0)) # ((\reg[10][28]~regout\)))) # (!\addrA~combout\(1) & (!\addrA~combout\(0) & ((\reg[8][28]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \addrA~combout\(0),
	datac => \reg[10][28]~regout\,
	datad => \reg[8][28]~regout\,
	combout => \Mux3~10_combout\);

-- Location: LCFF_X22_Y13_N1
\reg[11][28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[11][28]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[11][28]~regout\);

-- Location: LCCOMB_X23_Y12_N30
\Mux3~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~11_combout\ = (\addrA~combout\(0) & ((\Mux3~10_combout\ & (\reg[11][28]~regout\)) # (!\Mux3~10_combout\ & ((\reg[9][28]~regout\))))) # (!\addrA~combout\(0) & (((\Mux3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[11][28]~regout\,
	datab => \addrA~combout\(0),
	datac => \reg[9][28]~regout\,
	datad => \Mux3~10_combout\,
	combout => \Mux3~11_combout\);

-- Location: LCFF_X21_Y10_N7
\reg[3][28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[3][28]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[3][28]~regout\);

-- Location: LCFF_X22_Y16_N3
\reg[15][28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(28),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[15][28]~regout\);

-- Location: LCFF_X19_Y11_N25
\reg[21][29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(29),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[21][29]~regout\);

-- Location: LCFF_X18_Y11_N9
\reg[25][29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(29),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[25][29]~regout\);

-- Location: LCFF_X18_Y11_N3
\reg[17][29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(29),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[17][29]~regout\);

-- Location: LCCOMB_X18_Y11_N8
\Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\addrA~combout\(3) & ((\addrA~combout\(2)) # ((\reg[25][29]~regout\)))) # (!\addrA~combout\(3) & (!\addrA~combout\(2) & ((\reg[17][29]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \reg[25][29]~regout\,
	datad => \reg[17][29]~regout\,
	combout => \Mux2~2_combout\);

-- Location: LCFF_X19_Y11_N3
\reg[29][29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(29),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[29][29]~regout\);

-- Location: LCCOMB_X19_Y11_N24
\Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\addrA~combout\(2) & ((\Mux2~2_combout\ & ((\reg[29][29]~regout\))) # (!\Mux2~2_combout\ & (\reg[21][29]~regout\)))) # (!\addrA~combout\(2) & (\Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \Mux2~2_combout\,
	datac => \reg[21][29]~regout\,
	datad => \reg[29][29]~regout\,
	combout => \Mux2~3_combout\);

-- Location: LCFF_X19_Y18_N17
\reg[26][29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(29),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[26][29]~regout\);

-- Location: LCFF_X22_Y18_N21
\reg[22][29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(29),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[22][29]~regout\);

-- Location: LCFF_X22_Y18_N7
\reg[18][29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(29),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[18][29]~regout\);

-- Location: LCCOMB_X22_Y18_N20
\Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\addrA~combout\(3) & (((\addrA~combout\(2))))) # (!\addrA~combout\(3) & ((\addrA~combout\(2) & ((\reg[22][29]~regout\))) # (!\addrA~combout\(2) & (\reg[18][29]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[18][29]~regout\,
	datab => \addrA~combout\(3),
	datac => \reg[22][29]~regout\,
	datad => \addrA~combout\(2),
	combout => \Mux2~4_combout\);

-- Location: LCFF_X19_Y18_N19
\reg[30][29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[30][29]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[30][29]~regout\);

-- Location: LCCOMB_X19_Y18_N16
\Mux2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\addrA~combout\(3) & ((\Mux2~4_combout\ & (\reg[30][29]~regout\)) # (!\Mux2~4_combout\ & ((\reg[26][29]~regout\))))) # (!\addrA~combout\(3) & (((\Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \reg[30][29]~regout\,
	datac => \reg[26][29]~regout\,
	datad => \Mux2~4_combout\,
	combout => \Mux2~5_combout\);

-- Location: LCFF_X16_Y14_N5
\reg[20][29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(29),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[20][29]~regout\);

-- Location: LCFF_X15_Y14_N13
\reg[24][29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(29),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[24][29]~regout\);

-- Location: LCFF_X15_Y14_N15
\reg[16][29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[16][29]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[16][29]~regout\);

-- Location: LCCOMB_X15_Y14_N12
\Mux2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (\addrA~combout\(3) & (((\reg[24][29]~regout\) # (\addrA~combout\(2))))) # (!\addrA~combout\(3) & (\reg[16][29]~regout\ & ((!\addrA~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \reg[16][29]~regout\,
	datac => \reg[24][29]~regout\,
	datad => \addrA~combout\(2),
	combout => \Mux2~6_combout\);

-- Location: LCFF_X16_Y14_N15
\reg[28][29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(29),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[28][29]~regout\);

-- Location: LCCOMB_X16_Y14_N4
\Mux2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\addrA~combout\(2) & ((\Mux2~6_combout\ & (\reg[28][29]~regout\)) # (!\Mux2~6_combout\ & ((\reg[20][29]~regout\))))) # (!\addrA~combout\(2) & (((\Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \reg[28][29]~regout\,
	datac => \reg[20][29]~regout\,
	datad => \Mux2~6_combout\,
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X20_Y10_N12
\Mux2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (\addrA~combout\(1) & ((\Mux2~5_combout\) # ((\addrA~combout\(0))))) # (!\addrA~combout\(1) & (((!\addrA~combout\(0) & \Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~5_combout\,
	datab => \addrA~combout\(1),
	datac => \addrA~combout\(0),
	datad => \Mux2~7_combout\,
	combout => \Mux2~8_combout\);

-- Location: LCFF_X16_Y12_N21
\reg[27][29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(29),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[27][29]~regout\);

-- Location: LCFF_X16_Y15_N29
\reg[23][29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(29),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[23][29]~regout\);

-- Location: LCFF_X16_Y15_N7
\reg[19][29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[19][29]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[19][29]~regout\);

-- Location: LCCOMB_X16_Y15_N28
\Mux2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~9_combout\ = (\addrA~combout\(2) & ((\addrA~combout\(3)) # ((\reg[23][29]~regout\)))) # (!\addrA~combout\(2) & (!\addrA~combout\(3) & ((\reg[19][29]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[23][29]~regout\,
	datad => \reg[19][29]~regout\,
	combout => \Mux2~9_combout\);

-- Location: LCFF_X16_Y12_N15
\reg[31][29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[31][29]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[31][29]~regout\);

-- Location: LCCOMB_X16_Y12_N20
\Mux2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~10_combout\ = (\Mux2~9_combout\ & ((\reg[31][29]~regout\) # ((!\addrA~combout\(3))))) # (!\Mux2~9_combout\ & (((\reg[27][29]~regout\ & \addrA~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~9_combout\,
	datab => \reg[31][29]~regout\,
	datac => \reg[27][29]~regout\,
	datad => \addrA~combout\(3),
	combout => \Mux2~10_combout\);

-- Location: LCCOMB_X20_Y10_N6
\Mux2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~11_combout\ = (\addrA~combout\(0) & ((\Mux2~8_combout\ & ((\Mux2~10_combout\))) # (!\Mux2~8_combout\ & (\Mux2~3_combout\)))) # (!\addrA~combout\(0) & (((\Mux2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~3_combout\,
	datab => \Mux2~10_combout\,
	datac => \addrA~combout\(0),
	datad => \Mux2~8_combout\,
	combout => \Mux2~11_combout\);

-- Location: LCFF_X22_Y10_N1
\reg[1][29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(29),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[1][29]~regout\);

-- Location: LCFF_X24_Y10_N29
\reg[5][29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(29),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[5][29]~regout\);

-- Location: LCFF_X22_Y10_N27
\reg[6][29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(29),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[6][29]~regout\);

-- Location: LCFF_X23_Y10_N11
\reg[4][29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[4][29]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[4][29]~regout\);

-- Location: LCCOMB_X22_Y10_N26
\Mux2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~12_combout\ = (\addrA~combout\(1) & ((\addrA~combout\(0)) # ((\reg[6][29]~regout\)))) # (!\addrA~combout\(1) & (!\addrA~combout\(0) & ((\reg[4][29]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \addrA~combout\(0),
	datac => \reg[6][29]~regout\,
	datad => \reg[4][29]~regout\,
	combout => \Mux2~12_combout\);

-- Location: LCFF_X20_Y14_N23
\reg[7][29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(29),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[7][29]~regout\);

-- Location: LCCOMB_X24_Y10_N28
\Mux2~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~13_combout\ = (\Mux2~12_combout\ & ((\reg[7][29]~regout\) # ((!\addrA~combout\(0))))) # (!\Mux2~12_combout\ & (((\reg[5][29]~regout\ & \addrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~12_combout\,
	datab => \reg[7][29]~regout\,
	datac => \reg[5][29]~regout\,
	datad => \addrA~combout\(0),
	combout => \Mux2~13_combout\);

-- Location: LCCOMB_X22_Y10_N0
\Mux2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~14_combout\ = (\Mux31~15_combout\ & ((\Mux31~16_combout\ & ((\Mux2~13_combout\))) # (!\Mux31~16_combout\ & (\reg[1][29]~regout\)))) # (!\Mux31~15_combout\ & (\Mux31~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~15_combout\,
	datab => \Mux31~16_combout\,
	datac => \reg[1][29]~regout\,
	datad => \Mux2~13_combout\,
	combout => \Mux2~14_combout\);

-- Location: LCFF_X21_Y16_N21
\reg[12][29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[12][29]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[12][29]~regout\);

-- Location: LCFF_X22_Y16_N7
\reg[15][29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(29),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[15][29]~regout\);

-- Location: LCFF_X21_Y18_N7
\reg[18][30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[18][30]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[18][30]~regout\);

-- Location: LCFF_X20_Y18_N29
\reg[30][30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(30),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[30][30]~regout\);

-- Location: LCFF_X19_Y16_N29
\reg[27][30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(30),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[27][30]~regout\);

-- Location: LCFF_X20_Y16_N5
\reg[23][30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(30),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[23][30]~regout\);

-- Location: LCFF_X20_Y16_N23
\reg[19][30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[19][30]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[19][30]~regout\);

-- Location: LCCOMB_X20_Y16_N4
\Mux1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~7_combout\ = (\addrA~combout\(2) & ((\addrA~combout\(3)) # ((\reg[23][30]~regout\)))) # (!\addrA~combout\(2) & (!\addrA~combout\(3) & ((\reg[19][30]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[23][30]~regout\,
	datad => \reg[19][30]~regout\,
	combout => \Mux1~7_combout\);

-- Location: LCFF_X19_Y16_N7
\reg[31][30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(30),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[31][30]~regout\);

-- Location: LCCOMB_X19_Y16_N28
\Mux1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~8_combout\ = (\addrA~combout\(3) & ((\Mux1~7_combout\ & (\reg[31][30]~regout\)) # (!\Mux1~7_combout\ & ((\reg[27][30]~regout\))))) # (!\addrA~combout\(3) & (((\Mux1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[31][30]~regout\,
	datab => \addrA~combout\(3),
	datac => \reg[27][30]~regout\,
	datad => \Mux1~7_combout\,
	combout => \Mux1~8_combout\);

-- Location: LCFF_X22_Y12_N21
\reg[10][30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(30),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[10][30]~regout\);

-- Location: LCFF_X22_Y12_N15
\reg[8][30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[8][30]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[8][30]~regout\);

-- Location: LCCOMB_X22_Y12_N20
\Mux1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~10_combout\ = (\addrA~combout\(0) & (\addrA~combout\(1))) # (!\addrA~combout\(0) & ((\addrA~combout\(1) & (\reg[10][30]~regout\)) # (!\addrA~combout\(1) & ((\reg[8][30]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \addrA~combout\(1),
	datac => \reg[10][30]~regout\,
	datad => \reg[8][30]~regout\,
	combout => \Mux1~10_combout\);

-- Location: LCFF_X21_Y11_N7
\reg[3][30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[3][30]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[3][30]~regout\);

-- Location: LCFF_X22_Y10_N7
\reg[6][30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(30),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[6][30]~regout\);

-- Location: LCFF_X20_Y10_N5
\reg[5][30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(30),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[5][30]~regout\);

-- Location: LCFF_X20_Y10_N23
\reg[4][30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(30),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[4][30]~regout\);

-- Location: LCCOMB_X20_Y10_N4
\Mux1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~12_combout\ = (\addrA~combout\(0) & ((\addrA~combout\(1)) # ((\reg[5][30]~regout\)))) # (!\addrA~combout\(0) & (!\addrA~combout\(1) & ((\reg[4][30]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \addrA~combout\(1),
	datac => \reg[5][30]~regout\,
	datad => \reg[4][30]~regout\,
	combout => \Mux1~12_combout\);

-- Location: LCFF_X20_Y14_N29
\reg[7][30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(30),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[7][30]~regout\);

-- Location: LCCOMB_X22_Y10_N6
\Mux1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~13_combout\ = (\addrA~combout\(1) & ((\Mux1~12_combout\ & (\reg[7][30]~regout\)) # (!\Mux1~12_combout\ & ((\reg[6][30]~regout\))))) # (!\addrA~combout\(1) & (((\Mux1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \reg[7][30]~regout\,
	datac => \reg[6][30]~regout\,
	datad => \Mux1~12_combout\,
	combout => \Mux1~13_combout\);

-- Location: LCFF_X18_Y12_N13
\reg[13][30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(30),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[13][30]~regout\);

-- Location: LCFF_X18_Y12_N31
\reg[12][30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[12][30]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[12][30]~regout\);

-- Location: LCCOMB_X18_Y12_N12
\Mux1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~17_combout\ = (\addrA~combout\(1) & (\addrA~combout\(0))) # (!\addrA~combout\(1) & ((\addrA~combout\(0) & (\reg[13][30]~regout\)) # (!\addrA~combout\(0) & ((\reg[12][30]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \addrA~combout\(0),
	datac => \reg[13][30]~regout\,
	datad => \reg[12][30]~regout\,
	combout => \Mux1~17_combout\);

-- Location: LCFF_X23_Y14_N25
\reg[9][31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(31),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[9][31]~regout\);

-- Location: LCFF_X23_Y9_N27
\reg[8][31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[8][31]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[8][31]~regout\);

-- Location: LCCOMB_X23_Y14_N24
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\addrA~combout\(1) & (\addrA~combout\(0))) # (!\addrA~combout\(1) & ((\addrA~combout\(0) & (\reg[9][31]~regout\)) # (!\addrA~combout\(0) & ((\reg[8][31]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \addrA~combout\(0),
	datac => \reg[9][31]~regout\,
	datad => \reg[8][31]~regout\,
	combout => \Mux0~0_combout\);

-- Location: LCFF_X14_Y14_N13
\reg[21][31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(31),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[21][31]~regout\);

-- Location: LCFF_X13_Y14_N5
\reg[25][31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(31),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[25][31]~regout\);

-- Location: LCFF_X13_Y14_N15
\reg[17][31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(31),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[17][31]~regout\);

-- Location: LCCOMB_X13_Y14_N4
\Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\addrA~combout\(2) & (((\addrA~combout\(3))))) # (!\addrA~combout\(2) & ((\addrA~combout\(3) & ((\reg[25][31]~regout\))) # (!\addrA~combout\(3) & (\reg[17][31]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \reg[17][31]~regout\,
	datac => \reg[25][31]~regout\,
	datad => \addrA~combout\(3),
	combout => \Mux0~2_combout\);

-- Location: LCFF_X14_Y14_N15
\reg[29][31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(31),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[29][31]~regout\);

-- Location: LCCOMB_X14_Y14_N14
\Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\Mux0~2_combout\ & (((\reg[29][31]~regout\)) # (!\addrA~combout\(2)))) # (!\Mux0~2_combout\ & (\addrA~combout\(2) & ((\reg[21][31]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~2_combout\,
	datab => \addrA~combout\(2),
	datac => \reg[29][31]~regout\,
	datad => \reg[21][31]~regout\,
	combout => \Mux0~3_combout\);

-- Location: LCFF_X25_Y14_N5
\reg[20][31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(31),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[20][31]~regout\);

-- Location: LCFF_X26_Y13_N13
\reg[24][31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(31),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[24][31]~regout\);

-- Location: LCFF_X26_Y13_N31
\reg[16][31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(31),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[16][31]~regout\);

-- Location: LCCOMB_X26_Y13_N12
\Mux0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (\addrA~combout\(2) & (\addrA~combout\(3))) # (!\addrA~combout\(2) & ((\addrA~combout\(3) & (\reg[24][31]~regout\)) # (!\addrA~combout\(3) & ((\reg[16][31]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[24][31]~regout\,
	datad => \reg[16][31]~regout\,
	combout => \Mux0~6_combout\);

-- Location: LCFF_X25_Y14_N7
\reg[28][31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(31),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[28][31]~regout\);

-- Location: LCCOMB_X25_Y14_N4
\Mux0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (\Mux0~6_combout\ & ((\reg[28][31]~regout\) # ((!\addrA~combout\(2))))) # (!\Mux0~6_combout\ & (((\reg[20][31]~regout\ & \addrA~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[28][31]~regout\,
	datab => \Mux0~6_combout\,
	datac => \reg[20][31]~regout\,
	datad => \addrA~combout\(2),
	combout => \Mux0~7_combout\);

-- Location: LCFF_X18_Y15_N13
\reg[23][31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(31),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[23][31]~regout\);

-- Location: LCFF_X18_Y15_N31
\reg[19][31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[19][31]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[19][31]~regout\);

-- Location: LCCOMB_X18_Y15_N12
\Mux0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~9_combout\ = (\addrA~combout\(2) & (((\reg[23][31]~regout\) # (\addrA~combout\(3))))) # (!\addrA~combout\(2) & (\reg[19][31]~regout\ & ((!\addrA~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \reg[19][31]~regout\,
	datac => \reg[23][31]~regout\,
	datad => \addrA~combout\(3),
	combout => \Mux0~9_combout\);

-- Location: LCFF_X23_Y9_N21
\reg[7][31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[7][31]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[7][31]~regout\);

-- Location: LCFF_X23_Y14_N11
\reg[15][31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(31),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[15][31]~regout\);

-- Location: LCCOMB_X24_Y12_N2
\Mux27~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~26_combout\ = (!\addrA~combout\(4) & ((\Mux27~20_combout\) # ((\addrA~combout\(2)) # (!\addrA~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(4),
	datab => \Mux27~20_combout\,
	datac => \addrA~combout\(3),
	datad => \addrA~combout\(2),
	combout => \Mux27~26_combout\);

-- Location: LCCOMB_X24_Y12_N22
\Mux23~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~26_combout\ = (!\addrA~combout\(4) & (((\addrA~combout\(2)) # (\Mux23~20_combout\)) # (!\addrA~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \addrA~combout\(4),
	datad => \Mux23~20_combout\,
	combout => \Mux23~26_combout\);

-- Location: LCCOMB_X24_Y12_N10
\Mux19~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~26_combout\ = (!\addrA~combout\(4) & (((\addrA~combout\(2)) # (\Mux19~20_combout\)) # (!\addrA~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \addrA~combout\(4),
	datad => \Mux19~20_combout\,
	combout => \Mux19~26_combout\);

-- Location: LCCOMB_X24_Y12_N14
\Mux7~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~26_combout\ = (!\addrA~combout\(4) & (((\addrA~combout\(2)) # (\Mux7~20_combout\)) # (!\addrA~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \addrA~combout\(4),
	datad => \Mux7~20_combout\,
	combout => \Mux7~26_combout\);

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

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addrW[2]~I\ : cycloneii_io
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
	padio => ww_addrW(2),
	combout => \addrW~combout\(2));

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

-- Location: LCCOMB_X20_Y15_N6
\reg[31][1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[31][1]~feeder_combout\ = \d_in~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(1),
	combout => \reg[31][1]~feeder_combout\);

-- Location: LCCOMB_X25_Y17_N28
\reg[30][1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[30][1]~feeder_combout\ = \d_in~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(1),
	combout => \reg[30][1]~feeder_combout\);

-- Location: LCCOMB_X20_Y17_N26
\reg[19][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[19][2]~feeder_combout\ = \d_in~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(2),
	combout => \reg[19][2]~feeder_combout\);

-- Location: LCCOMB_X25_Y17_N26
\reg[12][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[12][2]~feeder_combout\ = \d_in~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(2),
	combout => \reg[12][2]~feeder_combout\);

-- Location: LCCOMB_X25_Y14_N14
\reg[28][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[28][2]~feeder_combout\ = \d_in~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(2),
	combout => \reg[28][2]~feeder_combout\);

-- Location: LCCOMB_X23_Y18_N10
\reg[18][3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[18][3]~feeder_combout\ = \d_in~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(3),
	combout => \reg[18][3]~feeder_combout\);

-- Location: LCCOMB_X25_Y17_N20
\reg[30][3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[30][3]~feeder_combout\ = \d_in~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(3),
	combout => \reg[30][3]~feeder_combout\);

-- Location: LCCOMB_X25_Y14_N18
\reg[28][3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[28][3]~feeder_combout\ = \d_in~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(3),
	combout => \reg[28][3]~feeder_combout\);

-- Location: LCCOMB_X22_Y15_N30
\reg[4][3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[4][3]~feeder_combout\ = \d_in~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(3),
	combout => \reg[4][3]~feeder_combout\);

-- Location: LCCOMB_X20_Y15_N22
\reg[31][3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[31][3]~feeder_combout\ = \d_in~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(3),
	combout => \reg[31][3]~feeder_combout\);

-- Location: LCCOMB_X25_Y14_N22
\reg[28][4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[28][4]~feeder_combout\ = \d_in~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(4),
	combout => \reg[28][4]~feeder_combout\);

-- Location: LCCOMB_X23_Y11_N10
\reg[7][4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[7][4]~feeder_combout\ = \d_in~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(4),
	combout => \reg[7][4]~feeder_combout\);

-- Location: LCCOMB_X20_Y17_N18
\reg[19][4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[19][4]~feeder_combout\ = \d_in~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(4),
	combout => \reg[19][4]~feeder_combout\);

-- Location: LCCOMB_X20_Y15_N18
\reg[31][4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[31][4]~feeder_combout\ = \d_in~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(4),
	combout => \reg[31][4]~feeder_combout\);

-- Location: LCCOMB_X22_Y12_N26
\reg[8][4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[8][4]~feeder_combout\ = \d_in~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(4),
	combout => \reg[8][4]~feeder_combout\);

-- Location: LCCOMB_X23_Y18_N18
\reg[18][5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[18][5]~feeder_combout\ = \d_in~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(5),
	combout => \reg[18][5]~feeder_combout\);

-- Location: LCCOMB_X20_Y11_N30
\reg[17][5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[17][5]~feeder_combout\ = \d_in~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(5),
	combout => \reg[17][5]~feeder_combout\);

-- Location: LCCOMB_X20_Y17_N30
\reg[19][5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[19][5]~feeder_combout\ = \d_in~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(5),
	combout => \reg[19][5]~feeder_combout\);

-- Location: LCCOMB_X23_Y11_N30
\reg[7][5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[7][5]~feeder_combout\ = \d_in~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(5),
	combout => \reg[7][5]~feeder_combout\);

-- Location: LCCOMB_X26_Y13_N10
\reg[16][5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[16][5]~feeder_combout\ = \d_in~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(5),
	combout => \reg[16][5]~feeder_combout\);

-- Location: LCCOMB_X21_Y17_N22
\reg[30][6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[30][6]~feeder_combout\ = \d_in~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(6),
	combout => \reg[30][6]~feeder_combout\);

-- Location: LCCOMB_X18_Y15_N26
\reg[19][7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[19][7]~feeder_combout\ = \d_in~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(7),
	combout => \reg[19][7]~feeder_combout\);

-- Location: LCCOMB_X20_Y11_N14
\reg[17][7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[17][7]~feeder_combout\ = \d_in~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(7),
	combout => \reg[17][7]~feeder_combout\);

-- Location: LCCOMB_X23_Y16_N6
\reg[12][7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[12][7]~feeder_combout\ = \d_in~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(7),
	combout => \reg[12][7]~feeder_combout\);

-- Location: LCCOMB_X21_Y12_N18
\reg[11][8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[11][8]~feeder_combout\ = \d_in~combout\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(8),
	combout => \reg[11][8]~feeder_combout\);

-- Location: LCCOMB_X19_Y13_N26
\reg[29][8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[29][8]~feeder_combout\ = \d_in~combout\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(8),
	combout => \reg[29][8]~feeder_combout\);

-- Location: LCCOMB_X18_Y15_N22
\reg[19][8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[19][8]~feeder_combout\ = \d_in~combout\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(8),
	combout => \reg[19][8]~feeder_combout\);

-- Location: LCCOMB_X23_Y11_N26
\reg[7][9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[7][9]~feeder_combout\ = \d_in~combout\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(9),
	combout => \reg[7][9]~feeder_combout\);

-- Location: LCCOMB_X27_Y14_N22
\reg[16][11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[16][11]~feeder_combout\ = \d_in~combout\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(11),
	combout => \reg[16][11]~feeder_combout\);

-- Location: LCCOMB_X26_Y14_N14
\reg[28][11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[28][11]~feeder_combout\ = \d_in~combout\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(11),
	combout => \reg[28][11]~feeder_combout\);

-- Location: LCCOMB_X22_Y13_N24
\reg[11][11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[11][11]~feeder_combout\ = \d_in~combout\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(11),
	combout => \reg[11][11]~feeder_combout\);

-- Location: LCCOMB_X22_Y13_N18
\reg[3][11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[3][11]~feeder_combout\ = \d_in~combout\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(11),
	combout => \reg[3][11]~feeder_combout\);

-- Location: LCCOMB_X18_Y15_N2
\reg[19][11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[19][11]~feeder_combout\ = \d_in~combout\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(11),
	combout => \reg[19][11]~feeder_combout\);

-- Location: LCCOMB_X19_Y17_N22
\reg[30][12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[30][12]~feeder_combout\ = \d_in~combout\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(12),
	combout => \reg[30][12]~feeder_combout\);

-- Location: LCCOMB_X19_Y13_N2
\reg[29][12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[29][12]~feeder_combout\ = \d_in~combout\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(12),
	combout => \reg[29][12]~feeder_combout\);

-- Location: LCCOMB_X22_Y14_N22
\reg[7][13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[7][13]~feeder_combout\ = \d_in~combout\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(13),
	combout => \reg[7][13]~feeder_combout\);

-- Location: LCCOMB_X26_Y11_N14
\reg[4][13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[4][13]~feeder_combout\ = \d_in~combout\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(13),
	combout => \reg[4][13]~feeder_combout\);

-- Location: LCCOMB_X22_Y13_N6
\reg[11][13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[11][13]~feeder_combout\ = \d_in~combout\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(13),
	combout => \reg[11][13]~feeder_combout\);

-- Location: LCCOMB_X27_Y14_N30
\reg[16][13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[16][13]~feeder_combout\ = \d_in~combout\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(13),
	combout => \reg[16][13]~feeder_combout\);

-- Location: LCCOMB_X20_Y16_N2
\reg[19][14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[19][14]~feeder_combout\ = \d_in~combout\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(14),
	combout => \reg[19][14]~feeder_combout\);

-- Location: LCCOMB_X19_Y16_N2
\reg[31][14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[31][14]~feeder_combout\ = \d_in~combout\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(14),
	combout => \reg[31][14]~feeder_combout\);

-- Location: LCCOMB_X13_Y14_N18
\reg[17][15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[17][15]~feeder_combout\ = \d_in~combout\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(15),
	combout => \reg[17][15]~feeder_combout\);

-- Location: LCCOMB_X19_Y17_N2
\reg[30][15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[30][15]~feeder_combout\ = \d_in~combout\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(15),
	combout => \reg[30][15]~feeder_combout\);

-- Location: LCCOMB_X21_Y18_N24
\reg[18][15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[18][15]~feeder_combout\ = \d_in~combout\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(15),
	combout => \reg[18][15]~feeder_combout\);

-- Location: LCCOMB_X24_Y14_N8
\reg[8][15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[8][15]~feeder_combout\ = \d_in~combout\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(15),
	combout => \reg[8][15]~feeder_combout\);

-- Location: LCCOMB_X15_Y14_N6
\reg[16][16]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[16][16]~feeder_combout\ = \d_in~combout\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(16),
	combout => \reg[16][16]~feeder_combout\);

-- Location: LCCOMB_X16_Y14_N30
\reg[28][16]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[28][16]~feeder_combout\ = \d_in~combout\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(16),
	combout => \reg[28][16]~feeder_combout\);

-- Location: LCCOMB_X23_Y9_N16
\reg[8][16]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[8][16]~feeder_combout\ = \d_in~combout\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(16),
	combout => \reg[8][16]~feeder_combout\);

-- Location: LCCOMB_X23_Y9_N22
\reg[7][16]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[7][16]~feeder_combout\ = \d_in~combout\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(16),
	combout => \reg[7][16]~feeder_combout\);

-- Location: LCCOMB_X21_Y18_N2
\reg[18][16]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[18][16]~feeder_combout\ = \d_in~combout\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(16),
	combout => \reg[18][16]~feeder_combout\);

-- Location: LCCOMB_X25_Y17_N4
\reg[12][16]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[12][16]~feeder_combout\ = \d_in~combout\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(16),
	combout => \reg[12][16]~feeder_combout\);

-- Location: LCCOMB_X15_Y14_N2
\reg[16][17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[16][17]~feeder_combout\ = \d_in~combout\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(17),
	combout => \reg[16][17]~feeder_combout\);

-- Location: LCCOMB_X21_Y18_N4
\reg[18][17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[18][17]~feeder_combout\ = \d_in~combout\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(17),
	combout => \reg[18][17]~feeder_combout\);

-- Location: LCCOMB_X13_Y14_N10
\reg[17][17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[17][17]~feeder_combout\ = \d_in~combout\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(17),
	combout => \reg[17][17]~feeder_combout\);

-- Location: LCCOMB_X23_Y10_N2
\reg[4][17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[4][17]~feeder_combout\ = \d_in~combout\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(17),
	combout => \reg[4][17]~feeder_combout\);

-- Location: LCCOMB_X23_Y9_N18
\reg[7][17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[7][17]~feeder_combout\ = \d_in~combout\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(17),
	combout => \reg[7][17]~feeder_combout\);

-- Location: LCCOMB_X13_Y14_N6
\reg[17][18]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[17][18]~feeder_combout\ = \d_in~combout\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(18),
	combout => \reg[17][18]~feeder_combout\);

-- Location: LCCOMB_X15_Y14_N30
\reg[16][18]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[16][18]~feeder_combout\ = \d_in~combout\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(18),
	combout => \reg[16][18]~feeder_combout\);

-- Location: LCCOMB_X22_Y15_N14
\reg[4][19]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[4][19]~feeder_combout\ = \d_in~combout\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(19),
	combout => \reg[4][19]~feeder_combout\);

-- Location: LCCOMB_X15_Y14_N22
\reg[16][20]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[16][20]~feeder_combout\ = \d_in~combout\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(20),
	combout => \reg[16][20]~feeder_combout\);

-- Location: LCCOMB_X16_Y14_N22
\reg[28][20]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[28][20]~feeder_combout\ = \d_in~combout\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(20),
	combout => \reg[28][20]~feeder_combout\);

-- Location: LCCOMB_X16_Y12_N22
\reg[31][21]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[31][21]~feeder_combout\ = \d_in~combout\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(21),
	combout => \reg[31][21]~feeder_combout\);

-- Location: LCCOMB_X16_Y14_N18
\reg[28][21]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[28][21]~feeder_combout\ = \d_in~combout\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(21),
	combout => \reg[28][21]~feeder_combout\);

-- Location: LCCOMB_X18_Y14_N18
\reg[12][21]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[12][21]~feeder_combout\ = \d_in~combout\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(21),
	combout => \reg[12][21]~feeder_combout\);

-- Location: LCCOMB_X13_Y14_N30
\reg[17][21]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[17][21]~feeder_combout\ = \d_in~combout\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(21),
	combout => \reg[17][21]~feeder_combout\);

-- Location: LCCOMB_X14_Y14_N6
\reg[29][21]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[29][21]~feeder_combout\ = \d_in~combout\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(21),
	combout => \reg[29][21]~feeder_combout\);

-- Location: LCCOMB_X25_Y10_N22
\reg[11][21]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[11][21]~feeder_combout\ = \d_in~combout\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(21),
	combout => \reg[11][21]~feeder_combout\);

-- Location: LCCOMB_X21_Y18_N18
\reg[18][21]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[18][21]~feeder_combout\ = \d_in~combout\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(21),
	combout => \reg[18][21]~feeder_combout\);

-- Location: LCCOMB_X14_Y14_N10
\reg[29][22]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[29][22]~feeder_combout\ = \d_in~combout\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(22),
	combout => \reg[29][22]~feeder_combout\);

-- Location: LCCOMB_X18_Y12_N8
\reg[12][22]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[12][22]~feeder_combout\ = \d_in~combout\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(22),
	combout => \reg[12][22]~feeder_combout\);

-- Location: LCCOMB_X23_Y10_N26
\reg[4][23]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[4][23]~feeder_combout\ = \d_in~combout\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(23),
	combout => \reg[4][23]~feeder_combout\);

-- Location: LCCOMB_X21_Y18_N22
\reg[18][23]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[18][23]~feeder_combout\ = \d_in~combout\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(23),
	combout => \reg[18][23]~feeder_combout\);

-- Location: LCCOMB_X16_Y15_N26
\reg[19][24]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[19][24]~feeder_combout\ = \d_in~combout\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(24),
	combout => \reg[19][24]~feeder_combout\);

-- Location: LCCOMB_X21_Y12_N2
\reg[11][24]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[11][24]~feeder_combout\ = \d_in~combout\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(24),
	combout => \reg[11][24]~feeder_combout\);

-- Location: LCCOMB_X21_Y18_N8
\reg[18][24]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[18][24]~feeder_combout\ = \d_in~combout\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(24),
	combout => \reg[18][24]~feeder_combout\);

-- Location: LCCOMB_X21_Y10_N10
\reg[3][25]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[3][25]~feeder_combout\ = \d_in~combout\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(25),
	combout => \reg[3][25]~feeder_combout\);

-- Location: LCCOMB_X23_Y10_N18
\reg[4][25]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[4][25]~feeder_combout\ = \d_in~combout\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(25),
	combout => \reg[4][25]~feeder_combout\);

-- Location: LCCOMB_X19_Y18_N10
\reg[30][25]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[30][25]~feeder_combout\ = \d_in~combout\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(25),
	combout => \reg[30][25]~feeder_combout\);

-- Location: LCCOMB_X22_Y16_N14
\reg[15][26]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[15][26]~feeder_combout\ = \d_in~combout\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(26),
	combout => \reg[15][26]~feeder_combout\);

-- Location: LCCOMB_X21_Y18_N0
\reg[18][26]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[18][26]~feeder_combout\ = \d_in~combout\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(26),
	combout => \reg[18][26]~feeder_combout\);

-- Location: LCCOMB_X20_Y14_N2
\reg[7][26]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[7][26]~feeder_combout\ = \d_in~combout\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(26),
	combout => \reg[7][26]~feeder_combout\);

-- Location: LCCOMB_X20_Y10_N28
\reg[4][26]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[4][26]~feeder_combout\ = \d_in~combout\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(26),
	combout => \reg[4][26]~feeder_combout\);

-- Location: LCCOMB_X21_Y18_N28
\reg[18][27]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[18][27]~feeder_combout\ = \d_in~combout\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(27),
	combout => \reg[18][27]~feeder_combout\);

-- Location: LCCOMB_X20_Y15_N2
\reg[31][27]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[31][27]~feeder_combout\ = \d_in~combout\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(27),
	combout => \reg[31][27]~feeder_combout\);

-- Location: LCCOMB_X16_Y15_N14
\reg[19][27]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[19][27]~feeder_combout\ = \d_in~combout\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(27),
	combout => \reg[19][27]~feeder_combout\);

-- Location: LCCOMB_X19_Y11_N10
\reg[29][27]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[29][27]~feeder_combout\ = \d_in~combout\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(27),
	combout => \reg[29][27]~feeder_combout\);

-- Location: LCCOMB_X23_Y10_N30
\reg[4][27]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[4][27]~feeder_combout\ = \d_in~combout\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(27),
	combout => \reg[4][27]~feeder_combout\);

-- Location: LCCOMB_X16_Y15_N2
\reg[19][28]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[19][28]~feeder_combout\ = \d_in~combout\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(28),
	combout => \reg[19][28]~feeder_combout\);

-- Location: LCCOMB_X21_Y10_N6
\reg[3][28]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[3][28]~feeder_combout\ = \d_in~combout\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(28),
	combout => \reg[3][28]~feeder_combout\);

-- Location: LCCOMB_X20_Y18_N0
\reg[30][28]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[30][28]~feeder_combout\ = \d_in~combout\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(28),
	combout => \reg[30][28]~feeder_combout\);

-- Location: LCCOMB_X22_Y13_N0
\reg[11][28]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[11][28]~feeder_combout\ = \d_in~combout\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(28),
	combout => \reg[11][28]~feeder_combout\);

-- Location: LCCOMB_X16_Y12_N14
\reg[31][29]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[31][29]~feeder_combout\ = \d_in~combout\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(29),
	combout => \reg[31][29]~feeder_combout\);

-- Location: LCCOMB_X15_Y14_N14
\reg[16][29]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[16][29]~feeder_combout\ = \d_in~combout\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(29),
	combout => \reg[16][29]~feeder_combout\);

-- Location: LCCOMB_X16_Y15_N6
\reg[19][29]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[19][29]~feeder_combout\ = \d_in~combout\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(29),
	combout => \reg[19][29]~feeder_combout\);

-- Location: LCCOMB_X23_Y10_N10
\reg[4][29]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[4][29]~feeder_combout\ = \d_in~combout\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(29),
	combout => \reg[4][29]~feeder_combout\);

-- Location: LCCOMB_X21_Y16_N20
\reg[12][29]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[12][29]~feeder_combout\ = \d_in~combout\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(29),
	combout => \reg[12][29]~feeder_combout\);

-- Location: LCCOMB_X19_Y18_N18
\reg[30][29]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[30][29]~feeder_combout\ = \d_in~combout\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(29),
	combout => \reg[30][29]~feeder_combout\);

-- Location: LCCOMB_X22_Y12_N14
\reg[8][30]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[8][30]~feeder_combout\ = \d_in~combout\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(30),
	combout => \reg[8][30]~feeder_combout\);

-- Location: LCCOMB_X21_Y11_N6
\reg[3][30]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[3][30]~feeder_combout\ = \d_in~combout\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(30),
	combout => \reg[3][30]~feeder_combout\);

-- Location: LCCOMB_X18_Y12_N30
\reg[12][30]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[12][30]~feeder_combout\ = \d_in~combout\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(30),
	combout => \reg[12][30]~feeder_combout\);

-- Location: LCCOMB_X20_Y16_N22
\reg[19][30]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[19][30]~feeder_combout\ = \d_in~combout\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(30),
	combout => \reg[19][30]~feeder_combout\);

-- Location: LCCOMB_X21_Y18_N6
\reg[18][30]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[18][30]~feeder_combout\ = \d_in~combout\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(30),
	combout => \reg[18][30]~feeder_combout\);

-- Location: LCCOMB_X23_Y9_N20
\reg[7][31]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[7][31]~feeder_combout\ = \d_in~combout\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(31),
	combout => \reg[7][31]~feeder_combout\);

-- Location: LCCOMB_X23_Y9_N26
\reg[8][31]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[8][31]~feeder_combout\ = \d_in~combout\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(31),
	combout => \reg[8][31]~feeder_combout\);

-- Location: LCCOMB_X18_Y15_N30
\reg[19][31]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[19][31]~feeder_combout\ = \d_in~combout\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(31),
	combout => \reg[19][31]~feeder_combout\);

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addrA[3]~I\ : cycloneii_io
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
	padio => ww_addrA(3),
	combout => \addrA~combout\(3));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addrA[4]~I\ : cycloneii_io
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
	padio => ww_addrA(4),
	combout => \addrA~combout\(4));

-- Location: LCCOMB_X20_Y12_N4
\Mux31~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~14_combout\ = (\addrA~combout\(4)) # ((\addrA~combout\(2) & \addrA~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datad => \addrA~combout\(4),
	combout => \Mux31~14_combout\);

-- Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[0]~I\ : cycloneii_io
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
	padio => ww_d_in(0),
	combout => \d_in~combout\(0));

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

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addrW[3]~I\ : cycloneii_io
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
	padio => ww_addrW(3),
	combout => \addrW~combout\(3));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addrW[4]~I\ : cycloneii_io
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
	padio => ww_addrW(4),
	combout => \addrW~combout\(4));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\en~I\ : cycloneii_io
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
	padio => ww_en,
	combout => \en~combout\);

-- Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addrW[0]~I\ : cycloneii_io
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
	padio => ww_addrW(0),
	combout => \addrW~combout\(0));

-- Location: LCCOMB_X21_Y13_N28
\Equal15~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~25_combout\ = (\addrW~combout\(2) & (!\addrW~combout\(4) & (\en~combout\ & \addrW~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrW~combout\(2),
	datab => \addrW~combout\(4),
	datac => \en~combout\,
	datad => \addrW~combout\(0),
	combout => \Equal15~25_combout\);

-- Location: LCCOMB_X21_Y13_N6
\Equal15~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~38_combout\ = (\addrW~combout\(1) & (\addrW~combout\(3) & \Equal15~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrW~combout\(1),
	datab => \addrW~combout\(3),
	datad => \Equal15~25_combout\,
	combout => \Equal15~38_combout\);

-- Location: LCFF_X24_Y16_N3
\reg[15][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(0),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[15][0]~regout\);

-- Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addrW[1]~I\ : cycloneii_io
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
	padio => ww_addrW(1),
	combout => \addrW~combout\(1));

-- Location: LCCOMB_X21_Y13_N24
\Equal15~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~27_combout\ = (\addrW~combout\(2) & (!\addrW~combout\(4) & (\en~combout\ & !\addrW~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrW~combout\(2),
	datab => \addrW~combout\(4),
	datac => \en~combout\,
	datad => \addrW~combout\(0),
	combout => \Equal15~27_combout\);

-- Location: LCCOMB_X20_Y13_N12
\Equal15~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~35_combout\ = (\addrW~combout\(3) & (\addrW~combout\(1) & \Equal15~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addrW~combout\(3),
	datac => \addrW~combout\(1),
	datad => \Equal15~27_combout\,
	combout => \Equal15~35_combout\);

-- Location: LCFF_X24_Y17_N27
\reg[14][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(0),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[14][0]~regout\);

-- Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addrA[1]~I\ : cycloneii_io
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
	padio => ww_addrA(1),
	combout => \addrA~combout\(1));

-- Location: LCCOMB_X21_Y13_N12
\Equal15~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~36_combout\ = (!\addrW~combout\(1) & (\addrW~combout\(3) & \Equal15~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrW~combout\(1),
	datab => \addrW~combout\(3),
	datad => \Equal15~25_combout\,
	combout => \Equal15~36_combout\);

-- Location: LCFF_X24_Y16_N1
\reg[13][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(0),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[13][0]~regout\);

-- Location: LCCOMB_X20_Y13_N22
\Equal15~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~37_combout\ = (\addrW~combout\(3) & (!\addrW~combout\(1) & \Equal15~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addrW~combout\(3),
	datac => \addrW~combout\(1),
	datad => \Equal15~27_combout\,
	combout => \Equal15~37_combout\);

-- Location: LCFF_X25_Y17_N19
\reg[12][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(0),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[12][0]~regout\);

-- Location: LCCOMB_X24_Y16_N0
\Mux31~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~28_combout\ = (\addrA~combout\(0) & ((\addrA~combout\(1)) # ((\reg[13][0]~regout\)))) # (!\addrA~combout\(0) & (!\addrA~combout\(1) & ((\reg[12][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \addrA~combout\(1),
	datac => \reg[13][0]~regout\,
	datad => \reg[12][0]~regout\,
	combout => \Mux31~28_combout\);

-- Location: LCCOMB_X24_Y17_N26
\Mux31~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~29_combout\ = (\addrA~combout\(1) & ((\Mux31~28_combout\ & (\reg[15][0]~regout\)) # (!\Mux31~28_combout\ & ((\reg[14][0]~regout\))))) # (!\addrA~combout\(1) & (((\Mux31~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \reg[15][0]~regout\,
	datac => \reg[14][0]~regout\,
	datad => \Mux31~28_combout\,
	combout => \Mux31~29_combout\);

-- Location: LCCOMB_X21_Y13_N16
\Equal15~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~20_combout\ = (!\addrW~combout\(2) & (!\addrW~combout\(4) & (\en~combout\ & \addrW~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrW~combout\(2),
	datab => \addrW~combout\(4),
	datac => \en~combout\,
	datad => \addrW~combout\(0),
	combout => \Equal15~20_combout\);

-- Location: LCCOMB_X22_Y13_N22
\Equal15~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~24_combout\ = (\addrW~combout\(1) & (!\addrW~combout\(3) & \Equal15~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrW~combout\(1),
	datac => \addrW~combout\(3),
	datad => \Equal15~20_combout\,
	combout => \Equal15~24_combout\);

-- Location: LCFF_X23_Y15_N7
\reg[3][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(0),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[3][0]~regout\);

-- Location: LCCOMB_X21_Y13_N18
\Equal15~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~22_combout\ = (!\addrW~combout\(2) & (!\addrW~combout\(4) & (\en~combout\ & !\addrW~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrW~combout\(2),
	datab => \addrW~combout\(4),
	datac => \en~combout\,
	datad => \addrW~combout\(0),
	combout => \Equal15~22_combout\);

-- Location: LCCOMB_X22_Y13_N4
\Equal15~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~23_combout\ = (\addrW~combout\(1) & (!\addrW~combout\(3) & \Equal15~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrW~combout\(1),
	datac => \addrW~combout\(3),
	datad => \Equal15~22_combout\,
	combout => \Equal15~23_combout\);

-- Location: LCFF_X23_Y15_N27
\reg[2][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(0),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[2][0]~regout\);

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addrA[2]~I\ : cycloneii_io
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
	padio => ww_addrA(2),
	combout => \addrA~combout\(2));

-- Location: LCCOMB_X23_Y15_N28
\Mux31~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~18_combout\ = (!\addrA~combout\(2) & \addrA~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \addrA~combout\(2),
	datad => \addrA~combout\(1),
	combout => \Mux31~18_combout\);

-- Location: LCCOMB_X23_Y15_N26
\Mux31~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~22_combout\ = (\Mux31~21_combout\ & ((\reg[3][0]~regout\) # ((!\Mux31~18_combout\)))) # (!\Mux31~21_combout\ & (((\reg[2][0]~regout\ & \Mux31~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~21_combout\,
	datab => \reg[3][0]~regout\,
	datac => \reg[2][0]~regout\,
	datad => \Mux31~18_combout\,
	combout => \Mux31~22_combout\);

-- Location: LCCOMB_X22_Y13_N14
\Equal15~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~34_combout\ = (\addrW~combout\(1) & (\addrW~combout\(3) & \Equal15~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrW~combout\(1),
	datac => \addrW~combout\(3),
	datad => \Equal15~20_combout\,
	combout => \Equal15~34_combout\);

-- Location: LCFF_X21_Y12_N27
\reg[11][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(0),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[11][0]~regout\);

-- Location: LCCOMB_X22_Y13_N16
\Equal15~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~31_combout\ = (!\addrW~combout\(1) & (\addrW~combout\(3) & \Equal15~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrW~combout\(1),
	datac => \addrW~combout\(3),
	datad => \Equal15~20_combout\,
	combout => \Equal15~31_combout\);

-- Location: LCFF_X21_Y12_N25
\reg[9][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(0),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[9][0]~regout\);

-- Location: LCCOMB_X22_Y13_N26
\Equal15~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~32_combout\ = (\addrW~combout\(1) & (\addrW~combout\(3) & \Equal15~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrW~combout\(1),
	datac => \addrW~combout\(3),
	datad => \Equal15~22_combout\,
	combout => \Equal15~32_combout\);

-- Location: LCFF_X22_Y12_N25
\reg[10][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(0),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[10][0]~regout\);

-- Location: LCCOMB_X22_Y13_N12
\Equal15~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~33_combout\ = (!\addrW~combout\(1) & (\addrW~combout\(3) & \Equal15~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrW~combout\(1),
	datac => \addrW~combout\(3),
	datad => \Equal15~22_combout\,
	combout => \Equal15~33_combout\);

-- Location: LCFF_X22_Y12_N11
\reg[8][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(0),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[8][0]~regout\);

-- Location: LCCOMB_X22_Y12_N24
\Mux31~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~24_combout\ = (\addrA~combout\(0) & (\addrA~combout\(1))) # (!\addrA~combout\(0) & ((\addrA~combout\(1) & (\reg[10][0]~regout\)) # (!\addrA~combout\(1) & ((\reg[8][0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \addrA~combout\(1),
	datac => \reg[10][0]~regout\,
	datad => \reg[8][0]~regout\,
	combout => \Mux31~24_combout\);

-- Location: LCCOMB_X21_Y12_N24
\Mux31~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~25_combout\ = (\addrA~combout\(0) & ((\Mux31~24_combout\ & (\reg[11][0]~regout\)) # (!\Mux31~24_combout\ & ((\reg[9][0]~regout\))))) # (!\addrA~combout\(0) & (((\Mux31~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \reg[11][0]~regout\,
	datac => \reg[9][0]~regout\,
	datad => \Mux31~24_combout\,
	combout => \Mux31~25_combout\);

-- Location: LCCOMB_X20_Y12_N12
\Mux31~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~31_combout\ = (!\addrA~combout\(4) & (((\addrA~combout\(2)) # (\Mux31~25_combout\)) # (!\addrA~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(4),
	datab => \addrA~combout\(3),
	datac => \addrA~combout\(2),
	datad => \Mux31~25_combout\,
	combout => \Mux31~31_combout\);

-- Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addrA[0]~I\ : cycloneii_io
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
	padio => ww_addrA(0),
	combout => \addrA~combout\(0));

-- Location: LCCOMB_X20_Y12_N22
\Mux31~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~16_combout\ = (\addrA~combout\(2)) # ((\addrA~combout\(1) & \addrA~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datac => \addrA~combout\(1),
	datad => \addrA~combout\(0),
	combout => \Mux31~16_combout\);

-- Location: LCCOMB_X22_Y13_N2
\Equal15~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~21_combout\ = (!\addrW~combout\(1) & (!\addrW~combout\(3) & \Equal15~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrW~combout\(1),
	datac => \addrW~combout\(3),
	datad => \Equal15~20_combout\,
	combout => \Equal15~21_combout\);

-- Location: LCFF_X24_Y15_N1
\reg[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(0),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[1][0]~regout\);

-- Location: LCCOMB_X23_Y15_N16
\Mux31~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~15_combout\ = (\addrA~combout\(2)) # ((!\addrA~combout\(1) & \addrA~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addrA~combout\(1),
	datac => \addrA~combout\(2),
	datad => \addrA~combout\(0),
	combout => \Mux31~15_combout\);

-- Location: LCCOMB_X24_Y15_N0
\Mux31~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~17_combout\ = (\Mux31~16_combout\ & ((!\Mux31~15_combout\))) # (!\Mux31~16_combout\ & (\reg[1][0]~regout\ & \Mux31~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux31~16_combout\,
	datac => \reg[1][0]~regout\,
	datad => \Mux31~15_combout\,
	combout => \Mux31~17_combout\);

-- Location: LCCOMB_X23_Y13_N20
\Mux31~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~27_combout\ = (\Mux31~31_combout\ & ((\Mux31~26_combout\) # ((\Mux31~22_combout\ & !\Mux31~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~26_combout\,
	datab => \Mux31~22_combout\,
	datac => \Mux31~31_combout\,
	datad => \Mux31~17_combout\,
	combout => \Mux31~27_combout\);

-- Location: LCCOMB_X21_Y13_N10
\Equal15~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~8_combout\ = (!\addrW~combout\(2) & (\addrW~combout\(4) & (\en~combout\ & \addrW~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrW~combout\(2),
	datab => \addrW~combout\(4),
	datac => \en~combout\,
	datad => \addrW~combout\(0),
	combout => \Equal15~8_combout\);

-- Location: LCCOMB_X20_Y13_N6
\Equal15~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~9_combout\ = (!\addrW~combout\(1) & (\Equal15~8_combout\ & \addrW~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addrW~combout\(1),
	datac => \Equal15~8_combout\,
	datad => \addrW~combout\(3),
	combout => \Equal15~9_combout\);

-- Location: LCFF_X20_Y11_N25
\reg[25][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(0),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[25][0]~regout\);

-- Location: LCCOMB_X20_Y13_N24
\Equal15~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~10_combout\ = (!\addrW~combout\(1) & (\Equal15~8_combout\ & !\addrW~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addrW~combout\(1),
	datac => \Equal15~8_combout\,
	datad => \addrW~combout\(3),
	combout => \Equal15~10_combout\);

-- Location: LCFF_X20_Y11_N11
\reg[17][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(0),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[17][0]~regout\);

-- Location: LCCOMB_X20_Y11_N24
\Mux31~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~6_combout\ = (\addrA~combout\(2) & (\addrA~combout\(3))) # (!\addrA~combout\(2) & ((\addrA~combout\(3) & (\reg[25][0]~regout\)) # (!\addrA~combout\(3) & ((\reg[17][0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[25][0]~regout\,
	datad => \reg[17][0]~regout\,
	combout => \Mux31~6_combout\);

-- Location: LCCOMB_X21_Y13_N8
\Equal15~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~6_combout\ = (\addrW~combout\(2) & (\addrW~combout\(4) & (\en~combout\ & \addrW~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrW~combout\(2),
	datab => \addrW~combout\(4),
	datac => \en~combout\,
	datad => \addrW~combout\(0),
	combout => \Equal15~6_combout\);

-- Location: LCCOMB_X20_Y13_N4
\Equal15~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~7_combout\ = (!\addrW~combout\(1) & (\Equal15~6_combout\ & !\addrW~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addrW~combout\(1),
	datac => \Equal15~6_combout\,
	datad => \addrW~combout\(3),
	combout => \Equal15~7_combout\);

-- Location: LCFF_X21_Y15_N1
\reg[21][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(0),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[21][0]~regout\);

-- Location: LCCOMB_X20_Y13_N26
\Equal15~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~11_combout\ = (!\addrW~combout\(1) & (\Equal15~6_combout\ & \addrW~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addrW~combout\(1),
	datac => \Equal15~6_combout\,
	datad => \addrW~combout\(3),
	combout => \Equal15~11_combout\);

-- Location: LCFF_X21_Y15_N27
\reg[29][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(0),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[29][0]~regout\);

-- Location: LCCOMB_X21_Y15_N0
\Mux31~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~7_combout\ = (\addrA~combout\(2) & ((\Mux31~6_combout\ & ((\reg[29][0]~regout\))) # (!\Mux31~6_combout\ & (\reg[21][0]~regout\)))) # (!\addrA~combout\(2) & (\Mux31~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \Mux31~6_combout\,
	datac => \reg[21][0]~regout\,
	datad => \reg[29][0]~regout\,
	combout => \Mux31~7_combout\);

-- Location: LCCOMB_X21_Y13_N0
\Equal15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~0_combout\ = (!\addrW~combout\(2) & (\addrW~combout\(4) & (\en~combout\ & !\addrW~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrW~combout\(2),
	datab => \addrW~combout\(4),
	datac => \en~combout\,
	datad => \addrW~combout\(0),
	combout => \Equal15~0_combout\);

-- Location: LCCOMB_X21_Y13_N20
\Equal15~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~12_combout\ = (!\addrW~combout\(1) & (\addrW~combout\(3) & \Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrW~combout\(1),
	datab => \addrW~combout\(3),
	datad => \Equal15~0_combout\,
	combout => \Equal15~12_combout\);

-- Location: LCFF_X24_Y13_N25
\reg[24][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(0),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[24][0]~regout\);

-- Location: LCCOMB_X21_Y13_N4
\Equal15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~2_combout\ = (\addrW~combout\(2) & (\addrW~combout\(4) & (\en~combout\ & !\addrW~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrW~combout\(2),
	datab => \addrW~combout\(4),
	datac => \en~combout\,
	datad => \addrW~combout\(0),
	combout => \Equal15~2_combout\);

-- Location: LCCOMB_X20_Y13_N28
\Equal15~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~13_combout\ = (!\addrW~combout\(3) & (!\addrW~combout\(1) & \Equal15~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addrW~combout\(3),
	datac => \addrW~combout\(1),
	datad => \Equal15~2_combout\,
	combout => \Equal15~13_combout\);

-- Location: LCFF_X24_Y12_N1
\reg[20][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(0),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[20][0]~regout\);

-- Location: LCCOMB_X21_Y13_N30
\Equal15~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~14_combout\ = (!\addrW~combout\(1) & (!\addrW~combout\(3) & \Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrW~combout\(1),
	datab => \addrW~combout\(3),
	datad => \Equal15~0_combout\,
	combout => \Equal15~14_combout\);

-- Location: LCFF_X24_Y12_N27
\reg[16][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(0),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[16][0]~regout\);

-- Location: LCCOMB_X24_Y12_N0
\Mux31~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~8_combout\ = (\addrA~combout\(3) & (\addrA~combout\(2))) # (!\addrA~combout\(3) & ((\addrA~combout\(2) & (\reg[20][0]~regout\)) # (!\addrA~combout\(2) & ((\reg[16][0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \reg[20][0]~regout\,
	datad => \reg[16][0]~regout\,
	combout => \Mux31~8_combout\);

-- Location: LCCOMB_X24_Y13_N24
\Mux31~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~9_combout\ = (\addrA~combout\(3) & ((\Mux31~8_combout\ & (\reg[28][0]~regout\)) # (!\Mux31~8_combout\ & ((\reg[24][0]~regout\))))) # (!\addrA~combout\(3) & (((\Mux31~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[28][0]~regout\,
	datab => \addrA~combout\(3),
	datac => \reg[24][0]~regout\,
	datad => \Mux31~8_combout\,
	combout => \Mux31~9_combout\);

-- Location: LCCOMB_X23_Y13_N16
\Mux31~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~10_combout\ = (\addrA~combout\(1) & (((\addrA~combout\(0))))) # (!\addrA~combout\(1) & ((\addrA~combout\(0) & (\Mux31~7_combout\)) # (!\addrA~combout\(0) & ((\Mux31~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \Mux31~7_combout\,
	datac => \addrA~combout\(0),
	datad => \Mux31~9_combout\,
	combout => \Mux31~10_combout\);

-- Location: LCCOMB_X20_Y13_N30
\Equal15~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~19_combout\ = (\addrW~combout\(1) & (\Equal15~6_combout\ & \addrW~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addrW~combout\(1),
	datac => \Equal15~6_combout\,
	datad => \addrW~combout\(3),
	combout => \Equal15~19_combout\);

-- Location: LCFF_X20_Y15_N27
\reg[31][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(0),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[31][0]~regout\);

-- Location: LCCOMB_X20_Y13_N16
\Equal15~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~16_combout\ = (\addrW~combout\(1) & (\Equal15~8_combout\ & \addrW~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addrW~combout\(1),
	datac => \Equal15~8_combout\,
	datad => \addrW~combout\(3),
	combout => \Equal15~16_combout\);

-- Location: LCFF_X20_Y15_N1
\reg[27][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(0),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[27][0]~regout\);

-- Location: LCCOMB_X20_Y13_N2
\Equal15~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~17_combout\ = (\addrW~combout\(1) & (\Equal15~6_combout\ & !\addrW~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addrW~combout\(1),
	datac => \Equal15~6_combout\,
	datad => \addrW~combout\(3),
	combout => \Equal15~17_combout\);

-- Location: LCFF_X20_Y17_N17
\reg[23][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(0),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[23][0]~regout\);

-- Location: LCCOMB_X20_Y13_N20
\Equal15~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~18_combout\ = (\addrW~combout\(1) & (\Equal15~8_combout\ & !\addrW~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addrW~combout\(1),
	datac => \Equal15~8_combout\,
	datad => \addrW~combout\(3),
	combout => \Equal15~18_combout\);

-- Location: LCFF_X20_Y17_N11
\reg[19][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(0),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[19][0]~regout\);

-- Location: LCCOMB_X20_Y17_N16
\Mux31~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~11_combout\ = (\addrA~combout\(3) & (\addrA~combout\(2))) # (!\addrA~combout\(3) & ((\addrA~combout\(2) & (\reg[23][0]~regout\)) # (!\addrA~combout\(2) & ((\reg[19][0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \reg[23][0]~regout\,
	datad => \reg[19][0]~regout\,
	combout => \Mux31~11_combout\);

-- Location: LCCOMB_X20_Y15_N0
\Mux31~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~12_combout\ = (\addrA~combout\(3) & ((\Mux31~11_combout\ & (\reg[31][0]~regout\)) # (!\Mux31~11_combout\ & ((\reg[27][0]~regout\))))) # (!\addrA~combout\(3) & (((\Mux31~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \reg[31][0]~regout\,
	datac => \reg[27][0]~regout\,
	datad => \Mux31~11_combout\,
	combout => \Mux31~12_combout\);

-- Location: LCCOMB_X20_Y13_N8
\Equal15~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~3_combout\ = (!\addrW~combout\(3) & (\addrW~combout\(1) & \Equal15~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addrW~combout\(3),
	datac => \addrW~combout\(1),
	datad => \Equal15~2_combout\,
	combout => \Equal15~3_combout\);

-- Location: LCFF_X20_Y12_N1
\reg[22][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(0),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[22][0]~regout\);

-- Location: LCCOMB_X21_Y13_N14
\Equal15~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~4_combout\ = (\addrW~combout\(1) & (!\addrW~combout\(3) & \Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrW~combout\(1),
	datab => \addrW~combout\(3),
	datad => \Equal15~0_combout\,
	combout => \Equal15~4_combout\);

-- Location: LCFF_X20_Y12_N11
\reg[18][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(0),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[18][0]~regout\);

-- Location: LCCOMB_X20_Y12_N0
\Mux31~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~4_combout\ = (\addrA~combout\(2) & ((\addrA~combout\(3)) # ((\reg[22][0]~regout\)))) # (!\addrA~combout\(2) & (!\addrA~combout\(3) & ((\reg[18][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[22][0]~regout\,
	datad => \reg[18][0]~regout\,
	combout => \Mux31~4_combout\);

-- Location: LCCOMB_X21_Y13_N2
\Equal15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~1_combout\ = (\addrW~combout\(1) & (\addrW~combout\(3) & \Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrW~combout\(1),
	datab => \addrW~combout\(3),
	datad => \Equal15~0_combout\,
	combout => \Equal15~1_combout\);

-- Location: LCFF_X24_Y17_N17
\reg[26][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(0),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[26][0]~regout\);

-- Location: LCCOMB_X20_Y13_N18
\Equal15~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~5_combout\ = (\addrW~combout\(3) & (\addrW~combout\(1) & \Equal15~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addrW~combout\(3),
	datac => \addrW~combout\(1),
	datad => \Equal15~2_combout\,
	combout => \Equal15~5_combout\);

-- Location: LCFF_X25_Y17_N25
\reg[30][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(0),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[30][0]~regout\);

-- Location: LCCOMB_X24_Y17_N16
\Mux31~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~5_combout\ = (\addrA~combout\(3) & ((\Mux31~4_combout\ & ((\reg[30][0]~regout\))) # (!\Mux31~4_combout\ & (\reg[26][0]~regout\)))) # (!\addrA~combout\(3) & (\Mux31~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \Mux31~4_combout\,
	datac => \reg[26][0]~regout\,
	datad => \reg[30][0]~regout\,
	combout => \Mux31~5_combout\);

-- Location: LCCOMB_X23_Y13_N10
\Mux31~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~13_combout\ = (\addrA~combout\(1) & ((\Mux31~10_combout\ & (\Mux31~12_combout\)) # (!\Mux31~10_combout\ & ((\Mux31~5_combout\))))) # (!\addrA~combout\(1) & (\Mux31~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \Mux31~10_combout\,
	datac => \Mux31~12_combout\,
	datad => \Mux31~5_combout\,
	combout => \Mux31~13_combout\);

-- Location: LCCOMB_X23_Y13_N22
\Mux31~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~30_combout\ = (\Mux31~14_combout\ & ((\Mux31~27_combout\ & (\Mux31~29_combout\)) # (!\Mux31~27_combout\ & ((\Mux31~13_combout\))))) # (!\Mux31~14_combout\ & (((\Mux31~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~14_combout\,
	datab => \Mux31~29_combout\,
	datac => \Mux31~27_combout\,
	datad => \Mux31~13_combout\,
	combout => \Mux31~30_combout\);

-- Location: LCCOMB_X20_Y12_N8
\Mux31~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~23_combout\ = (\addrA~combout\(3) & !\addrA~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addrA~combout\(3),
	datad => \addrA~combout\(4),
	combout => \Mux31~23_combout\);

-- Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[1]~I\ : cycloneii_io
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
	padio => ww_d_in(1),
	combout => \d_in~combout\(1));

-- Location: LCFF_X22_Y17_N1
\reg[10][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(1),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[10][1]~regout\);

-- Location: LCFF_X22_Y17_N27
\reg[11][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(1),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[11][1]~regout\);

-- Location: LCCOMB_X22_Y17_N0
\Mux30~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (\Mux30~0_combout\ & (((\reg[11][1]~regout\)) # (!\addrA~combout\(1)))) # (!\Mux30~0_combout\ & (\addrA~combout\(1) & (\reg[10][1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~0_combout\,
	datab => \addrA~combout\(1),
	datac => \reg[10][1]~regout\,
	datad => \reg[11][1]~regout\,
	combout => \Mux30~1_combout\);

-- Location: LCFF_X20_Y11_N5
\reg[25][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(1),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[25][1]~regout\);

-- Location: LCFF_X20_Y11_N7
\reg[17][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(1),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[17][1]~regout\);

-- Location: LCCOMB_X20_Y11_N4
\Mux30~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = (\addrA~combout\(2) & (\addrA~combout\(3))) # (!\addrA~combout\(2) & ((\addrA~combout\(3) & (\reg[25][1]~regout\)) # (!\addrA~combout\(3) & ((\reg[17][1]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[25][1]~regout\,
	datad => \reg[17][1]~regout\,
	combout => \Mux30~2_combout\);

-- Location: LCFF_X21_Y15_N29
\reg[21][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(1),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[21][1]~regout\);

-- Location: LCFF_X21_Y15_N7
\reg[29][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(1),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[29][1]~regout\);

-- Location: LCCOMB_X21_Y15_N28
\Mux30~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~3_combout\ = (\addrA~combout\(2) & ((\Mux30~2_combout\ & ((\reg[29][1]~regout\))) # (!\Mux30~2_combout\ & (\reg[21][1]~regout\)))) # (!\addrA~combout\(2) & (\Mux30~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \Mux30~2_combout\,
	datac => \reg[21][1]~regout\,
	datad => \reg[29][1]~regout\,
	combout => \Mux30~3_combout\);

-- Location: LCFF_X25_Y14_N17
\reg[20][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(1),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[20][1]~regout\);

-- Location: LCFF_X26_Y13_N9
\reg[24][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(1),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[24][1]~regout\);

-- Location: LCFF_X26_Y13_N3
\reg[16][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(1),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[16][1]~regout\);

-- Location: LCCOMB_X26_Y13_N8
\Mux30~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~6_combout\ = (\addrA~combout\(2) & (\addrA~combout\(3))) # (!\addrA~combout\(2) & ((\addrA~combout\(3) & (\reg[24][1]~regout\)) # (!\addrA~combout\(3) & ((\reg[16][1]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[24][1]~regout\,
	datad => \reg[16][1]~regout\,
	combout => \Mux30~6_combout\);

-- Location: LCCOMB_X25_Y14_N16
\Mux30~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~7_combout\ = (\addrA~combout\(2) & ((\Mux30~6_combout\ & (\reg[28][1]~regout\)) # (!\Mux30~6_combout\ & ((\reg[20][1]~regout\))))) # (!\addrA~combout\(2) & (((\Mux30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[28][1]~regout\,
	datab => \addrA~combout\(2),
	datac => \reg[20][1]~regout\,
	datad => \Mux30~6_combout\,
	combout => \Mux30~7_combout\);

-- Location: LCCOMB_X22_Y17_N28
\Mux30~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~8_combout\ = (\addrA~combout\(1) & ((\Mux30~5_combout\) # ((\addrA~combout\(0))))) # (!\addrA~combout\(1) & (((!\addrA~combout\(0) & \Mux30~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~5_combout\,
	datab => \addrA~combout\(1),
	datac => \addrA~combout\(0),
	datad => \Mux30~7_combout\,
	combout => \Mux30~8_combout\);

-- Location: LCCOMB_X22_Y17_N22
\Mux30~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~11_combout\ = (\addrA~combout\(0) & ((\Mux30~8_combout\ & (\Mux30~10_combout\)) # (!\Mux30~8_combout\ & ((\Mux30~3_combout\))))) # (!\addrA~combout\(0) & (((\Mux30~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~10_combout\,
	datab => \Mux30~3_combout\,
	datac => \addrA~combout\(0),
	datad => \Mux30~8_combout\,
	combout => \Mux30~11_combout\);

-- Location: LCCOMB_X22_Y17_N8
\Mux30~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~16_combout\ = (\Mux31~14_combout\ & (((\Mux31~23_combout\) # (\Mux30~11_combout\)))) # (!\Mux31~14_combout\ & (\Mux30~15_combout\ & (!\Mux31~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~15_combout\,
	datab => \Mux31~14_combout\,
	datac => \Mux31~23_combout\,
	datad => \Mux30~11_combout\,
	combout => \Mux30~16_combout\);

-- Location: LCFF_X23_Y17_N19
\reg[15][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(1),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[15][1]~regout\);

-- Location: LCFF_X23_Y17_N25
\reg[13][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(1),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[13][1]~regout\);

-- Location: LCCOMB_X25_Y17_N30
\reg[12][1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[12][1]~feeder_combout\ = \d_in~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(1),
	combout => \reg[12][1]~feeder_combout\);

-- Location: LCFF_X25_Y17_N31
\reg[12][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[12][1]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[12][1]~regout\);

-- Location: LCFF_X24_Y17_N23
\reg[14][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(1),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[14][1]~regout\);

-- Location: LCCOMB_X24_Y17_N22
\Mux30~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~17_combout\ = (\addrA~combout\(0) & (((\addrA~combout\(1))))) # (!\addrA~combout\(0) & ((\addrA~combout\(1) & ((\reg[14][1]~regout\))) # (!\addrA~combout\(1) & (\reg[12][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \reg[12][1]~regout\,
	datac => \reg[14][1]~regout\,
	datad => \addrA~combout\(1),
	combout => \Mux30~17_combout\);

-- Location: LCCOMB_X23_Y17_N24
\Mux30~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~18_combout\ = (\addrA~combout\(0) & ((\Mux30~17_combout\ & (\reg[15][1]~regout\)) # (!\Mux30~17_combout\ & ((\reg[13][1]~regout\))))) # (!\addrA~combout\(0) & (((\Mux30~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \reg[15][1]~regout\,
	datac => \reg[13][1]~regout\,
	datad => \Mux30~17_combout\,
	combout => \Mux30~18_combout\);

-- Location: LCCOMB_X22_Y17_N2
\Mux30~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~19_combout\ = (\Mux31~23_combout\ & ((\Mux30~16_combout\ & ((\Mux30~18_combout\))) # (!\Mux30~16_combout\ & (\Mux30~1_combout\)))) # (!\Mux31~23_combout\ & (((\Mux30~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~23_combout\,
	datab => \Mux30~1_combout\,
	datac => \Mux30~16_combout\,
	datad => \Mux30~18_combout\,
	combout => \Mux30~19_combout\);

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[2]~I\ : cycloneii_io
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
	padio => ww_d_in(2),
	combout => \d_in~combout\(2));

-- Location: LCFF_X20_Y11_N17
\reg[25][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(2),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[25][2]~regout\);

-- Location: LCFF_X20_Y11_N27
\reg[17][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(2),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[17][2]~regout\);

-- Location: LCCOMB_X20_Y11_N16
\Mux29~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~6_combout\ = (\addrA~combout\(2) & (\addrA~combout\(3))) # (!\addrA~combout\(2) & ((\addrA~combout\(3) & (\reg[25][2]~regout\)) # (!\addrA~combout\(3) & ((\reg[17][2]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[25][2]~regout\,
	datad => \reg[17][2]~regout\,
	combout => \Mux29~6_combout\);

-- Location: LCFF_X21_Y15_N9
\reg[21][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(2),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[21][2]~regout\);

-- Location: LCCOMB_X21_Y15_N10
\reg[29][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[29][2]~feeder_combout\ = \d_in~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(2),
	combout => \reg[29][2]~feeder_combout\);

-- Location: LCFF_X21_Y15_N11
\reg[29][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[29][2]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[29][2]~regout\);

-- Location: LCCOMB_X21_Y15_N8
\Mux29~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~7_combout\ = (\addrA~combout\(2) & ((\Mux29~6_combout\ & ((\reg[29][2]~regout\))) # (!\Mux29~6_combout\ & (\reg[21][2]~regout\)))) # (!\addrA~combout\(2) & (\Mux29~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \Mux29~6_combout\,
	datac => \reg[21][2]~regout\,
	datad => \reg[29][2]~regout\,
	combout => \Mux29~7_combout\);

-- Location: LCCOMB_X23_Y15_N8
\Mux29~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~10_combout\ = (\addrA~combout\(1) & (((\addrA~combout\(0))))) # (!\addrA~combout\(1) & ((\addrA~combout\(0) & ((\Mux29~7_combout\))) # (!\addrA~combout\(0) & (\Mux29~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~9_combout\,
	datab => \addrA~combout\(1),
	datac => \Mux29~7_combout\,
	datad => \addrA~combout\(0),
	combout => \Mux29~10_combout\);

-- Location: LCFF_X23_Y18_N5
\reg[22][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(2),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[22][2]~regout\);

-- Location: LCCOMB_X23_Y18_N6
\reg[18][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[18][2]~feeder_combout\ = \d_in~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(2),
	combout => \reg[18][2]~feeder_combout\);

-- Location: LCFF_X23_Y18_N7
\reg[18][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[18][2]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[18][2]~regout\);

-- Location: LCCOMB_X23_Y18_N4
\Mux29~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~4_combout\ = (\addrA~combout\(2) & ((\addrA~combout\(3)) # ((\reg[22][2]~regout\)))) # (!\addrA~combout\(2) & (!\addrA~combout\(3) & ((\reg[18][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[22][2]~regout\,
	datad => \reg[18][2]~regout\,
	combout => \Mux29~4_combout\);

-- Location: LCFF_X24_Y17_N9
\reg[26][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(2),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[26][2]~regout\);

-- Location: LCCOMB_X25_Y17_N0
\reg[30][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[30][2]~feeder_combout\ = \d_in~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(2),
	combout => \reg[30][2]~feeder_combout\);

-- Location: LCFF_X25_Y17_N1
\reg[30][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[30][2]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[30][2]~regout\);

-- Location: LCCOMB_X24_Y17_N8
\Mux29~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~5_combout\ = (\addrA~combout\(3) & ((\Mux29~4_combout\ & ((\reg[30][2]~regout\))) # (!\Mux29~4_combout\ & (\reg[26][2]~regout\)))) # (!\addrA~combout\(3) & (\Mux29~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \Mux29~4_combout\,
	datac => \reg[26][2]~regout\,
	datad => \reg[30][2]~regout\,
	combout => \Mux29~5_combout\);

-- Location: LCCOMB_X23_Y15_N18
\Mux29~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~13_combout\ = (\addrA~combout\(1) & ((\Mux29~10_combout\ & (\Mux29~12_combout\)) # (!\Mux29~10_combout\ & ((\Mux29~5_combout\))))) # (!\addrA~combout\(1) & (((\Mux29~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~12_combout\,
	datab => \addrA~combout\(1),
	datac => \Mux29~10_combout\,
	datad => \Mux29~5_combout\,
	combout => \Mux29~13_combout\);

-- Location: LCFF_X23_Y15_N15
\reg[3][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(2),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[3][2]~regout\);

-- Location: LCCOMB_X23_Y15_N14
\Mux29~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~21_combout\ = (\Mux31~23_combout\) # ((\Mux29~14_combout\ & ((\reg[3][2]~regout\) # (!\Mux31~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~14_combout\,
	datab => \Mux31~23_combout\,
	datac => \reg[3][2]~regout\,
	datad => \Mux31~18_combout\,
	combout => \Mux29~21_combout\);

-- Location: LCFF_X21_Y12_N29
\reg[9][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(2),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[9][2]~regout\);

-- Location: LCCOMB_X21_Y12_N22
\reg[11][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[11][2]~feeder_combout\ = \d_in~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(2),
	combout => \reg[11][2]~feeder_combout\);

-- Location: LCFF_X21_Y12_N23
\reg[11][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[11][2]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[11][2]~regout\);

-- Location: LCCOMB_X21_Y12_N28
\Mux29~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~20_combout\ = (\Mux29~19_combout\ & (((\reg[11][2]~regout\)) # (!\addrA~combout\(0)))) # (!\Mux29~19_combout\ & (\addrA~combout\(0) & (\reg[9][2]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~19_combout\,
	datab => \addrA~combout\(0),
	datac => \reg[9][2]~regout\,
	datad => \reg[11][2]~regout\,
	combout => \Mux29~20_combout\);

-- Location: LCCOMB_X21_Y12_N4
\Mux29~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~26_combout\ = (!\addrA~combout\(4) & (((\Mux29~20_combout\) # (\addrA~combout\(2))) # (!\addrA~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \Mux29~20_combout\,
	datac => \addrA~combout\(4),
	datad => \addrA~combout\(2),
	combout => \Mux29~26_combout\);

-- Location: LCFF_X24_Y15_N5
\reg[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(2),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[1][2]~regout\);

-- Location: LCCOMB_X24_Y15_N4
\Mux29~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~14_combout\ = (\Mux31~16_combout\ & ((!\Mux31~15_combout\))) # (!\Mux31~16_combout\ & (\reg[1][2]~regout\ & \Mux31~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux31~16_combout\,
	datac => \reg[1][2]~regout\,
	datad => \Mux31~15_combout\,
	combout => \Mux29~14_combout\);

-- Location: LCCOMB_X23_Y15_N24
\Mux29~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~22_combout\ = (\Mux29~26_combout\ & ((\Mux29~21_combout\) # ((\Mux29~18_combout\ & !\Mux29~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~18_combout\,
	datab => \Mux29~21_combout\,
	datac => \Mux29~26_combout\,
	datad => \Mux29~14_combout\,
	combout => \Mux29~22_combout\);

-- Location: LCCOMB_X24_Y16_N22
\reg[15][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[15][2]~feeder_combout\ = \d_in~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(2),
	combout => \reg[15][2]~feeder_combout\);

-- Location: LCFF_X24_Y16_N23
\reg[15][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[15][2]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[15][2]~regout\);

-- Location: LCFF_X24_Y17_N19
\reg[14][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(2),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[14][2]~regout\);

-- Location: LCFF_X24_Y16_N5
\reg[13][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(2),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[13][2]~regout\);

-- Location: LCCOMB_X24_Y16_N4
\Mux29~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~23_combout\ = (\addrA~combout\(1) & (((\addrA~combout\(0))))) # (!\addrA~combout\(1) & ((\addrA~combout\(0) & ((\reg[13][2]~regout\))) # (!\addrA~combout\(0) & (\reg[12][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[12][2]~regout\,
	datab => \addrA~combout\(1),
	datac => \reg[13][2]~regout\,
	datad => \addrA~combout\(0),
	combout => \Mux29~23_combout\);

-- Location: LCCOMB_X24_Y17_N18
\Mux29~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~24_combout\ = (\addrA~combout\(1) & ((\Mux29~23_combout\ & (\reg[15][2]~regout\)) # (!\Mux29~23_combout\ & ((\reg[14][2]~regout\))))) # (!\addrA~combout\(1) & (((\Mux29~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \reg[15][2]~regout\,
	datac => \reg[14][2]~regout\,
	datad => \Mux29~23_combout\,
	combout => \Mux29~24_combout\);

-- Location: LCCOMB_X23_Y15_N10
\Mux29~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~25_combout\ = (\Mux31~14_combout\ & ((\Mux29~22_combout\ & ((\Mux29~24_combout\))) # (!\Mux29~22_combout\ & (\Mux29~13_combout\)))) # (!\Mux31~14_combout\ & (((\Mux29~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~14_combout\,
	datab => \Mux29~13_combout\,
	datac => \Mux29~22_combout\,
	datad => \Mux29~24_combout\,
	combout => \Mux29~25_combout\);

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[3]~I\ : cycloneii_io
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
	padio => ww_d_in(3),
	combout => \d_in~combout\(3));

-- Location: LCFF_X22_Y17_N13
\reg[10][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(3),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[10][3]~regout\);

-- Location: LCCOMB_X22_Y17_N6
\reg[11][3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[11][3]~feeder_combout\ = \d_in~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(3),
	combout => \reg[11][3]~feeder_combout\);

-- Location: LCFF_X22_Y17_N7
\reg[11][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[11][3]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[11][3]~regout\);

-- Location: LCCOMB_X22_Y17_N12
\Mux28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (\Mux28~0_combout\ & (((\reg[11][3]~regout\)) # (!\addrA~combout\(1)))) # (!\Mux28~0_combout\ & (\addrA~combout\(1) & (\reg[10][3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~0_combout\,
	datab => \addrA~combout\(1),
	datac => \reg[10][3]~regout\,
	datad => \reg[11][3]~regout\,
	combout => \Mux28~1_combout\);

-- Location: LCFF_X25_Y15_N15
\reg[3][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(3),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[3][3]~regout\);

-- Location: LCFF_X25_Y15_N5
\reg[2][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(3),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[2][3]~regout\);

-- Location: LCFF_X24_Y15_N15
\reg[1][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(3),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[1][3]~regout\);

-- Location: LCCOMB_X24_Y15_N14
\Mux28~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~14_combout\ = (\Mux31~16_combout\ & ((\Mux28~13_combout\) # ((!\Mux31~15_combout\)))) # (!\Mux31~16_combout\ & (((\reg[1][3]~regout\ & \Mux31~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~13_combout\,
	datab => \Mux31~16_combout\,
	datac => \reg[1][3]~regout\,
	datad => \Mux31~15_combout\,
	combout => \Mux28~14_combout\);

-- Location: LCCOMB_X25_Y15_N4
\Mux28~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~15_combout\ = (\Mux31~18_combout\ & ((\Mux28~14_combout\ & (\reg[3][3]~regout\)) # (!\Mux28~14_combout\ & ((\reg[2][3]~regout\))))) # (!\Mux31~18_combout\ & (((\Mux28~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~18_combout\,
	datab => \reg[3][3]~regout\,
	datac => \reg[2][3]~regout\,
	datad => \Mux28~14_combout\,
	combout => \Mux28~15_combout\);

-- Location: LCCOMB_X25_Y15_N24
\Mux28~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~16_combout\ = (\Mux31~14_combout\ & ((\Mux28~11_combout\) # ((\Mux31~23_combout\)))) # (!\Mux31~14_combout\ & (((\Mux28~15_combout\ & !\Mux31~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~11_combout\,
	datab => \Mux31~14_combout\,
	datac => \Mux28~15_combout\,
	datad => \Mux31~23_combout\,
	combout => \Mux28~16_combout\);

-- Location: LCFF_X23_Y17_N31
\reg[15][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(3),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[15][3]~regout\);

-- Location: LCFF_X23_Y17_N5
\reg[13][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(3),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[13][3]~regout\);

-- Location: LCCOMB_X25_Y17_N6
\reg[12][3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[12][3]~feeder_combout\ = \d_in~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(3),
	combout => \reg[12][3]~feeder_combout\);

-- Location: LCFF_X25_Y17_N7
\reg[12][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[12][3]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[12][3]~regout\);

-- Location: LCFF_X24_Y17_N31
\reg[14][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(3),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[14][3]~regout\);

-- Location: LCCOMB_X24_Y17_N30
\Mux28~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~17_combout\ = (\addrA~combout\(0) & (((\addrA~combout\(1))))) # (!\addrA~combout\(0) & ((\addrA~combout\(1) & ((\reg[14][3]~regout\))) # (!\addrA~combout\(1) & (\reg[12][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \reg[12][3]~regout\,
	datac => \reg[14][3]~regout\,
	datad => \addrA~combout\(1),
	combout => \Mux28~17_combout\);

-- Location: LCCOMB_X23_Y17_N4
\Mux28~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~18_combout\ = (\addrA~combout\(0) & ((\Mux28~17_combout\ & (\reg[15][3]~regout\)) # (!\Mux28~17_combout\ & ((\reg[13][3]~regout\))))) # (!\addrA~combout\(0) & (((\Mux28~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \reg[15][3]~regout\,
	datac => \reg[13][3]~regout\,
	datad => \Mux28~17_combout\,
	combout => \Mux28~18_combout\);

-- Location: LCCOMB_X22_Y17_N16
\Mux28~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~19_combout\ = (\Mux28~16_combout\ & (((\Mux28~18_combout\) # (!\Mux31~23_combout\)))) # (!\Mux28~16_combout\ & (\Mux28~1_combout\ & (\Mux31~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~1_combout\,
	datab => \Mux28~16_combout\,
	datac => \Mux31~23_combout\,
	datad => \Mux28~18_combout\,
	combout => \Mux28~19_combout\);

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[4]~I\ : cycloneii_io
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
	padio => ww_d_in(4),
	combout => \d_in~combout\(4));

-- Location: LCFF_X24_Y16_N25
\reg[13][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(4),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[13][4]~regout\);

-- Location: LCCOMB_X25_Y17_N10
\reg[12][4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[12][4]~feeder_combout\ = \d_in~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(4),
	combout => \reg[12][4]~feeder_combout\);

-- Location: LCFF_X25_Y17_N11
\reg[12][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[12][4]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[12][4]~regout\);

-- Location: LCCOMB_X24_Y16_N24
\Mux27~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~23_combout\ = (\addrA~combout\(0) & ((\addrA~combout\(1)) # ((\reg[13][4]~regout\)))) # (!\addrA~combout\(0) & (!\addrA~combout\(1) & ((\reg[12][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \addrA~combout\(1),
	datac => \reg[13][4]~regout\,
	datad => \reg[12][4]~regout\,
	combout => \Mux27~23_combout\);

-- Location: LCFF_X24_Y17_N11
\reg[14][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(4),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[14][4]~regout\);

-- Location: LCFF_X24_Y16_N19
\reg[15][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(4),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[15][4]~regout\);

-- Location: LCCOMB_X24_Y17_N10
\Mux27~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~24_combout\ = (\addrA~combout\(1) & ((\Mux27~23_combout\ & ((\reg[15][4]~regout\))) # (!\Mux27~23_combout\ & (\reg[14][4]~regout\)))) # (!\addrA~combout\(1) & (\Mux27~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \Mux27~23_combout\,
	datac => \reg[14][4]~regout\,
	datad => \reg[15][4]~regout\,
	combout => \Mux27~24_combout\);

-- Location: LCFF_X23_Y15_N3
\reg[3][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(4),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[3][4]~regout\);

-- Location: LCFF_X23_Y15_N1
\reg[2][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(4),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[2][4]~regout\);

-- Location: LCCOMB_X23_Y15_N0
\Mux27~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~18_combout\ = (\Mux27~17_combout\ & ((\reg[3][4]~regout\) # ((!\Mux31~18_combout\)))) # (!\Mux27~17_combout\ & (((\reg[2][4]~regout\ & \Mux31~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~17_combout\,
	datab => \reg[3][4]~regout\,
	datac => \reg[2][4]~regout\,
	datad => \Mux31~18_combout\,
	combout => \Mux27~18_combout\);

-- Location: LCFF_X24_Y15_N25
\reg[1][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(4),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[1][4]~regout\);

-- Location: LCCOMB_X24_Y15_N24
\Mux27~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~14_combout\ = (\Mux31~16_combout\ & ((!\Mux31~15_combout\))) # (!\Mux31~16_combout\ & (\reg[1][4]~regout\ & \Mux31~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux31~16_combout\,
	datac => \reg[1][4]~regout\,
	datad => \Mux31~15_combout\,
	combout => \Mux27~14_combout\);

-- Location: LCCOMB_X23_Y15_N2
\Mux27~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~21_combout\ = (\Mux31~23_combout\) # ((\Mux27~14_combout\ & ((\reg[3][4]~regout\) # (!\Mux31~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~14_combout\,
	datab => \Mux31~23_combout\,
	datac => \reg[3][4]~regout\,
	datad => \Mux31~18_combout\,
	combout => \Mux27~21_combout\);

-- Location: LCCOMB_X23_Y15_N20
\Mux27~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~22_combout\ = (\Mux27~26_combout\ & ((\Mux27~21_combout\) # ((\Mux27~18_combout\ & !\Mux27~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~26_combout\,
	datab => \Mux27~18_combout\,
	datac => \Mux27~14_combout\,
	datad => \Mux27~21_combout\,
	combout => \Mux27~22_combout\);

-- Location: LCFF_X23_Y18_N29
\reg[22][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(4),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[22][4]~regout\);

-- Location: LCFF_X23_Y18_N23
\reg[18][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(4),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[18][4]~regout\);

-- Location: LCCOMB_X23_Y18_N28
\Mux27~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~4_combout\ = (\addrA~combout\(2) & ((\addrA~combout\(3)) # ((\reg[22][4]~regout\)))) # (!\addrA~combout\(2) & (!\addrA~combout\(3) & ((\reg[18][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[22][4]~regout\,
	datad => \reg[18][4]~regout\,
	combout => \Mux27~4_combout\);

-- Location: LCFF_X24_Y17_N25
\reg[26][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(4),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[26][4]~regout\);

-- Location: LCCOMB_X25_Y17_N16
\reg[30][4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[30][4]~feeder_combout\ = \d_in~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(4),
	combout => \reg[30][4]~feeder_combout\);

-- Location: LCFF_X25_Y17_N17
\reg[30][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[30][4]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[30][4]~regout\);

-- Location: LCCOMB_X24_Y17_N24
\Mux27~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~5_combout\ = (\addrA~combout\(3) & ((\Mux27~4_combout\ & ((\reg[30][4]~regout\))) # (!\Mux27~4_combout\ & (\reg[26][4]~regout\)))) # (!\addrA~combout\(3) & (\Mux27~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \Mux27~4_combout\,
	datac => \reg[26][4]~regout\,
	datad => \reg[30][4]~regout\,
	combout => \Mux27~5_combout\);

-- Location: LCFF_X21_Y15_N19
\reg[29][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(4),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[29][4]~regout\);

-- Location: LCFF_X21_Y15_N17
\reg[21][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(4),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[21][4]~regout\);

-- Location: LCFF_X20_Y11_N9
\reg[25][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(4),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[25][4]~regout\);

-- Location: LCFF_X20_Y11_N19
\reg[17][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(4),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[17][4]~regout\);

-- Location: LCCOMB_X20_Y11_N8
\Mux27~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~6_combout\ = (\addrA~combout\(2) & (\addrA~combout\(3))) # (!\addrA~combout\(2) & ((\addrA~combout\(3) & (\reg[25][4]~regout\)) # (!\addrA~combout\(3) & ((\reg[17][4]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[25][4]~regout\,
	datad => \reg[17][4]~regout\,
	combout => \Mux27~6_combout\);

-- Location: LCCOMB_X21_Y15_N16
\Mux27~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~7_combout\ = (\addrA~combout\(2) & ((\Mux27~6_combout\ & (\reg[29][4]~regout\)) # (!\Mux27~6_combout\ & ((\reg[21][4]~regout\))))) # (!\addrA~combout\(2) & (((\Mux27~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \reg[29][4]~regout\,
	datac => \reg[21][4]~regout\,
	datad => \Mux27~6_combout\,
	combout => \Mux27~7_combout\);

-- Location: LCCOMB_X23_Y15_N4
\Mux27~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~10_combout\ = (\addrA~combout\(1) & (((\addrA~combout\(0))))) # (!\addrA~combout\(1) & ((\addrA~combout\(0) & ((\Mux27~7_combout\))) # (!\addrA~combout\(0) & (\Mux27~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~9_combout\,
	datab => \addrA~combout\(1),
	datac => \Mux27~7_combout\,
	datad => \addrA~combout\(0),
	combout => \Mux27~10_combout\);

-- Location: LCCOMB_X23_Y15_N30
\Mux27~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~13_combout\ = (\Mux27~10_combout\ & ((\Mux27~12_combout\) # ((!\addrA~combout\(1))))) # (!\Mux27~10_combout\ & (((\Mux27~5_combout\ & \addrA~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~12_combout\,
	datab => \Mux27~5_combout\,
	datac => \Mux27~10_combout\,
	datad => \addrA~combout\(1),
	combout => \Mux27~13_combout\);

-- Location: LCCOMB_X23_Y15_N22
\Mux27~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~25_combout\ = (\Mux31~14_combout\ & ((\Mux27~22_combout\ & (\Mux27~24_combout\)) # (!\Mux27~22_combout\ & ((\Mux27~13_combout\))))) # (!\Mux31~14_combout\ & (((\Mux27~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~14_combout\,
	datab => \Mux27~24_combout\,
	datac => \Mux27~22_combout\,
	datad => \Mux27~13_combout\,
	combout => \Mux27~25_combout\);

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[5]~I\ : cycloneii_io
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
	padio => ww_d_in(5),
	combout => \d_in~combout\(5));

-- Location: LCFF_X22_Y17_N11
\reg[10][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(5),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[10][5]~regout\);

-- Location: LCFF_X23_Y14_N13
\reg[9][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(5),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[9][5]~regout\);

-- Location: LCCOMB_X24_Y14_N4
\reg[8][5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[8][5]~feeder_combout\ = \d_in~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(5),
	combout => \reg[8][5]~feeder_combout\);

-- Location: LCFF_X24_Y14_N5
\reg[8][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[8][5]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[8][5]~regout\);

-- Location: LCCOMB_X23_Y14_N12
\Mux26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\addrA~combout\(1) & (\addrA~combout\(0))) # (!\addrA~combout\(1) & ((\addrA~combout\(0) & (\reg[9][5]~regout\)) # (!\addrA~combout\(0) & ((\reg[8][5]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \addrA~combout\(0),
	datac => \reg[9][5]~regout\,
	datad => \reg[8][5]~regout\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X22_Y17_N10
\Mux26~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (\addrA~combout\(1) & ((\Mux26~0_combout\ & (\reg[11][5]~regout\)) # (!\Mux26~0_combout\ & ((\reg[10][5]~regout\))))) # (!\addrA~combout\(1) & (((\Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[11][5]~regout\,
	datab => \addrA~combout\(1),
	datac => \reg[10][5]~regout\,
	datad => \Mux26~0_combout\,
	combout => \Mux26~1_combout\);

-- Location: LCCOMB_X23_Y17_N2
\reg[15][5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[15][5]~feeder_combout\ = \d_in~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(5),
	combout => \reg[15][5]~feeder_combout\);

-- Location: LCFF_X23_Y17_N3
\reg[15][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[15][5]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[15][5]~regout\);

-- Location: LCFF_X23_Y17_N9
\reg[13][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(5),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[13][5]~regout\);

-- Location: LCFF_X25_Y17_N13
\reg[12][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(5),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[12][5]~regout\);

-- Location: LCFF_X24_Y17_N5
\reg[14][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(5),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[14][5]~regout\);

-- Location: LCCOMB_X24_Y17_N4
\Mux26~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~17_combout\ = (\addrA~combout\(0) & (((\addrA~combout\(1))))) # (!\addrA~combout\(0) & ((\addrA~combout\(1) & ((\reg[14][5]~regout\))) # (!\addrA~combout\(1) & (\reg[12][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \reg[12][5]~regout\,
	datac => \reg[14][5]~regout\,
	datad => \addrA~combout\(1),
	combout => \Mux26~17_combout\);

-- Location: LCCOMB_X23_Y17_N8
\Mux26~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~18_combout\ = (\addrA~combout\(0) & ((\Mux26~17_combout\ & (\reg[15][5]~regout\)) # (!\Mux26~17_combout\ & ((\reg[13][5]~regout\))))) # (!\addrA~combout\(0) & (((\Mux26~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \reg[15][5]~regout\,
	datac => \reg[13][5]~regout\,
	datad => \Mux26~17_combout\,
	combout => \Mux26~18_combout\);

-- Location: LCFF_X25_Y15_N29
\reg[3][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(5),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[3][5]~regout\);

-- Location: LCFF_X25_Y15_N27
\reg[2][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(5),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[2][5]~regout\);

-- Location: LCFF_X24_Y15_N3
\reg[1][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(5),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[1][5]~regout\);

-- Location: LCCOMB_X24_Y15_N2
\Mux26~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~14_combout\ = (\Mux31~16_combout\ & ((\Mux26~13_combout\) # ((!\Mux31~15_combout\)))) # (!\Mux31~16_combout\ & (((\reg[1][5]~regout\ & \Mux31~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~13_combout\,
	datab => \Mux31~16_combout\,
	datac => \reg[1][5]~regout\,
	datad => \Mux31~15_combout\,
	combout => \Mux26~14_combout\);

-- Location: LCCOMB_X25_Y15_N26
\Mux26~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~15_combout\ = (\Mux31~18_combout\ & ((\Mux26~14_combout\ & (\reg[3][5]~regout\)) # (!\Mux26~14_combout\ & ((\reg[2][5]~regout\))))) # (!\Mux31~18_combout\ & (((\Mux26~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~18_combout\,
	datab => \reg[3][5]~regout\,
	datac => \reg[2][5]~regout\,
	datad => \Mux26~14_combout\,
	combout => \Mux26~15_combout\);

-- Location: LCCOMB_X22_Y17_N18
\Mux26~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~16_combout\ = (\Mux31~14_combout\ & ((\Mux26~11_combout\) # ((\Mux31~23_combout\)))) # (!\Mux31~14_combout\ & (((!\Mux31~23_combout\ & \Mux26~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~11_combout\,
	datab => \Mux31~14_combout\,
	datac => \Mux31~23_combout\,
	datad => \Mux26~15_combout\,
	combout => \Mux26~16_combout\);

-- Location: LCCOMB_X22_Y17_N4
\Mux26~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~19_combout\ = (\Mux31~23_combout\ & ((\Mux26~16_combout\ & ((\Mux26~18_combout\))) # (!\Mux26~16_combout\ & (\Mux26~1_combout\)))) # (!\Mux31~23_combout\ & (((\Mux26~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~1_combout\,
	datab => \Mux31~23_combout\,
	datac => \Mux26~18_combout\,
	datad => \Mux26~16_combout\,
	combout => \Mux26~19_combout\);

-- Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[6]~I\ : cycloneii_io
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
	padio => ww_d_in(6),
	combout => \d_in~combout\(6));

-- Location: LCFF_X19_Y15_N13
\reg[27][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(6),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[27][6]~regout\);

-- Location: LCFF_X20_Y17_N9
\reg[23][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(6),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[23][6]~regout\);

-- Location: LCCOMB_X20_Y17_N2
\reg[19][6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[19][6]~feeder_combout\ = \d_in~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(6),
	combout => \reg[19][6]~feeder_combout\);

-- Location: LCFF_X20_Y17_N3
\reg[19][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[19][6]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[19][6]~regout\);

-- Location: LCCOMB_X20_Y17_N8
\Mux25~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~11_combout\ = (\addrA~combout\(3) & (\addrA~combout\(2))) # (!\addrA~combout\(3) & ((\addrA~combout\(2) & (\reg[23][6]~regout\)) # (!\addrA~combout\(2) & ((\reg[19][6]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \reg[23][6]~regout\,
	datad => \reg[19][6]~regout\,
	combout => \Mux25~11_combout\);

-- Location: LCCOMB_X19_Y15_N12
\Mux25~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~12_combout\ = (\addrA~combout\(3) & ((\Mux25~11_combout\ & (\reg[31][6]~regout\)) # (!\Mux25~11_combout\ & ((\reg[27][6]~regout\))))) # (!\addrA~combout\(3) & (((\Mux25~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[31][6]~regout\,
	datab => \addrA~combout\(3),
	datac => \reg[27][6]~regout\,
	datad => \Mux25~11_combout\,
	combout => \Mux25~12_combout\);

-- Location: LCFF_X20_Y11_N1
\reg[25][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(6),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[25][6]~regout\);

-- Location: LCFF_X20_Y11_N3
\reg[17][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(6),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[17][6]~regout\);

-- Location: LCCOMB_X20_Y11_N0
\Mux25~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~6_combout\ = (\addrA~combout\(2) & (\addrA~combout\(3))) # (!\addrA~combout\(2) & ((\addrA~combout\(3) & (\reg[25][6]~regout\)) # (!\addrA~combout\(3) & ((\reg[17][6]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[25][6]~regout\,
	datad => \reg[17][6]~regout\,
	combout => \Mux25~6_combout\);

-- Location: LCFF_X21_Y15_N25
\reg[21][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(6),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[21][6]~regout\);

-- Location: LCFF_X21_Y15_N3
\reg[29][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(6),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[29][6]~regout\);

-- Location: LCCOMB_X21_Y15_N24
\Mux25~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~7_combout\ = (\addrA~combout\(2) & ((\Mux25~6_combout\ & ((\reg[29][6]~regout\))) # (!\Mux25~6_combout\ & (\reg[21][6]~regout\)))) # (!\addrA~combout\(2) & (\Mux25~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \Mux25~6_combout\,
	datac => \reg[21][6]~regout\,
	datad => \reg[29][6]~regout\,
	combout => \Mux25~7_combout\);

-- Location: LCFF_X25_Y14_N13
\reg[20][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(6),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[20][6]~regout\);

-- Location: LCCOMB_X25_Y14_N30
\reg[28][6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[28][6]~feeder_combout\ = \d_in~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(6),
	combout => \reg[28][6]~feeder_combout\);

-- Location: LCCOMB_X20_Y13_N14
\Equal15~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~15_combout\ = (\addrW~combout\(3) & (!\addrW~combout\(1) & \Equal15~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addrW~combout\(3),
	datac => \addrW~combout\(1),
	datad => \Equal15~2_combout\,
	combout => \Equal15~15_combout\);

-- Location: LCFF_X25_Y14_N31
\reg[28][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[28][6]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[28][6]~regout\);

-- Location: LCCOMB_X25_Y14_N12
\Mux25~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~9_combout\ = (\Mux25~8_combout\ & (((\reg[28][6]~regout\)) # (!\addrA~combout\(2)))) # (!\Mux25~8_combout\ & (\addrA~combout\(2) & (\reg[20][6]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~8_combout\,
	datab => \addrA~combout\(2),
	datac => \reg[20][6]~regout\,
	datad => \reg[28][6]~regout\,
	combout => \Mux25~9_combout\);

-- Location: LCCOMB_X25_Y15_N22
\Mux25~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~10_combout\ = (\addrA~combout\(0) & ((\Mux25~7_combout\) # ((\addrA~combout\(1))))) # (!\addrA~combout\(0) & (((!\addrA~combout\(1) & \Mux25~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \Mux25~7_combout\,
	datac => \addrA~combout\(1),
	datad => \Mux25~9_combout\,
	combout => \Mux25~10_combout\);

-- Location: LCCOMB_X25_Y15_N0
\Mux25~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~13_combout\ = (\addrA~combout\(1) & ((\Mux25~10_combout\ & ((\Mux25~12_combout\))) # (!\Mux25~10_combout\ & (\Mux25~5_combout\)))) # (!\addrA~combout\(1) & (((\Mux25~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~5_combout\,
	datab => \Mux25~12_combout\,
	datac => \addrA~combout\(1),
	datad => \Mux25~10_combout\,
	combout => \Mux25~13_combout\);

-- Location: LCFF_X24_Y15_N29
\reg[1][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(6),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[1][6]~regout\);

-- Location: LCCOMB_X24_Y15_N28
\Mux25~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~14_combout\ = (\Mux31~16_combout\ & ((!\Mux31~15_combout\))) # (!\Mux31~16_combout\ & (\reg[1][6]~regout\ & \Mux31~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux31~16_combout\,
	datac => \reg[1][6]~regout\,
	datad => \Mux31~15_combout\,
	combout => \Mux25~14_combout\);

-- Location: LCFF_X21_Y12_N13
\reg[9][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(6),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[9][6]~regout\);

-- Location: LCFF_X21_Y12_N31
\reg[11][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(6),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[11][6]~regout\);

-- Location: LCCOMB_X21_Y12_N12
\Mux25~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~20_combout\ = (\Mux25~19_combout\ & (((\reg[11][6]~regout\)) # (!\addrA~combout\(0)))) # (!\Mux25~19_combout\ & (\addrA~combout\(0) & (\reg[9][6]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~19_combout\,
	datab => \addrA~combout\(0),
	datac => \reg[9][6]~regout\,
	datad => \reg[11][6]~regout\,
	combout => \Mux25~20_combout\);

-- Location: LCCOMB_X24_Y12_N12
\Mux25~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~26_combout\ = (!\addrA~combout\(4) & (((\addrA~combout\(2)) # (\Mux25~20_combout\)) # (!\addrA~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \addrA~combout\(4),
	datad => \Mux25~20_combout\,
	combout => \Mux25~26_combout\);

-- Location: LCCOMB_X21_Y13_N22
\Equal15~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~26_combout\ = (!\addrW~combout\(1) & (!\addrW~combout\(3) & \Equal15~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrW~combout\(1),
	datab => \addrW~combout\(3),
	datad => \Equal15~25_combout\,
	combout => \Equal15~26_combout\);

-- Location: LCFF_X20_Y10_N1
\reg[5][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(6),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[5][6]~regout\);

-- Location: LCCOMB_X20_Y13_N0
\Equal15~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~28_combout\ = (!\addrW~combout\(3) & (\addrW~combout\(1) & \Equal15~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addrW~combout\(3),
	datac => \addrW~combout\(1),
	datad => \Equal15~27_combout\,
	combout => \Equal15~28_combout\);

-- Location: LCFF_X24_Y11_N29
\reg[6][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(6),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[6][6]~regout\);

-- Location: LCCOMB_X23_Y9_N0
\reg[7][6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[7][6]~feeder_combout\ = \d_in~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(6),
	combout => \reg[7][6]~feeder_combout\);

-- Location: LCCOMB_X21_Y13_N26
\Equal15~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~29_combout\ = (\addrW~combout\(1) & (!\addrW~combout\(3) & \Equal15~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrW~combout\(1),
	datab => \addrW~combout\(3),
	datad => \Equal15~25_combout\,
	combout => \Equal15~29_combout\);

-- Location: LCFF_X23_Y9_N1
\reg[7][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[7][6]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[7][6]~regout\);

-- Location: LCCOMB_X24_Y11_N28
\Mux25~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~15_combout\ = (\addrA~combout\(0) & (((\reg[7][6]~regout\)) # (!\addrA~combout\(1)))) # (!\addrA~combout\(0) & (\addrA~combout\(1) & (\reg[6][6]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \addrA~combout\(1),
	datac => \reg[6][6]~regout\,
	datad => \reg[7][6]~regout\,
	combout => \Mux25~15_combout\);

-- Location: LCCOMB_X20_Y10_N0
\Mux25~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~17_combout\ = (\Mux25~16_combout\ & ((\addrA~combout\(1) & ((\Mux25~15_combout\))) # (!\addrA~combout\(1) & ((\reg[5][6]~regout\) # (!\Mux25~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~16_combout\,
	datab => \addrA~combout\(1),
	datac => \reg[5][6]~regout\,
	datad => \Mux25~15_combout\,
	combout => \Mux25~17_combout\);

-- Location: LCFF_X25_Y15_N19
\reg[2][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(6),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[2][6]~regout\);

-- Location: LCFF_X25_Y15_N21
\reg[3][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(6),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[3][6]~regout\);

-- Location: LCCOMB_X25_Y15_N18
\Mux25~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~18_combout\ = (\Mux31~18_combout\ & ((\Mux25~17_combout\ & ((\reg[3][6]~regout\))) # (!\Mux25~17_combout\ & (\reg[2][6]~regout\)))) # (!\Mux31~18_combout\ & (\Mux25~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~18_combout\,
	datab => \Mux25~17_combout\,
	datac => \reg[2][6]~regout\,
	datad => \reg[3][6]~regout\,
	combout => \Mux25~18_combout\);

-- Location: LCCOMB_X25_Y15_N30
\Mux25~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~22_combout\ = (\Mux25~26_combout\ & ((\Mux25~21_combout\) # ((!\Mux25~14_combout\ & \Mux25~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~21_combout\,
	datab => \Mux25~14_combout\,
	datac => \Mux25~26_combout\,
	datad => \Mux25~18_combout\,
	combout => \Mux25~22_combout\);

-- Location: LCFF_X23_Y16_N17
\reg[14][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(6),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[14][6]~regout\);

-- Location: LCFF_X24_Y16_N31
\reg[15][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(6),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[15][6]~regout\);

-- Location: LCCOMB_X23_Y16_N16
\Mux25~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~24_combout\ = (\Mux25~23_combout\ & (((\reg[15][6]~regout\)) # (!\addrA~combout\(1)))) # (!\Mux25~23_combout\ & (\addrA~combout\(1) & (\reg[14][6]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~23_combout\,
	datab => \addrA~combout\(1),
	datac => \reg[14][6]~regout\,
	datad => \reg[15][6]~regout\,
	combout => \Mux25~24_combout\);

-- Location: LCCOMB_X25_Y15_N8
\Mux25~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~25_combout\ = (\Mux25~22_combout\ & (((\Mux25~24_combout\) # (!\Mux31~14_combout\)))) # (!\Mux25~22_combout\ & (\Mux25~13_combout\ & ((\Mux31~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~13_combout\,
	datab => \Mux25~22_combout\,
	datac => \Mux25~24_combout\,
	datad => \Mux31~14_combout\,
	combout => \Mux25~25_combout\);

-- Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[7]~I\ : cycloneii_io
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
	padio => ww_d_in(7),
	combout => \d_in~combout\(7));

-- Location: LCFF_X21_Y11_N27
\reg[3][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(7),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[3][7]~regout\);

-- Location: LCFF_X21_Y11_N25
\reg[2][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(7),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[2][7]~regout\);

-- Location: LCFF_X22_Y15_N25
\reg[6][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(7),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[6][7]~regout\);

-- Location: LCCOMB_X20_Y13_N10
\Equal15~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~30_combout\ = (!\addrW~combout\(3) & (!\addrW~combout\(1) & \Equal15~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addrW~combout\(3),
	datac => \addrW~combout\(1),
	datad => \Equal15~27_combout\,
	combout => \Equal15~30_combout\);

-- Location: LCFF_X22_Y15_N27
\reg[4][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(7),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[4][7]~regout\);

-- Location: LCCOMB_X22_Y15_N24
\Mux24~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~12_combout\ = (\addrA~combout\(1) & ((\addrA~combout\(0)) # ((\reg[6][7]~regout\)))) # (!\addrA~combout\(1) & (!\addrA~combout\(0) & ((\reg[4][7]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \addrA~combout\(0),
	datac => \reg[6][7]~regout\,
	datad => \reg[4][7]~regout\,
	combout => \Mux24~12_combout\);

-- Location: LCFF_X22_Y11_N27
\reg[5][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(7),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[5][7]~regout\);

-- Location: LCCOMB_X23_Y9_N2
\reg[7][7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[7][7]~feeder_combout\ = \d_in~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(7),
	combout => \reg[7][7]~feeder_combout\);

-- Location: LCFF_X23_Y9_N3
\reg[7][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[7][7]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[7][7]~regout\);

-- Location: LCCOMB_X22_Y11_N26
\Mux24~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~13_combout\ = (\addrA~combout\(0) & ((\Mux24~12_combout\ & ((\reg[7][7]~regout\))) # (!\Mux24~12_combout\ & (\reg[5][7]~regout\)))) # (!\addrA~combout\(0) & (\Mux24~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \Mux24~12_combout\,
	datac => \reg[5][7]~regout\,
	datad => \reg[7][7]~regout\,
	combout => \Mux24~13_combout\);

-- Location: LCFF_X22_Y11_N25
\reg[1][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(7),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[1][7]~regout\);

-- Location: LCCOMB_X22_Y11_N24
\Mux24~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~14_combout\ = (\Mux31~16_combout\ & ((\Mux24~13_combout\) # ((!\Mux31~15_combout\)))) # (!\Mux31~16_combout\ & (((\reg[1][7]~regout\ & \Mux31~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~16_combout\,
	datab => \Mux24~13_combout\,
	datac => \reg[1][7]~regout\,
	datad => \Mux31~15_combout\,
	combout => \Mux24~14_combout\);

-- Location: LCCOMB_X21_Y11_N24
\Mux24~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~15_combout\ = (\Mux31~18_combout\ & ((\Mux24~14_combout\ & (\reg[3][7]~regout\)) # (!\Mux24~14_combout\ & ((\reg[2][7]~regout\))))) # (!\Mux31~18_combout\ & (((\Mux24~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~18_combout\,
	datab => \reg[3][7]~regout\,
	datac => \reg[2][7]~regout\,
	datad => \Mux24~14_combout\,
	combout => \Mux24~15_combout\);

-- Location: LCFF_X19_Y15_N9
\reg[27][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(7),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[27][7]~regout\);

-- Location: LCFF_X19_Y15_N3
\reg[31][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(7),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[31][7]~regout\);

-- Location: LCCOMB_X19_Y15_N8
\Mux24~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~10_combout\ = (\Mux24~9_combout\ & (((\reg[31][7]~regout\)) # (!\addrA~combout\(3)))) # (!\Mux24~9_combout\ & (\addrA~combout\(3) & (\reg[27][7]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~9_combout\,
	datab => \addrA~combout\(3),
	datac => \reg[27][7]~regout\,
	datad => \reg[31][7]~regout\,
	combout => \Mux24~10_combout\);

-- Location: LCFF_X25_Y14_N1
\reg[20][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(7),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[20][7]~regout\);

-- Location: LCCOMB_X25_Y14_N26
\reg[28][7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[28][7]~feeder_combout\ = \d_in~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(7),
	combout => \reg[28][7]~feeder_combout\);

-- Location: LCFF_X25_Y14_N27
\reg[28][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[28][7]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[28][7]~regout\);

-- Location: LCCOMB_X25_Y14_N0
\Mux24~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~7_combout\ = (\Mux24~6_combout\ & (((\reg[28][7]~regout\)) # (!\addrA~combout\(2)))) # (!\Mux24~6_combout\ & (\addrA~combout\(2) & (\reg[20][7]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~6_combout\,
	datab => \addrA~combout\(2),
	datac => \reg[20][7]~regout\,
	datad => \reg[28][7]~regout\,
	combout => \Mux24~7_combout\);

-- Location: LCCOMB_X22_Y15_N28
\Mux24~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~8_combout\ = (\addrA~combout\(0) & (((\addrA~combout\(1))))) # (!\addrA~combout\(0) & ((\addrA~combout\(1) & (\Mux24~5_combout\)) # (!\addrA~combout\(1) & ((\Mux24~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~5_combout\,
	datab => \addrA~combout\(0),
	datac => \addrA~combout\(1),
	datad => \Mux24~7_combout\,
	combout => \Mux24~8_combout\);

-- Location: LCCOMB_X22_Y15_N22
\Mux24~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~11_combout\ = (\addrA~combout\(0) & ((\Mux24~8_combout\ & ((\Mux24~10_combout\))) # (!\Mux24~8_combout\ & (\Mux24~3_combout\)))) # (!\addrA~combout\(0) & (((\Mux24~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~3_combout\,
	datab => \addrA~combout\(0),
	datac => \Mux24~10_combout\,
	datad => \Mux24~8_combout\,
	combout => \Mux24~11_combout\);

-- Location: LCCOMB_X22_Y15_N4
\Mux24~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~16_combout\ = (\Mux31~14_combout\ & (((\Mux31~23_combout\) # (\Mux24~11_combout\)))) # (!\Mux31~14_combout\ & (\Mux24~15_combout\ & (!\Mux31~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~14_combout\,
	datab => \Mux24~15_combout\,
	datac => \Mux31~23_combout\,
	datad => \Mux24~11_combout\,
	combout => \Mux24~16_combout\);

-- Location: LCFF_X22_Y16_N17
\reg[13][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(7),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[13][7]~regout\);

-- Location: LCFF_X22_Y16_N19
\reg[15][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(7),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[15][7]~regout\);

-- Location: LCCOMB_X22_Y16_N16
\Mux24~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~18_combout\ = (\Mux24~17_combout\ & (((\reg[15][7]~regout\)) # (!\addrA~combout\(0)))) # (!\Mux24~17_combout\ & (\addrA~combout\(0) & (\reg[13][7]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~17_combout\,
	datab => \addrA~combout\(0),
	datac => \reg[13][7]~regout\,
	datad => \reg[15][7]~regout\,
	combout => \Mux24~18_combout\);

-- Location: LCFF_X25_Y13_N9
\reg[10][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(7),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[10][7]~regout\);

-- Location: LCFF_X25_Y10_N27
\reg[11][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(7),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[11][7]~regout\);

-- Location: LCCOMB_X25_Y13_N8
\Mux24~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (\Mux24~0_combout\ & (((\reg[11][7]~regout\)) # (!\addrA~combout\(1)))) # (!\Mux24~0_combout\ & (\addrA~combout\(1) & (\reg[10][7]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~0_combout\,
	datab => \addrA~combout\(1),
	datac => \reg[10][7]~regout\,
	datad => \reg[11][7]~regout\,
	combout => \Mux24~1_combout\);

-- Location: LCCOMB_X22_Y15_N6
\Mux24~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~19_combout\ = (\Mux31~23_combout\ & ((\Mux24~16_combout\ & (\Mux24~18_combout\)) # (!\Mux24~16_combout\ & ((\Mux24~1_combout\))))) # (!\Mux31~23_combout\ & (\Mux24~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~23_combout\,
	datab => \Mux24~16_combout\,
	datac => \Mux24~18_combout\,
	datad => \Mux24~1_combout\,
	combout => \Mux24~19_combout\);

-- Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[8]~I\ : cycloneii_io
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
	padio => ww_d_in(8),
	combout => \d_in~combout\(8));

-- Location: LCFF_X21_Y17_N5
\reg[26][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(8),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[26][8]~regout\);

-- Location: LCFF_X21_Y17_N31
\reg[30][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(8),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[30][8]~regout\);

-- Location: LCCOMB_X21_Y17_N4
\Mux23~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~5_combout\ = (\Mux23~4_combout\ & (((\reg[30][8]~regout\)) # (!\addrA~combout\(3)))) # (!\Mux23~4_combout\ & (\addrA~combout\(3) & (\reg[26][8]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~4_combout\,
	datab => \addrA~combout\(3),
	datac => \reg[26][8]~regout\,
	datad => \reg[30][8]~regout\,
	combout => \Mux23~5_combout\);

-- Location: LCCOMB_X26_Y14_N2
\reg[28][8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[28][8]~feeder_combout\ = \d_in~combout\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(8),
	combout => \reg[28][8]~feeder_combout\);

-- Location: LCFF_X26_Y14_N3
\reg[28][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[28][8]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[28][8]~regout\);

-- Location: LCFF_X26_Y14_N1
\reg[20][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(8),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[20][8]~regout\);

-- Location: LCFF_X27_Y14_N25
\reg[24][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(8),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[24][8]~regout\);

-- Location: LCCOMB_X27_Y14_N26
\reg[16][8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[16][8]~feeder_combout\ = \d_in~combout\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(8),
	combout => \reg[16][8]~feeder_combout\);

-- Location: LCFF_X27_Y14_N27
\reg[16][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[16][8]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[16][8]~regout\);

-- Location: LCCOMB_X27_Y14_N24
\Mux23~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~8_combout\ = (\addrA~combout\(2) & (\addrA~combout\(3))) # (!\addrA~combout\(2) & ((\addrA~combout\(3) & (\reg[24][8]~regout\)) # (!\addrA~combout\(3) & ((\reg[16][8]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[24][8]~regout\,
	datad => \reg[16][8]~regout\,
	combout => \Mux23~8_combout\);

-- Location: LCCOMB_X26_Y14_N0
\Mux23~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~9_combout\ = (\addrA~combout\(2) & ((\Mux23~8_combout\ & (\reg[28][8]~regout\)) # (!\Mux23~8_combout\ & ((\reg[20][8]~regout\))))) # (!\addrA~combout\(2) & (((\Mux23~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \reg[28][8]~regout\,
	datac => \reg[20][8]~regout\,
	datad => \Mux23~8_combout\,
	combout => \Mux23~9_combout\);

-- Location: LCCOMB_X22_Y15_N0
\Mux23~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~10_combout\ = (\addrA~combout\(0) & ((\Mux23~7_combout\) # ((\addrA~combout\(1))))) # (!\addrA~combout\(0) & (((!\addrA~combout\(1) & \Mux23~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~7_combout\,
	datab => \addrA~combout\(0),
	datac => \addrA~combout\(1),
	datad => \Mux23~9_combout\,
	combout => \Mux23~10_combout\);

-- Location: LCCOMB_X22_Y15_N10
\Mux23~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~13_combout\ = (\addrA~combout\(1) & ((\Mux23~10_combout\ & (\Mux23~12_combout\)) # (!\Mux23~10_combout\ & ((\Mux23~5_combout\))))) # (!\addrA~combout\(1) & (((\Mux23~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~12_combout\,
	datab => \Mux23~5_combout\,
	datac => \addrA~combout\(1),
	datad => \Mux23~10_combout\,
	combout => \Mux23~13_combout\);

-- Location: LCFF_X24_Y15_N31
\reg[1][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(8),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[1][8]~regout\);

-- Location: LCCOMB_X24_Y15_N30
\Mux23~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~14_combout\ = (\Mux31~16_combout\ & ((!\Mux31~15_combout\))) # (!\Mux31~16_combout\ & (\reg[1][8]~regout\ & \Mux31~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux31~16_combout\,
	datac => \reg[1][8]~regout\,
	datad => \Mux31~15_combout\,
	combout => \Mux23~14_combout\);

-- Location: LCFF_X25_Y16_N27
\reg[3][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(8),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[3][8]~regout\);

-- Location: LCCOMB_X25_Y16_N26
\Mux23~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~21_combout\ = (\Mux31~23_combout\) # ((\Mux23~14_combout\ & ((\reg[3][8]~regout\) # (!\Mux31~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~23_combout\,
	datab => \Mux31~18_combout\,
	datac => \reg[3][8]~regout\,
	datad => \Mux23~14_combout\,
	combout => \Mux23~21_combout\);

-- Location: LCFF_X24_Y11_N11
\reg[4][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(8),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[4][8]~regout\);

-- Location: LCFF_X24_Y11_N17
\reg[6][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(8),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[6][8]~regout\);

-- Location: LCFF_X22_Y14_N9
\reg[7][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(8),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[7][8]~regout\);

-- Location: LCCOMB_X24_Y11_N16
\Mux23~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~15_combout\ = (\addrA~combout\(0) & (((\reg[7][8]~regout\)) # (!\addrA~combout\(1)))) # (!\addrA~combout\(0) & (\addrA~combout\(1) & (\reg[6][8]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \addrA~combout\(1),
	datac => \reg[6][8]~regout\,
	datad => \reg[7][8]~regout\,
	combout => \Mux23~15_combout\);

-- Location: LCCOMB_X24_Y11_N10
\Mux23~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~16_combout\ = (\Mux31~16_combout\ & ((\reg[4][8]~regout\) # (\Mux23~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux31~16_combout\,
	datac => \reg[4][8]~regout\,
	datad => \Mux23~15_combout\,
	combout => \Mux23~16_combout\);

-- Location: LCFF_X24_Y10_N25
\reg[5][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(8),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[5][8]~regout\);

-- Location: LCCOMB_X24_Y10_N24
\Mux23~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~17_combout\ = (\Mux23~16_combout\ & ((\Mux23~15_combout\ & ((\reg[5][8]~regout\) # (\addrA~combout\(1)))) # (!\Mux23~15_combout\ & ((!\addrA~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~15_combout\,
	datab => \Mux23~16_combout\,
	datac => \reg[5][8]~regout\,
	datad => \addrA~combout\(1),
	combout => \Mux23~17_combout\);

-- Location: LCFF_X25_Y16_N1
\reg[2][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(8),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[2][8]~regout\);

-- Location: LCCOMB_X25_Y16_N0
\Mux23~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~18_combout\ = (\Mux31~18_combout\ & ((\Mux23~17_combout\ & ((\reg[3][8]~regout\))) # (!\Mux23~17_combout\ & (\reg[2][8]~regout\)))) # (!\Mux31~18_combout\ & (\Mux23~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~18_combout\,
	datab => \Mux23~17_combout\,
	datac => \reg[2][8]~regout\,
	datad => \reg[3][8]~regout\,
	combout => \Mux23~18_combout\);

-- Location: LCCOMB_X25_Y16_N20
\Mux23~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~22_combout\ = (\Mux23~26_combout\ & ((\Mux23~21_combout\) # ((!\Mux23~14_combout\ & \Mux23~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~26_combout\,
	datab => \Mux23~14_combout\,
	datac => \Mux23~21_combout\,
	datad => \Mux23~18_combout\,
	combout => \Mux23~22_combout\);

-- Location: LCFF_X21_Y16_N25
\reg[14][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(8),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[14][8]~regout\);

-- Location: LCFF_X24_Y16_N17
\reg[13][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(8),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[13][8]~regout\);

-- Location: LCCOMB_X25_Y17_N22
\reg[12][8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[12][8]~feeder_combout\ = \d_in~combout\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(8),
	combout => \reg[12][8]~feeder_combout\);

-- Location: LCFF_X25_Y17_N23
\reg[12][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[12][8]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[12][8]~regout\);

-- Location: LCCOMB_X24_Y16_N16
\Mux23~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~23_combout\ = (\addrA~combout\(0) & ((\addrA~combout\(1)) # ((\reg[13][8]~regout\)))) # (!\addrA~combout\(0) & (!\addrA~combout\(1) & ((\reg[12][8]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \addrA~combout\(1),
	datac => \reg[13][8]~regout\,
	datad => \reg[12][8]~regout\,
	combout => \Mux23~23_combout\);

-- Location: LCCOMB_X21_Y16_N24
\Mux23~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~24_combout\ = (\addrA~combout\(1) & ((\Mux23~23_combout\ & (\reg[15][8]~regout\)) # (!\Mux23~23_combout\ & ((\reg[14][8]~regout\))))) # (!\addrA~combout\(1) & (((\Mux23~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[15][8]~regout\,
	datab => \addrA~combout\(1),
	datac => \reg[14][8]~regout\,
	datad => \Mux23~23_combout\,
	combout => \Mux23~24_combout\);

-- Location: LCCOMB_X25_Y16_N30
\Mux23~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~25_combout\ = (\Mux31~14_combout\ & ((\Mux23~22_combout\ & ((\Mux23~24_combout\))) # (!\Mux23~22_combout\ & (\Mux23~13_combout\)))) # (!\Mux31~14_combout\ & (((\Mux23~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~14_combout\,
	datab => \Mux23~13_combout\,
	datac => \Mux23~22_combout\,
	datad => \Mux23~24_combout\,
	combout => \Mux23~25_combout\);

-- Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[9]~I\ : cycloneii_io
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
	padio => ww_d_in(9),
	combout => \d_in~combout\(9));

-- Location: LCFF_X25_Y13_N11
\reg[10][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(9),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[10][9]~regout\);

-- Location: LCFF_X25_Y10_N29
\reg[9][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(9),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[9][9]~regout\);

-- Location: LCCOMB_X23_Y9_N4
\reg[8][9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[8][9]~feeder_combout\ = \d_in~combout\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(9),
	combout => \reg[8][9]~feeder_combout\);

-- Location: LCFF_X23_Y9_N5
\reg[8][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[8][9]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[8][9]~regout\);

-- Location: LCCOMB_X25_Y10_N28
\Mux22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\addrA~combout\(0) & ((\addrA~combout\(1)) # ((\reg[9][9]~regout\)))) # (!\addrA~combout\(0) & (!\addrA~combout\(1) & ((\reg[8][9]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \addrA~combout\(1),
	datac => \reg[9][9]~regout\,
	datad => \reg[8][9]~regout\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X25_Y13_N10
\Mux22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\addrA~combout\(1) & ((\Mux22~0_combout\ & (\reg[11][9]~regout\)) # (!\Mux22~0_combout\ & ((\reg[10][9]~regout\))))) # (!\addrA~combout\(1) & (((\Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[11][9]~regout\,
	datab => \addrA~combout\(1),
	datac => \reg[10][9]~regout\,
	datad => \Mux22~0_combout\,
	combout => \Mux22~1_combout\);

-- Location: LCFF_X25_Y16_N15
\reg[3][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(9),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[3][9]~regout\);

-- Location: LCFF_X25_Y16_N5
\reg[2][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(9),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[2][9]~regout\);

-- Location: LCCOMB_X25_Y16_N4
\Mux22~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~15_combout\ = (\Mux22~14_combout\ & ((\reg[3][9]~regout\) # ((!\Mux31~18_combout\)))) # (!\Mux22~14_combout\ & (((\reg[2][9]~regout\ & \Mux31~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~14_combout\,
	datab => \reg[3][9]~regout\,
	datac => \reg[2][9]~regout\,
	datad => \Mux31~18_combout\,
	combout => \Mux22~15_combout\);

-- Location: LCFF_X21_Y17_N17
\reg[26][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(9),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[26][9]~regout\);

-- Location: LCCOMB_X21_Y17_N2
\reg[30][9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[30][9]~feeder_combout\ = \d_in~combout\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(9),
	combout => \reg[30][9]~feeder_combout\);

-- Location: LCFF_X21_Y17_N3
\reg[30][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[30][9]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[30][9]~regout\);

-- Location: LCCOMB_X21_Y17_N16
\Mux22~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~5_combout\ = (\Mux22~4_combout\ & (((\reg[30][9]~regout\)) # (!\addrA~combout\(3)))) # (!\Mux22~4_combout\ & (\addrA~combout\(3) & (\reg[26][9]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~4_combout\,
	datab => \addrA~combout\(3),
	datac => \reg[26][9]~regout\,
	datad => \reg[30][9]~regout\,
	combout => \Mux22~5_combout\);

-- Location: LCFF_X26_Y14_N13
\reg[20][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(9),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[20][9]~regout\);

-- Location: LCFF_X27_Y14_N5
\reg[24][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(9),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[24][9]~regout\);

-- Location: LCCOMB_X27_Y14_N6
\reg[16][9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[16][9]~feeder_combout\ = \d_in~combout\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(9),
	combout => \reg[16][9]~feeder_combout\);

-- Location: LCFF_X27_Y14_N7
\reg[16][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[16][9]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[16][9]~regout\);

-- Location: LCCOMB_X27_Y14_N4
\Mux22~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~6_combout\ = (\addrA~combout\(2) & (\addrA~combout\(3))) # (!\addrA~combout\(2) & ((\addrA~combout\(3) & (\reg[24][9]~regout\)) # (!\addrA~combout\(3) & ((\reg[16][9]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[24][9]~regout\,
	datad => \reg[16][9]~regout\,
	combout => \Mux22~6_combout\);

-- Location: LCCOMB_X26_Y14_N12
\Mux22~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~7_combout\ = (\addrA~combout\(2) & ((\Mux22~6_combout\ & (\reg[28][9]~regout\)) # (!\Mux22~6_combout\ & ((\reg[20][9]~regout\))))) # (!\addrA~combout\(2) & (((\Mux22~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[28][9]~regout\,
	datab => \addrA~combout\(2),
	datac => \reg[20][9]~regout\,
	datad => \Mux22~6_combout\,
	combout => \Mux22~7_combout\);

-- Location: LCCOMB_X25_Y16_N8
\Mux22~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~8_combout\ = (\addrA~combout\(0) & (((\addrA~combout\(1))))) # (!\addrA~combout\(0) & ((\addrA~combout\(1) & (\Mux22~5_combout\)) # (!\addrA~combout\(1) & ((\Mux22~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \Mux22~5_combout\,
	datac => \addrA~combout\(1),
	datad => \Mux22~7_combout\,
	combout => \Mux22~8_combout\);

-- Location: LCFF_X18_Y13_N5
\reg[25][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(9),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[25][9]~regout\);

-- Location: LCCOMB_X18_Y13_N14
\reg[17][9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[17][9]~feeder_combout\ = \d_in~combout\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(9),
	combout => \reg[17][9]~feeder_combout\);

-- Location: LCFF_X18_Y13_N15
\reg[17][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[17][9]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[17][9]~regout\);

-- Location: LCCOMB_X18_Y13_N4
\Mux22~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (\addrA~combout\(3) & ((\addrA~combout\(2)) # ((\reg[25][9]~regout\)))) # (!\addrA~combout\(3) & (!\addrA~combout\(2) & ((\reg[17][9]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \reg[25][9]~regout\,
	datad => \reg[17][9]~regout\,
	combout => \Mux22~2_combout\);

-- Location: LCFF_X19_Y13_N13
\reg[21][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(9),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[21][9]~regout\);

-- Location: LCFF_X19_Y13_N7
\reg[29][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(9),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[29][9]~regout\);

-- Location: LCCOMB_X19_Y13_N12
\Mux22~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (\addrA~combout\(2) & ((\Mux22~2_combout\ & ((\reg[29][9]~regout\))) # (!\Mux22~2_combout\ & (\reg[21][9]~regout\)))) # (!\addrA~combout\(2) & (\Mux22~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \Mux22~2_combout\,
	datac => \reg[21][9]~regout\,
	datad => \reg[29][9]~regout\,
	combout => \Mux22~3_combout\);

-- Location: LCFF_X19_Y15_N1
\reg[27][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(9),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[27][9]~regout\);

-- Location: LCFF_X19_Y15_N11
\reg[31][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(9),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[31][9]~regout\);

-- Location: LCCOMB_X19_Y15_N0
\Mux22~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~10_combout\ = (\Mux22~9_combout\ & (((\reg[31][9]~regout\)) # (!\addrA~combout\(3)))) # (!\Mux22~9_combout\ & (\addrA~combout\(3) & (\reg[27][9]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~9_combout\,
	datab => \addrA~combout\(3),
	datac => \reg[27][9]~regout\,
	datad => \reg[31][9]~regout\,
	combout => \Mux22~10_combout\);

-- Location: LCCOMB_X25_Y16_N2
\Mux22~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~11_combout\ = (\addrA~combout\(0) & ((\Mux22~8_combout\ & ((\Mux22~10_combout\))) # (!\Mux22~8_combout\ & (\Mux22~3_combout\)))) # (!\addrA~combout\(0) & (\Mux22~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \Mux22~8_combout\,
	datac => \Mux22~3_combout\,
	datad => \Mux22~10_combout\,
	combout => \Mux22~11_combout\);

-- Location: LCCOMB_X25_Y16_N24
\Mux22~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~16_combout\ = (\Mux31~14_combout\ & (((\Mux31~23_combout\) # (\Mux22~11_combout\)))) # (!\Mux31~14_combout\ & (\Mux22~15_combout\ & (!\Mux31~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~14_combout\,
	datab => \Mux22~15_combout\,
	datac => \Mux31~23_combout\,
	datad => \Mux22~11_combout\,
	combout => \Mux22~16_combout\);

-- Location: LCFF_X24_Y16_N15
\reg[15][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(9),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[15][9]~regout\);

-- Location: LCFF_X24_Y16_N29
\reg[13][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(9),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[13][9]~regout\);

-- Location: LCFF_X23_Y16_N9
\reg[14][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(9),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[14][9]~regout\);

-- Location: LCCOMB_X23_Y16_N10
\reg[12][9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[12][9]~feeder_combout\ = \d_in~combout\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(9),
	combout => \reg[12][9]~feeder_combout\);

-- Location: LCFF_X23_Y16_N11
\reg[12][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[12][9]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[12][9]~regout\);

-- Location: LCCOMB_X23_Y16_N8
\Mux22~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~17_combout\ = (\addrA~combout\(0) & (\addrA~combout\(1))) # (!\addrA~combout\(0) & ((\addrA~combout\(1) & (\reg[14][9]~regout\)) # (!\addrA~combout\(1) & ((\reg[12][9]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \addrA~combout\(1),
	datac => \reg[14][9]~regout\,
	datad => \reg[12][9]~regout\,
	combout => \Mux22~17_combout\);

-- Location: LCCOMB_X24_Y16_N28
\Mux22~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~18_combout\ = (\addrA~combout\(0) & ((\Mux22~17_combout\ & (\reg[15][9]~regout\)) # (!\Mux22~17_combout\ & ((\reg[13][9]~regout\))))) # (!\addrA~combout\(0) & (((\Mux22~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \reg[15][9]~regout\,
	datac => \reg[13][9]~regout\,
	datad => \Mux22~17_combout\,
	combout => \Mux22~18_combout\);

-- Location: LCCOMB_X25_Y16_N10
\Mux22~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~19_combout\ = (\Mux31~23_combout\ & ((\Mux22~16_combout\ & ((\Mux22~18_combout\))) # (!\Mux22~16_combout\ & (\Mux22~1_combout\)))) # (!\Mux31~23_combout\ & (((\Mux22~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~23_combout\,
	datab => \Mux22~1_combout\,
	datac => \Mux22~16_combout\,
	datad => \Mux22~18_combout\,
	combout => \Mux22~19_combout\);

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[10]~I\ : cycloneii_io
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
	padio => ww_d_in(10),
	combout => \d_in~combout\(10));

-- Location: LCFF_X25_Y16_N23
\reg[3][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(10),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[3][10]~regout\);

-- Location: LCFF_X24_Y15_N27
\reg[1][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(10),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[1][10]~regout\);

-- Location: LCCOMB_X24_Y15_N26
\Mux21~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~14_combout\ = (\Mux31~16_combout\ & ((!\Mux31~15_combout\))) # (!\Mux31~16_combout\ & (\reg[1][10]~regout\ & \Mux31~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux31~16_combout\,
	datac => \reg[1][10]~regout\,
	datad => \Mux31~15_combout\,
	combout => \Mux21~14_combout\);

-- Location: LCCOMB_X25_Y16_N22
\Mux21~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~21_combout\ = (\Mux31~23_combout\) # ((\Mux21~14_combout\ & ((\reg[3][10]~regout\) # (!\Mux31~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~23_combout\,
	datab => \Mux31~18_combout\,
	datac => \reg[3][10]~regout\,
	datad => \Mux21~14_combout\,
	combout => \Mux21~21_combout\);

-- Location: LCFF_X22_Y14_N31
\reg[10][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(10),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[10][10]~regout\);

-- Location: LCFF_X24_Y14_N11
\reg[8][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(10),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[8][10]~regout\);

-- Location: LCCOMB_X22_Y14_N30
\Mux21~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~19_combout\ = (\addrA~combout\(0) & (\addrA~combout\(1))) # (!\addrA~combout\(0) & ((\addrA~combout\(1) & (\reg[10][10]~regout\)) # (!\addrA~combout\(1) & ((\reg[8][10]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \addrA~combout\(1),
	datac => \reg[10][10]~regout\,
	datad => \reg[8][10]~regout\,
	combout => \Mux21~19_combout\);

-- Location: LCFF_X21_Y12_N21
\reg[9][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(10),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[9][10]~regout\);

-- Location: LCCOMB_X21_Y12_N20
\Mux21~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~20_combout\ = (\Mux21~19_combout\ & ((\reg[11][10]~regout\) # ((!\addrA~combout\(0))))) # (!\Mux21~19_combout\ & (((\reg[9][10]~regout\ & \addrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[11][10]~regout\,
	datab => \Mux21~19_combout\,
	datac => \reg[9][10]~regout\,
	datad => \addrA~combout\(0),
	combout => \Mux21~20_combout\);

-- Location: LCCOMB_X24_Y12_N24
\Mux21~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~26_combout\ = (!\addrA~combout\(4) & (((\addrA~combout\(2)) # (\Mux21~20_combout\)) # (!\addrA~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \addrA~combout\(4),
	datad => \Mux21~20_combout\,
	combout => \Mux21~26_combout\);

-- Location: LCCOMB_X24_Y12_N4
\Mux21~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~22_combout\ = (\Mux21~26_combout\ & ((\Mux21~21_combout\) # ((\Mux21~18_combout\ & !\Mux21~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~18_combout\,
	datab => \Mux21~21_combout\,
	datac => \Mux21~26_combout\,
	datad => \Mux21~14_combout\,
	combout => \Mux21~22_combout\);

-- Location: LCFF_X19_Y12_N1
\reg[14][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(10),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[14][10]~regout\);

-- Location: LCFF_X24_Y16_N21
\reg[13][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(10),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[13][10]~regout\);

-- Location: LCFF_X25_Y17_N9
\reg[12][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(10),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[12][10]~regout\);

-- Location: LCCOMB_X24_Y16_N20
\Mux21~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~23_combout\ = (\addrA~combout\(0) & ((\addrA~combout\(1)) # ((\reg[13][10]~regout\)))) # (!\addrA~combout\(0) & (!\addrA~combout\(1) & ((\reg[12][10]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \addrA~combout\(1),
	datac => \reg[13][10]~regout\,
	datad => \reg[12][10]~regout\,
	combout => \Mux21~23_combout\);

-- Location: LCCOMB_X19_Y12_N0
\Mux21~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~24_combout\ = (\addrA~combout\(1) & ((\Mux21~23_combout\ & (\reg[15][10]~regout\)) # (!\Mux21~23_combout\ & ((\reg[14][10]~regout\))))) # (!\addrA~combout\(1) & (((\Mux21~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[15][10]~regout\,
	datab => \addrA~combout\(1),
	datac => \reg[14][10]~regout\,
	datad => \Mux21~23_combout\,
	combout => \Mux21~24_combout\);

-- Location: LCFF_X21_Y17_N13
\reg[26][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(10),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[26][10]~regout\);

-- Location: LCFF_X21_Y17_N7
\reg[30][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(10),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[30][10]~regout\);

-- Location: LCCOMB_X21_Y17_N12
\Mux21~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~5_combout\ = (\Mux21~4_combout\ & (((\reg[30][10]~regout\)) # (!\addrA~combout\(3)))) # (!\Mux21~4_combout\ & (\addrA~combout\(3) & (\reg[26][10]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~4_combout\,
	datab => \addrA~combout\(3),
	datac => \reg[26][10]~regout\,
	datad => \reg[30][10]~regout\,
	combout => \Mux21~5_combout\);

-- Location: LCFF_X27_Y14_N9
\reg[24][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(10),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[24][10]~regout\);

-- Location: LCCOMB_X27_Y14_N10
\reg[16][10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[16][10]~feeder_combout\ = \d_in~combout\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(10),
	combout => \reg[16][10]~feeder_combout\);

-- Location: LCFF_X27_Y14_N11
\reg[16][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[16][10]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[16][10]~regout\);

-- Location: LCCOMB_X27_Y14_N8
\Mux21~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~8_combout\ = (\addrA~combout\(2) & (\addrA~combout\(3))) # (!\addrA~combout\(2) & ((\addrA~combout\(3) & (\reg[24][10]~regout\)) # (!\addrA~combout\(3) & ((\reg[16][10]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[24][10]~regout\,
	datad => \reg[16][10]~regout\,
	combout => \Mux21~8_combout\);

-- Location: LCFF_X26_Y14_N17
\reg[20][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(10),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[20][10]~regout\);

-- Location: LCFF_X26_Y14_N27
\reg[28][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(10),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[28][10]~regout\);

-- Location: LCCOMB_X26_Y14_N16
\Mux21~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~9_combout\ = (\addrA~combout\(2) & ((\Mux21~8_combout\ & ((\reg[28][10]~regout\))) # (!\Mux21~8_combout\ & (\reg[20][10]~regout\)))) # (!\addrA~combout\(2) & (\Mux21~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \Mux21~8_combout\,
	datac => \reg[20][10]~regout\,
	datad => \reg[28][10]~regout\,
	combout => \Mux21~9_combout\);

-- Location: LCCOMB_X24_Y16_N8
\Mux21~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~10_combout\ = (\addrA~combout\(1) & (((\addrA~combout\(0))))) # (!\addrA~combout\(1) & ((\addrA~combout\(0) & (\Mux21~7_combout\)) # (!\addrA~combout\(0) & ((\Mux21~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~7_combout\,
	datab => \addrA~combout\(1),
	datac => \addrA~combout\(0),
	datad => \Mux21~9_combout\,
	combout => \Mux21~10_combout\);

-- Location: LCCOMB_X24_Y16_N10
\Mux21~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~13_combout\ = (\Mux21~10_combout\ & ((\Mux21~12_combout\) # ((!\addrA~combout\(1))))) # (!\Mux21~10_combout\ & (((\Mux21~5_combout\ & \addrA~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~12_combout\,
	datab => \Mux21~5_combout\,
	datac => \Mux21~10_combout\,
	datad => \addrA~combout\(1),
	combout => \Mux21~13_combout\);

-- Location: LCCOMB_X24_Y16_N6
\Mux21~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~25_combout\ = (\Mux31~14_combout\ & ((\Mux21~22_combout\ & (\Mux21~24_combout\)) # (!\Mux21~22_combout\ & ((\Mux21~13_combout\))))) # (!\Mux31~14_combout\ & (\Mux21~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~14_combout\,
	datab => \Mux21~22_combout\,
	datac => \Mux21~24_combout\,
	datad => \Mux21~13_combout\,
	combout => \Mux21~25_combout\);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[11]~I\ : cycloneii_io
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
	padio => ww_d_in(11),
	combout => \d_in~combout\(11));

-- Location: LCFF_X22_Y14_N1
\reg[10][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(11),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[10][11]~regout\);

-- Location: LCFF_X23_Y14_N31
\reg[9][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(11),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[9][11]~regout\);

-- Location: LCCOMB_X24_Y14_N12
\reg[8][11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[8][11]~feeder_combout\ = \d_in~combout\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(11),
	combout => \reg[8][11]~feeder_combout\);

-- Location: LCFF_X24_Y14_N13
\reg[8][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[8][11]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[8][11]~regout\);

-- Location: LCCOMB_X23_Y14_N30
\Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\addrA~combout\(1) & (\addrA~combout\(0))) # (!\addrA~combout\(1) & ((\addrA~combout\(0) & (\reg[9][11]~regout\)) # (!\addrA~combout\(0) & ((\reg[8][11]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \addrA~combout\(0),
	datac => \reg[9][11]~regout\,
	datad => \reg[8][11]~regout\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X22_Y14_N0
\Mux20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\addrA~combout\(1) & ((\Mux20~0_combout\ & (\reg[11][11]~regout\)) # (!\Mux20~0_combout\ & ((\reg[10][11]~regout\))))) # (!\addrA~combout\(1) & (((\Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[11][11]~regout\,
	datab => \addrA~combout\(1),
	datac => \reg[10][11]~regout\,
	datad => \Mux20~0_combout\,
	combout => \Mux20~1_combout\);

-- Location: LCFF_X25_Y12_N25
\reg[2][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(11),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[2][11]~regout\);

-- Location: LCFF_X22_Y11_N23
\reg[5][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(11),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[5][11]~regout\);

-- Location: LCFF_X26_Y11_N29
\reg[6][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(11),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[6][11]~regout\);

-- Location: LCCOMB_X26_Y11_N6
\reg[4][11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[4][11]~feeder_combout\ = \d_in~combout\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(11),
	combout => \reg[4][11]~feeder_combout\);

-- Location: LCFF_X26_Y11_N7
\reg[4][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[4][11]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[4][11]~regout\);

-- Location: LCCOMB_X26_Y11_N28
\Mux20~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~12_combout\ = (\addrA~combout\(1) & ((\addrA~combout\(0)) # ((\reg[6][11]~regout\)))) # (!\addrA~combout\(1) & (!\addrA~combout\(0) & ((\reg[4][11]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \addrA~combout\(0),
	datac => \reg[6][11]~regout\,
	datad => \reg[4][11]~regout\,
	combout => \Mux20~12_combout\);

-- Location: LCCOMB_X22_Y11_N22
\Mux20~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~13_combout\ = (\addrA~combout\(0) & ((\Mux20~12_combout\ & (\reg[7][11]~regout\)) # (!\Mux20~12_combout\ & ((\reg[5][11]~regout\))))) # (!\addrA~combout\(0) & (((\Mux20~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[7][11]~regout\,
	datab => \addrA~combout\(0),
	datac => \reg[5][11]~regout\,
	datad => \Mux20~12_combout\,
	combout => \Mux20~13_combout\);

-- Location: LCFF_X22_Y11_N5
\reg[1][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(11),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[1][11]~regout\);

-- Location: LCCOMB_X22_Y11_N4
\Mux20~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~14_combout\ = (\Mux31~16_combout\ & ((\Mux20~13_combout\) # ((!\Mux31~15_combout\)))) # (!\Mux31~16_combout\ & (((\reg[1][11]~regout\ & \Mux31~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~16_combout\,
	datab => \Mux20~13_combout\,
	datac => \reg[1][11]~regout\,
	datad => \Mux31~15_combout\,
	combout => \Mux20~14_combout\);

-- Location: LCCOMB_X25_Y12_N24
\Mux20~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~15_combout\ = (\Mux31~18_combout\ & ((\Mux20~14_combout\ & (\reg[3][11]~regout\)) # (!\Mux20~14_combout\ & ((\reg[2][11]~regout\))))) # (!\Mux31~18_combout\ & (((\Mux20~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[3][11]~regout\,
	datab => \Mux31~18_combout\,
	datac => \reg[2][11]~regout\,
	datad => \Mux20~14_combout\,
	combout => \Mux20~15_combout\);

-- Location: LCCOMB_X22_Y14_N16
\Mux20~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~16_combout\ = (\Mux31~23_combout\ & (((\Mux31~14_combout\)))) # (!\Mux31~23_combout\ & ((\Mux31~14_combout\ & (\Mux20~11_combout\)) # (!\Mux31~14_combout\ & ((\Mux20~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~11_combout\,
	datab => \Mux31~23_combout\,
	datac => \Mux31~14_combout\,
	datad => \Mux20~15_combout\,
	combout => \Mux20~16_combout\);

-- Location: LCFF_X23_Y16_N21
\reg[14][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(11),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[14][11]~regout\);

-- Location: LCFF_X23_Y16_N23
\reg[12][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(11),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[12][11]~regout\);

-- Location: LCCOMB_X23_Y16_N20
\Mux20~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~17_combout\ = (\addrA~combout\(0) & (\addrA~combout\(1))) # (!\addrA~combout\(0) & ((\addrA~combout\(1) & (\reg[14][11]~regout\)) # (!\addrA~combout\(1) & ((\reg[12][11]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \addrA~combout\(1),
	datac => \reg[14][11]~regout\,
	datad => \reg[12][11]~regout\,
	combout => \Mux20~17_combout\);

-- Location: LCFF_X23_Y17_N21
\reg[13][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(11),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[13][11]~regout\);

-- Location: LCCOMB_X23_Y17_N22
\reg[15][11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[15][11]~feeder_combout\ = \d_in~combout\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(11),
	combout => \reg[15][11]~feeder_combout\);

-- Location: LCFF_X23_Y17_N23
\reg[15][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[15][11]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[15][11]~regout\);

-- Location: LCCOMB_X23_Y17_N20
\Mux20~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~18_combout\ = (\addrA~combout\(0) & ((\Mux20~17_combout\ & ((\reg[15][11]~regout\))) # (!\Mux20~17_combout\ & (\reg[13][11]~regout\)))) # (!\addrA~combout\(0) & (\Mux20~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \Mux20~17_combout\,
	datac => \reg[13][11]~regout\,
	datad => \reg[15][11]~regout\,
	combout => \Mux20~18_combout\);

-- Location: LCCOMB_X22_Y14_N10
\Mux20~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~19_combout\ = (\Mux31~23_combout\ & ((\Mux20~16_combout\ & ((\Mux20~18_combout\))) # (!\Mux20~16_combout\ & (\Mux20~1_combout\)))) # (!\Mux31~23_combout\ & (((\Mux20~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~23_combout\,
	datab => \Mux20~1_combout\,
	datac => \Mux20~16_combout\,
	datad => \Mux20~18_combout\,
	combout => \Mux20~19_combout\);

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[12]~I\ : cycloneii_io
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
	padio => ww_d_in(12),
	combout => \d_in~combout\(12));

-- Location: LCFF_X21_Y16_N7
\reg[14][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(12),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[14][12]~regout\);

-- Location: LCFF_X22_Y16_N31
\reg[15][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(12),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[15][12]~regout\);

-- Location: LCCOMB_X21_Y16_N6
\Mux19~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~24_combout\ = (\Mux19~23_combout\ & (((\reg[15][12]~regout\)) # (!\addrA~combout\(1)))) # (!\Mux19~23_combout\ & (\addrA~combout\(1) & (\reg[14][12]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~23_combout\,
	datab => \addrA~combout\(1),
	datac => \reg[14][12]~regout\,
	datad => \reg[15][12]~regout\,
	combout => \Mux19~24_combout\);

-- Location: LCCOMB_X18_Y15_N14
\reg[19][12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[19][12]~feeder_combout\ = \d_in~combout\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(12),
	combout => \reg[19][12]~feeder_combout\);

-- Location: LCFF_X18_Y15_N15
\reg[19][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[19][12]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[19][12]~regout\);

-- Location: LCFF_X18_Y15_N29
\reg[23][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(12),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[23][12]~regout\);

-- Location: LCCOMB_X18_Y15_N28
\Mux19~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~11_combout\ = (\addrA~combout\(2) & (((\reg[23][12]~regout\) # (\addrA~combout\(3))))) # (!\addrA~combout\(2) & (\reg[19][12]~regout\ & ((!\addrA~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \reg[19][12]~regout\,
	datac => \reg[23][12]~regout\,
	datad => \addrA~combout\(3),
	combout => \Mux19~11_combout\);

-- Location: LCFF_X19_Y16_N9
\reg[27][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(12),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[27][12]~regout\);

-- Location: LCCOMB_X19_Y16_N10
\reg[31][12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[31][12]~feeder_combout\ = \d_in~combout\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(12),
	combout => \reg[31][12]~feeder_combout\);

-- Location: LCFF_X19_Y16_N11
\reg[31][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[31][12]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[31][12]~regout\);

-- Location: LCCOMB_X19_Y16_N8
\Mux19~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~12_combout\ = (\addrA~combout\(3) & ((\Mux19~11_combout\ & ((\reg[31][12]~regout\))) # (!\Mux19~11_combout\ & (\reg[27][12]~regout\)))) # (!\addrA~combout\(3) & (\Mux19~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \Mux19~11_combout\,
	datac => \reg[27][12]~regout\,
	datad => \reg[31][12]~regout\,
	combout => \Mux19~12_combout\);

-- Location: LCFF_X26_Y14_N25
\reg[20][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(12),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[20][12]~regout\);

-- Location: LCFF_X26_Y14_N11
\reg[28][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(12),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[28][12]~regout\);

-- Location: LCCOMB_X26_Y14_N24
\Mux19~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~9_combout\ = (\Mux19~8_combout\ & (((\reg[28][12]~regout\)) # (!\addrA~combout\(2)))) # (!\Mux19~8_combout\ & (\addrA~combout\(2) & (\reg[20][12]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~8_combout\,
	datab => \addrA~combout\(2),
	datac => \reg[20][12]~regout\,
	datad => \reg[28][12]~regout\,
	combout => \Mux19~9_combout\);

-- Location: LCCOMB_X21_Y16_N26
\Mux19~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~10_combout\ = (\addrA~combout\(0) & ((\Mux19~7_combout\) # ((\addrA~combout\(1))))) # (!\addrA~combout\(0) & (((!\addrA~combout\(1) & \Mux19~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~7_combout\,
	datab => \addrA~combout\(0),
	datac => \addrA~combout\(1),
	datad => \Mux19~9_combout\,
	combout => \Mux19~10_combout\);

-- Location: LCCOMB_X21_Y16_N28
\Mux19~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~13_combout\ = (\addrA~combout\(1) & ((\Mux19~10_combout\ & ((\Mux19~12_combout\))) # (!\Mux19~10_combout\ & (\Mux19~5_combout\)))) # (!\addrA~combout\(1) & (((\Mux19~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~5_combout\,
	datab => \Mux19~12_combout\,
	datac => \addrA~combout\(1),
	datad => \Mux19~10_combout\,
	combout => \Mux19~13_combout\);

-- Location: LCFF_X24_Y15_N21
\reg[1][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(12),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[1][12]~regout\);

-- Location: LCCOMB_X24_Y15_N20
\Mux19~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~14_combout\ = (\Mux31~16_combout\ & ((!\Mux31~15_combout\))) # (!\Mux31~16_combout\ & (\reg[1][12]~regout\ & \Mux31~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux31~16_combout\,
	datac => \reg[1][12]~regout\,
	datad => \Mux31~15_combout\,
	combout => \Mux19~14_combout\);

-- Location: LCFF_X25_Y16_N17
\reg[2][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(12),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[2][12]~regout\);

-- Location: LCFF_X25_Y11_N3
\reg[5][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(12),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[5][12]~regout\);

-- Location: LCFF_X26_Y11_N17
\reg[6][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(12),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[6][12]~regout\);

-- Location: LCCOMB_X22_Y14_N28
\reg[7][12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[7][12]~feeder_combout\ = \d_in~combout\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(12),
	combout => \reg[7][12]~feeder_combout\);

-- Location: LCFF_X22_Y14_N29
\reg[7][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[7][12]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[7][12]~regout\);

-- Location: LCCOMB_X26_Y11_N16
\Mux19~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~15_combout\ = (\addrA~combout\(1) & ((\addrA~combout\(0) & ((\reg[7][12]~regout\))) # (!\addrA~combout\(0) & (\reg[6][12]~regout\)))) # (!\addrA~combout\(1) & (\addrA~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \addrA~combout\(0),
	datac => \reg[6][12]~regout\,
	datad => \reg[7][12]~regout\,
	combout => \Mux19~15_combout\);

-- Location: LCCOMB_X25_Y11_N2
\Mux19~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~17_combout\ = (\Mux19~16_combout\ & ((\addrA~combout\(1) & ((\Mux19~15_combout\))) # (!\addrA~combout\(1) & ((\reg[5][12]~regout\) # (!\Mux19~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~16_combout\,
	datab => \addrA~combout\(1),
	datac => \reg[5][12]~regout\,
	datad => \Mux19~15_combout\,
	combout => \Mux19~17_combout\);

-- Location: LCCOMB_X25_Y16_N16
\Mux19~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~18_combout\ = (\Mux31~18_combout\ & ((\Mux19~17_combout\ & (\reg[3][12]~regout\)) # (!\Mux19~17_combout\ & ((\reg[2][12]~regout\))))) # (!\Mux31~18_combout\ & (((\Mux19~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[3][12]~regout\,
	datab => \Mux31~18_combout\,
	datac => \reg[2][12]~regout\,
	datad => \Mux19~17_combout\,
	combout => \Mux19~18_combout\);

-- Location: LCFF_X25_Y16_N19
\reg[3][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(12),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[3][12]~regout\);

-- Location: LCCOMB_X25_Y16_N18
\Mux19~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~21_combout\ = (\Mux31~23_combout\) # ((\Mux19~14_combout\ & ((\reg[3][12]~regout\) # (!\Mux31~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~23_combout\,
	datab => \Mux19~14_combout\,
	datac => \reg[3][12]~regout\,
	datad => \Mux31~18_combout\,
	combout => \Mux19~21_combout\);

-- Location: LCCOMB_X25_Y16_N12
\Mux19~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~22_combout\ = (\Mux19~26_combout\ & ((\Mux19~21_combout\) # ((!\Mux19~14_combout\ & \Mux19~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~26_combout\,
	datab => \Mux19~14_combout\,
	datac => \Mux19~18_combout\,
	datad => \Mux19~21_combout\,
	combout => \Mux19~22_combout\);

-- Location: LCCOMB_X21_Y16_N8
\Mux19~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~25_combout\ = (\Mux31~14_combout\ & ((\Mux19~22_combout\ & (\Mux19~24_combout\)) # (!\Mux19~22_combout\ & ((\Mux19~13_combout\))))) # (!\Mux31~14_combout\ & (((\Mux19~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~24_combout\,
	datab => \Mux19~13_combout\,
	datac => \Mux31~14_combout\,
	datad => \Mux19~22_combout\,
	combout => \Mux19~25_combout\);

-- Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[13]~I\ : cycloneii_io
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
	padio => ww_d_in(13),
	combout => \d_in~combout\(13));

-- Location: LCFF_X22_Y11_N1
\reg[1][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(13),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[1][13]~regout\);

-- Location: LCCOMB_X22_Y11_N0
\Mux18~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~14_combout\ = (\Mux31~16_combout\ & ((\Mux18~13_combout\) # ((!\Mux31~15_combout\)))) # (!\Mux31~16_combout\ & (((\reg[1][13]~regout\ & \Mux31~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~13_combout\,
	datab => \Mux31~16_combout\,
	datac => \reg[1][13]~regout\,
	datad => \Mux31~15_combout\,
	combout => \Mux18~14_combout\);

-- Location: LCFF_X21_Y11_N21
\reg[2][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(13),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[2][13]~regout\);

-- Location: LCFF_X21_Y11_N23
\reg[3][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(13),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[3][13]~regout\);

-- Location: LCCOMB_X21_Y11_N20
\Mux18~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~15_combout\ = (\Mux31~18_combout\ & ((\Mux18~14_combout\ & ((\reg[3][13]~regout\))) # (!\Mux18~14_combout\ & (\reg[2][13]~regout\)))) # (!\Mux31~18_combout\ & (\Mux18~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~18_combout\,
	datab => \Mux18~14_combout\,
	datac => \reg[2][13]~regout\,
	datad => \reg[3][13]~regout\,
	combout => \Mux18~15_combout\);

-- Location: LCCOMB_X19_Y13_N30
\reg[29][13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[29][13]~feeder_combout\ = \d_in~combout\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(13),
	combout => \reg[29][13]~feeder_combout\);

-- Location: LCFF_X19_Y13_N31
\reg[29][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[29][13]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[29][13]~regout\);

-- Location: LCFF_X19_Y13_N29
\reg[21][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(13),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[21][13]~regout\);

-- Location: LCCOMB_X19_Y13_N28
\Mux18~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = (\Mux18~2_combout\ & ((\reg[29][13]~regout\) # ((!\addrA~combout\(2))))) # (!\Mux18~2_combout\ & (((\reg[21][13]~regout\ & \addrA~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~2_combout\,
	datab => \reg[29][13]~regout\,
	datac => \reg[21][13]~regout\,
	datad => \addrA~combout\(2),
	combout => \Mux18~3_combout\);

-- Location: LCCOMB_X18_Y15_N18
\reg[19][13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[19][13]~feeder_combout\ = \d_in~combout\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(13),
	combout => \reg[19][13]~feeder_combout\);

-- Location: LCFF_X18_Y15_N19
\reg[19][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[19][13]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[19][13]~regout\);

-- Location: LCFF_X18_Y15_N1
\reg[23][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(13),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[23][13]~regout\);

-- Location: LCCOMB_X18_Y15_N0
\Mux18~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~9_combout\ = (\addrA~combout\(2) & (((\reg[23][13]~regout\) # (\addrA~combout\(3))))) # (!\addrA~combout\(2) & (\reg[19][13]~regout\ & ((!\addrA~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \reg[19][13]~regout\,
	datac => \reg[23][13]~regout\,
	datad => \addrA~combout\(3),
	combout => \Mux18~9_combout\);

-- Location: LCFF_X19_Y16_N21
\reg[27][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(13),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[27][13]~regout\);

-- Location: LCFF_X19_Y16_N31
\reg[31][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(13),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[31][13]~regout\);

-- Location: LCCOMB_X19_Y16_N20
\Mux18~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~10_combout\ = (\addrA~combout\(3) & ((\Mux18~9_combout\ & ((\reg[31][13]~regout\))) # (!\Mux18~9_combout\ & (\reg[27][13]~regout\)))) # (!\addrA~combout\(3) & (\Mux18~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \Mux18~9_combout\,
	datac => \reg[27][13]~regout\,
	datad => \reg[31][13]~regout\,
	combout => \Mux18~10_combout\);

-- Location: LCCOMB_X21_Y16_N12
\Mux18~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~11_combout\ = (\Mux18~8_combout\ & (((\Mux18~10_combout\) # (!\addrA~combout\(0))))) # (!\Mux18~8_combout\ & (\Mux18~3_combout\ & ((\addrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~8_combout\,
	datab => \Mux18~3_combout\,
	datac => \Mux18~10_combout\,
	datad => \addrA~combout\(0),
	combout => \Mux18~11_combout\);

-- Location: LCCOMB_X21_Y16_N30
\Mux18~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~16_combout\ = (\Mux31~23_combout\ & (((\Mux31~14_combout\)))) # (!\Mux31~23_combout\ & ((\Mux31~14_combout\ & ((\Mux18~11_combout\))) # (!\Mux31~14_combout\ & (\Mux18~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~23_combout\,
	datab => \Mux18~15_combout\,
	datac => \Mux31~14_combout\,
	datad => \Mux18~11_combout\,
	combout => \Mux18~16_combout\);

-- Location: LCFF_X23_Y16_N1
\reg[14][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(13),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[14][13]~regout\);

-- Location: LCCOMB_X23_Y16_N26
\reg[12][13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[12][13]~feeder_combout\ = \d_in~combout\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(13),
	combout => \reg[12][13]~feeder_combout\);

-- Location: LCFF_X23_Y16_N27
\reg[12][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[12][13]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[12][13]~regout\);

-- Location: LCCOMB_X23_Y16_N0
\Mux18~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~17_combout\ = (\addrA~combout\(0) & (\addrA~combout\(1))) # (!\addrA~combout\(0) & ((\addrA~combout\(1) & (\reg[14][13]~regout\)) # (!\addrA~combout\(1) & ((\reg[12][13]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \addrA~combout\(1),
	datac => \reg[14][13]~regout\,
	datad => \reg[12][13]~regout\,
	combout => \Mux18~17_combout\);

-- Location: LCFF_X23_Y17_N17
\reg[13][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(13),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[13][13]~regout\);

-- Location: LCFF_X23_Y17_N27
\reg[15][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(13),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[15][13]~regout\);

-- Location: LCCOMB_X23_Y17_N16
\Mux18~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~18_combout\ = (\addrA~combout\(0) & ((\Mux18~17_combout\ & ((\reg[15][13]~regout\))) # (!\Mux18~17_combout\ & (\reg[13][13]~regout\)))) # (!\addrA~combout\(0) & (\Mux18~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \Mux18~17_combout\,
	datac => \reg[13][13]~regout\,
	datad => \reg[15][13]~regout\,
	combout => \Mux18~18_combout\);

-- Location: LCFF_X25_Y13_N13
\reg[10][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(13),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[10][13]~regout\);

-- Location: LCFF_X23_Y14_N17
\reg[9][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(13),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[9][13]~regout\);

-- Location: LCFF_X24_Y14_N31
\reg[8][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(13),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[8][13]~regout\);

-- Location: LCCOMB_X23_Y14_N16
\Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\addrA~combout\(1) & (\addrA~combout\(0))) # (!\addrA~combout\(1) & ((\addrA~combout\(0) & (\reg[9][13]~regout\)) # (!\addrA~combout\(0) & ((\reg[8][13]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \addrA~combout\(0),
	datac => \reg[9][13]~regout\,
	datad => \reg[8][13]~regout\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X25_Y13_N12
\Mux18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\addrA~combout\(1) & ((\Mux18~0_combout\ & (\reg[11][13]~regout\)) # (!\Mux18~0_combout\ & ((\reg[10][13]~regout\))))) # (!\addrA~combout\(1) & (((\Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[11][13]~regout\,
	datab => \addrA~combout\(1),
	datac => \reg[10][13]~regout\,
	datad => \Mux18~0_combout\,
	combout => \Mux18~1_combout\);

-- Location: LCCOMB_X21_Y16_N0
\Mux18~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~19_combout\ = (\Mux31~23_combout\ & ((\Mux18~16_combout\ & (\Mux18~18_combout\)) # (!\Mux18~16_combout\ & ((\Mux18~1_combout\))))) # (!\Mux31~23_combout\ & (\Mux18~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~23_combout\,
	datab => \Mux18~16_combout\,
	datac => \Mux18~18_combout\,
	datad => \Mux18~1_combout\,
	combout => \Mux18~19_combout\);

-- Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[14]~I\ : cycloneii_io
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
	padio => ww_d_in(14),
	combout => \d_in~combout\(14));

-- Location: LCFF_X18_Y12_N25
\reg[13][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(14),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[13][14]~regout\);

-- Location: LCFF_X18_Y16_N9
\reg[12][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(14),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[12][14]~regout\);

-- Location: LCCOMB_X18_Y12_N24
\Mux17~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~23_combout\ = (\addrA~combout\(1) & (\addrA~combout\(0))) # (!\addrA~combout\(1) & ((\addrA~combout\(0) & (\reg[13][14]~regout\)) # (!\addrA~combout\(0) & ((\reg[12][14]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \addrA~combout\(0),
	datac => \reg[13][14]~regout\,
	datad => \reg[12][14]~regout\,
	combout => \Mux17~23_combout\);

-- Location: LCFF_X18_Y16_N7
\reg[14][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(14),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[14][14]~regout\);

-- Location: LCCOMB_X23_Y17_N12
\reg[15][14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[15][14]~feeder_combout\ = \d_in~combout\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(14),
	combout => \reg[15][14]~feeder_combout\);

-- Location: LCFF_X23_Y17_N13
\reg[15][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[15][14]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[15][14]~regout\);

-- Location: LCCOMB_X18_Y16_N6
\Mux17~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~24_combout\ = (\addrA~combout\(1) & ((\Mux17~23_combout\ & ((\reg[15][14]~regout\))) # (!\Mux17~23_combout\ & (\reg[14][14]~regout\)))) # (!\addrA~combout\(1) & (\Mux17~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \Mux17~23_combout\,
	datac => \reg[14][14]~regout\,
	datad => \reg[15][14]~regout\,
	combout => \Mux17~24_combout\);

-- Location: LCFF_X18_Y13_N9
\reg[25][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(14),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[25][14]~regout\);

-- Location: LCCOMB_X18_Y13_N10
\reg[17][14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[17][14]~feeder_combout\ = \d_in~combout\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(14),
	combout => \reg[17][14]~feeder_combout\);

-- Location: LCFF_X18_Y13_N11
\reg[17][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[17][14]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[17][14]~regout\);

-- Location: LCCOMB_X18_Y13_N8
\Mux17~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~6_combout\ = (\addrA~combout\(3) & ((\addrA~combout\(2)) # ((\reg[25][14]~regout\)))) # (!\addrA~combout\(3) & (!\addrA~combout\(2) & ((\reg[17][14]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \reg[25][14]~regout\,
	datad => \reg[17][14]~regout\,
	combout => \Mux17~6_combout\);

-- Location: LCFF_X19_Y13_N9
\reg[21][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(14),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[21][14]~regout\);

-- Location: LCFF_X19_Y13_N19
\reg[29][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(14),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[29][14]~regout\);

-- Location: LCCOMB_X19_Y13_N8
\Mux17~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~7_combout\ = (\addrA~combout\(2) & ((\Mux17~6_combout\ & ((\reg[29][14]~regout\))) # (!\Mux17~6_combout\ & (\reg[21][14]~regout\)))) # (!\addrA~combout\(2) & (\Mux17~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \Mux17~6_combout\,
	datac => \reg[21][14]~regout\,
	datad => \reg[29][14]~regout\,
	combout => \Mux17~7_combout\);

-- Location: LCFF_X27_Y14_N1
\reg[24][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(14),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[24][14]~regout\);

-- Location: LCCOMB_X27_Y14_N2
\reg[16][14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[16][14]~feeder_combout\ = \d_in~combout\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(14),
	combout => \reg[16][14]~feeder_combout\);

-- Location: LCFF_X27_Y14_N3
\reg[16][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[16][14]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[16][14]~regout\);

-- Location: LCCOMB_X27_Y14_N0
\Mux17~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~8_combout\ = (\addrA~combout\(2) & (\addrA~combout\(3))) # (!\addrA~combout\(2) & ((\addrA~combout\(3) & (\reg[24][14]~regout\)) # (!\addrA~combout\(3) & ((\reg[16][14]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[24][14]~regout\,
	datad => \reg[16][14]~regout\,
	combout => \Mux17~8_combout\);

-- Location: LCFF_X26_Y14_N9
\reg[20][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(14),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[20][14]~regout\);

-- Location: LCFF_X26_Y14_N19
\reg[28][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(14),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[28][14]~regout\);

-- Location: LCCOMB_X26_Y14_N8
\Mux17~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~9_combout\ = (\addrA~combout\(2) & ((\Mux17~8_combout\ & ((\reg[28][14]~regout\))) # (!\Mux17~8_combout\ & (\reg[20][14]~regout\)))) # (!\addrA~combout\(2) & (\Mux17~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \Mux17~8_combout\,
	datac => \reg[20][14]~regout\,
	datad => \reg[28][14]~regout\,
	combout => \Mux17~9_combout\);

-- Location: LCCOMB_X18_Y16_N0
\Mux17~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~10_combout\ = (\addrA~combout\(0) & ((\Mux17~7_combout\) # ((\addrA~combout\(1))))) # (!\addrA~combout\(0) & (((!\addrA~combout\(1) & \Mux17~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \Mux17~7_combout\,
	datac => \addrA~combout\(1),
	datad => \Mux17~9_combout\,
	combout => \Mux17~10_combout\);

-- Location: LCFF_X19_Y17_N15
\reg[30][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(14),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[30][14]~regout\);

-- Location: LCFF_X19_Y17_N29
\reg[26][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(14),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[26][14]~regout\);

-- Location: LCCOMB_X19_Y17_N28
\Mux17~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~5_combout\ = (\Mux17~4_combout\ & ((\reg[30][14]~regout\) # ((!\addrA~combout\(3))))) # (!\Mux17~4_combout\ & (((\reg[26][14]~regout\ & \addrA~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~4_combout\,
	datab => \reg[30][14]~regout\,
	datac => \reg[26][14]~regout\,
	datad => \addrA~combout\(3),
	combout => \Mux17~5_combout\);

-- Location: LCCOMB_X18_Y16_N26
\Mux17~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~13_combout\ = (\Mux17~10_combout\ & ((\Mux17~12_combout\) # ((!\addrA~combout\(1))))) # (!\Mux17~10_combout\ & (((\Mux17~5_combout\ & \addrA~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~12_combout\,
	datab => \Mux17~10_combout\,
	datac => \Mux17~5_combout\,
	datad => \addrA~combout\(1),
	combout => \Mux17~13_combout\);

-- Location: LCFF_X22_Y12_N13
\reg[10][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(14),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[10][14]~regout\);

-- Location: LCFF_X22_Y12_N31
\reg[8][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(14),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[8][14]~regout\);

-- Location: LCCOMB_X22_Y12_N12
\Mux17~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~19_combout\ = (\addrA~combout\(0) & (\addrA~combout\(1))) # (!\addrA~combout\(0) & ((\addrA~combout\(1) & (\reg[10][14]~regout\)) # (!\addrA~combout\(1) & ((\reg[8][14]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \addrA~combout\(1),
	datac => \reg[10][14]~regout\,
	datad => \reg[8][14]~regout\,
	combout => \Mux17~19_combout\);

-- Location: LCFF_X23_Y12_N3
\reg[9][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(14),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[9][14]~regout\);

-- Location: LCFF_X22_Y13_N9
\reg[11][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(14),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[11][14]~regout\);

-- Location: LCCOMB_X23_Y12_N2
\Mux17~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~20_combout\ = (\addrA~combout\(0) & ((\Mux17~19_combout\ & ((\reg[11][14]~regout\))) # (!\Mux17~19_combout\ & (\reg[9][14]~regout\)))) # (!\addrA~combout\(0) & (\Mux17~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \Mux17~19_combout\,
	datac => \reg[9][14]~regout\,
	datad => \reg[11][14]~regout\,
	combout => \Mux17~20_combout\);

-- Location: LCCOMB_X24_Y12_N20
\Mux17~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~26_combout\ = (!\addrA~combout\(4) & (((\addrA~combout\(2)) # (\Mux17~20_combout\)) # (!\addrA~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \addrA~combout\(4),
	datad => \Mux17~20_combout\,
	combout => \Mux17~26_combout\);

-- Location: LCFF_X25_Y12_N5
\reg[3][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(14),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[3][14]~regout\);

-- Location: LCFF_X24_Y15_N23
\reg[1][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(14),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[1][14]~regout\);

-- Location: LCCOMB_X24_Y15_N22
\Mux17~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~14_combout\ = (\Mux31~16_combout\ & ((!\Mux31~15_combout\))) # (!\Mux31~16_combout\ & (\reg[1][14]~regout\ & \Mux31~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux31~16_combout\,
	datac => \reg[1][14]~regout\,
	datad => \Mux31~15_combout\,
	combout => \Mux17~14_combout\);

-- Location: LCCOMB_X25_Y12_N4
\Mux17~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~21_combout\ = (\Mux31~23_combout\) # ((\Mux17~14_combout\ & ((\reg[3][14]~regout\) # (!\Mux31~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~18_combout\,
	datab => \Mux31~23_combout\,
	datac => \reg[3][14]~regout\,
	datad => \Mux17~14_combout\,
	combout => \Mux17~21_combout\);

-- Location: LCFF_X25_Y12_N27
\reg[2][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(14),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[2][14]~regout\);

-- Location: LCCOMB_X25_Y12_N26
\Mux17~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~18_combout\ = (\Mux17~17_combout\ & ((\reg[3][14]~regout\) # ((!\Mux31~18_combout\)))) # (!\Mux17~17_combout\ & (((\reg[2][14]~regout\ & \Mux31~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~17_combout\,
	datab => \reg[3][14]~regout\,
	datac => \reg[2][14]~regout\,
	datad => \Mux31~18_combout\,
	combout => \Mux17~18_combout\);

-- Location: LCCOMB_X18_Y16_N4
\Mux17~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~22_combout\ = (\Mux17~26_combout\ & ((\Mux17~21_combout\) # ((!\Mux17~14_combout\ & \Mux17~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~14_combout\,
	datab => \Mux17~26_combout\,
	datac => \Mux17~21_combout\,
	datad => \Mux17~18_combout\,
	combout => \Mux17~22_combout\);

-- Location: LCCOMB_X18_Y16_N2
\Mux17~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~25_combout\ = (\Mux17~22_combout\ & ((\Mux17~24_combout\) # ((!\Mux31~14_combout\)))) # (!\Mux17~22_combout\ & (((\Mux17~13_combout\ & \Mux31~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~24_combout\,
	datab => \Mux17~13_combout\,
	datac => \Mux17~22_combout\,
	datad => \Mux31~14_combout\,
	combout => \Mux17~25_combout\);

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[15]~I\ : cycloneii_io
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
	padio => ww_d_in(15),
	combout => \d_in~combout\(15));

-- Location: LCFF_X22_Y11_N29
\reg[1][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(15),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[1][15]~regout\);

-- Location: LCCOMB_X22_Y11_N28
\Mux16~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~14_combout\ = (\Mux31~16_combout\ & ((\Mux16~13_combout\) # ((!\Mux31~15_combout\)))) # (!\Mux31~16_combout\ & (((\reg[1][15]~regout\ & \Mux31~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~13_combout\,
	datab => \Mux31~16_combout\,
	datac => \reg[1][15]~regout\,
	datad => \Mux31~15_combout\,
	combout => \Mux16~14_combout\);

-- Location: LCFF_X21_Y11_N1
\reg[2][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(15),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[2][15]~regout\);

-- Location: LCCOMB_X21_Y11_N0
\Mux16~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~15_combout\ = (\Mux16~14_combout\ & ((\reg[3][15]~regout\) # ((!\Mux31~18_combout\)))) # (!\Mux16~14_combout\ & (((\reg[2][15]~regout\ & \Mux31~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[3][15]~regout\,
	datab => \Mux16~14_combout\,
	datac => \reg[2][15]~regout\,
	datad => \Mux31~18_combout\,
	combout => \Mux16~15_combout\);

-- Location: LCFF_X14_Y14_N1
\reg[21][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(15),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[21][15]~regout\);

-- Location: LCFF_X14_Y14_N27
\reg[29][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(15),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[29][15]~regout\);

-- Location: LCCOMB_X14_Y14_N0
\Mux16~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (\Mux16~2_combout\ & (((\reg[29][15]~regout\)) # (!\addrA~combout\(2)))) # (!\Mux16~2_combout\ & (\addrA~combout\(2) & (\reg[21][15]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~2_combout\,
	datab => \addrA~combout\(2),
	datac => \reg[21][15]~regout\,
	datad => \reg[29][15]~regout\,
	combout => \Mux16~3_combout\);

-- Location: LCFF_X19_Y16_N15
\reg[31][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(15),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[31][15]~regout\);

-- Location: LCFF_X19_Y16_N13
\reg[27][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(15),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[27][15]~regout\);

-- Location: LCFF_X20_Y16_N21
\reg[23][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(15),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[23][15]~regout\);

-- Location: LCFF_X20_Y16_N31
\reg[19][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(15),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[19][15]~regout\);

-- Location: LCCOMB_X20_Y16_N20
\Mux16~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~9_combout\ = (\addrA~combout\(2) & ((\addrA~combout\(3)) # ((\reg[23][15]~regout\)))) # (!\addrA~combout\(2) & (!\addrA~combout\(3) & ((\reg[19][15]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[23][15]~regout\,
	datad => \reg[19][15]~regout\,
	combout => \Mux16~9_combout\);

-- Location: LCCOMB_X19_Y16_N12
\Mux16~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~10_combout\ = (\addrA~combout\(3) & ((\Mux16~9_combout\ & (\reg[31][15]~regout\)) # (!\Mux16~9_combout\ & ((\reg[27][15]~regout\))))) # (!\addrA~combout\(3) & (((\Mux16~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \reg[31][15]~regout\,
	datac => \reg[27][15]~regout\,
	datad => \Mux16~9_combout\,
	combout => \Mux16~10_combout\);

-- Location: LCCOMB_X18_Y16_N22
\Mux16~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~11_combout\ = (\Mux16~8_combout\ & (((\Mux16~10_combout\) # (!\addrA~combout\(0))))) # (!\Mux16~8_combout\ & (\Mux16~3_combout\ & ((\addrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~8_combout\,
	datab => \Mux16~3_combout\,
	datac => \Mux16~10_combout\,
	datad => \addrA~combout\(0),
	combout => \Mux16~11_combout\);

-- Location: LCCOMB_X18_Y16_N16
\Mux16~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~16_combout\ = (\Mux31~14_combout\ & ((\Mux31~23_combout\) # ((\Mux16~11_combout\)))) # (!\Mux31~14_combout\ & (!\Mux31~23_combout\ & (\Mux16~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~14_combout\,
	datab => \Mux31~23_combout\,
	datac => \Mux16~15_combout\,
	datad => \Mux16~11_combout\,
	combout => \Mux16~16_combout\);

-- Location: LCCOMB_X22_Y13_N10
\reg[11][15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[11][15]~feeder_combout\ = \d_in~combout\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(15),
	combout => \reg[11][15]~feeder_combout\);

-- Location: LCFF_X22_Y13_N11
\reg[11][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[11][15]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[11][15]~regout\);

-- Location: LCFF_X22_Y14_N25
\reg[10][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(15),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[10][15]~regout\);

-- Location: LCCOMB_X22_Y14_N24
\Mux16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\Mux16~0_combout\ & ((\reg[11][15]~regout\) # ((!\addrA~combout\(1))))) # (!\Mux16~0_combout\ & (((\reg[10][15]~regout\ & \addrA~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~0_combout\,
	datab => \reg[11][15]~regout\,
	datac => \reg[10][15]~regout\,
	datad => \addrA~combout\(1),
	combout => \Mux16~1_combout\);

-- Location: LCFF_X22_Y16_N1
\reg[13][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(15),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[13][15]~regout\);

-- Location: LCFF_X23_Y14_N5
\reg[15][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(15),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[15][15]~regout\);

-- Location: LCCOMB_X22_Y16_N0
\Mux16~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~18_combout\ = (\Mux16~17_combout\ & (((\reg[15][15]~regout\)) # (!\addrA~combout\(0)))) # (!\Mux16~17_combout\ & (\addrA~combout\(0) & (\reg[13][15]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~17_combout\,
	datab => \addrA~combout\(0),
	datac => \reg[13][15]~regout\,
	datad => \reg[15][15]~regout\,
	combout => \Mux16~18_combout\);

-- Location: LCCOMB_X18_Y16_N14
\Mux16~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~19_combout\ = (\Mux16~16_combout\ & (((\Mux16~18_combout\)) # (!\Mux31~23_combout\))) # (!\Mux16~16_combout\ & (\Mux31~23_combout\ & (\Mux16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~16_combout\,
	datab => \Mux31~23_combout\,
	datac => \Mux16~1_combout\,
	datad => \Mux16~18_combout\,
	combout => \Mux16~19_combout\);

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[16]~I\ : cycloneii_io
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
	padio => ww_d_in(16),
	combout => \d_in~combout\(16));

-- Location: LCFF_X19_Y12_N21
\reg[14][16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(16),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[14][16]~regout\);

-- Location: LCFF_X19_Y12_N7
\reg[15][16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(16),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[15][16]~regout\);

-- Location: LCCOMB_X19_Y12_N20
\Mux15~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~24_combout\ = (\Mux15~23_combout\ & (((\reg[15][16]~regout\)) # (!\addrA~combout\(1)))) # (!\Mux15~23_combout\ & (\addrA~combout\(1) & (\reg[14][16]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~23_combout\,
	datab => \addrA~combout\(1),
	datac => \reg[14][16]~regout\,
	datad => \reg[15][16]~regout\,
	combout => \Mux15~24_combout\);

-- Location: LCFF_X19_Y16_N19
\reg[31][16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(16),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[31][16]~regout\);

-- Location: LCFF_X19_Y16_N1
\reg[27][16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(16),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[27][16]~regout\);

-- Location: LCFF_X20_Y16_N25
\reg[23][16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(16),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[23][16]~regout\);

-- Location: LCFF_X20_Y16_N27
\reg[19][16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(16),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[19][16]~regout\);

-- Location: LCCOMB_X20_Y16_N24
\Mux15~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~11_combout\ = (\addrA~combout\(2) & ((\addrA~combout\(3)) # ((\reg[23][16]~regout\)))) # (!\addrA~combout\(2) & (!\addrA~combout\(3) & ((\reg[19][16]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[23][16]~regout\,
	datad => \reg[19][16]~regout\,
	combout => \Mux15~11_combout\);

-- Location: LCCOMB_X19_Y16_N0
\Mux15~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~12_combout\ = (\addrA~combout\(3) & ((\Mux15~11_combout\ & (\reg[31][16]~regout\)) # (!\Mux15~11_combout\ & ((\reg[27][16]~regout\))))) # (!\addrA~combout\(3) & (((\Mux15~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \reg[31][16]~regout\,
	datac => \reg[27][16]~regout\,
	datad => \Mux15~11_combout\,
	combout => \Mux15~12_combout\);

-- Location: LCFF_X19_Y17_N21
\reg[26][16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(16),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[26][16]~regout\);

-- Location: LCFF_X20_Y18_N11
\reg[22][16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(16),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[22][16]~regout\);

-- Location: LCCOMB_X20_Y18_N10
\Mux15~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = (\addrA~combout\(3) & (((\addrA~combout\(2))))) # (!\addrA~combout\(3) & ((\addrA~combout\(2) & ((\reg[22][16]~regout\))) # (!\addrA~combout\(2) & (\reg[18][16]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[18][16]~regout\,
	datab => \addrA~combout\(3),
	datac => \reg[22][16]~regout\,
	datad => \addrA~combout\(2),
	combout => \Mux15~4_combout\);

-- Location: LCCOMB_X19_Y17_N20
\Mux15~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~5_combout\ = (\addrA~combout\(3) & ((\Mux15~4_combout\ & (\reg[30][16]~regout\)) # (!\Mux15~4_combout\ & ((\reg[26][16]~regout\))))) # (!\addrA~combout\(3) & (((\Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[30][16]~regout\,
	datab => \addrA~combout\(3),
	datac => \reg[26][16]~regout\,
	datad => \Mux15~4_combout\,
	combout => \Mux15~5_combout\);

-- Location: LCCOMB_X18_Y16_N10
\Mux15~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~13_combout\ = (\Mux15~10_combout\ & ((\Mux15~12_combout\) # ((!\addrA~combout\(1))))) # (!\Mux15~10_combout\ & (((\addrA~combout\(1) & \Mux15~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~10_combout\,
	datab => \Mux15~12_combout\,
	datac => \addrA~combout\(1),
	datad => \Mux15~5_combout\,
	combout => \Mux15~13_combout\);

-- Location: LCFF_X24_Y15_N9
\reg[1][16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(16),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[1][16]~regout\);

-- Location: LCCOMB_X24_Y15_N8
\Mux15~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~14_combout\ = (\Mux31~16_combout\ & ((!\Mux31~15_combout\))) # (!\Mux31~16_combout\ & (\reg[1][16]~regout\ & \Mux31~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux31~16_combout\,
	datac => \reg[1][16]~regout\,
	datad => \Mux31~15_combout\,
	combout => \Mux15~14_combout\);

-- Location: LCFF_X25_Y12_N9
\reg[3][16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(16),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[3][16]~regout\);

-- Location: LCCOMB_X25_Y12_N8
\Mux15~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~21_combout\ = (\Mux31~23_combout\) # ((\Mux15~14_combout\ & ((\reg[3][16]~regout\) # (!\Mux31~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~14_combout\,
	datab => \Mux31~23_combout\,
	datac => \reg[3][16]~regout\,
	datad => \Mux31~18_combout\,
	combout => \Mux15~21_combout\);

-- Location: LCFF_X23_Y12_N23
\reg[11][16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(16),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[11][16]~regout\);

-- Location: LCFF_X23_Y12_N13
\reg[9][16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(16),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[9][16]~regout\);

-- Location: LCFF_X22_Y12_N1
\reg[10][16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(16),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[10][16]~regout\);

-- Location: LCCOMB_X22_Y12_N0
\Mux15~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~19_combout\ = (\addrA~combout\(1) & (((\reg[10][16]~regout\) # (\addrA~combout\(0))))) # (!\addrA~combout\(1) & (\reg[8][16]~regout\ & ((!\addrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[8][16]~regout\,
	datab => \addrA~combout\(1),
	datac => \reg[10][16]~regout\,
	datad => \addrA~combout\(0),
	combout => \Mux15~19_combout\);

-- Location: LCCOMB_X23_Y12_N12
\Mux15~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~20_combout\ = (\addrA~combout\(0) & ((\Mux15~19_combout\ & (\reg[11][16]~regout\)) # (!\Mux15~19_combout\ & ((\reg[9][16]~regout\))))) # (!\addrA~combout\(0) & (((\Mux15~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \reg[11][16]~regout\,
	datac => \reg[9][16]~regout\,
	datad => \Mux15~19_combout\,
	combout => \Mux15~20_combout\);

-- Location: LCCOMB_X24_Y12_N30
\Mux15~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~26_combout\ = (!\addrA~combout\(4) & (((\addrA~combout\(2)) # (\Mux15~20_combout\)) # (!\addrA~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \addrA~combout\(4),
	datad => \Mux15~20_combout\,
	combout => \Mux15~26_combout\);

-- Location: LCCOMB_X24_Y12_N6
\Mux15~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~22_combout\ = (\Mux15~26_combout\ & ((\Mux15~21_combout\) # ((\Mux15~18_combout\ & !\Mux15~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~18_combout\,
	datab => \Mux15~14_combout\,
	datac => \Mux15~21_combout\,
	datad => \Mux15~26_combout\,
	combout => \Mux15~22_combout\);

-- Location: LCCOMB_X18_Y12_N20
\Mux15~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~25_combout\ = (\Mux31~14_combout\ & ((\Mux15~22_combout\ & (\Mux15~24_combout\)) # (!\Mux15~22_combout\ & ((\Mux15~13_combout\))))) # (!\Mux31~14_combout\ & (((\Mux15~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~14_combout\,
	datab => \Mux15~24_combout\,
	datac => \Mux15~13_combout\,
	datad => \Mux15~22_combout\,
	combout => \Mux15~25_combout\);

-- Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[17]~I\ : cycloneii_io
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
	padio => ww_d_in(17),
	combout => \d_in~combout\(17));

-- Location: LCCOMB_X19_Y16_N22
\reg[31][17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[31][17]~feeder_combout\ = \d_in~combout\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(17),
	combout => \reg[31][17]~feeder_combout\);

-- Location: LCFF_X19_Y16_N23
\reg[31][17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[31][17]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[31][17]~regout\);

-- Location: LCFF_X19_Y16_N5
\reg[27][17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(17),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[27][17]~regout\);

-- Location: LCFF_X20_Y17_N21
\reg[23][17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(17),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[23][17]~regout\);

-- Location: LCCOMB_X20_Y17_N14
\reg[19][17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[19][17]~feeder_combout\ = \d_in~combout\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(17),
	combout => \reg[19][17]~feeder_combout\);

-- Location: LCFF_X20_Y17_N15
\reg[19][17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[19][17]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[19][17]~regout\);

-- Location: LCCOMB_X20_Y17_N20
\Mux14~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~9_combout\ = (\addrA~combout\(3) & (\addrA~combout\(2))) # (!\addrA~combout\(3) & ((\addrA~combout\(2) & (\reg[23][17]~regout\)) # (!\addrA~combout\(2) & ((\reg[19][17]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \reg[23][17]~regout\,
	datad => \reg[19][17]~regout\,
	combout => \Mux14~9_combout\);

-- Location: LCCOMB_X19_Y16_N4
\Mux14~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~10_combout\ = (\addrA~combout\(3) & ((\Mux14~9_combout\ & (\reg[31][17]~regout\)) # (!\Mux14~9_combout\ & ((\reg[27][17]~regout\))))) # (!\addrA~combout\(3) & (((\Mux14~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \reg[31][17]~regout\,
	datac => \reg[27][17]~regout\,
	datad => \Mux14~9_combout\,
	combout => \Mux14~10_combout\);

-- Location: LCFF_X14_Y14_N17
\reg[21][17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(17),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[21][17]~regout\);

-- Location: LCCOMB_X14_Y14_N2
\reg[29][17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[29][17]~feeder_combout\ = \d_in~combout\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(17),
	combout => \reg[29][17]~feeder_combout\);

-- Location: LCFF_X14_Y14_N3
\reg[29][17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[29][17]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[29][17]~regout\);

-- Location: LCCOMB_X14_Y14_N16
\Mux14~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\Mux14~2_combout\ & (((\reg[29][17]~regout\)) # (!\addrA~combout\(2)))) # (!\Mux14~2_combout\ & (\addrA~combout\(2) & (\reg[21][17]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~2_combout\,
	datab => \addrA~combout\(2),
	datac => \reg[21][17]~regout\,
	datad => \reg[29][17]~regout\,
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X19_Y14_N28
\Mux14~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~11_combout\ = (\Mux14~8_combout\ & ((\Mux14~10_combout\) # ((!\addrA~combout\(0))))) # (!\Mux14~8_combout\ & (((\Mux14~3_combout\ & \addrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~8_combout\,
	datab => \Mux14~10_combout\,
	datac => \Mux14~3_combout\,
	datad => \addrA~combout\(0),
	combout => \Mux14~11_combout\);

-- Location: LCFF_X21_Y10_N23
\reg[3][17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(17),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[3][17]~regout\);

-- Location: LCFF_X21_Y10_N13
\reg[2][17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(17),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[2][17]~regout\);

-- Location: LCCOMB_X21_Y10_N12
\Mux14~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~15_combout\ = (\Mux14~14_combout\ & ((\reg[3][17]~regout\) # ((!\Mux31~18_combout\)))) # (!\Mux14~14_combout\ & (((\reg[2][17]~regout\ & \Mux31~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~14_combout\,
	datab => \reg[3][17]~regout\,
	datac => \reg[2][17]~regout\,
	datad => \Mux31~18_combout\,
	combout => \Mux14~15_combout\);

-- Location: LCCOMB_X19_Y14_N22
\Mux14~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~16_combout\ = (\Mux31~23_combout\ & (((\Mux31~14_combout\)))) # (!\Mux31~23_combout\ & ((\Mux31~14_combout\ & (\Mux14~11_combout\)) # (!\Mux31~14_combout\ & ((\Mux14~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~23_combout\,
	datab => \Mux14~11_combout\,
	datac => \Mux31~14_combout\,
	datad => \Mux14~15_combout\,
	combout => \Mux14~16_combout\);

-- Location: LCCOMB_X22_Y13_N28
\reg[11][17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[11][17]~feeder_combout\ = \d_in~combout\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(17),
	combout => \reg[11][17]~feeder_combout\);

-- Location: LCFF_X22_Y13_N29
\reg[11][17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[11][17]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[11][17]~regout\);

-- Location: LCFF_X19_Y14_N17
\reg[10][17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(17),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[10][17]~regout\);

-- Location: LCFF_X23_Y14_N23
\reg[9][17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(17),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[9][17]~regout\);

-- Location: LCCOMB_X23_Y10_N8
\reg[8][17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[8][17]~feeder_combout\ = \d_in~combout\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(17),
	combout => \reg[8][17]~feeder_combout\);

-- Location: LCFF_X23_Y10_N9
\reg[8][17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[8][17]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[8][17]~regout\);

-- Location: LCCOMB_X23_Y14_N22
\Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\addrA~combout\(1) & (\addrA~combout\(0))) # (!\addrA~combout\(1) & ((\addrA~combout\(0) & (\reg[9][17]~regout\)) # (!\addrA~combout\(0) & ((\reg[8][17]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \addrA~combout\(0),
	datac => \reg[9][17]~regout\,
	datad => \reg[8][17]~regout\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X19_Y14_N16
\Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\addrA~combout\(1) & ((\Mux14~0_combout\ & (\reg[11][17]~regout\)) # (!\Mux14~0_combout\ & ((\reg[10][17]~regout\))))) # (!\addrA~combout\(1) & (((\Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \reg[11][17]~regout\,
	datac => \reg[10][17]~regout\,
	datad => \Mux14~0_combout\,
	combout => \Mux14~1_combout\);

-- Location: LCFF_X19_Y14_N1
\reg[13][17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(17),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[13][17]~regout\);

-- Location: LCCOMB_X23_Y14_N0
\reg[15][17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[15][17]~feeder_combout\ = \d_in~combout\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(17),
	combout => \reg[15][17]~feeder_combout\);

-- Location: LCFF_X23_Y14_N1
\reg[15][17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[15][17]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[15][17]~regout\);

-- Location: LCCOMB_X19_Y14_N0
\Mux14~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~18_combout\ = (\Mux14~17_combout\ & (((\reg[15][17]~regout\)) # (!\addrA~combout\(0)))) # (!\Mux14~17_combout\ & (\addrA~combout\(0) & (\reg[13][17]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~17_combout\,
	datab => \addrA~combout\(0),
	datac => \reg[13][17]~regout\,
	datad => \reg[15][17]~regout\,
	combout => \Mux14~18_combout\);

-- Location: LCCOMB_X19_Y14_N18
\Mux14~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~19_combout\ = (\Mux31~23_combout\ & ((\Mux14~16_combout\ & ((\Mux14~18_combout\))) # (!\Mux14~16_combout\ & (\Mux14~1_combout\)))) # (!\Mux31~23_combout\ & (\Mux14~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~23_combout\,
	datab => \Mux14~16_combout\,
	datac => \Mux14~1_combout\,
	datad => \Mux14~18_combout\,
	combout => \Mux14~19_combout\);

-- Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[18]~I\ : cycloneii_io
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
	padio => ww_d_in(18),
	combout => \d_in~combout\(18));

-- Location: LCFF_X24_Y15_N11
\reg[1][18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(18),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[1][18]~regout\);

-- Location: LCCOMB_X24_Y15_N10
\Mux13~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~14_combout\ = (\Mux31~16_combout\ & ((!\Mux31~15_combout\))) # (!\Mux31~16_combout\ & (\reg[1][18]~regout\ & \Mux31~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux31~16_combout\,
	datac => \reg[1][18]~regout\,
	datad => \Mux31~15_combout\,
	combout => \Mux13~14_combout\);

-- Location: LCFF_X22_Y12_N19
\reg[10][18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(18),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[10][18]~regout\);

-- Location: LCFF_X23_Y9_N31
\reg[8][18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(18),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[8][18]~regout\);

-- Location: LCCOMB_X22_Y12_N18
\Mux13~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~19_combout\ = (\addrA~combout\(0) & (\addrA~combout\(1))) # (!\addrA~combout\(0) & ((\addrA~combout\(1) & (\reg[10][18]~regout\)) # (!\addrA~combout\(1) & ((\reg[8][18]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \addrA~combout\(1),
	datac => \reg[10][18]~regout\,
	datad => \reg[8][18]~regout\,
	combout => \Mux13~19_combout\);

-- Location: LCFF_X23_Y12_N9
\reg[9][18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(18),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[9][18]~regout\);

-- Location: LCCOMB_X23_Y12_N8
\Mux13~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~20_combout\ = (\Mux13~19_combout\ & ((\reg[11][18]~regout\) # ((!\addrA~combout\(0))))) # (!\Mux13~19_combout\ & (((\reg[9][18]~regout\ & \addrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[11][18]~regout\,
	datab => \Mux13~19_combout\,
	datac => \reg[9][18]~regout\,
	datad => \addrA~combout\(0),
	combout => \Mux13~20_combout\);

-- Location: LCCOMB_X24_Y12_N8
\Mux13~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~26_combout\ = (!\addrA~combout\(4) & (((\addrA~combout\(2)) # (\Mux13~20_combout\)) # (!\addrA~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \addrA~combout\(4),
	datad => \Mux13~20_combout\,
	combout => \Mux13~26_combout\);

-- Location: LCFF_X25_Y12_N11
\reg[2][18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(18),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[2][18]~regout\);

-- Location: LCFF_X25_Y12_N13
\reg[3][18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(18),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[3][18]~regout\);

-- Location: LCCOMB_X25_Y12_N10
\Mux13~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~18_combout\ = (\Mux13~17_combout\ & (((\reg[3][18]~regout\)) # (!\Mux31~18_combout\))) # (!\Mux13~17_combout\ & (\Mux31~18_combout\ & (\reg[2][18]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~17_combout\,
	datab => \Mux31~18_combout\,
	datac => \reg[2][18]~regout\,
	datad => \reg[3][18]~regout\,
	combout => \Mux13~18_combout\);

-- Location: LCCOMB_X19_Y12_N16
\Mux13~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~22_combout\ = (\Mux13~26_combout\ & ((\Mux13~21_combout\) # ((!\Mux13~14_combout\ & \Mux13~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~21_combout\,
	datab => \Mux13~14_combout\,
	datac => \Mux13~26_combout\,
	datad => \Mux13~18_combout\,
	combout => \Mux13~22_combout\);

-- Location: LCFF_X19_Y12_N3
\reg[14][18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(18),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[14][18]~regout\);

-- Location: LCFF_X18_Y12_N23
\reg[13][18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(18),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[13][18]~regout\);

-- Location: LCFF_X18_Y12_N1
\reg[12][18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(18),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[12][18]~regout\);

-- Location: LCCOMB_X18_Y12_N22
\Mux13~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~23_combout\ = (\addrA~combout\(1) & (\addrA~combout\(0))) # (!\addrA~combout\(1) & ((\addrA~combout\(0) & (\reg[13][18]~regout\)) # (!\addrA~combout\(0) & ((\reg[12][18]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \addrA~combout\(0),
	datac => \reg[13][18]~regout\,
	datad => \reg[12][18]~regout\,
	combout => \Mux13~23_combout\);

-- Location: LCCOMB_X19_Y12_N2
\Mux13~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~24_combout\ = (\addrA~combout\(1) & ((\Mux13~23_combout\ & (\reg[15][18]~regout\)) # (!\Mux13~23_combout\ & ((\reg[14][18]~regout\))))) # (!\addrA~combout\(1) & (((\Mux13~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[15][18]~regout\,
	datab => \addrA~combout\(1),
	datac => \reg[14][18]~regout\,
	datad => \Mux13~23_combout\,
	combout => \Mux13~24_combout\);

-- Location: LCCOMB_X19_Y18_N26
\reg[30][18]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[30][18]~feeder_combout\ = \d_in~combout\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(18),
	combout => \reg[30][18]~feeder_combout\);

-- Location: LCFF_X19_Y18_N27
\reg[30][18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[30][18]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[30][18]~regout\);

-- Location: LCFF_X19_Y18_N1
\reg[26][18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(18),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[26][18]~regout\);

-- Location: LCFF_X20_Y18_N31
\reg[22][18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(18),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[22][18]~regout\);

-- Location: LCCOMB_X21_Y18_N30
\reg[18][18]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[18][18]~feeder_combout\ = \d_in~combout\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(18),
	combout => \reg[18][18]~feeder_combout\);

-- Location: LCFF_X21_Y18_N31
\reg[18][18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[18][18]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[18][18]~regout\);

-- Location: LCCOMB_X20_Y18_N30
\Mux13~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (\addrA~combout\(2) & ((\addrA~combout\(3)) # ((\reg[22][18]~regout\)))) # (!\addrA~combout\(2) & (!\addrA~combout\(3) & ((\reg[18][18]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[22][18]~regout\,
	datad => \reg[18][18]~regout\,
	combout => \Mux13~4_combout\);

-- Location: LCCOMB_X19_Y18_N0
\Mux13~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~5_combout\ = (\addrA~combout\(3) & ((\Mux13~4_combout\ & (\reg[30][18]~regout\)) # (!\Mux13~4_combout\ & ((\reg[26][18]~regout\))))) # (!\addrA~combout\(3) & (((\Mux13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \reg[30][18]~regout\,
	datac => \reg[26][18]~regout\,
	datad => \Mux13~4_combout\,
	combout => \Mux13~5_combout\);

-- Location: LCFF_X19_Y16_N27
\reg[31][18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(18),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[31][18]~regout\);

-- Location: LCFF_X19_Y16_N25
\reg[27][18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(18),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[27][18]~regout\);

-- Location: LCFF_X20_Y16_N15
\reg[19][18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(18),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[19][18]~regout\);

-- Location: LCFF_X20_Y16_N29
\reg[23][18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(18),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[23][18]~regout\);

-- Location: LCCOMB_X20_Y16_N28
\Mux13~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~11_combout\ = (\addrA~combout\(2) & (((\reg[23][18]~regout\) # (\addrA~combout\(3))))) # (!\addrA~combout\(2) & (\reg[19][18]~regout\ & ((!\addrA~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \reg[19][18]~regout\,
	datac => \reg[23][18]~regout\,
	datad => \addrA~combout\(3),
	combout => \Mux13~11_combout\);

-- Location: LCCOMB_X19_Y16_N24
\Mux13~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~12_combout\ = (\addrA~combout\(3) & ((\Mux13~11_combout\ & (\reg[31][18]~regout\)) # (!\Mux13~11_combout\ & ((\reg[27][18]~regout\))))) # (!\addrA~combout\(3) & (((\Mux13~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \reg[31][18]~regout\,
	datac => \reg[27][18]~regout\,
	datad => \Mux13~11_combout\,
	combout => \Mux13~12_combout\);

-- Location: LCFF_X14_Y14_N21
\reg[21][18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(18),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[21][18]~regout\);

-- Location: LCCOMB_X14_Y14_N22
\reg[29][18]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[29][18]~feeder_combout\ = \d_in~combout\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(18),
	combout => \reg[29][18]~feeder_combout\);

-- Location: LCFF_X14_Y14_N23
\reg[29][18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[29][18]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[29][18]~regout\);

-- Location: LCCOMB_X14_Y14_N20
\Mux13~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~7_combout\ = (\Mux13~6_combout\ & (((\reg[29][18]~regout\)) # (!\addrA~combout\(2)))) # (!\Mux13~6_combout\ & (\addrA~combout\(2) & (\reg[21][18]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~6_combout\,
	datab => \addrA~combout\(2),
	datac => \reg[21][18]~regout\,
	datad => \reg[29][18]~regout\,
	combout => \Mux13~7_combout\);

-- Location: LCCOMB_X23_Y14_N2
\Mux13~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~10_combout\ = (\addrA~combout\(0) & (((\Mux13~7_combout\) # (\addrA~combout\(1))))) # (!\addrA~combout\(0) & (\Mux13~9_combout\ & ((!\addrA~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~9_combout\,
	datab => \addrA~combout\(0),
	datac => \Mux13~7_combout\,
	datad => \addrA~combout\(1),
	combout => \Mux13~10_combout\);

-- Location: LCCOMB_X23_Y14_N28
\Mux13~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~13_combout\ = (\addrA~combout\(1) & ((\Mux13~10_combout\ & ((\Mux13~12_combout\))) # (!\Mux13~10_combout\ & (\Mux13~5_combout\)))) # (!\addrA~combout\(1) & (((\Mux13~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \Mux13~5_combout\,
	datac => \Mux13~12_combout\,
	datad => \Mux13~10_combout\,
	combout => \Mux13~13_combout\);

-- Location: LCCOMB_X19_Y12_N14
\Mux13~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~25_combout\ = (\Mux13~22_combout\ & ((\Mux13~24_combout\) # ((!\Mux31~14_combout\)))) # (!\Mux13~22_combout\ & (((\Mux31~14_combout\ & \Mux13~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~22_combout\,
	datab => \Mux13~24_combout\,
	datac => \Mux31~14_combout\,
	datad => \Mux13~13_combout\,
	combout => \Mux13~25_combout\);

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[19]~I\ : cycloneii_io
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
	padio => ww_d_in(19),
	combout => \d_in~combout\(19));

-- Location: LCFF_X25_Y10_N3
\reg[11][19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(19),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[11][19]~regout\);

-- Location: LCFF_X21_Y14_N1
\reg[10][19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(19),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[10][19]~regout\);

-- Location: LCCOMB_X21_Y14_N0
\Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\Mux12~0_combout\ & ((\reg[11][19]~regout\) # ((!\addrA~combout\(1))))) # (!\Mux12~0_combout\ & (((\reg[10][19]~regout\ & \addrA~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~0_combout\,
	datab => \reg[11][19]~regout\,
	datac => \reg[10][19]~regout\,
	datad => \addrA~combout\(1),
	combout => \Mux12~1_combout\);

-- Location: LCFF_X22_Y11_N31
\reg[5][19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(19),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[5][19]~regout\);

-- Location: LCCOMB_X22_Y9_N2
\reg[7][19]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[7][19]~feeder_combout\ = \d_in~combout\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(19),
	combout => \reg[7][19]~feeder_combout\);

-- Location: LCFF_X22_Y9_N3
\reg[7][19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[7][19]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[7][19]~regout\);

-- Location: LCCOMB_X22_Y11_N30
\Mux12~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~13_combout\ = (\Mux12~12_combout\ & (((\reg[7][19]~regout\)) # (!\addrA~combout\(0)))) # (!\Mux12~12_combout\ & (\addrA~combout\(0) & (\reg[5][19]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~12_combout\,
	datab => \addrA~combout\(0),
	datac => \reg[5][19]~regout\,
	datad => \reg[7][19]~regout\,
	combout => \Mux12~13_combout\);

-- Location: LCFF_X22_Y11_N13
\reg[1][19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(19),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[1][19]~regout\);

-- Location: LCCOMB_X22_Y11_N12
\Mux12~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~14_combout\ = (\Mux31~16_combout\ & ((\Mux12~13_combout\) # ((!\Mux31~15_combout\)))) # (!\Mux31~16_combout\ & (((\reg[1][19]~regout\ & \Mux31~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~16_combout\,
	datab => \Mux12~13_combout\,
	datac => \reg[1][19]~regout\,
	datad => \Mux31~15_combout\,
	combout => \Mux12~14_combout\);

-- Location: LCFF_X25_Y15_N3
\reg[2][19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(19),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[2][19]~regout\);

-- Location: LCFF_X25_Y15_N13
\reg[3][19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(19),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[3][19]~regout\);

-- Location: LCCOMB_X25_Y15_N2
\Mux12~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~15_combout\ = (\Mux31~18_combout\ & ((\Mux12~14_combout\ & ((\reg[3][19]~regout\))) # (!\Mux12~14_combout\ & (\reg[2][19]~regout\)))) # (!\Mux31~18_combout\ & (\Mux12~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~18_combout\,
	datab => \Mux12~14_combout\,
	datac => \reg[2][19]~regout\,
	datad => \reg[3][19]~regout\,
	combout => \Mux12~15_combout\);

-- Location: LCFF_X13_Y14_N17
\reg[25][19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(19),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[25][19]~regout\);

-- Location: LCFF_X13_Y14_N27
\reg[17][19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(19),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[17][19]~regout\);

-- Location: LCCOMB_X13_Y14_N16
\Mux12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\addrA~combout\(2) & (\addrA~combout\(3))) # (!\addrA~combout\(2) & ((\addrA~combout\(3) & (\reg[25][19]~regout\)) # (!\addrA~combout\(3) & ((\reg[17][19]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[25][19]~regout\,
	datad => \reg[17][19]~regout\,
	combout => \Mux12~2_combout\);

-- Location: LCFF_X14_Y14_N9
\reg[21][19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(19),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[21][19]~regout\);

-- Location: LCCOMB_X14_Y14_N18
\reg[29][19]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[29][19]~feeder_combout\ = \d_in~combout\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(19),
	combout => \reg[29][19]~feeder_combout\);

-- Location: LCFF_X14_Y14_N19
\reg[29][19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[29][19]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[29][19]~regout\);

-- Location: LCCOMB_X14_Y14_N8
\Mux12~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\addrA~combout\(2) & ((\Mux12~2_combout\ & ((\reg[29][19]~regout\))) # (!\Mux12~2_combout\ & (\reg[21][19]~regout\)))) # (!\addrA~combout\(2) & (\Mux12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \Mux12~2_combout\,
	datac => \reg[21][19]~regout\,
	datad => \reg[29][19]~regout\,
	combout => \Mux12~3_combout\);

-- Location: LCFF_X20_Y18_N19
\reg[30][19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(19),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[30][19]~regout\);

-- Location: LCFF_X21_Y14_N3
\reg[26][19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(19),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[26][19]~regout\);

-- Location: LCFF_X20_Y18_N9
\reg[22][19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(19),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[22][19]~regout\);

-- Location: LCCOMB_X20_Y18_N8
\Mux12~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (\addrA~combout\(3) & (((\addrA~combout\(2))))) # (!\addrA~combout\(3) & ((\addrA~combout\(2) & ((\reg[22][19]~regout\))) # (!\addrA~combout\(2) & (\reg[18][19]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[18][19]~regout\,
	datab => \addrA~combout\(3),
	datac => \reg[22][19]~regout\,
	datad => \addrA~combout\(2),
	combout => \Mux12~4_combout\);

-- Location: LCCOMB_X21_Y14_N2
\Mux12~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = (\addrA~combout\(3) & ((\Mux12~4_combout\ & (\reg[30][19]~regout\)) # (!\Mux12~4_combout\ & ((\reg[26][19]~regout\))))) # (!\addrA~combout\(3) & (((\Mux12~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \reg[30][19]~regout\,
	datac => \reg[26][19]~regout\,
	datad => \Mux12~4_combout\,
	combout => \Mux12~5_combout\);

-- Location: LCCOMB_X21_Y14_N12
\Mux12~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~8_combout\ = (\addrA~combout\(1) & (((\addrA~combout\(0)) # (\Mux12~5_combout\)))) # (!\addrA~combout\(1) & (\Mux12~7_combout\ & (!\addrA~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~7_combout\,
	datab => \addrA~combout\(1),
	datac => \addrA~combout\(0),
	datad => \Mux12~5_combout\,
	combout => \Mux12~8_combout\);

-- Location: LCCOMB_X21_Y14_N6
\Mux12~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~11_combout\ = (\addrA~combout\(0) & ((\Mux12~8_combout\ & (\Mux12~10_combout\)) # (!\Mux12~8_combout\ & ((\Mux12~3_combout\))))) # (!\addrA~combout\(0) & (((\Mux12~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~10_combout\,
	datab => \Mux12~3_combout\,
	datac => \addrA~combout\(0),
	datad => \Mux12~8_combout\,
	combout => \Mux12~11_combout\);

-- Location: LCCOMB_X21_Y14_N8
\Mux12~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~16_combout\ = (\Mux31~23_combout\ & (((\Mux31~14_combout\)))) # (!\Mux31~23_combout\ & ((\Mux31~14_combout\ & ((\Mux12~11_combout\))) # (!\Mux31~14_combout\ & (\Mux12~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~23_combout\,
	datab => \Mux12~15_combout\,
	datac => \Mux31~14_combout\,
	datad => \Mux12~11_combout\,
	combout => \Mux12~16_combout\);

-- Location: LCFF_X18_Y16_N31
\reg[12][19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(19),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[12][19]~regout\);

-- Location: LCFF_X18_Y16_N21
\reg[14][19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(19),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[14][19]~regout\);

-- Location: LCCOMB_X18_Y16_N20
\Mux12~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~17_combout\ = (\addrA~combout\(1) & (((\reg[14][19]~regout\) # (\addrA~combout\(0))))) # (!\addrA~combout\(1) & (\reg[12][19]~regout\ & ((!\addrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \reg[12][19]~regout\,
	datac => \reg[14][19]~regout\,
	datad => \addrA~combout\(0),
	combout => \Mux12~17_combout\);

-- Location: LCFF_X23_Y17_N7
\reg[13][19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(19),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[13][19]~regout\);

-- Location: LCFF_X23_Y17_N1
\reg[15][19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(19),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[15][19]~regout\);

-- Location: LCCOMB_X23_Y17_N6
\Mux12~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~18_combout\ = (\addrA~combout\(0) & ((\Mux12~17_combout\ & ((\reg[15][19]~regout\))) # (!\Mux12~17_combout\ & (\reg[13][19]~regout\)))) # (!\addrA~combout\(0) & (\Mux12~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \Mux12~17_combout\,
	datac => \reg[13][19]~regout\,
	datad => \reg[15][19]~regout\,
	combout => \Mux12~18_combout\);

-- Location: LCCOMB_X21_Y14_N18
\Mux12~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~19_combout\ = (\Mux31~23_combout\ & ((\Mux12~16_combout\ & ((\Mux12~18_combout\))) # (!\Mux12~16_combout\ & (\Mux12~1_combout\)))) # (!\Mux31~23_combout\ & (((\Mux12~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~23_combout\,
	datab => \Mux12~1_combout\,
	datac => \Mux12~16_combout\,
	datad => \Mux12~18_combout\,
	combout => \Mux12~19_combout\);

-- Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[20]~I\ : cycloneii_io
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
	padio => ww_d_in(20),
	combout => \d_in~combout\(20));

-- Location: LCFF_X19_Y12_N19
\reg[14][20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(20),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[14][20]~regout\);

-- Location: LCFF_X19_Y12_N29
\reg[15][20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(20),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[15][20]~regout\);

-- Location: LCCOMB_X19_Y12_N18
\Mux11~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~24_combout\ = (\Mux11~23_combout\ & (((\reg[15][20]~regout\)) # (!\addrA~combout\(1)))) # (!\Mux11~23_combout\ & (\addrA~combout\(1) & (\reg[14][20]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~23_combout\,
	datab => \addrA~combout\(1),
	datac => \reg[14][20]~regout\,
	datad => \reg[15][20]~regout\,
	combout => \Mux11~24_combout\);

-- Location: LCFF_X19_Y18_N31
\reg[30][20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(20),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[30][20]~regout\);

-- Location: LCFF_X19_Y18_N29
\reg[26][20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(20),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[26][20]~regout\);

-- Location: LCFF_X23_Y18_N15
\reg[18][20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(20),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[18][20]~regout\);

-- Location: LCFF_X23_Y18_N21
\reg[22][20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(20),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[22][20]~regout\);

-- Location: LCCOMB_X23_Y18_N20
\Mux11~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (\addrA~combout\(2) & (((\reg[22][20]~regout\) # (\addrA~combout\(3))))) # (!\addrA~combout\(2) & (\reg[18][20]~regout\ & ((!\addrA~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \reg[18][20]~regout\,
	datac => \reg[22][20]~regout\,
	datad => \addrA~combout\(3),
	combout => \Mux11~4_combout\);

-- Location: LCCOMB_X19_Y18_N28
\Mux11~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~5_combout\ = (\addrA~combout\(3) & ((\Mux11~4_combout\ & (\reg[30][20]~regout\)) # (!\Mux11~4_combout\ & ((\reg[26][20]~regout\))))) # (!\addrA~combout\(3) & (((\Mux11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \reg[30][20]~regout\,
	datac => \reg[26][20]~regout\,
	datad => \Mux11~4_combout\,
	combout => \Mux11~5_combout\);

-- Location: LCFF_X19_Y13_N15
\reg[29][20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(20),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[29][20]~regout\);

-- Location: LCFF_X19_Y13_N5
\reg[21][20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(20),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[21][20]~regout\);

-- Location: LCFF_X18_Y13_N13
\reg[25][20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(20),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[25][20]~regout\);

-- Location: LCCOMB_X18_Y13_N22
\reg[17][20]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[17][20]~feeder_combout\ = \d_in~combout\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(20),
	combout => \reg[17][20]~feeder_combout\);

-- Location: LCFF_X18_Y13_N23
\reg[17][20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[17][20]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[17][20]~regout\);

-- Location: LCCOMB_X18_Y13_N12
\Mux11~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~6_combout\ = (\addrA~combout\(3) & ((\addrA~combout\(2)) # ((\reg[25][20]~regout\)))) # (!\addrA~combout\(3) & (!\addrA~combout\(2) & ((\reg[17][20]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \reg[25][20]~regout\,
	datad => \reg[17][20]~regout\,
	combout => \Mux11~6_combout\);

-- Location: LCCOMB_X19_Y13_N4
\Mux11~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~7_combout\ = (\addrA~combout\(2) & ((\Mux11~6_combout\ & (\reg[29][20]~regout\)) # (!\Mux11~6_combout\ & ((\reg[21][20]~regout\))))) # (!\addrA~combout\(2) & (((\Mux11~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \reg[29][20]~regout\,
	datac => \reg[21][20]~regout\,
	datad => \Mux11~6_combout\,
	combout => \Mux11~7_combout\);

-- Location: LCCOMB_X20_Y14_N8
\Mux11~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~10_combout\ = (\addrA~combout\(1) & (((\addrA~combout\(0))))) # (!\addrA~combout\(1) & ((\addrA~combout\(0) & ((\Mux11~7_combout\))) # (!\addrA~combout\(0) & (\Mux11~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~9_combout\,
	datab => \addrA~combout\(1),
	datac => \addrA~combout\(0),
	datad => \Mux11~7_combout\,
	combout => \Mux11~10_combout\);

-- Location: LCCOMB_X19_Y12_N8
\Mux11~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~13_combout\ = (\addrA~combout\(1) & ((\Mux11~10_combout\ & (\Mux11~12_combout\)) # (!\Mux11~10_combout\ & ((\Mux11~5_combout\))))) # (!\addrA~combout\(1) & (((\Mux11~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~12_combout\,
	datab => \addrA~combout\(1),
	datac => \Mux11~5_combout\,
	datad => \Mux11~10_combout\,
	combout => \Mux11~13_combout\);

-- Location: LCFF_X23_Y12_N19
\reg[9][20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(20),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[9][20]~regout\);

-- Location: LCFF_X24_Y10_N21
\reg[10][20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(20),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[10][20]~regout\);

-- Location: LCCOMB_X23_Y9_N10
\reg[8][20]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[8][20]~feeder_combout\ = \d_in~combout\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(20),
	combout => \reg[8][20]~feeder_combout\);

-- Location: LCFF_X23_Y9_N11
\reg[8][20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[8][20]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[8][20]~regout\);

-- Location: LCCOMB_X24_Y10_N20
\Mux11~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~19_combout\ = (\addrA~combout\(1) & ((\addrA~combout\(0)) # ((\reg[10][20]~regout\)))) # (!\addrA~combout\(1) & (!\addrA~combout\(0) & ((\reg[8][20]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \addrA~combout\(0),
	datac => \reg[10][20]~regout\,
	datad => \reg[8][20]~regout\,
	combout => \Mux11~19_combout\);

-- Location: LCCOMB_X23_Y12_N18
\Mux11~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~20_combout\ = (\addrA~combout\(0) & ((\Mux11~19_combout\ & (\reg[11][20]~regout\)) # (!\Mux11~19_combout\ & ((\reg[9][20]~regout\))))) # (!\addrA~combout\(0) & (((\Mux11~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[11][20]~regout\,
	datab => \addrA~combout\(0),
	datac => \reg[9][20]~regout\,
	datad => \Mux11~19_combout\,
	combout => \Mux11~20_combout\);

-- Location: LCCOMB_X24_Y12_N18
\Mux11~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~26_combout\ = (!\addrA~combout\(4) & (((\addrA~combout\(2)) # (\Mux11~20_combout\)) # (!\addrA~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \addrA~combout\(4),
	datad => \Mux11~20_combout\,
	combout => \Mux11~26_combout\);

-- Location: LCFF_X24_Y15_N13
\reg[1][20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(20),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[1][20]~regout\);

-- Location: LCCOMB_X24_Y15_N12
\Mux11~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~14_combout\ = (\Mux31~16_combout\ & ((!\Mux31~15_combout\))) # (!\Mux31~16_combout\ & (\reg[1][20]~regout\ & \Mux31~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux31~16_combout\,
	datac => \reg[1][20]~regout\,
	datad => \Mux31~15_combout\,
	combout => \Mux11~14_combout\);

-- Location: LCCOMB_X23_Y9_N24
\reg[7][20]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[7][20]~feeder_combout\ = \d_in~combout\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(20),
	combout => \reg[7][20]~feeder_combout\);

-- Location: LCFF_X23_Y9_N25
\reg[7][20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[7][20]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[7][20]~regout\);

-- Location: LCFF_X23_Y13_N3
\reg[6][20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(20),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[6][20]~regout\);

-- Location: LCCOMB_X23_Y13_N2
\Mux11~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~15_combout\ = (\addrA~combout\(0) & ((\reg[7][20]~regout\) # ((!\addrA~combout\(1))))) # (!\addrA~combout\(0) & (((\reg[6][20]~regout\ & \addrA~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \reg[7][20]~regout\,
	datac => \reg[6][20]~regout\,
	datad => \addrA~combout\(1),
	combout => \Mux11~15_combout\);

-- Location: LCFF_X23_Y10_N21
\reg[4][20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(20),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[4][20]~regout\);

-- Location: LCCOMB_X23_Y10_N20
\Mux11~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~16_combout\ = (\Mux31~16_combout\ & ((\Mux11~15_combout\) # (\reg[4][20]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~16_combout\,
	datab => \Mux11~15_combout\,
	datac => \reg[4][20]~regout\,
	combout => \Mux11~16_combout\);

-- Location: LCFF_X24_Y10_N27
\reg[5][20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(20),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[5][20]~regout\);

-- Location: LCCOMB_X24_Y10_N26
\Mux11~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~17_combout\ = (\Mux11~16_combout\ & ((\addrA~combout\(1) & ((\Mux11~15_combout\))) # (!\addrA~combout\(1) & ((\reg[5][20]~regout\) # (!\Mux11~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \Mux11~16_combout\,
	datac => \reg[5][20]~regout\,
	datad => \Mux11~15_combout\,
	combout => \Mux11~17_combout\);

-- Location: LCFF_X25_Y12_N7
\reg[2][20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(20),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[2][20]~regout\);

-- Location: LCCOMB_X25_Y12_N6
\Mux11~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~18_combout\ = (\Mux11~17_combout\ & ((\reg[3][20]~regout\) # ((!\Mux31~18_combout\)))) # (!\Mux11~17_combout\ & (((\reg[2][20]~regout\ & \Mux31~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[3][20]~regout\,
	datab => \Mux11~17_combout\,
	datac => \reg[2][20]~regout\,
	datad => \Mux31~18_combout\,
	combout => \Mux11~18_combout\);

-- Location: LCCOMB_X24_Y12_N16
\Mux11~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~22_combout\ = (\Mux11~26_combout\ & ((\Mux11~21_combout\) # ((!\Mux11~14_combout\ & \Mux11~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~21_combout\,
	datab => \Mux11~26_combout\,
	datac => \Mux11~14_combout\,
	datad => \Mux11~18_combout\,
	combout => \Mux11~22_combout\);

-- Location: LCCOMB_X19_Y12_N30
\Mux11~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~25_combout\ = (\Mux31~14_combout\ & ((\Mux11~22_combout\ & (\Mux11~24_combout\)) # (!\Mux11~22_combout\ & ((\Mux11~13_combout\))))) # (!\Mux31~14_combout\ & (((\Mux11~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~14_combout\,
	datab => \Mux11~24_combout\,
	datac => \Mux11~13_combout\,
	datad => \Mux11~22_combout\,
	combout => \Mux11~25_combout\);

-- Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[21]~I\ : cycloneii_io
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
	padio => ww_d_in(21),
	combout => \d_in~combout\(21));

-- Location: LCFF_X23_Y9_N15
\reg[7][21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(21),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[7][21]~regout\);

-- Location: LCFF_X22_Y11_N3
\reg[5][21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(21),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[5][21]~regout\);

-- Location: LCCOMB_X22_Y11_N2
\Mux10~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~13_combout\ = (\Mux10~12_combout\ & ((\reg[7][21]~regout\) # ((!\addrA~combout\(0))))) # (!\Mux10~12_combout\ & (((\reg[5][21]~regout\ & \addrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~12_combout\,
	datab => \reg[7][21]~regout\,
	datac => \reg[5][21]~regout\,
	datad => \addrA~combout\(0),
	combout => \Mux10~13_combout\);

-- Location: LCFF_X22_Y11_N9
\reg[1][21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(21),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[1][21]~regout\);

-- Location: LCCOMB_X22_Y11_N8
\Mux10~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~14_combout\ = (\Mux31~16_combout\ & ((\Mux10~13_combout\) # ((!\Mux31~15_combout\)))) # (!\Mux31~16_combout\ & (((\reg[1][21]~regout\ & \Mux31~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~16_combout\,
	datab => \Mux10~13_combout\,
	datac => \reg[1][21]~regout\,
	datad => \Mux31~15_combout\,
	combout => \Mux10~14_combout\);

-- Location: LCFF_X21_Y11_N29
\reg[2][21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(21),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[2][21]~regout\);

-- Location: LCFF_X21_Y11_N31
\reg[3][21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(21),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[3][21]~regout\);

-- Location: LCCOMB_X21_Y11_N28
\Mux10~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~15_combout\ = (\Mux31~18_combout\ & ((\Mux10~14_combout\ & ((\reg[3][21]~regout\))) # (!\Mux10~14_combout\ & (\reg[2][21]~regout\)))) # (!\Mux31~18_combout\ & (\Mux10~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~18_combout\,
	datab => \Mux10~14_combout\,
	datac => \reg[2][21]~regout\,
	datad => \reg[3][21]~regout\,
	combout => \Mux10~15_combout\);

-- Location: LCCOMB_X19_Y14_N20
\Mux10~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~16_combout\ = (\Mux31~14_combout\ & ((\Mux10~11_combout\) # ((\Mux31~23_combout\)))) # (!\Mux31~14_combout\ & (((!\Mux31~23_combout\ & \Mux10~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~11_combout\,
	datab => \Mux31~14_combout\,
	datac => \Mux31~23_combout\,
	datad => \Mux10~15_combout\,
	combout => \Mux10~16_combout\);

-- Location: LCFF_X19_Y10_N9
\reg[10][21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(21),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[10][21]~regout\);

-- Location: LCFF_X25_Y10_N5
\reg[9][21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(21),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[9][21]~regout\);

-- Location: LCFF_X23_Y9_N13
\reg[8][21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(21),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[8][21]~regout\);

-- Location: LCCOMB_X25_Y10_N4
\Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\addrA~combout\(0) & ((\addrA~combout\(1)) # ((\reg[9][21]~regout\)))) # (!\addrA~combout\(0) & (!\addrA~combout\(1) & ((\reg[8][21]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \addrA~combout\(1),
	datac => \reg[9][21]~regout\,
	datad => \reg[8][21]~regout\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X19_Y10_N8
\Mux10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\addrA~combout\(1) & ((\Mux10~0_combout\ & (\reg[11][21]~regout\)) # (!\Mux10~0_combout\ & ((\reg[10][21]~regout\))))) # (!\addrA~combout\(1) & (((\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[11][21]~regout\,
	datab => \addrA~combout\(1),
	datac => \reg[10][21]~regout\,
	datad => \Mux10~0_combout\,
	combout => \Mux10~1_combout\);

-- Location: LCFF_X22_Y16_N27
\reg[13][21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(21),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[13][21]~regout\);

-- Location: LCFF_X22_Y16_N29
\reg[15][21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(21),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[15][21]~regout\);

-- Location: LCCOMB_X22_Y16_N26
\Mux10~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~18_combout\ = (\Mux10~17_combout\ & (((\reg[15][21]~regout\)) # (!\addrA~combout\(0)))) # (!\Mux10~17_combout\ & (\addrA~combout\(0) & (\reg[13][21]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~17_combout\,
	datab => \addrA~combout\(0),
	datac => \reg[13][21]~regout\,
	datad => \reg[15][21]~regout\,
	combout => \Mux10~18_combout\);

-- Location: LCCOMB_X19_Y14_N30
\Mux10~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~19_combout\ = (\Mux10~16_combout\ & (((\Mux10~18_combout\) # (!\Mux31~23_combout\)))) # (!\Mux10~16_combout\ & (\Mux10~1_combout\ & (\Mux31~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~16_combout\,
	datab => \Mux10~1_combout\,
	datac => \Mux31~23_combout\,
	datad => \Mux10~18_combout\,
	combout => \Mux10~19_combout\);

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[22]~I\ : cycloneii_io
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
	padio => ww_d_in(22),
	combout => \d_in~combout\(22));

-- Location: LCCOMB_X16_Y12_N2
\reg[31][22]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[31][22]~feeder_combout\ = \d_in~combout\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(22),
	combout => \reg[31][22]~feeder_combout\);

-- Location: LCFF_X16_Y12_N3
\reg[31][22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[31][22]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[31][22]~regout\);

-- Location: LCFF_X16_Y12_N25
\reg[27][22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(22),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[27][22]~regout\);

-- Location: LCFF_X16_Y15_N25
\reg[23][22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(22),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[23][22]~regout\);

-- Location: LCCOMB_X16_Y15_N10
\reg[19][22]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[19][22]~feeder_combout\ = \d_in~combout\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(22),
	combout => \reg[19][22]~feeder_combout\);

-- Location: LCFF_X16_Y15_N11
\reg[19][22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[19][22]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[19][22]~regout\);

-- Location: LCCOMB_X16_Y15_N24
\Mux9~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~11_combout\ = (\addrA~combout\(2) & ((\addrA~combout\(3)) # ((\reg[23][22]~regout\)))) # (!\addrA~combout\(2) & (!\addrA~combout\(3) & ((\reg[19][22]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[23][22]~regout\,
	datad => \reg[19][22]~regout\,
	combout => \Mux9~11_combout\);

-- Location: LCCOMB_X16_Y12_N24
\Mux9~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~12_combout\ = (\addrA~combout\(3) & ((\Mux9~11_combout\ & (\reg[31][22]~regout\)) # (!\Mux9~11_combout\ & ((\reg[27][22]~regout\))))) # (!\addrA~combout\(3) & (((\Mux9~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \reg[31][22]~regout\,
	datac => \reg[27][22]~regout\,
	datad => \Mux9~11_combout\,
	combout => \Mux9~12_combout\);

-- Location: LCCOMB_X19_Y18_N22
\reg[30][22]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[30][22]~feeder_combout\ = \d_in~combout\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(22),
	combout => \reg[30][22]~feeder_combout\);

-- Location: LCFF_X19_Y18_N23
\reg[30][22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[30][22]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[30][22]~regout\);

-- Location: LCFF_X19_Y18_N21
\reg[26][22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(22),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[26][22]~regout\);

-- Location: LCFF_X20_Y18_N7
\reg[22][22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(22),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[22][22]~regout\);

-- Location: LCCOMB_X21_Y18_N20
\reg[18][22]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[18][22]~feeder_combout\ = \d_in~combout\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(22),
	combout => \reg[18][22]~feeder_combout\);

-- Location: LCFF_X21_Y18_N21
\reg[18][22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[18][22]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[18][22]~regout\);

-- Location: LCCOMB_X20_Y18_N6
\Mux9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\addrA~combout\(2) & ((\addrA~combout\(3)) # ((\reg[22][22]~regout\)))) # (!\addrA~combout\(2) & (!\addrA~combout\(3) & ((\reg[18][22]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[22][22]~regout\,
	datad => \reg[18][22]~regout\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X19_Y18_N20
\Mux9~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (\addrA~combout\(3) & ((\Mux9~4_combout\ & (\reg[30][22]~regout\)) # (!\Mux9~4_combout\ & ((\reg[26][22]~regout\))))) # (!\addrA~combout\(3) & (((\Mux9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \reg[30][22]~regout\,
	datac => \reg[26][22]~regout\,
	datad => \Mux9~4_combout\,
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X18_Y14_N6
\Mux9~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~13_combout\ = (\Mux9~10_combout\ & (((\Mux9~12_combout\)) # (!\addrA~combout\(1)))) # (!\Mux9~10_combout\ & (\addrA~combout\(1) & ((\Mux9~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~10_combout\,
	datab => \addrA~combout\(1),
	datac => \Mux9~12_combout\,
	datad => \Mux9~5_combout\,
	combout => \Mux9~13_combout\);

-- Location: LCFF_X18_Y14_N1
\reg[14][22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(22),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[14][22]~regout\);

-- Location: LCFF_X23_Y17_N11
\reg[15][22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(22),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[15][22]~regout\);

-- Location: LCCOMB_X18_Y14_N0
\Mux9~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~24_combout\ = (\Mux9~23_combout\ & (((\reg[15][22]~regout\)) # (!\addrA~combout\(1)))) # (!\Mux9~23_combout\ & (\addrA~combout\(1) & (\reg[14][22]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~23_combout\,
	datab => \addrA~combout\(1),
	datac => \reg[14][22]~regout\,
	datad => \reg[15][22]~regout\,
	combout => \Mux9~24_combout\);

-- Location: LCFF_X23_Y12_N1
\reg[11][22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(22),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[11][22]~regout\);

-- Location: LCFF_X23_Y12_N15
\reg[9][22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(22),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[9][22]~regout\);

-- Location: LCFF_X24_Y10_N1
\reg[10][22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(22),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[10][22]~regout\);

-- Location: LCFF_X24_Y14_N7
\reg[8][22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(22),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[8][22]~regout\);

-- Location: LCCOMB_X24_Y10_N0
\Mux9~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~19_combout\ = (\addrA~combout\(1) & ((\addrA~combout\(0)) # ((\reg[10][22]~regout\)))) # (!\addrA~combout\(1) & (!\addrA~combout\(0) & ((\reg[8][22]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \addrA~combout\(0),
	datac => \reg[10][22]~regout\,
	datad => \reg[8][22]~regout\,
	combout => \Mux9~19_combout\);

-- Location: LCCOMB_X23_Y12_N14
\Mux9~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~20_combout\ = (\addrA~combout\(0) & ((\Mux9~19_combout\ & (\reg[11][22]~regout\)) # (!\Mux9~19_combout\ & ((\reg[9][22]~regout\))))) # (!\addrA~combout\(0) & (((\Mux9~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \reg[11][22]~regout\,
	datac => \reg[9][22]~regout\,
	datad => \Mux9~19_combout\,
	combout => \Mux9~20_combout\);

-- Location: LCCOMB_X24_Y12_N28
\Mux9~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~26_combout\ = (!\addrA~combout\(4) & (((\addrA~combout\(2)) # (\Mux9~20_combout\)) # (!\addrA~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \addrA~combout\(4),
	datad => \Mux9~20_combout\,
	combout => \Mux9~26_combout\);

-- Location: LCFF_X24_Y15_N7
\reg[1][22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(22),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[1][22]~regout\);

-- Location: LCCOMB_X24_Y15_N6
\Mux9~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~14_combout\ = (\Mux31~16_combout\ & ((!\Mux31~15_combout\))) # (!\Mux31~16_combout\ & (\reg[1][22]~regout\ & \Mux31~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux31~16_combout\,
	datac => \reg[1][22]~regout\,
	datad => \Mux31~15_combout\,
	combout => \Mux9~14_combout\);

-- Location: LCFF_X23_Y9_N9
\reg[7][22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(22),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[7][22]~regout\);

-- Location: LCFF_X23_Y13_N31
\reg[6][22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(22),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[6][22]~regout\);

-- Location: LCCOMB_X23_Y13_N30
\Mux9~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~15_combout\ = (\addrA~combout\(0) & ((\reg[7][22]~regout\) # ((!\addrA~combout\(1))))) # (!\addrA~combout\(0) & (((\reg[6][22]~regout\ & \addrA~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \reg[7][22]~regout\,
	datac => \reg[6][22]~regout\,
	datad => \addrA~combout\(1),
	combout => \Mux9~15_combout\);

-- Location: LCFF_X24_Y10_N23
\reg[5][22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(22),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[5][22]~regout\);

-- Location: LCFF_X23_Y10_N15
\reg[4][22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(22),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[4][22]~regout\);

-- Location: LCCOMB_X23_Y10_N14
\Mux9~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~16_combout\ = (\Mux31~16_combout\ & ((\reg[4][22]~regout\) # (\Mux9~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux31~16_combout\,
	datac => \reg[4][22]~regout\,
	datad => \Mux9~15_combout\,
	combout => \Mux9~16_combout\);

-- Location: LCCOMB_X24_Y10_N22
\Mux9~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~17_combout\ = (\Mux9~16_combout\ & ((\addrA~combout\(1) & (\Mux9~15_combout\)) # (!\addrA~combout\(1) & ((\reg[5][22]~regout\) # (!\Mux9~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \Mux9~15_combout\,
	datac => \reg[5][22]~regout\,
	datad => \Mux9~16_combout\,
	combout => \Mux9~17_combout\);

-- Location: LCFF_X25_Y12_N19
\reg[2][22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(22),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[2][22]~regout\);

-- Location: LCFF_X25_Y12_N21
\reg[3][22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(22),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[3][22]~regout\);

-- Location: LCCOMB_X25_Y12_N18
\Mux9~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~18_combout\ = (\Mux31~18_combout\ & ((\Mux9~17_combout\ & ((\reg[3][22]~regout\))) # (!\Mux9~17_combout\ & (\reg[2][22]~regout\)))) # (!\Mux31~18_combout\ & (\Mux9~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~18_combout\,
	datab => \Mux9~17_combout\,
	datac => \reg[2][22]~regout\,
	datad => \reg[3][22]~regout\,
	combout => \Mux9~18_combout\);

-- Location: LCCOMB_X25_Y12_N22
\Mux9~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~22_combout\ = (\Mux9~26_combout\ & ((\Mux9~21_combout\) # ((!\Mux9~14_combout\ & \Mux9~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~21_combout\,
	datab => \Mux9~26_combout\,
	datac => \Mux9~14_combout\,
	datad => \Mux9~18_combout\,
	combout => \Mux9~22_combout\);

-- Location: LCCOMB_X18_Y14_N10
\Mux9~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~25_combout\ = (\Mux9~22_combout\ & (((\Mux9~24_combout\) # (!\Mux31~14_combout\)))) # (!\Mux9~22_combout\ & (\Mux9~13_combout\ & ((\Mux31~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~13_combout\,
	datab => \Mux9~24_combout\,
	datac => \Mux9~22_combout\,
	datad => \Mux31~14_combout\,
	combout => \Mux9~25_combout\);

-- Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[23]~I\ : cycloneii_io
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
	padio => ww_d_in(23),
	combout => \d_in~combout\(23));

-- Location: LCCOMB_X23_Y14_N6
\reg[15][23]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[15][23]~feeder_combout\ = \d_in~combout\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(23),
	combout => \reg[15][23]~feeder_combout\);

-- Location: LCFF_X23_Y14_N7
\reg[15][23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[15][23]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[15][23]~regout\);

-- Location: LCFF_X22_Y16_N23
\reg[13][23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(23),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[13][23]~regout\);

-- Location: LCFF_X23_Y16_N29
\reg[14][23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(23),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[14][23]~regout\);

-- Location: LCFF_X23_Y16_N31
\reg[12][23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(23),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[12][23]~regout\);

-- Location: LCCOMB_X23_Y16_N28
\Mux8~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~17_combout\ = (\addrA~combout\(0) & (\addrA~combout\(1))) # (!\addrA~combout\(0) & ((\addrA~combout\(1) & (\reg[14][23]~regout\)) # (!\addrA~combout\(1) & ((\reg[12][23]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \addrA~combout\(1),
	datac => \reg[14][23]~regout\,
	datad => \reg[12][23]~regout\,
	combout => \Mux8~17_combout\);

-- Location: LCCOMB_X22_Y16_N22
\Mux8~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~18_combout\ = (\addrA~combout\(0) & ((\Mux8~17_combout\ & (\reg[15][23]~regout\)) # (!\Mux8~17_combout\ & ((\reg[13][23]~regout\))))) # (!\addrA~combout\(0) & (((\Mux8~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \reg[15][23]~regout\,
	datac => \reg[13][23]~regout\,
	datad => \Mux8~17_combout\,
	combout => \Mux8~18_combout\);

-- Location: LCCOMB_X21_Y11_N18
\reg[3][23]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[3][23]~feeder_combout\ = \d_in~combout\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(23),
	combout => \reg[3][23]~feeder_combout\);

-- Location: LCFF_X21_Y11_N19
\reg[3][23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[3][23]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[3][23]~regout\);

-- Location: LCFF_X21_Y11_N17
\reg[2][23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(23),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[2][23]~regout\);

-- Location: LCCOMB_X21_Y11_N16
\Mux8~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~15_combout\ = (\Mux8~14_combout\ & ((\reg[3][23]~regout\) # ((!\Mux31~18_combout\)))) # (!\Mux8~14_combout\ & (((\reg[2][23]~regout\ & \Mux31~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~14_combout\,
	datab => \reg[3][23]~regout\,
	datac => \reg[2][23]~regout\,
	datad => \Mux31~18_combout\,
	combout => \Mux8~15_combout\);

-- Location: LCFF_X18_Y11_N1
\reg[25][23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(23),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[25][23]~regout\);

-- Location: LCFF_X18_Y11_N19
\reg[17][23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(23),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[17][23]~regout\);

-- Location: LCCOMB_X18_Y11_N0
\Mux8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\addrA~combout\(3) & ((\addrA~combout\(2)) # ((\reg[25][23]~regout\)))) # (!\addrA~combout\(3) & (!\addrA~combout\(2) & ((\reg[17][23]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \reg[25][23]~regout\,
	datad => \reg[17][23]~regout\,
	combout => \Mux8~2_combout\);

-- Location: LCFF_X19_Y11_N1
\reg[21][23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(23),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[21][23]~regout\);

-- Location: LCCOMB_X19_Y11_N18
\reg[29][23]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[29][23]~feeder_combout\ = \d_in~combout\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(23),
	combout => \reg[29][23]~feeder_combout\);

-- Location: LCFF_X19_Y11_N19
\reg[29][23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[29][23]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[29][23]~regout\);

-- Location: LCCOMB_X19_Y11_N0
\Mux8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\addrA~combout\(2) & ((\Mux8~2_combout\ & ((\reg[29][23]~regout\))) # (!\Mux8~2_combout\ & (\reg[21][23]~regout\)))) # (!\addrA~combout\(2) & (\Mux8~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \Mux8~2_combout\,
	datac => \reg[21][23]~regout\,
	datad => \reg[29][23]~regout\,
	combout => \Mux8~3_combout\);

-- Location: LCFF_X20_Y18_N3
\reg[30][23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(23),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[30][23]~regout\);

-- Location: LCFF_X21_Y17_N9
\reg[26][23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(23),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[26][23]~regout\);

-- Location: LCCOMB_X21_Y17_N8
\Mux8~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = (\Mux8~4_combout\ & ((\reg[30][23]~regout\) # ((!\addrA~combout\(3))))) # (!\Mux8~4_combout\ & (((\reg[26][23]~regout\ & \addrA~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~4_combout\,
	datab => \reg[30][23]~regout\,
	datac => \reg[26][23]~regout\,
	datad => \addrA~combout\(3),
	combout => \Mux8~5_combout\);

-- Location: LCCOMB_X18_Y14_N20
\Mux8~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~8_combout\ = (\addrA~combout\(1) & (((\Mux8~5_combout\) # (\addrA~combout\(0))))) # (!\addrA~combout\(1) & (\Mux8~7_combout\ & ((!\addrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~7_combout\,
	datab => \Mux8~5_combout\,
	datac => \addrA~combout\(1),
	datad => \addrA~combout\(0),
	combout => \Mux8~8_combout\);

-- Location: LCCOMB_X18_Y14_N22
\Mux8~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~11_combout\ = (\Mux8~8_combout\ & ((\Mux8~10_combout\) # ((!\addrA~combout\(0))))) # (!\Mux8~8_combout\ & (((\Mux8~3_combout\ & \addrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~10_combout\,
	datab => \Mux8~3_combout\,
	datac => \Mux8~8_combout\,
	datad => \addrA~combout\(0),
	combout => \Mux8~11_combout\);

-- Location: LCCOMB_X18_Y14_N16
\Mux8~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~16_combout\ = (\Mux31~14_combout\ & ((\Mux31~23_combout\) # ((\Mux8~11_combout\)))) # (!\Mux31~14_combout\ & (!\Mux31~23_combout\ & (\Mux8~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~14_combout\,
	datab => \Mux31~23_combout\,
	datac => \Mux8~15_combout\,
	datad => \Mux8~11_combout\,
	combout => \Mux8~16_combout\);

-- Location: LCFF_X25_Y11_N19
\reg[10][23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(23),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[10][23]~regout\);

-- Location: LCFF_X25_Y10_N1
\reg[9][23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(23),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[9][23]~regout\);

-- Location: LCCOMB_X23_Y10_N24
\reg[8][23]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[8][23]~feeder_combout\ = \d_in~combout\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(23),
	combout => \reg[8][23]~feeder_combout\);

-- Location: LCFF_X23_Y10_N25
\reg[8][23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[8][23]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[8][23]~regout\);

-- Location: LCCOMB_X25_Y10_N0
\Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\addrA~combout\(0) & ((\addrA~combout\(1)) # ((\reg[9][23]~regout\)))) # (!\addrA~combout\(0) & (!\addrA~combout\(1) & ((\reg[8][23]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \addrA~combout\(1),
	datac => \reg[9][23]~regout\,
	datad => \reg[8][23]~regout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X25_Y11_N18
\Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\addrA~combout\(1) & ((\Mux8~0_combout\ & (\reg[11][23]~regout\)) # (!\Mux8~0_combout\ & ((\reg[10][23]~regout\))))) # (!\addrA~combout\(1) & (((\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[11][23]~regout\,
	datab => \addrA~combout\(1),
	datac => \reg[10][23]~regout\,
	datad => \Mux8~0_combout\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X18_Y14_N2
\Mux8~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~19_combout\ = (\Mux31~23_combout\ & ((\Mux8~16_combout\ & (\Mux8~18_combout\)) # (!\Mux8~16_combout\ & ((\Mux8~1_combout\))))) # (!\Mux31~23_combout\ & (((\Mux8~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~18_combout\,
	datab => \Mux31~23_combout\,
	datac => \Mux8~16_combout\,
	datad => \Mux8~1_combout\,
	combout => \Mux8~19_combout\);

-- Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[24]~I\ : cycloneii_io
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
	padio => ww_d_in(24),
	combout => \d_in~combout\(24));

-- Location: LCFF_X19_Y12_N25
\reg[14][24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(24),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[14][24]~regout\);

-- Location: LCCOMB_X19_Y12_N10
\reg[15][24]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[15][24]~feeder_combout\ = \d_in~combout\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(24),
	combout => \reg[15][24]~feeder_combout\);

-- Location: LCFF_X19_Y12_N11
\reg[15][24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[15][24]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[15][24]~regout\);

-- Location: LCCOMB_X19_Y12_N24
\Mux7~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~24_combout\ = (\Mux7~23_combout\ & (((\reg[15][24]~regout\)) # (!\addrA~combout\(1)))) # (!\Mux7~23_combout\ & (\addrA~combout\(1) & (\reg[14][24]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~23_combout\,
	datab => \addrA~combout\(1),
	datac => \reg[14][24]~regout\,
	datad => \reg[15][24]~regout\,
	combout => \Mux7~24_combout\);

-- Location: LCFF_X19_Y11_N23
\reg[29][24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(24),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[29][24]~regout\);

-- Location: LCFF_X19_Y11_N5
\reg[21][24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(24),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[21][24]~regout\);

-- Location: LCFF_X18_Y11_N13
\reg[25][24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(24),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[25][24]~regout\);

-- Location: LCCOMB_X18_Y11_N30
\reg[17][24]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[17][24]~feeder_combout\ = \d_in~combout\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(24),
	combout => \reg[17][24]~feeder_combout\);

-- Location: LCFF_X18_Y11_N31
\reg[17][24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[17][24]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[17][24]~regout\);

-- Location: LCCOMB_X18_Y11_N12
\Mux7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (\addrA~combout\(3) & ((\addrA~combout\(2)) # ((\reg[25][24]~regout\)))) # (!\addrA~combout\(3) & (!\addrA~combout\(2) & ((\reg[17][24]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \reg[25][24]~regout\,
	datad => \reg[17][24]~regout\,
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X19_Y11_N4
\Mux7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = (\addrA~combout\(2) & ((\Mux7~6_combout\ & (\reg[29][24]~regout\)) # (!\Mux7~6_combout\ & ((\reg[21][24]~regout\))))) # (!\addrA~combout\(2) & (((\Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \reg[29][24]~regout\,
	datac => \reg[21][24]~regout\,
	datad => \Mux7~6_combout\,
	combout => \Mux7~7_combout\);

-- Location: LCFF_X24_Y13_N29
\reg[24][24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(24),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[24][24]~regout\);

-- Location: LCFF_X23_Y13_N27
\reg[16][24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(24),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[16][24]~regout\);

-- Location: LCCOMB_X24_Y13_N28
\Mux7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~8_combout\ = (\addrA~combout\(2) & (\addrA~combout\(3))) # (!\addrA~combout\(2) & ((\addrA~combout\(3) & (\reg[24][24]~regout\)) # (!\addrA~combout\(3) & ((\reg[16][24]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[24][24]~regout\,
	datad => \reg[16][24]~regout\,
	combout => \Mux7~8_combout\);

-- Location: LCFF_X25_Y13_N17
\reg[20][24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(24),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[20][24]~regout\);

-- Location: LCFF_X24_Y13_N15
\reg[28][24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(24),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[28][24]~regout\);

-- Location: LCCOMB_X25_Y13_N16
\Mux7~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~9_combout\ = (\addrA~combout\(2) & ((\Mux7~8_combout\ & ((\reg[28][24]~regout\))) # (!\Mux7~8_combout\ & (\reg[20][24]~regout\)))) # (!\addrA~combout\(2) & (\Mux7~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \Mux7~8_combout\,
	datac => \reg[20][24]~regout\,
	datad => \reg[28][24]~regout\,
	combout => \Mux7~9_combout\);

-- Location: LCCOMB_X18_Y12_N26
\Mux7~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~10_combout\ = (\addrA~combout\(1) & (((\addrA~combout\(0))))) # (!\addrA~combout\(1) & ((\addrA~combout\(0) & (\Mux7~7_combout\)) # (!\addrA~combout\(0) & ((\Mux7~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \Mux7~7_combout\,
	datac => \addrA~combout\(0),
	datad => \Mux7~9_combout\,
	combout => \Mux7~10_combout\);

-- Location: LCFF_X16_Y12_N1
\reg[27][24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(24),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[27][24]~regout\);

-- Location: LCCOMB_X16_Y12_N18
\reg[31][24]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[31][24]~feeder_combout\ = \d_in~combout\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(24),
	combout => \reg[31][24]~feeder_combout\);

-- Location: LCFF_X16_Y12_N19
\reg[31][24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[31][24]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[31][24]~regout\);

-- Location: LCCOMB_X16_Y12_N0
\Mux7~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~12_combout\ = (\Mux7~11_combout\ & (((\reg[31][24]~regout\)) # (!\addrA~combout\(3)))) # (!\Mux7~11_combout\ & (\addrA~combout\(3) & (\reg[27][24]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~11_combout\,
	datab => \addrA~combout\(3),
	datac => \reg[27][24]~regout\,
	datad => \reg[31][24]~regout\,
	combout => \Mux7~12_combout\);

-- Location: LCFF_X21_Y17_N27
\reg[26][24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(24),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[26][24]~regout\);

-- Location: LCFF_X21_Y17_N29
\reg[30][24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(24),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[30][24]~regout\);

-- Location: LCCOMB_X21_Y17_N26
\Mux7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\Mux7~4_combout\ & (((\reg[30][24]~regout\)) # (!\addrA~combout\(3)))) # (!\Mux7~4_combout\ & (\addrA~combout\(3) & (\reg[26][24]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~4_combout\,
	datab => \addrA~combout\(3),
	datac => \reg[26][24]~regout\,
	datad => \reg[30][24]~regout\,
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X18_Y12_N4
\Mux7~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~13_combout\ = (\addrA~combout\(1) & ((\Mux7~10_combout\ & (\Mux7~12_combout\)) # (!\Mux7~10_combout\ & ((\Mux7~5_combout\))))) # (!\addrA~combout\(1) & (\Mux7~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \Mux7~10_combout\,
	datac => \Mux7~12_combout\,
	datad => \Mux7~5_combout\,
	combout => \Mux7~13_combout\);

-- Location: LCFF_X25_Y12_N3
\reg[3][24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(24),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[3][24]~regout\);

-- Location: LCCOMB_X25_Y12_N2
\Mux7~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~21_combout\ = (\Mux31~23_combout\) # ((\Mux7~14_combout\ & ((\reg[3][24]~regout\) # (!\Mux31~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~14_combout\,
	datab => \Mux31~23_combout\,
	datac => \reg[3][24]~regout\,
	datad => \Mux31~18_combout\,
	combout => \Mux7~21_combout\);

-- Location: LCFF_X25_Y12_N1
\reg[2][24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(24),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[2][24]~regout\);

-- Location: LCCOMB_X25_Y12_N0
\Mux7~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~18_combout\ = (\Mux7~17_combout\ & (((\reg[3][24]~regout\)) # (!\Mux31~18_combout\))) # (!\Mux7~17_combout\ & (\Mux31~18_combout\ & (\reg[2][24]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~17_combout\,
	datab => \Mux31~18_combout\,
	datac => \reg[2][24]~regout\,
	datad => \reg[3][24]~regout\,
	combout => \Mux7~18_combout\);

-- Location: LCFF_X22_Y10_N13
\reg[1][24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(24),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[1][24]~regout\);

-- Location: LCCOMB_X22_Y10_N12
\Mux7~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~14_combout\ = (\Mux31~16_combout\ & ((!\Mux31~15_combout\))) # (!\Mux31~16_combout\ & (\reg[1][24]~regout\ & \Mux31~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux31~16_combout\,
	datac => \reg[1][24]~regout\,
	datad => \Mux31~15_combout\,
	combout => \Mux7~14_combout\);

-- Location: LCCOMB_X25_Y12_N28
\Mux7~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~22_combout\ = (\Mux7~26_combout\ & ((\Mux7~21_combout\) # ((\Mux7~18_combout\ & !\Mux7~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~26_combout\,
	datab => \Mux7~21_combout\,
	datac => \Mux7~18_combout\,
	datad => \Mux7~14_combout\,
	combout => \Mux7~22_combout\);

-- Location: LCCOMB_X18_Y12_N18
\Mux7~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~25_combout\ = (\Mux31~14_combout\ & ((\Mux7~22_combout\ & (\Mux7~24_combout\)) # (!\Mux7~22_combout\ & ((\Mux7~13_combout\))))) # (!\Mux31~14_combout\ & (((\Mux7~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~14_combout\,
	datab => \Mux7~24_combout\,
	datac => \Mux7~13_combout\,
	datad => \Mux7~22_combout\,
	combout => \Mux7~25_combout\);

-- Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[25]~I\ : cycloneii_io
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
	padio => ww_d_in(25),
	combout => \d_in~combout\(25));

-- Location: LCFF_X25_Y10_N13
\reg[9][25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(25),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[9][25]~regout\);

-- Location: LCCOMB_X23_Y10_N0
\reg[8][25]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[8][25]~feeder_combout\ = \d_in~combout\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(25),
	combout => \reg[8][25]~feeder_combout\);

-- Location: LCFF_X23_Y10_N1
\reg[8][25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[8][25]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[8][25]~regout\);

-- Location: LCCOMB_X25_Y10_N12
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\addrA~combout\(0) & ((\addrA~combout\(1)) # ((\reg[9][25]~regout\)))) # (!\addrA~combout\(0) & (!\addrA~combout\(1) & ((\reg[8][25]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \addrA~combout\(1),
	datac => \reg[9][25]~regout\,
	datad => \reg[8][25]~regout\,
	combout => \Mux6~0_combout\);

-- Location: LCFF_X25_Y13_N3
\reg[10][25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(25),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[10][25]~regout\);

-- Location: LCCOMB_X25_Y13_N2
\Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux6~0_combout\ & ((\reg[11][25]~regout\) # ((!\addrA~combout\(1))))) # (!\Mux6~0_combout\ & (((\reg[10][25]~regout\ & \addrA~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[11][25]~regout\,
	datab => \Mux6~0_combout\,
	datac => \reg[10][25]~regout\,
	datad => \addrA~combout\(1),
	combout => \Mux6~1_combout\);

-- Location: LCFF_X22_Y16_N9
\reg[13][25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(25),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[13][25]~regout\);

-- Location: LCFF_X22_Y16_N11
\reg[15][25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(25),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[15][25]~regout\);

-- Location: LCCOMB_X22_Y16_N8
\Mux6~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~18_combout\ = (\Mux6~17_combout\ & (((\reg[15][25]~regout\)) # (!\addrA~combout\(0)))) # (!\Mux6~17_combout\ & (\addrA~combout\(0) & (\reg[13][25]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~17_combout\,
	datab => \addrA~combout\(0),
	datac => \reg[13][25]~regout\,
	datad => \reg[15][25]~regout\,
	combout => \Mux6~18_combout\);

-- Location: LCFF_X18_Y11_N17
\reg[25][25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(25),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[25][25]~regout\);

-- Location: LCCOMB_X18_Y11_N26
\reg[17][25]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[17][25]~feeder_combout\ = \d_in~combout\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(25),
	combout => \reg[17][25]~feeder_combout\);

-- Location: LCFF_X18_Y11_N27
\reg[17][25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[17][25]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[17][25]~regout\);

-- Location: LCCOMB_X18_Y11_N16
\Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\addrA~combout\(3) & ((\addrA~combout\(2)) # ((\reg[25][25]~regout\)))) # (!\addrA~combout\(3) & (!\addrA~combout\(2) & ((\reg[17][25]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \reg[25][25]~regout\,
	datad => \reg[17][25]~regout\,
	combout => \Mux6~2_combout\);

-- Location: LCFF_X19_Y11_N17
\reg[21][25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(25),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[21][25]~regout\);

-- Location: LCFF_X19_Y11_N27
\reg[29][25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(25),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[29][25]~regout\);

-- Location: LCCOMB_X19_Y11_N16
\Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\addrA~combout\(2) & ((\Mux6~2_combout\ & ((\reg[29][25]~regout\))) # (!\Mux6~2_combout\ & (\reg[21][25]~regout\)))) # (!\addrA~combout\(2) & (\Mux6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \Mux6~2_combout\,
	datac => \reg[21][25]~regout\,
	datad => \reg[29][25]~regout\,
	combout => \Mux6~3_combout\);

-- Location: LCFF_X16_Y15_N13
\reg[23][25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(25),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[23][25]~regout\);

-- Location: LCFF_X16_Y15_N23
\reg[19][25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(25),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[19][25]~regout\);

-- Location: LCCOMB_X16_Y15_N12
\Mux6~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~9_combout\ = (\addrA~combout\(2) & ((\addrA~combout\(3)) # ((\reg[23][25]~regout\)))) # (!\addrA~combout\(2) & (!\addrA~combout\(3) & ((\reg[19][25]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[23][25]~regout\,
	datad => \reg[19][25]~regout\,
	combout => \Mux6~9_combout\);

-- Location: LCFF_X16_Y12_N29
\reg[27][25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(25),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[27][25]~regout\);

-- Location: LCCOMB_X16_Y12_N28
\Mux6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~10_combout\ = (\Mux6~9_combout\ & ((\reg[31][25]~regout\) # ((!\addrA~combout\(3))))) # (!\Mux6~9_combout\ & (((\reg[27][25]~regout\ & \addrA~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[31][25]~regout\,
	datab => \Mux6~9_combout\,
	datac => \reg[27][25]~regout\,
	datad => \addrA~combout\(3),
	combout => \Mux6~10_combout\);

-- Location: LCCOMB_X20_Y10_N20
\Mux6~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~11_combout\ = (\Mux6~8_combout\ & (((\Mux6~10_combout\) # (!\addrA~combout\(0))))) # (!\Mux6~8_combout\ & (\Mux6~3_combout\ & (\addrA~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => \Mux6~3_combout\,
	datac => \addrA~combout\(0),
	datad => \Mux6~10_combout\,
	combout => \Mux6~11_combout\);

-- Location: LCFF_X22_Y10_N25
\reg[1][25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(25),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[1][25]~regout\);

-- Location: LCCOMB_X22_Y10_N24
\Mux6~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~14_combout\ = (\Mux31~16_combout\ & ((\Mux6~13_combout\) # ((!\Mux31~15_combout\)))) # (!\Mux31~16_combout\ & (((\reg[1][25]~regout\ & \Mux31~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~13_combout\,
	datab => \Mux31~16_combout\,
	datac => \reg[1][25]~regout\,
	datad => \Mux31~15_combout\,
	combout => \Mux6~14_combout\);

-- Location: LCFF_X21_Y10_N25
\reg[2][25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(25),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[2][25]~regout\);

-- Location: LCCOMB_X21_Y10_N24
\Mux6~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~15_combout\ = (\Mux6~14_combout\ & ((\reg[3][25]~regout\) # ((!\Mux31~18_combout\)))) # (!\Mux6~14_combout\ & (((\reg[2][25]~regout\ & \Mux31~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[3][25]~regout\,
	datab => \Mux6~14_combout\,
	datac => \reg[2][25]~regout\,
	datad => \Mux31~18_combout\,
	combout => \Mux6~15_combout\);

-- Location: LCCOMB_X20_Y10_N30
\Mux6~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~16_combout\ = (\Mux31~14_combout\ & ((\Mux31~23_combout\) # ((\Mux6~11_combout\)))) # (!\Mux31~14_combout\ & (!\Mux31~23_combout\ & ((\Mux6~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~14_combout\,
	datab => \Mux31~23_combout\,
	datac => \Mux6~11_combout\,
	datad => \Mux6~15_combout\,
	combout => \Mux6~16_combout\);

-- Location: LCCOMB_X20_Y10_N8
\Mux6~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~19_combout\ = (\Mux31~23_combout\ & ((\Mux6~16_combout\ & ((\Mux6~18_combout\))) # (!\Mux6~16_combout\ & (\Mux6~1_combout\)))) # (!\Mux31~23_combout\ & (((\Mux6~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \Mux31~23_combout\,
	datac => \Mux6~18_combout\,
	datad => \Mux6~16_combout\,
	combout => \Mux6~19_combout\);

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[26]~I\ : cycloneii_io
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
	padio => ww_d_in(26),
	combout => \d_in~combout\(26));

-- Location: LCFF_X23_Y12_N5
\reg[11][26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(26),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[11][26]~regout\);

-- Location: LCFF_X23_Y12_N11
\reg[9][26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(26),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[9][26]~regout\);

-- Location: LCFF_X24_Y10_N7
\reg[10][26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(26),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[10][26]~regout\);

-- Location: LCFF_X24_Y14_N27
\reg[8][26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(26),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[8][26]~regout\);

-- Location: LCCOMB_X24_Y10_N6
\Mux5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~10_combout\ = (\addrA~combout\(1) & ((\addrA~combout\(0)) # ((\reg[10][26]~regout\)))) # (!\addrA~combout\(1) & (!\addrA~combout\(0) & ((\reg[8][26]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \addrA~combout\(0),
	datac => \reg[10][26]~regout\,
	datad => \reg[8][26]~regout\,
	combout => \Mux5~10_combout\);

-- Location: LCCOMB_X23_Y12_N10
\Mux5~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~11_combout\ = (\addrA~combout\(0) & ((\Mux5~10_combout\ & (\reg[11][26]~regout\)) # (!\Mux5~10_combout\ & ((\reg[9][26]~regout\))))) # (!\addrA~combout\(0) & (((\Mux5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \reg[11][26]~regout\,
	datac => \reg[9][26]~regout\,
	datad => \Mux5~10_combout\,
	combout => \Mux5~11_combout\);

-- Location: LCCOMB_X20_Y12_N6
\Mux5~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~16_combout\ = (\Mux31~14_combout\ & (((\Mux31~23_combout\)))) # (!\Mux31~14_combout\ & ((\Mux31~23_combout\ & ((\Mux5~11_combout\))) # (!\Mux31~23_combout\ & (\Mux5~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~15_combout\,
	datab => \Mux31~14_combout\,
	datac => \Mux31~23_combout\,
	datad => \Mux5~11_combout\,
	combout => \Mux5~16_combout\);

-- Location: LCCOMB_X16_Y12_N26
\reg[31][26]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[31][26]~feeder_combout\ = \d_in~combout\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(26),
	combout => \reg[31][26]~feeder_combout\);

-- Location: LCFF_X16_Y12_N27
\reg[31][26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[31][26]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[31][26]~regout\);

-- Location: LCFF_X16_Y12_N17
\reg[27][26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(26),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[27][26]~regout\);

-- Location: LCFF_X16_Y15_N17
\reg[23][26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(26),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[23][26]~regout\);

-- Location: LCFF_X16_Y15_N19
\reg[19][26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(26),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[19][26]~regout\);

-- Location: LCCOMB_X16_Y15_N16
\Mux5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = (\addrA~combout\(2) & ((\addrA~combout\(3)) # ((\reg[23][26]~regout\)))) # (!\addrA~combout\(2) & (!\addrA~combout\(3) & ((\reg[19][26]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[23][26]~regout\,
	datad => \reg[19][26]~regout\,
	combout => \Mux5~7_combout\);

-- Location: LCCOMB_X16_Y12_N16
\Mux5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~8_combout\ = (\addrA~combout\(3) & ((\Mux5~7_combout\ & (\reg[31][26]~regout\)) # (!\Mux5~7_combout\ & ((\reg[27][26]~regout\))))) # (!\addrA~combout\(3) & (((\Mux5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \reg[31][26]~regout\,
	datac => \reg[27][26]~regout\,
	datad => \Mux5~7_combout\,
	combout => \Mux5~8_combout\);

-- Location: LCFF_X19_Y11_N15
\reg[29][26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(26),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[29][26]~regout\);

-- Location: LCFF_X19_Y11_N21
\reg[21][26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(26),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[21][26]~regout\);

-- Location: LCFF_X18_Y11_N5
\reg[25][26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(26),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[25][26]~regout\);

-- Location: LCFF_X18_Y11_N23
\reg[17][26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(26),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[17][26]~regout\);

-- Location: LCCOMB_X18_Y11_N4
\Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\addrA~combout\(3) & ((\addrA~combout\(2)) # ((\reg[25][26]~regout\)))) # (!\addrA~combout\(3) & (!\addrA~combout\(2) & ((\reg[17][26]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \reg[25][26]~regout\,
	datad => \reg[17][26]~regout\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X19_Y11_N20
\Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\addrA~combout\(2) & ((\Mux5~2_combout\ & (\reg[29][26]~regout\)) # (!\Mux5~2_combout\ & ((\reg[21][26]~regout\))))) # (!\addrA~combout\(2) & (((\Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \reg[29][26]~regout\,
	datac => \reg[21][26]~regout\,
	datad => \Mux5~2_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCFF_X24_Y14_N25
\reg[20][26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(26),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[20][26]~regout\);

-- Location: LCFF_X24_Y13_N21
\reg[24][26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(26),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[24][26]~regout\);

-- Location: LCCOMB_X23_Y13_N14
\reg[16][26]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[16][26]~feeder_combout\ = \d_in~combout\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(26),
	combout => \reg[16][26]~feeder_combout\);

-- Location: LCFF_X23_Y13_N15
\reg[16][26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[16][26]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[16][26]~regout\);

-- Location: LCCOMB_X24_Y13_N20
\Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\addrA~combout\(2) & (\addrA~combout\(3))) # (!\addrA~combout\(2) & ((\addrA~combout\(3) & (\reg[24][26]~regout\)) # (!\addrA~combout\(3) & ((\reg[16][26]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \addrA~combout\(3),
	datac => \reg[24][26]~regout\,
	datad => \reg[16][26]~regout\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X24_Y14_N24
\Mux5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\addrA~combout\(2) & ((\Mux5~4_combout\ & (\reg[28][26]~regout\)) # (!\Mux5~4_combout\ & ((\reg[20][26]~regout\))))) # (!\addrA~combout\(2) & (((\Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[28][26]~regout\,
	datab => \addrA~combout\(2),
	datac => \reg[20][26]~regout\,
	datad => \Mux5~4_combout\,
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X20_Y12_N18
\Mux5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (\addrA~combout\(0) & ((\Mux5~3_combout\) # ((\addrA~combout\(1))))) # (!\addrA~combout\(0) & (((!\addrA~combout\(1) & \Mux5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \Mux5~3_combout\,
	datac => \addrA~combout\(1),
	datad => \Mux5~5_combout\,
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X20_Y12_N20
\Mux5~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~9_combout\ = (\addrA~combout\(1) & ((\Mux5~6_combout\ & ((\Mux5~8_combout\))) # (!\Mux5~6_combout\ & (\Mux5~1_combout\)))) # (!\addrA~combout\(1) & (((\Mux5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \addrA~combout\(1),
	datac => \Mux5~8_combout\,
	datad => \Mux5~6_combout\,
	combout => \Mux5~9_combout\);

-- Location: LCFF_X23_Y16_N25
\reg[14][26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(26),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[14][26]~regout\);

-- Location: LCFF_X22_Y16_N13
\reg[13][26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(26),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[13][26]~regout\);

-- Location: LCFF_X23_Y16_N19
\reg[12][26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(26),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[12][26]~regout\);

-- Location: LCCOMB_X22_Y16_N12
\Mux5~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~17_combout\ = (\addrA~combout\(0) & ((\addrA~combout\(1)) # ((\reg[13][26]~regout\)))) # (!\addrA~combout\(0) & (!\addrA~combout\(1) & ((\reg[12][26]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \addrA~combout\(1),
	datac => \reg[13][26]~regout\,
	datad => \reg[12][26]~regout\,
	combout => \Mux5~17_combout\);

-- Location: LCCOMB_X23_Y16_N24
\Mux5~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~18_combout\ = (\addrA~combout\(1) & ((\Mux5~17_combout\ & (\reg[15][26]~regout\)) # (!\Mux5~17_combout\ & ((\reg[14][26]~regout\))))) # (!\addrA~combout\(1) & (((\Mux5~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[15][26]~regout\,
	datab => \addrA~combout\(1),
	datac => \reg[14][26]~regout\,
	datad => \Mux5~17_combout\,
	combout => \Mux5~18_combout\);

-- Location: LCCOMB_X20_Y12_N16
\Mux5~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~19_combout\ = (\Mux5~16_combout\ & (((\Mux5~18_combout\)) # (!\Mux31~14_combout\))) # (!\Mux5~16_combout\ & (\Mux31~14_combout\ & (\Mux5~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~16_combout\,
	datab => \Mux31~14_combout\,
	datac => \Mux5~9_combout\,
	datad => \Mux5~18_combout\,
	combout => \Mux5~19_combout\);

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[27]~I\ : cycloneii_io
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
	padio => ww_d_in(27),
	combout => \d_in~combout\(27));

-- Location: LCFF_X21_Y10_N19
\reg[3][27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(27),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[3][27]~regout\);

-- Location: LCFF_X21_Y10_N1
\reg[2][27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(27),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[2][27]~regout\);

-- Location: LCCOMB_X21_Y10_N0
\Mux4~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~15_combout\ = (\Mux4~14_combout\ & ((\reg[3][27]~regout\) # ((!\Mux31~18_combout\)))) # (!\Mux4~14_combout\ & (((\reg[2][27]~regout\ & \Mux31~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~14_combout\,
	datab => \reg[3][27]~regout\,
	datac => \reg[2][27]~regout\,
	datad => \Mux31~18_combout\,
	combout => \Mux4~15_combout\);

-- Location: LCCOMB_X20_Y14_N20
\Mux4~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~16_combout\ = (\Mux31~14_combout\ & ((\Mux4~11_combout\) # ((\Mux31~23_combout\)))) # (!\Mux31~14_combout\ & (((!\Mux31~23_combout\ & \Mux4~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~11_combout\,
	datab => \Mux31~14_combout\,
	datac => \Mux31~23_combout\,
	datad => \Mux4~15_combout\,
	combout => \Mux4~16_combout\);

-- Location: LCFF_X25_Y11_N7
\reg[10][27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(27),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[10][27]~regout\);

-- Location: LCFF_X25_Y10_N9
\reg[9][27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(27),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[9][27]~regout\);

-- Location: LCCOMB_X23_Y10_N12
\reg[8][27]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[8][27]~feeder_combout\ = \d_in~combout\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(27),
	combout => \reg[8][27]~feeder_combout\);

-- Location: LCFF_X23_Y10_N13
\reg[8][27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[8][27]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[8][27]~regout\);

-- Location: LCCOMB_X25_Y10_N8
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\addrA~combout\(0) & ((\addrA~combout\(1)) # ((\reg[9][27]~regout\)))) # (!\addrA~combout\(0) & (!\addrA~combout\(1) & ((\reg[8][27]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \addrA~combout\(1),
	datac => \reg[9][27]~regout\,
	datad => \reg[8][27]~regout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X25_Y11_N6
\Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\addrA~combout\(1) & ((\Mux4~0_combout\ & (\reg[11][27]~regout\)) # (!\Mux4~0_combout\ & ((\reg[10][27]~regout\))))) # (!\addrA~combout\(1) & (((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[11][27]~regout\,
	datab => \addrA~combout\(1),
	datac => \reg[10][27]~regout\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCFF_X23_Y17_N15
\reg[15][27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(27),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[15][27]~regout\);

-- Location: LCFF_X23_Y17_N29
\reg[13][27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(27),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[13][27]~regout\);

-- Location: LCFF_X23_Y16_N15
\reg[12][27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(27),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[12][27]~regout\);

-- Location: LCFF_X23_Y16_N5
\reg[14][27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(27),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[14][27]~regout\);

-- Location: LCCOMB_X23_Y16_N4
\Mux4~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~17_combout\ = (\addrA~combout\(0) & (((\addrA~combout\(1))))) # (!\addrA~combout\(0) & ((\addrA~combout\(1) & ((\reg[14][27]~regout\))) # (!\addrA~combout\(1) & (\reg[12][27]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \reg[12][27]~regout\,
	datac => \reg[14][27]~regout\,
	datad => \addrA~combout\(1),
	combout => \Mux4~17_combout\);

-- Location: LCCOMB_X23_Y17_N28
\Mux4~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~18_combout\ = (\addrA~combout\(0) & ((\Mux4~17_combout\ & (\reg[15][27]~regout\)) # (!\Mux4~17_combout\ & ((\reg[13][27]~regout\))))) # (!\addrA~combout\(0) & (((\Mux4~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \reg[15][27]~regout\,
	datac => \reg[13][27]~regout\,
	datad => \Mux4~17_combout\,
	combout => \Mux4~18_combout\);

-- Location: LCCOMB_X20_Y14_N6
\Mux4~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~19_combout\ = (\Mux4~16_combout\ & (((\Mux4~18_combout\)) # (!\Mux31~23_combout\))) # (!\Mux4~16_combout\ & (\Mux31~23_combout\ & (\Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~16_combout\,
	datab => \Mux31~23_combout\,
	datac => \Mux4~1_combout\,
	datad => \Mux4~18_combout\,
	combout => \Mux4~19_combout\);

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[28]~I\ : cycloneii_io
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
	padio => ww_d_in(28),
	combout => \d_in~combout\(28));

-- Location: LCFF_X20_Y14_N1
\reg[26][28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(28),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[26][28]~regout\);

-- Location: LCFF_X22_Y18_N9
\reg[22][28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(28),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[22][28]~regout\);

-- Location: LCFF_X22_Y18_N3
\reg[18][28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(28),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[18][28]~regout\);

-- Location: LCCOMB_X22_Y18_N8
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\addrA~combout\(3) & (\addrA~combout\(2))) # (!\addrA~combout\(3) & ((\addrA~combout\(2) & (\reg[22][28]~regout\)) # (!\addrA~combout\(2) & ((\reg[18][28]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \reg[22][28]~regout\,
	datad => \reg[18][28]~regout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X20_Y14_N0
\Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\addrA~combout\(3) & ((\Mux3~0_combout\ & (\reg[30][28]~regout\)) # (!\Mux3~0_combout\ & ((\reg[26][28]~regout\))))) # (!\addrA~combout\(3) & (((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[30][28]~regout\,
	datab => \addrA~combout\(3),
	datac => \reg[26][28]~regout\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCFF_X18_Y11_N29
\reg[25][28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(28),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[25][28]~regout\);

-- Location: LCFF_X18_Y11_N7
\reg[17][28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(28),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[17][28]~regout\);

-- Location: LCCOMB_X18_Y11_N28
\Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\addrA~combout\(3) & ((\addrA~combout\(2)) # ((\reg[25][28]~regout\)))) # (!\addrA~combout\(3) & (!\addrA~combout\(2) & ((\reg[17][28]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \reg[25][28]~regout\,
	datad => \reg[17][28]~regout\,
	combout => \Mux3~2_combout\);

-- Location: LCFF_X19_Y11_N13
\reg[21][28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(28),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[21][28]~regout\);

-- Location: LCFF_X19_Y11_N31
\reg[29][28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(28),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[29][28]~regout\);

-- Location: LCCOMB_X19_Y11_N12
\Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\addrA~combout\(2) & ((\Mux3~2_combout\ & ((\reg[29][28]~regout\))) # (!\Mux3~2_combout\ & (\reg[21][28]~regout\)))) # (!\addrA~combout\(2) & (\Mux3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \Mux3~2_combout\,
	datac => \reg[21][28]~regout\,
	datad => \reg[29][28]~regout\,
	combout => \Mux3~3_combout\);

-- Location: LCFF_X24_Y14_N21
\reg[20][28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(28),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[20][28]~regout\);

-- Location: LCFF_X24_Y13_N7
\reg[28][28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(28),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[28][28]~regout\);

-- Location: LCCOMB_X24_Y14_N20
\Mux3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\Mux3~4_combout\ & (((\reg[28][28]~regout\)) # (!\addrA~combout\(2)))) # (!\Mux3~4_combout\ & (\addrA~combout\(2) & (\reg[20][28]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~4_combout\,
	datab => \addrA~combout\(2),
	datac => \reg[20][28]~regout\,
	datad => \reg[28][28]~regout\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X20_Y10_N14
\Mux3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\addrA~combout\(0) & ((\Mux3~3_combout\) # ((\addrA~combout\(1))))) # (!\addrA~combout\(0) & (((!\addrA~combout\(1) & \Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \Mux3~3_combout\,
	datac => \addrA~combout\(1),
	datad => \Mux3~5_combout\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X20_Y14_N26
\Mux3~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~9_combout\ = (\addrA~combout\(1) & ((\Mux3~6_combout\ & (\Mux3~8_combout\)) # (!\Mux3~6_combout\ & ((\Mux3~1_combout\))))) # (!\addrA~combout\(1) & (((\Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~8_combout\,
	datab => \Mux3~1_combout\,
	datac => \addrA~combout\(1),
	datad => \Mux3~6_combout\,
	combout => \Mux3~9_combout\);

-- Location: LCFF_X21_Y16_N15
\reg[14][28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(28),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[14][28]~regout\);

-- Location: LCFF_X21_Y16_N17
\reg[12][28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(28),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[12][28]~regout\);

-- Location: LCFF_X22_Y16_N25
\reg[13][28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(28),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[13][28]~regout\);

-- Location: LCCOMB_X22_Y16_N24
\Mux3~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~17_combout\ = (\addrA~combout\(1) & (((\addrA~combout\(0))))) # (!\addrA~combout\(1) & ((\addrA~combout\(0) & ((\reg[13][28]~regout\))) # (!\addrA~combout\(0) & (\reg[12][28]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \reg[12][28]~regout\,
	datac => \reg[13][28]~regout\,
	datad => \addrA~combout\(0),
	combout => \Mux3~17_combout\);

-- Location: LCCOMB_X21_Y16_N14
\Mux3~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~18_combout\ = (\addrA~combout\(1) & ((\Mux3~17_combout\ & (\reg[15][28]~regout\)) # (!\Mux3~17_combout\ & ((\reg[14][28]~regout\))))) # (!\addrA~combout\(1) & (((\Mux3~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[15][28]~regout\,
	datab => \addrA~combout\(1),
	datac => \reg[14][28]~regout\,
	datad => \Mux3~17_combout\,
	combout => \Mux3~18_combout\);

-- Location: LCFF_X22_Y10_N29
\reg[1][28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(28),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[1][28]~regout\);

-- Location: LCFF_X20_Y10_N17
\reg[5][28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(28),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[5][28]~regout\);

-- Location: LCCOMB_X20_Y10_N2
\reg[4][28]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[4][28]~feeder_combout\ = \d_in~combout\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(28),
	combout => \reg[4][28]~feeder_combout\);

-- Location: LCFF_X20_Y10_N3
\reg[4][28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[4][28]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[4][28]~regout\);

-- Location: LCCOMB_X20_Y10_N16
\Mux3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~12_combout\ = (\addrA~combout\(0) & ((\addrA~combout\(1)) # ((\reg[5][28]~regout\)))) # (!\addrA~combout\(0) & (!\addrA~combout\(1) & ((\reg[4][28]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \addrA~combout\(1),
	datac => \reg[5][28]~regout\,
	datad => \reg[4][28]~regout\,
	combout => \Mux3~12_combout\);

-- Location: LCFF_X22_Y10_N31
\reg[6][28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(28),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[6][28]~regout\);

-- Location: LCFF_X20_Y14_N13
\reg[7][28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(28),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[7][28]~regout\);

-- Location: LCCOMB_X22_Y10_N30
\Mux3~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~13_combout\ = (\addrA~combout\(1) & ((\Mux3~12_combout\ & ((\reg[7][28]~regout\))) # (!\Mux3~12_combout\ & (\reg[6][28]~regout\)))) # (!\addrA~combout\(1) & (\Mux3~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \Mux3~12_combout\,
	datac => \reg[6][28]~regout\,
	datad => \reg[7][28]~regout\,
	combout => \Mux3~13_combout\);

-- Location: LCCOMB_X22_Y10_N28
\Mux3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~14_combout\ = (\Mux31~15_combout\ & ((\Mux31~16_combout\ & ((\Mux3~13_combout\))) # (!\Mux31~16_combout\ & (\reg[1][28]~regout\)))) # (!\Mux31~15_combout\ & (\Mux31~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~15_combout\,
	datab => \Mux31~16_combout\,
	datac => \reg[1][28]~regout\,
	datad => \Mux3~13_combout\,
	combout => \Mux3~14_combout\);

-- Location: LCFF_X21_Y10_N5
\reg[2][28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(28),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[2][28]~regout\);

-- Location: LCCOMB_X21_Y10_N4
\Mux3~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~15_combout\ = (\Mux3~14_combout\ & ((\reg[3][28]~regout\) # ((!\Mux31~18_combout\)))) # (!\Mux3~14_combout\ & (((\reg[2][28]~regout\ & \Mux31~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[3][28]~regout\,
	datab => \Mux3~14_combout\,
	datac => \reg[2][28]~regout\,
	datad => \Mux31~18_combout\,
	combout => \Mux3~15_combout\);

-- Location: LCCOMB_X20_Y12_N2
\Mux3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~16_combout\ = (\Mux31~14_combout\ & (((\Mux31~23_combout\)))) # (!\Mux31~14_combout\ & ((\Mux31~23_combout\ & (\Mux3~11_combout\)) # (!\Mux31~23_combout\ & ((\Mux3~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~11_combout\,
	datab => \Mux31~14_combout\,
	datac => \Mux31~23_combout\,
	datad => \Mux3~15_combout\,
	combout => \Mux3~16_combout\);

-- Location: LCCOMB_X20_Y12_N28
\Mux3~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~19_combout\ = (\Mux31~14_combout\ & ((\Mux3~16_combout\ & ((\Mux3~18_combout\))) # (!\Mux3~16_combout\ & (\Mux3~9_combout\)))) # (!\Mux31~14_combout\ & (((\Mux3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~9_combout\,
	datab => \Mux3~18_combout\,
	datac => \Mux31~14_combout\,
	datad => \Mux3~16_combout\,
	combout => \Mux3~19_combout\);

-- Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[29]~I\ : cycloneii_io
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
	padio => ww_d_in(29),
	combout => \d_in~combout\(29));

-- Location: LCFF_X21_Y10_N3
\reg[3][29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(29),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[3][29]~regout\);

-- Location: LCFF_X21_Y10_N9
\reg[2][29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(29),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[2][29]~regout\);

-- Location: LCCOMB_X21_Y10_N8
\Mux2~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~15_combout\ = (\Mux2~14_combout\ & ((\reg[3][29]~regout\) # ((!\Mux31~18_combout\)))) # (!\Mux2~14_combout\ & (((\reg[2][29]~regout\ & \Mux31~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~14_combout\,
	datab => \reg[3][29]~regout\,
	datac => \reg[2][29]~regout\,
	datad => \Mux31~18_combout\,
	combout => \Mux2~15_combout\);

-- Location: LCCOMB_X20_Y10_N24
\Mux2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~16_combout\ = (\Mux31~23_combout\ & (((\Mux31~14_combout\)))) # (!\Mux31~23_combout\ & ((\Mux31~14_combout\ & (\Mux2~11_combout\)) # (!\Mux31~14_combout\ & ((\Mux2~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~11_combout\,
	datab => \Mux31~23_combout\,
	datac => \Mux31~14_combout\,
	datad => \Mux2~15_combout\,
	combout => \Mux2~16_combout\);

-- Location: LCFF_X25_Y10_N31
\reg[11][29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(29),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[11][29]~regout\);

-- Location: LCFF_X24_Y10_N11
\reg[10][29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(29),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[10][29]~regout\);

-- Location: LCFF_X25_Y10_N21
\reg[9][29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(29),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[9][29]~regout\);

-- Location: LCCOMB_X23_Y10_N16
\reg[8][29]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[8][29]~feeder_combout\ = \d_in~combout\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(29),
	combout => \reg[8][29]~feeder_combout\);

-- Location: LCFF_X23_Y10_N17
\reg[8][29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[8][29]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[8][29]~regout\);

-- Location: LCCOMB_X25_Y10_N20
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\addrA~combout\(0) & ((\addrA~combout\(1)) # ((\reg[9][29]~regout\)))) # (!\addrA~combout\(0) & (!\addrA~combout\(1) & ((\reg[8][29]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \addrA~combout\(1),
	datac => \reg[9][29]~regout\,
	datad => \reg[8][29]~regout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X24_Y10_N10
\Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\addrA~combout\(1) & ((\Mux2~0_combout\ & (\reg[11][29]~regout\)) # (!\Mux2~0_combout\ & ((\reg[10][29]~regout\))))) # (!\addrA~combout\(1) & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \reg[11][29]~regout\,
	datac => \reg[10][29]~regout\,
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCFF_X21_Y16_N19
\reg[14][29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(29),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[14][29]~regout\);

-- Location: LCCOMB_X21_Y16_N18
\Mux2~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~17_combout\ = (\addrA~combout\(1) & (((\reg[14][29]~regout\) # (\addrA~combout\(0))))) # (!\addrA~combout\(1) & (\reg[12][29]~regout\ & ((!\addrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[12][29]~regout\,
	datab => \addrA~combout\(1),
	datac => \reg[14][29]~regout\,
	datad => \addrA~combout\(0),
	combout => \Mux2~17_combout\);

-- Location: LCFF_X22_Y16_N21
\reg[13][29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(29),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[13][29]~regout\);

-- Location: LCCOMB_X22_Y16_N20
\Mux2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~18_combout\ = (\Mux2~17_combout\ & ((\reg[15][29]~regout\) # ((!\addrA~combout\(0))))) # (!\Mux2~17_combout\ & (((\reg[13][29]~regout\ & \addrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[15][29]~regout\,
	datab => \Mux2~17_combout\,
	datac => \reg[13][29]~regout\,
	datad => \addrA~combout\(0),
	combout => \Mux2~18_combout\);

-- Location: LCCOMB_X20_Y10_N26
\Mux2~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~19_combout\ = (\Mux2~16_combout\ & (((\Mux2~18_combout\)) # (!\Mux31~23_combout\))) # (!\Mux2~16_combout\ & (\Mux31~23_combout\ & (\Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~16_combout\,
	datab => \Mux31~23_combout\,
	datac => \Mux2~1_combout\,
	datad => \Mux2~18_combout\,
	combout => \Mux2~19_combout\);

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[30]~I\ : cycloneii_io
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
	padio => ww_d_in(30),
	combout => \d_in~combout\(30));

-- Location: LCFF_X22_Y10_N21
\reg[1][30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(30),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[1][30]~regout\);

-- Location: LCCOMB_X22_Y10_N20
\Mux1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~14_combout\ = (\Mux31~16_combout\ & ((\Mux1~13_combout\) # ((!\Mux31~15_combout\)))) # (!\Mux31~16_combout\ & (((\reg[1][30]~regout\ & \Mux31~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~13_combout\,
	datab => \Mux31~16_combout\,
	datac => \reg[1][30]~regout\,
	datad => \Mux31~15_combout\,
	combout => \Mux1~14_combout\);

-- Location: LCFF_X21_Y11_N5
\reg[2][30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(30),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[2][30]~regout\);

-- Location: LCCOMB_X21_Y11_N4
\Mux1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~15_combout\ = (\Mux1~14_combout\ & ((\reg[3][30]~regout\) # ((!\Mux31~18_combout\)))) # (!\Mux1~14_combout\ & (((\reg[2][30]~regout\ & \Mux31~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[3][30]~regout\,
	datab => \Mux1~14_combout\,
	datac => \reg[2][30]~regout\,
	datad => \Mux31~18_combout\,
	combout => \Mux1~15_combout\);

-- Location: LCFF_X23_Y12_N27
\reg[11][30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(30),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[11][30]~regout\);

-- Location: LCFF_X23_Y12_N25
\reg[9][30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(30),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[9][30]~regout\);

-- Location: LCCOMB_X23_Y12_N24
\Mux1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~11_combout\ = (\Mux1~10_combout\ & ((\reg[11][30]~regout\) # ((!\addrA~combout\(0))))) # (!\Mux1~10_combout\ & (((\reg[9][30]~regout\ & \addrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~10_combout\,
	datab => \reg[11][30]~regout\,
	datac => \reg[9][30]~regout\,
	datad => \addrA~combout\(0),
	combout => \Mux1~11_combout\);

-- Location: LCCOMB_X20_Y12_N24
\Mux1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~16_combout\ = (\Mux31~23_combout\ & ((\Mux31~14_combout\) # ((\Mux1~11_combout\)))) # (!\Mux31~23_combout\ & (!\Mux31~14_combout\ & (\Mux1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~23_combout\,
	datab => \Mux31~14_combout\,
	datac => \Mux1~15_combout\,
	datad => \Mux1~11_combout\,
	combout => \Mux1~16_combout\);

-- Location: LCFF_X20_Y14_N17
\reg[26][30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(30),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[26][30]~regout\);

-- Location: LCFF_X20_Y18_N27
\reg[22][30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(30),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[22][30]~regout\);

-- Location: LCCOMB_X20_Y18_N26
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\addrA~combout\(3) & (((\addrA~combout\(2))))) # (!\addrA~combout\(3) & ((\addrA~combout\(2) & ((\reg[22][30]~regout\))) # (!\addrA~combout\(2) & (\reg[18][30]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[18][30]~regout\,
	datab => \addrA~combout\(3),
	datac => \reg[22][30]~regout\,
	datad => \addrA~combout\(2),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X20_Y14_N16
\Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\addrA~combout\(3) & ((\Mux1~0_combout\ & (\reg[30][30]~regout\)) # (!\Mux1~0_combout\ & ((\reg[26][30]~regout\))))) # (!\addrA~combout\(3) & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[30][30]~regout\,
	datab => \addrA~combout\(3),
	datac => \reg[26][30]~regout\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCFF_X18_Y11_N15
\reg[17][30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(30),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[17][30]~regout\);

-- Location: LCFF_X18_Y11_N21
\reg[25][30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(30),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[25][30]~regout\);

-- Location: LCCOMB_X18_Y11_N20
\Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\addrA~combout\(3) & (((\reg[25][30]~regout\) # (\addrA~combout\(2))))) # (!\addrA~combout\(3) & (\reg[17][30]~regout\ & ((!\addrA~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \reg[17][30]~regout\,
	datac => \reg[25][30]~regout\,
	datad => \addrA~combout\(2),
	combout => \Mux1~2_combout\);

-- Location: LCFF_X19_Y11_N29
\reg[21][30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(30),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[21][30]~regout\);

-- Location: LCCOMB_X19_Y11_N6
\reg[29][30]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[29][30]~feeder_combout\ = \d_in~combout\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(30),
	combout => \reg[29][30]~feeder_combout\);

-- Location: LCFF_X19_Y11_N7
\reg[29][30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[29][30]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[29][30]~regout\);

-- Location: LCCOMB_X19_Y11_N28
\Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\addrA~combout\(2) & ((\Mux1~2_combout\ & ((\reg[29][30]~regout\))) # (!\Mux1~2_combout\ & (\reg[21][30]~regout\)))) # (!\addrA~combout\(2) & (\Mux1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \Mux1~2_combout\,
	datac => \reg[21][30]~regout\,
	datad => \reg[29][30]~regout\,
	combout => \Mux1~3_combout\);

-- Location: LCFF_X26_Y14_N31
\reg[28][30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(30),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[28][30]~regout\);

-- Location: LCFF_X26_Y14_N5
\reg[20][30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(30),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[20][30]~regout\);

-- Location: LCCOMB_X27_Y14_N14
\reg[16][30]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[16][30]~feeder_combout\ = \d_in~combout\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(30),
	combout => \reg[16][30]~feeder_combout\);

-- Location: LCFF_X27_Y14_N15
\reg[16][30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[16][30]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[16][30]~regout\);

-- Location: LCFF_X27_Y14_N29
\reg[24][30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(30),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[24][30]~regout\);

-- Location: LCCOMB_X27_Y14_N28
\Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\addrA~combout\(2) & (((\addrA~combout\(3))))) # (!\addrA~combout\(2) & ((\addrA~combout\(3) & ((\reg[24][30]~regout\))) # (!\addrA~combout\(3) & (\reg[16][30]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \reg[16][30]~regout\,
	datac => \reg[24][30]~regout\,
	datad => \addrA~combout\(3),
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X26_Y14_N4
\Mux1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (\addrA~combout\(2) & ((\Mux1~4_combout\ & (\reg[28][30]~regout\)) # (!\Mux1~4_combout\ & ((\reg[20][30]~regout\))))) # (!\addrA~combout\(2) & (((\Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(2),
	datab => \reg[28][30]~regout\,
	datac => \reg[20][30]~regout\,
	datad => \Mux1~4_combout\,
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X20_Y14_N18
\Mux1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = (\addrA~combout\(0) & ((\Mux1~3_combout\) # ((\addrA~combout\(1))))) # (!\addrA~combout\(0) & (((!\addrA~combout\(1) & \Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(0),
	datab => \Mux1~3_combout\,
	datac => \addrA~combout\(1),
	datad => \Mux1~5_combout\,
	combout => \Mux1~6_combout\);

-- Location: LCCOMB_X20_Y12_N30
\Mux1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~9_combout\ = (\addrA~combout\(1) & ((\Mux1~6_combout\ & (\Mux1~8_combout\)) # (!\Mux1~6_combout\ & ((\Mux1~1_combout\))))) # (!\addrA~combout\(1) & (((\Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~8_combout\,
	datab => \Mux1~1_combout\,
	datac => \addrA~combout\(1),
	datad => \Mux1~6_combout\,
	combout => \Mux1~9_combout\);

-- Location: LCFF_X19_Y12_N13
\reg[14][30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(30),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[14][30]~regout\);

-- Location: LCCOMB_X19_Y12_N22
\reg[15][30]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[15][30]~feeder_combout\ = \d_in~combout\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(30),
	combout => \reg[15][30]~feeder_combout\);

-- Location: LCFF_X19_Y12_N23
\reg[15][30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[15][30]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[15][30]~regout\);

-- Location: LCCOMB_X19_Y12_N12
\Mux1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~18_combout\ = (\Mux1~17_combout\ & (((\reg[15][30]~regout\)) # (!\addrA~combout\(1)))) # (!\Mux1~17_combout\ & (\addrA~combout\(1) & (\reg[14][30]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~17_combout\,
	datab => \addrA~combout\(1),
	datac => \reg[14][30]~regout\,
	datad => \reg[15][30]~regout\,
	combout => \Mux1~18_combout\);

-- Location: LCCOMB_X20_Y12_N26
\Mux1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~19_combout\ = (\Mux1~16_combout\ & (((\Mux1~18_combout\) # (!\Mux31~14_combout\)))) # (!\Mux1~16_combout\ & (\Mux1~9_combout\ & ((\Mux31~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~16_combout\,
	datab => \Mux1~9_combout\,
	datac => \Mux1~18_combout\,
	datad => \Mux31~14_combout\,
	combout => \Mux1~19_combout\);

-- Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in[31]~I\ : cycloneii_io
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
	padio => ww_d_in(31),
	combout => \d_in~combout\(31));

-- Location: LCFF_X18_Y14_N31
\reg[12][31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(31),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[12][31]~regout\);

-- Location: LCFF_X18_Y14_N29
\reg[14][31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(31),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[14][31]~regout\);

-- Location: LCCOMB_X18_Y14_N28
\Mux0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~17_combout\ = (\addrA~combout\(1) & (((\reg[14][31]~regout\) # (\addrA~combout\(0))))) # (!\addrA~combout\(1) & (\reg[12][31]~regout\ & ((!\addrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \reg[12][31]~regout\,
	datac => \reg[14][31]~regout\,
	datad => \addrA~combout\(0),
	combout => \Mux0~17_combout\);

-- Location: LCFF_X19_Y14_N25
\reg[13][31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(31),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[13][31]~regout\);

-- Location: LCCOMB_X19_Y14_N24
\Mux0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~18_combout\ = (\Mux0~17_combout\ & ((\reg[15][31]~regout\) # ((!\addrA~combout\(0))))) # (!\Mux0~17_combout\ & (((\reg[13][31]~regout\ & \addrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[15][31]~regout\,
	datab => \Mux0~17_combout\,
	datac => \reg[13][31]~regout\,
	datad => \addrA~combout\(0),
	combout => \Mux0~18_combout\);

-- Location: LCFF_X19_Y14_N9
\reg[10][31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(31),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[10][31]~regout\);

-- Location: LCCOMB_X23_Y12_N28
\reg[11][31]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[11][31]~feeder_combout\ = \d_in~combout\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(31),
	combout => \reg[11][31]~feeder_combout\);

-- Location: LCFF_X23_Y12_N29
\reg[11][31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[11][31]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[11][31]~regout\);

-- Location: LCCOMB_X19_Y14_N8
\Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\ & (((\reg[11][31]~regout\)) # (!\addrA~combout\(1)))) # (!\Mux0~0_combout\ & (\addrA~combout\(1) & (\reg[10][31]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \addrA~combout\(1),
	datac => \reg[10][31]~regout\,
	datad => \reg[11][31]~regout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X21_Y11_N2
\reg[3][31]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[3][31]~feeder_combout\ = \d_in~combout\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(31),
	combout => \reg[3][31]~feeder_combout\);

-- Location: LCFF_X21_Y11_N3
\reg[3][31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[3][31]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[3][31]~regout\);

-- Location: LCFF_X21_Y11_N9
\reg[2][31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(31),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[2][31]~regout\);

-- Location: LCFF_X22_Y11_N15
\reg[5][31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(31),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[5][31]~regout\);

-- Location: LCFF_X26_Y11_N5
\reg[6][31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(31),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[6][31]~regout\);

-- Location: LCFF_X26_Y11_N31
\reg[4][31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(31),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[4][31]~regout\);

-- Location: LCCOMB_X26_Y11_N4
\Mux0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~12_combout\ = (\addrA~combout\(1) & ((\addrA~combout\(0)) # ((\reg[6][31]~regout\)))) # (!\addrA~combout\(1) & (!\addrA~combout\(0) & ((\reg[4][31]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(1),
	datab => \addrA~combout\(0),
	datac => \reg[6][31]~regout\,
	datad => \reg[4][31]~regout\,
	combout => \Mux0~12_combout\);

-- Location: LCCOMB_X22_Y11_N14
\Mux0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~13_combout\ = (\addrA~combout\(0) & ((\Mux0~12_combout\ & (\reg[7][31]~regout\)) # (!\Mux0~12_combout\ & ((\reg[5][31]~regout\))))) # (!\addrA~combout\(0) & (((\Mux0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[7][31]~regout\,
	datab => \addrA~combout\(0),
	datac => \reg[5][31]~regout\,
	datad => \Mux0~12_combout\,
	combout => \Mux0~13_combout\);

-- Location: LCFF_X22_Y11_N21
\reg[1][31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(31),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[1][31]~regout\);

-- Location: LCCOMB_X22_Y11_N20
\Mux0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~14_combout\ = (\Mux31~16_combout\ & ((\Mux0~13_combout\) # ((!\Mux31~15_combout\)))) # (!\Mux31~16_combout\ & (((\reg[1][31]~regout\ & \Mux31~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~16_combout\,
	datab => \Mux0~13_combout\,
	datac => \reg[1][31]~regout\,
	datad => \Mux31~15_combout\,
	combout => \Mux0~14_combout\);

-- Location: LCCOMB_X21_Y11_N8
\Mux0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~15_combout\ = (\Mux31~18_combout\ & ((\Mux0~14_combout\ & (\reg[3][31]~regout\)) # (!\Mux0~14_combout\ & ((\reg[2][31]~regout\))))) # (!\Mux31~18_combout\ & (((\Mux0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~18_combout\,
	datab => \reg[3][31]~regout\,
	datac => \reg[2][31]~regout\,
	datad => \Mux0~14_combout\,
	combout => \Mux0~15_combout\);

-- Location: LCFF_X18_Y17_N5
\reg[22][31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(31),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[22][31]~regout\);

-- Location: LCCOMB_X18_Y17_N30
\reg[18][31]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[18][31]~feeder_combout\ = \d_in~combout\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\(31),
	combout => \reg[18][31]~feeder_combout\);

-- Location: LCFF_X18_Y17_N31
\reg[18][31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg[18][31]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[18][31]~regout\);

-- Location: LCCOMB_X18_Y17_N4
\Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\addrA~combout\(3) & (\addrA~combout\(2))) # (!\addrA~combout\(3) & ((\addrA~combout\(2) & (\reg[22][31]~regout\)) # (!\addrA~combout\(2) & ((\reg[18][31]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \addrA~combout\(2),
	datac => \reg[22][31]~regout\,
	datad => \reg[18][31]~regout\,
	combout => \Mux0~4_combout\);

-- Location: LCFF_X19_Y17_N5
\reg[26][31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(31),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[26][31]~regout\);

-- Location: LCFF_X19_Y17_N31
\reg[30][31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(31),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[30][31]~regout\);

-- Location: LCCOMB_X19_Y17_N4
\Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (\addrA~combout\(3) & ((\Mux0~4_combout\ & ((\reg[30][31]~regout\))) # (!\Mux0~4_combout\ & (\reg[26][31]~regout\)))) # (!\addrA~combout\(3) & (\Mux0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addrA~combout\(3),
	datab => \Mux0~4_combout\,
	datac => \reg[26][31]~regout\,
	datad => \reg[30][31]~regout\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X19_Y14_N26
\Mux0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = (\addrA~combout\(1) & (((\Mux0~5_combout\) # (\addrA~combout\(0))))) # (!\addrA~combout\(1) & (\Mux0~7_combout\ & ((!\addrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~7_combout\,
	datab => \Mux0~5_combout\,
	datac => \addrA~combout\(1),
	datad => \addrA~combout\(0),
	combout => \Mux0~8_combout\);

-- Location: LCFF_X19_Y15_N15
\reg[31][31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(31),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[31][31]~regout\);

-- Location: LCFF_X19_Y15_N21
\reg[27][31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \d_in~combout\(31),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal15~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg[27][31]~regout\);

-- Location: LCCOMB_X19_Y15_N20
\Mux0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~10_combout\ = (\Mux0~9_combout\ & ((\reg[31][31]~regout\) # ((!\addrA~combout\(3))))) # (!\Mux0~9_combout\ & (((\reg[27][31]~regout\ & \addrA~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~9_combout\,
	datab => \reg[31][31]~regout\,
	datac => \reg[27][31]~regout\,
	datad => \addrA~combout\(3),
	combout => \Mux0~10_combout\);

-- Location: LCCOMB_X19_Y14_N12
\Mux0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~11_combout\ = (\Mux0~8_combout\ & (((\Mux0~10_combout\) # (!\addrA~combout\(0))))) # (!\Mux0~8_combout\ & (\Mux0~3_combout\ & ((\addrA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datab => \Mux0~8_combout\,
	datac => \Mux0~10_combout\,
	datad => \addrA~combout\(0),
	combout => \Mux0~11_combout\);

-- Location: LCCOMB_X19_Y14_N6
\Mux0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~16_combout\ = (\Mux31~23_combout\ & (\Mux31~14_combout\)) # (!\Mux31~23_combout\ & ((\Mux31~14_combout\ & ((\Mux0~11_combout\))) # (!\Mux31~14_combout\ & (\Mux0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~23_combout\,
	datab => \Mux31~14_combout\,
	datac => \Mux0~15_combout\,
	datad => \Mux0~11_combout\,
	combout => \Mux0~16_combout\);

-- Location: LCCOMB_X19_Y14_N2
\Mux0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~19_combout\ = (\Mux31~23_combout\ & ((\Mux0~16_combout\ & (\Mux0~18_combout\)) # (!\Mux0~16_combout\ & ((\Mux0~1_combout\))))) # (!\Mux31~23_combout\ & (((\Mux0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~18_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux31~23_combout\,
	datad => \Mux0~16_combout\,
	combout => \Mux0~19_combout\);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addrB[0]~I\ : cycloneii_io
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
	padio => ww_addrB(0));

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addrB[1]~I\ : cycloneii_io
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
	padio => ww_addrB(1));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addrB[2]~I\ : cycloneii_io
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
	padio => ww_addrB(2));

-- Location: PIN_AB14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addrB[3]~I\ : cycloneii_io
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
	padio => ww_addrB(3));

-- Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addrB[4]~I\ : cycloneii_io
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
	padio => ww_addrB(4));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regA[0]~I\ : cycloneii_io
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
	datain => \Mux31~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regA(0));

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regA[1]~I\ : cycloneii_io
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
	datain => \Mux30~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regA(1));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regA[2]~I\ : cycloneii_io
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
	datain => \Mux29~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regA(2));

-- Location: PIN_AB7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regA[3]~I\ : cycloneii_io
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
	datain => \Mux28~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regA(3));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regA[4]~I\ : cycloneii_io
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
	datain => \Mux27~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regA(4));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regA[5]~I\ : cycloneii_io
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
	datain => \Mux26~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regA(5));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regA[6]~I\ : cycloneii_io
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
	datain => \Mux25~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regA(6));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regA[7]~I\ : cycloneii_io
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
	datain => \Mux24~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regA(7));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regA[8]~I\ : cycloneii_io
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
	datain => \Mux23~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regA(8));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regA[9]~I\ : cycloneii_io
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
	datain => \Mux22~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regA(9));

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regA[10]~I\ : cycloneii_io
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
	datain => \Mux21~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regA(10));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regA[11]~I\ : cycloneii_io
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
	datain => \Mux20~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regA(11));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regA[12]~I\ : cycloneii_io
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
	datain => \Mux19~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regA(12));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regA[13]~I\ : cycloneii_io
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
	datain => \Mux18~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regA(13));

-- Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regA[14]~I\ : cycloneii_io
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
	datain => \Mux17~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regA(14));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regA[15]~I\ : cycloneii_io
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
	datain => \Mux16~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regA(15));

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regA[16]~I\ : cycloneii_io
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
	datain => \Mux15~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regA(16));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regA[17]~I\ : cycloneii_io
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
	datain => \Mux14~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regA(17));

-- Location: PIN_Y9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regA[18]~I\ : cycloneii_io
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
	datain => \Mux13~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regA(18));

-- Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regA[19]~I\ : cycloneii_io
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
	datain => \Mux12~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regA(19));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regA[20]~I\ : cycloneii_io
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
	datain => \Mux11~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regA(20));

-- Location: PIN_N6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regA[21]~I\ : cycloneii_io
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
	datain => \Mux10~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regA(21));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regA[22]~I\ : cycloneii_io
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
	datain => \Mux9~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regA(22));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regA[23]~I\ : cycloneii_io
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
	datain => \Mux8~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regA(23));

-- Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regA[24]~I\ : cycloneii_io
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
	datain => \Mux7~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regA(24));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regA[25]~I\ : cycloneii_io
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
	datain => \Mux6~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regA(25));

-- Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regA[26]~I\ : cycloneii_io
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
	datain => \Mux5~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regA(26));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regA[27]~I\ : cycloneii_io
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
	datain => \Mux4~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regA(27));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regA[28]~I\ : cycloneii_io
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
	datain => \Mux3~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regA(28));

-- Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regA[29]~I\ : cycloneii_io
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
	datain => \Mux2~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regA(29));

-- Location: PIN_T1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regA[30]~I\ : cycloneii_io
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
	datain => \Mux1~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regA(30));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regA[31]~I\ : cycloneii_io
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
	datain => \Mux0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regA(31));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regB[0]~I\ : cycloneii_io
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
	datain => \Mux31~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regB(0));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regB[1]~I\ : cycloneii_io
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
	datain => \Mux30~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regB(1));

-- Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regB[2]~I\ : cycloneii_io
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
	datain => \Mux29~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regB(2));

-- Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regB[3]~I\ : cycloneii_io
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
	datain => \Mux28~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regB(3));

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regB[4]~I\ : cycloneii_io
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
	datain => \Mux27~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regB(4));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regB[5]~I\ : cycloneii_io
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
	datain => \Mux26~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regB(5));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regB[6]~I\ : cycloneii_io
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
	datain => \Mux25~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regB(6));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regB[7]~I\ : cycloneii_io
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
	datain => \Mux24~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regB(7));

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regB[8]~I\ : cycloneii_io
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
	datain => \Mux23~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regB(8));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regB[9]~I\ : cycloneii_io
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
	datain => \Mux22~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regB(9));

-- Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regB[10]~I\ : cycloneii_io
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
	datain => \Mux21~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regB(10));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regB[11]~I\ : cycloneii_io
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
	datain => \Mux20~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regB(11));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regB[12]~I\ : cycloneii_io
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
	datain => \Mux19~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regB(12));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regB[13]~I\ : cycloneii_io
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
	datain => \Mux18~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regB(13));

-- Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regB[14]~I\ : cycloneii_io
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
	datain => \Mux17~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regB(14));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regB[15]~I\ : cycloneii_io
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
	datain => \Mux16~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regB(15));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regB[16]~I\ : cycloneii_io
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
	datain => \Mux15~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regB(16));

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regB[17]~I\ : cycloneii_io
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
	datain => \Mux14~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regB(17));

-- Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regB[18]~I\ : cycloneii_io
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
	datain => \Mux13~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regB(18));

-- Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regB[19]~I\ : cycloneii_io
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
	datain => \Mux12~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regB(19));

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regB[20]~I\ : cycloneii_io
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
	datain => \Mux11~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regB(20));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regB[21]~I\ : cycloneii_io
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
	datain => \Mux10~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regB(21));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regB[22]~I\ : cycloneii_io
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
	datain => \Mux9~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regB(22));

-- Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regB[23]~I\ : cycloneii_io
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
	datain => \Mux8~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regB(23));

-- Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regB[24]~I\ : cycloneii_io
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
	datain => \Mux7~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regB(24));

-- Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regB[25]~I\ : cycloneii_io
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
	datain => \Mux6~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regB(25));

-- Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regB[26]~I\ : cycloneii_io
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
	datain => \Mux5~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regB(26));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regB[27]~I\ : cycloneii_io
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
	datain => \Mux4~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regB(27));

-- Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regB[28]~I\ : cycloneii_io
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
	datain => \Mux3~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regB(28));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regB[29]~I\ : cycloneii_io
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
	datain => \Mux2~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regB(29));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regB[30]~I\ : cycloneii_io
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
	datain => \Mux1~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regB(30));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regB[31]~I\ : cycloneii_io
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
	datain => \Mux0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regB(31));
END structure;


