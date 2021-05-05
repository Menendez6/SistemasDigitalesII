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

-- DATE "05/05/2021 09:25:03"

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

ENTITY 	practica6 IS
    PORT (
	reset_n : IN std_logic;
	clk : IN std_logic;
	out_pins : OUT std_logic_vector(7 DOWNTO 0);
	in_pins : IN std_logic_vector(7 DOWNTO 0)
	);
END practica6;

-- Design Ports Information
-- out_pins[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_pins[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_pins[2]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_pins[3]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_pins[4]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_pins[5]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_pins[6]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_pins[7]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_n	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_pins[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_pins[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_pins[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_pins[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_pins[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_pins[5]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_pins[6]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_pins[7]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF practica6 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_out_pins : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_in_pins : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~34_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~56_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~58_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~6_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~38_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux31~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Control|estado_act.Arit4~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[6][31]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[1][31]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[6][30]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[1][30]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[5][30]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[30]~5_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[30]~6_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[30]~7_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[6][29]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[4][28]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[5][28]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[6][27]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[27]~14_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[6][26]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[5][26]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[5][25]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[6][24]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_genInm|inm[24]~1_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[5][24]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[1][23]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[5][23]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[23]~26_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[23]~27_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[23]~28_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[6][22]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[6][21]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[18]~41_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[4][17]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_genInm|inm[15]~4_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[1][17]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[5][17]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[17]~44_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[17]~45_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[17]~46_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[16]~47_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[4][15]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[4][14]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[6][14]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[2][14]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[14]~58_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[14]~59_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[14]~60_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[6][13]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[1][13]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[5][13]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[13]~56_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[13]~57_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[13]~58_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[6][12]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[5][12]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[6][11]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[5][11]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[6][10]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[4][9]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[6][9]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[2][9]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[9]~73_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[9]~74_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[9]~75_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[9]~68_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[6][8]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[1][8]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[5][8]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[8]~71_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[8]~72_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[8]~73_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[7]~74_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[1][6]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[5][6]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[6]~77_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[6]~78_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[6]~79_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[5][5]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[5][3]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[2]~90_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[1]~91_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[1]~92_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[1]~93_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[0]~96_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux29~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|sal_and~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|sal_and~4_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|sal_and~6_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|sal_and~12_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|sal_and~19_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|sal_and~20_combout\ : std_logic;
SIGNAL \i_RISCV|i_Control|WideOr5~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|pc_in[30]~7_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux2~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux4~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux7~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|pc_in[23]~14_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|pc_in[9]~28_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|pc_in[6]~31_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[4]~95_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[5][3]~feeder_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[5][6]~feeder_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[6][31]~feeder_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[6][30]~feeder_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[6][22]~feeder_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[5][17]~feeder_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[6][14]~feeder_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[5][12]~feeder_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[6][12]~feeder_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[6][9]~feeder_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \i_RISCV|i_Control|Selector2~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Control|Selector2~1_combout\ : std_logic;
SIGNAL \reset_n~combout\ : std_logic;
SIGNAL \i_RISCV|i_Control|estado_act.Decod~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ROM|memory~8_combout\ : std_logic;
SIGNAL \i_RISCV|i_Control|estado_act.Reset~feeder_combout\ : std_logic;
SIGNAL \i_RISCV|i_Control|estado_act.Reset~regout\ : std_logic;
SIGNAL \i_RISCV|i_Control|Selector14~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Control|estado_act.Jalr~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|en_pc~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Control|Selector3~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Control|estado_act.lui3~regout\ : std_logic;
SIGNAL \i_RISCV|i_Control|Selector7~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Control|estado_act.SalCond~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ROM|memory~4_combout\ : std_logic;
SIGNAL \i_RISCV|i_Control|Selector18~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Control|Selector4~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Control|estado_act.lwsw3~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[14]~83_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_genInm|inm~10_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[26]~5_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[2]~87_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[1]~93_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ROM|memory~2_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux23~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|Equal0~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|Equal0~5_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[5][0]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|Equal0~4_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[1][0]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[14]~1_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[0]~97_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[0]~98_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~1\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~2_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ROM|memory~1_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ROM|memory~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[26]~4_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[0]~94_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~1\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~2_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|Mux30~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|pc_in[1]~32_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux30~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux30~1_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux30~2_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[1][1]~feeder_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[1][1]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[5][1]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[1]~94_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[1]~95_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ROM|memory~7_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[3]~87_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[6][3]~feeder_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|Equal0~1_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[6][3]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|Mux60~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Control|Selector9~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Control|estado_act.sw4~regout\ : std_logic;
SIGNAL \p_PSP~0_combout\ : std_logic;
SIGNAL \mid_PEP[3]~feeder_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux28~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux28~1_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux28~2_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[1][3]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[3]~88_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[3]~89_combout\ : std_logic;
SIGNAL \dout_PSP[2]~feeder_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux24~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux29~1_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux29~2_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[6][2]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|Mux61~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[2]~89_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[2]~96_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[2]~90_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~3\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~5\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~6_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|Mux28~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|pc_in[3]~5_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[3]~86_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[3]~88_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|Equal2~3_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux20~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|Equal0~2_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[4][11]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[26]~6_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|Equal0~3_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[2][11]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Control|WideOr12~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ROM|memory~5_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_genInm|inm[11]~6_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[11]~67_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[11]~68_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[11]~69_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[4][10]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[2][10]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[10]~70_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[10]~71_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[10]~72_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[7]~81_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|Mux57~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[5]~80_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[1][5]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[5]~81_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[5]~82_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~7\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~9\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~11\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~12_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[6][4]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|Mux59~0_combout\ : std_logic;
SIGNAL \mid_PEP[4]~feeder_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux27~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux27~1_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux27~2_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[5][4]~feeder_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[5][4]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[1][4]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[4]~84_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[4]~85_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[4]~86_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[1][2]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[5][2]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[2]~91_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[2]~92_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~3\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~5\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~7\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~9\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~11\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~12_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|Mux25~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux25~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux25~1_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux25~2_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[6][6]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_genInm|inm~7_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_genInm|inm~9_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[5]~79_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[6]~83_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~13\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~14_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[7]~80_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[7]~82_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~13\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~14_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|Mux24~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|pc_in[7]~30_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[6][7]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|Mux56~0_combout\ : std_logic;
SIGNAL \mid_PEP[7]~feeder_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux24~2_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux24~3_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux24~4_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[5][7]~feeder_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[5][7]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[1][7]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[7]~75_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[7]~76_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~15\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~16_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~15\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~16_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|Mux23~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|pc_in[8]~29_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux23~1_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[4][8]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_genInm|inm[8]~8_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[2][8]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[8]~76_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[8]~77_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[8]~78_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~17\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~18_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~17\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~18_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|Mux22~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux22~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[5][9]~feeder_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[5][9]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[1][9]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[9]~69_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[9]~70_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~19\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~20_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~19\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~20_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|Mux21~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|pc_in[10]~27_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux21~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[5][10]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[1][10]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[10]~65_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[10]~66_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[10]~67_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~21\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~22_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~21\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~22_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|Mux20~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|pc_in[11]~26_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[11]~62_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[1][11]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[11]~63_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[11]~64_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|sal_and~1_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|sal_and~2_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|sal_and~3_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ROM|memory~9_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux18~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~23\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~24_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~23\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~24_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|Mux19~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|pc_in[12]~25_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[12]~59_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux19~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux19~1_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[1][12]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[12]~60_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[12]~61_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~25\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~26_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~25\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~26_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|Mux18~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|pc_in[13]~24_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux18~1_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[4][13]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[2][13]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ROM|memory~6_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_genInm|inm[13]~5_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[13]~61_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[13]~62_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[13]~63_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[4][12]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[2][12]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_genInm|inm[19]~2_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[12]~64_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[12]~65_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[12]~66_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|sal_and~5_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux16~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux16~1_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[6][15]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[2][15]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[15]~55_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[15]~56_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[15]~57_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~27\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~28_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~27\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~28_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|Mux17~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|pc_in[14]~23_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux17~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux17~1_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[5][14]~feeder_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[5][14]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[1][14]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[14]~53_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[14]~54_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[14]~55_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~29\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~30_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~29\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~30_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|Mux16~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|pc_in[15]~22_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[5][15]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[1][15]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[15]~50_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[15]~51_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[15]~52_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~31\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~32_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~31\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~32_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|Mux15~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|pc_in[16]~21_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux15~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux15~1_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[5][16]~feeder_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[5][16]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[1][16]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[16]~48_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[16]~49_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[6][16]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[4][16]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[2][16]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[16]~52_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[16]~53_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[16]~54_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~33\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~34_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|Mux14~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux14~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|pc_in[17]~20_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux14~1_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[6][17]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[2][17]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[17]~49_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[17]~50_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[17]~51_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|sal_and~7_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux12~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux12~1_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[6][19]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[4][19]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[2][19]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[19]~43_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[19]~44_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[19]~45_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~33\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~35\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~36_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[5][18]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[1][18]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[18]~42_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[18]~43_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~35\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~36_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|Mux13~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|pc_in[18]~19_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux13~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux13~1_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[6][18]~feeder_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[6][18]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[4][18]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[2][18]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[18]~46_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[18]~47_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[18]~48_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~37\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~38_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|Mux12~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|pc_in[19]~18_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[5][19]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[1][19]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[19]~38_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[19]~39_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[19]~40_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|sal_and~8_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|sal_and~9_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_genInm|inm[21]~3_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux10~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux11~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux11~1_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[6][20]~feeder_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[6][20]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[4][20]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[2][20]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[20]~40_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[20]~41_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[20]~42_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~39\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~40_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~37\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~39\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~40_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|Mux11~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|pc_in[20]~17_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[20]~35_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[1][20]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[5][20]~feeder_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[5][20]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[20]~36_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[20]~37_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~41\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~42_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[5][21]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[1][21]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[21]~32_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[21]~33_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[21]~34_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~41\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~42_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|Mux10~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|pc_in[21]~16_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux10~1_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[2][21]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[21]~37_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[4][21]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[21]~38_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[21]~39_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~43\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~44_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux9~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux9~1_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[2][22]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[22]~34_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[4][22]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[22]~35_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[22]~36_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~43\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~44_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|Mux9~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|pc_in[22]~15_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[5][22]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[1][22]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[22]~29_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[22]~30_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[22]~31_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~45\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~46_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~45\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~46_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|Mux8~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux8~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux8~1_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[6][23]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[4][23]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[2][23]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[23]~31_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[23]~32_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[23]~33_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|sal_and~11_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|sal_and~10_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux5~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux5~1_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[4][26]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[2][26]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_genInm|inm[25]~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[26]~22_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[26]~23_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[26]~24_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux6~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux6~1_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[6][25]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[4][25]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[2][25]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[25]~25_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[25]~26_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[25]~27_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~47\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~48_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux7~1_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[4][24]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[2][24]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[24]~28_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[24]~29_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[24]~30_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~47\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~48_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|Mux7~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|pc_in[24]~13_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[24]~23_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[1][24]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[24]~24_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[24]~25_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~49\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~50_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~49\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~50_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|Mux6~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|pc_in[25]~12_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[25]~20_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[1][25]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[25]~21_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[25]~22_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~51\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~52_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~51\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~52_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|Mux5~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|pc_in[26]~11_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[1][26]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[26]~17_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[26]~18_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[26]~19_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~53\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~54_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[1][27]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[5][27]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[27]~15_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[27]~16_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~53\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~54_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|Mux4~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|pc_in[27]~10_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux4~1_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[4][27]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[2][27]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[27]~19_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[27]~20_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[27]~21_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|sal_and~13_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|sal_and~14_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux3~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux3~1_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[6][28]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[2][28]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[28]~16_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[28]~17_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[28]~18_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~55\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~56_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|Mux3~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|pc_in[28]~9_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[28]~11_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[1][28]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[28]~12_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[28]~13_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux2~1_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[4][29]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[2][29]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[29]~13_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[29]~14_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[29]~15_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~57\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~58_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|Mux2~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|pc_in[29]~8_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[5][29]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[1][29]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[29]~8_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[29]~9_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[29]~10_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|sal_and~15_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|sal_and~16_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|sal_and~17_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|sal_and~18_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|en_pc~combout\ : std_logic;
SIGNAL \i_RISCV|i_Control|Selector5~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Control|Selector5~1_combout\ : std_logic;
SIGNAL \i_RISCV|i_Control|estado_act.auipc3~regout\ : std_logic;
SIGNAL \i_RISCV|i_Control|WideOr9~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Control|WideOr1~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Control|estado_act.Fetch~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[4]~85_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~8_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~8_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|Mux27~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|pc_in[4]~2_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ROM|memory~10_combout\ : std_logic;
SIGNAL \i_RISCV|i_Control|Selector12~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Control|estado_act.Inm3~regout\ : std_logic;
SIGNAL \i_RISCV|i_Control|Selector16~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|pc_in[31]~6_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[31]~2_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux0~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux0~1_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[5][31]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[31]~3_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|a[31]~4_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~59\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~60_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~55\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~57\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~59\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~60_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|Mux1~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux1~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux1~1_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[4][30]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[2][30]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[30]~10_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[30]~11_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[30]~12_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~61\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~62_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[4][31]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[2][31]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[31]~7_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[31]~8_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[31]~9_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~61\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~62_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|Mux0~1_combout\ : std_logic;
SIGNAL \mid_PEP[5]~feeder_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux26~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux26~1_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux26~2_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[6][5]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|b[5]~84_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~10_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~10_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|Mux26~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|pc_in[5]~4_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ROM|memory~11_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|ir_out_m[4]~feeder_combout\ : std_logic;
SIGNAL \i_RISCV|i_Control|Selector6~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Control|Selector6~1_combout\ : std_logic;
SIGNAL \i_RISCV|i_Control|estado_act.Arit3~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|Mux0~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~4_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~4_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|Mux29~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|pc_in[2]~3_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ROM|memory~3_combout\ : std_logic;
SIGNAL \i_RISCV|i_Control|Equal1~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Control|Selector8~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Control|estado_act.lw4~regout\ : std_logic;
SIGNAL \i_RISCV|i_Control|estado_act.lw5~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux24~1_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add1~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|Mux31~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|b_ext[32]~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|a_ext[32]~2_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~63\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|i1_sr|Add0~64_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_ALU|Mux31~1_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|pc_in[0]~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|pc_in[0]~1_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux31~1_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|Mux31~2_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[6][0]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|Mux63~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|reg[6][1]~regout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|Mux62~0_combout\ : std_logic;
SIGNAL \i_RISCV|i_Path|i_BancoReg|Mux58~0_combout\ : std_logic;
SIGNAL \in_pins~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL dout_PSP : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_RISCV|i_Path|pc_ir\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \i_RISCV|i_Path|ir_out_m\ : std_logic_vector(31 DOWNTO 0);
SIGNAL dout_PEP : std_logic_vector(7 DOWNTO 0);
SIGNAL mid_PEP : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_RISCV|i_Path|pc_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \i_RISCV|i_Path|alur_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \i_RISCV|i_Path|i_ROM|data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_reset_n~combout\ : std_logic;

BEGIN

ww_reset_n <= reset_n;
ww_clk <= clk;
out_pins <= ww_out_pins;
ww_in_pins <= in_pins;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_reset_n~combout\ <= NOT \reset_n~combout\;

-- Location: LCCOMB_X23_Y14_N16
\i_RISCV|i_Path|i_ALU|i1_sr|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~0_combout\ = (\i_RISCV|i_Path|b[0]~94_combout\ & (\i_RISCV|i_Path|a[0]~98_combout\ $ (VCC))) # (!\i_RISCV|i_Path|b[0]~94_combout\ & ((\i_RISCV|i_Path|a[0]~98_combout\) # (GND)))
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~1\ = CARRY((\i_RISCV|i_Path|a[0]~98_combout\) # (!\i_RISCV|i_Path|b[0]~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[0]~94_combout\,
	datab => \i_RISCV|i_Path|a[0]~98_combout\,
	datad => VCC,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~0_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~1\);

-- Location: LCCOMB_X23_Y13_N18
\i_RISCV|i_Path|i_ALU|i1_sr|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~34_combout\ = (\i_RISCV|i_Path|a[17]~46_combout\ & ((\i_RISCV|i_Path|b[17]~51_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~33\)) # (!\i_RISCV|i_Path|b[17]~51_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~33\ & VCC)))) # 
-- (!\i_RISCV|i_Path|a[17]~46_combout\ & ((\i_RISCV|i_Path|b[17]~51_combout\ & ((\i_RISCV|i_Path|i_ALU|i1_sr|Add0~33\) # (GND))) # (!\i_RISCV|i_Path|b[17]~51_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~33\))))
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~35\ = CARRY((\i_RISCV|i_Path|a[17]~46_combout\ & (\i_RISCV|i_Path|b[17]~51_combout\ & !\i_RISCV|i_Path|i_ALU|i1_sr|Add0~33\)) # (!\i_RISCV|i_Path|a[17]~46_combout\ & ((\i_RISCV|i_Path|b[17]~51_combout\) # 
-- (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[17]~46_combout\,
	datab => \i_RISCV|i_Path|b[17]~51_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~33\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~34_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~35\);

-- Location: LCCOMB_X23_Y12_N8
\i_RISCV|i_Path|i_ALU|i1_sr|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~56_combout\ = ((\i_RISCV|i_Path|b[28]~18_combout\ $ (\i_RISCV|i_Path|a[28]~13_combout\ $ (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~55\)))) # (GND)
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~57\ = CARRY((\i_RISCV|i_Path|b[28]~18_combout\ & (\i_RISCV|i_Path|a[28]~13_combout\ & !\i_RISCV|i_Path|i_ALU|i1_sr|Add0~55\)) # (!\i_RISCV|i_Path|b[28]~18_combout\ & ((\i_RISCV|i_Path|a[28]~13_combout\) # 
-- (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~55\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[28]~18_combout\,
	datab => \i_RISCV|i_Path|a[28]~13_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~55\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~56_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~57\);

-- Location: LCCOMB_X23_Y12_N10
\i_RISCV|i_Path|i_ALU|i1_sr|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~58_combout\ = (\i_RISCV|i_Path|a[29]~10_combout\ & ((\i_RISCV|i_Path|b[29]~15_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~57\)) # (!\i_RISCV|i_Path|b[29]~15_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~57\ & VCC)))) # 
-- (!\i_RISCV|i_Path|a[29]~10_combout\ & ((\i_RISCV|i_Path|b[29]~15_combout\ & ((\i_RISCV|i_Path|i_ALU|i1_sr|Add0~57\) # (GND))) # (!\i_RISCV|i_Path|b[29]~15_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~57\))))
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~59\ = CARRY((\i_RISCV|i_Path|a[29]~10_combout\ & (\i_RISCV|i_Path|b[29]~15_combout\ & !\i_RISCV|i_Path|i_ALU|i1_sr|Add0~57\)) # (!\i_RISCV|i_Path|a[29]~10_combout\ & ((\i_RISCV|i_Path|b[29]~15_combout\) # 
-- (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~57\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[29]~10_combout\,
	datab => \i_RISCV|i_Path|b[29]~15_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~57\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~58_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~59\);

-- Location: LCCOMB_X25_Y14_N6
\i_RISCV|i_Path|i_ALU|i1_sr|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~6_combout\ = (\i_RISCV|i_Path|a[3]~89_combout\ & ((\i_RISCV|i_Path|b[3]~88_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add1~5\ & VCC)) # (!\i_RISCV|i_Path|b[3]~88_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~5\)))) # 
-- (!\i_RISCV|i_Path|a[3]~89_combout\ & ((\i_RISCV|i_Path|b[3]~88_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~5\)) # (!\i_RISCV|i_Path|b[3]~88_combout\ & ((\i_RISCV|i_Path|i_ALU|i1_sr|Add1~5\) # (GND)))))
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~7\ = CARRY((\i_RISCV|i_Path|a[3]~89_combout\ & (!\i_RISCV|i_Path|b[3]~88_combout\ & !\i_RISCV|i_Path|i_ALU|i1_sr|Add1~5\)) # (!\i_RISCV|i_Path|a[3]~89_combout\ & ((!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~5\) # 
-- (!\i_RISCV|i_Path|b[3]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[3]~89_combout\,
	datab => \i_RISCV|i_Path|b[3]~88_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~5\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~6_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~7\);

-- Location: LCCOMB_X25_Y13_N6
\i_RISCV|i_Path|i_ALU|i1_sr|Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~38_combout\ = (\i_RISCV|i_Path|a[19]~40_combout\ & ((\i_RISCV|i_Path|b[19]~45_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add1~37\ & VCC)) # (!\i_RISCV|i_Path|b[19]~45_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~37\)))) # 
-- (!\i_RISCV|i_Path|a[19]~40_combout\ & ((\i_RISCV|i_Path|b[19]~45_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~37\)) # (!\i_RISCV|i_Path|b[19]~45_combout\ & ((\i_RISCV|i_Path|i_ALU|i1_sr|Add1~37\) # (GND)))))
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~39\ = CARRY((\i_RISCV|i_Path|a[19]~40_combout\ & (!\i_RISCV|i_Path|b[19]~45_combout\ & !\i_RISCV|i_Path|i_ALU|i1_sr|Add1~37\)) # (!\i_RISCV|i_Path|a[19]~40_combout\ & ((!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~37\) # 
-- (!\i_RISCV|i_Path|b[19]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[19]~40_combout\,
	datab => \i_RISCV|i_Path|b[19]~45_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~37\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~38_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~39\);

-- Location: LCFF_X24_Y14_N5
\i_RISCV|i_Path|alur_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ALU|Mux29~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|alur_out\(2));

-- Location: LCFF_X26_Y12_N11
\dout_PEP[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => mid_PEP(0),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dout_PEP(0));

-- Location: LCCOMB_X26_Y12_N10
\i_RISCV|i_Path|Mux31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux31~0_combout\ = (\i_RISCV|i_Path|Mux24~0_combout\ & (((\i_RISCV|i_Path|Mux24~1_combout\)))) # (!\i_RISCV|i_Path|Mux24~0_combout\ & ((\i_RISCV|i_Path|Mux24~1_combout\ & ((dout_PEP(0)))) # (!\i_RISCV|i_Path|Mux24~1_combout\ & 
-- (\i_RISCV|i_Path|alur_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|alur_out\(0),
	datab => \i_RISCV|i_Path|Mux24~0_combout\,
	datac => dout_PEP(0),
	datad => \i_RISCV|i_Path|Mux24~1_combout\,
	combout => \i_RISCV|i_Path|Mux31~0_combout\);

-- Location: LCFF_X23_Y16_N3
\i_RISCV|i_Control|estado_act.Arit4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Control|WideOr5~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Control|estado_act.Arit4~regout\);

-- Location: LCFF_X27_Y15_N5
\i_RISCV|i_Path|i_BancoReg|reg[6][31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_BancoReg|reg[6][31]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[6][31]~regout\);

-- Location: LCFF_X22_Y12_N21
\i_RISCV|i_Path|i_BancoReg|reg[1][31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux0~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[1][31]~regout\);

-- Location: LCFF_X25_Y12_N21
\i_RISCV|i_Path|i_BancoReg|reg[6][30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_BancoReg|reg[6][30]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[6][30]~regout\);

-- Location: LCFF_X24_Y12_N7
\i_RISCV|i_Path|pc_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|pc_in[30]~7_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_out\(30));

-- Location: LCFF_X22_Y12_N3
\i_RISCV|i_Path|i_BancoReg|reg[1][30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux1~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[1][30]~regout\);

-- Location: LCFF_X22_Y12_N5
\i_RISCV|i_Path|i_BancoReg|reg[5][30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux1~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[5][30]~regout\);

-- Location: LCFF_X22_Y16_N27
\i_RISCV|i_Path|pc_ir[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|pc_out\(30),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_ir\(30));

-- Location: LCCOMB_X22_Y16_N26
\i_RISCV|i_Path|a[30]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[30]~5_combout\ = (\i_RISCV|i_Control|estado_act.Decod~regout\ & (((\i_RISCV|i_Path|pc_ir\(30))))) # (!\i_RISCV|i_Control|estado_act.Decod~regout\ & ((\i_RISCV|i_Control|estado_act.auipc3~regout\ & ((\i_RISCV|i_Path|pc_ir\(30)))) # 
-- (!\i_RISCV|i_Control|estado_act.auipc3~regout\ & (\i_RISCV|i_Path|ir_out_m\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|ir_out_m\(17),
	datab => \i_RISCV|i_Control|estado_act.Decod~regout\,
	datac => \i_RISCV|i_Path|pc_ir\(30),
	datad => \i_RISCV|i_Control|estado_act.auipc3~regout\,
	combout => \i_RISCV|i_Path|a[30]~5_combout\);

-- Location: LCCOMB_X22_Y12_N4
\i_RISCV|i_Path|a[30]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[30]~6_combout\ = (\i_RISCV|i_Path|a[14]~1_combout\ & ((\i_RISCV|i_Path|a[30]~5_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[5][30]~regout\))) # (!\i_RISCV|i_Path|a[30]~5_combout\ & (\i_RISCV|i_Path|i_BancoReg|reg[1][30]~regout\)))) # 
-- (!\i_RISCV|i_Path|a[14]~1_combout\ & (((\i_RISCV|i_Path|a[30]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[14]~1_combout\,
	datab => \i_RISCV|i_Path|i_BancoReg|reg[1][30]~regout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[5][30]~regout\,
	datad => \i_RISCV|i_Path|a[30]~5_combout\,
	combout => \i_RISCV|i_Path|a[30]~6_combout\);

-- Location: LCCOMB_X23_Y12_N24
\i_RISCV|i_Path|a[30]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[30]~7_combout\ = (\i_RISCV|i_Control|estado_act.Fetch~regout\ & ((\i_RISCV|i_Path|pc_out\(30)))) # (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & (\i_RISCV|i_Path|a[30]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datac => \i_RISCV|i_Path|a[30]~6_combout\,
	datad => \i_RISCV|i_Path|pc_out\(30),
	combout => \i_RISCV|i_Path|a[30]~7_combout\);

-- Location: LCFF_X24_Y16_N29
\i_RISCV|i_Path|i_BancoReg|reg[6][29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux2~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[6][29]~regout\);

-- Location: LCFF_X22_Y13_N9
\i_RISCV|i_Path|i_BancoReg|reg[4][28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux3~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[4][28]~regout\);

-- Location: LCFF_X21_Y12_N13
\i_RISCV|i_Path|i_BancoReg|reg[5][28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux3~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[5][28]~regout\);

-- Location: LCFF_X25_Y12_N15
\i_RISCV|i_Path|i_BancoReg|reg[6][27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux4~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[6][27]~regout\);

-- Location: LCFF_X21_Y14_N25
\i_RISCV|i_Path|pc_ir[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|pc_out\(27),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_ir\(27));

-- Location: LCCOMB_X21_Y14_N24
\i_RISCV|i_Path|a[27]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[27]~14_combout\ = (\i_RISCV|i_Control|estado_act.auipc3~regout\ & (((\i_RISCV|i_Path|pc_ir\(27))))) # (!\i_RISCV|i_Control|estado_act.auipc3~regout\ & ((\i_RISCV|i_Control|estado_act.Decod~regout\ & ((\i_RISCV|i_Path|pc_ir\(27)))) # 
-- (!\i_RISCV|i_Control|estado_act.Decod~regout\ & (\i_RISCV|i_Path|ir_out_m\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.auipc3~regout\,
	datab => \i_RISCV|i_Path|ir_out_m\(17),
	datac => \i_RISCV|i_Path|pc_ir\(27),
	datad => \i_RISCV|i_Control|estado_act.Decod~regout\,
	combout => \i_RISCV|i_Path|a[27]~14_combout\);

-- Location: LCFF_X24_Y16_N25
\i_RISCV|i_Path|i_BancoReg|reg[6][26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux5~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[6][26]~regout\);

-- Location: LCFF_X20_Y14_N7
\i_RISCV|i_Path|i_BancoReg|reg[5][26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux5~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[5][26]~regout\);

-- Location: LCFF_X21_Y12_N7
\i_RISCV|i_Path|i_BancoReg|reg[5][25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux6~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[5][25]~regout\);

-- Location: LCFF_X25_Y12_N27
\i_RISCV|i_Path|i_BancoReg|reg[6][24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux7~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[6][24]~regout\);

-- Location: LCCOMB_X23_Y15_N12
\i_RISCV|i_Path|i_genInm|inm[24]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_genInm|inm[24]~1_combout\ = (\i_RISCV|i_Control|WideOr12~0_combout\ & (((\i_RISCV|i_Path|ir_out_m\(31))))) # (!\i_RISCV|i_Control|WideOr12~0_combout\ & ((\i_RISCV|i_Control|Selector18~0_combout\ & ((\i_RISCV|i_Path|ir_out_m\(31)))) # 
-- (!\i_RISCV|i_Control|Selector18~0_combout\ & (\i_RISCV|i_Path|ir_out_m\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|ir_out_m\(24),
	datab => \i_RISCV|i_Control|WideOr12~0_combout\,
	datac => \i_RISCV|i_Path|ir_out_m\(31),
	datad => \i_RISCV|i_Control|Selector18~0_combout\,
	combout => \i_RISCV|i_Path|i_genInm|inm[24]~1_combout\);

-- Location: LCFF_X21_Y12_N17
\i_RISCV|i_Path|i_BancoReg|reg[5][24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux7~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[5][24]~regout\);

-- Location: LCFF_X26_Y13_N1
\i_RISCV|i_Path|pc_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|pc_in[23]~14_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_out\(23));

-- Location: LCFF_X20_Y14_N19
\i_RISCV|i_Path|i_BancoReg|reg[1][23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux8~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[1][23]~regout\);

-- Location: LCFF_X20_Y14_N1
\i_RISCV|i_Path|i_BancoReg|reg[5][23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux8~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[5][23]~regout\);

-- Location: LCFF_X21_Y14_N27
\i_RISCV|i_Path|pc_ir[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|pc_out\(23),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_ir\(23));

-- Location: LCCOMB_X21_Y14_N26
\i_RISCV|i_Path|a[23]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[23]~26_combout\ = (\i_RISCV|i_Control|estado_act.auipc3~regout\ & (((\i_RISCV|i_Path|pc_ir\(23))))) # (!\i_RISCV|i_Control|estado_act.auipc3~regout\ & ((\i_RISCV|i_Control|estado_act.Decod~regout\ & ((\i_RISCV|i_Path|pc_ir\(23)))) # 
-- (!\i_RISCV|i_Control|estado_act.Decod~regout\ & (\i_RISCV|i_Path|ir_out_m\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.auipc3~regout\,
	datab => \i_RISCV|i_Path|ir_out_m\(17),
	datac => \i_RISCV|i_Path|pc_ir\(23),
	datad => \i_RISCV|i_Control|estado_act.Decod~regout\,
	combout => \i_RISCV|i_Path|a[23]~26_combout\);

-- Location: LCCOMB_X20_Y14_N18
\i_RISCV|i_Path|a[23]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[23]~27_combout\ = (\i_RISCV|i_Path|a[23]~26_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[5][23]~regout\) # ((!\i_RISCV|i_Path|a[14]~1_combout\)))) # (!\i_RISCV|i_Path|a[23]~26_combout\ & (((\i_RISCV|i_Path|i_BancoReg|reg[1][23]~regout\ & 
-- \i_RISCV|i_Path|a[14]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[23]~26_combout\,
	datab => \i_RISCV|i_Path|i_BancoReg|reg[5][23]~regout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[1][23]~regout\,
	datad => \i_RISCV|i_Path|a[14]~1_combout\,
	combout => \i_RISCV|i_Path|a[23]~27_combout\);

-- Location: LCCOMB_X21_Y13_N6
\i_RISCV|i_Path|a[23]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[23]~28_combout\ = (\i_RISCV|i_Control|estado_act.Fetch~regout\ & (\i_RISCV|i_Path|pc_out\(23))) # (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & ((\i_RISCV|i_Path|a[23]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RISCV|i_Path|pc_out\(23),
	datac => \i_RISCV|i_Path|a[23]~27_combout\,
	datad => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	combout => \i_RISCV|i_Path|a[23]~28_combout\);

-- Location: LCFF_X20_Y13_N3
\i_RISCV|i_Path|i_BancoReg|reg[6][22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_BancoReg|reg[6][22]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[6][22]~regout\);

-- Location: LCFF_X23_Y13_N11
\i_RISCV|i_Path|i_BancoReg|reg[6][21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux10~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[6][21]~regout\);

-- Location: LCFF_X21_Y14_N1
\i_RISCV|i_Path|pc_ir[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|pc_out\(18),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_ir\(18));

-- Location: LCCOMB_X21_Y14_N0
\i_RISCV|i_Path|a[18]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[18]~41_combout\ = (\i_RISCV|i_Control|estado_act.auipc3~regout\ & (((\i_RISCV|i_Path|pc_ir\(18))))) # (!\i_RISCV|i_Control|estado_act.auipc3~regout\ & ((\i_RISCV|i_Control|estado_act.Decod~regout\ & ((\i_RISCV|i_Path|pc_ir\(18)))) # 
-- (!\i_RISCV|i_Control|estado_act.Decod~regout\ & (\i_RISCV|i_Path|ir_out_m\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.auipc3~regout\,
	datab => \i_RISCV|i_Path|ir_out_m\(17),
	datac => \i_RISCV|i_Path|pc_ir\(18),
	datad => \i_RISCV|i_Control|estado_act.Decod~regout\,
	combout => \i_RISCV|i_Path|a[18]~41_combout\);

-- Location: LCFF_X24_Y16_N31
\i_RISCV|i_Path|i_BancoReg|reg[4][17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux14~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[4][17]~regout\);

-- Location: LCCOMB_X22_Y15_N8
\i_RISCV|i_Path|i_genInm|inm[15]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_genInm|inm[15]~4_combout\ = (\i_RISCV|i_Control|WideOr12~0_combout\ & (\i_RISCV|i_Path|ir_out_m\(31))) # (!\i_RISCV|i_Control|WideOr12~0_combout\ & ((\i_RISCV|i_Control|Selector18~0_combout\ & (\i_RISCV|i_Path|ir_out_m\(31))) # 
-- (!\i_RISCV|i_Control|Selector18~0_combout\ & ((\i_RISCV|i_Path|ir_out_m\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|ir_out_m\(31),
	datab => \i_RISCV|i_Path|ir_out_m\(17),
	datac => \i_RISCV|i_Control|WideOr12~0_combout\,
	datad => \i_RISCV|i_Control|Selector18~0_combout\,
	combout => \i_RISCV|i_Path|i_genInm|inm[15]~4_combout\);

-- Location: LCFF_X21_Y16_N15
\i_RISCV|i_Path|i_BancoReg|reg[1][17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux14~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[1][17]~regout\);

-- Location: LCFF_X20_Y16_N29
\i_RISCV|i_Path|i_BancoReg|reg[5][17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_BancoReg|reg[5][17]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[5][17]~regout\);

-- Location: LCFF_X22_Y16_N5
\i_RISCV|i_Path|pc_ir[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|pc_out\(17),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_ir\(17));

-- Location: LCCOMB_X22_Y16_N4
\i_RISCV|i_Path|a[17]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[17]~44_combout\ = (\i_RISCV|i_Control|estado_act.Decod~regout\ & (((\i_RISCV|i_Path|pc_ir\(17))))) # (!\i_RISCV|i_Control|estado_act.Decod~regout\ & ((\i_RISCV|i_Control|estado_act.auipc3~regout\ & ((\i_RISCV|i_Path|pc_ir\(17)))) # 
-- (!\i_RISCV|i_Control|estado_act.auipc3~regout\ & (\i_RISCV|i_Path|ir_out_m\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|ir_out_m\(17),
	datab => \i_RISCV|i_Control|estado_act.Decod~regout\,
	datac => \i_RISCV|i_Path|pc_ir\(17),
	datad => \i_RISCV|i_Control|estado_act.auipc3~regout\,
	combout => \i_RISCV|i_Path|a[17]~44_combout\);

-- Location: LCCOMB_X21_Y16_N14
\i_RISCV|i_Path|a[17]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[17]~45_combout\ = (\i_RISCV|i_Path|a[17]~44_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[5][17]~regout\) # ((!\i_RISCV|i_Path|a[14]~1_combout\)))) # (!\i_RISCV|i_Path|a[17]~44_combout\ & (((\i_RISCV|i_Path|i_BancoReg|reg[1][17]~regout\ & 
-- \i_RISCV|i_Path|a[14]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[17]~44_combout\,
	datab => \i_RISCV|i_Path|i_BancoReg|reg[5][17]~regout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[1][17]~regout\,
	datad => \i_RISCV|i_Path|a[14]~1_combout\,
	combout => \i_RISCV|i_Path|a[17]~45_combout\);

-- Location: LCCOMB_X22_Y16_N22
\i_RISCV|i_Path|a[17]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[17]~46_combout\ = (\i_RISCV|i_Control|estado_act.Fetch~regout\ & (\i_RISCV|i_Path|pc_out\(17))) # (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & ((\i_RISCV|i_Path|a[17]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datac => \i_RISCV|i_Path|pc_out\(17),
	datad => \i_RISCV|i_Path|a[17]~45_combout\,
	combout => \i_RISCV|i_Path|a[17]~46_combout\);

-- Location: LCFF_X21_Y15_N27
\i_RISCV|i_Path|pc_ir[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|pc_out\(16),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_ir\(16));

-- Location: LCCOMB_X21_Y15_N26
\i_RISCV|i_Path|a[16]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[16]~47_combout\ = (\i_RISCV|i_Control|estado_act.Decod~regout\ & (((\i_RISCV|i_Path|pc_ir\(16))))) # (!\i_RISCV|i_Control|estado_act.Decod~regout\ & ((\i_RISCV|i_Control|estado_act.auipc3~regout\ & ((\i_RISCV|i_Path|pc_ir\(16)))) # 
-- (!\i_RISCV|i_Control|estado_act.auipc3~regout\ & (\i_RISCV|i_Path|ir_out_m\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Decod~regout\,
	datab => \i_RISCV|i_Path|ir_out_m\(17),
	datac => \i_RISCV|i_Path|pc_ir\(16),
	datad => \i_RISCV|i_Control|estado_act.auipc3~regout\,
	combout => \i_RISCV|i_Path|a[16]~47_combout\);

-- Location: LCFF_X24_Y16_N5
\i_RISCV|i_Path|i_BancoReg|reg[4][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux16~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[4][15]~regout\);

-- Location: LCFF_X26_Y15_N25
\i_RISCV|i_Path|i_BancoReg|reg[4][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux17~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[4][14]~regout\);

-- Location: LCFF_X27_Y15_N3
\i_RISCV|i_Path|i_BancoReg|reg[6][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_BancoReg|reg[6][14]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[6][14]~regout\);

-- Location: LCFF_X26_Y15_N11
\i_RISCV|i_Path|i_BancoReg|reg[2][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux17~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[2][14]~regout\);

-- Location: LCCOMB_X26_Y15_N10
\i_RISCV|i_Path|b[14]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[14]~58_combout\ = (\i_RISCV|i_Path|b[26]~5_combout\ & ((\i_RISCV|i_Path|b[26]~6_combout\ & ((\i_RISCV|i_Path|i_genInm|inm[19]~2_combout\))) # (!\i_RISCV|i_Path|b[26]~6_combout\ & (\i_RISCV|i_Path|i_BancoReg|reg[2][14]~regout\)))) # 
-- (!\i_RISCV|i_Path|b[26]~5_combout\ & (\i_RISCV|i_Path|b[26]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[26]~5_combout\,
	datab => \i_RISCV|i_Path|b[26]~6_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[2][14]~regout\,
	datad => \i_RISCV|i_Path|i_genInm|inm[19]~2_combout\,
	combout => \i_RISCV|i_Path|b[14]~58_combout\);

-- Location: LCCOMB_X26_Y15_N24
\i_RISCV|i_Path|b[14]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[14]~59_combout\ = (\i_RISCV|i_Path|b[26]~4_combout\ & ((\i_RISCV|i_Path|b[14]~58_combout\ & (\i_RISCV|i_Path|i_BancoReg|reg[6][14]~regout\)) # (!\i_RISCV|i_Path|b[14]~58_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[4][14]~regout\))))) # 
-- (!\i_RISCV|i_Path|b[26]~4_combout\ & (((\i_RISCV|i_Path|b[14]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_BancoReg|reg[6][14]~regout\,
	datab => \i_RISCV|i_Path|b[26]~4_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[4][14]~regout\,
	datad => \i_RISCV|i_Path|b[14]~58_combout\,
	combout => \i_RISCV|i_Path|b[14]~59_combout\);

-- Location: LCCOMB_X25_Y15_N16
\i_RISCV|i_Path|b[14]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[14]~60_combout\ = (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & \i_RISCV|i_Path|b[14]~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datad => \i_RISCV|i_Path|b[14]~59_combout\,
	combout => \i_RISCV|i_Path|b[14]~60_combout\);

-- Location: LCFF_X20_Y15_N13
\i_RISCV|i_Path|i_BancoReg|reg[6][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux18~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[6][13]~regout\);

-- Location: LCFF_X19_Y15_N17
\i_RISCV|i_Path|i_BancoReg|reg[1][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux18~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[1][13]~regout\);

-- Location: LCFF_X20_Y15_N31
\i_RISCV|i_Path|i_BancoReg|reg[5][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux18~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[5][13]~regout\);

-- Location: LCFF_X21_Y15_N25
\i_RISCV|i_Path|pc_ir[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|pc_out\(13),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_ir\(13));

-- Location: LCCOMB_X21_Y15_N24
\i_RISCV|i_Path|a[13]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[13]~56_combout\ = (\i_RISCV|i_Control|estado_act.Decod~regout\ & (((\i_RISCV|i_Path|pc_ir\(13))))) # (!\i_RISCV|i_Control|estado_act.Decod~regout\ & ((\i_RISCV|i_Control|estado_act.auipc3~regout\ & (\i_RISCV|i_Path|pc_ir\(13))) # 
-- (!\i_RISCV|i_Control|estado_act.auipc3~regout\ & ((\i_RISCV|i_Path|ir_out_m\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Decod~regout\,
	datab => \i_RISCV|i_Control|estado_act.auipc3~regout\,
	datac => \i_RISCV|i_Path|pc_ir\(13),
	datad => \i_RISCV|i_Path|ir_out_m\(17),
	combout => \i_RISCV|i_Path|a[13]~56_combout\);

-- Location: LCCOMB_X20_Y15_N30
\i_RISCV|i_Path|a[13]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[13]~57_combout\ = (\i_RISCV|i_Path|a[14]~1_combout\ & ((\i_RISCV|i_Path|a[13]~56_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[5][13]~regout\))) # (!\i_RISCV|i_Path|a[13]~56_combout\ & (\i_RISCV|i_Path|i_BancoReg|reg[1][13]~regout\)))) # 
-- (!\i_RISCV|i_Path|a[14]~1_combout\ & (((\i_RISCV|i_Path|a[13]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_BancoReg|reg[1][13]~regout\,
	datab => \i_RISCV|i_Path|a[14]~1_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[5][13]~regout\,
	datad => \i_RISCV|i_Path|a[13]~56_combout\,
	combout => \i_RISCV|i_Path|a[13]~57_combout\);

-- Location: LCCOMB_X20_Y15_N16
\i_RISCV|i_Path|a[13]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[13]~58_combout\ = (\i_RISCV|i_Control|estado_act.Fetch~regout\ & ((\i_RISCV|i_Path|pc_out\(13)))) # (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & (\i_RISCV|i_Path|a[13]~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datab => \i_RISCV|i_Path|a[13]~57_combout\,
	datad => \i_RISCV|i_Path|pc_out\(13),
	combout => \i_RISCV|i_Path|a[13]~58_combout\);

-- Location: LCFF_X27_Y15_N17
\i_RISCV|i_Path|i_BancoReg|reg[6][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_BancoReg|reg[6][12]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[6][12]~regout\);

-- Location: LCFF_X22_Y12_N17
\i_RISCV|i_Path|i_BancoReg|reg[5][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_BancoReg|reg[5][12]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[5][12]~regout\);

-- Location: LCFF_X27_Y15_N7
\i_RISCV|i_Path|i_BancoReg|reg[6][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux20~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[6][11]~regout\);

-- Location: LCFF_X20_Y16_N15
\i_RISCV|i_Path|i_BancoReg|reg[5][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux20~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[5][11]~regout\);

-- Location: LCFF_X24_Y16_N7
\i_RISCV|i_Path|i_BancoReg|reg[6][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux21~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[6][10]~regout\);

-- Location: LCFF_X24_Y15_N1
\i_RISCV|i_Path|i_BancoReg|reg[4][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux22~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[4][9]~regout\);

-- Location: LCFF_X20_Y15_N11
\i_RISCV|i_Path|i_BancoReg|reg[6][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_BancoReg|reg[6][9]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[6][9]~regout\);

-- Location: LCFF_X24_Y15_N3
\i_RISCV|i_Path|i_BancoReg|reg[2][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux22~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[2][9]~regout\);

-- Location: LCCOMB_X24_Y15_N2
\i_RISCV|i_Path|b[9]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[9]~73_combout\ = (\i_RISCV|i_Path|b[26]~5_combout\ & ((\i_RISCV|i_Path|b[26]~6_combout\ & (\i_RISCV|i_Path|i_genInm|inm[8]~8_combout\)) # (!\i_RISCV|i_Path|b[26]~6_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[2][9]~regout\))))) # 
-- (!\i_RISCV|i_Path|b[26]~5_combout\ & (((\i_RISCV|i_Path|b[26]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[26]~5_combout\,
	datab => \i_RISCV|i_Path|i_genInm|inm[8]~8_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[2][9]~regout\,
	datad => \i_RISCV|i_Path|b[26]~6_combout\,
	combout => \i_RISCV|i_Path|b[9]~73_combout\);

-- Location: LCCOMB_X24_Y15_N0
\i_RISCV|i_Path|b[9]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[9]~74_combout\ = (\i_RISCV|i_Path|b[26]~4_combout\ & ((\i_RISCV|i_Path|b[9]~73_combout\ & (\i_RISCV|i_Path|i_BancoReg|reg[6][9]~regout\)) # (!\i_RISCV|i_Path|b[9]~73_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[4][9]~regout\))))) # 
-- (!\i_RISCV|i_Path|b[26]~4_combout\ & (((\i_RISCV|i_Path|b[9]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_BancoReg|reg[6][9]~regout\,
	datab => \i_RISCV|i_Path|b[26]~4_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[4][9]~regout\,
	datad => \i_RISCV|i_Path|b[9]~73_combout\,
	combout => \i_RISCV|i_Path|b[9]~74_combout\);

-- Location: LCCOMB_X24_Y15_N28
\i_RISCV|i_Path|b[9]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[9]~75_combout\ = (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & \i_RISCV|i_Path|b[9]~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datad => \i_RISCV|i_Path|b[9]~74_combout\,
	combout => \i_RISCV|i_Path|b[9]~75_combout\);

-- Location: LCFF_X24_Y11_N17
\i_RISCV|i_Path|pc_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|pc_in[9]~28_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_out\(9));

-- Location: LCFF_X22_Y16_N25
\i_RISCV|i_Path|pc_ir[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|pc_out\(9),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_ir\(9));

-- Location: LCCOMB_X22_Y16_N24
\i_RISCV|i_Path|a[9]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[9]~68_combout\ = (\i_RISCV|i_Control|estado_act.auipc3~regout\ & (((\i_RISCV|i_Path|pc_ir\(9))))) # (!\i_RISCV|i_Control|estado_act.auipc3~regout\ & ((\i_RISCV|i_Control|estado_act.Decod~regout\ & (\i_RISCV|i_Path|pc_ir\(9))) # 
-- (!\i_RISCV|i_Control|estado_act.Decod~regout\ & ((\i_RISCV|i_Path|ir_out_m\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.auipc3~regout\,
	datab => \i_RISCV|i_Control|estado_act.Decod~regout\,
	datac => \i_RISCV|i_Path|pc_ir\(9),
	datad => \i_RISCV|i_Path|ir_out_m\(17),
	combout => \i_RISCV|i_Path|a[9]~68_combout\);

-- Location: LCFF_X20_Y15_N21
\i_RISCV|i_Path|i_BancoReg|reg[6][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux23~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[6][8]~regout\);

-- Location: LCFF_X20_Y14_N23
\i_RISCV|i_Path|i_BancoReg|reg[1][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux23~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[1][8]~regout\);

-- Location: LCFF_X20_Y14_N21
\i_RISCV|i_Path|i_BancoReg|reg[5][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux23~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[5][8]~regout\);

-- Location: LCFF_X21_Y14_N19
\i_RISCV|i_Path|pc_ir[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|pc_out\(8),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_ir\(8));

-- Location: LCCOMB_X21_Y14_N18
\i_RISCV|i_Path|a[8]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[8]~71_combout\ = (\i_RISCV|i_Control|estado_act.auipc3~regout\ & (((\i_RISCV|i_Path|pc_ir\(8))))) # (!\i_RISCV|i_Control|estado_act.auipc3~regout\ & ((\i_RISCV|i_Control|estado_act.Decod~regout\ & ((\i_RISCV|i_Path|pc_ir\(8)))) # 
-- (!\i_RISCV|i_Control|estado_act.Decod~regout\ & (\i_RISCV|i_Path|ir_out_m\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.auipc3~regout\,
	datab => \i_RISCV|i_Path|ir_out_m\(17),
	datac => \i_RISCV|i_Path|pc_ir\(8),
	datad => \i_RISCV|i_Control|estado_act.Decod~regout\,
	combout => \i_RISCV|i_Path|a[8]~71_combout\);

-- Location: LCCOMB_X20_Y14_N22
\i_RISCV|i_Path|a[8]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[8]~72_combout\ = (\i_RISCV|i_Path|a[14]~1_combout\ & ((\i_RISCV|i_Path|a[8]~71_combout\ & (\i_RISCV|i_Path|i_BancoReg|reg[5][8]~regout\)) # (!\i_RISCV|i_Path|a[8]~71_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[1][8]~regout\))))) # 
-- (!\i_RISCV|i_Path|a[14]~1_combout\ & (((\i_RISCV|i_Path|a[8]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_BancoReg|reg[5][8]~regout\,
	datab => \i_RISCV|i_Path|a[14]~1_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[1][8]~regout\,
	datad => \i_RISCV|i_Path|a[8]~71_combout\,
	combout => \i_RISCV|i_Path|a[8]~72_combout\);

-- Location: LCCOMB_X20_Y14_N14
\i_RISCV|i_Path|a[8]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[8]~73_combout\ = (\i_RISCV|i_Control|estado_act.Fetch~regout\ & (\i_RISCV|i_Path|pc_out\(8))) # (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & ((\i_RISCV|i_Path|a[8]~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datac => \i_RISCV|i_Path|pc_out\(8),
	datad => \i_RISCV|i_Path|a[8]~72_combout\,
	combout => \i_RISCV|i_Path|a[8]~73_combout\);

-- Location: LCFF_X21_Y14_N5
\i_RISCV|i_Path|pc_ir[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|pc_out\(7),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_ir\(7));

-- Location: LCCOMB_X21_Y14_N4
\i_RISCV|i_Path|a[7]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[7]~74_combout\ = (\i_RISCV|i_Control|estado_act.auipc3~regout\ & (((\i_RISCV|i_Path|pc_ir\(7))))) # (!\i_RISCV|i_Control|estado_act.auipc3~regout\ & ((\i_RISCV|i_Control|estado_act.Decod~regout\ & ((\i_RISCV|i_Path|pc_ir\(7)))) # 
-- (!\i_RISCV|i_Control|estado_act.Decod~regout\ & (\i_RISCV|i_Path|ir_out_m\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.auipc3~regout\,
	datab => \i_RISCV|i_Path|ir_out_m\(17),
	datac => \i_RISCV|i_Path|pc_ir\(7),
	datad => \i_RISCV|i_Control|estado_act.Decod~regout\,
	combout => \i_RISCV|i_Path|a[7]~74_combout\);

-- Location: LCFF_X24_Y11_N21
\i_RISCV|i_Path|pc_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|pc_in[6]~31_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_out\(6));

-- Location: LCFF_X21_Y15_N17
\i_RISCV|i_Path|i_BancoReg|reg[1][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux25~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[1][6]~regout\);

-- Location: LCFF_X20_Y15_N15
\i_RISCV|i_Path|i_BancoReg|reg[5][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_BancoReg|reg[5][6]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[5][6]~regout\);

-- Location: LCFF_X21_Y15_N23
\i_RISCV|i_Path|pc_ir[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|pc_out\(6),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_ir\(6));

-- Location: LCCOMB_X21_Y15_N22
\i_RISCV|i_Path|a[6]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[6]~77_combout\ = (\i_RISCV|i_Control|estado_act.Decod~regout\ & (((\i_RISCV|i_Path|pc_ir\(6))))) # (!\i_RISCV|i_Control|estado_act.Decod~regout\ & ((\i_RISCV|i_Control|estado_act.auipc3~regout\ & ((\i_RISCV|i_Path|pc_ir\(6)))) # 
-- (!\i_RISCV|i_Control|estado_act.auipc3~regout\ & (\i_RISCV|i_Path|ir_out_m\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Decod~regout\,
	datab => \i_RISCV|i_Path|ir_out_m\(17),
	datac => \i_RISCV|i_Path|pc_ir\(6),
	datad => \i_RISCV|i_Control|estado_act.auipc3~regout\,
	combout => \i_RISCV|i_Path|a[6]~77_combout\);

-- Location: LCCOMB_X21_Y15_N16
\i_RISCV|i_Path|a[6]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[6]~78_combout\ = (\i_RISCV|i_Path|a[6]~77_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[5][6]~regout\) # ((!\i_RISCV|i_Path|a[14]~1_combout\)))) # (!\i_RISCV|i_Path|a[6]~77_combout\ & (((\i_RISCV|i_Path|i_BancoReg|reg[1][6]~regout\ & 
-- \i_RISCV|i_Path|a[14]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_BancoReg|reg[5][6]~regout\,
	datab => \i_RISCV|i_Path|a[6]~77_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[1][6]~regout\,
	datad => \i_RISCV|i_Path|a[14]~1_combout\,
	combout => \i_RISCV|i_Path|a[6]~78_combout\);

-- Location: LCCOMB_X21_Y14_N12
\i_RISCV|i_Path|a[6]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[6]~79_combout\ = (\i_RISCV|i_Control|estado_act.Fetch~regout\ & ((\i_RISCV|i_Path|pc_out\(6)))) # (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & (\i_RISCV|i_Path|a[6]~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datac => \i_RISCV|i_Path|a[6]~78_combout\,
	datad => \i_RISCV|i_Path|pc_out\(6),
	combout => \i_RISCV|i_Path|a[6]~79_combout\);

-- Location: LCFF_X21_Y14_N3
\i_RISCV|i_Path|i_BancoReg|reg[5][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux26~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[5][5]~regout\);

-- Location: LCFF_X20_Y17_N13
\i_RISCV|i_Path|i_BancoReg|reg[5][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_BancoReg|reg[5][3]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[5][3]~regout\);

-- Location: LCFF_X21_Y15_N13
\i_RISCV|i_Path|pc_ir[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|pc_out\(2),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_ir\(2));

-- Location: LCCOMB_X21_Y15_N12
\i_RISCV|i_Path|a[2]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[2]~90_combout\ = (\i_RISCV|i_Control|estado_act.Decod~regout\ & (((\i_RISCV|i_Path|pc_ir\(2))))) # (!\i_RISCV|i_Control|estado_act.Decod~regout\ & ((\i_RISCV|i_Control|estado_act.auipc3~regout\ & (\i_RISCV|i_Path|pc_ir\(2))) # 
-- (!\i_RISCV|i_Control|estado_act.auipc3~regout\ & ((\i_RISCV|i_Path|ir_out_m\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Decod~regout\,
	datab => \i_RISCV|i_Control|estado_act.auipc3~regout\,
	datac => \i_RISCV|i_Path|pc_ir\(2),
	datad => \i_RISCV|i_Path|ir_out_m\(17),
	combout => \i_RISCV|i_Path|a[2]~90_combout\);

-- Location: LCCOMB_X23_Y14_N4
\i_RISCV|i_Path|b[1]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[1]~91_combout\ = (!\i_RISCV|i_Control|estado_act.Jalr~regout\ & (\i_RISCV|i_Control|WideOr9~0_combout\ & \i_RISCV|i_Path|i_BancoReg|Mux62~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Jalr~regout\,
	datac => \i_RISCV|i_Control|WideOr9~0_combout\,
	datad => \i_RISCV|i_Path|i_BancoReg|Mux62~0_combout\,
	combout => \i_RISCV|i_Path|b[1]~91_combout\);

-- Location: LCCOMB_X23_Y14_N10
\i_RISCV|i_Path|b[1]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[1]~92_combout\ = (\i_RISCV|i_Path|b[1]~91_combout\) # ((\i_RISCV|i_Path|b[26]~5_combout\ & (\i_RISCV|i_Path|ir_out_m\(21) & \i_RISCV|i_Path|i_genInm|inm~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[26]~5_combout\,
	datab => \i_RISCV|i_Path|ir_out_m\(21),
	datac => \i_RISCV|i_Path|b[1]~91_combout\,
	datad => \i_RISCV|i_Path|i_genInm|inm~10_combout\,
	combout => \i_RISCV|i_Path|b[1]~92_combout\);

-- Location: LCFF_X21_Y14_N21
\i_RISCV|i_Path|pc_ir[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|pc_out\(1),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_ir\(1));

-- Location: LCCOMB_X21_Y14_N20
\i_RISCV|i_Path|a[1]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[1]~93_combout\ = (\i_RISCV|i_Control|estado_act.auipc3~regout\ & (((\i_RISCV|i_Path|pc_ir\(1))))) # (!\i_RISCV|i_Control|estado_act.auipc3~regout\ & ((\i_RISCV|i_Control|estado_act.Decod~regout\ & ((\i_RISCV|i_Path|pc_ir\(1)))) # 
-- (!\i_RISCV|i_Control|estado_act.Decod~regout\ & (\i_RISCV|i_Path|ir_out_m\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.auipc3~regout\,
	datab => \i_RISCV|i_Path|ir_out_m\(17),
	datac => \i_RISCV|i_Path|pc_ir\(1),
	datad => \i_RISCV|i_Control|estado_act.Decod~regout\,
	combout => \i_RISCV|i_Path|a[1]~93_combout\);

-- Location: LCFF_X21_Y15_N15
\i_RISCV|i_Path|pc_ir[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|pc_out\(0),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_ir\(0));

-- Location: LCCOMB_X21_Y15_N14
\i_RISCV|i_Path|a[0]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[0]~96_combout\ = (\i_RISCV|i_Control|estado_act.Decod~regout\ & (((\i_RISCV|i_Path|pc_ir\(0))))) # (!\i_RISCV|i_Control|estado_act.Decod~regout\ & ((\i_RISCV|i_Control|estado_act.auipc3~regout\ & (\i_RISCV|i_Path|pc_ir\(0))) # 
-- (!\i_RISCV|i_Control|estado_act.auipc3~regout\ & ((\i_RISCV|i_Path|ir_out_m\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Decod~regout\,
	datab => \i_RISCV|i_Control|estado_act.auipc3~regout\,
	datac => \i_RISCV|i_Path|pc_ir\(0),
	datad => \i_RISCV|i_Path|ir_out_m\(17),
	combout => \i_RISCV|i_Path|a[0]~96_combout\);

-- Location: LCFF_X24_Y14_N27
\dout_PEP[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => mid_PEP(2),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dout_PEP(2));

-- Location: LCCOMB_X24_Y14_N26
\i_RISCV|i_Path|Mux29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux29~0_combout\ = (!\i_RISCV|i_Control|estado_act.Jalr~regout\ & ((\i_RISCV|i_Path|alur_out\(2) & ((dout_PEP(2)) # (!\i_RISCV|i_Control|estado_act.lw5~regout\))) # (!\i_RISCV|i_Path|alur_out\(2) & 
-- ((\i_RISCV|i_Control|estado_act.lw5~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|alur_out\(2),
	datab => \i_RISCV|i_Control|estado_act.Jalr~regout\,
	datac => dout_PEP(2),
	datad => \i_RISCV|i_Control|estado_act.lw5~regout\,
	combout => \i_RISCV|i_Path|Mux29~0_combout\);

-- Location: LCCOMB_X24_Y15_N16
\i_RISCV|i_Path|sal_and~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|sal_and~0_combout\ = (\i_RISCV|i_Path|a[8]~73_combout\ & (\i_RISCV|i_Path|b[8]~78_combout\ & (\i_RISCV|i_Path|b[9]~75_combout\ $ (!\i_RISCV|i_Path|a[9]~70_combout\)))) # (!\i_RISCV|i_Path|a[8]~73_combout\ & 
-- (!\i_RISCV|i_Path|b[8]~78_combout\ & (\i_RISCV|i_Path|b[9]~75_combout\ $ (!\i_RISCV|i_Path|a[9]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[8]~73_combout\,
	datab => \i_RISCV|i_Path|b[9]~75_combout\,
	datac => \i_RISCV|i_Path|a[9]~70_combout\,
	datad => \i_RISCV|i_Path|b[8]~78_combout\,
	combout => \i_RISCV|i_Path|sal_and~0_combout\);

-- Location: LCCOMB_X26_Y15_N26
\i_RISCV|i_Path|sal_and~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|sal_and~4_combout\ = (\i_RISCV|i_Path|a[31]~4_combout\ & (\i_RISCV|i_Path|b[31]~9_combout\ & (\i_RISCV|i_Path|b[30]~12_combout\ $ (!\i_RISCV|i_Path|a[30]~7_combout\)))) # (!\i_RISCV|i_Path|a[31]~4_combout\ & 
-- (!\i_RISCV|i_Path|b[31]~9_combout\ & (\i_RISCV|i_Path|b[30]~12_combout\ $ (!\i_RISCV|i_Path|a[30]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[31]~4_combout\,
	datab => \i_RISCV|i_Path|b[30]~12_combout\,
	datac => \i_RISCV|i_Path|b[31]~9_combout\,
	datad => \i_RISCV|i_Path|a[30]~7_combout\,
	combout => \i_RISCV|i_Path|sal_and~4_combout\);

-- Location: LCCOMB_X25_Y15_N12
\i_RISCV|i_Path|sal_and~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|sal_and~6_combout\ = (\i_RISCV|i_Path|b[14]~60_combout\ & (\i_RISCV|i_Path|a[14]~55_combout\ & (\i_RISCV|i_Path|a[15]~52_combout\ $ (!\i_RISCV|i_Path|b[15]~57_combout\)))) # (!\i_RISCV|i_Path|b[14]~60_combout\ & 
-- (!\i_RISCV|i_Path|a[14]~55_combout\ & (\i_RISCV|i_Path|a[15]~52_combout\ $ (!\i_RISCV|i_Path|b[15]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[14]~60_combout\,
	datab => \i_RISCV|i_Path|a[15]~52_combout\,
	datac => \i_RISCV|i_Path|b[15]~57_combout\,
	datad => \i_RISCV|i_Path|a[14]~55_combout\,
	combout => \i_RISCV|i_Path|sal_and~6_combout\);

-- Location: LCCOMB_X25_Y12_N18
\i_RISCV|i_Path|sal_and~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|sal_and~12_combout\ = (\i_RISCV|i_Path|a[24]~25_combout\ & (\i_RISCV|i_Path|b[24]~30_combout\ & (\i_RISCV|i_Path|a[25]~22_combout\ $ (!\i_RISCV|i_Path|b[25]~27_combout\)))) # (!\i_RISCV|i_Path|a[24]~25_combout\ & 
-- (!\i_RISCV|i_Path|b[24]~30_combout\ & (\i_RISCV|i_Path|a[25]~22_combout\ $ (!\i_RISCV|i_Path|b[25]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[24]~25_combout\,
	datab => \i_RISCV|i_Path|a[25]~22_combout\,
	datac => \i_RISCV|i_Path|b[24]~30_combout\,
	datad => \i_RISCV|i_Path|b[25]~27_combout\,
	combout => \i_RISCV|i_Path|sal_and~12_combout\);

-- Location: LCCOMB_X23_Y14_N12
\i_RISCV|i_Path|sal_and~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|sal_and~19_combout\ = (\i_RISCV|i_Path|a[6]~79_combout\ & (\i_RISCV|i_Path|b[6]~83_combout\ & (\i_RISCV|i_Path|a[7]~76_combout\ $ (!\i_RISCV|i_Path|b[7]~82_combout\)))) # (!\i_RISCV|i_Path|a[6]~79_combout\ & 
-- (!\i_RISCV|i_Path|b[6]~83_combout\ & (\i_RISCV|i_Path|a[7]~76_combout\ $ (!\i_RISCV|i_Path|b[7]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[6]~79_combout\,
	datab => \i_RISCV|i_Path|a[7]~76_combout\,
	datac => \i_RISCV|i_Path|b[6]~83_combout\,
	datad => \i_RISCV|i_Path|b[7]~82_combout\,
	combout => \i_RISCV|i_Path|sal_and~19_combout\);

-- Location: LCCOMB_X23_Y14_N6
\i_RISCV|i_Path|sal_and~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|sal_and~20_combout\ = (\i_RISCV|i_Path|sal_and~19_combout\ & (\i_RISCV|i_Path|b[5]~84_combout\ $ (!\i_RISCV|i_Path|a[5]~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RISCV|i_Path|b[5]~84_combout\,
	datac => \i_RISCV|i_Path|a[5]~82_combout\,
	datad => \i_RISCV|i_Path|sal_and~19_combout\,
	combout => \i_RISCV|i_Path|sal_and~20_combout\);

-- Location: LCFF_X26_Y12_N31
\mid_PEP[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \in_pins~combout\(0),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mid_PEP(0));

-- Location: LCCOMB_X23_Y16_N2
\i_RISCV|i_Control|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Control|WideOr5~0_combout\ = (\i_RISCV|i_Control|estado_act.Arit3~regout\) # ((\i_RISCV|i_Control|estado_act.Inm3~regout\) # (\i_RISCV|i_Control|estado_act.auipc3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Arit3~regout\,
	datab => \i_RISCV|i_Control|estado_act.Inm3~regout\,
	datad => \i_RISCV|i_Control|estado_act.auipc3~regout\,
	combout => \i_RISCV|i_Control|WideOr5~0_combout\);

-- Location: LCCOMB_X24_Y12_N6
\i_RISCV|i_Path|pc_in[30]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|pc_in[30]~7_combout\ = (\i_RISCV|i_Control|estado_act.SalCond~regout\ & (\i_RISCV|i_Path|alur_out\(30))) # (!\i_RISCV|i_Control|estado_act.SalCond~regout\ & (((\i_RISCV|i_Control|estado_act.Reset~regout\ & 
-- \i_RISCV|i_Path|i_ALU|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|alur_out\(30),
	datab => \i_RISCV|i_Control|estado_act.SalCond~regout\,
	datac => \i_RISCV|i_Control|estado_act.Reset~regout\,
	datad => \i_RISCV|i_Path|i_ALU|Mux1~0_combout\,
	combout => \i_RISCV|i_Path|pc_in[30]~7_combout\);

-- Location: LCCOMB_X21_Y12_N24
\i_RISCV|i_Path|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux2~0_combout\ = (\i_RISCV|i_Control|estado_act.lui3~regout\ & (\i_RISCV|i_Path|ir_out_m\(10))) # (!\i_RISCV|i_Control|estado_act.lui3~regout\ & (((!\i_RISCV|i_Control|estado_act.lw5~regout\ & \i_RISCV|i_Path|alur_out\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|ir_out_m\(10),
	datab => \i_RISCV|i_Control|estado_act.lui3~regout\,
	datac => \i_RISCV|i_Control|estado_act.lw5~regout\,
	datad => \i_RISCV|i_Path|alur_out\(29),
	combout => \i_RISCV|i_Path|Mux2~0_combout\);

-- Location: LCFF_X24_Y12_N1
\i_RISCV|i_Path|alur_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ALU|Mux3~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|alur_out\(28));

-- Location: LCFF_X24_Y12_N13
\i_RISCV|i_Path|alur_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ALU|Mux4~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|alur_out\(27));

-- Location: LCCOMB_X21_Y12_N4
\i_RISCV|i_Path|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux4~0_combout\ = (\i_RISCV|i_Control|estado_act.lui3~regout\ & (((\i_RISCV|i_Path|ir_out_m\(10))))) # (!\i_RISCV|i_Control|estado_act.lui3~regout\ & (!\i_RISCV|i_Control|estado_act.lw5~regout\ & (\i_RISCV|i_Path|alur_out\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.lw5~regout\,
	datab => \i_RISCV|i_Path|alur_out\(27),
	datac => \i_RISCV|i_Path|ir_out_m\(10),
	datad => \i_RISCV|i_Control|estado_act.lui3~regout\,
	combout => \i_RISCV|i_Path|Mux4~0_combout\);

-- Location: LCFF_X24_Y12_N11
\i_RISCV|i_Path|alur_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ALU|Mux5~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|alur_out\(26));

-- Location: LCFF_X24_Y13_N1
\i_RISCV|i_Path|alur_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ALU|Mux7~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|alur_out\(24));

-- Location: LCCOMB_X24_Y13_N18
\i_RISCV|i_Path|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux7~0_combout\ = (\i_RISCV|i_Control|estado_act.lui3~regout\ & (((\i_RISCV|i_Path|ir_out_m\(24))))) # (!\i_RISCV|i_Control|estado_act.lui3~regout\ & (\i_RISCV|i_Path|alur_out\(24) & ((!\i_RISCV|i_Control|estado_act.lw5~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|alur_out\(24),
	datab => \i_RISCV|i_Control|estado_act.lui3~regout\,
	datac => \i_RISCV|i_Path|ir_out_m\(24),
	datad => \i_RISCV|i_Control|estado_act.lw5~regout\,
	combout => \i_RISCV|i_Path|Mux7~0_combout\);

-- Location: LCCOMB_X26_Y13_N0
\i_RISCV|i_Path|pc_in[23]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|pc_in[23]~14_combout\ = (\i_RISCV|i_Control|estado_act.SalCond~regout\ & (\i_RISCV|i_Path|alur_out\(23))) # (!\i_RISCV|i_Control|estado_act.SalCond~regout\ & (((\i_RISCV|i_Control|estado_act.Reset~regout\ & 
-- \i_RISCV|i_Path|i_ALU|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|alur_out\(23),
	datab => \i_RISCV|i_Control|estado_act.Reset~regout\,
	datac => \i_RISCV|i_Control|estado_act.SalCond~regout\,
	datad => \i_RISCV|i_Path|i_ALU|Mux8~0_combout\,
	combout => \i_RISCV|i_Path|pc_in[23]~14_combout\);

-- Location: LCFF_X24_Y13_N7
\i_RISCV|i_Path|alur_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ALU|Mux10~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|alur_out\(21));

-- Location: LCFF_X26_Y13_N7
\i_RISCV|i_Path|alur_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ALU|Mux17~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|alur_out\(14));

-- Location: LCFF_X24_Y13_N15
\i_RISCV|i_Path|alur_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ALU|Mux18~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|alur_out\(13));

-- Location: LCCOMB_X24_Y11_N16
\i_RISCV|i_Path|pc_in[9]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|pc_in[9]~28_combout\ = (\i_RISCV|i_Control|estado_act.SalCond~regout\ & (((\i_RISCV|i_Path|alur_out\(9))))) # (!\i_RISCV|i_Control|estado_act.SalCond~regout\ & (\i_RISCV|i_Control|estado_act.Reset~regout\ & 
-- ((\i_RISCV|i_Path|i_ALU|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Reset~regout\,
	datab => \i_RISCV|i_Path|alur_out\(9),
	datac => \i_RISCV|i_Path|i_ALU|Mux22~0_combout\,
	datad => \i_RISCV|i_Control|estado_act.SalCond~regout\,
	combout => \i_RISCV|i_Path|pc_in[9]~28_combout\);

-- Location: LCCOMB_X24_Y11_N20
\i_RISCV|i_Path|pc_in[6]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|pc_in[6]~31_combout\ = (\i_RISCV|i_Control|estado_act.SalCond~regout\ & (((\i_RISCV|i_Path|alur_out\(6))))) # (!\i_RISCV|i_Control|estado_act.SalCond~regout\ & (\i_RISCV|i_Control|estado_act.Reset~regout\ & 
-- ((\i_RISCV|i_Path|i_ALU|Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Reset~regout\,
	datab => \i_RISCV|i_Control|estado_act.SalCond~regout\,
	datac => \i_RISCV|i_Path|alur_out\(6),
	datad => \i_RISCV|i_Path|i_ALU|Mux25~0_combout\,
	combout => \i_RISCV|i_Path|pc_in[6]~31_combout\);

-- Location: LCFF_X24_Y14_N21
\mid_PEP[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \in_pins~combout\(2),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mid_PEP(2));

-- Location: LCCOMB_X22_Y14_N6
\i_RISCV|i_Path|b[4]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[4]~95_combout\ = (\i_RISCV|i_Path|i_genInm|inm~10_combout\ & (\i_RISCV|i_Path|ir_out_m\(24) & ((\i_RISCV|i_Control|estado_act.Jalr~regout\) # (!\i_RISCV|i_Control|WideOr9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_genInm|inm~10_combout\,
	datab => \i_RISCV|i_Control|estado_act.Jalr~regout\,
	datac => \i_RISCV|i_Control|WideOr9~0_combout\,
	datad => \i_RISCV|i_Path|ir_out_m\(24),
	combout => \i_RISCV|i_Path|b[4]~95_combout\);

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_pins[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_in_pins(0),
	combout => \in_pins~combout\(0));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_pins[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_in_pins(2),
	combout => \in_pins~combout\(2));

-- Location: LCCOMB_X20_Y17_N12
\i_RISCV|i_Path|i_BancoReg|reg[5][3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_BancoReg|reg[5][3]~feeder_combout\ = \i_RISCV|i_Path|Mux28~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_RISCV|i_Path|Mux28~2_combout\,
	combout => \i_RISCV|i_Path|i_BancoReg|reg[5][3]~feeder_combout\);

-- Location: LCCOMB_X20_Y15_N14
\i_RISCV|i_Path|i_BancoReg|reg[5][6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_BancoReg|reg[5][6]~feeder_combout\ = \i_RISCV|i_Path|Mux25~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_RISCV|i_Path|Mux25~2_combout\,
	combout => \i_RISCV|i_Path|i_BancoReg|reg[5][6]~feeder_combout\);

-- Location: LCCOMB_X27_Y15_N4
\i_RISCV|i_Path|i_BancoReg|reg[6][31]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_BancoReg|reg[6][31]~feeder_combout\ = \i_RISCV|i_Path|Mux0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_RISCV|i_Path|Mux0~1_combout\,
	combout => \i_RISCV|i_Path|i_BancoReg|reg[6][31]~feeder_combout\);

-- Location: LCCOMB_X25_Y12_N20
\i_RISCV|i_Path|i_BancoReg|reg[6][30]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_BancoReg|reg[6][30]~feeder_combout\ = \i_RISCV|i_Path|Mux1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_RISCV|i_Path|Mux1~1_combout\,
	combout => \i_RISCV|i_Path|i_BancoReg|reg[6][30]~feeder_combout\);

-- Location: LCCOMB_X20_Y13_N2
\i_RISCV|i_Path|i_BancoReg|reg[6][22]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_BancoReg|reg[6][22]~feeder_combout\ = \i_RISCV|i_Path|Mux9~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_RISCV|i_Path|Mux9~1_combout\,
	combout => \i_RISCV|i_Path|i_BancoReg|reg[6][22]~feeder_combout\);

-- Location: LCCOMB_X20_Y16_N28
\i_RISCV|i_Path|i_BancoReg|reg[5][17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_BancoReg|reg[5][17]~feeder_combout\ = \i_RISCV|i_Path|Mux14~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_RISCV|i_Path|Mux14~1_combout\,
	combout => \i_RISCV|i_Path|i_BancoReg|reg[5][17]~feeder_combout\);

-- Location: LCCOMB_X27_Y15_N2
\i_RISCV|i_Path|i_BancoReg|reg[6][14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_BancoReg|reg[6][14]~feeder_combout\ = \i_RISCV|i_Path|Mux17~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_RISCV|i_Path|Mux17~1_combout\,
	combout => \i_RISCV|i_Path|i_BancoReg|reg[6][14]~feeder_combout\);

-- Location: LCCOMB_X22_Y12_N16
\i_RISCV|i_Path|i_BancoReg|reg[5][12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_BancoReg|reg[5][12]~feeder_combout\ = \i_RISCV|i_Path|Mux19~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_RISCV|i_Path|Mux19~1_combout\,
	combout => \i_RISCV|i_Path|i_BancoReg|reg[5][12]~feeder_combout\);

-- Location: LCCOMB_X27_Y15_N16
\i_RISCV|i_Path|i_BancoReg|reg[6][12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_BancoReg|reg[6][12]~feeder_combout\ = \i_RISCV|i_Path|Mux19~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_RISCV|i_Path|Mux19~1_combout\,
	combout => \i_RISCV|i_Path|i_BancoReg|reg[6][12]~feeder_combout\);

-- Location: LCCOMB_X20_Y15_N10
\i_RISCV|i_Path|i_BancoReg|reg[6][9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_BancoReg|reg[6][9]~feeder_combout\ = \i_RISCV|i_Path|Mux22~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_RISCV|i_Path|Mux22~0_combout\,
	combout => \i_RISCV|i_Path|i_BancoReg|reg[6][9]~feeder_combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G2
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

-- Location: LCCOMB_X23_Y16_N12
\i_RISCV|i_Control|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Control|Selector2~0_combout\ = (\i_RISCV|i_Path|ir_out_m\(10) & (((\i_RISCV|i_Path|ir_out_m\(4))) # (!\i_RISCV|i_Path|ir_out_m\(5)))) # (!\i_RISCV|i_Path|ir_out_m\(10) & (((\i_RISCV|i_Path|ir_out_m\(2) & !\i_RISCV|i_Path|ir_out_m\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|ir_out_m\(5),
	datab => \i_RISCV|i_Path|ir_out_m\(2),
	datac => \i_RISCV|i_Path|ir_out_m\(10),
	datad => \i_RISCV|i_Path|ir_out_m\(4),
	combout => \i_RISCV|i_Control|Selector2~0_combout\);

-- Location: LCCOMB_X22_Y15_N4
\i_RISCV|i_Control|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Control|Selector2~1_combout\ = (\i_RISCV|i_Control|estado_act.Fetch~regout\) # ((\i_RISCV|i_Control|estado_act.Decod~regout\ & \i_RISCV|i_Control|Selector2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datac => \i_RISCV|i_Control|estado_act.Decod~regout\,
	datad => \i_RISCV|i_Control|Selector2~0_combout\,
	combout => \i_RISCV|i_Control|Selector2~1_combout\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X22_Y15_N5
\i_RISCV|i_Control|estado_act.Decod\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Control|Selector2~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Control|estado_act.Decod~regout\);

-- Location: LCCOMB_X25_Y11_N14
\i_RISCV|i_Path|i_ROM|memory~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ROM|memory~8_combout\ = (!\i_RISCV|i_Path|pc_in[5]~4_combout\ & (\i_RISCV|i_Path|pc_in[3]~5_combout\ $ (\i_RISCV|i_Path|pc_in[2]~3_combout\ $ (!\i_RISCV|i_Path|pc_in[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|pc_in[3]~5_combout\,
	datab => \i_RISCV|i_Path|pc_in[2]~3_combout\,
	datac => \i_RISCV|i_Path|pc_in[5]~4_combout\,
	datad => \i_RISCV|i_Path|pc_in[4]~2_combout\,
	combout => \i_RISCV|i_Path|i_ROM|memory~8_combout\);

-- Location: LCCOMB_X26_Y11_N4
\i_RISCV|i_Control|estado_act.Reset~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Control|estado_act.Reset~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \i_RISCV|i_Control|estado_act.Reset~feeder_combout\);

-- Location: LCFF_X26_Y11_N5
\i_RISCV|i_Control|estado_act.Reset\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Control|estado_act.Reset~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Control|estado_act.Reset~regout\);

-- Location: LCCOMB_X22_Y15_N28
\i_RISCV|i_Control|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Control|Selector14~0_combout\ = (\i_RISCV|i_Path|ir_out_m\(10) & (!\i_RISCV|i_Control|Selector2~0_combout\ & (\i_RISCV|i_Path|ir_out_m\(2) & \i_RISCV|i_Control|estado_act.Decod~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|ir_out_m\(10),
	datab => \i_RISCV|i_Control|Selector2~0_combout\,
	datac => \i_RISCV|i_Path|ir_out_m\(2),
	datad => \i_RISCV|i_Control|estado_act.Decod~regout\,
	combout => \i_RISCV|i_Control|Selector14~0_combout\);

-- Location: LCFF_X22_Y15_N29
\i_RISCV|i_Control|estado_act.Jalr\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Control|Selector14~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Control|estado_act.Jalr~regout\);

-- Location: LCCOMB_X25_Y15_N18
\i_RISCV|i_Path|en_pc~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|en_pc~0_combout\ = ((\i_RISCV|i_Control|estado_act.Fetch~regout\) # (\i_RISCV|i_Control|estado_act.Jalr~regout\)) # (!\i_RISCV|i_Control|estado_act.Reset~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RISCV|i_Control|estado_act.Reset~regout\,
	datac => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datad => \i_RISCV|i_Control|estado_act.Jalr~regout\,
	combout => \i_RISCV|i_Path|en_pc~0_combout\);

-- Location: LCCOMB_X23_Y15_N4
\i_RISCV|i_Control|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Control|Selector3~0_combout\ = (\i_RISCV|i_Control|Selector6~0_combout\ & \i_RISCV|i_Path|ir_out_m\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RISCV|i_Control|Selector6~0_combout\,
	datad => \i_RISCV|i_Path|ir_out_m\(2),
	combout => \i_RISCV|i_Control|Selector3~0_combout\);

-- Location: LCFF_X22_Y15_N23
\i_RISCV|i_Control|estado_act.lui3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Control|Selector3~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Control|estado_act.lui3~regout\);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_pins[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_in_pins(1),
	combout => \in_pins~combout\(1));

-- Location: LCFF_X23_Y16_N15
\mid_PEP[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \in_pins~combout\(1),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mid_PEP(1));

-- Location: LCFF_X23_Y16_N25
\dout_PEP[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => mid_PEP(1),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dout_PEP(1));

-- Location: LCCOMB_X23_Y16_N0
\i_RISCV|i_Control|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Control|Selector7~0_combout\ = (!\i_RISCV|i_Control|Selector2~0_combout\ & (!\i_RISCV|i_Path|ir_out_m\(2) & (\i_RISCV|i_Path|ir_out_m\(10) & \i_RISCV|i_Control|estado_act.Decod~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|Selector2~0_combout\,
	datab => \i_RISCV|i_Path|ir_out_m\(2),
	datac => \i_RISCV|i_Path|ir_out_m\(10),
	datad => \i_RISCV|i_Control|estado_act.Decod~regout\,
	combout => \i_RISCV|i_Control|Selector7~0_combout\);

-- Location: LCFF_X23_Y16_N1
\i_RISCV|i_Control|estado_act.SalCond\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Control|Selector7~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Control|estado_act.SalCond~regout\);

-- Location: LCCOMB_X25_Y11_N26
\i_RISCV|i_Path|i_ROM|memory~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ROM|memory~4_combout\ = (\i_RISCV|i_Path|pc_in[3]~5_combout\ & (!\i_RISCV|i_Path|pc_in[2]~3_combout\ & (!\i_RISCV|i_Path|pc_in[5]~4_combout\ & !\i_RISCV|i_Path|pc_in[4]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|pc_in[3]~5_combout\,
	datab => \i_RISCV|i_Path|pc_in[2]~3_combout\,
	datac => \i_RISCV|i_Path|pc_in[5]~4_combout\,
	datad => \i_RISCV|i_Path|pc_in[4]~2_combout\,
	combout => \i_RISCV|i_Path|i_ROM|memory~4_combout\);

-- Location: LCFF_X25_Y11_N27
\i_RISCV|i_Path|i_ROM|data[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ROM|memory~4_combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_ROM|data\(8));

-- Location: LCFF_X23_Y14_N3
\i_RISCV|i_Path|ir_out_m[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|i_ROM|data\(8),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|ir_out_m\(8));

-- Location: LCCOMB_X22_Y15_N18
\i_RISCV|i_Control|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Control|Selector18~0_combout\ = (!\i_RISCV|i_Control|estado_act.auipc3~regout\ & (!\i_RISCV|i_Control|estado_act.lui3~regout\ & ((!\i_RISCV|i_Path|ir_out_m\(5)) # (!\i_RISCV|i_Control|estado_act.lwsw3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.lwsw3~regout\,
	datab => \i_RISCV|i_Control|estado_act.auipc3~regout\,
	datac => \i_RISCV|i_Path|ir_out_m\(5),
	datad => \i_RISCV|i_Control|estado_act.lui3~regout\,
	combout => \i_RISCV|i_Control|Selector18~0_combout\);

-- Location: LCCOMB_X22_Y15_N0
\i_RISCV|i_Control|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Control|Selector4~0_combout\ = (\i_RISCV|i_Control|Equal1~0_combout\ & (\i_RISCV|i_Control|estado_act.Decod~regout\)) # (!\i_RISCV|i_Control|Equal1~0_combout\ & ((\i_RISCV|i_Control|estado_act.lwsw3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Decod~regout\,
	datac => \i_RISCV|i_Control|estado_act.lwsw3~regout\,
	datad => \i_RISCV|i_Control|Equal1~0_combout\,
	combout => \i_RISCV|i_Control|Selector4~0_combout\);

-- Location: LCFF_X22_Y15_N1
\i_RISCV|i_Control|estado_act.lwsw3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Control|Selector4~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Control|estado_act.lwsw3~regout\);

-- Location: LCCOMB_X22_Y14_N30
\i_RISCV|i_Path|a[14]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[14]~83_combout\ = (!\i_RISCV|i_Control|estado_act.Decod~regout\ & !\i_RISCV|i_Control|estado_act.auipc3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_RISCV|i_Control|estado_act.Decod~regout\,
	datad => \i_RISCV|i_Control|estado_act.auipc3~regout\,
	combout => \i_RISCV|i_Path|a[14]~83_combout\);

-- Location: LCCOMB_X22_Y14_N20
\i_RISCV|i_Path|i_genInm|inm~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_genInm|inm~10_combout\ = (!\i_RISCV|i_Control|estado_act.lui3~regout\ & (\i_RISCV|i_Path|a[14]~83_combout\ & ((!\i_RISCV|i_Control|estado_act.lwsw3~regout\) # (!\i_RISCV|i_Path|ir_out_m\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|ir_out_m\(5),
	datab => \i_RISCV|i_Control|estado_act.lwsw3~regout\,
	datac => \i_RISCV|i_Control|estado_act.lui3~regout\,
	datad => \i_RISCV|i_Path|a[14]~83_combout\,
	combout => \i_RISCV|i_Path|i_genInm|inm~10_combout\);

-- Location: LCCOMB_X22_Y15_N6
\i_RISCV|i_Path|b[26]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[26]~5_combout\ = (\i_RISCV|i_Control|estado_act.Jalr~regout\) # (!\i_RISCV|i_Control|WideOr9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RISCV|i_Control|estado_act.Jalr~regout\,
	datad => \i_RISCV|i_Control|WideOr9~0_combout\,
	combout => \i_RISCV|i_Path|b[26]~5_combout\);

-- Location: LCCOMB_X22_Y14_N2
\i_RISCV|i_Path|b[2]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[2]~87_combout\ = (!\i_RISCV|i_Path|i_genInm|inm~10_combout\ & (\i_RISCV|i_Path|b[26]~5_combout\ & (\i_RISCV|i_Control|WideOr12~0_combout\ $ (\i_RISCV|i_Control|Selector18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|WideOr12~0_combout\,
	datab => \i_RISCV|i_Control|Selector18~0_combout\,
	datac => \i_RISCV|i_Path|i_genInm|inm~10_combout\,
	datad => \i_RISCV|i_Path|b[26]~5_combout\,
	combout => \i_RISCV|i_Path|b[2]~87_combout\);

-- Location: LCCOMB_X23_Y14_N2
\i_RISCV|i_Path|b[1]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[1]~93_combout\ = (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & ((\i_RISCV|i_Path|b[1]~92_combout\) # ((\i_RISCV|i_Path|ir_out_m\(8) & \i_RISCV|i_Path|b[2]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[1]~92_combout\,
	datab => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datac => \i_RISCV|i_Path|ir_out_m\(8),
	datad => \i_RISCV|i_Path|b[2]~87_combout\,
	combout => \i_RISCV|i_Path|b[1]~93_combout\);

-- Location: LCCOMB_X25_Y11_N2
\i_RISCV|i_Path|i_ROM|memory~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ROM|memory~2_combout\ = (!\i_RISCV|i_Path|pc_in[5]~4_combout\ & (((!\i_RISCV|i_Path|pc_in[3]~5_combout\ & !\i_RISCV|i_Path|pc_in[2]~3_combout\)) # (!\i_RISCV|i_Path|pc_in[4]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|pc_in[3]~5_combout\,
	datab => \i_RISCV|i_Path|pc_in[2]~3_combout\,
	datac => \i_RISCV|i_Path|pc_in[5]~4_combout\,
	datad => \i_RISCV|i_Path|pc_in[4]~2_combout\,
	combout => \i_RISCV|i_Path|i_ROM|memory~2_combout\);

-- Location: LCFF_X25_Y11_N3
\i_RISCV|i_Path|i_ROM|data[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ROM|memory~2_combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_ROM|data\(9));

-- Location: LCFF_X21_Y14_N17
\i_RISCV|i_Path|ir_out_m[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|i_ROM|data\(9),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|ir_out_m\(9));

-- Location: LCCOMB_X21_Y16_N16
\i_RISCV|i_Path|Mux23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux23~0_combout\ = (!\i_RISCV|i_Control|estado_act.lw5~regout\ & !\i_RISCV|i_Control|estado_act.lui3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_RISCV|i_Control|estado_act.lw5~regout\,
	datad => \i_RISCV|i_Control|estado_act.lui3~regout\,
	combout => \i_RISCV|i_Path|Mux23~0_combout\);

-- Location: LCCOMB_X24_Y16_N12
\i_RISCV|i_Path|i_BancoReg|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_BancoReg|Equal0~0_combout\ = (!\i_RISCV|i_Path|ir_out_m\(10) & ((\i_RISCV|i_Control|estado_act.Arit4~regout\) # ((\i_RISCV|i_Control|estado_act.Jalr~regout\) # (!\i_RISCV|i_Path|Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Arit4~regout\,
	datab => \i_RISCV|i_Path|ir_out_m\(10),
	datac => \i_RISCV|i_Control|estado_act.Jalr~regout\,
	datad => \i_RISCV|i_Path|Mux23~0_combout\,
	combout => \i_RISCV|i_Path|i_BancoReg|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y13_N2
\i_RISCV|i_Path|i_BancoReg|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_BancoReg|Equal0~5_combout\ = (\i_RISCV|i_Path|ir_out_m\(7) & (\i_RISCV|i_Path|ir_out_m\(9) & (\i_RISCV|i_Path|i_BancoReg|Equal0~0_combout\ & !\i_RISCV|i_Path|ir_out_m\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|ir_out_m\(7),
	datab => \i_RISCV|i_Path|ir_out_m\(9),
	datac => \i_RISCV|i_Path|i_BancoReg|Equal0~0_combout\,
	datad => \i_RISCV|i_Path|ir_out_m\(8),
	combout => \i_RISCV|i_Path|i_BancoReg|Equal0~5_combout\);

-- Location: LCFF_X22_Y12_N27
\i_RISCV|i_Path|i_BancoReg|reg[5][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux31~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[5][0]~regout\);

-- Location: LCCOMB_X21_Y13_N4
\i_RISCV|i_Path|i_BancoReg|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_BancoReg|Equal0~4_combout\ = (\i_RISCV|i_Path|ir_out_m\(7) & (!\i_RISCV|i_Path|ir_out_m\(9) & (\i_RISCV|i_Path|i_BancoReg|Equal0~0_combout\ & !\i_RISCV|i_Path|ir_out_m\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|ir_out_m\(7),
	datab => \i_RISCV|i_Path|ir_out_m\(9),
	datac => \i_RISCV|i_Path|i_BancoReg|Equal0~0_combout\,
	datad => \i_RISCV|i_Path|ir_out_m\(8),
	combout => \i_RISCV|i_Path|i_BancoReg|Equal0~4_combout\);

-- Location: LCFF_X22_Y12_N13
\i_RISCV|i_Path|i_BancoReg|reg[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux31~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[1][0]~regout\);

-- Location: LCCOMB_X21_Y15_N6
\i_RISCV|i_Path|a[14]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[14]~1_combout\ = (\i_RISCV|i_Path|ir_out_m\(17) & (!\i_RISCV|i_Control|estado_act.auipc3~regout\ & !\i_RISCV|i_Control|estado_act.Decod~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|ir_out_m\(17),
	datab => \i_RISCV|i_Control|estado_act.auipc3~regout\,
	datad => \i_RISCV|i_Control|estado_act.Decod~regout\,
	combout => \i_RISCV|i_Path|a[14]~1_combout\);

-- Location: LCCOMB_X22_Y12_N12
\i_RISCV|i_Path|a[0]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[0]~97_combout\ = (\i_RISCV|i_Path|a[0]~96_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[5][0]~regout\) # ((!\i_RISCV|i_Path|a[14]~1_combout\)))) # (!\i_RISCV|i_Path|a[0]~96_combout\ & (((\i_RISCV|i_Path|i_BancoReg|reg[1][0]~regout\ & 
-- \i_RISCV|i_Path|a[14]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[0]~96_combout\,
	datab => \i_RISCV|i_Path|i_BancoReg|reg[5][0]~regout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[1][0]~regout\,
	datad => \i_RISCV|i_Path|a[14]~1_combout\,
	combout => \i_RISCV|i_Path|a[0]~97_combout\);

-- Location: LCCOMB_X22_Y12_N20
\i_RISCV|i_Path|a[0]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[0]~98_combout\ = (\i_RISCV|i_Control|estado_act.Fetch~regout\ & (\i_RISCV|i_Path|pc_out\(0))) # (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & ((\i_RISCV|i_Path|a[0]~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|pc_out\(0),
	datab => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datad => \i_RISCV|i_Path|a[0]~97_combout\,
	combout => \i_RISCV|i_Path|a[0]~98_combout\);

-- Location: LCCOMB_X23_Y14_N18
\i_RISCV|i_Path|i_ALU|i1_sr|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~2_combout\ = (\i_RISCV|i_Path|a[1]~95_combout\ & ((\i_RISCV|i_Path|b[1]~93_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~1\)) # (!\i_RISCV|i_Path|b[1]~93_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~1\ & VCC)))) # 
-- (!\i_RISCV|i_Path|a[1]~95_combout\ & ((\i_RISCV|i_Path|b[1]~93_combout\ & ((\i_RISCV|i_Path|i_ALU|i1_sr|Add0~1\) # (GND))) # (!\i_RISCV|i_Path|b[1]~93_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~1\))))
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~3\ = CARRY((\i_RISCV|i_Path|a[1]~95_combout\ & (\i_RISCV|i_Path|b[1]~93_combout\ & !\i_RISCV|i_Path|i_ALU|i1_sr|Add0~1\)) # (!\i_RISCV|i_Path|a[1]~95_combout\ & ((\i_RISCV|i_Path|b[1]~93_combout\) # 
-- (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[1]~95_combout\,
	datab => \i_RISCV|i_Path|b[1]~93_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~1\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~2_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~3\);

-- Location: LCCOMB_X25_Y11_N18
\i_RISCV|i_Path|i_ROM|memory~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ROM|memory~1_combout\ = (!\i_RISCV|i_Path|pc_in[3]~5_combout\ & (\i_RISCV|i_Path|pc_in[2]~3_combout\ & (!\i_RISCV|i_Path|pc_in[5]~4_combout\ & !\i_RISCV|i_Path|pc_in[4]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|pc_in[3]~5_combout\,
	datab => \i_RISCV|i_Path|pc_in[2]~3_combout\,
	datac => \i_RISCV|i_Path|pc_in[5]~4_combout\,
	datad => \i_RISCV|i_Path|pc_in[4]~2_combout\,
	combout => \i_RISCV|i_Path|i_ROM|memory~1_combout\);

-- Location: LCFF_X25_Y11_N19
\i_RISCV|i_Path|i_ROM|data[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ROM|memory~1_combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_ROM|data\(24));

-- Location: LCFF_X22_Y15_N3
\i_RISCV|i_Path|ir_out_m[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|i_ROM|data\(24),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|ir_out_m\(24));

-- Location: LCCOMB_X25_Y11_N24
\i_RISCV|i_Path|i_ROM|memory~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ROM|memory~0_combout\ = (!\i_RISCV|i_Path|pc_in[3]~5_combout\ & (\i_RISCV|i_Path|pc_in[2]~3_combout\ & (!\i_RISCV|i_Path|pc_in[5]~4_combout\ & \i_RISCV|i_Path|pc_in[4]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|pc_in[3]~5_combout\,
	datab => \i_RISCV|i_Path|pc_in[2]~3_combout\,
	datac => \i_RISCV|i_Path|pc_in[5]~4_combout\,
	datad => \i_RISCV|i_Path|pc_in[4]~2_combout\,
	combout => \i_RISCV|i_Path|i_ROM|memory~0_combout\);

-- Location: LCFF_X25_Y11_N25
\i_RISCV|i_Path|i_ROM|data[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ROM|memory~0_combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_ROM|data\(21));

-- Location: LCFF_X22_Y15_N17
\i_RISCV|i_Path|ir_out_m[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|i_ROM|data\(21),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|ir_out_m\(21));

-- Location: LCCOMB_X22_Y15_N16
\i_RISCV|i_Path|b[26]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[26]~4_combout\ = (!\i_RISCV|i_Control|estado_act.Jalr~regout\ & (!\i_RISCV|i_Path|ir_out_m\(24) & (\i_RISCV|i_Path|ir_out_m\(21) & \i_RISCV|i_Control|WideOr9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Jalr~regout\,
	datab => \i_RISCV|i_Path|ir_out_m\(24),
	datac => \i_RISCV|i_Path|ir_out_m\(21),
	datad => \i_RISCV|i_Control|WideOr9~0_combout\,
	combout => \i_RISCV|i_Path|b[26]~4_combout\);

-- Location: LCCOMB_X23_Y16_N26
\i_RISCV|i_Path|b[0]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[0]~94_combout\ = (\i_RISCV|i_Path|i_BancoReg|reg[6][0]~regout\ & (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & \i_RISCV|i_Path|b[26]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RISCV|i_Path|i_BancoReg|reg[6][0]~regout\,
	datac => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datad => \i_RISCV|i_Path|b[26]~4_combout\,
	combout => \i_RISCV|i_Path|b[0]~94_combout\);

-- Location: LCCOMB_X25_Y14_N0
\i_RISCV|i_Path|i_ALU|i1_sr|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~0_combout\ = (\i_RISCV|i_Path|a[0]~98_combout\ & (\i_RISCV|i_Path|b[0]~94_combout\ $ (VCC))) # (!\i_RISCV|i_Path|a[0]~98_combout\ & (\i_RISCV|i_Path|b[0]~94_combout\ & VCC))
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~1\ = CARRY((\i_RISCV|i_Path|a[0]~98_combout\ & \i_RISCV|i_Path|b[0]~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[0]~98_combout\,
	datab => \i_RISCV|i_Path|b[0]~94_combout\,
	datad => VCC,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~0_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~1\);

-- Location: LCCOMB_X25_Y14_N2
\i_RISCV|i_Path|i_ALU|i1_sr|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~2_combout\ = (\i_RISCV|i_Path|b[1]~93_combout\ & ((\i_RISCV|i_Path|a[1]~95_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add1~1\ & VCC)) # (!\i_RISCV|i_Path|a[1]~95_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~1\)))) # 
-- (!\i_RISCV|i_Path|b[1]~93_combout\ & ((\i_RISCV|i_Path|a[1]~95_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~1\)) # (!\i_RISCV|i_Path|a[1]~95_combout\ & ((\i_RISCV|i_Path|i_ALU|i1_sr|Add1~1\) # (GND)))))
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~3\ = CARRY((\i_RISCV|i_Path|b[1]~93_combout\ & (!\i_RISCV|i_Path|a[1]~95_combout\ & !\i_RISCV|i_Path|i_ALU|i1_sr|Add1~1\)) # (!\i_RISCV|i_Path|b[1]~93_combout\ & ((!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~1\) # 
-- (!\i_RISCV|i_Path|a[1]~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[1]~93_combout\,
	datab => \i_RISCV|i_Path|a[1]~95_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~1\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~2_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~3\);

-- Location: LCCOMB_X25_Y16_N2
\i_RISCV|i_Path|i_ALU|Mux30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|Mux30~0_combout\ = (!\i_RISCV|i_Control|Selector16~0_combout\ & ((\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~2_combout\)) # (!\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & 
-- ((\i_RISCV|i_Path|i_ALU|i1_sr|Add1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_ALU|Mux0~0_combout\,
	datab => \i_RISCV|i_Control|Selector16~0_combout\,
	datac => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~2_combout\,
	datad => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~2_combout\,
	combout => \i_RISCV|i_Path|i_ALU|Mux30~0_combout\);

-- Location: LCFF_X25_Y16_N3
\i_RISCV|i_Path|alur_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ALU|Mux30~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|alur_out\(1));

-- Location: LCCOMB_X25_Y16_N16
\i_RISCV|i_Path|pc_in[1]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|pc_in[1]~32_combout\ = (\i_RISCV|i_Control|estado_act.SalCond~regout\ & (((\i_RISCV|i_Path|alur_out\(1))))) # (!\i_RISCV|i_Control|estado_act.SalCond~regout\ & (\i_RISCV|i_Control|estado_act.Reset~regout\ & 
-- (\i_RISCV|i_Path|i_ALU|Mux30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Reset~regout\,
	datab => \i_RISCV|i_Control|estado_act.SalCond~regout\,
	datac => \i_RISCV|i_Path|i_ALU|Mux30~0_combout\,
	datad => \i_RISCV|i_Path|alur_out\(1),
	combout => \i_RISCV|i_Path|pc_in[1]~32_combout\);

-- Location: LCFF_X25_Y16_N17
\i_RISCV|i_Path|pc_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|pc_in[1]~32_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_out\(1));

-- Location: LCCOMB_X25_Y16_N12
\i_RISCV|i_Path|Mux30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux30~0_combout\ = (\i_RISCV|i_Path|Mux24~0_combout\ & ((\i_RISCV|i_Path|Mux24~1_combout\) # ((\i_RISCV|i_Path|pc_out\(1))))) # (!\i_RISCV|i_Path|Mux24~0_combout\ & (!\i_RISCV|i_Path|Mux24~1_combout\ & ((\i_RISCV|i_Path|alur_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|Mux24~0_combout\,
	datab => \i_RISCV|i_Path|Mux24~1_combout\,
	datac => \i_RISCV|i_Path|pc_out\(1),
	datad => \i_RISCV|i_Path|alur_out\(1),
	combout => \i_RISCV|i_Path|Mux30~0_combout\);

-- Location: LCCOMB_X23_Y16_N24
\i_RISCV|i_Path|Mux30~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux30~1_combout\ = (\i_RISCV|i_Path|Mux24~1_combout\ & ((\i_RISCV|i_Path|Mux30~0_combout\ & (dout_PSP(1))) # (!\i_RISCV|i_Path|Mux30~0_combout\ & ((dout_PEP(1)))))) # (!\i_RISCV|i_Path|Mux24~1_combout\ & 
-- (((\i_RISCV|i_Path|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dout_PSP(1),
	datab => \i_RISCV|i_Path|Mux24~1_combout\,
	datac => dout_PEP(1),
	datad => \i_RISCV|i_Path|Mux30~0_combout\,
	combout => \i_RISCV|i_Path|Mux30~1_combout\);

-- Location: LCCOMB_X20_Y14_N26
\i_RISCV|i_Path|Mux30~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux30~2_combout\ = (!\i_RISCV|i_Control|estado_act.lui3~regout\ & (\i_RISCV|i_Path|Mux30~1_combout\ & ((\i_RISCV|i_Path|alur_out\(31)) # (!\i_RISCV|i_Path|Mux24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|alur_out\(31),
	datab => \i_RISCV|i_Control|estado_act.lui3~regout\,
	datac => \i_RISCV|i_Path|Mux30~1_combout\,
	datad => \i_RISCV|i_Path|Mux24~1_combout\,
	combout => \i_RISCV|i_Path|Mux30~2_combout\);

-- Location: LCCOMB_X20_Y14_N16
\i_RISCV|i_Path|i_BancoReg|reg[1][1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_BancoReg|reg[1][1]~feeder_combout\ = \i_RISCV|i_Path|Mux30~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_RISCV|i_Path|Mux30~2_combout\,
	combout => \i_RISCV|i_Path|i_BancoReg|reg[1][1]~feeder_combout\);

-- Location: LCFF_X20_Y14_N17
\i_RISCV|i_Path|i_BancoReg|reg[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_BancoReg|reg[1][1]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[1][1]~regout\);

-- Location: LCFF_X21_Y14_N15
\i_RISCV|i_Path|i_BancoReg|reg[5][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux30~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[5][1]~regout\);

-- Location: LCCOMB_X21_Y14_N14
\i_RISCV|i_Path|a[1]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[1]~94_combout\ = (\i_RISCV|i_Path|a[1]~93_combout\ & (((\i_RISCV|i_Path|i_BancoReg|reg[5][1]~regout\) # (!\i_RISCV|i_Path|a[14]~1_combout\)))) # (!\i_RISCV|i_Path|a[1]~93_combout\ & (\i_RISCV|i_Path|i_BancoReg|reg[1][1]~regout\ & 
-- ((\i_RISCV|i_Path|a[14]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[1]~93_combout\,
	datab => \i_RISCV|i_Path|i_BancoReg|reg[1][1]~regout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[5][1]~regout\,
	datad => \i_RISCV|i_Path|a[14]~1_combout\,
	combout => \i_RISCV|i_Path|a[1]~94_combout\);

-- Location: LCCOMB_X22_Y14_N0
\i_RISCV|i_Path|a[1]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[1]~95_combout\ = (\i_RISCV|i_Control|estado_act.Fetch~regout\ & (\i_RISCV|i_Path|pc_out\(1))) # (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & ((\i_RISCV|i_Path|a[1]~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|pc_out\(1),
	datab => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datad => \i_RISCV|i_Path|a[1]~94_combout\,
	combout => \i_RISCV|i_Path|a[1]~95_combout\);

-- Location: LCCOMB_X25_Y11_N12
\i_RISCV|i_Path|i_ROM|memory~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ROM|memory~7_combout\ = (!\i_RISCV|i_Path|pc_in[5]~4_combout\ & (\i_RISCV|i_Path|pc_in[3]~5_combout\ $ (((\i_RISCV|i_Path|pc_in[2]~3_combout\) # (\i_RISCV|i_Path|pc_in[4]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|pc_in[3]~5_combout\,
	datab => \i_RISCV|i_Path|pc_in[2]~3_combout\,
	datac => \i_RISCV|i_Path|pc_in[5]~4_combout\,
	datad => \i_RISCV|i_Path|pc_in[4]~2_combout\,
	combout => \i_RISCV|i_Path|i_ROM|memory~7_combout\);

-- Location: LCFF_X25_Y11_N13
\i_RISCV|i_Path|i_ROM|data[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ROM|memory~7_combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_ROM|data\(17));

-- Location: LCFF_X21_Y15_N29
\i_RISCV|i_Path|ir_out_m[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|i_ROM|data\(17),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|ir_out_m\(17));

-- Location: LCFF_X21_Y17_N29
\i_RISCV|i_Path|pc_ir[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|pc_out\(3),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_ir\(3));

-- Location: LCCOMB_X21_Y17_N28
\i_RISCV|i_Path|a[3]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[3]~87_combout\ = (\i_RISCV|i_Control|estado_act.Decod~regout\ & (((\i_RISCV|i_Path|pc_ir\(3))))) # (!\i_RISCV|i_Control|estado_act.Decod~regout\ & ((\i_RISCV|i_Control|estado_act.auipc3~regout\ & ((\i_RISCV|i_Path|pc_ir\(3)))) # 
-- (!\i_RISCV|i_Control|estado_act.auipc3~regout\ & (\i_RISCV|i_Path|ir_out_m\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Decod~regout\,
	datab => \i_RISCV|i_Path|ir_out_m\(17),
	datac => \i_RISCV|i_Path|pc_ir\(3),
	datad => \i_RISCV|i_Control|estado_act.auipc3~regout\,
	combout => \i_RISCV|i_Path|a[3]~87_combout\);

-- Location: LCCOMB_X22_Y17_N24
\i_RISCV|i_Path|i_BancoReg|reg[6][3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_BancoReg|reg[6][3]~feeder_combout\ = \i_RISCV|i_Path|Mux28~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_RISCV|i_Path|Mux28~2_combout\,
	combout => \i_RISCV|i_Path|i_BancoReg|reg[6][3]~feeder_combout\);

-- Location: LCCOMB_X21_Y13_N16
\i_RISCV|i_Path|i_BancoReg|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_BancoReg|Equal0~1_combout\ = (!\i_RISCV|i_Path|ir_out_m\(7) & (\i_RISCV|i_Path|ir_out_m\(9) & (\i_RISCV|i_Path|i_BancoReg|Equal0~0_combout\ & \i_RISCV|i_Path|ir_out_m\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|ir_out_m\(7),
	datab => \i_RISCV|i_Path|ir_out_m\(9),
	datac => \i_RISCV|i_Path|i_BancoReg|Equal0~0_combout\,
	datad => \i_RISCV|i_Path|ir_out_m\(8),
	combout => \i_RISCV|i_Path|i_BancoReg|Equal0~1_combout\);

-- Location: LCFF_X22_Y17_N25
\i_RISCV|i_Path|i_BancoReg|reg[6][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_BancoReg|reg[6][3]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[6][3]~regout\);

-- Location: LCCOMB_X22_Y14_N22
\i_RISCV|i_Path|i_BancoReg|Mux60~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_BancoReg|Mux60~0_combout\ = (!\i_RISCV|i_Path|ir_out_m\(24) & (\i_RISCV|i_Path|i_BancoReg|reg[6][3]~regout\ & \i_RISCV|i_Path|ir_out_m\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|ir_out_m\(24),
	datab => \i_RISCV|i_Path|i_BancoReg|reg[6][3]~regout\,
	datad => \i_RISCV|i_Path|ir_out_m\(21),
	combout => \i_RISCV|i_Path|i_BancoReg|Mux60~0_combout\);

-- Location: LCCOMB_X23_Y16_N18
\i_RISCV|i_Control|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Control|Selector9~0_combout\ = (\i_RISCV|i_Path|ir_out_m\(5) & (\i_RISCV|i_Control|Equal1~0_combout\ & \i_RISCV|i_Control|estado_act.lwsw3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|ir_out_m\(5),
	datac => \i_RISCV|i_Control|Equal1~0_combout\,
	datad => \i_RISCV|i_Control|estado_act.lwsw3~regout\,
	combout => \i_RISCV|i_Control|Selector9~0_combout\);

-- Location: LCFF_X23_Y16_N19
\i_RISCV|i_Control|estado_act.sw4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Control|Selector9~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Control|estado_act.sw4~regout\);

-- Location: LCCOMB_X23_Y16_N8
\p_PSP~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p_PSP~0_combout\ = (\i_RISCV|i_Path|alur_out\(31) & \i_RISCV|i_Control|estado_act.sw4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|alur_out\(31),
	datad => \i_RISCV|i_Control|estado_act.sw4~regout\,
	combout => \p_PSP~0_combout\);

-- Location: LCFF_X22_Y14_N23
\dout_PSP[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_BancoReg|Mux60~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \p_PSP~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dout_PSP(3));

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_pins[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_in_pins(3),
	combout => \in_pins~combout\(3));

-- Location: LCCOMB_X26_Y11_N14
\mid_PEP[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mid_PEP[3]~feeder_combout\ = \in_pins~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_pins~combout\(3),
	combout => \mid_PEP[3]~feeder_combout\);

-- Location: LCFF_X26_Y11_N15
\mid_PEP[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \mid_PEP[3]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mid_PEP(3));

-- Location: LCFF_X26_Y11_N21
\dout_PEP[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => mid_PEP(3),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dout_PEP(3));

-- Location: LCCOMB_X26_Y11_N20
\i_RISCV|i_Path|Mux28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux28~0_combout\ = (\i_RISCV|i_Path|Mux24~0_combout\ & (((\i_RISCV|i_Path|Mux24~1_combout\)))) # (!\i_RISCV|i_Path|Mux24~0_combout\ & ((\i_RISCV|i_Path|Mux24~1_combout\ & ((dout_PEP(3)))) # (!\i_RISCV|i_Path|Mux24~1_combout\ & 
-- (\i_RISCV|i_Path|alur_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|Mux24~0_combout\,
	datab => \i_RISCV|i_Path|alur_out\(3),
	datac => dout_PEP(3),
	datad => \i_RISCV|i_Path|Mux24~1_combout\,
	combout => \i_RISCV|i_Path|Mux28~0_combout\);

-- Location: LCCOMB_X22_Y17_N22
\i_RISCV|i_Path|Mux28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux28~1_combout\ = (\i_RISCV|i_Path|Mux24~0_combout\ & ((\i_RISCV|i_Path|Mux28~0_combout\ & (dout_PSP(3))) # (!\i_RISCV|i_Path|Mux28~0_combout\ & ((\i_RISCV|i_Path|pc_out\(3)))))) # (!\i_RISCV|i_Path|Mux24~0_combout\ & 
-- (((\i_RISCV|i_Path|Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|Mux24~0_combout\,
	datab => dout_PSP(3),
	datac => \i_RISCV|i_Path|pc_out\(3),
	datad => \i_RISCV|i_Path|Mux28~0_combout\,
	combout => \i_RISCV|i_Path|Mux28~1_combout\);

-- Location: LCCOMB_X22_Y17_N28
\i_RISCV|i_Path|Mux28~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux28~2_combout\ = (!\i_RISCV|i_Control|estado_act.lui3~regout\ & (\i_RISCV|i_Path|Mux28~1_combout\ & ((\i_RISCV|i_Path|alur_out\(31)) # (!\i_RISCV|i_Path|Mux24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|alur_out\(31),
	datab => \i_RISCV|i_Path|Mux24~1_combout\,
	datac => \i_RISCV|i_Control|estado_act.lui3~regout\,
	datad => \i_RISCV|i_Path|Mux28~1_combout\,
	combout => \i_RISCV|i_Path|Mux28~2_combout\);

-- Location: LCFF_X21_Y17_N15
\i_RISCV|i_Path|i_BancoReg|reg[1][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux28~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[1][3]~regout\);

-- Location: LCCOMB_X21_Y17_N14
\i_RISCV|i_Path|a[3]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[3]~88_combout\ = (\i_RISCV|i_Path|a[3]~87_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[5][3]~regout\) # ((!\i_RISCV|i_Path|a[14]~1_combout\)))) # (!\i_RISCV|i_Path|a[3]~87_combout\ & (((\i_RISCV|i_Path|i_BancoReg|reg[1][3]~regout\ & 
-- \i_RISCV|i_Path|a[14]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_BancoReg|reg[5][3]~regout\,
	datab => \i_RISCV|i_Path|a[3]~87_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[1][3]~regout\,
	datad => \i_RISCV|i_Path|a[14]~1_combout\,
	combout => \i_RISCV|i_Path|a[3]~88_combout\);

-- Location: LCCOMB_X22_Y17_N20
\i_RISCV|i_Path|a[3]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[3]~89_combout\ = (\i_RISCV|i_Control|estado_act.Fetch~regout\ & (\i_RISCV|i_Path|pc_out\(3))) # (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & ((\i_RISCV|i_Path|a[3]~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datac => \i_RISCV|i_Path|pc_out\(3),
	datad => \i_RISCV|i_Path|a[3]~88_combout\,
	combout => \i_RISCV|i_Path|a[3]~89_combout\);

-- Location: LCCOMB_X26_Y12_N18
\dout_PSP[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout_PSP[2]~feeder_combout\ = \i_RISCV|i_Path|i_BancoReg|Mux61~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_RISCV|i_Path|i_BancoReg|Mux61~0_combout\,
	combout => \dout_PSP[2]~feeder_combout\);

-- Location: LCFF_X26_Y12_N19
\dout_PSP[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dout_PSP[2]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \p_PSP~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dout_PSP(2));

-- Location: LCFF_X24_Y14_N3
\i_RISCV|i_Path|pc_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|pc_in[2]~3_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_out\(2));

-- Location: LCCOMB_X24_Y14_N20
\i_RISCV|i_Path|Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux24~0_combout\ = (\i_RISCV|i_Control|estado_act.Jalr~regout\) # ((!\i_RISCV|i_Path|alur_out\(2) & \i_RISCV|i_Control|estado_act.lw5~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|alur_out\(2),
	datab => \i_RISCV|i_Control|estado_act.Jalr~regout\,
	datad => \i_RISCV|i_Control|estado_act.lw5~regout\,
	combout => \i_RISCV|i_Path|Mux24~0_combout\);

-- Location: LCCOMB_X26_Y12_N0
\i_RISCV|i_Path|Mux29~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux29~1_combout\ = (\i_RISCV|i_Path|Mux29~0_combout\ & ((dout_PSP(2)) # ((!\i_RISCV|i_Path|Mux24~0_combout\)))) # (!\i_RISCV|i_Path|Mux29~0_combout\ & (((\i_RISCV|i_Path|pc_out\(2) & \i_RISCV|i_Path|Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|Mux29~0_combout\,
	datab => dout_PSP(2),
	datac => \i_RISCV|i_Path|pc_out\(2),
	datad => \i_RISCV|i_Path|Mux24~0_combout\,
	combout => \i_RISCV|i_Path|Mux29~1_combout\);

-- Location: LCCOMB_X20_Y14_N4
\i_RISCV|i_Path|Mux29~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux29~2_combout\ = (!\i_RISCV|i_Control|estado_act.lui3~regout\ & (\i_RISCV|i_Path|Mux29~1_combout\ & ((\i_RISCV|i_Path|alur_out\(31)) # (!\i_RISCV|i_Path|Mux24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|Mux24~1_combout\,
	datab => \i_RISCV|i_Control|estado_act.lui3~regout\,
	datac => \i_RISCV|i_Path|Mux29~1_combout\,
	datad => \i_RISCV|i_Path|alur_out\(31),
	combout => \i_RISCV|i_Path|Mux29~2_combout\);

-- Location: LCFF_X20_Y15_N9
\i_RISCV|i_Path|i_BancoReg|reg[6][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux29~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[6][2]~regout\);

-- Location: LCCOMB_X20_Y15_N8
\i_RISCV|i_Path|i_BancoReg|Mux61~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_BancoReg|Mux61~0_combout\ = (!\i_RISCV|i_Path|ir_out_m\(24) & (\i_RISCV|i_Path|i_BancoReg|reg[6][2]~regout\ & \i_RISCV|i_Path|ir_out_m\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RISCV|i_Path|ir_out_m\(24),
	datac => \i_RISCV|i_Path|i_BancoReg|reg[6][2]~regout\,
	datad => \i_RISCV|i_Path|ir_out_m\(21),
	combout => \i_RISCV|i_Path|i_BancoReg|Mux61~0_combout\);

-- Location: LCCOMB_X21_Y14_N8
\i_RISCV|i_Path|b[2]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[2]~89_combout\ = (\i_RISCV|i_Control|estado_act.Fetch~regout\) # ((!\i_RISCV|i_Control|estado_act.Jalr~regout\ & (\i_RISCV|i_Path|i_BancoReg|Mux61~0_combout\ & \i_RISCV|i_Control|WideOr9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datab => \i_RISCV|i_Control|estado_act.Jalr~regout\,
	datac => \i_RISCV|i_Path|i_BancoReg|Mux61~0_combout\,
	datad => \i_RISCV|i_Control|WideOr9~0_combout\,
	combout => \i_RISCV|i_Path|b[2]~89_combout\);

-- Location: LCCOMB_X21_Y14_N6
\i_RISCV|i_Path|b[2]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[2]~96_combout\ = (\i_RISCV|i_Path|ir_out_m\(21) & (\i_RISCV|i_Path|i_genInm|inm~10_combout\ & ((\i_RISCV|i_Control|estado_act.Jalr~regout\) # (!\i_RISCV|i_Control|WideOr9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|WideOr9~0_combout\,
	datab => \i_RISCV|i_Control|estado_act.Jalr~regout\,
	datac => \i_RISCV|i_Path|ir_out_m\(21),
	datad => \i_RISCV|i_Path|i_genInm|inm~10_combout\,
	combout => \i_RISCV|i_Path|b[2]~96_combout\);

-- Location: LCCOMB_X21_Y14_N16
\i_RISCV|i_Path|b[2]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[2]~90_combout\ = (\i_RISCV|i_Path|b[2]~89_combout\) # ((\i_RISCV|i_Path|b[2]~96_combout\) # ((\i_RISCV|i_Path|b[2]~87_combout\ & \i_RISCV|i_Path|ir_out_m\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[2]~87_combout\,
	datab => \i_RISCV|i_Path|b[2]~89_combout\,
	datac => \i_RISCV|i_Path|ir_out_m\(9),
	datad => \i_RISCV|i_Path|b[2]~96_combout\,
	combout => \i_RISCV|i_Path|b[2]~90_combout\);

-- Location: LCCOMB_X23_Y14_N20
\i_RISCV|i_Path|i_ALU|i1_sr|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~4_combout\ = ((\i_RISCV|i_Path|a[2]~92_combout\ $ (\i_RISCV|i_Path|b[2]~90_combout\ $ (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~3\)))) # (GND)
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~5\ = CARRY((\i_RISCV|i_Path|a[2]~92_combout\ & ((!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~3\) # (!\i_RISCV|i_Path|b[2]~90_combout\))) # (!\i_RISCV|i_Path|a[2]~92_combout\ & (!\i_RISCV|i_Path|b[2]~90_combout\ & 
-- !\i_RISCV|i_Path|i_ALU|i1_sr|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[2]~92_combout\,
	datab => \i_RISCV|i_Path|b[2]~90_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~3\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~4_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~5\);

-- Location: LCCOMB_X23_Y14_N22
\i_RISCV|i_Path|i_ALU|i1_sr|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~6_combout\ = (\i_RISCV|i_Path|b[3]~88_combout\ & ((\i_RISCV|i_Path|a[3]~89_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~5\)) # (!\i_RISCV|i_Path|a[3]~89_combout\ & ((\i_RISCV|i_Path|i_ALU|i1_sr|Add0~5\) # (GND))))) # 
-- (!\i_RISCV|i_Path|b[3]~88_combout\ & ((\i_RISCV|i_Path|a[3]~89_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~5\ & VCC)) # (!\i_RISCV|i_Path|a[3]~89_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~5\))))
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~7\ = CARRY((\i_RISCV|i_Path|b[3]~88_combout\ & ((!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~5\) # (!\i_RISCV|i_Path|a[3]~89_combout\))) # (!\i_RISCV|i_Path|b[3]~88_combout\ & (!\i_RISCV|i_Path|a[3]~89_combout\ & 
-- !\i_RISCV|i_Path|i_ALU|i1_sr|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[3]~88_combout\,
	datab => \i_RISCV|i_Path|a[3]~89_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~5\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~6_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~7\);

-- Location: LCCOMB_X24_Y14_N10
\i_RISCV|i_Path|i_ALU|Mux28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|Mux28~0_combout\ = (!\i_RISCV|i_Control|Selector16~0_combout\ & ((\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & ((\i_RISCV|i_Path|i_ALU|i1_sr|Add0~6_combout\))) # (!\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & 
-- (\i_RISCV|i_Path|i_ALU|i1_sr|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~6_combout\,
	datab => \i_RISCV|i_Path|i_ALU|Mux0~0_combout\,
	datac => \i_RISCV|i_Control|Selector16~0_combout\,
	datad => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~6_combout\,
	combout => \i_RISCV|i_Path|i_ALU|Mux28~0_combout\);

-- Location: LCFF_X24_Y14_N11
\i_RISCV|i_Path|alur_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ALU|Mux28~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|alur_out\(3));

-- Location: LCCOMB_X24_Y14_N14
\i_RISCV|i_Path|pc_in[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|pc_in[3]~5_combout\ = (\i_RISCV|i_Control|estado_act.SalCond~regout\ & (((\i_RISCV|i_Path|alur_out\(3))))) # (!\i_RISCV|i_Control|estado_act.SalCond~regout\ & (\i_RISCV|i_Control|estado_act.Reset~regout\ & 
-- ((\i_RISCV|i_Path|i_ALU|Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Reset~regout\,
	datab => \i_RISCV|i_Path|alur_out\(3),
	datac => \i_RISCV|i_Control|estado_act.SalCond~regout\,
	datad => \i_RISCV|i_Path|i_ALU|Mux28~0_combout\,
	combout => \i_RISCV|i_Path|pc_in[3]~5_combout\);

-- Location: LCFF_X24_Y14_N9
\i_RISCV|i_Path|pc_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|pc_in[3]~5_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_out\(3));

-- Location: LCCOMB_X22_Y17_N16
\i_RISCV|i_Path|b[3]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[3]~86_combout\ = (\i_RISCV|i_Path|i_BancoReg|reg[6][3]~regout\ & (!\i_RISCV|i_Path|ir_out_m\(24) & (\i_RISCV|i_Path|ir_out_m\(21) & !\i_RISCV|i_Path|b[26]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_BancoReg|reg[6][3]~regout\,
	datab => \i_RISCV|i_Path|ir_out_m\(24),
	datac => \i_RISCV|i_Path|ir_out_m\(21),
	datad => \i_RISCV|i_Path|b[26]~5_combout\,
	combout => \i_RISCV|i_Path|b[3]~86_combout\);

-- Location: LCCOMB_X22_Y17_N30
\i_RISCV|i_Path|b[3]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[3]~88_combout\ = (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & ((\i_RISCV|i_Path|b[3]~86_combout\) # ((\i_RISCV|i_Path|ir_out_m\(10) & \i_RISCV|i_Path|b[2]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|ir_out_m\(10),
	datab => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datac => \i_RISCV|i_Path|b[3]~86_combout\,
	datad => \i_RISCV|i_Path|b[2]~87_combout\,
	combout => \i_RISCV|i_Path|b[3]~88_combout\);

-- Location: LCCOMB_X22_Y17_N26
\i_RISCV|i_Path|i_ALU|Equal2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|Equal2~3_combout\ = \i_RISCV|i_Path|b[3]~88_combout\ $ (((\i_RISCV|i_Control|estado_act.Fetch~regout\ & ((\i_RISCV|i_Path|pc_out\(3)))) # (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & (\i_RISCV|i_Path|a[3]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[3]~88_combout\,
	datab => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datac => \i_RISCV|i_Path|pc_out\(3),
	datad => \i_RISCV|i_Path|b[3]~88_combout\,
	combout => \i_RISCV|i_Path|i_ALU|Equal2~3_combout\);

-- Location: LCCOMB_X21_Y16_N20
\i_RISCV|i_Path|Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux20~0_combout\ = (\i_RISCV|i_Control|estado_act.Jalr~regout\ & (((\i_RISCV|i_Path|pc_out\(11))))) # (!\i_RISCV|i_Control|estado_act.Jalr~regout\ & (\i_RISCV|i_Path|Mux23~0_combout\ & (\i_RISCV|i_Path|alur_out\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|Mux23~0_combout\,
	datab => \i_RISCV|i_Path|alur_out\(11),
	datac => \i_RISCV|i_Path|pc_out\(11),
	datad => \i_RISCV|i_Control|estado_act.Jalr~regout\,
	combout => \i_RISCV|i_Path|Mux20~0_combout\);

-- Location: LCCOMB_X21_Y13_N24
\i_RISCV|i_Path|i_BancoReg|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_BancoReg|Equal0~2_combout\ = (!\i_RISCV|i_Path|ir_out_m\(7) & (\i_RISCV|i_Path|ir_out_m\(9) & (\i_RISCV|i_Path|i_BancoReg|Equal0~0_combout\ & !\i_RISCV|i_Path|ir_out_m\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|ir_out_m\(7),
	datab => \i_RISCV|i_Path|ir_out_m\(9),
	datac => \i_RISCV|i_Path|i_BancoReg|Equal0~0_combout\,
	datad => \i_RISCV|i_Path|ir_out_m\(8),
	combout => \i_RISCV|i_Path|i_BancoReg|Equal0~2_combout\);

-- Location: LCFF_X26_Y15_N31
\i_RISCV|i_Path|i_BancoReg|reg[4][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux20~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[4][11]~regout\);

-- Location: LCCOMB_X22_Y15_N2
\i_RISCV|i_Path|b[26]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[26]~6_combout\ = (\i_RISCV|i_Control|estado_act.Jalr~regout\) # (((\i_RISCV|i_Path|ir_out_m\(21) & !\i_RISCV|i_Path|ir_out_m\(24))) # (!\i_RISCV|i_Control|WideOr9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|ir_out_m\(21),
	datab => \i_RISCV|i_Control|estado_act.Jalr~regout\,
	datac => \i_RISCV|i_Path|ir_out_m\(24),
	datad => \i_RISCV|i_Control|WideOr9~0_combout\,
	combout => \i_RISCV|i_Path|b[26]~6_combout\);

-- Location: LCCOMB_X21_Y13_N26
\i_RISCV|i_Path|i_BancoReg|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_BancoReg|Equal0~3_combout\ = (!\i_RISCV|i_Path|ir_out_m\(7) & (!\i_RISCV|i_Path|ir_out_m\(9) & (\i_RISCV|i_Path|i_BancoReg|Equal0~0_combout\ & \i_RISCV|i_Path|ir_out_m\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|ir_out_m\(7),
	datab => \i_RISCV|i_Path|ir_out_m\(9),
	datac => \i_RISCV|i_Path|i_BancoReg|Equal0~0_combout\,
	datad => \i_RISCV|i_Path|ir_out_m\(8),
	combout => \i_RISCV|i_Path|i_BancoReg|Equal0~3_combout\);

-- Location: LCFF_X26_Y15_N1
\i_RISCV|i_Path|i_BancoReg|reg[2][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux20~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[2][11]~regout\);

-- Location: LCCOMB_X22_Y15_N24
\i_RISCV|i_Control|WideOr12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Control|WideOr12~0_combout\ = (!\i_RISCV|i_Control|estado_act.auipc3~regout\ & (!\i_RISCV|i_Control|estado_act.Decod~regout\ & !\i_RISCV|i_Control|estado_act.lui3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RISCV|i_Control|estado_act.auipc3~regout\,
	datac => \i_RISCV|i_Control|estado_act.Decod~regout\,
	datad => \i_RISCV|i_Control|estado_act.lui3~regout\,
	combout => \i_RISCV|i_Control|WideOr12~0_combout\);

-- Location: LCCOMB_X25_Y11_N16
\i_RISCV|i_Path|i_ROM|memory~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ROM|memory~5_combout\ = (!\i_RISCV|i_Path|pc_in[5]~4_combout\ & ((\i_RISCV|i_Path|pc_in[2]~3_combout\ & ((!\i_RISCV|i_Path|pc_in[4]~2_combout\))) # (!\i_RISCV|i_Path|pc_in[2]~3_combout\ & ((\i_RISCV|i_Path|pc_in[4]~2_combout\) # 
-- (!\i_RISCV|i_Path|pc_in[3]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|pc_in[3]~5_combout\,
	datab => \i_RISCV|i_Path|pc_in[2]~3_combout\,
	datac => \i_RISCV|i_Path|pc_in[5]~4_combout\,
	datad => \i_RISCV|i_Path|pc_in[4]~2_combout\,
	combout => \i_RISCV|i_Path|i_ROM|memory~5_combout\);

-- Location: LCFF_X25_Y11_N17
\i_RISCV|i_Path|i_ROM|data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ROM|memory~5_combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_ROM|data\(7));

-- Location: LCFF_X23_Y15_N19
\i_RISCV|i_Path|ir_out_m[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|i_ROM|data\(7),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|ir_out_m\(7));

-- Location: LCCOMB_X23_Y15_N18
\i_RISCV|i_Path|i_genInm|inm[11]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_genInm|inm[11]~6_combout\ = (\i_RISCV|i_Control|WideOr12~0_combout\ & (\i_RISCV|i_Path|ir_out_m\(31))) # (!\i_RISCV|i_Control|WideOr12~0_combout\ & (((\i_RISCV|i_Path|ir_out_m\(7) & \i_RISCV|i_Control|Selector18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|ir_out_m\(31),
	datab => \i_RISCV|i_Control|WideOr12~0_combout\,
	datac => \i_RISCV|i_Path|ir_out_m\(7),
	datad => \i_RISCV|i_Control|Selector18~0_combout\,
	combout => \i_RISCV|i_Path|i_genInm|inm[11]~6_combout\);

-- Location: LCCOMB_X26_Y15_N0
\i_RISCV|i_Path|b[11]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[11]~67_combout\ = (\i_RISCV|i_Path|b[26]~5_combout\ & ((\i_RISCV|i_Path|b[26]~6_combout\ & ((\i_RISCV|i_Path|i_genInm|inm[11]~6_combout\))) # (!\i_RISCV|i_Path|b[26]~6_combout\ & (\i_RISCV|i_Path|i_BancoReg|reg[2][11]~regout\)))) # 
-- (!\i_RISCV|i_Path|b[26]~5_combout\ & (\i_RISCV|i_Path|b[26]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[26]~5_combout\,
	datab => \i_RISCV|i_Path|b[26]~6_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[2][11]~regout\,
	datad => \i_RISCV|i_Path|i_genInm|inm[11]~6_combout\,
	combout => \i_RISCV|i_Path|b[11]~67_combout\);

-- Location: LCCOMB_X26_Y15_N30
\i_RISCV|i_Path|b[11]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[11]~68_combout\ = (\i_RISCV|i_Path|b[26]~4_combout\ & ((\i_RISCV|i_Path|b[11]~67_combout\ & (\i_RISCV|i_Path|i_BancoReg|reg[6][11]~regout\)) # (!\i_RISCV|i_Path|b[11]~67_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[4][11]~regout\))))) # 
-- (!\i_RISCV|i_Path|b[26]~4_combout\ & (((\i_RISCV|i_Path|b[11]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_BancoReg|reg[6][11]~regout\,
	datab => \i_RISCV|i_Path|b[26]~4_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[4][11]~regout\,
	datad => \i_RISCV|i_Path|b[11]~67_combout\,
	combout => \i_RISCV|i_Path|b[11]~68_combout\);

-- Location: LCCOMB_X26_Y15_N6
\i_RISCV|i_Path|b[11]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[11]~69_combout\ = (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & \i_RISCV|i_Path|b[11]~68_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datad => \i_RISCV|i_Path|b[11]~68_combout\,
	combout => \i_RISCV|i_Path|b[11]~69_combout\);

-- Location: LCFF_X24_Y15_N5
\i_RISCV|i_Path|i_BancoReg|reg[4][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux21~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[4][10]~regout\);

-- Location: LCFF_X23_Y15_N17
\i_RISCV|i_Path|i_BancoReg|reg[2][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux21~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[2][10]~regout\);

-- Location: LCCOMB_X23_Y15_N16
\i_RISCV|i_Path|b[10]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[10]~70_combout\ = (\i_RISCV|i_Path|b[26]~5_combout\ & ((\i_RISCV|i_Path|b[26]~6_combout\ & (\i_RISCV|i_Path|i_genInm|inm[8]~8_combout\)) # (!\i_RISCV|i_Path|b[26]~6_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[2][10]~regout\))))) # 
-- (!\i_RISCV|i_Path|b[26]~5_combout\ & (((\i_RISCV|i_Path|b[26]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_genInm|inm[8]~8_combout\,
	datab => \i_RISCV|i_Path|b[26]~5_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[2][10]~regout\,
	datad => \i_RISCV|i_Path|b[26]~6_combout\,
	combout => \i_RISCV|i_Path|b[10]~70_combout\);

-- Location: LCCOMB_X24_Y15_N4
\i_RISCV|i_Path|b[10]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[10]~71_combout\ = (\i_RISCV|i_Path|b[26]~4_combout\ & ((\i_RISCV|i_Path|b[10]~70_combout\ & (\i_RISCV|i_Path|i_BancoReg|reg[6][10]~regout\)) # (!\i_RISCV|i_Path|b[10]~70_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[4][10]~regout\))))) # 
-- (!\i_RISCV|i_Path|b[26]~4_combout\ & (((\i_RISCV|i_Path|b[10]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_BancoReg|reg[6][10]~regout\,
	datab => \i_RISCV|i_Path|b[26]~4_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[4][10]~regout\,
	datad => \i_RISCV|i_Path|b[10]~70_combout\,
	combout => \i_RISCV|i_Path|b[10]~71_combout\);

-- Location: LCCOMB_X24_Y15_N6
\i_RISCV|i_Path|b[10]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[10]~72_combout\ = (\i_RISCV|i_Path|b[10]~71_combout\ & !\i_RISCV|i_Control|estado_act.Fetch~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_RISCV|i_Path|b[10]~71_combout\,
	datad => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	combout => \i_RISCV|i_Path|b[10]~72_combout\);

-- Location: LCCOMB_X23_Y14_N0
\i_RISCV|i_Path|b[7]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[7]~81_combout\ = (!\i_RISCV|i_Control|estado_act.Jalr~regout\ & (\i_RISCV|i_Path|ir_out_m\(21) & \i_RISCV|i_Control|WideOr9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Jalr~regout\,
	datac => \i_RISCV|i_Path|ir_out_m\(21),
	datad => \i_RISCV|i_Control|WideOr9~0_combout\,
	combout => \i_RISCV|i_Path|b[7]~81_combout\);

-- Location: LCCOMB_X26_Y11_N18
\i_RISCV|i_Path|i_BancoReg|Mux57~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_BancoReg|Mux57~0_combout\ = (\i_RISCV|i_Path|ir_out_m\(21) & (!\i_RISCV|i_Path|ir_out_m\(24) & \i_RISCV|i_Path|i_BancoReg|reg[6][6]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RISCV|i_Path|ir_out_m\(21),
	datac => \i_RISCV|i_Path|ir_out_m\(24),
	datad => \i_RISCV|i_Path|i_BancoReg|reg[6][6]~regout\,
	combout => \i_RISCV|i_Path|i_BancoReg|Mux57~0_combout\);

-- Location: LCFF_X26_Y11_N19
\dout_PSP[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_BancoReg|Mux57~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \p_PSP~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dout_PSP(6));

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_pins[6]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_in_pins(6),
	combout => \in_pins~combout\(6));

-- Location: LCFF_X26_Y11_N31
\mid_PEP[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \in_pins~combout\(6),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mid_PEP(6));

-- Location: LCFF_X26_Y11_N7
\dout_PEP[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => mid_PEP(6),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dout_PEP(6));

-- Location: LCFF_X25_Y11_N21
\i_RISCV|i_Path|pc_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|pc_in[5]~4_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_out\(5));

-- Location: LCFF_X21_Y17_N17
\i_RISCV|i_Path|pc_ir[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|pc_out\(5),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_ir\(5));

-- Location: LCCOMB_X21_Y17_N16
\i_RISCV|i_Path|a[5]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[5]~80_combout\ = (\i_RISCV|i_Control|estado_act.Decod~regout\ & (((\i_RISCV|i_Path|pc_ir\(5))))) # (!\i_RISCV|i_Control|estado_act.Decod~regout\ & ((\i_RISCV|i_Control|estado_act.auipc3~regout\ & ((\i_RISCV|i_Path|pc_ir\(5)))) # 
-- (!\i_RISCV|i_Control|estado_act.auipc3~regout\ & (\i_RISCV|i_Path|ir_out_m\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Decod~regout\,
	datab => \i_RISCV|i_Path|ir_out_m\(17),
	datac => \i_RISCV|i_Path|pc_ir\(5),
	datad => \i_RISCV|i_Control|estado_act.auipc3~regout\,
	combout => \i_RISCV|i_Path|a[5]~80_combout\);

-- Location: LCFF_X22_Y17_N19
\i_RISCV|i_Path|i_BancoReg|reg[1][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux26~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[1][5]~regout\);

-- Location: LCCOMB_X22_Y17_N18
\i_RISCV|i_Path|a[5]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[5]~81_combout\ = (\i_RISCV|i_Path|a[5]~80_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[5][5]~regout\) # ((!\i_RISCV|i_Path|a[14]~1_combout\)))) # (!\i_RISCV|i_Path|a[5]~80_combout\ & (((\i_RISCV|i_Path|i_BancoReg|reg[1][5]~regout\ & 
-- \i_RISCV|i_Path|a[14]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_BancoReg|reg[5][5]~regout\,
	datab => \i_RISCV|i_Path|a[5]~80_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[1][5]~regout\,
	datad => \i_RISCV|i_Path|a[14]~1_combout\,
	combout => \i_RISCV|i_Path|a[5]~81_combout\);

-- Location: LCCOMB_X23_Y14_N14
\i_RISCV|i_Path|a[5]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[5]~82_combout\ = (\i_RISCV|i_Control|estado_act.Fetch~regout\ & (\i_RISCV|i_Path|pc_out\(5))) # (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & ((\i_RISCV|i_Path|a[5]~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datac => \i_RISCV|i_Path|pc_out\(5),
	datad => \i_RISCV|i_Path|a[5]~81_combout\,
	combout => \i_RISCV|i_Path|a[5]~82_combout\);

-- Location: LCCOMB_X23_Y14_N24
\i_RISCV|i_Path|i_ALU|i1_sr|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~8_combout\ = ((\i_RISCV|i_Path|a[4]~86_combout\ $ (\i_RISCV|i_Path|b[4]~85_combout\ $ (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~7\)))) # (GND)
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~9\ = CARRY((\i_RISCV|i_Path|a[4]~86_combout\ & ((!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~7\) # (!\i_RISCV|i_Path|b[4]~85_combout\))) # (!\i_RISCV|i_Path|a[4]~86_combout\ & (!\i_RISCV|i_Path|b[4]~85_combout\ & 
-- !\i_RISCV|i_Path|i_ALU|i1_sr|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[4]~86_combout\,
	datab => \i_RISCV|i_Path|b[4]~85_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~7\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~8_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~9\);

-- Location: LCCOMB_X23_Y14_N26
\i_RISCV|i_Path|i_ALU|i1_sr|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~10_combout\ = (\i_RISCV|i_Path|b[5]~84_combout\ & ((\i_RISCV|i_Path|a[5]~82_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~9\)) # (!\i_RISCV|i_Path|a[5]~82_combout\ & ((\i_RISCV|i_Path|i_ALU|i1_sr|Add0~9\) # (GND))))) # 
-- (!\i_RISCV|i_Path|b[5]~84_combout\ & ((\i_RISCV|i_Path|a[5]~82_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~9\ & VCC)) # (!\i_RISCV|i_Path|a[5]~82_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~9\))))
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~11\ = CARRY((\i_RISCV|i_Path|b[5]~84_combout\ & ((!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~9\) # (!\i_RISCV|i_Path|a[5]~82_combout\))) # (!\i_RISCV|i_Path|b[5]~84_combout\ & (!\i_RISCV|i_Path|a[5]~82_combout\ & 
-- !\i_RISCV|i_Path|i_ALU|i1_sr|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[5]~84_combout\,
	datab => \i_RISCV|i_Path|a[5]~82_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~9\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~10_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~11\);

-- Location: LCCOMB_X23_Y14_N28
\i_RISCV|i_Path|i_ALU|i1_sr|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~12_combout\ = ((\i_RISCV|i_Path|a[6]~79_combout\ $ (\i_RISCV|i_Path|b[6]~83_combout\ $ (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~11\)))) # (GND)
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~13\ = CARRY((\i_RISCV|i_Path|a[6]~79_combout\ & ((!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~11\) # (!\i_RISCV|i_Path|b[6]~83_combout\))) # (!\i_RISCV|i_Path|a[6]~79_combout\ & (!\i_RISCV|i_Path|b[6]~83_combout\ & 
-- !\i_RISCV|i_Path|i_ALU|i1_sr|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[6]~79_combout\,
	datab => \i_RISCV|i_Path|b[6]~83_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~11\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~12_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~13\);

-- Location: LCFF_X22_Y14_N25
\i_RISCV|i_Path|i_BancoReg|reg[6][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux27~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[6][4]~regout\);

-- Location: LCCOMB_X26_Y11_N28
\i_RISCV|i_Path|i_BancoReg|Mux59~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_BancoReg|Mux59~0_combout\ = (\i_RISCV|i_Path|i_BancoReg|reg[6][4]~regout\ & (!\i_RISCV|i_Path|ir_out_m\(24) & \i_RISCV|i_Path|ir_out_m\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RISCV|i_Path|i_BancoReg|reg[6][4]~regout\,
	datac => \i_RISCV|i_Path|ir_out_m\(24),
	datad => \i_RISCV|i_Path|ir_out_m\(21),
	combout => \i_RISCV|i_Path|i_BancoReg|Mux59~0_combout\);

-- Location: LCFF_X26_Y11_N29
\dout_PSP[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_BancoReg|Mux59~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \p_PSP~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dout_PSP(4));

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_pins[4]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_in_pins(4),
	combout => \in_pins~combout\(4));

-- Location: LCCOMB_X26_Y11_N8
\mid_PEP[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mid_PEP[4]~feeder_combout\ = \in_pins~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_pins~combout\(4),
	combout => \mid_PEP[4]~feeder_combout\);

-- Location: LCFF_X26_Y11_N9
\mid_PEP[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \mid_PEP[4]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mid_PEP(4));

-- Location: LCFF_X26_Y11_N27
\dout_PEP[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => mid_PEP(4),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dout_PEP(4));

-- Location: LCFF_X25_Y11_N23
\i_RISCV|i_Path|pc_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|pc_in[4]~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_out\(4));

-- Location: LCCOMB_X26_Y11_N12
\i_RISCV|i_Path|Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux27~0_combout\ = (\i_RISCV|i_Path|Mux24~0_combout\ & (((\i_RISCV|i_Path|pc_out\(4)) # (\i_RISCV|i_Path|Mux24~1_combout\)))) # (!\i_RISCV|i_Path|Mux24~0_combout\ & (\i_RISCV|i_Path|alur_out\(4) & ((!\i_RISCV|i_Path|Mux24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|alur_out\(4),
	datab => \i_RISCV|i_Path|pc_out\(4),
	datac => \i_RISCV|i_Path|Mux24~0_combout\,
	datad => \i_RISCV|i_Path|Mux24~1_combout\,
	combout => \i_RISCV|i_Path|Mux27~0_combout\);

-- Location: LCCOMB_X26_Y11_N26
\i_RISCV|i_Path|Mux27~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux27~1_combout\ = (\i_RISCV|i_Path|Mux24~1_combout\ & ((\i_RISCV|i_Path|Mux27~0_combout\ & (dout_PSP(4))) # (!\i_RISCV|i_Path|Mux27~0_combout\ & ((dout_PEP(4)))))) # (!\i_RISCV|i_Path|Mux24~1_combout\ & 
-- (((\i_RISCV|i_Path|Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|Mux24~1_combout\,
	datab => dout_PSP(4),
	datac => dout_PEP(4),
	datad => \i_RISCV|i_Path|Mux27~0_combout\,
	combout => \i_RISCV|i_Path|Mux27~1_combout\);

-- Location: LCCOMB_X20_Y15_N6
\i_RISCV|i_Path|Mux27~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux27~2_combout\ = (!\i_RISCV|i_Control|estado_act.lui3~regout\ & (\i_RISCV|i_Path|Mux27~1_combout\ & ((\i_RISCV|i_Path|alur_out\(31)) # (!\i_RISCV|i_Path|Mux24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|alur_out\(31),
	datab => \i_RISCV|i_Path|Mux24~1_combout\,
	datac => \i_RISCV|i_Control|estado_act.lui3~regout\,
	datad => \i_RISCV|i_Path|Mux27~1_combout\,
	combout => \i_RISCV|i_Path|Mux27~2_combout\);

-- Location: LCCOMB_X20_Y15_N24
\i_RISCV|i_Path|i_BancoReg|reg[5][4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_BancoReg|reg[5][4]~feeder_combout\ = \i_RISCV|i_Path|Mux27~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_RISCV|i_Path|Mux27~2_combout\,
	combout => \i_RISCV|i_Path|i_BancoReg|reg[5][4]~feeder_combout\);

-- Location: LCFF_X20_Y15_N25
\i_RISCV|i_Path|i_BancoReg|reg[5][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_BancoReg|reg[5][4]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[5][4]~regout\);

-- Location: LCFF_X21_Y15_N9
\i_RISCV|i_Path|i_BancoReg|reg[1][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux27~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[1][4]~regout\);

-- Location: LCFF_X21_Y15_N3
\i_RISCV|i_Path|pc_ir[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|pc_out\(4),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_ir\(4));

-- Location: LCCOMB_X21_Y15_N2
\i_RISCV|i_Path|a[4]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[4]~84_combout\ = (\i_RISCV|i_Control|estado_act.Decod~regout\ & (((\i_RISCV|i_Path|pc_ir\(4))))) # (!\i_RISCV|i_Control|estado_act.Decod~regout\ & ((\i_RISCV|i_Control|estado_act.auipc3~regout\ & ((\i_RISCV|i_Path|pc_ir\(4)))) # 
-- (!\i_RISCV|i_Control|estado_act.auipc3~regout\ & (\i_RISCV|i_Path|ir_out_m\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Decod~regout\,
	datab => \i_RISCV|i_Path|ir_out_m\(17),
	datac => \i_RISCV|i_Path|pc_ir\(4),
	datad => \i_RISCV|i_Control|estado_act.auipc3~regout\,
	combout => \i_RISCV|i_Path|a[4]~84_combout\);

-- Location: LCCOMB_X21_Y15_N8
\i_RISCV|i_Path|a[4]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[4]~85_combout\ = (\i_RISCV|i_Path|a[14]~1_combout\ & ((\i_RISCV|i_Path|a[4]~84_combout\ & (\i_RISCV|i_Path|i_BancoReg|reg[5][4]~regout\)) # (!\i_RISCV|i_Path|a[4]~84_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[1][4]~regout\))))) # 
-- (!\i_RISCV|i_Path|a[14]~1_combout\ & (((\i_RISCV|i_Path|a[4]~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[14]~1_combout\,
	datab => \i_RISCV|i_Path|i_BancoReg|reg[5][4]~regout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[1][4]~regout\,
	datad => \i_RISCV|i_Path|a[4]~84_combout\,
	combout => \i_RISCV|i_Path|a[4]~85_combout\);

-- Location: LCCOMB_X22_Y15_N20
\i_RISCV|i_Path|a[4]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[4]~86_combout\ = (\i_RISCV|i_Control|estado_act.Fetch~regout\ & (\i_RISCV|i_Path|pc_out\(4))) # (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & ((\i_RISCV|i_Path|a[4]~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|pc_out\(4),
	datab => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datad => \i_RISCV|i_Path|a[4]~85_combout\,
	combout => \i_RISCV|i_Path|a[4]~86_combout\);

-- Location: LCFF_X20_Y14_N25
\i_RISCV|i_Path|i_BancoReg|reg[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux29~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[1][2]~regout\);

-- Location: LCFF_X20_Y14_N31
\i_RISCV|i_Path|i_BancoReg|reg[5][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux29~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[5][2]~regout\);

-- Location: LCCOMB_X20_Y14_N30
\i_RISCV|i_Path|a[2]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[2]~91_combout\ = (\i_RISCV|i_Path|a[2]~90_combout\ & (((\i_RISCV|i_Path|i_BancoReg|reg[5][2]~regout\) # (!\i_RISCV|i_Path|a[14]~1_combout\)))) # (!\i_RISCV|i_Path|a[2]~90_combout\ & (\i_RISCV|i_Path|i_BancoReg|reg[1][2]~regout\ & 
-- ((\i_RISCV|i_Path|a[14]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[2]~90_combout\,
	datab => \i_RISCV|i_Path|i_BancoReg|reg[1][2]~regout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[5][2]~regout\,
	datad => \i_RISCV|i_Path|a[14]~1_combout\,
	combout => \i_RISCV|i_Path|a[2]~91_combout\);

-- Location: LCCOMB_X24_Y14_N22
\i_RISCV|i_Path|a[2]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[2]~92_combout\ = (\i_RISCV|i_Control|estado_act.Fetch~regout\ & (\i_RISCV|i_Path|pc_out\(2))) # (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & ((\i_RISCV|i_Path|a[2]~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datab => \i_RISCV|i_Path|pc_out\(2),
	datac => \i_RISCV|i_Path|a[2]~91_combout\,
	combout => \i_RISCV|i_Path|a[2]~92_combout\);

-- Location: LCCOMB_X25_Y14_N4
\i_RISCV|i_Path|i_ALU|i1_sr|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~4_combout\ = ((\i_RISCV|i_Path|b[2]~90_combout\ $ (\i_RISCV|i_Path|a[2]~92_combout\ $ (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~3\)))) # (GND)
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~5\ = CARRY((\i_RISCV|i_Path|b[2]~90_combout\ & ((\i_RISCV|i_Path|a[2]~92_combout\) # (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~3\))) # (!\i_RISCV|i_Path|b[2]~90_combout\ & (\i_RISCV|i_Path|a[2]~92_combout\ & 
-- !\i_RISCV|i_Path|i_ALU|i1_sr|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[2]~90_combout\,
	datab => \i_RISCV|i_Path|a[2]~92_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~3\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~4_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~5\);

-- Location: LCCOMB_X25_Y14_N8
\i_RISCV|i_Path|i_ALU|i1_sr|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~8_combout\ = ((\i_RISCV|i_Path|b[4]~85_combout\ $ (\i_RISCV|i_Path|a[4]~86_combout\ $ (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~7\)))) # (GND)
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~9\ = CARRY((\i_RISCV|i_Path|b[4]~85_combout\ & ((\i_RISCV|i_Path|a[4]~86_combout\) # (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~7\))) # (!\i_RISCV|i_Path|b[4]~85_combout\ & (\i_RISCV|i_Path|a[4]~86_combout\ & 
-- !\i_RISCV|i_Path|i_ALU|i1_sr|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[4]~85_combout\,
	datab => \i_RISCV|i_Path|a[4]~86_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~7\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~8_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~9\);

-- Location: LCCOMB_X25_Y14_N10
\i_RISCV|i_Path|i_ALU|i1_sr|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~10_combout\ = (\i_RISCV|i_Path|a[5]~82_combout\ & ((\i_RISCV|i_Path|b[5]~84_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add1~9\ & VCC)) # (!\i_RISCV|i_Path|b[5]~84_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~9\)))) # 
-- (!\i_RISCV|i_Path|a[5]~82_combout\ & ((\i_RISCV|i_Path|b[5]~84_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~9\)) # (!\i_RISCV|i_Path|b[5]~84_combout\ & ((\i_RISCV|i_Path|i_ALU|i1_sr|Add1~9\) # (GND)))))
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~11\ = CARRY((\i_RISCV|i_Path|a[5]~82_combout\ & (!\i_RISCV|i_Path|b[5]~84_combout\ & !\i_RISCV|i_Path|i_ALU|i1_sr|Add1~9\)) # (!\i_RISCV|i_Path|a[5]~82_combout\ & ((!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~9\) # 
-- (!\i_RISCV|i_Path|b[5]~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[5]~82_combout\,
	datab => \i_RISCV|i_Path|b[5]~84_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~9\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~10_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~11\);

-- Location: LCCOMB_X25_Y14_N12
\i_RISCV|i_Path|i_ALU|i1_sr|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~12_combout\ = ((\i_RISCV|i_Path|a[6]~79_combout\ $ (\i_RISCV|i_Path|b[6]~83_combout\ $ (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~11\)))) # (GND)
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~13\ = CARRY((\i_RISCV|i_Path|a[6]~79_combout\ & ((\i_RISCV|i_Path|b[6]~83_combout\) # (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~11\))) # (!\i_RISCV|i_Path|a[6]~79_combout\ & (\i_RISCV|i_Path|b[6]~83_combout\ & 
-- !\i_RISCV|i_Path|i_ALU|i1_sr|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[6]~79_combout\,
	datab => \i_RISCV|i_Path|b[6]~83_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~11\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~12_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~13\);

-- Location: LCCOMB_X24_Y11_N0
\i_RISCV|i_Path|i_ALU|Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|Mux25~0_combout\ = (!\i_RISCV|i_Control|Selector16~0_combout\ & ((\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~12_combout\)) # (!\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & 
-- ((\i_RISCV|i_Path|i_ALU|i1_sr|Add1~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_ALU|Mux0~0_combout\,
	datab => \i_RISCV|i_Control|Selector16~0_combout\,
	datac => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~12_combout\,
	datad => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~12_combout\,
	combout => \i_RISCV|i_Path|i_ALU|Mux25~0_combout\);

-- Location: LCFF_X24_Y11_N1
\i_RISCV|i_Path|alur_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ALU|Mux25~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|alur_out\(6));

-- Location: LCCOMB_X26_Y11_N0
\i_RISCV|i_Path|Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux25~0_combout\ = (\i_RISCV|i_Path|Mux24~0_combout\ & ((\i_RISCV|i_Path|pc_out\(6)) # ((\i_RISCV|i_Path|Mux24~1_combout\)))) # (!\i_RISCV|i_Path|Mux24~0_combout\ & (((\i_RISCV|i_Path|alur_out\(6) & !\i_RISCV|i_Path|Mux24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|pc_out\(6),
	datab => \i_RISCV|i_Path|alur_out\(6),
	datac => \i_RISCV|i_Path|Mux24~0_combout\,
	datad => \i_RISCV|i_Path|Mux24~1_combout\,
	combout => \i_RISCV|i_Path|Mux25~0_combout\);

-- Location: LCCOMB_X26_Y11_N6
\i_RISCV|i_Path|Mux25~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux25~1_combout\ = (\i_RISCV|i_Path|Mux24~1_combout\ & ((\i_RISCV|i_Path|Mux25~0_combout\ & (dout_PSP(6))) # (!\i_RISCV|i_Path|Mux25~0_combout\ & ((dout_PEP(6)))))) # (!\i_RISCV|i_Path|Mux24~1_combout\ & 
-- (((\i_RISCV|i_Path|Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|Mux24~1_combout\,
	datab => dout_PSP(6),
	datac => dout_PEP(6),
	datad => \i_RISCV|i_Path|Mux25~0_combout\,
	combout => \i_RISCV|i_Path|Mux25~1_combout\);

-- Location: LCCOMB_X26_Y11_N2
\i_RISCV|i_Path|Mux25~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux25~2_combout\ = (!\i_RISCV|i_Control|estado_act.lui3~regout\ & (\i_RISCV|i_Path|Mux25~1_combout\ & ((\i_RISCV|i_Path|alur_out\(31)) # (!\i_RISCV|i_Path|Mux24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|Mux24~1_combout\,
	datab => \i_RISCV|i_Path|alur_out\(31),
	datac => \i_RISCV|i_Control|estado_act.lui3~regout\,
	datad => \i_RISCV|i_Path|Mux25~1_combout\,
	combout => \i_RISCV|i_Path|Mux25~2_combout\);

-- Location: LCFF_X23_Y14_N9
\i_RISCV|i_Path|i_BancoReg|reg[6][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux25~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[6][6]~regout\);

-- Location: LCCOMB_X22_Y15_N22
\i_RISCV|i_Path|i_genInm|inm~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_genInm|inm~7_combout\ = (!\i_RISCV|i_Control|estado_act.lui3~regout\ & (((!\i_RISCV|i_Control|estado_act.lwsw3~regout\) # (!\i_RISCV|i_Control|estado_act.Decod~regout\)) # (!\i_RISCV|i_Path|ir_out_m\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|ir_out_m\(5),
	datab => \i_RISCV|i_Control|estado_act.Decod~regout\,
	datac => \i_RISCV|i_Control|estado_act.lui3~regout\,
	datad => \i_RISCV|i_Control|estado_act.lwsw3~regout\,
	combout => \i_RISCV|i_Path|i_genInm|inm~7_combout\);

-- Location: LCCOMB_X22_Y14_N16
\i_RISCV|i_Path|i_genInm|inm~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_genInm|inm~9_combout\ = (!\i_RISCV|i_Control|estado_act.auipc3~regout\ & \i_RISCV|i_Path|i_genInm|inm~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.auipc3~regout\,
	datad => \i_RISCV|i_Path|i_genInm|inm~7_combout\,
	combout => \i_RISCV|i_Path|i_genInm|inm~9_combout\);

-- Location: LCCOMB_X22_Y14_N26
\i_RISCV|i_Path|b[5]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[5]~79_combout\ = (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & ((\i_RISCV|i_Path|b[26]~5_combout\ & ((\i_RISCV|i_Path|i_genInm|inm~9_combout\))) # (!\i_RISCV|i_Path|b[26]~5_combout\ & (!\i_RISCV|i_Path|ir_out_m\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|ir_out_m\(24),
	datab => \i_RISCV|i_Path|b[26]~5_combout\,
	datac => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datad => \i_RISCV|i_Path|i_genInm|inm~9_combout\,
	combout => \i_RISCV|i_Path|b[5]~79_combout\);

-- Location: LCCOMB_X23_Y14_N8
\i_RISCV|i_Path|b[6]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[6]~83_combout\ = (\i_RISCV|i_Path|b[5]~79_combout\ & ((\i_RISCV|i_Path|b[7]~80_combout\) # ((\i_RISCV|i_Path|b[7]~81_combout\ & \i_RISCV|i_Path|i_BancoReg|reg[6][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[7]~80_combout\,
	datab => \i_RISCV|i_Path|b[7]~81_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[6][6]~regout\,
	datad => \i_RISCV|i_Path|b[5]~79_combout\,
	combout => \i_RISCV|i_Path|b[6]~83_combout\);

-- Location: LCCOMB_X23_Y14_N30
\i_RISCV|i_Path|i_ALU|i1_sr|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~14_combout\ = (\i_RISCV|i_Path|b[7]~82_combout\ & ((\i_RISCV|i_Path|a[7]~76_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~13\)) # (!\i_RISCV|i_Path|a[7]~76_combout\ & ((\i_RISCV|i_Path|i_ALU|i1_sr|Add0~13\) # (GND))))) # 
-- (!\i_RISCV|i_Path|b[7]~82_combout\ & ((\i_RISCV|i_Path|a[7]~76_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~13\ & VCC)) # (!\i_RISCV|i_Path|a[7]~76_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~13\))))
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~15\ = CARRY((\i_RISCV|i_Path|b[7]~82_combout\ & ((!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~13\) # (!\i_RISCV|i_Path|a[7]~76_combout\))) # (!\i_RISCV|i_Path|b[7]~82_combout\ & (!\i_RISCV|i_Path|a[7]~76_combout\ & 
-- !\i_RISCV|i_Path|i_ALU|i1_sr|Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[7]~82_combout\,
	datab => \i_RISCV|i_Path|a[7]~76_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~13\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~14_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~15\);

-- Location: LCCOMB_X22_Y14_N8
\i_RISCV|i_Path|b[7]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[7]~80_combout\ = (\i_RISCV|i_Path|ir_out_m\(10) & ((\i_RISCV|i_Control|estado_act.Jalr~regout\) # (!\i_RISCV|i_Control|WideOr9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RISCV|i_Control|estado_act.Jalr~regout\,
	datac => \i_RISCV|i_Path|ir_out_m\(10),
	datad => \i_RISCV|i_Control|WideOr9~0_combout\,
	combout => \i_RISCV|i_Path|b[7]~80_combout\);

-- Location: LCCOMB_X22_Y14_N10
\i_RISCV|i_Path|b[7]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[7]~82_combout\ = (\i_RISCV|i_Path|b[5]~79_combout\ & ((\i_RISCV|i_Path|b[7]~80_combout\) # ((\i_RISCV|i_Path|i_BancoReg|reg[6][7]~regout\ & \i_RISCV|i_Path|b[7]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_BancoReg|reg[6][7]~regout\,
	datab => \i_RISCV|i_Path|b[7]~81_combout\,
	datac => \i_RISCV|i_Path|b[7]~80_combout\,
	datad => \i_RISCV|i_Path|b[5]~79_combout\,
	combout => \i_RISCV|i_Path|b[7]~82_combout\);

-- Location: LCCOMB_X25_Y14_N14
\i_RISCV|i_Path|i_ALU|i1_sr|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~14_combout\ = (\i_RISCV|i_Path|a[7]~76_combout\ & ((\i_RISCV|i_Path|b[7]~82_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add1~13\ & VCC)) # (!\i_RISCV|i_Path|b[7]~82_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~13\)))) # 
-- (!\i_RISCV|i_Path|a[7]~76_combout\ & ((\i_RISCV|i_Path|b[7]~82_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~13\)) # (!\i_RISCV|i_Path|b[7]~82_combout\ & ((\i_RISCV|i_Path|i_ALU|i1_sr|Add1~13\) # (GND)))))
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~15\ = CARRY((\i_RISCV|i_Path|a[7]~76_combout\ & (!\i_RISCV|i_Path|b[7]~82_combout\ & !\i_RISCV|i_Path|i_ALU|i1_sr|Add1~13\)) # (!\i_RISCV|i_Path|a[7]~76_combout\ & ((!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~13\) # 
-- (!\i_RISCV|i_Path|b[7]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[7]~76_combout\,
	datab => \i_RISCV|i_Path|b[7]~82_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~13\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~14_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~15\);

-- Location: LCCOMB_X25_Y16_N20
\i_RISCV|i_Path|i_ALU|Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|Mux24~0_combout\ = (!\i_RISCV|i_Control|Selector16~0_combout\ & ((\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~14_combout\)) # (!\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & 
-- ((\i_RISCV|i_Path|i_ALU|i1_sr|Add1~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_ALU|Mux0~0_combout\,
	datab => \i_RISCV|i_Control|Selector16~0_combout\,
	datac => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~14_combout\,
	datad => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~14_combout\,
	combout => \i_RISCV|i_Path|i_ALU|Mux24~0_combout\);

-- Location: LCFF_X25_Y16_N21
\i_RISCV|i_Path|alur_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ALU|Mux24~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|alur_out\(7));

-- Location: LCCOMB_X25_Y16_N14
\i_RISCV|i_Path|pc_in[7]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|pc_in[7]~30_combout\ = (\i_RISCV|i_Control|estado_act.SalCond~regout\ & (((\i_RISCV|i_Path|alur_out\(7))))) # (!\i_RISCV|i_Control|estado_act.SalCond~regout\ & (\i_RISCV|i_Control|estado_act.Reset~regout\ & 
-- ((\i_RISCV|i_Path|i_ALU|Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Reset~regout\,
	datab => \i_RISCV|i_Control|estado_act.SalCond~regout\,
	datac => \i_RISCV|i_Path|alur_out\(7),
	datad => \i_RISCV|i_Path|i_ALU|Mux24~0_combout\,
	combout => \i_RISCV|i_Path|pc_in[7]~30_combout\);

-- Location: LCFF_X25_Y16_N15
\i_RISCV|i_Path|pc_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|pc_in[7]~30_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_out\(7));

-- Location: LCFF_X20_Y15_N23
\i_RISCV|i_Path|i_BancoReg|reg[6][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux24~4_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[6][7]~regout\);

-- Location: LCCOMB_X22_Y14_N28
\i_RISCV|i_Path|i_BancoReg|Mux56~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_BancoReg|Mux56~0_combout\ = (!\i_RISCV|i_Path|ir_out_m\(24) & (\i_RISCV|i_Path|i_BancoReg|reg[6][7]~regout\ & \i_RISCV|i_Path|ir_out_m\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|ir_out_m\(24),
	datac => \i_RISCV|i_Path|i_BancoReg|reg[6][7]~regout\,
	datad => \i_RISCV|i_Path|ir_out_m\(21),
	combout => \i_RISCV|i_Path|i_BancoReg|Mux56~0_combout\);

-- Location: LCFF_X22_Y14_N29
\dout_PSP[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_BancoReg|Mux56~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \p_PSP~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dout_PSP(7));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_pins[7]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_in_pins(7),
	combout => \in_pins~combout\(7));

-- Location: LCCOMB_X25_Y16_N22
\mid_PEP[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mid_PEP[7]~feeder_combout\ = \in_pins~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_pins~combout\(7),
	combout => \mid_PEP[7]~feeder_combout\);

-- Location: LCFF_X25_Y16_N23
\mid_PEP[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \mid_PEP[7]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mid_PEP(7));

-- Location: LCFF_X25_Y16_N11
\dout_PEP[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => mid_PEP(7),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dout_PEP(7));

-- Location: LCCOMB_X25_Y16_N10
\i_RISCV|i_Path|Mux24~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux24~2_combout\ = (\i_RISCV|i_Path|Mux24~1_combout\ & (((dout_PEP(7)) # (\i_RISCV|i_Path|Mux24~0_combout\)))) # (!\i_RISCV|i_Path|Mux24~1_combout\ & (\i_RISCV|i_Path|alur_out\(7) & ((!\i_RISCV|i_Path|Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|alur_out\(7),
	datab => \i_RISCV|i_Path|Mux24~1_combout\,
	datac => dout_PEP(7),
	datad => \i_RISCV|i_Path|Mux24~0_combout\,
	combout => \i_RISCV|i_Path|Mux24~2_combout\);

-- Location: LCCOMB_X25_Y16_N26
\i_RISCV|i_Path|Mux24~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux24~3_combout\ = (\i_RISCV|i_Path|Mux24~0_combout\ & ((\i_RISCV|i_Path|Mux24~2_combout\ & ((dout_PSP(7)))) # (!\i_RISCV|i_Path|Mux24~2_combout\ & (\i_RISCV|i_Path|pc_out\(7))))) # (!\i_RISCV|i_Path|Mux24~0_combout\ & 
-- (((\i_RISCV|i_Path|Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|Mux24~0_combout\,
	datab => \i_RISCV|i_Path|pc_out\(7),
	datac => dout_PSP(7),
	datad => \i_RISCV|i_Path|Mux24~2_combout\,
	combout => \i_RISCV|i_Path|Mux24~3_combout\);

-- Location: LCCOMB_X20_Y15_N4
\i_RISCV|i_Path|Mux24~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux24~4_combout\ = (!\i_RISCV|i_Control|estado_act.lui3~regout\ & (\i_RISCV|i_Path|Mux24~3_combout\ & ((\i_RISCV|i_Path|alur_out\(31)) # (!\i_RISCV|i_Path|Mux24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|alur_out\(31),
	datab => \i_RISCV|i_Path|Mux24~1_combout\,
	datac => \i_RISCV|i_Control|estado_act.lui3~regout\,
	datad => \i_RISCV|i_Path|Mux24~3_combout\,
	combout => \i_RISCV|i_Path|Mux24~4_combout\);

-- Location: LCCOMB_X20_Y14_N10
\i_RISCV|i_Path|i_BancoReg|reg[5][7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_BancoReg|reg[5][7]~feeder_combout\ = \i_RISCV|i_Path|Mux24~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_RISCV|i_Path|Mux24~4_combout\,
	combout => \i_RISCV|i_Path|i_BancoReg|reg[5][7]~feeder_combout\);

-- Location: LCFF_X20_Y14_N11
\i_RISCV|i_Path|i_BancoReg|reg[5][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_BancoReg|reg[5][7]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[5][7]~regout\);

-- Location: LCFF_X20_Y14_N9
\i_RISCV|i_Path|i_BancoReg|reg[1][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux24~4_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[1][7]~regout\);

-- Location: LCCOMB_X20_Y14_N8
\i_RISCV|i_Path|a[7]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[7]~75_combout\ = (\i_RISCV|i_Path|a[7]~74_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[5][7]~regout\) # ((!\i_RISCV|i_Path|a[14]~1_combout\)))) # (!\i_RISCV|i_Path|a[7]~74_combout\ & (((\i_RISCV|i_Path|i_BancoReg|reg[1][7]~regout\ & 
-- \i_RISCV|i_Path|a[14]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[7]~74_combout\,
	datab => \i_RISCV|i_Path|i_BancoReg|reg[5][7]~regout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[1][7]~regout\,
	datad => \i_RISCV|i_Path|a[14]~1_combout\,
	combout => \i_RISCV|i_Path|a[7]~75_combout\);

-- Location: LCCOMB_X21_Y14_N30
\i_RISCV|i_Path|a[7]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[7]~76_combout\ = (\i_RISCV|i_Control|estado_act.Fetch~regout\ & (\i_RISCV|i_Path|pc_out\(7))) # (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & ((\i_RISCV|i_Path|a[7]~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|pc_out\(7),
	datab => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datad => \i_RISCV|i_Path|a[7]~75_combout\,
	combout => \i_RISCV|i_Path|a[7]~76_combout\);

-- Location: LCCOMB_X23_Y13_N0
\i_RISCV|i_Path|i_ALU|i1_sr|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~16_combout\ = ((\i_RISCV|i_Path|a[8]~73_combout\ $ (\i_RISCV|i_Path|b[8]~78_combout\ $ (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~15\)))) # (GND)
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~17\ = CARRY((\i_RISCV|i_Path|a[8]~73_combout\ & ((!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~15\) # (!\i_RISCV|i_Path|b[8]~78_combout\))) # (!\i_RISCV|i_Path|a[8]~73_combout\ & (!\i_RISCV|i_Path|b[8]~78_combout\ & 
-- !\i_RISCV|i_Path|i_ALU|i1_sr|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[8]~73_combout\,
	datab => \i_RISCV|i_Path|b[8]~78_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~15\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~16_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~17\);

-- Location: LCCOMB_X25_Y14_N16
\i_RISCV|i_Path|i_ALU|i1_sr|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~16_combout\ = ((\i_RISCV|i_Path|a[8]~73_combout\ $ (\i_RISCV|i_Path|b[8]~78_combout\ $ (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~15\)))) # (GND)
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~17\ = CARRY((\i_RISCV|i_Path|a[8]~73_combout\ & ((\i_RISCV|i_Path|b[8]~78_combout\) # (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~15\))) # (!\i_RISCV|i_Path|a[8]~73_combout\ & (\i_RISCV|i_Path|b[8]~78_combout\ & 
-- !\i_RISCV|i_Path|i_ALU|i1_sr|Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[8]~73_combout\,
	datab => \i_RISCV|i_Path|b[8]~78_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~15\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~16_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~17\);

-- Location: LCCOMB_X24_Y11_N12
\i_RISCV|i_Path|i_ALU|Mux23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|Mux23~0_combout\ = (!\i_RISCV|i_Control|Selector16~0_combout\ & ((\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~16_combout\)) # (!\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & 
-- ((\i_RISCV|i_Path|i_ALU|i1_sr|Add1~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_ALU|Mux0~0_combout\,
	datab => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~16_combout\,
	datac => \i_RISCV|i_Control|Selector16~0_combout\,
	datad => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~16_combout\,
	combout => \i_RISCV|i_Path|i_ALU|Mux23~0_combout\);

-- Location: LCFF_X24_Y11_N13
\i_RISCV|i_Path|alur_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ALU|Mux23~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|alur_out\(8));

-- Location: LCCOMB_X24_Y11_N2
\i_RISCV|i_Path|pc_in[8]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|pc_in[8]~29_combout\ = (\i_RISCV|i_Control|estado_act.SalCond~regout\ & (((\i_RISCV|i_Path|alur_out\(8))))) # (!\i_RISCV|i_Control|estado_act.SalCond~regout\ & (\i_RISCV|i_Control|estado_act.Reset~regout\ & 
-- ((\i_RISCV|i_Path|i_ALU|Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Reset~regout\,
	datab => \i_RISCV|i_Control|estado_act.SalCond~regout\,
	datac => \i_RISCV|i_Path|alur_out\(8),
	datad => \i_RISCV|i_Path|i_ALU|Mux23~0_combout\,
	combout => \i_RISCV|i_Path|pc_in[8]~29_combout\);

-- Location: LCFF_X24_Y11_N3
\i_RISCV|i_Path|pc_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|pc_in[8]~29_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_out\(8));

-- Location: LCCOMB_X24_Y11_N14
\i_RISCV|i_Path|Mux23~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux23~1_combout\ = (\i_RISCV|i_Control|estado_act.Jalr~regout\ & (((\i_RISCV|i_Path|pc_out\(8))))) # (!\i_RISCV|i_Control|estado_act.Jalr~regout\ & (\i_RISCV|i_Path|alur_out\(8) & ((\i_RISCV|i_Path|Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|alur_out\(8),
	datab => \i_RISCV|i_Path|pc_out\(8),
	datac => \i_RISCV|i_Control|estado_act.Jalr~regout\,
	datad => \i_RISCV|i_Path|Mux23~0_combout\,
	combout => \i_RISCV|i_Path|Mux23~1_combout\);

-- Location: LCFF_X24_Y15_N11
\i_RISCV|i_Path|i_BancoReg|reg[4][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux23~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[4][8]~regout\);

-- Location: LCCOMB_X23_Y15_N6
\i_RISCV|i_Path|i_genInm|inm[8]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_genInm|inm[8]~8_combout\ = (!\i_RISCV|i_Control|estado_act.auipc3~regout\ & (\i_RISCV|i_Path|ir_out_m\(10) & \i_RISCV|i_Path|i_genInm|inm~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.auipc3~regout\,
	datac => \i_RISCV|i_Path|ir_out_m\(10),
	datad => \i_RISCV|i_Path|i_genInm|inm~7_combout\,
	combout => \i_RISCV|i_Path|i_genInm|inm[8]~8_combout\);

-- Location: LCFF_X24_Y15_N13
\i_RISCV|i_Path|i_BancoReg|reg[2][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux23~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[2][8]~regout\);

-- Location: LCCOMB_X24_Y15_N12
\i_RISCV|i_Path|b[8]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[8]~76_combout\ = (\i_RISCV|i_Path|b[26]~5_combout\ & ((\i_RISCV|i_Path|b[26]~6_combout\ & (\i_RISCV|i_Path|i_genInm|inm[8]~8_combout\)) # (!\i_RISCV|i_Path|b[26]~6_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[2][8]~regout\))))) # 
-- (!\i_RISCV|i_Path|b[26]~5_combout\ & (((\i_RISCV|i_Path|b[26]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[26]~5_combout\,
	datab => \i_RISCV|i_Path|i_genInm|inm[8]~8_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[2][8]~regout\,
	datad => \i_RISCV|i_Path|b[26]~6_combout\,
	combout => \i_RISCV|i_Path|b[8]~76_combout\);

-- Location: LCCOMB_X24_Y15_N10
\i_RISCV|i_Path|b[8]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[8]~77_combout\ = (\i_RISCV|i_Path|b[26]~4_combout\ & ((\i_RISCV|i_Path|b[8]~76_combout\ & (\i_RISCV|i_Path|i_BancoReg|reg[6][8]~regout\)) # (!\i_RISCV|i_Path|b[8]~76_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[4][8]~regout\))))) # 
-- (!\i_RISCV|i_Path|b[26]~4_combout\ & (((\i_RISCV|i_Path|b[8]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_BancoReg|reg[6][8]~regout\,
	datab => \i_RISCV|i_Path|b[26]~4_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[4][8]~regout\,
	datad => \i_RISCV|i_Path|b[8]~76_combout\,
	combout => \i_RISCV|i_Path|b[8]~77_combout\);

-- Location: LCCOMB_X24_Y15_N26
\i_RISCV|i_Path|b[8]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[8]~78_combout\ = (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & \i_RISCV|i_Path|b[8]~77_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datad => \i_RISCV|i_Path|b[8]~77_combout\,
	combout => \i_RISCV|i_Path|b[8]~78_combout\);

-- Location: LCCOMB_X23_Y13_N2
\i_RISCV|i_Path|i_ALU|i1_sr|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~18_combout\ = (\i_RISCV|i_Path|b[9]~75_combout\ & ((\i_RISCV|i_Path|a[9]~70_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~17\)) # (!\i_RISCV|i_Path|a[9]~70_combout\ & ((\i_RISCV|i_Path|i_ALU|i1_sr|Add0~17\) # (GND))))) # 
-- (!\i_RISCV|i_Path|b[9]~75_combout\ & ((\i_RISCV|i_Path|a[9]~70_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~17\ & VCC)) # (!\i_RISCV|i_Path|a[9]~70_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~17\))))
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~19\ = CARRY((\i_RISCV|i_Path|b[9]~75_combout\ & ((!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~17\) # (!\i_RISCV|i_Path|a[9]~70_combout\))) # (!\i_RISCV|i_Path|b[9]~75_combout\ & (!\i_RISCV|i_Path|a[9]~70_combout\ & 
-- !\i_RISCV|i_Path|i_ALU|i1_sr|Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[9]~75_combout\,
	datab => \i_RISCV|i_Path|a[9]~70_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~17\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~18_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~19\);

-- Location: LCCOMB_X25_Y14_N18
\i_RISCV|i_Path|i_ALU|i1_sr|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~18_combout\ = (\i_RISCV|i_Path|b[9]~75_combout\ & ((\i_RISCV|i_Path|a[9]~70_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add1~17\ & VCC)) # (!\i_RISCV|i_Path|a[9]~70_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~17\)))) # 
-- (!\i_RISCV|i_Path|b[9]~75_combout\ & ((\i_RISCV|i_Path|a[9]~70_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~17\)) # (!\i_RISCV|i_Path|a[9]~70_combout\ & ((\i_RISCV|i_Path|i_ALU|i1_sr|Add1~17\) # (GND)))))
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~19\ = CARRY((\i_RISCV|i_Path|b[9]~75_combout\ & (!\i_RISCV|i_Path|a[9]~70_combout\ & !\i_RISCV|i_Path|i_ALU|i1_sr|Add1~17\)) # (!\i_RISCV|i_Path|b[9]~75_combout\ & ((!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~17\) # 
-- (!\i_RISCV|i_Path|a[9]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[9]~75_combout\,
	datab => \i_RISCV|i_Path|a[9]~70_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~17\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~18_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~19\);

-- Location: LCCOMB_X24_Y11_N4
\i_RISCV|i_Path|i_ALU|Mux22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|Mux22~0_combout\ = (!\i_RISCV|i_Control|Selector16~0_combout\ & ((\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~18_combout\)) # (!\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & 
-- ((\i_RISCV|i_Path|i_ALU|i1_sr|Add1~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_ALU|Mux0~0_combout\,
	datab => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~18_combout\,
	datac => \i_RISCV|i_Control|Selector16~0_combout\,
	datad => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~18_combout\,
	combout => \i_RISCV|i_Path|i_ALU|Mux22~0_combout\);

-- Location: LCFF_X24_Y11_N5
\i_RISCV|i_Path|alur_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ALU|Mux22~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|alur_out\(9));

-- Location: LCCOMB_X24_Y11_N26
\i_RISCV|i_Path|Mux22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux22~0_combout\ = (\i_RISCV|i_Control|estado_act.Jalr~regout\ & (\i_RISCV|i_Path|pc_out\(9))) # (!\i_RISCV|i_Control|estado_act.Jalr~regout\ & (((\i_RISCV|i_Path|alur_out\(9) & \i_RISCV|i_Path|Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|pc_out\(9),
	datab => \i_RISCV|i_Path|alur_out\(9),
	datac => \i_RISCV|i_Control|estado_act.Jalr~regout\,
	datad => \i_RISCV|i_Path|Mux23~0_combout\,
	combout => \i_RISCV|i_Path|Mux22~0_combout\);

-- Location: LCCOMB_X20_Y16_N20
\i_RISCV|i_Path|i_BancoReg|reg[5][9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_BancoReg|reg[5][9]~feeder_combout\ = \i_RISCV|i_Path|Mux22~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_RISCV|i_Path|Mux22~0_combout\,
	combout => \i_RISCV|i_Path|i_BancoReg|reg[5][9]~feeder_combout\);

-- Location: LCFF_X20_Y16_N21
\i_RISCV|i_Path|i_BancoReg|reg[5][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_BancoReg|reg[5][9]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[5][9]~regout\);

-- Location: LCFF_X22_Y16_N3
\i_RISCV|i_Path|i_BancoReg|reg[1][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux22~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[1][9]~regout\);

-- Location: LCCOMB_X22_Y16_N2
\i_RISCV|i_Path|a[9]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[9]~69_combout\ = (\i_RISCV|i_Path|a[9]~68_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[5][9]~regout\) # ((!\i_RISCV|i_Path|a[14]~1_combout\)))) # (!\i_RISCV|i_Path|a[9]~68_combout\ & (((\i_RISCV|i_Path|i_BancoReg|reg[1][9]~regout\ & 
-- \i_RISCV|i_Path|a[14]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[9]~68_combout\,
	datab => \i_RISCV|i_Path|i_BancoReg|reg[5][9]~regout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[1][9]~regout\,
	datad => \i_RISCV|i_Path|a[14]~1_combout\,
	combout => \i_RISCV|i_Path|a[9]~69_combout\);

-- Location: LCCOMB_X23_Y16_N14
\i_RISCV|i_Path|a[9]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[9]~70_combout\ = (\i_RISCV|i_Control|estado_act.Fetch~regout\ & (\i_RISCV|i_Path|pc_out\(9))) # (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & ((\i_RISCV|i_Path|a[9]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|pc_out\(9),
	datab => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datad => \i_RISCV|i_Path|a[9]~69_combout\,
	combout => \i_RISCV|i_Path|a[9]~70_combout\);

-- Location: LCCOMB_X25_Y14_N20
\i_RISCV|i_Path|i_ALU|i1_sr|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~20_combout\ = ((\i_RISCV|i_Path|a[10]~67_combout\ $ (\i_RISCV|i_Path|b[10]~72_combout\ $ (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~19\)))) # (GND)
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~21\ = CARRY((\i_RISCV|i_Path|a[10]~67_combout\ & ((\i_RISCV|i_Path|b[10]~72_combout\) # (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~19\))) # (!\i_RISCV|i_Path|a[10]~67_combout\ & (\i_RISCV|i_Path|b[10]~72_combout\ & 
-- !\i_RISCV|i_Path|i_ALU|i1_sr|Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[10]~67_combout\,
	datab => \i_RISCV|i_Path|b[10]~72_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~19\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~20_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~21\);

-- Location: LCCOMB_X23_Y13_N4
\i_RISCV|i_Path|i_ALU|i1_sr|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~20_combout\ = ((\i_RISCV|i_Path|b[10]~72_combout\ $ (\i_RISCV|i_Path|a[10]~67_combout\ $ (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~19\)))) # (GND)
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~21\ = CARRY((\i_RISCV|i_Path|b[10]~72_combout\ & (\i_RISCV|i_Path|a[10]~67_combout\ & !\i_RISCV|i_Path|i_ALU|i1_sr|Add0~19\)) # (!\i_RISCV|i_Path|b[10]~72_combout\ & ((\i_RISCV|i_Path|a[10]~67_combout\) # 
-- (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[10]~72_combout\,
	datab => \i_RISCV|i_Path|a[10]~67_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~19\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~20_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~21\);

-- Location: LCCOMB_X25_Y16_N30
\i_RISCV|i_Path|i_ALU|Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|Mux21~0_combout\ = (!\i_RISCV|i_Control|Selector16~0_combout\ & ((\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & ((\i_RISCV|i_Path|i_ALU|i1_sr|Add0~20_combout\))) # (!\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & 
-- (\i_RISCV|i_Path|i_ALU|i1_sr|Add1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_ALU|Mux0~0_combout\,
	datab => \i_RISCV|i_Control|Selector16~0_combout\,
	datac => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~20_combout\,
	datad => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~20_combout\,
	combout => \i_RISCV|i_Path|i_ALU|Mux21~0_combout\);

-- Location: LCFF_X25_Y16_N31
\i_RISCV|i_Path|alur_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ALU|Mux21~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|alur_out\(10));

-- Location: LCCOMB_X25_Y16_N28
\i_RISCV|i_Path|pc_in[10]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|pc_in[10]~27_combout\ = (\i_RISCV|i_Control|estado_act.SalCond~regout\ & (((\i_RISCV|i_Path|alur_out\(10))))) # (!\i_RISCV|i_Control|estado_act.SalCond~regout\ & (\i_RISCV|i_Control|estado_act.Reset~regout\ & 
-- ((\i_RISCV|i_Path|i_ALU|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Reset~regout\,
	datab => \i_RISCV|i_Control|estado_act.SalCond~regout\,
	datac => \i_RISCV|i_Path|alur_out\(10),
	datad => \i_RISCV|i_Path|i_ALU|Mux21~0_combout\,
	combout => \i_RISCV|i_Path|pc_in[10]~27_combout\);

-- Location: LCFF_X25_Y16_N29
\i_RISCV|i_Path|pc_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|pc_in[10]~27_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_out\(10));

-- Location: LCCOMB_X25_Y16_N0
\i_RISCV|i_Path|Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux21~0_combout\ = (\i_RISCV|i_Control|estado_act.Jalr~regout\ & (((\i_RISCV|i_Path|pc_out\(10))))) # (!\i_RISCV|i_Control|estado_act.Jalr~regout\ & (\i_RISCV|i_Path|alur_out\(10) & (\i_RISCV|i_Path|Mux23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|alur_out\(10),
	datab => \i_RISCV|i_Path|Mux23~0_combout\,
	datac => \i_RISCV|i_Path|pc_out\(10),
	datad => \i_RISCV|i_Control|estado_act.Jalr~regout\,
	combout => \i_RISCV|i_Path|Mux21~0_combout\);

-- Location: LCFF_X22_Y12_N15
\i_RISCV|i_Path|i_BancoReg|reg[5][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux21~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[5][10]~regout\);

-- Location: LCFF_X22_Y16_N21
\i_RISCV|i_Path|i_BancoReg|reg[1][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux21~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[1][10]~regout\);

-- Location: LCFF_X22_Y15_N11
\i_RISCV|i_Path|pc_ir[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|pc_out\(10),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_ir\(10));

-- Location: LCCOMB_X22_Y15_N10
\i_RISCV|i_Path|a[10]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[10]~65_combout\ = (\i_RISCV|i_Control|estado_act.auipc3~regout\ & (((\i_RISCV|i_Path|pc_ir\(10))))) # (!\i_RISCV|i_Control|estado_act.auipc3~regout\ & ((\i_RISCV|i_Control|estado_act.Decod~regout\ & (\i_RISCV|i_Path|pc_ir\(10))) # 
-- (!\i_RISCV|i_Control|estado_act.Decod~regout\ & ((\i_RISCV|i_Path|ir_out_m\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.auipc3~regout\,
	datab => \i_RISCV|i_Control|estado_act.Decod~regout\,
	datac => \i_RISCV|i_Path|pc_ir\(10),
	datad => \i_RISCV|i_Path|ir_out_m\(17),
	combout => \i_RISCV|i_Path|a[10]~65_combout\);

-- Location: LCCOMB_X22_Y16_N20
\i_RISCV|i_Path|a[10]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[10]~66_combout\ = (\i_RISCV|i_Path|a[14]~1_combout\ & ((\i_RISCV|i_Path|a[10]~65_combout\ & (\i_RISCV|i_Path|i_BancoReg|reg[5][10]~regout\)) # (!\i_RISCV|i_Path|a[10]~65_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[1][10]~regout\))))) # 
-- (!\i_RISCV|i_Path|a[14]~1_combout\ & (((\i_RISCV|i_Path|a[10]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[14]~1_combout\,
	datab => \i_RISCV|i_Path|i_BancoReg|reg[5][10]~regout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[1][10]~regout\,
	datad => \i_RISCV|i_Path|a[10]~65_combout\,
	combout => \i_RISCV|i_Path|a[10]~66_combout\);

-- Location: LCCOMB_X24_Y16_N20
\i_RISCV|i_Path|a[10]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[10]~67_combout\ = (\i_RISCV|i_Control|estado_act.Fetch~regout\ & ((\i_RISCV|i_Path|pc_out\(10)))) # (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & (\i_RISCV|i_Path|a[10]~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datac => \i_RISCV|i_Path|a[10]~66_combout\,
	datad => \i_RISCV|i_Path|pc_out\(10),
	combout => \i_RISCV|i_Path|a[10]~67_combout\);

-- Location: LCCOMB_X23_Y13_N6
\i_RISCV|i_Path|i_ALU|i1_sr|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~22_combout\ = (\i_RISCV|i_Path|a[11]~64_combout\ & ((\i_RISCV|i_Path|b[11]~69_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~21\)) # (!\i_RISCV|i_Path|b[11]~69_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~21\ & VCC)))) # 
-- (!\i_RISCV|i_Path|a[11]~64_combout\ & ((\i_RISCV|i_Path|b[11]~69_combout\ & ((\i_RISCV|i_Path|i_ALU|i1_sr|Add0~21\) # (GND))) # (!\i_RISCV|i_Path|b[11]~69_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~21\))))
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~23\ = CARRY((\i_RISCV|i_Path|a[11]~64_combout\ & (\i_RISCV|i_Path|b[11]~69_combout\ & !\i_RISCV|i_Path|i_ALU|i1_sr|Add0~21\)) # (!\i_RISCV|i_Path|a[11]~64_combout\ & ((\i_RISCV|i_Path|b[11]~69_combout\) # 
-- (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[11]~64_combout\,
	datab => \i_RISCV|i_Path|b[11]~69_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~21\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~22_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~23\);

-- Location: LCCOMB_X25_Y14_N22
\i_RISCV|i_Path|i_ALU|i1_sr|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~22_combout\ = (\i_RISCV|i_Path|a[11]~64_combout\ & ((\i_RISCV|i_Path|b[11]~69_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add1~21\ & VCC)) # (!\i_RISCV|i_Path|b[11]~69_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~21\)))) # 
-- (!\i_RISCV|i_Path|a[11]~64_combout\ & ((\i_RISCV|i_Path|b[11]~69_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~21\)) # (!\i_RISCV|i_Path|b[11]~69_combout\ & ((\i_RISCV|i_Path|i_ALU|i1_sr|Add1~21\) # (GND)))))
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~23\ = CARRY((\i_RISCV|i_Path|a[11]~64_combout\ & (!\i_RISCV|i_Path|b[11]~69_combout\ & !\i_RISCV|i_Path|i_ALU|i1_sr|Add1~21\)) # (!\i_RISCV|i_Path|a[11]~64_combout\ & ((!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~21\) # 
-- (!\i_RISCV|i_Path|b[11]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[11]~64_combout\,
	datab => \i_RISCV|i_Path|b[11]~69_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~21\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~22_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~23\);

-- Location: LCCOMB_X24_Y11_N18
\i_RISCV|i_Path|i_ALU|Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|Mux20~0_combout\ = (!\i_RISCV|i_Control|Selector16~0_combout\ & ((\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~22_combout\)) # (!\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & 
-- ((\i_RISCV|i_Path|i_ALU|i1_sr|Add1~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_ALU|Mux0~0_combout\,
	datab => \i_RISCV|i_Control|Selector16~0_combout\,
	datac => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~22_combout\,
	datad => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~22_combout\,
	combout => \i_RISCV|i_Path|i_ALU|Mux20~0_combout\);

-- Location: LCFF_X24_Y11_N19
\i_RISCV|i_Path|alur_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ALU|Mux20~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|alur_out\(11));

-- Location: LCCOMB_X24_Y11_N10
\i_RISCV|i_Path|pc_in[11]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|pc_in[11]~26_combout\ = (\i_RISCV|i_Control|estado_act.SalCond~regout\ & (((\i_RISCV|i_Path|alur_out\(11))))) # (!\i_RISCV|i_Control|estado_act.SalCond~regout\ & (\i_RISCV|i_Control|estado_act.Reset~regout\ & 
-- ((\i_RISCV|i_Path|i_ALU|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Reset~regout\,
	datab => \i_RISCV|i_Control|estado_act.SalCond~regout\,
	datac => \i_RISCV|i_Path|alur_out\(11),
	datad => \i_RISCV|i_Path|i_ALU|Mux20~0_combout\,
	combout => \i_RISCV|i_Path|pc_in[11]~26_combout\);

-- Location: LCFF_X24_Y11_N11
\i_RISCV|i_Path|pc_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|pc_in[11]~26_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_out\(11));

-- Location: LCFF_X21_Y16_N19
\i_RISCV|i_Path|pc_ir[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|pc_out\(11),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_ir\(11));

-- Location: LCCOMB_X21_Y16_N18
\i_RISCV|i_Path|a[11]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[11]~62_combout\ = (\i_RISCV|i_Control|estado_act.auipc3~regout\ & (((\i_RISCV|i_Path|pc_ir\(11))))) # (!\i_RISCV|i_Control|estado_act.auipc3~regout\ & ((\i_RISCV|i_Control|estado_act.Decod~regout\ & (\i_RISCV|i_Path|pc_ir\(11))) # 
-- (!\i_RISCV|i_Control|estado_act.Decod~regout\ & ((\i_RISCV|i_Path|ir_out_m\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.auipc3~regout\,
	datab => \i_RISCV|i_Control|estado_act.Decod~regout\,
	datac => \i_RISCV|i_Path|pc_ir\(11),
	datad => \i_RISCV|i_Path|ir_out_m\(17),
	combout => \i_RISCV|i_Path|a[11]~62_combout\);

-- Location: LCFF_X21_Y16_N13
\i_RISCV|i_Path|i_BancoReg|reg[1][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux20~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[1][11]~regout\);

-- Location: LCCOMB_X21_Y16_N12
\i_RISCV|i_Path|a[11]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[11]~63_combout\ = (\i_RISCV|i_Path|a[11]~62_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[5][11]~regout\) # ((!\i_RISCV|i_Path|a[14]~1_combout\)))) # (!\i_RISCV|i_Path|a[11]~62_combout\ & (((\i_RISCV|i_Path|i_BancoReg|reg[1][11]~regout\ & 
-- \i_RISCV|i_Path|a[14]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_BancoReg|reg[5][11]~regout\,
	datab => \i_RISCV|i_Path|a[11]~62_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[1][11]~regout\,
	datad => \i_RISCV|i_Path|a[14]~1_combout\,
	combout => \i_RISCV|i_Path|a[11]~63_combout\);

-- Location: LCCOMB_X21_Y16_N24
\i_RISCV|i_Path|a[11]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[11]~64_combout\ = (\i_RISCV|i_Control|estado_act.Fetch~regout\ & (\i_RISCV|i_Path|pc_out\(11))) # (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & ((\i_RISCV|i_Path|a[11]~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RISCV|i_Path|pc_out\(11),
	datac => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datad => \i_RISCV|i_Path|a[11]~63_combout\,
	combout => \i_RISCV|i_Path|a[11]~64_combout\);

-- Location: LCCOMB_X24_Y15_N18
\i_RISCV|i_Path|sal_and~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|sal_and~1_combout\ = (\i_RISCV|i_Path|b[10]~72_combout\ & (\i_RISCV|i_Path|a[10]~67_combout\ & (\i_RISCV|i_Path|a[11]~64_combout\ $ (!\i_RISCV|i_Path|b[11]~69_combout\)))) # (!\i_RISCV|i_Path|b[10]~72_combout\ & 
-- (!\i_RISCV|i_Path|a[10]~67_combout\ & (\i_RISCV|i_Path|a[11]~64_combout\ $ (!\i_RISCV|i_Path|b[11]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[10]~72_combout\,
	datab => \i_RISCV|i_Path|a[11]~64_combout\,
	datac => \i_RISCV|i_Path|a[10]~67_combout\,
	datad => \i_RISCV|i_Path|b[11]~69_combout\,
	combout => \i_RISCV|i_Path|sal_and~1_combout\);

-- Location: LCCOMB_X24_Y15_N8
\i_RISCV|i_Path|sal_and~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|sal_and~2_combout\ = (\i_RISCV|i_Path|sal_and~0_combout\ & (\i_RISCV|i_Path|sal_and~1_combout\ & (\i_RISCV|i_Path|b[0]~94_combout\ $ (!\i_RISCV|i_Path|a[0]~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|sal_and~0_combout\,
	datab => \i_RISCV|i_Path|b[0]~94_combout\,
	datac => \i_RISCV|i_Path|a[0]~98_combout\,
	datad => \i_RISCV|i_Path|sal_and~1_combout\,
	combout => \i_RISCV|i_Path|sal_and~2_combout\);

-- Location: LCCOMB_X25_Y15_N24
\i_RISCV|i_Path|sal_and~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|sal_and~3_combout\ = (!\i_RISCV|i_Path|i_ALU|Equal2~3_combout\ & (\i_RISCV|i_Path|sal_and~2_combout\ & (\i_RISCV|i_Path|b[1]~93_combout\ $ (!\i_RISCV|i_Path|a[1]~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[1]~93_combout\,
	datab => \i_RISCV|i_Path|a[1]~95_combout\,
	datac => \i_RISCV|i_Path|i_ALU|Equal2~3_combout\,
	datad => \i_RISCV|i_Path|sal_and~2_combout\,
	combout => \i_RISCV|i_Path|sal_and~3_combout\);

-- Location: LCCOMB_X25_Y11_N4
\i_RISCV|i_Path|i_ROM|memory~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ROM|memory~9_combout\ = (!\i_RISCV|i_Path|pc_in[5]~4_combout\ & ((\i_RISCV|i_Path|pc_in[3]~5_combout\ & (!\i_RISCV|i_Path|pc_in[2]~3_combout\ & !\i_RISCV|i_Path|pc_in[4]~2_combout\)) # (!\i_RISCV|i_Path|pc_in[3]~5_combout\ & 
-- (\i_RISCV|i_Path|pc_in[2]~3_combout\ & \i_RISCV|i_Path|pc_in[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|pc_in[3]~5_combout\,
	datab => \i_RISCV|i_Path|pc_in[2]~3_combout\,
	datac => \i_RISCV|i_Path|pc_in[5]~4_combout\,
	datad => \i_RISCV|i_Path|pc_in[4]~2_combout\,
	combout => \i_RISCV|i_Path|i_ROM|memory~9_combout\);

-- Location: LCFF_X25_Y11_N5
\i_RISCV|i_Path|i_ROM|data[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ROM|memory~9_combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_ROM|data\(13));

-- Location: LCFF_X23_Y15_N3
\i_RISCV|i_Path|ir_out_m[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|i_ROM|data\(13),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|ir_out_m\(13));

-- Location: LCCOMB_X24_Y13_N20
\i_RISCV|i_Path|Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux18~0_combout\ = (\i_RISCV|i_Control|estado_act.lui3~regout\ & (((\i_RISCV|i_Path|ir_out_m\(13))))) # (!\i_RISCV|i_Control|estado_act.lui3~regout\ & (\i_RISCV|i_Path|alur_out\(13) & ((!\i_RISCV|i_Control|estado_act.lw5~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|alur_out\(13),
	datab => \i_RISCV|i_Control|estado_act.lui3~regout\,
	datac => \i_RISCV|i_Path|ir_out_m\(13),
	datad => \i_RISCV|i_Control|estado_act.lw5~regout\,
	combout => \i_RISCV|i_Path|Mux18~0_combout\);

-- Location: LCCOMB_X23_Y13_N8
\i_RISCV|i_Path|i_ALU|i1_sr|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~24_combout\ = ((\i_RISCV|i_Path|b[12]~66_combout\ $ (\i_RISCV|i_Path|a[12]~61_combout\ $ (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~23\)))) # (GND)
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~25\ = CARRY((\i_RISCV|i_Path|b[12]~66_combout\ & (\i_RISCV|i_Path|a[12]~61_combout\ & !\i_RISCV|i_Path|i_ALU|i1_sr|Add0~23\)) # (!\i_RISCV|i_Path|b[12]~66_combout\ & ((\i_RISCV|i_Path|a[12]~61_combout\) # 
-- (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[12]~66_combout\,
	datab => \i_RISCV|i_Path|a[12]~61_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~23\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~24_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~25\);

-- Location: LCCOMB_X25_Y14_N24
\i_RISCV|i_Path|i_ALU|i1_sr|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~24_combout\ = ((\i_RISCV|i_Path|b[12]~66_combout\ $ (\i_RISCV|i_Path|a[12]~61_combout\ $ (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~23\)))) # (GND)
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~25\ = CARRY((\i_RISCV|i_Path|b[12]~66_combout\ & ((\i_RISCV|i_Path|a[12]~61_combout\) # (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~23\))) # (!\i_RISCV|i_Path|b[12]~66_combout\ & (\i_RISCV|i_Path|a[12]~61_combout\ & 
-- !\i_RISCV|i_Path|i_ALU|i1_sr|Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[12]~66_combout\,
	datab => \i_RISCV|i_Path|a[12]~61_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~23\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~24_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~25\);

-- Location: LCCOMB_X24_Y11_N30
\i_RISCV|i_Path|i_ALU|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|Mux19~0_combout\ = (!\i_RISCV|i_Control|Selector16~0_combout\ & ((\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~24_combout\)) # (!\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & 
-- ((\i_RISCV|i_Path|i_ALU|i1_sr|Add1~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_ALU|Mux0~0_combout\,
	datab => \i_RISCV|i_Control|Selector16~0_combout\,
	datac => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~24_combout\,
	datad => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~24_combout\,
	combout => \i_RISCV|i_Path|i_ALU|Mux19~0_combout\);

-- Location: LCFF_X24_Y11_N31
\i_RISCV|i_Path|alur_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ALU|Mux19~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|alur_out\(12));

-- Location: LCCOMB_X24_Y11_N24
\i_RISCV|i_Path|pc_in[12]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|pc_in[12]~25_combout\ = (\i_RISCV|i_Control|estado_act.SalCond~regout\ & (((\i_RISCV|i_Path|alur_out\(12))))) # (!\i_RISCV|i_Control|estado_act.SalCond~regout\ & (\i_RISCV|i_Control|estado_act.Reset~regout\ & 
-- ((\i_RISCV|i_Path|i_ALU|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Reset~regout\,
	datab => \i_RISCV|i_Control|estado_act.SalCond~regout\,
	datac => \i_RISCV|i_Path|alur_out\(12),
	datad => \i_RISCV|i_Path|i_ALU|Mux19~0_combout\,
	combout => \i_RISCV|i_Path|pc_in[12]~25_combout\);

-- Location: LCFF_X24_Y11_N25
\i_RISCV|i_Path|pc_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|pc_in[12]~25_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_out\(12));

-- Location: LCFF_X21_Y15_N11
\i_RISCV|i_Path|pc_ir[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|pc_out\(12),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_ir\(12));

-- Location: LCCOMB_X21_Y15_N10
\i_RISCV|i_Path|a[12]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[12]~59_combout\ = (\i_RISCV|i_Control|estado_act.Decod~regout\ & (((\i_RISCV|i_Path|pc_ir\(12))))) # (!\i_RISCV|i_Control|estado_act.Decod~regout\ & ((\i_RISCV|i_Control|estado_act.auipc3~regout\ & ((\i_RISCV|i_Path|pc_ir\(12)))) # 
-- (!\i_RISCV|i_Control|estado_act.auipc3~regout\ & (\i_RISCV|i_Path|ir_out_m\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Decod~regout\,
	datab => \i_RISCV|i_Path|ir_out_m\(17),
	datac => \i_RISCV|i_Path|pc_ir\(12),
	datad => \i_RISCV|i_Control|estado_act.auipc3~regout\,
	combout => \i_RISCV|i_Path|a[12]~59_combout\);

-- Location: LCCOMB_X25_Y11_N30
\i_RISCV|i_Path|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux19~0_combout\ = (\i_RISCV|i_Control|estado_act.Jalr~regout\ & (((\i_RISCV|i_Path|pc_out\(12))))) # (!\i_RISCV|i_Control|estado_act.Jalr~regout\ & (\i_RISCV|i_Path|alur_out\(12) & ((!\i_RISCV|i_Control|estado_act.lw5~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|alur_out\(12),
	datab => \i_RISCV|i_Path|pc_out\(12),
	datac => \i_RISCV|i_Control|estado_act.lw5~regout\,
	datad => \i_RISCV|i_Control|estado_act.Jalr~regout\,
	combout => \i_RISCV|i_Path|Mux19~0_combout\);

-- Location: LCCOMB_X24_Y11_N8
\i_RISCV|i_Path|Mux19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux19~1_combout\ = (!\i_RISCV|i_Control|estado_act.lui3~regout\ & \i_RISCV|i_Path|Mux19~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.lui3~regout\,
	datad => \i_RISCV|i_Path|Mux19~0_combout\,
	combout => \i_RISCV|i_Path|Mux19~1_combout\);

-- Location: LCFF_X22_Y12_N23
\i_RISCV|i_Path|i_BancoReg|reg[1][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux19~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[1][12]~regout\);

-- Location: LCCOMB_X22_Y12_N22
\i_RISCV|i_Path|a[12]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[12]~60_combout\ = (\i_RISCV|i_Path|a[12]~59_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[5][12]~regout\) # ((!\i_RISCV|i_Path|a[14]~1_combout\)))) # (!\i_RISCV|i_Path|a[12]~59_combout\ & (((\i_RISCV|i_Path|i_BancoReg|reg[1][12]~regout\ & 
-- \i_RISCV|i_Path|a[14]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_BancoReg|reg[5][12]~regout\,
	datab => \i_RISCV|i_Path|a[12]~59_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[1][12]~regout\,
	datad => \i_RISCV|i_Path|a[14]~1_combout\,
	combout => \i_RISCV|i_Path|a[12]~60_combout\);

-- Location: LCCOMB_X22_Y12_N2
\i_RISCV|i_Path|a[12]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[12]~61_combout\ = (\i_RISCV|i_Control|estado_act.Fetch~regout\ & (\i_RISCV|i_Path|pc_out\(12))) # (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & ((\i_RISCV|i_Path|a[12]~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|pc_out\(12),
	datab => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datad => \i_RISCV|i_Path|a[12]~60_combout\,
	combout => \i_RISCV|i_Path|a[12]~61_combout\);

-- Location: LCCOMB_X25_Y14_N26
\i_RISCV|i_Path|i_ALU|i1_sr|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~26_combout\ = (\i_RISCV|i_Path|a[13]~58_combout\ & ((\i_RISCV|i_Path|b[13]~63_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add1~25\ & VCC)) # (!\i_RISCV|i_Path|b[13]~63_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~25\)))) # 
-- (!\i_RISCV|i_Path|a[13]~58_combout\ & ((\i_RISCV|i_Path|b[13]~63_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~25\)) # (!\i_RISCV|i_Path|b[13]~63_combout\ & ((\i_RISCV|i_Path|i_ALU|i1_sr|Add1~25\) # (GND)))))
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~27\ = CARRY((\i_RISCV|i_Path|a[13]~58_combout\ & (!\i_RISCV|i_Path|b[13]~63_combout\ & !\i_RISCV|i_Path|i_ALU|i1_sr|Add1~25\)) # (!\i_RISCV|i_Path|a[13]~58_combout\ & ((!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~25\) # 
-- (!\i_RISCV|i_Path|b[13]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[13]~58_combout\,
	datab => \i_RISCV|i_Path|b[13]~63_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~25\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~26_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~27\);

-- Location: LCCOMB_X23_Y13_N10
\i_RISCV|i_Path|i_ALU|i1_sr|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~26_combout\ = (\i_RISCV|i_Path|a[13]~58_combout\ & ((\i_RISCV|i_Path|b[13]~63_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~25\)) # (!\i_RISCV|i_Path|b[13]~63_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~25\ & VCC)))) # 
-- (!\i_RISCV|i_Path|a[13]~58_combout\ & ((\i_RISCV|i_Path|b[13]~63_combout\ & ((\i_RISCV|i_Path|i_ALU|i1_sr|Add0~25\) # (GND))) # (!\i_RISCV|i_Path|b[13]~63_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~25\))))
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~27\ = CARRY((\i_RISCV|i_Path|a[13]~58_combout\ & (\i_RISCV|i_Path|b[13]~63_combout\ & !\i_RISCV|i_Path|i_ALU|i1_sr|Add0~25\)) # (!\i_RISCV|i_Path|a[13]~58_combout\ & ((\i_RISCV|i_Path|b[13]~63_combout\) # 
-- (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[13]~58_combout\,
	datab => \i_RISCV|i_Path|b[13]~63_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~25\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~26_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~27\);

-- Location: LCCOMB_X24_Y13_N14
\i_RISCV|i_Path|i_ALU|Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|Mux18~0_combout\ = (!\i_RISCV|i_Control|Selector16~0_combout\ & ((\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & ((\i_RISCV|i_Path|i_ALU|i1_sr|Add0~26_combout\))) # (!\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & 
-- (\i_RISCV|i_Path|i_ALU|i1_sr|Add1~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|Selector16~0_combout\,
	datab => \i_RISCV|i_Path|i_ALU|Mux0~0_combout\,
	datac => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~26_combout\,
	datad => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~26_combout\,
	combout => \i_RISCV|i_Path|i_ALU|Mux18~0_combout\);

-- Location: LCCOMB_X24_Y13_N10
\i_RISCV|i_Path|pc_in[13]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|pc_in[13]~24_combout\ = (\i_RISCV|i_Control|estado_act.SalCond~regout\ & (\i_RISCV|i_Path|alur_out\(13))) # (!\i_RISCV|i_Control|estado_act.SalCond~regout\ & (((\i_RISCV|i_Control|estado_act.Reset~regout\ & 
-- \i_RISCV|i_Path|i_ALU|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|alur_out\(13),
	datab => \i_RISCV|i_Control|estado_act.Reset~regout\,
	datac => \i_RISCV|i_Path|i_ALU|Mux18~0_combout\,
	datad => \i_RISCV|i_Control|estado_act.SalCond~regout\,
	combout => \i_RISCV|i_Path|pc_in[13]~24_combout\);

-- Location: LCFF_X24_Y13_N11
\i_RISCV|i_Path|pc_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|pc_in[13]~24_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_out\(13));

-- Location: LCCOMB_X24_Y13_N26
\i_RISCV|i_Path|Mux18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux18~1_combout\ = (\i_RISCV|i_Control|estado_act.Jalr~regout\ & ((\i_RISCV|i_Path|pc_out\(13)))) # (!\i_RISCV|i_Control|estado_act.Jalr~regout\ & (\i_RISCV|i_Path|Mux18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RISCV|i_Control|estado_act.Jalr~regout\,
	datac => \i_RISCV|i_Path|Mux18~0_combout\,
	datad => \i_RISCV|i_Path|pc_out\(13),
	combout => \i_RISCV|i_Path|Mux18~1_combout\);

-- Location: LCFF_X24_Y15_N25
\i_RISCV|i_Path|i_BancoReg|reg[4][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux18~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[4][13]~regout\);

-- Location: LCFF_X23_Y15_N25
\i_RISCV|i_Path|i_BancoReg|reg[2][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux18~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[2][13]~regout\);

-- Location: LCCOMB_X25_Y11_N6
\i_RISCV|i_Path|i_ROM|memory~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ROM|memory~6_combout\ = (!\i_RISCV|i_Path|pc_in[5]~4_combout\ & ((\i_RISCV|i_Path|pc_in[3]~5_combout\ & (\i_RISCV|i_Path|pc_in[2]~3_combout\ $ (\i_RISCV|i_Path|pc_in[4]~2_combout\))) # (!\i_RISCV|i_Path|pc_in[3]~5_combout\ & 
-- (!\i_RISCV|i_Path|pc_in[2]~3_combout\ & !\i_RISCV|i_Path|pc_in[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|pc_in[3]~5_combout\,
	datab => \i_RISCV|i_Path|pc_in[2]~3_combout\,
	datac => \i_RISCV|i_Path|pc_in[5]~4_combout\,
	datad => \i_RISCV|i_Path|pc_in[4]~2_combout\,
	combout => \i_RISCV|i_Path|i_ROM|memory~6_combout\);

-- Location: LCFF_X25_Y11_N7
\i_RISCV|i_Path|i_ROM|data[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ROM|memory~6_combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_ROM|data\(31));

-- Location: LCFF_X23_Y15_N5
\i_RISCV|i_Path|ir_out_m[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|i_ROM|data\(31),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|ir_out_m\(31));

-- Location: LCCOMB_X23_Y15_N2
\i_RISCV|i_Path|i_genInm|inm[13]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_genInm|inm[13]~5_combout\ = (\i_RISCV|i_Control|WideOr12~0_combout\ & (\i_RISCV|i_Path|ir_out_m\(31))) # (!\i_RISCV|i_Control|WideOr12~0_combout\ & ((\i_RISCV|i_Control|Selector18~0_combout\ & (\i_RISCV|i_Path|ir_out_m\(31))) # 
-- (!\i_RISCV|i_Control|Selector18~0_combout\ & ((\i_RISCV|i_Path|ir_out_m\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|WideOr12~0_combout\,
	datab => \i_RISCV|i_Path|ir_out_m\(31),
	datac => \i_RISCV|i_Path|ir_out_m\(13),
	datad => \i_RISCV|i_Control|Selector18~0_combout\,
	combout => \i_RISCV|i_Path|i_genInm|inm[13]~5_combout\);

-- Location: LCCOMB_X23_Y15_N24
\i_RISCV|i_Path|b[13]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[13]~61_combout\ = (\i_RISCV|i_Path|b[26]~6_combout\ & (((\i_RISCV|i_Path|i_genInm|inm[13]~5_combout\)) # (!\i_RISCV|i_Path|b[26]~5_combout\))) # (!\i_RISCV|i_Path|b[26]~6_combout\ & (\i_RISCV|i_Path|b[26]~5_combout\ & 
-- (\i_RISCV|i_Path|i_BancoReg|reg[2][13]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[26]~6_combout\,
	datab => \i_RISCV|i_Path|b[26]~5_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[2][13]~regout\,
	datad => \i_RISCV|i_Path|i_genInm|inm[13]~5_combout\,
	combout => \i_RISCV|i_Path|b[13]~61_combout\);

-- Location: LCCOMB_X24_Y15_N24
\i_RISCV|i_Path|b[13]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[13]~62_combout\ = (\i_RISCV|i_Path|b[26]~4_combout\ & ((\i_RISCV|i_Path|b[13]~61_combout\ & (\i_RISCV|i_Path|i_BancoReg|reg[6][13]~regout\)) # (!\i_RISCV|i_Path|b[13]~61_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[4][13]~regout\))))) # 
-- (!\i_RISCV|i_Path|b[26]~4_combout\ & (((\i_RISCV|i_Path|b[13]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_BancoReg|reg[6][13]~regout\,
	datab => \i_RISCV|i_Path|b[26]~4_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[4][13]~regout\,
	datad => \i_RISCV|i_Path|b[13]~61_combout\,
	combout => \i_RISCV|i_Path|b[13]~62_combout\);

-- Location: LCCOMB_X24_Y15_N22
\i_RISCV|i_Path|b[13]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[13]~63_combout\ = (\i_RISCV|i_Path|b[13]~62_combout\ & !\i_RISCV|i_Control|estado_act.Fetch~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_RISCV|i_Path|b[13]~62_combout\,
	datad => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	combout => \i_RISCV|i_Path|b[13]~63_combout\);

-- Location: LCFF_X26_Y15_N13
\i_RISCV|i_Path|i_BancoReg|reg[4][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux19~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[4][12]~regout\);

-- Location: LCFF_X26_Y15_N3
\i_RISCV|i_Path|i_BancoReg|reg[2][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux19~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[2][12]~regout\);

-- Location: LCCOMB_X23_Y15_N30
\i_RISCV|i_Path|i_genInm|inm[19]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_genInm|inm[19]~2_combout\ = (\i_RISCV|i_Path|ir_out_m\(31) & ((\i_RISCV|i_Control|Selector18~0_combout\) # (\i_RISCV|i_Control|WideOr12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RISCV|i_Control|Selector18~0_combout\,
	datac => \i_RISCV|i_Path|ir_out_m\(31),
	datad => \i_RISCV|i_Control|WideOr12~0_combout\,
	combout => \i_RISCV|i_Path|i_genInm|inm[19]~2_combout\);

-- Location: LCCOMB_X26_Y15_N2
\i_RISCV|i_Path|b[12]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[12]~64_combout\ = (\i_RISCV|i_Path|b[26]~5_combout\ & ((\i_RISCV|i_Path|b[26]~6_combout\ & ((\i_RISCV|i_Path|i_genInm|inm[19]~2_combout\))) # (!\i_RISCV|i_Path|b[26]~6_combout\ & (\i_RISCV|i_Path|i_BancoReg|reg[2][12]~regout\)))) # 
-- (!\i_RISCV|i_Path|b[26]~5_combout\ & (\i_RISCV|i_Path|b[26]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[26]~5_combout\,
	datab => \i_RISCV|i_Path|b[26]~6_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[2][12]~regout\,
	datad => \i_RISCV|i_Path|i_genInm|inm[19]~2_combout\,
	combout => \i_RISCV|i_Path|b[12]~64_combout\);

-- Location: LCCOMB_X26_Y15_N12
\i_RISCV|i_Path|b[12]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[12]~65_combout\ = (\i_RISCV|i_Path|b[26]~4_combout\ & ((\i_RISCV|i_Path|b[12]~64_combout\ & (\i_RISCV|i_Path|i_BancoReg|reg[6][12]~regout\)) # (!\i_RISCV|i_Path|b[12]~64_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[4][12]~regout\))))) # 
-- (!\i_RISCV|i_Path|b[26]~4_combout\ & (((\i_RISCV|i_Path|b[12]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_BancoReg|reg[6][12]~regout\,
	datab => \i_RISCV|i_Path|b[26]~4_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[4][12]~regout\,
	datad => \i_RISCV|i_Path|b[12]~64_combout\,
	combout => \i_RISCV|i_Path|b[12]~65_combout\);

-- Location: LCCOMB_X26_Y15_N16
\i_RISCV|i_Path|b[12]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[12]~66_combout\ = (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & \i_RISCV|i_Path|b[12]~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datad => \i_RISCV|i_Path|b[12]~65_combout\,
	combout => \i_RISCV|i_Path|b[12]~66_combout\);

-- Location: LCCOMB_X25_Y15_N26
\i_RISCV|i_Path|sal_and~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|sal_and~5_combout\ = (\i_RISCV|i_Path|a[13]~58_combout\ & (\i_RISCV|i_Path|b[13]~63_combout\ & (\i_RISCV|i_Path|b[12]~66_combout\ $ (!\i_RISCV|i_Path|a[12]~61_combout\)))) # (!\i_RISCV|i_Path|a[13]~58_combout\ & 
-- (!\i_RISCV|i_Path|b[13]~63_combout\ & (\i_RISCV|i_Path|b[12]~66_combout\ $ (!\i_RISCV|i_Path|a[12]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[13]~58_combout\,
	datab => \i_RISCV|i_Path|b[13]~63_combout\,
	datac => \i_RISCV|i_Path|b[12]~66_combout\,
	datad => \i_RISCV|i_Path|a[12]~61_combout\,
	combout => \i_RISCV|i_Path|sal_and~5_combout\);

-- Location: LCFF_X24_Y14_N31
\i_RISCV|i_Path|alur_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ALU|Mux16~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|alur_out\(15));

-- Location: LCCOMB_X23_Y11_N2
\i_RISCV|i_Path|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux16~0_combout\ = (\i_RISCV|i_Control|estado_act.lui3~regout\ & (\i_RISCV|i_Path|ir_out_m\(17))) # (!\i_RISCV|i_Control|estado_act.lui3~regout\ & (((\i_RISCV|i_Path|alur_out\(15) & !\i_RISCV|i_Control|estado_act.lw5~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|ir_out_m\(17),
	datab => \i_RISCV|i_Path|alur_out\(15),
	datac => \i_RISCV|i_Control|estado_act.lui3~regout\,
	datad => \i_RISCV|i_Control|estado_act.lw5~regout\,
	combout => \i_RISCV|i_Path|Mux16~0_combout\);

-- Location: LCCOMB_X24_Y14_N24
\i_RISCV|i_Path|Mux16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux16~1_combout\ = (\i_RISCV|i_Control|estado_act.Jalr~regout\ & (\i_RISCV|i_Path|pc_out\(15))) # (!\i_RISCV|i_Control|estado_act.Jalr~regout\ & ((\i_RISCV|i_Path|Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|pc_out\(15),
	datab => \i_RISCV|i_Control|estado_act.Jalr~regout\,
	datad => \i_RISCV|i_Path|Mux16~0_combout\,
	combout => \i_RISCV|i_Path|Mux16~1_combout\);

-- Location: LCFF_X24_Y16_N11
\i_RISCV|i_Path|i_BancoReg|reg[6][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux16~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[6][15]~regout\);

-- Location: LCFF_X23_Y15_N11
\i_RISCV|i_Path|i_BancoReg|reg[2][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux16~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[2][15]~regout\);

-- Location: LCCOMB_X23_Y15_N10
\i_RISCV|i_Path|b[15]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[15]~55_combout\ = (\i_RISCV|i_Path|b[26]~5_combout\ & ((\i_RISCV|i_Path|b[26]~6_combout\ & (\i_RISCV|i_Path|i_genInm|inm[15]~4_combout\)) # (!\i_RISCV|i_Path|b[26]~6_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[2][15]~regout\))))) # 
-- (!\i_RISCV|i_Path|b[26]~5_combout\ & (((\i_RISCV|i_Path|b[26]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_genInm|inm[15]~4_combout\,
	datab => \i_RISCV|i_Path|b[26]~5_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[2][15]~regout\,
	datad => \i_RISCV|i_Path|b[26]~6_combout\,
	combout => \i_RISCV|i_Path|b[15]~55_combout\);

-- Location: LCCOMB_X24_Y16_N10
\i_RISCV|i_Path|b[15]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[15]~56_combout\ = (\i_RISCV|i_Path|b[26]~4_combout\ & ((\i_RISCV|i_Path|b[15]~55_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[6][15]~regout\))) # (!\i_RISCV|i_Path|b[15]~55_combout\ & (\i_RISCV|i_Path|i_BancoReg|reg[4][15]~regout\)))) # 
-- (!\i_RISCV|i_Path|b[26]~4_combout\ & (((\i_RISCV|i_Path|b[15]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_BancoReg|reg[4][15]~regout\,
	datab => \i_RISCV|i_Path|b[26]~4_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[6][15]~regout\,
	datad => \i_RISCV|i_Path|b[15]~55_combout\,
	combout => \i_RISCV|i_Path|b[15]~56_combout\);

-- Location: LCCOMB_X24_Y16_N8
\i_RISCV|i_Path|b[15]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[15]~57_combout\ = (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & \i_RISCV|i_Path|b[15]~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datad => \i_RISCV|i_Path|b[15]~56_combout\,
	combout => \i_RISCV|i_Path|b[15]~57_combout\);

-- Location: LCCOMB_X23_Y13_N12
\i_RISCV|i_Path|i_ALU|i1_sr|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~28_combout\ = ((\i_RISCV|i_Path|b[14]~60_combout\ $ (\i_RISCV|i_Path|a[14]~55_combout\ $ (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~27\)))) # (GND)
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~29\ = CARRY((\i_RISCV|i_Path|b[14]~60_combout\ & (\i_RISCV|i_Path|a[14]~55_combout\ & !\i_RISCV|i_Path|i_ALU|i1_sr|Add0~27\)) # (!\i_RISCV|i_Path|b[14]~60_combout\ & ((\i_RISCV|i_Path|a[14]~55_combout\) # 
-- (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[14]~60_combout\,
	datab => \i_RISCV|i_Path|a[14]~55_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~27\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~28_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~29\);

-- Location: LCCOMB_X25_Y14_N28
\i_RISCV|i_Path|i_ALU|i1_sr|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~28_combout\ = ((\i_RISCV|i_Path|b[14]~60_combout\ $ (\i_RISCV|i_Path|a[14]~55_combout\ $ (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~27\)))) # (GND)
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~29\ = CARRY((\i_RISCV|i_Path|b[14]~60_combout\ & ((\i_RISCV|i_Path|a[14]~55_combout\) # (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~27\))) # (!\i_RISCV|i_Path|b[14]~60_combout\ & (\i_RISCV|i_Path|a[14]~55_combout\ & 
-- !\i_RISCV|i_Path|i_ALU|i1_sr|Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[14]~60_combout\,
	datab => \i_RISCV|i_Path|a[14]~55_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~27\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~28_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~29\);

-- Location: LCCOMB_X26_Y13_N6
\i_RISCV|i_Path|i_ALU|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|Mux17~0_combout\ = (!\i_RISCV|i_Control|Selector16~0_combout\ & ((\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~28_combout\)) # (!\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & 
-- ((\i_RISCV|i_Path|i_ALU|i1_sr|Add1~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_ALU|Mux0~0_combout\,
	datab => \i_RISCV|i_Control|Selector16~0_combout\,
	datac => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~28_combout\,
	datad => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~28_combout\,
	combout => \i_RISCV|i_Path|i_ALU|Mux17~0_combout\);

-- Location: LCCOMB_X26_Y13_N4
\i_RISCV|i_Path|pc_in[14]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|pc_in[14]~23_combout\ = (\i_RISCV|i_Control|estado_act.SalCond~regout\ & (\i_RISCV|i_Path|alur_out\(14))) # (!\i_RISCV|i_Control|estado_act.SalCond~regout\ & (((\i_RISCV|i_Control|estado_act.Reset~regout\ & 
-- \i_RISCV|i_Path|i_ALU|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|alur_out\(14),
	datab => \i_RISCV|i_Control|estado_act.SalCond~regout\,
	datac => \i_RISCV|i_Control|estado_act.Reset~regout\,
	datad => \i_RISCV|i_Path|i_ALU|Mux17~0_combout\,
	combout => \i_RISCV|i_Path|pc_in[14]~23_combout\);

-- Location: LCFF_X26_Y13_N5
\i_RISCV|i_Path|pc_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|pc_in[14]~23_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_out\(14));

-- Location: LCCOMB_X26_Y13_N24
\i_RISCV|i_Path|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux17~0_combout\ = (\i_RISCV|i_Control|estado_act.Jalr~regout\ & (((\i_RISCV|i_Path|pc_out\(14))))) # (!\i_RISCV|i_Control|estado_act.Jalr~regout\ & (\i_RISCV|i_Path|alur_out\(14) & (!\i_RISCV|i_Control|estado_act.lw5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|alur_out\(14),
	datab => \i_RISCV|i_Control|estado_act.lw5~regout\,
	datac => \i_RISCV|i_Path|pc_out\(14),
	datad => \i_RISCV|i_Control|estado_act.Jalr~regout\,
	combout => \i_RISCV|i_Path|Mux17~0_combout\);

-- Location: LCCOMB_X26_Y13_N18
\i_RISCV|i_Path|Mux17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux17~1_combout\ = (!\i_RISCV|i_Control|estado_act.lui3~regout\ & \i_RISCV|i_Path|Mux17~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RISCV|i_Control|estado_act.lui3~regout\,
	datad => \i_RISCV|i_Path|Mux17~0_combout\,
	combout => \i_RISCV|i_Path|Mux17~1_combout\);

-- Location: LCCOMB_X20_Y15_N26
\i_RISCV|i_Path|i_BancoReg|reg[5][14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_BancoReg|reg[5][14]~feeder_combout\ = \i_RISCV|i_Path|Mux17~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_RISCV|i_Path|Mux17~1_combout\,
	combout => \i_RISCV|i_Path|i_BancoReg|reg[5][14]~feeder_combout\);

-- Location: LCFF_X20_Y15_N27
\i_RISCV|i_Path|i_BancoReg|reg[5][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_BancoReg|reg[5][14]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[5][14]~regout\);

-- Location: LCFF_X21_Y15_N21
\i_RISCV|i_Path|i_BancoReg|reg[1][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux17~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[1][14]~regout\);

-- Location: LCFF_X21_Y15_N19
\i_RISCV|i_Path|pc_ir[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|pc_out\(14),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_ir\(14));

-- Location: LCCOMB_X21_Y15_N18
\i_RISCV|i_Path|a[14]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[14]~53_combout\ = (\i_RISCV|i_Control|estado_act.Decod~regout\ & (((\i_RISCV|i_Path|pc_ir\(14))))) # (!\i_RISCV|i_Control|estado_act.Decod~regout\ & ((\i_RISCV|i_Control|estado_act.auipc3~regout\ & ((\i_RISCV|i_Path|pc_ir\(14)))) # 
-- (!\i_RISCV|i_Control|estado_act.auipc3~regout\ & (\i_RISCV|i_Path|ir_out_m\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Decod~regout\,
	datab => \i_RISCV|i_Path|ir_out_m\(17),
	datac => \i_RISCV|i_Path|pc_ir\(14),
	datad => \i_RISCV|i_Control|estado_act.auipc3~regout\,
	combout => \i_RISCV|i_Path|a[14]~53_combout\);

-- Location: LCCOMB_X21_Y15_N20
\i_RISCV|i_Path|a[14]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[14]~54_combout\ = (\i_RISCV|i_Path|a[14]~1_combout\ & ((\i_RISCV|i_Path|a[14]~53_combout\ & (\i_RISCV|i_Path|i_BancoReg|reg[5][14]~regout\)) # (!\i_RISCV|i_Path|a[14]~53_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[1][14]~regout\))))) # 
-- (!\i_RISCV|i_Path|a[14]~1_combout\ & (((\i_RISCV|i_Path|a[14]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[14]~1_combout\,
	datab => \i_RISCV|i_Path|i_BancoReg|reg[5][14]~regout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[1][14]~regout\,
	datad => \i_RISCV|i_Path|a[14]~53_combout\,
	combout => \i_RISCV|i_Path|a[14]~54_combout\);

-- Location: LCCOMB_X26_Y13_N2
\i_RISCV|i_Path|a[14]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[14]~55_combout\ = (\i_RISCV|i_Control|estado_act.Fetch~regout\ & (\i_RISCV|i_Path|pc_out\(14))) # (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & ((\i_RISCV|i_Path|a[14]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datac => \i_RISCV|i_Path|pc_out\(14),
	datad => \i_RISCV|i_Path|a[14]~54_combout\,
	combout => \i_RISCV|i_Path|a[14]~55_combout\);

-- Location: LCCOMB_X23_Y13_N14
\i_RISCV|i_Path|i_ALU|i1_sr|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~30_combout\ = (\i_RISCV|i_Path|a[15]~52_combout\ & ((\i_RISCV|i_Path|b[15]~57_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~29\)) # (!\i_RISCV|i_Path|b[15]~57_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~29\ & VCC)))) # 
-- (!\i_RISCV|i_Path|a[15]~52_combout\ & ((\i_RISCV|i_Path|b[15]~57_combout\ & ((\i_RISCV|i_Path|i_ALU|i1_sr|Add0~29\) # (GND))) # (!\i_RISCV|i_Path|b[15]~57_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~29\))))
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~31\ = CARRY((\i_RISCV|i_Path|a[15]~52_combout\ & (\i_RISCV|i_Path|b[15]~57_combout\ & !\i_RISCV|i_Path|i_ALU|i1_sr|Add0~29\)) # (!\i_RISCV|i_Path|a[15]~52_combout\ & ((\i_RISCV|i_Path|b[15]~57_combout\) # 
-- (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[15]~52_combout\,
	datab => \i_RISCV|i_Path|b[15]~57_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~29\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~30_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~31\);

-- Location: LCCOMB_X25_Y14_N30
\i_RISCV|i_Path|i_ALU|i1_sr|Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~30_combout\ = (\i_RISCV|i_Path|b[15]~57_combout\ & ((\i_RISCV|i_Path|a[15]~52_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add1~29\ & VCC)) # (!\i_RISCV|i_Path|a[15]~52_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~29\)))) # 
-- (!\i_RISCV|i_Path|b[15]~57_combout\ & ((\i_RISCV|i_Path|a[15]~52_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~29\)) # (!\i_RISCV|i_Path|a[15]~52_combout\ & ((\i_RISCV|i_Path|i_ALU|i1_sr|Add1~29\) # (GND)))))
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~31\ = CARRY((\i_RISCV|i_Path|b[15]~57_combout\ & (!\i_RISCV|i_Path|a[15]~52_combout\ & !\i_RISCV|i_Path|i_ALU|i1_sr|Add1~29\)) # (!\i_RISCV|i_Path|b[15]~57_combout\ & ((!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~29\) # 
-- (!\i_RISCV|i_Path|a[15]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[15]~57_combout\,
	datab => \i_RISCV|i_Path|a[15]~52_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~29\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~30_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~31\);

-- Location: LCCOMB_X24_Y14_N30
\i_RISCV|i_Path|i_ALU|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|Mux16~0_combout\ = (!\i_RISCV|i_Control|Selector16~0_combout\ & ((\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~30_combout\)) # (!\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & 
-- ((\i_RISCV|i_Path|i_ALU|i1_sr|Add1~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|Selector16~0_combout\,
	datab => \i_RISCV|i_Path|i_ALU|Mux0~0_combout\,
	datac => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~30_combout\,
	datad => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~30_combout\,
	combout => \i_RISCV|i_Path|i_ALU|Mux16~0_combout\);

-- Location: LCCOMB_X24_Y14_N0
\i_RISCV|i_Path|pc_in[15]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|pc_in[15]~22_combout\ = (\i_RISCV|i_Control|estado_act.SalCond~regout\ & (((\i_RISCV|i_Path|alur_out\(15))))) # (!\i_RISCV|i_Control|estado_act.SalCond~regout\ & (\i_RISCV|i_Path|i_ALU|Mux16~0_combout\ & 
-- ((\i_RISCV|i_Control|estado_act.Reset~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.SalCond~regout\,
	datab => \i_RISCV|i_Path|i_ALU|Mux16~0_combout\,
	datac => \i_RISCV|i_Path|alur_out\(15),
	datad => \i_RISCV|i_Control|estado_act.Reset~regout\,
	combout => \i_RISCV|i_Path|pc_in[15]~22_combout\);

-- Location: LCFF_X24_Y14_N1
\i_RISCV|i_Path|pc_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|pc_in[15]~22_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_out\(15));

-- Location: LCFF_X20_Y15_N29
\i_RISCV|i_Path|i_BancoReg|reg[5][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux16~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[5][15]~regout\);

-- Location: LCFF_X21_Y15_N1
\i_RISCV|i_Path|i_BancoReg|reg[1][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux16~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[1][15]~regout\);

-- Location: LCFF_X21_Y15_N31
\i_RISCV|i_Path|pc_ir[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|pc_out\(15),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_ir\(15));

-- Location: LCCOMB_X21_Y15_N30
\i_RISCV|i_Path|a[15]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[15]~50_combout\ = (\i_RISCV|i_Control|estado_act.Decod~regout\ & (((\i_RISCV|i_Path|pc_ir\(15))))) # (!\i_RISCV|i_Control|estado_act.Decod~regout\ & ((\i_RISCV|i_Control|estado_act.auipc3~regout\ & (\i_RISCV|i_Path|pc_ir\(15))) # 
-- (!\i_RISCV|i_Control|estado_act.auipc3~regout\ & ((\i_RISCV|i_Path|ir_out_m\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Decod~regout\,
	datab => \i_RISCV|i_Control|estado_act.auipc3~regout\,
	datac => \i_RISCV|i_Path|pc_ir\(15),
	datad => \i_RISCV|i_Path|ir_out_m\(17),
	combout => \i_RISCV|i_Path|a[15]~50_combout\);

-- Location: LCCOMB_X21_Y15_N0
\i_RISCV|i_Path|a[15]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[15]~51_combout\ = (\i_RISCV|i_Path|a[14]~1_combout\ & ((\i_RISCV|i_Path|a[15]~50_combout\ & (\i_RISCV|i_Path|i_BancoReg|reg[5][15]~regout\)) # (!\i_RISCV|i_Path|a[15]~50_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[1][15]~regout\))))) # 
-- (!\i_RISCV|i_Path|a[14]~1_combout\ & (((\i_RISCV|i_Path|a[15]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[14]~1_combout\,
	datab => \i_RISCV|i_Path|i_BancoReg|reg[5][15]~regout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[1][15]~regout\,
	datad => \i_RISCV|i_Path|a[15]~50_combout\,
	combout => \i_RISCV|i_Path|a[15]~51_combout\);

-- Location: LCCOMB_X21_Y15_N28
\i_RISCV|i_Path|a[15]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[15]~52_combout\ = (\i_RISCV|i_Control|estado_act.Fetch~regout\ & (\i_RISCV|i_Path|pc_out\(15))) # (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & ((\i_RISCV|i_Path|a[15]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datab => \i_RISCV|i_Path|pc_out\(15),
	datad => \i_RISCV|i_Path|a[15]~51_combout\,
	combout => \i_RISCV|i_Path|a[15]~52_combout\);

-- Location: LCCOMB_X25_Y13_N0
\i_RISCV|i_Path|i_ALU|i1_sr|Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~32_combout\ = ((\i_RISCV|i_Path|b[16]~54_combout\ $ (\i_RISCV|i_Path|a[16]~49_combout\ $ (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~31\)))) # (GND)
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~33\ = CARRY((\i_RISCV|i_Path|b[16]~54_combout\ & ((\i_RISCV|i_Path|a[16]~49_combout\) # (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~31\))) # (!\i_RISCV|i_Path|b[16]~54_combout\ & (\i_RISCV|i_Path|a[16]~49_combout\ & 
-- !\i_RISCV|i_Path|i_ALU|i1_sr|Add1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[16]~54_combout\,
	datab => \i_RISCV|i_Path|a[16]~49_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~31\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~32_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~33\);

-- Location: LCCOMB_X23_Y13_N16
\i_RISCV|i_Path|i_ALU|i1_sr|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~32_combout\ = ((\i_RISCV|i_Path|b[16]~54_combout\ $ (\i_RISCV|i_Path|a[16]~49_combout\ $ (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~31\)))) # (GND)
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~33\ = CARRY((\i_RISCV|i_Path|b[16]~54_combout\ & (\i_RISCV|i_Path|a[16]~49_combout\ & !\i_RISCV|i_Path|i_ALU|i1_sr|Add0~31\)) # (!\i_RISCV|i_Path|b[16]~54_combout\ & ((\i_RISCV|i_Path|a[16]~49_combout\) # 
-- (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[16]~54_combout\,
	datab => \i_RISCV|i_Path|a[16]~49_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~31\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~32_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~33\);

-- Location: LCCOMB_X26_Y13_N28
\i_RISCV|i_Path|i_ALU|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|Mux15~0_combout\ = (!\i_RISCV|i_Control|Selector16~0_combout\ & ((\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & ((\i_RISCV|i_Path|i_ALU|i1_sr|Add0~32_combout\))) # (!\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & 
-- (\i_RISCV|i_Path|i_ALU|i1_sr|Add1~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_ALU|Mux0~0_combout\,
	datab => \i_RISCV|i_Control|Selector16~0_combout\,
	datac => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~32_combout\,
	datad => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~32_combout\,
	combout => \i_RISCV|i_Path|i_ALU|Mux15~0_combout\);

-- Location: LCCOMB_X26_Y13_N20
\i_RISCV|i_Path|pc_in[16]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|pc_in[16]~21_combout\ = (\i_RISCV|i_Control|estado_act.SalCond~regout\ & (\i_RISCV|i_Path|alur_out\(16))) # (!\i_RISCV|i_Control|estado_act.SalCond~regout\ & (((\i_RISCV|i_Control|estado_act.Reset~regout\ & 
-- \i_RISCV|i_Path|i_ALU|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|alur_out\(16),
	datab => \i_RISCV|i_Control|estado_act.SalCond~regout\,
	datac => \i_RISCV|i_Control|estado_act.Reset~regout\,
	datad => \i_RISCV|i_Path|i_ALU|Mux15~0_combout\,
	combout => \i_RISCV|i_Path|pc_in[16]~21_combout\);

-- Location: LCFF_X26_Y13_N21
\i_RISCV|i_Path|pc_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|pc_in[16]~21_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_out\(16));

-- Location: LCFF_X26_Y13_N29
\i_RISCV|i_Path|alur_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ALU|Mux15~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|alur_out\(16));

-- Location: LCCOMB_X26_Y13_N22
\i_RISCV|i_Path|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux15~0_combout\ = (\i_RISCV|i_Control|estado_act.Jalr~regout\ & (\i_RISCV|i_Path|pc_out\(16))) # (!\i_RISCV|i_Control|estado_act.Jalr~regout\ & (((!\i_RISCV|i_Control|estado_act.lw5~regout\ & \i_RISCV|i_Path|alur_out\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|pc_out\(16),
	datab => \i_RISCV|i_Control|estado_act.lw5~regout\,
	datac => \i_RISCV|i_Path|alur_out\(16),
	datad => \i_RISCV|i_Control|estado_act.Jalr~regout\,
	combout => \i_RISCV|i_Path|Mux15~0_combout\);

-- Location: LCCOMB_X26_Y13_N8
\i_RISCV|i_Path|Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux15~1_combout\ = (!\i_RISCV|i_Control|estado_act.lui3~regout\ & \i_RISCV|i_Path|Mux15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RISCV|i_Control|estado_act.lui3~regout\,
	datad => \i_RISCV|i_Path|Mux15~0_combout\,
	combout => \i_RISCV|i_Path|Mux15~1_combout\);

-- Location: LCCOMB_X19_Y13_N16
\i_RISCV|i_Path|i_BancoReg|reg[5][16]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_BancoReg|reg[5][16]~feeder_combout\ = \i_RISCV|i_Path|Mux15~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_RISCV|i_Path|Mux15~1_combout\,
	combout => \i_RISCV|i_Path|i_BancoReg|reg[5][16]~feeder_combout\);

-- Location: LCFF_X19_Y13_N17
\i_RISCV|i_Path|i_BancoReg|reg[5][16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_BancoReg|reg[5][16]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[5][16]~regout\);

-- Location: LCFF_X20_Y13_N15
\i_RISCV|i_Path|i_BancoReg|reg[1][16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux15~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[1][16]~regout\);

-- Location: LCCOMB_X20_Y13_N14
\i_RISCV|i_Path|a[16]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[16]~48_combout\ = (\i_RISCV|i_Path|a[16]~47_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[5][16]~regout\) # ((!\i_RISCV|i_Path|a[14]~1_combout\)))) # (!\i_RISCV|i_Path|a[16]~47_combout\ & (((\i_RISCV|i_Path|i_BancoReg|reg[1][16]~regout\ & 
-- \i_RISCV|i_Path|a[14]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[16]~47_combout\,
	datab => \i_RISCV|i_Path|i_BancoReg|reg[5][16]~regout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[1][16]~regout\,
	datad => \i_RISCV|i_Path|a[14]~1_combout\,
	combout => \i_RISCV|i_Path|a[16]~48_combout\);

-- Location: LCCOMB_X26_Y13_N14
\i_RISCV|i_Path|a[16]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[16]~49_combout\ = (\i_RISCV|i_Control|estado_act.Fetch~regout\ & (\i_RISCV|i_Path|pc_out\(16))) # (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & ((\i_RISCV|i_Path|a[16]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datac => \i_RISCV|i_Path|pc_out\(16),
	datad => \i_RISCV|i_Path|a[16]~48_combout\,
	combout => \i_RISCV|i_Path|a[16]~49_combout\);

-- Location: LCFF_X20_Y13_N9
\i_RISCV|i_Path|i_BancoReg|reg[6][16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux15~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[6][16]~regout\);

-- Location: LCFF_X22_Y13_N3
\i_RISCV|i_Path|i_BancoReg|reg[4][16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux15~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[4][16]~regout\);

-- Location: LCFF_X22_Y13_N13
\i_RISCV|i_Path|i_BancoReg|reg[2][16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux15~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[2][16]~regout\);

-- Location: LCCOMB_X22_Y13_N12
\i_RISCV|i_Path|b[16]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[16]~52_combout\ = (\i_RISCV|i_Path|b[26]~6_combout\ & (((\i_RISCV|i_Path|i_genInm|inm[19]~2_combout\)) # (!\i_RISCV|i_Path|b[26]~5_combout\))) # (!\i_RISCV|i_Path|b[26]~6_combout\ & (\i_RISCV|i_Path|b[26]~5_combout\ & 
-- (\i_RISCV|i_Path|i_BancoReg|reg[2][16]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[26]~6_combout\,
	datab => \i_RISCV|i_Path|b[26]~5_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[2][16]~regout\,
	datad => \i_RISCV|i_Path|i_genInm|inm[19]~2_combout\,
	combout => \i_RISCV|i_Path|b[16]~52_combout\);

-- Location: LCCOMB_X22_Y13_N2
\i_RISCV|i_Path|b[16]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[16]~53_combout\ = (\i_RISCV|i_Path|b[26]~4_combout\ & ((\i_RISCV|i_Path|b[16]~52_combout\ & (\i_RISCV|i_Path|i_BancoReg|reg[6][16]~regout\)) # (!\i_RISCV|i_Path|b[16]~52_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[4][16]~regout\))))) # 
-- (!\i_RISCV|i_Path|b[26]~4_combout\ & (((\i_RISCV|i_Path|b[16]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[26]~4_combout\,
	datab => \i_RISCV|i_Path|i_BancoReg|reg[6][16]~regout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[4][16]~regout\,
	datad => \i_RISCV|i_Path|b[16]~52_combout\,
	combout => \i_RISCV|i_Path|b[16]~53_combout\);

-- Location: LCCOMB_X22_Y13_N30
\i_RISCV|i_Path|b[16]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[16]~54_combout\ = (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & \i_RISCV|i_Path|b[16]~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datad => \i_RISCV|i_Path|b[16]~53_combout\,
	combout => \i_RISCV|i_Path|b[16]~54_combout\);

-- Location: LCCOMB_X25_Y13_N2
\i_RISCV|i_Path|i_ALU|i1_sr|Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~34_combout\ = (\i_RISCV|i_Path|a[17]~46_combout\ & ((\i_RISCV|i_Path|b[17]~51_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add1~33\ & VCC)) # (!\i_RISCV|i_Path|b[17]~51_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~33\)))) # 
-- (!\i_RISCV|i_Path|a[17]~46_combout\ & ((\i_RISCV|i_Path|b[17]~51_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~33\)) # (!\i_RISCV|i_Path|b[17]~51_combout\ & ((\i_RISCV|i_Path|i_ALU|i1_sr|Add1~33\) # (GND)))))
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~35\ = CARRY((\i_RISCV|i_Path|a[17]~46_combout\ & (!\i_RISCV|i_Path|b[17]~51_combout\ & !\i_RISCV|i_Path|i_ALU|i1_sr|Add1~33\)) # (!\i_RISCV|i_Path|a[17]~46_combout\ & ((!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~33\) # 
-- (!\i_RISCV|i_Path|b[17]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[17]~46_combout\,
	datab => \i_RISCV|i_Path|b[17]~51_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~33\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~34_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~35\);

-- Location: LCCOMB_X24_Y14_N18
\i_RISCV|i_Path|i_ALU|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|Mux14~0_combout\ = (!\i_RISCV|i_Control|Selector16~0_combout\ & ((\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~34_combout\)) # (!\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & 
-- ((\i_RISCV|i_Path|i_ALU|i1_sr|Add1~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~34_combout\,
	datab => \i_RISCV|i_Path|i_ALU|Mux0~0_combout\,
	datac => \i_RISCV|i_Control|Selector16~0_combout\,
	datad => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~34_combout\,
	combout => \i_RISCV|i_Path|i_ALU|Mux14~0_combout\);

-- Location: LCFF_X24_Y14_N19
\i_RISCV|i_Path|alur_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ALU|Mux14~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|alur_out\(17));

-- Location: LCCOMB_X23_Y11_N28
\i_RISCV|i_Path|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux14~0_combout\ = (\i_RISCV|i_Control|estado_act.lui3~regout\ & (\i_RISCV|i_Path|ir_out_m\(17))) # (!\i_RISCV|i_Control|estado_act.lui3~regout\ & (((\i_RISCV|i_Path|alur_out\(17) & !\i_RISCV|i_Control|estado_act.lw5~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|ir_out_m\(17),
	datab => \i_RISCV|i_Path|alur_out\(17),
	datac => \i_RISCV|i_Control|estado_act.lui3~regout\,
	datad => \i_RISCV|i_Control|estado_act.lw5~regout\,
	combout => \i_RISCV|i_Path|Mux14~0_combout\);

-- Location: LCCOMB_X24_Y14_N28
\i_RISCV|i_Path|pc_in[17]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|pc_in[17]~20_combout\ = (\i_RISCV|i_Control|estado_act.SalCond~regout\ & (((\i_RISCV|i_Path|alur_out\(17))))) # (!\i_RISCV|i_Control|estado_act.SalCond~regout\ & (\i_RISCV|i_Control|estado_act.Reset~regout\ & 
-- ((\i_RISCV|i_Path|i_ALU|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Reset~regout\,
	datab => \i_RISCV|i_Path|alur_out\(17),
	datac => \i_RISCV|i_Control|estado_act.SalCond~regout\,
	datad => \i_RISCV|i_Path|i_ALU|Mux14~0_combout\,
	combout => \i_RISCV|i_Path|pc_in[17]~20_combout\);

-- Location: LCFF_X24_Y14_N29
\i_RISCV|i_Path|pc_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|pc_in[17]~20_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_out\(17));

-- Location: LCCOMB_X24_Y14_N8
\i_RISCV|i_Path|Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux14~1_combout\ = (\i_RISCV|i_Control|estado_act.Jalr~regout\ & ((\i_RISCV|i_Path|pc_out\(17)))) # (!\i_RISCV|i_Control|estado_act.Jalr~regout\ & (\i_RISCV|i_Path|Mux14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Jalr~regout\,
	datab => \i_RISCV|i_Path|Mux14~0_combout\,
	datad => \i_RISCV|i_Path|pc_out\(17),
	combout => \i_RISCV|i_Path|Mux14~1_combout\);

-- Location: LCFF_X24_Y16_N1
\i_RISCV|i_Path|i_BancoReg|reg[6][17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux14~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[6][17]~regout\);

-- Location: LCFF_X23_Y15_N1
\i_RISCV|i_Path|i_BancoReg|reg[2][17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux14~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[2][17]~regout\);

-- Location: LCCOMB_X23_Y15_N0
\i_RISCV|i_Path|b[17]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[17]~49_combout\ = (\i_RISCV|i_Path|b[26]~5_combout\ & ((\i_RISCV|i_Path|b[26]~6_combout\ & (\i_RISCV|i_Path|i_genInm|inm[15]~4_combout\)) # (!\i_RISCV|i_Path|b[26]~6_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[2][17]~regout\))))) # 
-- (!\i_RISCV|i_Path|b[26]~5_combout\ & (((\i_RISCV|i_Path|b[26]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_genInm|inm[15]~4_combout\,
	datab => \i_RISCV|i_Path|b[26]~5_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[2][17]~regout\,
	datad => \i_RISCV|i_Path|b[26]~6_combout\,
	combout => \i_RISCV|i_Path|b[17]~49_combout\);

-- Location: LCCOMB_X24_Y16_N0
\i_RISCV|i_Path|b[17]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[17]~50_combout\ = (\i_RISCV|i_Path|b[26]~4_combout\ & ((\i_RISCV|i_Path|b[17]~49_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[6][17]~regout\))) # (!\i_RISCV|i_Path|b[17]~49_combout\ & (\i_RISCV|i_Path|i_BancoReg|reg[4][17]~regout\)))) # 
-- (!\i_RISCV|i_Path|b[26]~4_combout\ & (((\i_RISCV|i_Path|b[17]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_BancoReg|reg[4][17]~regout\,
	datab => \i_RISCV|i_Path|b[26]~4_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[6][17]~regout\,
	datad => \i_RISCV|i_Path|b[17]~49_combout\,
	combout => \i_RISCV|i_Path|b[17]~50_combout\);

-- Location: LCCOMB_X24_Y16_N26
\i_RISCV|i_Path|b[17]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[17]~51_combout\ = (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & \i_RISCV|i_Path|b[17]~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datad => \i_RISCV|i_Path|b[17]~50_combout\,
	combout => \i_RISCV|i_Path|b[17]~51_combout\);

-- Location: LCCOMB_X25_Y15_N14
\i_RISCV|i_Path|sal_and~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|sal_and~7_combout\ = (\i_RISCV|i_Path|a[17]~46_combout\ & (\i_RISCV|i_Path|b[17]~51_combout\ & (\i_RISCV|i_Path|a[16]~49_combout\ $ (!\i_RISCV|i_Path|b[16]~54_combout\)))) # (!\i_RISCV|i_Path|a[17]~46_combout\ & 
-- (!\i_RISCV|i_Path|b[17]~51_combout\ & (\i_RISCV|i_Path|a[16]~49_combout\ $ (!\i_RISCV|i_Path|b[16]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[17]~46_combout\,
	datab => \i_RISCV|i_Path|a[16]~49_combout\,
	datac => \i_RISCV|i_Path|b[16]~54_combout\,
	datad => \i_RISCV|i_Path|b[17]~51_combout\,
	combout => \i_RISCV|i_Path|sal_and~7_combout\);

-- Location: LCFF_X24_Y13_N31
\i_RISCV|i_Path|alur_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ALU|Mux12~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|alur_out\(19));

-- Location: LCCOMB_X22_Y12_N28
\i_RISCV|i_Path|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux12~0_combout\ = (\i_RISCV|i_Control|estado_act.Jalr~regout\ & (((\i_RISCV|i_Path|pc_out\(19))))) # (!\i_RISCV|i_Control|estado_act.Jalr~regout\ & (!\i_RISCV|i_Control|estado_act.lw5~regout\ & (\i_RISCV|i_Path|alur_out\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.lw5~regout\,
	datab => \i_RISCV|i_Control|estado_act.Jalr~regout\,
	datac => \i_RISCV|i_Path|alur_out\(19),
	datad => \i_RISCV|i_Path|pc_out\(19),
	combout => \i_RISCV|i_Path|Mux12~0_combout\);

-- Location: LCCOMB_X22_Y12_N14
\i_RISCV|i_Path|Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux12~1_combout\ = (!\i_RISCV|i_Control|estado_act.lui3~regout\ & \i_RISCV|i_Path|Mux12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.lui3~regout\,
	datad => \i_RISCV|i_Path|Mux12~0_combout\,
	combout => \i_RISCV|i_Path|Mux12~1_combout\);

-- Location: LCFF_X20_Y13_N17
\i_RISCV|i_Path|i_BancoReg|reg[6][19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux12~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[6][19]~regout\);

-- Location: LCFF_X22_Y13_N5
\i_RISCV|i_Path|i_BancoReg|reg[4][19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux12~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[4][19]~regout\);

-- Location: LCFF_X22_Y13_N11
\i_RISCV|i_Path|i_BancoReg|reg[2][19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux12~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[2][19]~regout\);

-- Location: LCCOMB_X22_Y13_N10
\i_RISCV|i_Path|b[19]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[19]~43_combout\ = (\i_RISCV|i_Path|b[26]~6_combout\ & (((\i_RISCV|i_Path|i_genInm|inm[19]~2_combout\)) # (!\i_RISCV|i_Path|b[26]~5_combout\))) # (!\i_RISCV|i_Path|b[26]~6_combout\ & (\i_RISCV|i_Path|b[26]~5_combout\ & 
-- (\i_RISCV|i_Path|i_BancoReg|reg[2][19]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[26]~6_combout\,
	datab => \i_RISCV|i_Path|b[26]~5_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[2][19]~regout\,
	datad => \i_RISCV|i_Path|i_genInm|inm[19]~2_combout\,
	combout => \i_RISCV|i_Path|b[19]~43_combout\);

-- Location: LCCOMB_X22_Y13_N4
\i_RISCV|i_Path|b[19]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[19]~44_combout\ = (\i_RISCV|i_Path|b[26]~4_combout\ & ((\i_RISCV|i_Path|b[19]~43_combout\ & (\i_RISCV|i_Path|i_BancoReg|reg[6][19]~regout\)) # (!\i_RISCV|i_Path|b[19]~43_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[4][19]~regout\))))) # 
-- (!\i_RISCV|i_Path|b[26]~4_combout\ & (((\i_RISCV|i_Path|b[19]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[26]~4_combout\,
	datab => \i_RISCV|i_Path|i_BancoReg|reg[6][19]~regout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[4][19]~regout\,
	datad => \i_RISCV|i_Path|b[19]~43_combout\,
	combout => \i_RISCV|i_Path|b[19]~44_combout\);

-- Location: LCCOMB_X22_Y13_N24
\i_RISCV|i_Path|b[19]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[19]~45_combout\ = (\i_RISCV|i_Path|b[19]~44_combout\ & !\i_RISCV|i_Control|estado_act.Fetch~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_RISCV|i_Path|b[19]~44_combout\,
	datad => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	combout => \i_RISCV|i_Path|b[19]~45_combout\);

-- Location: LCCOMB_X23_Y13_N20
\i_RISCV|i_Path|i_ALU|i1_sr|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~36_combout\ = ((\i_RISCV|i_Path|a[18]~43_combout\ $ (\i_RISCV|i_Path|b[18]~48_combout\ $ (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~35\)))) # (GND)
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~37\ = CARRY((\i_RISCV|i_Path|a[18]~43_combout\ & ((!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~35\) # (!\i_RISCV|i_Path|b[18]~48_combout\))) # (!\i_RISCV|i_Path|a[18]~43_combout\ & (!\i_RISCV|i_Path|b[18]~48_combout\ & 
-- !\i_RISCV|i_Path|i_ALU|i1_sr|Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[18]~43_combout\,
	datab => \i_RISCV|i_Path|b[18]~48_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~35\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~36_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~37\);

-- Location: LCFF_X22_Y12_N25
\i_RISCV|i_Path|i_BancoReg|reg[5][18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux13~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[5][18]~regout\);

-- Location: LCFF_X22_Y12_N11
\i_RISCV|i_Path|i_BancoReg|reg[1][18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux13~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[1][18]~regout\);

-- Location: LCCOMB_X22_Y12_N10
\i_RISCV|i_Path|a[18]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[18]~42_combout\ = (\i_RISCV|i_Path|a[18]~41_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[5][18]~regout\) # ((!\i_RISCV|i_Path|a[14]~1_combout\)))) # (!\i_RISCV|i_Path|a[18]~41_combout\ & (((\i_RISCV|i_Path|i_BancoReg|reg[1][18]~regout\ & 
-- \i_RISCV|i_Path|a[14]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[18]~41_combout\,
	datab => \i_RISCV|i_Path|i_BancoReg|reg[5][18]~regout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[1][18]~regout\,
	datad => \i_RISCV|i_Path|a[14]~1_combout\,
	combout => \i_RISCV|i_Path|a[18]~42_combout\);

-- Location: LCCOMB_X22_Y12_N0
\i_RISCV|i_Path|a[18]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[18]~43_combout\ = (\i_RISCV|i_Control|estado_act.Fetch~regout\ & (\i_RISCV|i_Path|pc_out\(18))) # (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & ((\i_RISCV|i_Path|a[18]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|pc_out\(18),
	datac => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datad => \i_RISCV|i_Path|a[18]~42_combout\,
	combout => \i_RISCV|i_Path|a[18]~43_combout\);

-- Location: LCCOMB_X25_Y13_N4
\i_RISCV|i_Path|i_ALU|i1_sr|Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~36_combout\ = ((\i_RISCV|i_Path|b[18]~48_combout\ $ (\i_RISCV|i_Path|a[18]~43_combout\ $ (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~35\)))) # (GND)
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~37\ = CARRY((\i_RISCV|i_Path|b[18]~48_combout\ & ((\i_RISCV|i_Path|a[18]~43_combout\) # (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~35\))) # (!\i_RISCV|i_Path|b[18]~48_combout\ & (\i_RISCV|i_Path|a[18]~43_combout\ & 
-- !\i_RISCV|i_Path|i_ALU|i1_sr|Add1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[18]~48_combout\,
	datab => \i_RISCV|i_Path|a[18]~43_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~35\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~36_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~37\);

-- Location: LCCOMB_X24_Y13_N28
\i_RISCV|i_Path|i_ALU|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|Mux13~0_combout\ = (!\i_RISCV|i_Control|Selector16~0_combout\ & ((\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~36_combout\)) # (!\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & 
-- ((\i_RISCV|i_Path|i_ALU|i1_sr|Add1~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|Selector16~0_combout\,
	datab => \i_RISCV|i_Path|i_ALU|Mux0~0_combout\,
	datac => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~36_combout\,
	datad => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~36_combout\,
	combout => \i_RISCV|i_Path|i_ALU|Mux13~0_combout\);

-- Location: LCFF_X24_Y13_N29
\i_RISCV|i_Path|alur_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ALU|Mux13~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|alur_out\(18));

-- Location: LCCOMB_X24_Y13_N24
\i_RISCV|i_Path|pc_in[18]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|pc_in[18]~19_combout\ = (\i_RISCV|i_Control|estado_act.SalCond~regout\ & (((\i_RISCV|i_Path|alur_out\(18))))) # (!\i_RISCV|i_Control|estado_act.SalCond~regout\ & (\i_RISCV|i_Control|estado_act.Reset~regout\ & 
-- ((\i_RISCV|i_Path|i_ALU|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.SalCond~regout\,
	datab => \i_RISCV|i_Control|estado_act.Reset~regout\,
	datac => \i_RISCV|i_Path|alur_out\(18),
	datad => \i_RISCV|i_Path|i_ALU|Mux13~0_combout\,
	combout => \i_RISCV|i_Path|pc_in[18]~19_combout\);

-- Location: LCFF_X24_Y13_N25
\i_RISCV|i_Path|pc_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|pc_in[18]~19_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_out\(18));

-- Location: LCCOMB_X22_Y12_N18
\i_RISCV|i_Path|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux13~0_combout\ = (\i_RISCV|i_Control|estado_act.Jalr~regout\ & (((\i_RISCV|i_Path|pc_out\(18))))) # (!\i_RISCV|i_Control|estado_act.Jalr~regout\ & (\i_RISCV|i_Path|alur_out\(18) & (!\i_RISCV|i_Control|estado_act.lw5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|alur_out\(18),
	datab => \i_RISCV|i_Control|estado_act.Jalr~regout\,
	datac => \i_RISCV|i_Control|estado_act.lw5~regout\,
	datad => \i_RISCV|i_Path|pc_out\(18),
	combout => \i_RISCV|i_Path|Mux13~0_combout\);

-- Location: LCCOMB_X22_Y12_N26
\i_RISCV|i_Path|Mux13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux13~1_combout\ = (!\i_RISCV|i_Control|estado_act.lui3~regout\ & \i_RISCV|i_Path|Mux13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.lui3~regout\,
	datad => \i_RISCV|i_Path|Mux13~0_combout\,
	combout => \i_RISCV|i_Path|Mux13~1_combout\);

-- Location: LCCOMB_X20_Y13_N26
\i_RISCV|i_Path|i_BancoReg|reg[6][18]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_BancoReg|reg[6][18]~feeder_combout\ = \i_RISCV|i_Path|Mux13~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_RISCV|i_Path|Mux13~1_combout\,
	combout => \i_RISCV|i_Path|i_BancoReg|reg[6][18]~feeder_combout\);

-- Location: LCFF_X20_Y13_N27
\i_RISCV|i_Path|i_BancoReg|reg[6][18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_BancoReg|reg[6][18]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[6][18]~regout\);

-- Location: LCFF_X22_Y13_N15
\i_RISCV|i_Path|i_BancoReg|reg[4][18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux13~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[4][18]~regout\);

-- Location: LCFF_X22_Y13_N1
\i_RISCV|i_Path|i_BancoReg|reg[2][18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux13~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[2][18]~regout\);

-- Location: LCCOMB_X22_Y13_N0
\i_RISCV|i_Path|b[18]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[18]~46_combout\ = (\i_RISCV|i_Path|b[26]~6_combout\ & (((\i_RISCV|i_Path|i_genInm|inm[19]~2_combout\)) # (!\i_RISCV|i_Path|b[26]~5_combout\))) # (!\i_RISCV|i_Path|b[26]~6_combout\ & (\i_RISCV|i_Path|b[26]~5_combout\ & 
-- (\i_RISCV|i_Path|i_BancoReg|reg[2][18]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[26]~6_combout\,
	datab => \i_RISCV|i_Path|b[26]~5_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[2][18]~regout\,
	datad => \i_RISCV|i_Path|i_genInm|inm[19]~2_combout\,
	combout => \i_RISCV|i_Path|b[18]~46_combout\);

-- Location: LCCOMB_X22_Y13_N14
\i_RISCV|i_Path|b[18]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[18]~47_combout\ = (\i_RISCV|i_Path|b[26]~4_combout\ & ((\i_RISCV|i_Path|b[18]~46_combout\ & (\i_RISCV|i_Path|i_BancoReg|reg[6][18]~regout\)) # (!\i_RISCV|i_Path|b[18]~46_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[4][18]~regout\))))) # 
-- (!\i_RISCV|i_Path|b[26]~4_combout\ & (((\i_RISCV|i_Path|b[18]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[26]~4_combout\,
	datab => \i_RISCV|i_Path|i_BancoReg|reg[6][18]~regout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[4][18]~regout\,
	datad => \i_RISCV|i_Path|b[18]~46_combout\,
	combout => \i_RISCV|i_Path|b[18]~47_combout\);

-- Location: LCCOMB_X21_Y13_N8
\i_RISCV|i_Path|b[18]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[18]~48_combout\ = (\i_RISCV|i_Path|b[18]~47_combout\ & !\i_RISCV|i_Control|estado_act.Fetch~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_RISCV|i_Path|b[18]~47_combout\,
	datad => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	combout => \i_RISCV|i_Path|b[18]~48_combout\);

-- Location: LCCOMB_X23_Y13_N22
\i_RISCV|i_Path|i_ALU|i1_sr|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~38_combout\ = (\i_RISCV|i_Path|a[19]~40_combout\ & ((\i_RISCV|i_Path|b[19]~45_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~37\)) # (!\i_RISCV|i_Path|b[19]~45_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~37\ & VCC)))) # 
-- (!\i_RISCV|i_Path|a[19]~40_combout\ & ((\i_RISCV|i_Path|b[19]~45_combout\ & ((\i_RISCV|i_Path|i_ALU|i1_sr|Add0~37\) # (GND))) # (!\i_RISCV|i_Path|b[19]~45_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~37\))))
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~39\ = CARRY((\i_RISCV|i_Path|a[19]~40_combout\ & (\i_RISCV|i_Path|b[19]~45_combout\ & !\i_RISCV|i_Path|i_ALU|i1_sr|Add0~37\)) # (!\i_RISCV|i_Path|a[19]~40_combout\ & ((\i_RISCV|i_Path|b[19]~45_combout\) # 
-- (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[19]~40_combout\,
	datab => \i_RISCV|i_Path|b[19]~45_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~37\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~38_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~39\);

-- Location: LCCOMB_X24_Y13_N30
\i_RISCV|i_Path|i_ALU|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|Mux12~0_combout\ = (!\i_RISCV|i_Control|Selector16~0_combout\ & ((\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & ((\i_RISCV|i_Path|i_ALU|i1_sr|Add0~38_combout\))) # (!\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & 
-- (\i_RISCV|i_Path|i_ALU|i1_sr|Add1~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~38_combout\,
	datab => \i_RISCV|i_Path|i_ALU|Mux0~0_combout\,
	datac => \i_RISCV|i_Control|Selector16~0_combout\,
	datad => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~38_combout\,
	combout => \i_RISCV|i_Path|i_ALU|Mux12~0_combout\);

-- Location: LCCOMB_X24_Y13_N2
\i_RISCV|i_Path|pc_in[19]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|pc_in[19]~18_combout\ = (\i_RISCV|i_Control|estado_act.SalCond~regout\ & (\i_RISCV|i_Path|alur_out\(19))) # (!\i_RISCV|i_Control|estado_act.SalCond~regout\ & (((\i_RISCV|i_Control|estado_act.Reset~regout\ & 
-- \i_RISCV|i_Path|i_ALU|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|alur_out\(19),
	datab => \i_RISCV|i_Control|estado_act.Reset~regout\,
	datac => \i_RISCV|i_Path|i_ALU|Mux12~0_combout\,
	datad => \i_RISCV|i_Control|estado_act.SalCond~regout\,
	combout => \i_RISCV|i_Path|pc_in[19]~18_combout\);

-- Location: LCFF_X24_Y13_N3
\i_RISCV|i_Path|pc_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|pc_in[19]~18_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_out\(19));

-- Location: LCFF_X22_Y12_N9
\i_RISCV|i_Path|i_BancoReg|reg[5][19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux12~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[5][19]~regout\);

-- Location: LCFF_X22_Y12_N31
\i_RISCV|i_Path|i_BancoReg|reg[1][19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux12~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[1][19]~regout\);

-- Location: LCFF_X22_Y11_N11
\i_RISCV|i_Path|pc_ir[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|pc_out\(19),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_ir\(19));

-- Location: LCCOMB_X22_Y11_N10
\i_RISCV|i_Path|a[19]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[19]~38_combout\ = (\i_RISCV|i_Control|estado_act.Decod~regout\ & (((\i_RISCV|i_Path|pc_ir\(19))))) # (!\i_RISCV|i_Control|estado_act.Decod~regout\ & ((\i_RISCV|i_Control|estado_act.auipc3~regout\ & (\i_RISCV|i_Path|pc_ir\(19))) # 
-- (!\i_RISCV|i_Control|estado_act.auipc3~regout\ & ((\i_RISCV|i_Path|ir_out_m\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Decod~regout\,
	datab => \i_RISCV|i_Control|estado_act.auipc3~regout\,
	datac => \i_RISCV|i_Path|pc_ir\(19),
	datad => \i_RISCV|i_Path|ir_out_m\(17),
	combout => \i_RISCV|i_Path|a[19]~38_combout\);

-- Location: LCCOMB_X22_Y12_N30
\i_RISCV|i_Path|a[19]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[19]~39_combout\ = (\i_RISCV|i_Path|a[14]~1_combout\ & ((\i_RISCV|i_Path|a[19]~38_combout\ & (\i_RISCV|i_Path|i_BancoReg|reg[5][19]~regout\)) # (!\i_RISCV|i_Path|a[19]~38_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[1][19]~regout\))))) # 
-- (!\i_RISCV|i_Path|a[14]~1_combout\ & (((\i_RISCV|i_Path|a[19]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[14]~1_combout\,
	datab => \i_RISCV|i_Path|i_BancoReg|reg[5][19]~regout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[1][19]~regout\,
	datad => \i_RISCV|i_Path|a[19]~38_combout\,
	combout => \i_RISCV|i_Path|a[19]~39_combout\);

-- Location: LCCOMB_X22_Y12_N8
\i_RISCV|i_Path|a[19]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[19]~40_combout\ = (\i_RISCV|i_Control|estado_act.Fetch~regout\ & (\i_RISCV|i_Path|pc_out\(19))) # (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & ((\i_RISCV|i_Path|a[19]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datab => \i_RISCV|i_Path|pc_out\(19),
	datad => \i_RISCV|i_Path|a[19]~39_combout\,
	combout => \i_RISCV|i_Path|a[19]~40_combout\);

-- Location: LCCOMB_X25_Y15_N28
\i_RISCV|i_Path|sal_and~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|sal_and~8_combout\ = (\i_RISCV|i_Path|a[18]~43_combout\ & (\i_RISCV|i_Path|b[18]~48_combout\ & (\i_RISCV|i_Path|a[19]~40_combout\ $ (!\i_RISCV|i_Path|b[19]~45_combout\)))) # (!\i_RISCV|i_Path|a[18]~43_combout\ & 
-- (!\i_RISCV|i_Path|b[18]~48_combout\ & (\i_RISCV|i_Path|a[19]~40_combout\ $ (!\i_RISCV|i_Path|b[19]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[18]~43_combout\,
	datab => \i_RISCV|i_Path|a[19]~40_combout\,
	datac => \i_RISCV|i_Path|b[18]~48_combout\,
	datad => \i_RISCV|i_Path|b[19]~45_combout\,
	combout => \i_RISCV|i_Path|sal_and~8_combout\);

-- Location: LCCOMB_X25_Y15_N22
\i_RISCV|i_Path|sal_and~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|sal_and~9_combout\ = (\i_RISCV|i_Path|sal_and~6_combout\ & (\i_RISCV|i_Path|sal_and~5_combout\ & (\i_RISCV|i_Path|sal_and~7_combout\ & \i_RISCV|i_Path|sal_and~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|sal_and~6_combout\,
	datab => \i_RISCV|i_Path|sal_and~5_combout\,
	datac => \i_RISCV|i_Path|sal_and~7_combout\,
	datad => \i_RISCV|i_Path|sal_and~8_combout\,
	combout => \i_RISCV|i_Path|sal_and~9_combout\);

-- Location: LCCOMB_X22_Y15_N26
\i_RISCV|i_Path|i_genInm|inm[21]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_genInm|inm[21]~3_combout\ = (\i_RISCV|i_Control|WideOr12~0_combout\ & (\i_RISCV|i_Path|ir_out_m\(31))) # (!\i_RISCV|i_Control|WideOr12~0_combout\ & ((\i_RISCV|i_Control|Selector18~0_combout\ & (\i_RISCV|i_Path|ir_out_m\(31))) # 
-- (!\i_RISCV|i_Control|Selector18~0_combout\ & ((\i_RISCV|i_Path|ir_out_m\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|ir_out_m\(31),
	datab => \i_RISCV|i_Path|ir_out_m\(21),
	datac => \i_RISCV|i_Control|WideOr12~0_combout\,
	datad => \i_RISCV|i_Control|Selector18~0_combout\,
	combout => \i_RISCV|i_Path|i_genInm|inm[21]~3_combout\);

-- Location: LCCOMB_X24_Y13_N12
\i_RISCV|i_Path|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux10~0_combout\ = (\i_RISCV|i_Control|estado_act.lui3~regout\ & (((\i_RISCV|i_Path|ir_out_m\(21))))) # (!\i_RISCV|i_Control|estado_act.lui3~regout\ & (\i_RISCV|i_Path|alur_out\(21) & (!\i_RISCV|i_Control|estado_act.lw5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|alur_out\(21),
	datab => \i_RISCV|i_Control|estado_act.lw5~regout\,
	datac => \i_RISCV|i_Path|ir_out_m\(21),
	datad => \i_RISCV|i_Control|estado_act.lui3~regout\,
	combout => \i_RISCV|i_Path|Mux10~0_combout\);

-- Location: LCCOMB_X26_Y13_N16
\i_RISCV|i_Path|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux11~0_combout\ = (\i_RISCV|i_Control|estado_act.Jalr~regout\ & (((\i_RISCV|i_Path|pc_out\(20))))) # (!\i_RISCV|i_Control|estado_act.Jalr~regout\ & (!\i_RISCV|i_Control|estado_act.lw5~regout\ & (\i_RISCV|i_Path|alur_out\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Jalr~regout\,
	datab => \i_RISCV|i_Control|estado_act.lw5~regout\,
	datac => \i_RISCV|i_Path|alur_out\(20),
	datad => \i_RISCV|i_Path|pc_out\(20),
	combout => \i_RISCV|i_Path|Mux11~0_combout\);

-- Location: LCCOMB_X26_Y13_N30
\i_RISCV|i_Path|Mux11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux11~1_combout\ = (\i_RISCV|i_Path|Mux11~0_combout\ & !\i_RISCV|i_Control|estado_act.lui3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_RISCV|i_Path|Mux11~0_combout\,
	datad => \i_RISCV|i_Control|estado_act.lui3~regout\,
	combout => \i_RISCV|i_Path|Mux11~1_combout\);

-- Location: LCCOMB_X24_Y16_N16
\i_RISCV|i_Path|i_BancoReg|reg[6][20]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_BancoReg|reg[6][20]~feeder_combout\ = \i_RISCV|i_Path|Mux11~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_RISCV|i_Path|Mux11~1_combout\,
	combout => \i_RISCV|i_Path|i_BancoReg|reg[6][20]~feeder_combout\);

-- Location: LCFF_X24_Y16_N17
\i_RISCV|i_Path|i_BancoReg|reg[6][20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_BancoReg|reg[6][20]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[6][20]~regout\);

-- Location: LCFF_X22_Y13_N7
\i_RISCV|i_Path|i_BancoReg|reg[4][20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux11~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[4][20]~regout\);

-- Location: LCFF_X22_Y13_N29
\i_RISCV|i_Path|i_BancoReg|reg[2][20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux11~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[2][20]~regout\);

-- Location: LCCOMB_X22_Y13_N28
\i_RISCV|i_Path|b[20]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[20]~40_combout\ = (\i_RISCV|i_Path|b[26]~6_combout\ & (((\i_RISCV|i_Path|i_genInm|inm[19]~2_combout\)) # (!\i_RISCV|i_Path|b[26]~5_combout\))) # (!\i_RISCV|i_Path|b[26]~6_combout\ & (\i_RISCV|i_Path|b[26]~5_combout\ & 
-- (\i_RISCV|i_Path|i_BancoReg|reg[2][20]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[26]~6_combout\,
	datab => \i_RISCV|i_Path|b[26]~5_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[2][20]~regout\,
	datad => \i_RISCV|i_Path|i_genInm|inm[19]~2_combout\,
	combout => \i_RISCV|i_Path|b[20]~40_combout\);

-- Location: LCCOMB_X22_Y13_N6
\i_RISCV|i_Path|b[20]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[20]~41_combout\ = (\i_RISCV|i_Path|b[26]~4_combout\ & ((\i_RISCV|i_Path|b[20]~40_combout\ & (\i_RISCV|i_Path|i_BancoReg|reg[6][20]~regout\)) # (!\i_RISCV|i_Path|b[20]~40_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[4][20]~regout\))))) # 
-- (!\i_RISCV|i_Path|b[26]~4_combout\ & (((\i_RISCV|i_Path|b[20]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[26]~4_combout\,
	datab => \i_RISCV|i_Path|i_BancoReg|reg[6][20]~regout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[4][20]~regout\,
	datad => \i_RISCV|i_Path|b[20]~40_combout\,
	combout => \i_RISCV|i_Path|b[20]~41_combout\);

-- Location: LCCOMB_X22_Y13_N26
\i_RISCV|i_Path|b[20]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[20]~42_combout\ = (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & \i_RISCV|i_Path|b[20]~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datad => \i_RISCV|i_Path|b[20]~41_combout\,
	combout => \i_RISCV|i_Path|b[20]~42_combout\);

-- Location: LCCOMB_X23_Y13_N24
\i_RISCV|i_Path|i_ALU|i1_sr|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~40_combout\ = ((\i_RISCV|i_Path|a[20]~37_combout\ $ (\i_RISCV|i_Path|b[20]~42_combout\ $ (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~39\)))) # (GND)
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~41\ = CARRY((\i_RISCV|i_Path|a[20]~37_combout\ & ((!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~39\) # (!\i_RISCV|i_Path|b[20]~42_combout\))) # (!\i_RISCV|i_Path|a[20]~37_combout\ & (!\i_RISCV|i_Path|b[20]~42_combout\ & 
-- !\i_RISCV|i_Path|i_ALU|i1_sr|Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[20]~37_combout\,
	datab => \i_RISCV|i_Path|b[20]~42_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~39\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~40_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~41\);

-- Location: LCCOMB_X25_Y13_N8
\i_RISCV|i_Path|i_ALU|i1_sr|Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~40_combout\ = ((\i_RISCV|i_Path|b[20]~42_combout\ $ (\i_RISCV|i_Path|a[20]~37_combout\ $ (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~39\)))) # (GND)
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~41\ = CARRY((\i_RISCV|i_Path|b[20]~42_combout\ & ((\i_RISCV|i_Path|a[20]~37_combout\) # (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~39\))) # (!\i_RISCV|i_Path|b[20]~42_combout\ & (\i_RISCV|i_Path|a[20]~37_combout\ & 
-- !\i_RISCV|i_Path|i_ALU|i1_sr|Add1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[20]~42_combout\,
	datab => \i_RISCV|i_Path|a[20]~37_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~39\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~40_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~41\);

-- Location: LCCOMB_X26_Y13_N10
\i_RISCV|i_Path|i_ALU|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|Mux11~0_combout\ = (!\i_RISCV|i_Control|Selector16~0_combout\ & ((\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~40_combout\)) # (!\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & 
-- ((\i_RISCV|i_Path|i_ALU|i1_sr|Add1~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_ALU|Mux0~0_combout\,
	datab => \i_RISCV|i_Control|Selector16~0_combout\,
	datac => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~40_combout\,
	datad => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~40_combout\,
	combout => \i_RISCV|i_Path|i_ALU|Mux11~0_combout\);

-- Location: LCFF_X26_Y13_N11
\i_RISCV|i_Path|alur_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ALU|Mux11~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|alur_out\(20));

-- Location: LCCOMB_X26_Y13_N26
\i_RISCV|i_Path|pc_in[20]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|pc_in[20]~17_combout\ = (\i_RISCV|i_Control|estado_act.SalCond~regout\ & (((\i_RISCV|i_Path|alur_out\(20))))) # (!\i_RISCV|i_Control|estado_act.SalCond~regout\ & (\i_RISCV|i_Control|estado_act.Reset~regout\ & 
-- ((\i_RISCV|i_Path|i_ALU|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.SalCond~regout\,
	datab => \i_RISCV|i_Control|estado_act.Reset~regout\,
	datac => \i_RISCV|i_Path|alur_out\(20),
	datad => \i_RISCV|i_Path|i_ALU|Mux11~0_combout\,
	combout => \i_RISCV|i_Path|pc_in[20]~17_combout\);

-- Location: LCFF_X26_Y13_N27
\i_RISCV|i_Path|pc_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|pc_in[20]~17_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_out\(20));

-- Location: LCFF_X22_Y16_N1
\i_RISCV|i_Path|pc_ir[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|pc_out\(20),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_ir\(20));

-- Location: LCCOMB_X22_Y16_N0
\i_RISCV|i_Path|a[20]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[20]~35_combout\ = (\i_RISCV|i_Control|estado_act.Decod~regout\ & (((\i_RISCV|i_Path|pc_ir\(20))))) # (!\i_RISCV|i_Control|estado_act.Decod~regout\ & ((\i_RISCV|i_Control|estado_act.auipc3~regout\ & ((\i_RISCV|i_Path|pc_ir\(20)))) # 
-- (!\i_RISCV|i_Control|estado_act.auipc3~regout\ & (\i_RISCV|i_Path|ir_out_m\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|ir_out_m\(17),
	datab => \i_RISCV|i_Control|estado_act.Decod~regout\,
	datac => \i_RISCV|i_Path|pc_ir\(20),
	datad => \i_RISCV|i_Control|estado_act.auipc3~regout\,
	combout => \i_RISCV|i_Path|a[20]~35_combout\);

-- Location: LCFF_X22_Y16_N15
\i_RISCV|i_Path|i_BancoReg|reg[1][20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux11~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[1][20]~regout\);

-- Location: LCCOMB_X20_Y16_N18
\i_RISCV|i_Path|i_BancoReg|reg[5][20]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_BancoReg|reg[5][20]~feeder_combout\ = \i_RISCV|i_Path|Mux11~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_RISCV|i_Path|Mux11~1_combout\,
	combout => \i_RISCV|i_Path|i_BancoReg|reg[5][20]~feeder_combout\);

-- Location: LCFF_X20_Y16_N19
\i_RISCV|i_Path|i_BancoReg|reg[5][20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_BancoReg|reg[5][20]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[5][20]~regout\);

-- Location: LCCOMB_X22_Y16_N14
\i_RISCV|i_Path|a[20]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[20]~36_combout\ = (\i_RISCV|i_Path|a[14]~1_combout\ & ((\i_RISCV|i_Path|a[20]~35_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[5][20]~regout\))) # (!\i_RISCV|i_Path|a[20]~35_combout\ & (\i_RISCV|i_Path|i_BancoReg|reg[1][20]~regout\)))) # 
-- (!\i_RISCV|i_Path|a[14]~1_combout\ & (\i_RISCV|i_Path|a[20]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[14]~1_combout\,
	datab => \i_RISCV|i_Path|a[20]~35_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[1][20]~regout\,
	datad => \i_RISCV|i_Path|i_BancoReg|reg[5][20]~regout\,
	combout => \i_RISCV|i_Path|a[20]~36_combout\);

-- Location: LCCOMB_X22_Y16_N30
\i_RISCV|i_Path|a[20]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[20]~37_combout\ = (\i_RISCV|i_Control|estado_act.Fetch~regout\ & ((\i_RISCV|i_Path|pc_out\(20)))) # (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & (\i_RISCV|i_Path|a[20]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datac => \i_RISCV|i_Path|a[20]~36_combout\,
	datad => \i_RISCV|i_Path|pc_out\(20),
	combout => \i_RISCV|i_Path|a[20]~37_combout\);

-- Location: LCCOMB_X25_Y13_N10
\i_RISCV|i_Path|i_ALU|i1_sr|Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~42_combout\ = (\i_RISCV|i_Path|a[21]~34_combout\ & ((\i_RISCV|i_Path|b[21]~39_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add1~41\ & VCC)) # (!\i_RISCV|i_Path|b[21]~39_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~41\)))) # 
-- (!\i_RISCV|i_Path|a[21]~34_combout\ & ((\i_RISCV|i_Path|b[21]~39_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~41\)) # (!\i_RISCV|i_Path|b[21]~39_combout\ & ((\i_RISCV|i_Path|i_ALU|i1_sr|Add1~41\) # (GND)))))
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~43\ = CARRY((\i_RISCV|i_Path|a[21]~34_combout\ & (!\i_RISCV|i_Path|b[21]~39_combout\ & !\i_RISCV|i_Path|i_ALU|i1_sr|Add1~41\)) # (!\i_RISCV|i_Path|a[21]~34_combout\ & ((!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~41\) # 
-- (!\i_RISCV|i_Path|b[21]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[21]~34_combout\,
	datab => \i_RISCV|i_Path|b[21]~39_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~41\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~42_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~43\);

-- Location: LCFF_X20_Y16_N25
\i_RISCV|i_Path|i_BancoReg|reg[5][21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux10~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[5][21]~regout\);

-- Location: LCFF_X22_Y16_N17
\i_RISCV|i_Path|i_BancoReg|reg[1][21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux10~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[1][21]~regout\);

-- Location: LCFF_X22_Y16_N11
\i_RISCV|i_Path|pc_ir[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|pc_out\(21),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_ir\(21));

-- Location: LCCOMB_X22_Y16_N10
\i_RISCV|i_Path|a[21]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[21]~32_combout\ = (\i_RISCV|i_Control|estado_act.Decod~regout\ & (((\i_RISCV|i_Path|pc_ir\(21))))) # (!\i_RISCV|i_Control|estado_act.Decod~regout\ & ((\i_RISCV|i_Control|estado_act.auipc3~regout\ & ((\i_RISCV|i_Path|pc_ir\(21)))) # 
-- (!\i_RISCV|i_Control|estado_act.auipc3~regout\ & (\i_RISCV|i_Path|ir_out_m\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|ir_out_m\(17),
	datab => \i_RISCV|i_Control|estado_act.Decod~regout\,
	datac => \i_RISCV|i_Path|pc_ir\(21),
	datad => \i_RISCV|i_Control|estado_act.auipc3~regout\,
	combout => \i_RISCV|i_Path|a[21]~32_combout\);

-- Location: LCCOMB_X22_Y16_N16
\i_RISCV|i_Path|a[21]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[21]~33_combout\ = (\i_RISCV|i_Path|a[14]~1_combout\ & ((\i_RISCV|i_Path|a[21]~32_combout\ & (\i_RISCV|i_Path|i_BancoReg|reg[5][21]~regout\)) # (!\i_RISCV|i_Path|a[21]~32_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[1][21]~regout\))))) # 
-- (!\i_RISCV|i_Path|a[14]~1_combout\ & (((\i_RISCV|i_Path|a[21]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[14]~1_combout\,
	datab => \i_RISCV|i_Path|i_BancoReg|reg[5][21]~regout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[1][21]~regout\,
	datad => \i_RISCV|i_Path|a[21]~32_combout\,
	combout => \i_RISCV|i_Path|a[21]~33_combout\);

-- Location: LCCOMB_X22_Y16_N12
\i_RISCV|i_Path|a[21]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[21]~34_combout\ = (\i_RISCV|i_Control|estado_act.Fetch~regout\ & ((\i_RISCV|i_Path|pc_out\(21)))) # (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & (\i_RISCV|i_Path|a[21]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datac => \i_RISCV|i_Path|a[21]~33_combout\,
	datad => \i_RISCV|i_Path|pc_out\(21),
	combout => \i_RISCV|i_Path|a[21]~34_combout\);

-- Location: LCCOMB_X23_Y13_N26
\i_RISCV|i_Path|i_ALU|i1_sr|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~42_combout\ = (\i_RISCV|i_Path|b[21]~39_combout\ & ((\i_RISCV|i_Path|a[21]~34_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~41\)) # (!\i_RISCV|i_Path|a[21]~34_combout\ & ((\i_RISCV|i_Path|i_ALU|i1_sr|Add0~41\) # (GND))))) 
-- # (!\i_RISCV|i_Path|b[21]~39_combout\ & ((\i_RISCV|i_Path|a[21]~34_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~41\ & VCC)) # (!\i_RISCV|i_Path|a[21]~34_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~41\))))
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~43\ = CARRY((\i_RISCV|i_Path|b[21]~39_combout\ & ((!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~41\) # (!\i_RISCV|i_Path|a[21]~34_combout\))) # (!\i_RISCV|i_Path|b[21]~39_combout\ & (!\i_RISCV|i_Path|a[21]~34_combout\ & 
-- !\i_RISCV|i_Path|i_ALU|i1_sr|Add0~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[21]~39_combout\,
	datab => \i_RISCV|i_Path|a[21]~34_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~41\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~42_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~43\);

-- Location: LCCOMB_X24_Y13_N6
\i_RISCV|i_Path|i_ALU|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|Mux10~0_combout\ = (!\i_RISCV|i_Control|Selector16~0_combout\ & ((\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & ((\i_RISCV|i_Path|i_ALU|i1_sr|Add0~42_combout\))) # (!\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & 
-- (\i_RISCV|i_Path|i_ALU|i1_sr|Add1~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|Selector16~0_combout\,
	datab => \i_RISCV|i_Path|i_ALU|Mux0~0_combout\,
	datac => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~42_combout\,
	datad => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~42_combout\,
	combout => \i_RISCV|i_Path|i_ALU|Mux10~0_combout\);

-- Location: LCCOMB_X24_Y13_N4
\i_RISCV|i_Path|pc_in[21]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|pc_in[21]~16_combout\ = (\i_RISCV|i_Control|estado_act.SalCond~regout\ & (\i_RISCV|i_Path|alur_out\(21))) # (!\i_RISCV|i_Control|estado_act.SalCond~regout\ & (((\i_RISCV|i_Control|estado_act.Reset~regout\ & 
-- \i_RISCV|i_Path|i_ALU|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|alur_out\(21),
	datab => \i_RISCV|i_Control|estado_act.SalCond~regout\,
	datac => \i_RISCV|i_Control|estado_act.Reset~regout\,
	datad => \i_RISCV|i_Path|i_ALU|Mux10~0_combout\,
	combout => \i_RISCV|i_Path|pc_in[21]~16_combout\);

-- Location: LCFF_X24_Y13_N5
\i_RISCV|i_Path|pc_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|pc_in[21]~16_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_out\(21));

-- Location: LCCOMB_X22_Y13_N8
\i_RISCV|i_Path|Mux10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux10~1_combout\ = (\i_RISCV|i_Control|estado_act.Jalr~regout\ & ((\i_RISCV|i_Path|pc_out\(21)))) # (!\i_RISCV|i_Control|estado_act.Jalr~regout\ & (\i_RISCV|i_Path|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Jalr~regout\,
	datab => \i_RISCV|i_Path|Mux10~0_combout\,
	datad => \i_RISCV|i_Path|pc_out\(21),
	combout => \i_RISCV|i_Path|Mux10~1_combout\);

-- Location: LCFF_X22_Y13_N19
\i_RISCV|i_Path|i_BancoReg|reg[2][21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux10~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[2][21]~regout\);

-- Location: LCCOMB_X22_Y13_N18
\i_RISCV|i_Path|b[21]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[21]~37_combout\ = (\i_RISCV|i_Path|b[26]~6_combout\ & ((\i_RISCV|i_Path|i_genInm|inm[21]~3_combout\) # ((!\i_RISCV|i_Path|b[26]~5_combout\)))) # (!\i_RISCV|i_Path|b[26]~6_combout\ & (((\i_RISCV|i_Path|i_BancoReg|reg[2][21]~regout\ & 
-- \i_RISCV|i_Path|b[26]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[26]~6_combout\,
	datab => \i_RISCV|i_Path|i_genInm|inm[21]~3_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[2][21]~regout\,
	datad => \i_RISCV|i_Path|b[26]~5_combout\,
	combout => \i_RISCV|i_Path|b[21]~37_combout\);

-- Location: LCFF_X22_Y13_N21
\i_RISCV|i_Path|i_BancoReg|reg[4][21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux10~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[4][21]~regout\);

-- Location: LCCOMB_X22_Y13_N20
\i_RISCV|i_Path|b[21]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[21]~38_combout\ = (\i_RISCV|i_Path|b[21]~37_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[6][21]~regout\) # ((!\i_RISCV|i_Path|b[26]~4_combout\)))) # (!\i_RISCV|i_Path|b[21]~37_combout\ & (((\i_RISCV|i_Path|i_BancoReg|reg[4][21]~regout\ & 
-- \i_RISCV|i_Path|b[26]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_BancoReg|reg[6][21]~regout\,
	datab => \i_RISCV|i_Path|b[21]~37_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[4][21]~regout\,
	datad => \i_RISCV|i_Path|b[26]~4_combout\,
	combout => \i_RISCV|i_Path|b[21]~38_combout\);

-- Location: LCCOMB_X22_Y13_N16
\i_RISCV|i_Path|b[21]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[21]~39_combout\ = (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & \i_RISCV|i_Path|b[21]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datac => \i_RISCV|i_Path|b[21]~38_combout\,
	combout => \i_RISCV|i_Path|b[21]~39_combout\);

-- Location: LCCOMB_X25_Y13_N12
\i_RISCV|i_Path|i_ALU|i1_sr|Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~44_combout\ = ((\i_RISCV|i_Path|b[22]~36_combout\ $ (\i_RISCV|i_Path|a[22]~31_combout\ $ (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~43\)))) # (GND)
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~45\ = CARRY((\i_RISCV|i_Path|b[22]~36_combout\ & ((\i_RISCV|i_Path|a[22]~31_combout\) # (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~43\))) # (!\i_RISCV|i_Path|b[22]~36_combout\ & (\i_RISCV|i_Path|a[22]~31_combout\ & 
-- !\i_RISCV|i_Path|i_ALU|i1_sr|Add1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[22]~36_combout\,
	datab => \i_RISCV|i_Path|a[22]~31_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~43\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~44_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~45\);

-- Location: LCFF_X24_Y13_N9
\i_RISCV|i_Path|alur_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ALU|Mux9~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|alur_out\(22));

-- Location: LCCOMB_X21_Y13_N28
\i_RISCV|i_Path|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux9~0_combout\ = (\i_RISCV|i_Control|estado_act.lui3~regout\ & (((\i_RISCV|i_Path|ir_out_m\(21))))) # (!\i_RISCV|i_Control|estado_act.lui3~regout\ & (!\i_RISCV|i_Control|estado_act.lw5~regout\ & (\i_RISCV|i_Path|alur_out\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.lw5~regout\,
	datab => \i_RISCV|i_Control|estado_act.lui3~regout\,
	datac => \i_RISCV|i_Path|alur_out\(22),
	datad => \i_RISCV|i_Path|ir_out_m\(21),
	combout => \i_RISCV|i_Path|Mux9~0_combout\);

-- Location: LCCOMB_X21_Y13_N30
\i_RISCV|i_Path|Mux9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux9~1_combout\ = (\i_RISCV|i_Control|estado_act.Jalr~regout\ & (\i_RISCV|i_Path|pc_out\(22))) # (!\i_RISCV|i_Control|estado_act.Jalr~regout\ & ((\i_RISCV|i_Path|Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|pc_out\(22),
	datab => \i_RISCV|i_Control|estado_act.Jalr~regout\,
	datad => \i_RISCV|i_Path|Mux9~0_combout\,
	combout => \i_RISCV|i_Path|Mux9~1_combout\);

-- Location: LCFF_X21_Y13_N19
\i_RISCV|i_Path|i_BancoReg|reg[2][22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux9~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[2][22]~regout\);

-- Location: LCCOMB_X21_Y13_N18
\i_RISCV|i_Path|b[22]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[22]~34_combout\ = (\i_RISCV|i_Path|b[26]~6_combout\ & ((\i_RISCV|i_Path|i_genInm|inm[21]~3_combout\) # ((!\i_RISCV|i_Path|b[26]~5_combout\)))) # (!\i_RISCV|i_Path|b[26]~6_combout\ & (((\i_RISCV|i_Path|i_BancoReg|reg[2][22]~regout\ & 
-- \i_RISCV|i_Path|b[26]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_genInm|inm[21]~3_combout\,
	datab => \i_RISCV|i_Path|b[26]~6_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[2][22]~regout\,
	datad => \i_RISCV|i_Path|b[26]~5_combout\,
	combout => \i_RISCV|i_Path|b[22]~34_combout\);

-- Location: LCFF_X21_Y13_N13
\i_RISCV|i_Path|i_BancoReg|reg[4][22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux9~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[4][22]~regout\);

-- Location: LCCOMB_X21_Y13_N12
\i_RISCV|i_Path|b[22]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[22]~35_combout\ = (\i_RISCV|i_Path|b[22]~34_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[6][22]~regout\) # ((!\i_RISCV|i_Path|b[26]~4_combout\)))) # (!\i_RISCV|i_Path|b[22]~34_combout\ & (((\i_RISCV|i_Path|i_BancoReg|reg[4][22]~regout\ & 
-- \i_RISCV|i_Path|b[26]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_BancoReg|reg[6][22]~regout\,
	datab => \i_RISCV|i_Path|b[22]~34_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[4][22]~regout\,
	datad => \i_RISCV|i_Path|b[26]~4_combout\,
	combout => \i_RISCV|i_Path|b[22]~35_combout\);

-- Location: LCCOMB_X21_Y13_N0
\i_RISCV|i_Path|b[22]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[22]~36_combout\ = (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & \i_RISCV|i_Path|b[22]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datad => \i_RISCV|i_Path|b[22]~35_combout\,
	combout => \i_RISCV|i_Path|b[22]~36_combout\);

-- Location: LCCOMB_X23_Y13_N28
\i_RISCV|i_Path|i_ALU|i1_sr|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~44_combout\ = ((\i_RISCV|i_Path|a[22]~31_combout\ $ (\i_RISCV|i_Path|b[22]~36_combout\ $ (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~43\)))) # (GND)
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~45\ = CARRY((\i_RISCV|i_Path|a[22]~31_combout\ & ((!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~43\) # (!\i_RISCV|i_Path|b[22]~36_combout\))) # (!\i_RISCV|i_Path|a[22]~31_combout\ & (!\i_RISCV|i_Path|b[22]~36_combout\ & 
-- !\i_RISCV|i_Path|i_ALU|i1_sr|Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[22]~31_combout\,
	datab => \i_RISCV|i_Path|b[22]~36_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~43\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~44_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~45\);

-- Location: LCCOMB_X24_Y13_N8
\i_RISCV|i_Path|i_ALU|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|Mux9~0_combout\ = (!\i_RISCV|i_Control|Selector16~0_combout\ & ((\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & ((\i_RISCV|i_Path|i_ALU|i1_sr|Add0~44_combout\))) # (!\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & 
-- (\i_RISCV|i_Path|i_ALU|i1_sr|Add1~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|Selector16~0_combout\,
	datab => \i_RISCV|i_Path|i_ALU|Mux0~0_combout\,
	datac => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~44_combout\,
	datad => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~44_combout\,
	combout => \i_RISCV|i_Path|i_ALU|Mux9~0_combout\);

-- Location: LCCOMB_X24_Y13_N22
\i_RISCV|i_Path|pc_in[22]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|pc_in[22]~15_combout\ = (\i_RISCV|i_Control|estado_act.SalCond~regout\ & (\i_RISCV|i_Path|alur_out\(22))) # (!\i_RISCV|i_Control|estado_act.SalCond~regout\ & (((\i_RISCV|i_Control|estado_act.Reset~regout\ & 
-- \i_RISCV|i_Path|i_ALU|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|alur_out\(22),
	datab => \i_RISCV|i_Control|estado_act.Reset~regout\,
	datac => \i_RISCV|i_Path|i_ALU|Mux9~0_combout\,
	datad => \i_RISCV|i_Control|estado_act.SalCond~regout\,
	combout => \i_RISCV|i_Path|pc_in[22]~15_combout\);

-- Location: LCFF_X24_Y13_N23
\i_RISCV|i_Path|pc_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|pc_in[22]~15_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_out\(22));

-- Location: LCFF_X21_Y11_N3
\i_RISCV|i_Path|i_BancoReg|reg[5][22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux9~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[5][22]~regout\);

-- Location: LCFF_X21_Y11_N13
\i_RISCV|i_Path|i_BancoReg|reg[1][22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux9~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[1][22]~regout\);

-- Location: LCFF_X22_Y11_N5
\i_RISCV|i_Path|pc_ir[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|pc_out\(22),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_ir\(22));

-- Location: LCCOMB_X22_Y11_N4
\i_RISCV|i_Path|a[22]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[22]~29_combout\ = (\i_RISCV|i_Control|estado_act.Decod~regout\ & (((\i_RISCV|i_Path|pc_ir\(22))))) # (!\i_RISCV|i_Control|estado_act.Decod~regout\ & ((\i_RISCV|i_Control|estado_act.auipc3~regout\ & (\i_RISCV|i_Path|pc_ir\(22))) # 
-- (!\i_RISCV|i_Control|estado_act.auipc3~regout\ & ((\i_RISCV|i_Path|ir_out_m\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Decod~regout\,
	datab => \i_RISCV|i_Control|estado_act.auipc3~regout\,
	datac => \i_RISCV|i_Path|pc_ir\(22),
	datad => \i_RISCV|i_Path|ir_out_m\(17),
	combout => \i_RISCV|i_Path|a[22]~29_combout\);

-- Location: LCCOMB_X21_Y11_N12
\i_RISCV|i_Path|a[22]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[22]~30_combout\ = (\i_RISCV|i_Path|a[14]~1_combout\ & ((\i_RISCV|i_Path|a[22]~29_combout\ & (\i_RISCV|i_Path|i_BancoReg|reg[5][22]~regout\)) # (!\i_RISCV|i_Path|a[22]~29_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[1][22]~regout\))))) # 
-- (!\i_RISCV|i_Path|a[14]~1_combout\ & (((\i_RISCV|i_Path|a[22]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[14]~1_combout\,
	datab => \i_RISCV|i_Path|i_BancoReg|reg[5][22]~regout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[1][22]~regout\,
	datad => \i_RISCV|i_Path|a[22]~29_combout\,
	combout => \i_RISCV|i_Path|a[22]~30_combout\);

-- Location: LCCOMB_X21_Y13_N14
\i_RISCV|i_Path|a[22]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[22]~31_combout\ = (\i_RISCV|i_Control|estado_act.Fetch~regout\ & (\i_RISCV|i_Path|pc_out\(22))) # (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & ((\i_RISCV|i_Path|a[22]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datac => \i_RISCV|i_Path|pc_out\(22),
	datad => \i_RISCV|i_Path|a[22]~30_combout\,
	combout => \i_RISCV|i_Path|a[22]~31_combout\);

-- Location: LCCOMB_X23_Y13_N30
\i_RISCV|i_Path|i_ALU|i1_sr|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~46_combout\ = (\i_RISCV|i_Path|a[23]~28_combout\ & ((\i_RISCV|i_Path|b[23]~33_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~45\)) # (!\i_RISCV|i_Path|b[23]~33_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~45\ & VCC)))) # 
-- (!\i_RISCV|i_Path|a[23]~28_combout\ & ((\i_RISCV|i_Path|b[23]~33_combout\ & ((\i_RISCV|i_Path|i_ALU|i1_sr|Add0~45\) # (GND))) # (!\i_RISCV|i_Path|b[23]~33_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~45\))))
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~47\ = CARRY((\i_RISCV|i_Path|a[23]~28_combout\ & (\i_RISCV|i_Path|b[23]~33_combout\ & !\i_RISCV|i_Path|i_ALU|i1_sr|Add0~45\)) # (!\i_RISCV|i_Path|a[23]~28_combout\ & ((\i_RISCV|i_Path|b[23]~33_combout\) # 
-- (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[23]~28_combout\,
	datab => \i_RISCV|i_Path|b[23]~33_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~45\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~46_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~47\);

-- Location: LCCOMB_X25_Y13_N14
\i_RISCV|i_Path|i_ALU|i1_sr|Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~46_combout\ = (\i_RISCV|i_Path|a[23]~28_combout\ & ((\i_RISCV|i_Path|b[23]~33_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add1~45\ & VCC)) # (!\i_RISCV|i_Path|b[23]~33_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~45\)))) # 
-- (!\i_RISCV|i_Path|a[23]~28_combout\ & ((\i_RISCV|i_Path|b[23]~33_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~45\)) # (!\i_RISCV|i_Path|b[23]~33_combout\ & ((\i_RISCV|i_Path|i_ALU|i1_sr|Add1~45\) # (GND)))))
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~47\ = CARRY((\i_RISCV|i_Path|a[23]~28_combout\ & (!\i_RISCV|i_Path|b[23]~33_combout\ & !\i_RISCV|i_Path|i_ALU|i1_sr|Add1~45\)) # (!\i_RISCV|i_Path|a[23]~28_combout\ & ((!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~45\) # 
-- (!\i_RISCV|i_Path|b[23]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[23]~28_combout\,
	datab => \i_RISCV|i_Path|b[23]~33_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~45\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~46_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~47\);

-- Location: LCCOMB_X26_Y13_N12
\i_RISCV|i_Path|i_ALU|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|Mux8~0_combout\ = (!\i_RISCV|i_Control|Selector16~0_combout\ & ((\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~46_combout\)) # (!\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & 
-- ((\i_RISCV|i_Path|i_ALU|i1_sr|Add1~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_ALU|Mux0~0_combout\,
	datab => \i_RISCV|i_Control|Selector16~0_combout\,
	datac => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~46_combout\,
	datad => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~46_combout\,
	combout => \i_RISCV|i_Path|i_ALU|Mux8~0_combout\);

-- Location: LCFF_X26_Y13_N13
\i_RISCV|i_Path|alur_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ALU|Mux8~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|alur_out\(23));

-- Location: LCCOMB_X24_Y14_N16
\i_RISCV|i_Path|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux8~0_combout\ = (\i_RISCV|i_Control|estado_act.Jalr~regout\ & (\i_RISCV|i_Path|pc_out\(23))) # (!\i_RISCV|i_Control|estado_act.Jalr~regout\ & (((!\i_RISCV|i_Control|estado_act.lw5~regout\ & \i_RISCV|i_Path|alur_out\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|pc_out\(23),
	datab => \i_RISCV|i_Control|estado_act.lw5~regout\,
	datac => \i_RISCV|i_Control|estado_act.Jalr~regout\,
	datad => \i_RISCV|i_Path|alur_out\(23),
	combout => \i_RISCV|i_Path|Mux8~0_combout\);

-- Location: LCCOMB_X20_Y14_N20
\i_RISCV|i_Path|Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux8~1_combout\ = (!\i_RISCV|i_Control|estado_act.lui3~regout\ & \i_RISCV|i_Path|Mux8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RISCV|i_Control|estado_act.lui3~regout\,
	datad => \i_RISCV|i_Path|Mux8~0_combout\,
	combout => \i_RISCV|i_Path|Mux8~1_combout\);

-- Location: LCFF_X20_Y13_N29
\i_RISCV|i_Path|i_BancoReg|reg[6][23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux8~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[6][23]~regout\);

-- Location: LCFF_X21_Y13_N11
\i_RISCV|i_Path|i_BancoReg|reg[4][23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux8~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[4][23]~regout\);

-- Location: LCFF_X22_Y13_N23
\i_RISCV|i_Path|i_BancoReg|reg[2][23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux8~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[2][23]~regout\);

-- Location: LCCOMB_X22_Y13_N22
\i_RISCV|i_Path|b[23]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[23]~31_combout\ = (\i_RISCV|i_Path|b[26]~6_combout\ & (((\i_RISCV|i_Path|i_genInm|inm[19]~2_combout\)) # (!\i_RISCV|i_Path|b[26]~5_combout\))) # (!\i_RISCV|i_Path|b[26]~6_combout\ & (\i_RISCV|i_Path|b[26]~5_combout\ & 
-- (\i_RISCV|i_Path|i_BancoReg|reg[2][23]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[26]~6_combout\,
	datab => \i_RISCV|i_Path|b[26]~5_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[2][23]~regout\,
	datad => \i_RISCV|i_Path|i_genInm|inm[19]~2_combout\,
	combout => \i_RISCV|i_Path|b[23]~31_combout\);

-- Location: LCCOMB_X21_Y13_N10
\i_RISCV|i_Path|b[23]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[23]~32_combout\ = (\i_RISCV|i_Path|b[26]~4_combout\ & ((\i_RISCV|i_Path|b[23]~31_combout\ & (\i_RISCV|i_Path|i_BancoReg|reg[6][23]~regout\)) # (!\i_RISCV|i_Path|b[23]~31_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[4][23]~regout\))))) # 
-- (!\i_RISCV|i_Path|b[26]~4_combout\ & (((\i_RISCV|i_Path|b[23]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[26]~4_combout\,
	datab => \i_RISCV|i_Path|i_BancoReg|reg[6][23]~regout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[4][23]~regout\,
	datad => \i_RISCV|i_Path|b[23]~31_combout\,
	combout => \i_RISCV|i_Path|b[23]~32_combout\);

-- Location: LCCOMB_X21_Y13_N20
\i_RISCV|i_Path|b[23]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[23]~33_combout\ = (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & \i_RISCV|i_Path|b[23]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datad => \i_RISCV|i_Path|b[23]~32_combout\,
	combout => \i_RISCV|i_Path|b[23]~33_combout\);

-- Location: LCCOMB_X21_Y13_N22
\i_RISCV|i_Path|sal_and~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|sal_and~11_combout\ = (\i_RISCV|i_Path|a[23]~28_combout\ & (\i_RISCV|i_Path|b[23]~33_combout\ & (\i_RISCV|i_Path|a[22]~31_combout\ $ (!\i_RISCV|i_Path|b[22]~36_combout\)))) # (!\i_RISCV|i_Path|a[23]~28_combout\ & 
-- (!\i_RISCV|i_Path|b[23]~33_combout\ & (\i_RISCV|i_Path|a[22]~31_combout\ $ (!\i_RISCV|i_Path|b[22]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[23]~28_combout\,
	datab => \i_RISCV|i_Path|a[22]~31_combout\,
	datac => \i_RISCV|i_Path|b[23]~33_combout\,
	datad => \i_RISCV|i_Path|b[22]~36_combout\,
	combout => \i_RISCV|i_Path|sal_and~11_combout\);

-- Location: LCCOMB_X22_Y16_N6
\i_RISCV|i_Path|sal_and~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|sal_and~10_combout\ = (\i_RISCV|i_Path|a[21]~34_combout\ & (\i_RISCV|i_Path|b[21]~39_combout\ & (\i_RISCV|i_Path|a[20]~37_combout\ $ (!\i_RISCV|i_Path|b[20]~42_combout\)))) # (!\i_RISCV|i_Path|a[21]~34_combout\ & 
-- (!\i_RISCV|i_Path|b[21]~39_combout\ & (\i_RISCV|i_Path|a[20]~37_combout\ $ (!\i_RISCV|i_Path|b[20]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[21]~34_combout\,
	datab => \i_RISCV|i_Path|a[20]~37_combout\,
	datac => \i_RISCV|i_Path|b[21]~39_combout\,
	datad => \i_RISCV|i_Path|b[20]~42_combout\,
	combout => \i_RISCV|i_Path|sal_and~10_combout\);

-- Location: LCCOMB_X24_Y12_N28
\i_RISCV|i_Path|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux5~0_combout\ = (\i_RISCV|i_Control|estado_act.lui3~regout\ & (((\i_RISCV|i_Path|ir_out_m\(10))))) # (!\i_RISCV|i_Control|estado_act.lui3~regout\ & (\i_RISCV|i_Path|alur_out\(26) & (!\i_RISCV|i_Control|estado_act.lw5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|alur_out\(26),
	datab => \i_RISCV|i_Control|estado_act.lw5~regout\,
	datac => \i_RISCV|i_Path|ir_out_m\(10),
	datad => \i_RISCV|i_Control|estado_act.lui3~regout\,
	combout => \i_RISCV|i_Path|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y12_N18
\i_RISCV|i_Path|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux5~1_combout\ = (\i_RISCV|i_Control|estado_act.Jalr~regout\ & (\i_RISCV|i_Path|pc_out\(26))) # (!\i_RISCV|i_Control|estado_act.Jalr~regout\ & ((\i_RISCV|i_Path|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RISCV|i_Control|estado_act.Jalr~regout\,
	datac => \i_RISCV|i_Path|pc_out\(26),
	datad => \i_RISCV|i_Path|Mux5~0_combout\,
	combout => \i_RISCV|i_Path|Mux5~1_combout\);

-- Location: LCFF_X24_Y16_N23
\i_RISCV|i_Path|i_BancoReg|reg[4][26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux5~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[4][26]~regout\);

-- Location: LCFF_X23_Y15_N21
\i_RISCV|i_Path|i_BancoReg|reg[2][26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux5~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[2][26]~regout\);

-- Location: LCCOMB_X23_Y15_N14
\i_RISCV|i_Path|i_genInm|inm[25]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_genInm|inm[25]~0_combout\ = (\i_RISCV|i_Control|WideOr12~0_combout\ & (((\i_RISCV|i_Path|ir_out_m\(31))))) # (!\i_RISCV|i_Control|WideOr12~0_combout\ & ((\i_RISCV|i_Control|Selector18~0_combout\ & ((\i_RISCV|i_Path|ir_out_m\(31)))) # 
-- (!\i_RISCV|i_Control|Selector18~0_combout\ & (\i_RISCV|i_Path|ir_out_m\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|ir_out_m\(10),
	datab => \i_RISCV|i_Control|WideOr12~0_combout\,
	datac => \i_RISCV|i_Path|ir_out_m\(31),
	datad => \i_RISCV|i_Control|Selector18~0_combout\,
	combout => \i_RISCV|i_Path|i_genInm|inm[25]~0_combout\);

-- Location: LCCOMB_X23_Y15_N20
\i_RISCV|i_Path|b[26]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[26]~22_combout\ = (\i_RISCV|i_Path|b[26]~6_combout\ & (((\i_RISCV|i_Path|i_genInm|inm[25]~0_combout\)) # (!\i_RISCV|i_Path|b[26]~5_combout\))) # (!\i_RISCV|i_Path|b[26]~6_combout\ & (\i_RISCV|i_Path|b[26]~5_combout\ & 
-- (\i_RISCV|i_Path|i_BancoReg|reg[2][26]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[26]~6_combout\,
	datab => \i_RISCV|i_Path|b[26]~5_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[2][26]~regout\,
	datad => \i_RISCV|i_Path|i_genInm|inm[25]~0_combout\,
	combout => \i_RISCV|i_Path|b[26]~22_combout\);

-- Location: LCCOMB_X24_Y16_N22
\i_RISCV|i_Path|b[26]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[26]~23_combout\ = (\i_RISCV|i_Path|b[26]~4_combout\ & ((\i_RISCV|i_Path|b[26]~22_combout\ & (\i_RISCV|i_Path|i_BancoReg|reg[6][26]~regout\)) # (!\i_RISCV|i_Path|b[26]~22_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[4][26]~regout\))))) # 
-- (!\i_RISCV|i_Path|b[26]~4_combout\ & (((\i_RISCV|i_Path|b[26]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_BancoReg|reg[6][26]~regout\,
	datab => \i_RISCV|i_Path|b[26]~4_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[4][26]~regout\,
	datad => \i_RISCV|i_Path|b[26]~22_combout\,
	combout => \i_RISCV|i_Path|b[26]~23_combout\);

-- Location: LCCOMB_X24_Y16_N18
\i_RISCV|i_Path|b[26]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[26]~24_combout\ = (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & \i_RISCV|i_Path|b[26]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datad => \i_RISCV|i_Path|b[26]~23_combout\,
	combout => \i_RISCV|i_Path|b[26]~24_combout\);

-- Location: LCCOMB_X25_Y12_N30
\i_RISCV|i_Path|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux6~0_combout\ = (\i_RISCV|i_Control|estado_act.lui3~regout\ & (((\i_RISCV|i_Path|ir_out_m\(10))))) # (!\i_RISCV|i_Control|estado_act.lui3~regout\ & (\i_RISCV|i_Path|alur_out\(25) & (!\i_RISCV|i_Control|estado_act.lw5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|alur_out\(25),
	datab => \i_RISCV|i_Control|estado_act.lw5~regout\,
	datac => \i_RISCV|i_Control|estado_act.lui3~regout\,
	datad => \i_RISCV|i_Path|ir_out_m\(10),
	combout => \i_RISCV|i_Path|Mux6~0_combout\);

-- Location: LCCOMB_X21_Y12_N12
\i_RISCV|i_Path|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux6~1_combout\ = (\i_RISCV|i_Control|estado_act.Jalr~regout\ & (\i_RISCV|i_Path|pc_out\(25))) # (!\i_RISCV|i_Control|estado_act.Jalr~regout\ & ((\i_RISCV|i_Path|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|pc_out\(25),
	datab => \i_RISCV|i_Path|Mux6~0_combout\,
	datad => \i_RISCV|i_Control|estado_act.Jalr~regout\,
	combout => \i_RISCV|i_Path|Mux6~1_combout\);

-- Location: LCFF_X25_Y12_N5
\i_RISCV|i_Path|i_BancoReg|reg[6][25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux6~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[6][25]~regout\);

-- Location: LCFF_X25_Y12_N11
\i_RISCV|i_Path|i_BancoReg|reg[4][25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux6~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[4][25]~regout\);

-- Location: LCFF_X24_Y15_N31
\i_RISCV|i_Path|i_BancoReg|reg[2][25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux6~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[2][25]~regout\);

-- Location: LCCOMB_X24_Y15_N30
\i_RISCV|i_Path|b[25]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[25]~25_combout\ = (\i_RISCV|i_Path|b[26]~5_combout\ & ((\i_RISCV|i_Path|b[26]~6_combout\ & (\i_RISCV|i_Path|i_genInm|inm[25]~0_combout\)) # (!\i_RISCV|i_Path|b[26]~6_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[2][25]~regout\))))) # 
-- (!\i_RISCV|i_Path|b[26]~5_combout\ & (((\i_RISCV|i_Path|b[26]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_genInm|inm[25]~0_combout\,
	datab => \i_RISCV|i_Path|b[26]~5_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[2][25]~regout\,
	datad => \i_RISCV|i_Path|b[26]~6_combout\,
	combout => \i_RISCV|i_Path|b[25]~25_combout\);

-- Location: LCCOMB_X25_Y12_N10
\i_RISCV|i_Path|b[25]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[25]~26_combout\ = (\i_RISCV|i_Path|b[26]~4_combout\ & ((\i_RISCV|i_Path|b[25]~25_combout\ & (\i_RISCV|i_Path|i_BancoReg|reg[6][25]~regout\)) # (!\i_RISCV|i_Path|b[25]~25_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[4][25]~regout\))))) # 
-- (!\i_RISCV|i_Path|b[26]~4_combout\ & (((\i_RISCV|i_Path|b[25]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[26]~4_combout\,
	datab => \i_RISCV|i_Path|i_BancoReg|reg[6][25]~regout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[4][25]~regout\,
	datad => \i_RISCV|i_Path|b[25]~25_combout\,
	combout => \i_RISCV|i_Path|b[25]~26_combout\);

-- Location: LCCOMB_X25_Y12_N22
\i_RISCV|i_Path|b[25]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[25]~27_combout\ = (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & \i_RISCV|i_Path|b[25]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datad => \i_RISCV|i_Path|b[25]~26_combout\,
	combout => \i_RISCV|i_Path|b[25]~27_combout\);

-- Location: LCCOMB_X25_Y13_N16
\i_RISCV|i_Path|i_ALU|i1_sr|Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~48_combout\ = ((\i_RISCV|i_Path|b[24]~30_combout\ $ (\i_RISCV|i_Path|a[24]~25_combout\ $ (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~47\)))) # (GND)
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~49\ = CARRY((\i_RISCV|i_Path|b[24]~30_combout\ & ((\i_RISCV|i_Path|a[24]~25_combout\) # (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~47\))) # (!\i_RISCV|i_Path|b[24]~30_combout\ & (\i_RISCV|i_Path|a[24]~25_combout\ & 
-- !\i_RISCV|i_Path|i_ALU|i1_sr|Add1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[24]~30_combout\,
	datab => \i_RISCV|i_Path|a[24]~25_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~47\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~48_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~49\);

-- Location: LCCOMB_X21_Y12_N22
\i_RISCV|i_Path|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux7~1_combout\ = (\i_RISCV|i_Control|estado_act.Jalr~regout\ & ((\i_RISCV|i_Path|pc_out\(24)))) # (!\i_RISCV|i_Control|estado_act.Jalr~regout\ & (\i_RISCV|i_Path|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|Mux7~0_combout\,
	datab => \i_RISCV|i_Path|pc_out\(24),
	datad => \i_RISCV|i_Control|estado_act.Jalr~regout\,
	combout => \i_RISCV|i_Path|Mux7~1_combout\);

-- Location: LCFF_X25_Y12_N29
\i_RISCV|i_Path|i_BancoReg|reg[4][24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux7~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[4][24]~regout\);

-- Location: LCFF_X23_Y15_N27
\i_RISCV|i_Path|i_BancoReg|reg[2][24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux7~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[2][24]~regout\);

-- Location: LCCOMB_X23_Y15_N26
\i_RISCV|i_Path|b[24]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[24]~28_combout\ = (\i_RISCV|i_Path|b[26]~5_combout\ & ((\i_RISCV|i_Path|b[26]~6_combout\ & (\i_RISCV|i_Path|i_genInm|inm[24]~1_combout\)) # (!\i_RISCV|i_Path|b[26]~6_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[2][24]~regout\))))) # 
-- (!\i_RISCV|i_Path|b[26]~5_combout\ & (((\i_RISCV|i_Path|b[26]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_genInm|inm[24]~1_combout\,
	datab => \i_RISCV|i_Path|b[26]~5_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[2][24]~regout\,
	datad => \i_RISCV|i_Path|b[26]~6_combout\,
	combout => \i_RISCV|i_Path|b[24]~28_combout\);

-- Location: LCCOMB_X25_Y12_N28
\i_RISCV|i_Path|b[24]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[24]~29_combout\ = (\i_RISCV|i_Path|b[26]~4_combout\ & ((\i_RISCV|i_Path|b[24]~28_combout\ & (\i_RISCV|i_Path|i_BancoReg|reg[6][24]~regout\)) # (!\i_RISCV|i_Path|b[24]~28_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[4][24]~regout\))))) # 
-- (!\i_RISCV|i_Path|b[26]~4_combout\ & (((\i_RISCV|i_Path|b[24]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_BancoReg|reg[6][24]~regout\,
	datab => \i_RISCV|i_Path|b[26]~4_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[4][24]~regout\,
	datad => \i_RISCV|i_Path|b[24]~28_combout\,
	combout => \i_RISCV|i_Path|b[24]~29_combout\);

-- Location: LCCOMB_X25_Y12_N16
\i_RISCV|i_Path|b[24]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[24]~30_combout\ = (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & \i_RISCV|i_Path|b[24]~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datad => \i_RISCV|i_Path|b[24]~29_combout\,
	combout => \i_RISCV|i_Path|b[24]~30_combout\);

-- Location: LCCOMB_X23_Y12_N0
\i_RISCV|i_Path|i_ALU|i1_sr|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~48_combout\ = ((\i_RISCV|i_Path|a[24]~25_combout\ $ (\i_RISCV|i_Path|b[24]~30_combout\ $ (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~47\)))) # (GND)
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~49\ = CARRY((\i_RISCV|i_Path|a[24]~25_combout\ & ((!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~47\) # (!\i_RISCV|i_Path|b[24]~30_combout\))) # (!\i_RISCV|i_Path|a[24]~25_combout\ & (!\i_RISCV|i_Path|b[24]~30_combout\ & 
-- !\i_RISCV|i_Path|i_ALU|i1_sr|Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[24]~25_combout\,
	datab => \i_RISCV|i_Path|b[24]~30_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~47\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~48_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~49\);

-- Location: LCCOMB_X24_Y13_N0
\i_RISCV|i_Path|i_ALU|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|Mux7~0_combout\ = (!\i_RISCV|i_Control|Selector16~0_combout\ & ((\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & ((\i_RISCV|i_Path|i_ALU|i1_sr|Add0~48_combout\))) # (!\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & 
-- (\i_RISCV|i_Path|i_ALU|i1_sr|Add1~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|Selector16~0_combout\,
	datab => \i_RISCV|i_Path|i_ALU|Mux0~0_combout\,
	datac => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~48_combout\,
	datad => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~48_combout\,
	combout => \i_RISCV|i_Path|i_ALU|Mux7~0_combout\);

-- Location: LCCOMB_X24_Y13_N16
\i_RISCV|i_Path|pc_in[24]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|pc_in[24]~13_combout\ = (\i_RISCV|i_Control|estado_act.SalCond~regout\ & (\i_RISCV|i_Path|alur_out\(24))) # (!\i_RISCV|i_Control|estado_act.SalCond~regout\ & (((\i_RISCV|i_Control|estado_act.Reset~regout\ & 
-- \i_RISCV|i_Path|i_ALU|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|alur_out\(24),
	datab => \i_RISCV|i_Control|estado_act.Reset~regout\,
	datac => \i_RISCV|i_Control|estado_act.SalCond~regout\,
	datad => \i_RISCV|i_Path|i_ALU|Mux7~0_combout\,
	combout => \i_RISCV|i_Path|pc_in[24]~13_combout\);

-- Location: LCFF_X24_Y13_N17
\i_RISCV|i_Path|pc_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|pc_in[24]~13_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_out\(24));

-- Location: LCFF_X21_Y14_N29
\i_RISCV|i_Path|pc_ir[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|pc_out\(24),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_ir\(24));

-- Location: LCCOMB_X21_Y14_N28
\i_RISCV|i_Path|a[24]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[24]~23_combout\ = (\i_RISCV|i_Control|estado_act.auipc3~regout\ & (((\i_RISCV|i_Path|pc_ir\(24))))) # (!\i_RISCV|i_Control|estado_act.auipc3~regout\ & ((\i_RISCV|i_Control|estado_act.Decod~regout\ & ((\i_RISCV|i_Path|pc_ir\(24)))) # 
-- (!\i_RISCV|i_Control|estado_act.Decod~regout\ & (\i_RISCV|i_Path|ir_out_m\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.auipc3~regout\,
	datab => \i_RISCV|i_Path|ir_out_m\(17),
	datac => \i_RISCV|i_Path|pc_ir\(24),
	datad => \i_RISCV|i_Control|estado_act.Decod~regout\,
	combout => \i_RISCV|i_Path|a[24]~23_combout\);

-- Location: LCFF_X21_Y12_N19
\i_RISCV|i_Path|i_BancoReg|reg[1][24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux7~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[1][24]~regout\);

-- Location: LCCOMB_X21_Y12_N18
\i_RISCV|i_Path|a[24]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[24]~24_combout\ = (\i_RISCV|i_Path|a[24]~23_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[5][24]~regout\) # ((!\i_RISCV|i_Path|a[14]~1_combout\)))) # (!\i_RISCV|i_Path|a[24]~23_combout\ & (((\i_RISCV|i_Path|i_BancoReg|reg[1][24]~regout\ & 
-- \i_RISCV|i_Path|a[14]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_BancoReg|reg[5][24]~regout\,
	datab => \i_RISCV|i_Path|a[24]~23_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[1][24]~regout\,
	datad => \i_RISCV|i_Path|a[14]~1_combout\,
	combout => \i_RISCV|i_Path|a[24]~24_combout\);

-- Location: LCCOMB_X21_Y12_N10
\i_RISCV|i_Path|a[24]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[24]~25_combout\ = (\i_RISCV|i_Control|estado_act.Fetch~regout\ & (\i_RISCV|i_Path|pc_out\(24))) # (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & ((\i_RISCV|i_Path|a[24]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|pc_out\(24),
	datac => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datad => \i_RISCV|i_Path|a[24]~24_combout\,
	combout => \i_RISCV|i_Path|a[24]~25_combout\);

-- Location: LCCOMB_X25_Y13_N18
\i_RISCV|i_Path|i_ALU|i1_sr|Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~50_combout\ = (\i_RISCV|i_Path|a[25]~22_combout\ & ((\i_RISCV|i_Path|b[25]~27_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add1~49\ & VCC)) # (!\i_RISCV|i_Path|b[25]~27_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~49\)))) # 
-- (!\i_RISCV|i_Path|a[25]~22_combout\ & ((\i_RISCV|i_Path|b[25]~27_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~49\)) # (!\i_RISCV|i_Path|b[25]~27_combout\ & ((\i_RISCV|i_Path|i_ALU|i1_sr|Add1~49\) # (GND)))))
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~51\ = CARRY((\i_RISCV|i_Path|a[25]~22_combout\ & (!\i_RISCV|i_Path|b[25]~27_combout\ & !\i_RISCV|i_Path|i_ALU|i1_sr|Add1~49\)) # (!\i_RISCV|i_Path|a[25]~22_combout\ & ((!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~49\) # 
-- (!\i_RISCV|i_Path|b[25]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[25]~22_combout\,
	datab => \i_RISCV|i_Path|b[25]~27_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~49\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~50_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~51\);

-- Location: LCCOMB_X23_Y12_N2
\i_RISCV|i_Path|i_ALU|i1_sr|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~50_combout\ = (\i_RISCV|i_Path|b[25]~27_combout\ & ((\i_RISCV|i_Path|a[25]~22_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~49\)) # (!\i_RISCV|i_Path|a[25]~22_combout\ & ((\i_RISCV|i_Path|i_ALU|i1_sr|Add0~49\) # (GND))))) 
-- # (!\i_RISCV|i_Path|b[25]~27_combout\ & ((\i_RISCV|i_Path|a[25]~22_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~49\ & VCC)) # (!\i_RISCV|i_Path|a[25]~22_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~49\))))
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~51\ = CARRY((\i_RISCV|i_Path|b[25]~27_combout\ & ((!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~49\) # (!\i_RISCV|i_Path|a[25]~22_combout\))) # (!\i_RISCV|i_Path|b[25]~27_combout\ & (!\i_RISCV|i_Path|a[25]~22_combout\ & 
-- !\i_RISCV|i_Path|i_ALU|i1_sr|Add0~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[25]~27_combout\,
	datab => \i_RISCV|i_Path|a[25]~22_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~49\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~50_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~51\);

-- Location: LCCOMB_X24_Y14_N6
\i_RISCV|i_Path|i_ALU|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|Mux6~0_combout\ = (!\i_RISCV|i_Control|Selector16~0_combout\ & ((\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & ((\i_RISCV|i_Path|i_ALU|i1_sr|Add0~50_combout\))) # (!\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & 
-- (\i_RISCV|i_Path|i_ALU|i1_sr|Add1~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|Selector16~0_combout\,
	datab => \i_RISCV|i_Path|i_ALU|Mux0~0_combout\,
	datac => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~50_combout\,
	datad => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~50_combout\,
	combout => \i_RISCV|i_Path|i_ALU|Mux6~0_combout\);

-- Location: LCFF_X24_Y14_N7
\i_RISCV|i_Path|alur_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ALU|Mux6~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|alur_out\(25));

-- Location: LCCOMB_X24_Y14_N12
\i_RISCV|i_Path|pc_in[25]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|pc_in[25]~12_combout\ = (\i_RISCV|i_Control|estado_act.SalCond~regout\ & (((\i_RISCV|i_Path|alur_out\(25))))) # (!\i_RISCV|i_Control|estado_act.SalCond~regout\ & (\i_RISCV|i_Control|estado_act.Reset~regout\ & 
-- ((\i_RISCV|i_Path|i_ALU|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Reset~regout\,
	datab => \i_RISCV|i_Path|alur_out\(25),
	datac => \i_RISCV|i_Control|estado_act.SalCond~regout\,
	datad => \i_RISCV|i_Path|i_ALU|Mux6~0_combout\,
	combout => \i_RISCV|i_Path|pc_in[25]~12_combout\);

-- Location: LCFF_X24_Y14_N13
\i_RISCV|i_Path|pc_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|pc_in[25]~12_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_out\(25));

-- Location: LCFF_X21_Y15_N5
\i_RISCV|i_Path|pc_ir[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|pc_out\(25),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_ir\(25));

-- Location: LCCOMB_X21_Y15_N4
\i_RISCV|i_Path|a[25]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[25]~20_combout\ = (\i_RISCV|i_Control|estado_act.Decod~regout\ & (((\i_RISCV|i_Path|pc_ir\(25))))) # (!\i_RISCV|i_Control|estado_act.Decod~regout\ & ((\i_RISCV|i_Control|estado_act.auipc3~regout\ & (\i_RISCV|i_Path|pc_ir\(25))) # 
-- (!\i_RISCV|i_Control|estado_act.auipc3~regout\ & ((\i_RISCV|i_Path|ir_out_m\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Decod~regout\,
	datab => \i_RISCV|i_Control|estado_act.auipc3~regout\,
	datac => \i_RISCV|i_Path|pc_ir\(25),
	datad => \i_RISCV|i_Path|ir_out_m\(17),
	combout => \i_RISCV|i_Path|a[25]~20_combout\);

-- Location: LCFF_X21_Y12_N29
\i_RISCV|i_Path|i_BancoReg|reg[1][25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux6~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[1][25]~regout\);

-- Location: LCCOMB_X21_Y12_N28
\i_RISCV|i_Path|a[25]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[25]~21_combout\ = (\i_RISCV|i_Path|a[25]~20_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[5][25]~regout\) # ((!\i_RISCV|i_Path|a[14]~1_combout\)))) # (!\i_RISCV|i_Path|a[25]~20_combout\ & (((\i_RISCV|i_Path|i_BancoReg|reg[1][25]~regout\ & 
-- \i_RISCV|i_Path|a[14]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_BancoReg|reg[5][25]~regout\,
	datab => \i_RISCV|i_Path|a[25]~20_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[1][25]~regout\,
	datad => \i_RISCV|i_Path|a[14]~1_combout\,
	combout => \i_RISCV|i_Path|a[25]~21_combout\);

-- Location: LCCOMB_X21_Y12_N20
\i_RISCV|i_Path|a[25]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[25]~22_combout\ = (\i_RISCV|i_Control|estado_act.Fetch~regout\ & (\i_RISCV|i_Path|pc_out\(25))) # (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & ((\i_RISCV|i_Path|a[25]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datac => \i_RISCV|i_Path|pc_out\(25),
	datad => \i_RISCV|i_Path|a[25]~21_combout\,
	combout => \i_RISCV|i_Path|a[25]~22_combout\);

-- Location: LCCOMB_X23_Y12_N4
\i_RISCV|i_Path|i_ALU|i1_sr|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~52_combout\ = ((\i_RISCV|i_Path|a[26]~19_combout\ $ (\i_RISCV|i_Path|b[26]~24_combout\ $ (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~51\)))) # (GND)
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~53\ = CARRY((\i_RISCV|i_Path|a[26]~19_combout\ & ((!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~51\) # (!\i_RISCV|i_Path|b[26]~24_combout\))) # (!\i_RISCV|i_Path|a[26]~19_combout\ & (!\i_RISCV|i_Path|b[26]~24_combout\ & 
-- !\i_RISCV|i_Path|i_ALU|i1_sr|Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[26]~19_combout\,
	datab => \i_RISCV|i_Path|b[26]~24_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~51\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~52_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~53\);

-- Location: LCCOMB_X25_Y13_N20
\i_RISCV|i_Path|i_ALU|i1_sr|Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~52_combout\ = ((\i_RISCV|i_Path|b[26]~24_combout\ $ (\i_RISCV|i_Path|a[26]~19_combout\ $ (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~51\)))) # (GND)
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~53\ = CARRY((\i_RISCV|i_Path|b[26]~24_combout\ & ((\i_RISCV|i_Path|a[26]~19_combout\) # (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~51\))) # (!\i_RISCV|i_Path|b[26]~24_combout\ & (\i_RISCV|i_Path|a[26]~19_combout\ & 
-- !\i_RISCV|i_Path|i_ALU|i1_sr|Add1~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[26]~24_combout\,
	datab => \i_RISCV|i_Path|a[26]~19_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~51\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~52_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~53\);

-- Location: LCCOMB_X24_Y12_N10
\i_RISCV|i_Path|i_ALU|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|Mux5~0_combout\ = (!\i_RISCV|i_Control|Selector16~0_combout\ & ((\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~52_combout\)) # (!\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & 
-- ((\i_RISCV|i_Path|i_ALU|i1_sr|Add1~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|Selector16~0_combout\,
	datab => \i_RISCV|i_Path|i_ALU|Mux0~0_combout\,
	datac => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~52_combout\,
	datad => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~52_combout\,
	combout => \i_RISCV|i_Path|i_ALU|Mux5~0_combout\);

-- Location: LCCOMB_X24_Y12_N14
\i_RISCV|i_Path|pc_in[26]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|pc_in[26]~11_combout\ = (\i_RISCV|i_Control|estado_act.SalCond~regout\ & (\i_RISCV|i_Path|alur_out\(26))) # (!\i_RISCV|i_Control|estado_act.SalCond~regout\ & (((\i_RISCV|i_Control|estado_act.Reset~regout\ & 
-- \i_RISCV|i_Path|i_ALU|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|alur_out\(26),
	datab => \i_RISCV|i_Control|estado_act.SalCond~regout\,
	datac => \i_RISCV|i_Control|estado_act.Reset~regout\,
	datad => \i_RISCV|i_Path|i_ALU|Mux5~0_combout\,
	combout => \i_RISCV|i_Path|pc_in[26]~11_combout\);

-- Location: LCFF_X24_Y12_N15
\i_RISCV|i_Path|pc_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|pc_in[26]~11_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_out\(26));

-- Location: LCFF_X20_Y14_N29
\i_RISCV|i_Path|i_BancoReg|reg[1][26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux5~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[1][26]~regout\);

-- Location: LCFF_X19_Y14_N17
\i_RISCV|i_Path|pc_ir[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|pc_out\(26),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_ir\(26));

-- Location: LCCOMB_X19_Y14_N16
\i_RISCV|i_Path|a[26]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[26]~17_combout\ = (\i_RISCV|i_Control|estado_act.auipc3~regout\ & (((\i_RISCV|i_Path|pc_ir\(26))))) # (!\i_RISCV|i_Control|estado_act.auipc3~regout\ & ((\i_RISCV|i_Control|estado_act.Decod~regout\ & ((\i_RISCV|i_Path|pc_ir\(26)))) # 
-- (!\i_RISCV|i_Control|estado_act.Decod~regout\ & (\i_RISCV|i_Path|ir_out_m\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|ir_out_m\(17),
	datab => \i_RISCV|i_Control|estado_act.auipc3~regout\,
	datac => \i_RISCV|i_Path|pc_ir\(26),
	datad => \i_RISCV|i_Control|estado_act.Decod~regout\,
	combout => \i_RISCV|i_Path|a[26]~17_combout\);

-- Location: LCCOMB_X20_Y14_N28
\i_RISCV|i_Path|a[26]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[26]~18_combout\ = (\i_RISCV|i_Path|a[14]~1_combout\ & ((\i_RISCV|i_Path|a[26]~17_combout\ & (\i_RISCV|i_Path|i_BancoReg|reg[5][26]~regout\)) # (!\i_RISCV|i_Path|a[26]~17_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[1][26]~regout\))))) # 
-- (!\i_RISCV|i_Path|a[14]~1_combout\ & (((\i_RISCV|i_Path|a[26]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_BancoReg|reg[5][26]~regout\,
	datab => \i_RISCV|i_Path|a[14]~1_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[1][26]~regout\,
	datad => \i_RISCV|i_Path|a[26]~17_combout\,
	combout => \i_RISCV|i_Path|a[26]~18_combout\);

-- Location: LCCOMB_X20_Y14_N12
\i_RISCV|i_Path|a[26]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[26]~19_combout\ = (\i_RISCV|i_Control|estado_act.Fetch~regout\ & (\i_RISCV|i_Path|pc_out\(26))) # (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & ((\i_RISCV|i_Path|a[26]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datac => \i_RISCV|i_Path|pc_out\(26),
	datad => \i_RISCV|i_Path|a[26]~18_combout\,
	combout => \i_RISCV|i_Path|a[26]~19_combout\);

-- Location: LCCOMB_X23_Y12_N6
\i_RISCV|i_Path|i_ALU|i1_sr|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~54_combout\ = (\i_RISCV|i_Path|a[27]~16_combout\ & ((\i_RISCV|i_Path|b[27]~21_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~53\)) # (!\i_RISCV|i_Path|b[27]~21_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~53\ & VCC)))) # 
-- (!\i_RISCV|i_Path|a[27]~16_combout\ & ((\i_RISCV|i_Path|b[27]~21_combout\ & ((\i_RISCV|i_Path|i_ALU|i1_sr|Add0~53\) # (GND))) # (!\i_RISCV|i_Path|b[27]~21_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~53\))))
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~55\ = CARRY((\i_RISCV|i_Path|a[27]~16_combout\ & (\i_RISCV|i_Path|b[27]~21_combout\ & !\i_RISCV|i_Path|i_ALU|i1_sr|Add0~53\)) # (!\i_RISCV|i_Path|a[27]~16_combout\ & ((\i_RISCV|i_Path|b[27]~21_combout\) # 
-- (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~53\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[27]~16_combout\,
	datab => \i_RISCV|i_Path|b[27]~21_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~53\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~54_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~55\);

-- Location: LCFF_X21_Y15_N7
\i_RISCV|i_Path|i_BancoReg|reg[1][27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux4~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[1][27]~regout\);

-- Location: LCFF_X21_Y14_N11
\i_RISCV|i_Path|i_BancoReg|reg[5][27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux4~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[5][27]~regout\);

-- Location: LCCOMB_X21_Y14_N10
\i_RISCV|i_Path|a[27]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[27]~15_combout\ = (\i_RISCV|i_Path|a[27]~14_combout\ & (((\i_RISCV|i_Path|i_BancoReg|reg[5][27]~regout\) # (!\i_RISCV|i_Path|a[14]~1_combout\)))) # (!\i_RISCV|i_Path|a[27]~14_combout\ & (\i_RISCV|i_Path|i_BancoReg|reg[1][27]~regout\ & 
-- ((\i_RISCV|i_Path|a[14]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[27]~14_combout\,
	datab => \i_RISCV|i_Path|i_BancoReg|reg[1][27]~regout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[5][27]~regout\,
	datad => \i_RISCV|i_Path|a[14]~1_combout\,
	combout => \i_RISCV|i_Path|a[27]~15_combout\);

-- Location: LCCOMB_X21_Y14_N22
\i_RISCV|i_Path|a[27]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[27]~16_combout\ = (\i_RISCV|i_Control|estado_act.Fetch~regout\ & (\i_RISCV|i_Path|pc_out\(27))) # (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & ((\i_RISCV|i_Path|a[27]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datac => \i_RISCV|i_Path|pc_out\(27),
	datad => \i_RISCV|i_Path|a[27]~15_combout\,
	combout => \i_RISCV|i_Path|a[27]~16_combout\);

-- Location: LCCOMB_X25_Y13_N22
\i_RISCV|i_Path|i_ALU|i1_sr|Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~54_combout\ = (\i_RISCV|i_Path|b[27]~21_combout\ & ((\i_RISCV|i_Path|a[27]~16_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add1~53\ & VCC)) # (!\i_RISCV|i_Path|a[27]~16_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~53\)))) # 
-- (!\i_RISCV|i_Path|b[27]~21_combout\ & ((\i_RISCV|i_Path|a[27]~16_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~53\)) # (!\i_RISCV|i_Path|a[27]~16_combout\ & ((\i_RISCV|i_Path|i_ALU|i1_sr|Add1~53\) # (GND)))))
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~55\ = CARRY((\i_RISCV|i_Path|b[27]~21_combout\ & (!\i_RISCV|i_Path|a[27]~16_combout\ & !\i_RISCV|i_Path|i_ALU|i1_sr|Add1~53\)) # (!\i_RISCV|i_Path|b[27]~21_combout\ & ((!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~53\) # 
-- (!\i_RISCV|i_Path|a[27]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[27]~21_combout\,
	datab => \i_RISCV|i_Path|a[27]~16_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~53\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~54_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~55\);

-- Location: LCCOMB_X24_Y12_N12
\i_RISCV|i_Path|i_ALU|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|Mux4~0_combout\ = (!\i_RISCV|i_Control|Selector16~0_combout\ & ((\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~54_combout\)) # (!\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & 
-- ((\i_RISCV|i_Path|i_ALU|i1_sr|Add1~54_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|Selector16~0_combout\,
	datab => \i_RISCV|i_Path|i_ALU|Mux0~0_combout\,
	datac => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~54_combout\,
	datad => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~54_combout\,
	combout => \i_RISCV|i_Path|i_ALU|Mux4~0_combout\);

-- Location: LCCOMB_X24_Y12_N24
\i_RISCV|i_Path|pc_in[27]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|pc_in[27]~10_combout\ = (\i_RISCV|i_Control|estado_act.SalCond~regout\ & (\i_RISCV|i_Path|alur_out\(27))) # (!\i_RISCV|i_Control|estado_act.SalCond~regout\ & (((\i_RISCV|i_Control|estado_act.Reset~regout\ & 
-- \i_RISCV|i_Path|i_ALU|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|alur_out\(27),
	datab => \i_RISCV|i_Control|estado_act.SalCond~regout\,
	datac => \i_RISCV|i_Control|estado_act.Reset~regout\,
	datad => \i_RISCV|i_Path|i_ALU|Mux4~0_combout\,
	combout => \i_RISCV|i_Path|pc_in[27]~10_combout\);

-- Location: LCFF_X24_Y12_N25
\i_RISCV|i_Path|pc_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|pc_in[27]~10_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_out\(27));

-- Location: LCCOMB_X21_Y14_N2
\i_RISCV|i_Path|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux4~1_combout\ = (\i_RISCV|i_Control|estado_act.Jalr~regout\ & ((\i_RISCV|i_Path|pc_out\(27)))) # (!\i_RISCV|i_Control|estado_act.Jalr~regout\ & (\i_RISCV|i_Path|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|Mux4~0_combout\,
	datab => \i_RISCV|i_Path|pc_out\(27),
	datad => \i_RISCV|i_Control|estado_act.Jalr~regout\,
	combout => \i_RISCV|i_Path|Mux4~1_combout\);

-- Location: LCFF_X25_Y12_N1
\i_RISCV|i_Path|i_BancoReg|reg[4][27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux4~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[4][27]~regout\);

-- Location: LCFF_X24_Y15_N21
\i_RISCV|i_Path|i_BancoReg|reg[2][27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux4~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[2][27]~regout\);

-- Location: LCCOMB_X24_Y15_N20
\i_RISCV|i_Path|b[27]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[27]~19_combout\ = (\i_RISCV|i_Path|b[26]~6_combout\ & (((\i_RISCV|i_Path|i_genInm|inm[25]~0_combout\)) # (!\i_RISCV|i_Path|b[26]~5_combout\))) # (!\i_RISCV|i_Path|b[26]~6_combout\ & (\i_RISCV|i_Path|b[26]~5_combout\ & 
-- (\i_RISCV|i_Path|i_BancoReg|reg[2][27]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[26]~6_combout\,
	datab => \i_RISCV|i_Path|b[26]~5_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[2][27]~regout\,
	datad => \i_RISCV|i_Path|i_genInm|inm[25]~0_combout\,
	combout => \i_RISCV|i_Path|b[27]~19_combout\);

-- Location: LCCOMB_X25_Y12_N0
\i_RISCV|i_Path|b[27]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[27]~20_combout\ = (\i_RISCV|i_Path|b[26]~4_combout\ & ((\i_RISCV|i_Path|b[27]~19_combout\ & (\i_RISCV|i_Path|i_BancoReg|reg[6][27]~regout\)) # (!\i_RISCV|i_Path|b[27]~19_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[4][27]~regout\))))) # 
-- (!\i_RISCV|i_Path|b[26]~4_combout\ & (((\i_RISCV|i_Path|b[27]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_BancoReg|reg[6][27]~regout\,
	datab => \i_RISCV|i_Path|b[26]~4_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[4][27]~regout\,
	datad => \i_RISCV|i_Path|b[27]~19_combout\,
	combout => \i_RISCV|i_Path|b[27]~20_combout\);

-- Location: LCCOMB_X25_Y12_N8
\i_RISCV|i_Path|b[27]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[27]~21_combout\ = (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & \i_RISCV|i_Path|b[27]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datad => \i_RISCV|i_Path|b[27]~20_combout\,
	combout => \i_RISCV|i_Path|b[27]~21_combout\);

-- Location: LCCOMB_X24_Y12_N4
\i_RISCV|i_Path|sal_and~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|sal_and~13_combout\ = (\i_RISCV|i_Path|a[27]~16_combout\ & (\i_RISCV|i_Path|b[27]~21_combout\ & (\i_RISCV|i_Path|a[26]~19_combout\ $ (!\i_RISCV|i_Path|b[26]~24_combout\)))) # (!\i_RISCV|i_Path|a[27]~16_combout\ & 
-- (!\i_RISCV|i_Path|b[27]~21_combout\ & (\i_RISCV|i_Path|a[26]~19_combout\ $ (!\i_RISCV|i_Path|b[26]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[27]~16_combout\,
	datab => \i_RISCV|i_Path|a[26]~19_combout\,
	datac => \i_RISCV|i_Path|b[27]~21_combout\,
	datad => \i_RISCV|i_Path|b[26]~24_combout\,
	combout => \i_RISCV|i_Path|sal_and~13_combout\);

-- Location: LCCOMB_X25_Y15_N20
\i_RISCV|i_Path|sal_and~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|sal_and~14_combout\ = (\i_RISCV|i_Path|sal_and~12_combout\ & (\i_RISCV|i_Path|sal_and~11_combout\ & (\i_RISCV|i_Path|sal_and~10_combout\ & \i_RISCV|i_Path|sal_and~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|sal_and~12_combout\,
	datab => \i_RISCV|i_Path|sal_and~11_combout\,
	datac => \i_RISCV|i_Path|sal_and~10_combout\,
	datad => \i_RISCV|i_Path|sal_and~13_combout\,
	combout => \i_RISCV|i_Path|sal_and~14_combout\);

-- Location: LCCOMB_X24_Y12_N22
\i_RISCV|i_Path|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux3~0_combout\ = (\i_RISCV|i_Control|estado_act.lui3~regout\ & (((\i_RISCV|i_Path|ir_out_m\(10))))) # (!\i_RISCV|i_Control|estado_act.lui3~regout\ & (\i_RISCV|i_Path|alur_out\(28) & ((!\i_RISCV|i_Control|estado_act.lw5~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|alur_out\(28),
	datab => \i_RISCV|i_Path|ir_out_m\(10),
	datac => \i_RISCV|i_Control|estado_act.lui3~regout\,
	datad => \i_RISCV|i_Control|estado_act.lw5~regout\,
	combout => \i_RISCV|i_Path|Mux3~0_combout\);

-- Location: LCCOMB_X21_Y12_N6
\i_RISCV|i_Path|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux3~1_combout\ = (\i_RISCV|i_Control|estado_act.Jalr~regout\ & (\i_RISCV|i_Path|pc_out\(28))) # (!\i_RISCV|i_Control|estado_act.Jalr~regout\ & ((\i_RISCV|i_Path|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Jalr~regout\,
	datab => \i_RISCV|i_Path|pc_out\(28),
	datad => \i_RISCV|i_Path|Mux3~0_combout\,
	combout => \i_RISCV|i_Path|Mux3~1_combout\);

-- Location: LCFF_X22_Y14_N19
\i_RISCV|i_Path|i_BancoReg|reg[6][28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux3~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[6][28]~regout\);

-- Location: LCFF_X23_Y15_N23
\i_RISCV|i_Path|i_BancoReg|reg[2][28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux3~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[2][28]~regout\);

-- Location: LCCOMB_X23_Y15_N22
\i_RISCV|i_Path|b[28]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[28]~16_combout\ = (\i_RISCV|i_Path|b[26]~6_combout\ & (((\i_RISCV|i_Path|i_genInm|inm[25]~0_combout\)) # (!\i_RISCV|i_Path|b[26]~5_combout\))) # (!\i_RISCV|i_Path|b[26]~6_combout\ & (\i_RISCV|i_Path|b[26]~5_combout\ & 
-- (\i_RISCV|i_Path|i_BancoReg|reg[2][28]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[26]~6_combout\,
	datab => \i_RISCV|i_Path|b[26]~5_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[2][28]~regout\,
	datad => \i_RISCV|i_Path|i_genInm|inm[25]~0_combout\,
	combout => \i_RISCV|i_Path|b[28]~16_combout\);

-- Location: LCCOMB_X22_Y14_N18
\i_RISCV|i_Path|b[28]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[28]~17_combout\ = (\i_RISCV|i_Path|b[26]~4_combout\ & ((\i_RISCV|i_Path|b[28]~16_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[6][28]~regout\))) # (!\i_RISCV|i_Path|b[28]~16_combout\ & (\i_RISCV|i_Path|i_BancoReg|reg[4][28]~regout\)))) # 
-- (!\i_RISCV|i_Path|b[26]~4_combout\ & (((\i_RISCV|i_Path|b[28]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_BancoReg|reg[4][28]~regout\,
	datab => \i_RISCV|i_Path|b[26]~4_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[6][28]~regout\,
	datad => \i_RISCV|i_Path|b[28]~16_combout\,
	combout => \i_RISCV|i_Path|b[28]~17_combout\);

-- Location: LCCOMB_X22_Y14_N4
\i_RISCV|i_Path|b[28]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[28]~18_combout\ = (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & \i_RISCV|i_Path|b[28]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datad => \i_RISCV|i_Path|b[28]~17_combout\,
	combout => \i_RISCV|i_Path|b[28]~18_combout\);

-- Location: LCCOMB_X25_Y13_N24
\i_RISCV|i_Path|i_ALU|i1_sr|Add1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~56_combout\ = ((\i_RISCV|i_Path|a[28]~13_combout\ $ (\i_RISCV|i_Path|b[28]~18_combout\ $ (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~55\)))) # (GND)
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~57\ = CARRY((\i_RISCV|i_Path|a[28]~13_combout\ & ((\i_RISCV|i_Path|b[28]~18_combout\) # (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~55\))) # (!\i_RISCV|i_Path|a[28]~13_combout\ & (\i_RISCV|i_Path|b[28]~18_combout\ & 
-- !\i_RISCV|i_Path|i_ALU|i1_sr|Add1~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[28]~13_combout\,
	datab => \i_RISCV|i_Path|b[28]~18_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~55\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~56_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~57\);

-- Location: LCCOMB_X24_Y12_N0
\i_RISCV|i_Path|i_ALU|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|Mux3~0_combout\ = (!\i_RISCV|i_Control|Selector16~0_combout\ & ((\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~56_combout\)) # (!\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & 
-- ((\i_RISCV|i_Path|i_ALU|i1_sr|Add1~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~56_combout\,
	datab => \i_RISCV|i_Path|i_ALU|Mux0~0_combout\,
	datac => \i_RISCV|i_Control|Selector16~0_combout\,
	datad => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~56_combout\,
	combout => \i_RISCV|i_Path|i_ALU|Mux3~0_combout\);

-- Location: LCCOMB_X24_Y12_N18
\i_RISCV|i_Path|pc_in[28]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|pc_in[28]~9_combout\ = (\i_RISCV|i_Control|estado_act.SalCond~regout\ & (\i_RISCV|i_Path|alur_out\(28))) # (!\i_RISCV|i_Control|estado_act.SalCond~regout\ & (((\i_RISCV|i_Control|estado_act.Reset~regout\ & 
-- \i_RISCV|i_Path|i_ALU|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|alur_out\(28),
	datab => \i_RISCV|i_Control|estado_act.SalCond~regout\,
	datac => \i_RISCV|i_Control|estado_act.Reset~regout\,
	datad => \i_RISCV|i_Path|i_ALU|Mux3~0_combout\,
	combout => \i_RISCV|i_Path|pc_in[28]~9_combout\);

-- Location: LCFF_X24_Y12_N19
\i_RISCV|i_Path|pc_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|pc_in[28]~9_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_out\(28));

-- Location: LCFF_X20_Y12_N19
\i_RISCV|i_Path|pc_ir[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|pc_out\(28),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_ir\(28));

-- Location: LCCOMB_X20_Y12_N18
\i_RISCV|i_Path|a[28]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[28]~11_combout\ = (\i_RISCV|i_Control|estado_act.auipc3~regout\ & (((\i_RISCV|i_Path|pc_ir\(28))))) # (!\i_RISCV|i_Control|estado_act.auipc3~regout\ & ((\i_RISCV|i_Control|estado_act.Decod~regout\ & ((\i_RISCV|i_Path|pc_ir\(28)))) # 
-- (!\i_RISCV|i_Control|estado_act.Decod~regout\ & (\i_RISCV|i_Path|ir_out_m\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.auipc3~regout\,
	datab => \i_RISCV|i_Path|ir_out_m\(17),
	datac => \i_RISCV|i_Path|pc_ir\(28),
	datad => \i_RISCV|i_Control|estado_act.Decod~regout\,
	combout => \i_RISCV|i_Path|a[28]~11_combout\);

-- Location: LCFF_X21_Y12_N31
\i_RISCV|i_Path|i_BancoReg|reg[1][28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux3~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[1][28]~regout\);

-- Location: LCCOMB_X21_Y12_N30
\i_RISCV|i_Path|a[28]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[28]~12_combout\ = (\i_RISCV|i_Path|a[28]~11_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[5][28]~regout\) # ((!\i_RISCV|i_Path|a[14]~1_combout\)))) # (!\i_RISCV|i_Path|a[28]~11_combout\ & (((\i_RISCV|i_Path|i_BancoReg|reg[1][28]~regout\ & 
-- \i_RISCV|i_Path|a[14]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_BancoReg|reg[5][28]~regout\,
	datab => \i_RISCV|i_Path|a[28]~11_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[1][28]~regout\,
	datad => \i_RISCV|i_Path|a[14]~1_combout\,
	combout => \i_RISCV|i_Path|a[28]~12_combout\);

-- Location: LCCOMB_X21_Y12_N26
\i_RISCV|i_Path|a[28]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[28]~13_combout\ = (\i_RISCV|i_Control|estado_act.Fetch~regout\ & (\i_RISCV|i_Path|pc_out\(28))) # (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & ((\i_RISCV|i_Path|a[28]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datab => \i_RISCV|i_Path|pc_out\(28),
	datad => \i_RISCV|i_Path|a[28]~12_combout\,
	combout => \i_RISCV|i_Path|a[28]~13_combout\);

-- Location: LCCOMB_X21_Y12_N14
\i_RISCV|i_Path|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux2~1_combout\ = (\i_RISCV|i_Control|estado_act.Jalr~regout\ & ((\i_RISCV|i_Path|pc_out\(29)))) # (!\i_RISCV|i_Control|estado_act.Jalr~regout\ & (\i_RISCV|i_Path|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|Mux2~0_combout\,
	datac => \i_RISCV|i_Path|pc_out\(29),
	datad => \i_RISCV|i_Control|estado_act.Jalr~regout\,
	combout => \i_RISCV|i_Path|Mux2~1_combout\);

-- Location: LCFF_X24_Y16_N15
\i_RISCV|i_Path|i_BancoReg|reg[4][29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux2~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[4][29]~regout\);

-- Location: LCFF_X23_Y15_N29
\i_RISCV|i_Path|i_BancoReg|reg[2][29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux2~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[2][29]~regout\);

-- Location: LCCOMB_X23_Y15_N28
\i_RISCV|i_Path|b[29]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[29]~13_combout\ = (\i_RISCV|i_Path|b[26]~6_combout\ & (((\i_RISCV|i_Path|i_genInm|inm[25]~0_combout\)) # (!\i_RISCV|i_Path|b[26]~5_combout\))) # (!\i_RISCV|i_Path|b[26]~6_combout\ & (\i_RISCV|i_Path|b[26]~5_combout\ & 
-- (\i_RISCV|i_Path|i_BancoReg|reg[2][29]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[26]~6_combout\,
	datab => \i_RISCV|i_Path|b[26]~5_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[2][29]~regout\,
	datad => \i_RISCV|i_Path|i_genInm|inm[25]~0_combout\,
	combout => \i_RISCV|i_Path|b[29]~13_combout\);

-- Location: LCCOMB_X24_Y16_N14
\i_RISCV|i_Path|b[29]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[29]~14_combout\ = (\i_RISCV|i_Path|b[26]~4_combout\ & ((\i_RISCV|i_Path|b[29]~13_combout\ & (\i_RISCV|i_Path|i_BancoReg|reg[6][29]~regout\)) # (!\i_RISCV|i_Path|b[29]~13_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[4][29]~regout\))))) # 
-- (!\i_RISCV|i_Path|b[26]~4_combout\ & (((\i_RISCV|i_Path|b[29]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_BancoReg|reg[6][29]~regout\,
	datab => \i_RISCV|i_Path|b[26]~4_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[4][29]~regout\,
	datad => \i_RISCV|i_Path|b[29]~13_combout\,
	combout => \i_RISCV|i_Path|b[29]~14_combout\);

-- Location: LCCOMB_X25_Y12_N6
\i_RISCV|i_Path|b[29]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[29]~15_combout\ = (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & \i_RISCV|i_Path|b[29]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datad => \i_RISCV|i_Path|b[29]~14_combout\,
	combout => \i_RISCV|i_Path|b[29]~15_combout\);

-- Location: LCCOMB_X25_Y13_N26
\i_RISCV|i_Path|i_ALU|i1_sr|Add1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~58_combout\ = (\i_RISCV|i_Path|a[29]~10_combout\ & ((\i_RISCV|i_Path|b[29]~15_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add1~57\ & VCC)) # (!\i_RISCV|i_Path|b[29]~15_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~57\)))) # 
-- (!\i_RISCV|i_Path|a[29]~10_combout\ & ((\i_RISCV|i_Path|b[29]~15_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~57\)) # (!\i_RISCV|i_Path|b[29]~15_combout\ & ((\i_RISCV|i_Path|i_ALU|i1_sr|Add1~57\) # (GND)))))
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~59\ = CARRY((\i_RISCV|i_Path|a[29]~10_combout\ & (!\i_RISCV|i_Path|b[29]~15_combout\ & !\i_RISCV|i_Path|i_ALU|i1_sr|Add1~57\)) # (!\i_RISCV|i_Path|a[29]~10_combout\ & ((!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~57\) # 
-- (!\i_RISCV|i_Path|b[29]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[29]~10_combout\,
	datab => \i_RISCV|i_Path|b[29]~15_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~57\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~58_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~59\);

-- Location: LCCOMB_X24_Y12_N26
\i_RISCV|i_Path|i_ALU|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|Mux2~0_combout\ = (!\i_RISCV|i_Control|Selector16~0_combout\ & ((\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~58_combout\)) # (!\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & 
-- ((\i_RISCV|i_Path|i_ALU|i1_sr|Add1~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~58_combout\,
	datab => \i_RISCV|i_Path|i_ALU|Mux0~0_combout\,
	datac => \i_RISCV|i_Control|Selector16~0_combout\,
	datad => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~58_combout\,
	combout => \i_RISCV|i_Path|i_ALU|Mux2~0_combout\);

-- Location: LCFF_X24_Y12_N27
\i_RISCV|i_Path|alur_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ALU|Mux2~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|alur_out\(29));

-- Location: LCCOMB_X24_Y12_N8
\i_RISCV|i_Path|pc_in[29]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|pc_in[29]~8_combout\ = (\i_RISCV|i_Control|estado_act.SalCond~regout\ & (((\i_RISCV|i_Path|alur_out\(29))))) # (!\i_RISCV|i_Control|estado_act.SalCond~regout\ & (\i_RISCV|i_Control|estado_act.Reset~regout\ & 
-- ((\i_RISCV|i_Path|i_ALU|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Reset~regout\,
	datab => \i_RISCV|i_Path|alur_out\(29),
	datac => \i_RISCV|i_Control|estado_act.SalCond~regout\,
	datad => \i_RISCV|i_Path|i_ALU|Mux2~0_combout\,
	combout => \i_RISCV|i_Path|pc_in[29]~8_combout\);

-- Location: LCFF_X24_Y12_N9
\i_RISCV|i_Path|pc_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|pc_in[29]~8_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_out\(29));

-- Location: LCFF_X21_Y12_N23
\i_RISCV|i_Path|i_BancoReg|reg[5][29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux2~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[5][29]~regout\);

-- Location: LCFF_X21_Y12_N1
\i_RISCV|i_Path|i_BancoReg|reg[1][29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux2~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[1][29]~regout\);

-- Location: LCFF_X20_Y12_N17
\i_RISCV|i_Path|pc_ir[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|pc_out\(29),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_ir\(29));

-- Location: LCCOMB_X20_Y12_N16
\i_RISCV|i_Path|a[29]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[29]~8_combout\ = (\i_RISCV|i_Control|estado_act.auipc3~regout\ & (((\i_RISCV|i_Path|pc_ir\(29))))) # (!\i_RISCV|i_Control|estado_act.auipc3~regout\ & ((\i_RISCV|i_Control|estado_act.Decod~regout\ & ((\i_RISCV|i_Path|pc_ir\(29)))) # 
-- (!\i_RISCV|i_Control|estado_act.Decod~regout\ & (\i_RISCV|i_Path|ir_out_m\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.auipc3~regout\,
	datab => \i_RISCV|i_Path|ir_out_m\(17),
	datac => \i_RISCV|i_Path|pc_ir\(29),
	datad => \i_RISCV|i_Control|estado_act.Decod~regout\,
	combout => \i_RISCV|i_Path|a[29]~8_combout\);

-- Location: LCCOMB_X21_Y12_N0
\i_RISCV|i_Path|a[29]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[29]~9_combout\ = (\i_RISCV|i_Path|a[14]~1_combout\ & ((\i_RISCV|i_Path|a[29]~8_combout\ & (\i_RISCV|i_Path|i_BancoReg|reg[5][29]~regout\)) # (!\i_RISCV|i_Path|a[29]~8_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[1][29]~regout\))))) # 
-- (!\i_RISCV|i_Path|a[14]~1_combout\ & (((\i_RISCV|i_Path|a[29]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[14]~1_combout\,
	datab => \i_RISCV|i_Path|i_BancoReg|reg[5][29]~regout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[1][29]~regout\,
	datad => \i_RISCV|i_Path|a[29]~8_combout\,
	combout => \i_RISCV|i_Path|a[29]~9_combout\);

-- Location: LCCOMB_X21_Y12_N8
\i_RISCV|i_Path|a[29]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[29]~10_combout\ = (\i_RISCV|i_Control|estado_act.Fetch~regout\ & (\i_RISCV|i_Path|pc_out\(29))) # (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & ((\i_RISCV|i_Path|a[29]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datab => \i_RISCV|i_Path|pc_out\(29),
	datad => \i_RISCV|i_Path|a[29]~9_combout\,
	combout => \i_RISCV|i_Path|a[29]~10_combout\);

-- Location: LCCOMB_X25_Y12_N24
\i_RISCV|i_Path|sal_and~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|sal_and~15_combout\ = (\i_RISCV|i_Path|b[29]~15_combout\ & (\i_RISCV|i_Path|a[29]~10_combout\ & (\i_RISCV|i_Path|a[28]~13_combout\ $ (!\i_RISCV|i_Path|b[28]~18_combout\)))) # (!\i_RISCV|i_Path|b[29]~15_combout\ & 
-- (!\i_RISCV|i_Path|a[29]~10_combout\ & (\i_RISCV|i_Path|a[28]~13_combout\ $ (!\i_RISCV|i_Path|b[28]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[29]~15_combout\,
	datab => \i_RISCV|i_Path|a[28]~13_combout\,
	datac => \i_RISCV|i_Path|a[29]~10_combout\,
	datad => \i_RISCV|i_Path|b[28]~18_combout\,
	combout => \i_RISCV|i_Path|sal_and~15_combout\);

-- Location: LCCOMB_X25_Y12_N2
\i_RISCV|i_Path|sal_and~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|sal_and~16_combout\ = (\i_RISCV|i_Control|estado_act.SalCond~regout\ & (\i_RISCV|i_Path|a[2]~92_combout\ $ (!\i_RISCV|i_Path|b[2]~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RISCV|i_Control|estado_act.SalCond~regout\,
	datac => \i_RISCV|i_Path|a[2]~92_combout\,
	datad => \i_RISCV|i_Path|b[2]~90_combout\,
	combout => \i_RISCV|i_Path|sal_and~16_combout\);

-- Location: LCCOMB_X25_Y12_N12
\i_RISCV|i_Path|sal_and~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|sal_and~17_combout\ = (\i_RISCV|i_Path|sal_and~15_combout\ & (\i_RISCV|i_Path|sal_and~16_combout\ & (\i_RISCV|i_Path|b[4]~85_combout\ $ (!\i_RISCV|i_Path|a[4]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[4]~85_combout\,
	datab => \i_RISCV|i_Path|a[4]~86_combout\,
	datac => \i_RISCV|i_Path|sal_and~15_combout\,
	datad => \i_RISCV|i_Path|sal_and~16_combout\,
	combout => \i_RISCV|i_Path|sal_and~17_combout\);

-- Location: LCCOMB_X25_Y15_N6
\i_RISCV|i_Path|sal_and~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|sal_and~18_combout\ = (\i_RISCV|i_Path|sal_and~4_combout\ & (\i_RISCV|i_Path|sal_and~9_combout\ & (\i_RISCV|i_Path|sal_and~14_combout\ & \i_RISCV|i_Path|sal_and~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|sal_and~4_combout\,
	datab => \i_RISCV|i_Path|sal_and~9_combout\,
	datac => \i_RISCV|i_Path|sal_and~14_combout\,
	datad => \i_RISCV|i_Path|sal_and~17_combout\,
	combout => \i_RISCV|i_Path|sal_and~18_combout\);

-- Location: LCCOMB_X25_Y15_N0
\i_RISCV|i_Path|en_pc\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|en_pc~combout\ = (\i_RISCV|i_Path|en_pc~0_combout\) # ((\i_RISCV|i_Path|sal_and~20_combout\ & (\i_RISCV|i_Path|sal_and~3_combout\ & \i_RISCV|i_Path|sal_and~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|sal_and~20_combout\,
	datab => \i_RISCV|i_Path|en_pc~0_combout\,
	datac => \i_RISCV|i_Path|sal_and~3_combout\,
	datad => \i_RISCV|i_Path|sal_and~18_combout\,
	combout => \i_RISCV|i_Path|en_pc~combout\);

-- Location: LCFF_X25_Y11_N15
\i_RISCV|i_Path|i_ROM|data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ROM|memory~8_combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_ROM|data\(5));

-- Location: LCFF_X22_Y15_N21
\i_RISCV|i_Path|ir_out_m[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|i_ROM|data\(5),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|ir_out_m\(5));

-- Location: LCCOMB_X21_Y16_N22
\i_RISCV|i_Control|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Control|Selector5~0_combout\ = (!\i_RISCV|i_Path|ir_out_m\(10) & (\i_RISCV|i_Path|ir_out_m\(4) & (\i_RISCV|i_Control|estado_act.Decod~regout\ & !\i_RISCV|i_Path|ir_out_m\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|ir_out_m\(10),
	datab => \i_RISCV|i_Path|ir_out_m\(4),
	datac => \i_RISCV|i_Control|estado_act.Decod~regout\,
	datad => \i_RISCV|i_Path|ir_out_m\(5),
	combout => \i_RISCV|i_Control|Selector5~0_combout\);

-- Location: LCCOMB_X22_Y15_N14
\i_RISCV|i_Control|Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Control|Selector5~1_combout\ = (\i_RISCV|i_Path|ir_out_m\(2) & \i_RISCV|i_Control|Selector5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_RISCV|i_Path|ir_out_m\(2),
	datad => \i_RISCV|i_Control|Selector5~0_combout\,
	combout => \i_RISCV|i_Control|Selector5~1_combout\);

-- Location: LCFF_X22_Y15_N15
\i_RISCV|i_Control|estado_act.auipc3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Control|Selector5~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Control|estado_act.auipc3~regout\);

-- Location: LCCOMB_X22_Y15_N12
\i_RISCV|i_Control|WideOr9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Control|WideOr9~0_combout\ = (!\i_RISCV|i_Control|estado_act.Decod~regout\ & (!\i_RISCV|i_Control|estado_act.Inm3~regout\ & (!\i_RISCV|i_Control|estado_act.auipc3~regout\ & !\i_RISCV|i_Control|estado_act.lwsw3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Decod~regout\,
	datab => \i_RISCV|i_Control|estado_act.Inm3~regout\,
	datac => \i_RISCV|i_Control|estado_act.auipc3~regout\,
	datad => \i_RISCV|i_Control|estado_act.lwsw3~regout\,
	combout => \i_RISCV|i_Control|WideOr9~0_combout\);

-- Location: LCCOMB_X23_Y16_N4
\i_RISCV|i_Control|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Control|WideOr1~0_combout\ = (!\i_RISCV|i_Control|estado_act.Arit3~regout\ & (!\i_RISCV|i_Control|estado_act.lw4~regout\ & (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & \i_RISCV|i_Control|WideOr9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Arit3~regout\,
	datab => \i_RISCV|i_Control|estado_act.lw4~regout\,
	datac => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datad => \i_RISCV|i_Control|WideOr9~0_combout\,
	combout => \i_RISCV|i_Control|WideOr1~0_combout\);

-- Location: LCFF_X24_Y14_N25
\i_RISCV|i_Control|estado_act.Fetch\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Control|WideOr1~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Control|estado_act.Fetch~regout\);

-- Location: LCCOMB_X22_Y14_N24
\i_RISCV|i_Path|b[4]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[4]~85_combout\ = (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & ((\i_RISCV|i_Path|b[4]~95_combout\) # ((\i_RISCV|i_Path|i_BancoReg|reg[6][4]~regout\ & \i_RISCV|i_Path|b[26]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[4]~95_combout\,
	datab => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[6][4]~regout\,
	datad => \i_RISCV|i_Path|b[26]~4_combout\,
	combout => \i_RISCV|i_Path|b[4]~85_combout\);

-- Location: LCCOMB_X25_Y11_N0
\i_RISCV|i_Path|i_ALU|Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|Mux27~0_combout\ = (!\i_RISCV|i_Control|Selector16~0_combout\ & ((\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~8_combout\)) # (!\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & 
-- ((\i_RISCV|i_Path|i_ALU|i1_sr|Add1~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_ALU|Mux0~0_combout\,
	datab => \i_RISCV|i_Control|Selector16~0_combout\,
	datac => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~8_combout\,
	datad => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~8_combout\,
	combout => \i_RISCV|i_Path|i_ALU|Mux27~0_combout\);

-- Location: LCFF_X25_Y11_N1
\i_RISCV|i_Path|alur_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ALU|Mux27~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|alur_out\(4));

-- Location: LCCOMB_X25_Y11_N22
\i_RISCV|i_Path|pc_in[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|pc_in[4]~2_combout\ = (\i_RISCV|i_Control|estado_act.SalCond~regout\ & (((\i_RISCV|i_Path|alur_out\(4))))) # (!\i_RISCV|i_Control|estado_act.SalCond~regout\ & (\i_RISCV|i_Control|estado_act.Reset~regout\ & 
-- ((\i_RISCV|i_Path|i_ALU|Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Reset~regout\,
	datab => \i_RISCV|i_Path|alur_out\(4),
	datac => \i_RISCV|i_Control|estado_act.SalCond~regout\,
	datad => \i_RISCV|i_Path|i_ALU|Mux27~0_combout\,
	combout => \i_RISCV|i_Path|pc_in[4]~2_combout\);

-- Location: LCCOMB_X25_Y11_N28
\i_RISCV|i_Path|i_ROM|memory~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ROM|memory~10_combout\ = (!\i_RISCV|i_Path|pc_in[5]~4_combout\ & (!\i_RISCV|i_Path|pc_in[4]~2_combout\ & (\i_RISCV|i_Path|pc_in[3]~5_combout\ $ (!\i_RISCV|i_Path|pc_in[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|pc_in[3]~5_combout\,
	datab => \i_RISCV|i_Path|pc_in[2]~3_combout\,
	datac => \i_RISCV|i_Path|pc_in[5]~4_combout\,
	datad => \i_RISCV|i_Path|pc_in[4]~2_combout\,
	combout => \i_RISCV|i_Path|i_ROM|memory~10_combout\);

-- Location: LCFF_X25_Y11_N29
\i_RISCV|i_Path|i_ROM|data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ROM|memory~10_combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_ROM|data\(2));

-- Location: LCFF_X22_Y15_N7
\i_RISCV|i_Path|ir_out_m[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|i_ROM|data\(2),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|ir_out_m\(2));

-- Location: LCCOMB_X22_Y15_N30
\i_RISCV|i_Control|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Control|Selector12~0_combout\ = (!\i_RISCV|i_Path|ir_out_m\(2) & \i_RISCV|i_Control|Selector5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_RISCV|i_Path|ir_out_m\(2),
	datad => \i_RISCV|i_Control|Selector5~0_combout\,
	combout => \i_RISCV|i_Control|Selector12~0_combout\);

-- Location: LCFF_X22_Y15_N31
\i_RISCV|i_Control|estado_act.Inm3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Control|Selector12~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Control|estado_act.Inm3~regout\);

-- Location: LCCOMB_X23_Y16_N22
\i_RISCV|i_Control|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Control|Selector16~0_combout\ = (\i_RISCV|i_Control|estado_act.SalCond~regout\) # ((\i_RISCV|i_Path|ir_out_m\(13) & ((\i_RISCV|i_Control|estado_act.Arit3~regout\) # (\i_RISCV|i_Control|estado_act.Inm3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Arit3~regout\,
	datab => \i_RISCV|i_Control|estado_act.Inm3~regout\,
	datac => \i_RISCV|i_Control|estado_act.SalCond~regout\,
	datad => \i_RISCV|i_Path|ir_out_m\(13),
	combout => \i_RISCV|i_Control|Selector16~0_combout\);

-- Location: LCCOMB_X24_Y11_N6
\i_RISCV|i_Path|pc_in[31]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|pc_in[31]~6_combout\ = (\i_RISCV|i_Control|estado_act.SalCond~regout\ & (((\i_RISCV|i_Path|alur_out\(31))))) # (!\i_RISCV|i_Control|estado_act.SalCond~regout\ & (\i_RISCV|i_Control|estado_act.Reset~regout\ & 
-- ((\i_RISCV|i_Path|i_ALU|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Reset~regout\,
	datab => \i_RISCV|i_Control|estado_act.SalCond~regout\,
	datac => \i_RISCV|i_Path|alur_out\(31),
	datad => \i_RISCV|i_Path|i_ALU|Mux0~1_combout\,
	combout => \i_RISCV|i_Path|pc_in[31]~6_combout\);

-- Location: LCFF_X24_Y11_N7
\i_RISCV|i_Path|pc_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|pc_in[31]~6_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_out\(31));

-- Location: LCFF_X22_Y16_N29
\i_RISCV|i_Path|pc_ir[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|pc_out\(31),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_ir\(31));

-- Location: LCCOMB_X22_Y16_N28
\i_RISCV|i_Path|a[31]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[31]~2_combout\ = (\i_RISCV|i_Control|estado_act.Decod~regout\ & (((\i_RISCV|i_Path|pc_ir\(31))))) # (!\i_RISCV|i_Control|estado_act.Decod~regout\ & ((\i_RISCV|i_Control|estado_act.auipc3~regout\ & ((\i_RISCV|i_Path|pc_ir\(31)))) # 
-- (!\i_RISCV|i_Control|estado_act.auipc3~regout\ & (\i_RISCV|i_Path|ir_out_m\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|ir_out_m\(17),
	datab => \i_RISCV|i_Control|estado_act.Decod~regout\,
	datac => \i_RISCV|i_Path|pc_ir\(31),
	datad => \i_RISCV|i_Control|estado_act.auipc3~regout\,
	combout => \i_RISCV|i_Path|a[31]~2_combout\);

-- Location: LCCOMB_X25_Y16_N24
\i_RISCV|i_Path|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux0~0_combout\ = (\i_RISCV|i_Control|estado_act.lui3~regout\ & (\i_RISCV|i_Path|ir_out_m\(31))) # (!\i_RISCV|i_Control|estado_act.lui3~regout\ & (((\i_RISCV|i_Path|alur_out\(31) & !\i_RISCV|i_Control|estado_act.lw5~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|ir_out_m\(31),
	datab => \i_RISCV|i_Path|alur_out\(31),
	datac => \i_RISCV|i_Control|estado_act.lw5~regout\,
	datad => \i_RISCV|i_Control|estado_act.lui3~regout\,
	combout => \i_RISCV|i_Path|Mux0~0_combout\);

-- Location: LCCOMB_X25_Y16_N8
\i_RISCV|i_Path|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux0~1_combout\ = (\i_RISCV|i_Control|estado_act.Jalr~regout\ & ((\i_RISCV|i_Path|pc_out\(31)))) # (!\i_RISCV|i_Control|estado_act.Jalr~regout\ & (\i_RISCV|i_Path|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Jalr~regout\,
	datab => \i_RISCV|i_Path|Mux0~0_combout\,
	datad => \i_RISCV|i_Path|pc_out\(31),
	combout => \i_RISCV|i_Path|Mux0~1_combout\);

-- Location: LCFF_X22_Y12_N7
\i_RISCV|i_Path|i_BancoReg|reg[5][31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux0~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[5][31]~regout\);

-- Location: LCCOMB_X22_Y12_N6
\i_RISCV|i_Path|a[31]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[31]~3_combout\ = (\i_RISCV|i_Path|a[31]~2_combout\ & (((\i_RISCV|i_Path|i_BancoReg|reg[5][31]~regout\) # (!\i_RISCV|i_Path|a[14]~1_combout\)))) # (!\i_RISCV|i_Path|a[31]~2_combout\ & (\i_RISCV|i_Path|i_BancoReg|reg[1][31]~regout\ & 
-- ((\i_RISCV|i_Path|a[14]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_BancoReg|reg[1][31]~regout\,
	datab => \i_RISCV|i_Path|a[31]~2_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[5][31]~regout\,
	datad => \i_RISCV|i_Path|a[14]~1_combout\,
	combout => \i_RISCV|i_Path|a[31]~3_combout\);

-- Location: LCCOMB_X22_Y12_N24
\i_RISCV|i_Path|a[31]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|a[31]~4_combout\ = (\i_RISCV|i_Control|estado_act.Fetch~regout\ & (\i_RISCV|i_Path|pc_out\(31))) # (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & ((\i_RISCV|i_Path|a[31]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datab => \i_RISCV|i_Path|pc_out\(31),
	datad => \i_RISCV|i_Path|a[31]~3_combout\,
	combout => \i_RISCV|i_Path|a[31]~4_combout\);

-- Location: LCCOMB_X25_Y13_N28
\i_RISCV|i_Path|i_ALU|i1_sr|Add1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~60_combout\ = ((\i_RISCV|i_Path|a[30]~7_combout\ $ (\i_RISCV|i_Path|b[30]~12_combout\ $ (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~59\)))) # (GND)
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~61\ = CARRY((\i_RISCV|i_Path|a[30]~7_combout\ & ((\i_RISCV|i_Path|b[30]~12_combout\) # (!\i_RISCV|i_Path|i_ALU|i1_sr|Add1~59\))) # (!\i_RISCV|i_Path|a[30]~7_combout\ & (\i_RISCV|i_Path|b[30]~12_combout\ & 
-- !\i_RISCV|i_Path|i_ALU|i1_sr|Add1~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[30]~7_combout\,
	datab => \i_RISCV|i_Path|b[30]~12_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~59\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~60_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~61\);

-- Location: LCCOMB_X23_Y12_N12
\i_RISCV|i_Path|i_ALU|i1_sr|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~60_combout\ = ((\i_RISCV|i_Path|a[30]~7_combout\ $ (\i_RISCV|i_Path|b[30]~12_combout\ $ (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~59\)))) # (GND)
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~61\ = CARRY((\i_RISCV|i_Path|a[30]~7_combout\ & ((!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~59\) # (!\i_RISCV|i_Path|b[30]~12_combout\))) # (!\i_RISCV|i_Path|a[30]~7_combout\ & (!\i_RISCV|i_Path|b[30]~12_combout\ & 
-- !\i_RISCV|i_Path|i_ALU|i1_sr|Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|a[30]~7_combout\,
	datab => \i_RISCV|i_Path|b[30]~12_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~59\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~60_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~61\);

-- Location: LCCOMB_X24_Y12_N30
\i_RISCV|i_Path|i_ALU|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|Mux1~0_combout\ = (!\i_RISCV|i_Control|Selector16~0_combout\ & ((\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & ((\i_RISCV|i_Path|i_ALU|i1_sr|Add0~60_combout\))) # (!\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & 
-- (\i_RISCV|i_Path|i_ALU|i1_sr|Add1~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|Selector16~0_combout\,
	datab => \i_RISCV|i_Path|i_ALU|Mux0~0_combout\,
	datac => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~60_combout\,
	datad => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~60_combout\,
	combout => \i_RISCV|i_Path|i_ALU|Mux1~0_combout\);

-- Location: LCFF_X24_Y12_N31
\i_RISCV|i_Path|alur_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ALU|Mux1~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|alur_out\(30));

-- Location: LCCOMB_X24_Y12_N20
\i_RISCV|i_Path|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux1~0_combout\ = (\i_RISCV|i_Control|estado_act.lui3~regout\ & (\i_RISCV|i_Path|ir_out_m\(10))) # (!\i_RISCV|i_Control|estado_act.lui3~regout\ & (((\i_RISCV|i_Path|alur_out\(30) & !\i_RISCV|i_Control|estado_act.lw5~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.lui3~regout\,
	datab => \i_RISCV|i_Path|ir_out_m\(10),
	datac => \i_RISCV|i_Path|alur_out\(30),
	datad => \i_RISCV|i_Control|estado_act.lw5~regout\,
	combout => \i_RISCV|i_Path|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y12_N20
\i_RISCV|i_Path|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux1~1_combout\ = (\i_RISCV|i_Control|estado_act.Jalr~regout\ & (\i_RISCV|i_Path|pc_out\(30))) # (!\i_RISCV|i_Control|estado_act.Jalr~regout\ & ((\i_RISCV|i_Path|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|pc_out\(30),
	datab => \i_RISCV|i_Path|Mux1~0_combout\,
	datad => \i_RISCV|i_Control|estado_act.Jalr~regout\,
	combout => \i_RISCV|i_Path|Mux1~1_combout\);

-- Location: LCFF_X26_Y15_N19
\i_RISCV|i_Path|i_BancoReg|reg[4][30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux1~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[4][30]~regout\);

-- Location: LCFF_X26_Y15_N29
\i_RISCV|i_Path|i_BancoReg|reg[2][30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux1~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[2][30]~regout\);

-- Location: LCCOMB_X26_Y15_N28
\i_RISCV|i_Path|b[30]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[30]~10_combout\ = (\i_RISCV|i_Path|b[26]~6_combout\ & ((\i_RISCV|i_Path|i_genInm|inm[25]~0_combout\) # ((!\i_RISCV|i_Path|b[26]~5_combout\)))) # (!\i_RISCV|i_Path|b[26]~6_combout\ & (((\i_RISCV|i_Path|i_BancoReg|reg[2][30]~regout\ & 
-- \i_RISCV|i_Path|b[26]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_genInm|inm[25]~0_combout\,
	datab => \i_RISCV|i_Path|b[26]~6_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[2][30]~regout\,
	datad => \i_RISCV|i_Path|b[26]~5_combout\,
	combout => \i_RISCV|i_Path|b[30]~10_combout\);

-- Location: LCCOMB_X26_Y15_N18
\i_RISCV|i_Path|b[30]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[30]~11_combout\ = (\i_RISCV|i_Path|b[26]~4_combout\ & ((\i_RISCV|i_Path|b[30]~10_combout\ & (\i_RISCV|i_Path|i_BancoReg|reg[6][30]~regout\)) # (!\i_RISCV|i_Path|b[30]~10_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[4][30]~regout\))))) # 
-- (!\i_RISCV|i_Path|b[26]~4_combout\ & (((\i_RISCV|i_Path|b[30]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_BancoReg|reg[6][30]~regout\,
	datab => \i_RISCV|i_Path|b[26]~4_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[4][30]~regout\,
	datad => \i_RISCV|i_Path|b[30]~10_combout\,
	combout => \i_RISCV|i_Path|b[30]~11_combout\);

-- Location: LCCOMB_X26_Y15_N14
\i_RISCV|i_Path|b[30]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[30]~12_combout\ = (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & \i_RISCV|i_Path|b[30]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datad => \i_RISCV|i_Path|b[30]~11_combout\,
	combout => \i_RISCV|i_Path|b[30]~12_combout\);

-- Location: LCCOMB_X23_Y12_N14
\i_RISCV|i_Path|i_ALU|i1_sr|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~62_combout\ = (\i_RISCV|i_Path|b[31]~9_combout\ & ((\i_RISCV|i_Path|a[31]~4_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~61\)) # (!\i_RISCV|i_Path|a[31]~4_combout\ & ((\i_RISCV|i_Path|i_ALU|i1_sr|Add0~61\) # (GND))))) # 
-- (!\i_RISCV|i_Path|b[31]~9_combout\ & ((\i_RISCV|i_Path|a[31]~4_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~61\ & VCC)) # (!\i_RISCV|i_Path|a[31]~4_combout\ & (!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~61\))))
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~63\ = CARRY((\i_RISCV|i_Path|b[31]~9_combout\ & ((!\i_RISCV|i_Path|i_ALU|i1_sr|Add0~61\) # (!\i_RISCV|i_Path|a[31]~4_combout\))) # (!\i_RISCV|i_Path|b[31]~9_combout\ & (!\i_RISCV|i_Path|a[31]~4_combout\ & 
-- !\i_RISCV|i_Path|i_ALU|i1_sr|Add0~61\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[31]~9_combout\,
	datab => \i_RISCV|i_Path|a[31]~4_combout\,
	datad => VCC,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~61\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~62_combout\,
	cout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~63\);

-- Location: LCFF_X26_Y15_N5
\i_RISCV|i_Path|i_BancoReg|reg[4][31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux0~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[4][31]~regout\);

-- Location: LCFF_X26_Y15_N23
\i_RISCV|i_Path|i_BancoReg|reg[2][31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux0~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[2][31]~regout\);

-- Location: LCCOMB_X26_Y15_N22
\i_RISCV|i_Path|b[31]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[31]~7_combout\ = (\i_RISCV|i_Path|b[26]~6_combout\ & ((\i_RISCV|i_Path|ir_out_m\(31)) # ((!\i_RISCV|i_Path|b[26]~5_combout\)))) # (!\i_RISCV|i_Path|b[26]~6_combout\ & (((\i_RISCV|i_Path|i_BancoReg|reg[2][31]~regout\ & 
-- \i_RISCV|i_Path|b[26]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|ir_out_m\(31),
	datab => \i_RISCV|i_Path|b[26]~6_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[2][31]~regout\,
	datad => \i_RISCV|i_Path|b[26]~5_combout\,
	combout => \i_RISCV|i_Path|b[31]~7_combout\);

-- Location: LCCOMB_X26_Y15_N4
\i_RISCV|i_Path|b[31]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[31]~8_combout\ = (\i_RISCV|i_Path|b[26]~4_combout\ & ((\i_RISCV|i_Path|b[31]~7_combout\ & (\i_RISCV|i_Path|i_BancoReg|reg[6][31]~regout\)) # (!\i_RISCV|i_Path|b[31]~7_combout\ & ((\i_RISCV|i_Path|i_BancoReg|reg[4][31]~regout\))))) # 
-- (!\i_RISCV|i_Path|b[26]~4_combout\ & (((\i_RISCV|i_Path|b[31]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_BancoReg|reg[6][31]~regout\,
	datab => \i_RISCV|i_Path|b[26]~4_combout\,
	datac => \i_RISCV|i_Path|i_BancoReg|reg[4][31]~regout\,
	datad => \i_RISCV|i_Path|b[31]~7_combout\,
	combout => \i_RISCV|i_Path|b[31]~8_combout\);

-- Location: LCCOMB_X26_Y15_N20
\i_RISCV|i_Path|b[31]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[31]~9_combout\ = (\i_RISCV|i_Path|b[31]~8_combout\ & !\i_RISCV|i_Control|estado_act.Fetch~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_RISCV|i_Path|b[31]~8_combout\,
	datad => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	combout => \i_RISCV|i_Path|b[31]~9_combout\);

-- Location: LCCOMB_X25_Y13_N30
\i_RISCV|i_Path|i_ALU|i1_sr|Add1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add1~62_combout\ = \i_RISCV|i_Path|a[31]~4_combout\ $ (\i_RISCV|i_Path|i_ALU|i1_sr|Add1~61\ $ (\i_RISCV|i_Path|b[31]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_RISCV|i_Path|a[31]~4_combout\,
	datad => \i_RISCV|i_Path|b[31]~9_combout\,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~61\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~62_combout\);

-- Location: LCCOMB_X24_Y11_N28
\i_RISCV|i_Path|i_ALU|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|Mux0~1_combout\ = (!\i_RISCV|i_Control|Selector16~0_combout\ & ((\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~62_combout\)) # (!\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & 
-- ((\i_RISCV|i_Path|i_ALU|i1_sr|Add1~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_ALU|Mux0~0_combout\,
	datab => \i_RISCV|i_Control|Selector16~0_combout\,
	datac => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~62_combout\,
	datad => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~62_combout\,
	combout => \i_RISCV|i_Path|i_ALU|Mux0~1_combout\);

-- Location: LCFF_X24_Y11_N29
\i_RISCV|i_Path|alur_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ALU|Mux0~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|alur_out\(31));

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_pins[5]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_in_pins(5),
	combout => \in_pins~combout\(5));

-- Location: LCCOMB_X26_Y12_N24
\mid_PEP[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mid_PEP[5]~feeder_combout\ = \in_pins~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_pins~combout\(5),
	combout => \mid_PEP[5]~feeder_combout\);

-- Location: LCFF_X26_Y12_N25
\mid_PEP[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \mid_PEP[5]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mid_PEP(5));

-- Location: LCFF_X26_Y12_N15
\dout_PEP[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => mid_PEP(5),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dout_PEP(5));

-- Location: LCCOMB_X26_Y12_N14
\i_RISCV|i_Path|Mux26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux26~0_combout\ = (\i_RISCV|i_Path|Mux24~0_combout\ & (((\i_RISCV|i_Path|Mux24~1_combout\)))) # (!\i_RISCV|i_Path|Mux24~0_combout\ & ((\i_RISCV|i_Path|Mux24~1_combout\ & ((dout_PEP(5)))) # (!\i_RISCV|i_Path|Mux24~1_combout\ & 
-- (\i_RISCV|i_Path|alur_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|alur_out\(5),
	datab => \i_RISCV|i_Path|Mux24~0_combout\,
	datac => dout_PEP(5),
	datad => \i_RISCV|i_Path|Mux24~1_combout\,
	combout => \i_RISCV|i_Path|Mux26~0_combout\);

-- Location: LCCOMB_X26_Y12_N4
\i_RISCV|i_Path|Mux26~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux26~1_combout\ = (\i_RISCV|i_Path|Mux26~0_combout\ & ((dout_PSP(5)) # ((!\i_RISCV|i_Path|Mux24~0_combout\)))) # (!\i_RISCV|i_Path|Mux26~0_combout\ & (((\i_RISCV|i_Path|pc_out\(5) & \i_RISCV|i_Path|Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dout_PSP(5),
	datab => \i_RISCV|i_Path|pc_out\(5),
	datac => \i_RISCV|i_Path|Mux26~0_combout\,
	datad => \i_RISCV|i_Path|Mux24~0_combout\,
	combout => \i_RISCV|i_Path|Mux26~1_combout\);

-- Location: LCCOMB_X23_Y16_N10
\i_RISCV|i_Path|Mux26~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux26~2_combout\ = (!\i_RISCV|i_Control|estado_act.lui3~regout\ & (\i_RISCV|i_Path|Mux26~1_combout\ & ((\i_RISCV|i_Path|alur_out\(31)) # (!\i_RISCV|i_Path|Mux24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.lui3~regout\,
	datab => \i_RISCV|i_Path|Mux24~1_combout\,
	datac => \i_RISCV|i_Path|alur_out\(31),
	datad => \i_RISCV|i_Path|Mux26~1_combout\,
	combout => \i_RISCV|i_Path|Mux26~2_combout\);

-- Location: LCFF_X23_Y16_N21
\i_RISCV|i_Path|i_BancoReg|reg[6][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux26~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[6][5]~regout\);

-- Location: LCCOMB_X22_Y14_N12
\i_RISCV|i_Path|b[5]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|b[5]~84_combout\ = (\i_RISCV|i_Path|b[5]~79_combout\ & ((\i_RISCV|i_Path|b[7]~80_combout\) # ((\i_RISCV|i_Path|i_BancoReg|reg[6][5]~regout\ & \i_RISCV|i_Path|b[7]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|b[7]~80_combout\,
	datab => \i_RISCV|i_Path|i_BancoReg|reg[6][5]~regout\,
	datac => \i_RISCV|i_Path|b[7]~81_combout\,
	datad => \i_RISCV|i_Path|b[5]~79_combout\,
	combout => \i_RISCV|i_Path|b[5]~84_combout\);

-- Location: LCCOMB_X24_Y11_N22
\i_RISCV|i_Path|i_ALU|Mux26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|Mux26~0_combout\ = (!\i_RISCV|i_Control|Selector16~0_combout\ & ((\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & ((\i_RISCV|i_Path|i_ALU|i1_sr|Add0~10_combout\))) # (!\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & 
-- (\i_RISCV|i_Path|i_ALU|i1_sr|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_ALU|Mux0~0_combout\,
	datab => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~10_combout\,
	datac => \i_RISCV|i_Control|Selector16~0_combout\,
	datad => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~10_combout\,
	combout => \i_RISCV|i_Path|i_ALU|Mux26~0_combout\);

-- Location: LCFF_X24_Y11_N23
\i_RISCV|i_Path|alur_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ALU|Mux26~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|alur_out\(5));

-- Location: LCCOMB_X25_Y11_N20
\i_RISCV|i_Path|pc_in[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|pc_in[5]~4_combout\ = (\i_RISCV|i_Control|estado_act.SalCond~regout\ & (((\i_RISCV|i_Path|alur_out\(5))))) # (!\i_RISCV|i_Control|estado_act.SalCond~regout\ & (\i_RISCV|i_Control|estado_act.Reset~regout\ & 
-- ((\i_RISCV|i_Path|i_ALU|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Reset~regout\,
	datab => \i_RISCV|i_Path|alur_out\(5),
	datac => \i_RISCV|i_Control|estado_act.SalCond~regout\,
	datad => \i_RISCV|i_Path|i_ALU|Mux26~0_combout\,
	combout => \i_RISCV|i_Path|pc_in[5]~4_combout\);

-- Location: LCCOMB_X25_Y11_N10
\i_RISCV|i_Path|i_ROM|memory~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ROM|memory~11_combout\ = (!\i_RISCV|i_Path|pc_in[5]~4_combout\ & ((\i_RISCV|i_Path|pc_in[2]~3_combout\ & ((!\i_RISCV|i_Path|pc_in[4]~2_combout\))) # (!\i_RISCV|i_Path|pc_in[2]~3_combout\ & (!\i_RISCV|i_Path|pc_in[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|pc_in[3]~5_combout\,
	datab => \i_RISCV|i_Path|pc_in[2]~3_combout\,
	datac => \i_RISCV|i_Path|pc_in[5]~4_combout\,
	datad => \i_RISCV|i_Path|pc_in[4]~2_combout\,
	combout => \i_RISCV|i_Path|i_ROM|memory~11_combout\);

-- Location: LCFF_X25_Y11_N11
\i_RISCV|i_Path|i_ROM|data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ROM|memory~11_combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_ROM|data\(4));

-- Location: LCCOMB_X23_Y12_N30
\i_RISCV|i_Path|ir_out_m[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|ir_out_m[4]~feeder_combout\ = \i_RISCV|i_Path|i_ROM|data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_RISCV|i_Path|i_ROM|data\(4),
	combout => \i_RISCV|i_Path|ir_out_m[4]~feeder_combout\);

-- Location: LCFF_X23_Y12_N31
\i_RISCV|i_Path|ir_out_m[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|ir_out_m[4]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|ir_out_m\(4));

-- Location: LCCOMB_X23_Y16_N28
\i_RISCV|i_Control|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Control|Selector6~0_combout\ = (\i_RISCV|i_Path|ir_out_m\(5) & (\i_RISCV|i_Path|ir_out_m\(4) & (!\i_RISCV|i_Path|ir_out_m\(10) & \i_RISCV|i_Control|estado_act.Decod~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|ir_out_m\(5),
	datab => \i_RISCV|i_Path|ir_out_m\(4),
	datac => \i_RISCV|i_Path|ir_out_m\(10),
	datad => \i_RISCV|i_Control|estado_act.Decod~regout\,
	combout => \i_RISCV|i_Control|Selector6~0_combout\);

-- Location: LCCOMB_X23_Y16_N6
\i_RISCV|i_Control|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Control|Selector6~1_combout\ = (\i_RISCV|i_Control|Selector6~0_combout\ & !\i_RISCV|i_Path|ir_out_m\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_RISCV|i_Control|Selector6~0_combout\,
	datad => \i_RISCV|i_Path|ir_out_m\(2),
	combout => \i_RISCV|i_Control|Selector6~1_combout\);

-- Location: LCFF_X23_Y16_N7
\i_RISCV|i_Control|estado_act.Arit3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Control|Selector6~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Control|estado_act.Arit3~regout\);

-- Location: LCCOMB_X23_Y16_N16
\i_RISCV|i_Path|i_ALU|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|Mux0~0_combout\ = (\i_RISCV|i_Path|ir_out_m\(10) & \i_RISCV|i_Control|estado_act.Arit3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_RISCV|i_Path|ir_out_m\(10),
	datad => \i_RISCV|i_Control|estado_act.Arit3~regout\,
	combout => \i_RISCV|i_Path|i_ALU|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y14_N4
\i_RISCV|i_Path|i_ALU|Mux29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|Mux29~0_combout\ = (!\i_RISCV|i_Control|Selector16~0_combout\ & ((\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~4_combout\)) # (!\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & 
-- ((\i_RISCV|i_Path|i_ALU|i1_sr|Add1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|Selector16~0_combout\,
	datab => \i_RISCV|i_Path|i_ALU|Mux0~0_combout\,
	datac => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~4_combout\,
	datad => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~4_combout\,
	combout => \i_RISCV|i_Path|i_ALU|Mux29~0_combout\);

-- Location: LCCOMB_X24_Y14_N2
\i_RISCV|i_Path|pc_in[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|pc_in[2]~3_combout\ = (\i_RISCV|i_Control|estado_act.SalCond~regout\ & (\i_RISCV|i_Path|alur_out\(2))) # (!\i_RISCV|i_Control|estado_act.SalCond~regout\ & (((\i_RISCV|i_Path|i_ALU|Mux29~0_combout\ & 
-- \i_RISCV|i_Control|estado_act.Reset~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|alur_out\(2),
	datab => \i_RISCV|i_Path|i_ALU|Mux29~0_combout\,
	datac => \i_RISCV|i_Control|estado_act.SalCond~regout\,
	datad => \i_RISCV|i_Control|estado_act.Reset~regout\,
	combout => \i_RISCV|i_Path|pc_in[2]~3_combout\);

-- Location: LCCOMB_X25_Y11_N8
\i_RISCV|i_Path|i_ROM|memory~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ROM|memory~3_combout\ = (\i_RISCV|i_Path|pc_in[3]~5_combout\ & (!\i_RISCV|i_Path|pc_in[2]~3_combout\ & (!\i_RISCV|i_Path|pc_in[5]~4_combout\ & \i_RISCV|i_Path|pc_in[4]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|pc_in[3]~5_combout\,
	datab => \i_RISCV|i_Path|pc_in[2]~3_combout\,
	datac => \i_RISCV|i_Path|pc_in[5]~4_combout\,
	datad => \i_RISCV|i_Path|pc_in[4]~2_combout\,
	combout => \i_RISCV|i_Path|i_ROM|memory~3_combout\);

-- Location: LCFF_X25_Y11_N9
\i_RISCV|i_Path|i_ROM|data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ROM|memory~3_combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_ROM|data\(6));

-- Location: LCFF_X23_Y15_N9
\i_RISCV|i_Path|ir_out_m[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|i_ROM|data\(6),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|ir_out_m\(10));

-- Location: LCCOMB_X23_Y16_N20
\i_RISCV|i_Control|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Control|Equal1~0_combout\ = (!\i_RISCV|i_Path|ir_out_m\(2) & (!\i_RISCV|i_Path|ir_out_m\(10) & !\i_RISCV|i_Path|ir_out_m\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|ir_out_m\(2),
	datab => \i_RISCV|i_Path|ir_out_m\(10),
	datad => \i_RISCV|i_Path|ir_out_m\(4),
	combout => \i_RISCV|i_Control|Equal1~0_combout\);

-- Location: LCCOMB_X23_Y16_N30
\i_RISCV|i_Control|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Control|Selector8~0_combout\ = (!\i_RISCV|i_Path|ir_out_m\(5) & (\i_RISCV|i_Control|Equal1~0_combout\ & \i_RISCV|i_Control|estado_act.lwsw3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|ir_out_m\(5),
	datac => \i_RISCV|i_Control|Equal1~0_combout\,
	datad => \i_RISCV|i_Control|estado_act.lwsw3~regout\,
	combout => \i_RISCV|i_Control|Selector8~0_combout\);

-- Location: LCFF_X23_Y16_N31
\i_RISCV|i_Control|estado_act.lw4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Control|Selector8~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Control|estado_act.lw4~regout\);

-- Location: LCFF_X25_Y16_N25
\i_RISCV|i_Control|estado_act.lw5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Control|estado_act.lw4~regout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Control|estado_act.lw5~regout\);

-- Location: LCCOMB_X25_Y16_N18
\i_RISCV|i_Path|Mux24~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux24~1_combout\ = (\i_RISCV|i_Control|estado_act.lw5~regout\ & !\i_RISCV|i_Control|estado_act.Jalr~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_RISCV|i_Control|estado_act.lw5~regout\,
	datad => \i_RISCV|i_Control|estado_act.Jalr~regout\,
	combout => \i_RISCV|i_Path|Mux24~1_combout\);

-- Location: LCCOMB_X23_Y12_N28
\i_RISCV|i_Path|i_ALU|Mux31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|Mux31~0_combout\ = (!\i_RISCV|i_Control|Selector16~0_combout\ & ((\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~0_combout\)) # (!\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & 
-- ((\i_RISCV|i_Path|i_ALU|i1_sr|Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~0_combout\,
	datab => \i_RISCV|i_Control|Selector16~0_combout\,
	datac => \i_RISCV|i_Path|i_ALU|Mux0~0_combout\,
	datad => \i_RISCV|i_Path|i_ALU|i1_sr|Add1~0_combout\,
	combout => \i_RISCV|i_Path|i_ALU|Mux31~0_combout\);

-- Location: LCCOMB_X26_Y15_N8
\i_RISCV|i_Path|i_ALU|b_ext[32]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|b_ext[32]~0_combout\ = (!\i_RISCV|i_Control|estado_act.Fetch~regout\ & (!\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & (\i_RISCV|i_Path|b[31]~8_combout\ & \i_RISCV|i_Control|Selector16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Fetch~regout\,
	datab => \i_RISCV|i_Path|i_ALU|Mux0~0_combout\,
	datac => \i_RISCV|i_Path|b[31]~8_combout\,
	datad => \i_RISCV|i_Control|Selector16~0_combout\,
	combout => \i_RISCV|i_Path|i_ALU|b_ext[32]~0_combout\);

-- Location: LCCOMB_X23_Y15_N8
\i_RISCV|i_Path|i_ALU|a_ext[32]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|a_ext[32]~2_combout\ = (\i_RISCV|i_Control|Selector16~0_combout\ & (\i_RISCV|i_Path|a[31]~4_combout\ & ((!\i_RISCV|i_Path|ir_out_m\(10)) # (!\i_RISCV|i_Control|estado_act.Arit3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Arit3~regout\,
	datab => \i_RISCV|i_Control|Selector16~0_combout\,
	datac => \i_RISCV|i_Path|ir_out_m\(10),
	datad => \i_RISCV|i_Path|a[31]~4_combout\,
	combout => \i_RISCV|i_Path|i_ALU|a_ext[32]~2_combout\);

-- Location: LCCOMB_X23_Y12_N16
\i_RISCV|i_Path|i_ALU|i1_sr|Add0~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|i1_sr|Add0~64_combout\ = \i_RISCV|i_Path|i_ALU|b_ext[32]~0_combout\ $ (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~63\ $ (\i_RISCV|i_Path|i_ALU|a_ext[32]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_RISCV|i_Path|i_ALU|b_ext[32]~0_combout\,
	datad => \i_RISCV|i_Path|i_ALU|a_ext[32]~2_combout\,
	cin => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~63\,
	combout => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~64_combout\);

-- Location: LCCOMB_X23_Y12_N22
\i_RISCV|i_Path|i_ALU|Mux31~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_ALU|Mux31~1_combout\ = (\i_RISCV|i_Path|i_ALU|Mux31~0_combout\) # ((!\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~64_combout\ & \i_RISCV|i_Control|Selector16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_ALU|Mux0~0_combout\,
	datab => \i_RISCV|i_Path|i_ALU|Mux31~0_combout\,
	datac => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~64_combout\,
	datad => \i_RISCV|i_Control|Selector16~0_combout\,
	combout => \i_RISCV|i_Path|i_ALU|Mux31~1_combout\);

-- Location: LCFF_X23_Y12_N23
\i_RISCV|i_Path|alur_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_ALU|Mux31~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|alur_out\(0));

-- Location: LCCOMB_X23_Y12_N26
\i_RISCV|i_Path|pc_in[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|pc_in[0]~0_combout\ = (\i_RISCV|i_Path|i_ALU|Mux31~0_combout\) # ((!\i_RISCV|i_Path|i_ALU|Mux0~0_combout\ & (\i_RISCV|i_Path|i_ALU|i1_sr|Add0~64_combout\ & \i_RISCV|i_Control|Selector16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_ALU|Mux0~0_combout\,
	datab => \i_RISCV|i_Path|i_ALU|Mux31~0_combout\,
	datac => \i_RISCV|i_Path|i_ALU|i1_sr|Add0~64_combout\,
	datad => \i_RISCV|i_Control|Selector16~0_combout\,
	combout => \i_RISCV|i_Path|pc_in[0]~0_combout\);

-- Location: LCCOMB_X24_Y12_N16
\i_RISCV|i_Path|pc_in[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|pc_in[0]~1_combout\ = (\i_RISCV|i_Control|estado_act.SalCond~regout\ & (((\i_RISCV|i_Path|alur_out\(0))))) # (!\i_RISCV|i_Control|estado_act.SalCond~regout\ & (\i_RISCV|i_Control|estado_act.Reset~regout\ & 
-- ((\i_RISCV|i_Path|pc_in[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Control|estado_act.Reset~regout\,
	datab => \i_RISCV|i_Path|alur_out\(0),
	datac => \i_RISCV|i_Control|estado_act.SalCond~regout\,
	datad => \i_RISCV|i_Path|pc_in[0]~0_combout\,
	combout => \i_RISCV|i_Path|pc_in[0]~1_combout\);

-- Location: LCFF_X24_Y12_N17
\i_RISCV|i_Path|pc_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|pc_in[0]~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_RISCV|i_Path|en_pc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|pc_out\(0));

-- Location: LCCOMB_X26_Y12_N20
\i_RISCV|i_Path|Mux31~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux31~1_combout\ = (\i_RISCV|i_Path|Mux31~0_combout\ & (((dout_PSP(0)) # (!\i_RISCV|i_Path|Mux24~0_combout\)))) # (!\i_RISCV|i_Path|Mux31~0_combout\ & (\i_RISCV|i_Path|pc_out\(0) & ((\i_RISCV|i_Path|Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|Mux31~0_combout\,
	datab => \i_RISCV|i_Path|pc_out\(0),
	datac => dout_PSP(0),
	datad => \i_RISCV|i_Path|Mux24~0_combout\,
	combout => \i_RISCV|i_Path|Mux31~1_combout\);

-- Location: LCCOMB_X26_Y12_N6
\i_RISCV|i_Path|Mux31~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|Mux31~2_combout\ = (\i_RISCV|i_Path|Mux31~1_combout\ & (!\i_RISCV|i_Control|estado_act.lui3~regout\ & ((\i_RISCV|i_Path|alur_out\(31)) # (!\i_RISCV|i_Path|Mux24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|alur_out\(31),
	datab => \i_RISCV|i_Path|Mux24~1_combout\,
	datac => \i_RISCV|i_Path|Mux31~1_combout\,
	datad => \i_RISCV|i_Control|estado_act.lui3~regout\,
	combout => \i_RISCV|i_Path|Mux31~2_combout\);

-- Location: LCFF_X23_Y16_N9
\i_RISCV|i_Path|i_BancoReg|reg[6][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux31~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[6][0]~regout\);

-- Location: LCCOMB_X26_Y12_N28
\i_RISCV|i_Path|i_BancoReg|Mux63~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_BancoReg|Mux63~0_combout\ = (\i_RISCV|i_Path|ir_out_m\(21) & (\i_RISCV|i_Path|i_BancoReg|reg[6][0]~regout\ & !\i_RISCV|i_Path|ir_out_m\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|ir_out_m\(21),
	datab => \i_RISCV|i_Path|i_BancoReg|reg[6][0]~regout\,
	datac => \i_RISCV|i_Path|ir_out_m\(24),
	combout => \i_RISCV|i_Path|i_BancoReg|Mux63~0_combout\);

-- Location: LCFF_X26_Y12_N29
\dout_PSP[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_BancoReg|Mux63~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \p_PSP~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dout_PSP(0));

-- Location: LCFF_X22_Y14_N15
\i_RISCV|i_Path|i_BancoReg|reg[6][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|Mux30~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_RISCV|i_Path|i_BancoReg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RISCV|i_Path|i_BancoReg|reg[6][1]~regout\);

-- Location: LCCOMB_X22_Y14_N14
\i_RISCV|i_Path|i_BancoReg|Mux62~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_BancoReg|Mux62~0_combout\ = (\i_RISCV|i_Path|ir_out_m\(21) & (\i_RISCV|i_Path|i_BancoReg|reg[6][1]~regout\ & !\i_RISCV|i_Path|ir_out_m\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|ir_out_m\(21),
	datac => \i_RISCV|i_Path|i_BancoReg|reg[6][1]~regout\,
	datad => \i_RISCV|i_Path|ir_out_m\(24),
	combout => \i_RISCV|i_Path|i_BancoReg|Mux62~0_combout\);

-- Location: LCFF_X22_Y14_N17
\dout_PSP[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_RISCV|i_Path|i_BancoReg|Mux62~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \p_PSP~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dout_PSP(1));

-- Location: LCCOMB_X26_Y12_N12
\i_RISCV|i_Path|i_BancoReg|Mux58~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RISCV|i_Path|i_BancoReg|Mux58~0_combout\ = (\i_RISCV|i_Path|i_BancoReg|reg[6][5]~regout\ & (!\i_RISCV|i_Path|ir_out_m\(24) & \i_RISCV|i_Path|ir_out_m\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RISCV|i_Path|i_BancoReg|reg[6][5]~regout\,
	datab => \i_RISCV|i_Path|ir_out_m\(24),
	datad => \i_RISCV|i_Path|ir_out_m\(21),
	combout => \i_RISCV|i_Path|i_BancoReg|Mux58~0_combout\);

-- Location: LCFF_X26_Y12_N13
\dout_PSP[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RISCV|i_Path|i_BancoReg|Mux58~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \p_PSP~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dout_PSP(5));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_pins[0]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => dout_PSP(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_pins(0));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_pins[1]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => dout_PSP(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_pins(1));

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_pins[2]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => dout_PSP(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_pins(2));

-- Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_pins[3]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => dout_PSP(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_pins(3));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_pins[4]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => dout_PSP(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_pins(4));

-- Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_pins[5]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => dout_PSP(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_pins(5));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_pins[6]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => dout_PSP(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_pins(6));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_pins[7]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => dout_PSP(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_pins(7));
END structure;


