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

-- DATE "04/13/2021 19:05:18"

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

ENTITY 	Ram IS
    PORT (
	addr : IN std_logic_vector(31 DOWNTO 0);
	din : IN std_logic_vector(31 DOWNTO 0);
	tipo_acc : IN std_logic_vector(1 DOWNTO 0);
	l_u : IN std_logic;
	we_ram : IN std_logic;
	clk : IN std_logic;
	dout : OUT std_logic_vector(31 DOWNTO 0)
	);
END Ram;

-- Design Ports Information
-- addr[12]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[13]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[14]	=>  Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[15]	=>  Location: PIN_H7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[16]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[17]	=>  Location: PIN_Y9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[18]	=>  Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[19]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[20]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[21]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[22]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[23]	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[24]	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[25]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[26]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[27]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[28]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[29]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[30]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[31]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- we_ram	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dout[0]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[1]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[2]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[3]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[4]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[5]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[6]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[7]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[8]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[9]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[10]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[11]	=>  Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[12]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[13]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[14]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[15]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[16]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[17]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[18]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[19]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[20]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[21]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[22]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[23]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[24]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[25]	=>  Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[26]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[27]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[28]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[29]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[30]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[31]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- addr[1]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[0]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tipo_acc[0]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tipo_acc[1]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- l_u	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[2]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[3]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[4]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[5]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[6]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[7]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[8]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[9]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[10]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[11]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[0]	=>  Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[1]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[2]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[3]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[4]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[5]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[6]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[7]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[16]	=>  Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[24]	=>  Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[8]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[17]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[25]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[9]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[18]	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[26]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[10]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[19]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[27]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[11]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[20]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[28]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[12]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[21]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[29]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[13]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[22]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[30]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[14]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[31]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[15]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[23]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Ram IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_addr : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_din : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_tipo_acc : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_l_u : std_logic;
SIGNAL ww_we_ram : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_dout : std_logic_vector(31 DOWNTO 0);
SIGNAL \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dout[9]~27clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_byte2|ram_block_rtl_0|auto_generated|ram_block1a0\ : std_logic;
SIGNAL \i_byte2|ram_block_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \ram1[0]~0_combout\ : std_logic;
SIGNAL \ram1[2]~2_combout\ : std_logic;
SIGNAL \ram3[2]~2_combout\ : std_logic;
SIGNAL \ram3[3]~3_combout\ : std_logic;
SIGNAL \ram3[4]~4_combout\ : std_logic;
SIGNAL \ram1[5]~5_combout\ : std_logic;
SIGNAL \ram3[5]~5_combout\ : std_logic;
SIGNAL \l_u~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \dout[9]~27_combout\ : std_logic;
SIGNAL \dout[9]~27clkctrl_outclk\ : std_logic;
SIGNAL \ram2[0]~0_combout\ : std_logic;
SIGNAL \ram3[0]~0_combout\ : std_logic;
SIGNAL \i_byte3|ram_block_rtl_0|auto_generated|ram_block1a0\ : std_logic;
SIGNAL \i_byte1|ram_block_rtl_0|auto_generated|ram_block1a0\ : std_logic;
SIGNAL \dout~24_combout\ : std_logic;
SIGNAL \dout~25_combout\ : std_logic;
SIGNAL \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \dout~28_combout\ : std_logic;
SIGNAL \dout[0]~reg0_regout\ : std_logic;
SIGNAL \dout~26_combout\ : std_logic;
SIGNAL \ram2[1]~1_combout\ : std_logic;
SIGNAL \ram1[1]~1_combout\ : std_logic;
SIGNAL \ram3[1]~1_combout\ : std_logic;
SIGNAL \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \i_byte2|ram_block_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \i_byte1|ram_block_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \i_byte3|ram_block_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \dout~29_combout\ : std_logic;
SIGNAL \dout~30_combout\ : std_logic;
SIGNAL \dout~31_combout\ : std_logic;
SIGNAL \dout[1]~reg0_regout\ : std_logic;
SIGNAL \ram2[2]~2_combout\ : std_logic;
SIGNAL \i_byte1|ram_block_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \i_byte3|ram_block_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \dout~32_combout\ : std_logic;
SIGNAL \dout~33_combout\ : std_logic;
SIGNAL \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \dout~34_combout\ : std_logic;
SIGNAL \dout[2]~reg0_regout\ : std_logic;
SIGNAL \ram1[3]~3_combout\ : std_logic;
SIGNAL \ram2[3]~3_combout\ : std_logic;
SIGNAL \i_byte2|ram_block_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \i_byte1|ram_block_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \i_byte3|ram_block_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \dout~35_combout\ : std_logic;
SIGNAL \dout~36_combout\ : std_logic;
SIGNAL \dout~37_combout\ : std_logic;
SIGNAL \dout[3]~reg0_regout\ : std_logic;
SIGNAL \ram1[4]~4_combout\ : std_logic;
SIGNAL \ram2[4]~4_combout\ : std_logic;
SIGNAL \i_byte2|ram_block_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \i_byte3|ram_block_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \i_byte1|ram_block_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \dout~38_combout\ : std_logic;
SIGNAL \dout~39_combout\ : std_logic;
SIGNAL \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \dout~40_combout\ : std_logic;
SIGNAL \dout[4]~reg0_regout\ : std_logic;
SIGNAL \ram2[5]~5_combout\ : std_logic;
SIGNAL \i_byte2|ram_block_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \i_byte3|ram_block_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \i_byte1|ram_block_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \dout~41_combout\ : std_logic;
SIGNAL \dout~42_combout\ : std_logic;
SIGNAL \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \dout~43_combout\ : std_logic;
SIGNAL \dout[5]~reg0_regout\ : std_logic;
SIGNAL \ram1[6]~6_combout\ : std_logic;
SIGNAL \ram2[6]~6_combout\ : std_logic;
SIGNAL \ram3[6]~6_combout\ : std_logic;
SIGNAL \i_byte2|ram_block_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \i_byte3|ram_block_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \i_byte1|ram_block_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \dout~44_combout\ : std_logic;
SIGNAL \dout~45_combout\ : std_logic;
SIGNAL \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \dout~46_combout\ : std_logic;
SIGNAL \dout[6]~reg0_regout\ : std_logic;
SIGNAL \ram1[7]~7_combout\ : std_logic;
SIGNAL \ram2[7]~7_combout\ : std_logic;
SIGNAL \ram3[7]~7_combout\ : std_logic;
SIGNAL \i_byte2|ram_block_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \dout~49_combout\ : std_logic;
SIGNAL \dout~47_combout\ : std_logic;
SIGNAL \i_byte1|ram_block_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \i_byte3|ram_block_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \dout~48_combout\ : std_logic;
SIGNAL \dout~50_combout\ : std_logic;
SIGNAL \dout[7]~reg0_regout\ : std_logic;
SIGNAL \dout~51_combout\ : std_logic;
SIGNAL \dout[8]~0_combout\ : std_logic;
SIGNAL \dout~52_combout\ : std_logic;
SIGNAL \dout[8]~reg0_regout\ : std_logic;
SIGNAL \dout[9]~1_combout\ : std_logic;
SIGNAL \dout[9]~reg0_regout\ : std_logic;
SIGNAL \dout[10]~2_combout\ : std_logic;
SIGNAL \dout[10]~reg0_regout\ : std_logic;
SIGNAL \dout[11]~3_combout\ : std_logic;
SIGNAL \dout[11]~reg0_regout\ : std_logic;
SIGNAL \dout[12]~4_combout\ : std_logic;
SIGNAL \dout[12]~reg0_regout\ : std_logic;
SIGNAL \dout[13]~5_combout\ : std_logic;
SIGNAL \dout[13]~reg0_regout\ : std_logic;
SIGNAL \dout[14]~6_combout\ : std_logic;
SIGNAL \dout[14]~reg0_regout\ : std_logic;
SIGNAL \dout[15]~7_combout\ : std_logic;
SIGNAL \dout[15]~reg0_regout\ : std_logic;
SIGNAL \dout[16]~8_combout\ : std_logic;
SIGNAL \dout~53_combout\ : std_logic;
SIGNAL \dout[16]~reg0_regout\ : std_logic;
SIGNAL \dout[17]~9_combout\ : std_logic;
SIGNAL \dout[17]~reg0_regout\ : std_logic;
SIGNAL \dout[18]~10_combout\ : std_logic;
SIGNAL \dout[18]~reg0_regout\ : std_logic;
SIGNAL \dout[19]~11_combout\ : std_logic;
SIGNAL \dout[19]~reg0_regout\ : std_logic;
SIGNAL \dout[20]~12_combout\ : std_logic;
SIGNAL \dout[20]~reg0_regout\ : std_logic;
SIGNAL \dout[21]~13_combout\ : std_logic;
SIGNAL \dout[21]~reg0_regout\ : std_logic;
SIGNAL \dout[22]~14_combout\ : std_logic;
SIGNAL \dout[22]~reg0_regout\ : std_logic;
SIGNAL \dout[23]~15_combout\ : std_logic;
SIGNAL \dout[23]~reg0_regout\ : std_logic;
SIGNAL \dout[24]~16_combout\ : std_logic;
SIGNAL \dout[24]~reg0_regout\ : std_logic;
SIGNAL \dout[25]~17_combout\ : std_logic;
SIGNAL \dout[25]~reg0_regout\ : std_logic;
SIGNAL \dout[26]~18_combout\ : std_logic;
SIGNAL \dout[26]~reg0_regout\ : std_logic;
SIGNAL \dout[27]~19_combout\ : std_logic;
SIGNAL \dout[27]~reg0_regout\ : std_logic;
SIGNAL \dout[28]~20_combout\ : std_logic;
SIGNAL \dout[28]~reg0_regout\ : std_logic;
SIGNAL \dout[29]~21_combout\ : std_logic;
SIGNAL \dout[29]~reg0_regout\ : std_logic;
SIGNAL \dout[30]~22_combout\ : std_logic;
SIGNAL \dout[30]~reg0_regout\ : std_logic;
SIGNAL \dout[31]~23_combout\ : std_logic;
SIGNAL \dout[31]~reg0_regout\ : std_logic;
SIGNAL ram3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ram2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ram1 : std_logic_vector(7 DOWNTO 0);
SIGNAL \tipo_acc~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \din~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \addr~combout\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_addr <= addr;
ww_din <= din;
ww_tipo_acc <= tipo_acc;
ww_l_u <= l_u;
ww_we_ram <= we_ram;
ww_clk <= clk;
dout <= ww_dout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (ram3(0) & ram2(0) & ram1(0) & \din~combout\(0));

\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\addr~combout\(11) & \addr~combout\(10) & \addr~combout\(9) & \addr~combout\(8) & \addr~combout\(7) & \addr~combout\(6) & \addr~combout\(5) & \addr~combout\(4) & 
\addr~combout\(3) & \addr~combout\(2));

\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\addr~combout\(11) & \addr~combout\(10) & \addr~combout\(9) & \addr~combout\(8) & \addr~combout\(7) & \addr~combout\(6) & \addr~combout\(5) & \addr~combout\(4) & 
\addr~combout\(3) & \addr~combout\(2));

\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\i_byte1|ram_block_rtl_0|auto_generated|ram_block1a0\ <= \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\i_byte2|ram_block_rtl_0|auto_generated|ram_block1a0\ <= \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\i_byte3|ram_block_rtl_0|auto_generated|ram_block1a0\ <= \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);

\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ <= (ram3(1) & ram2(1) & ram1(1) & \din~combout\(1));

\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\addr~combout\(11) & \addr~combout\(10) & \addr~combout\(9) & \addr~combout\(8) & \addr~combout\(7) & \addr~combout\(6) & \addr~combout\(5) & \addr~combout\(4) & 
\addr~combout\(3) & \addr~combout\(2));

\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\addr~combout\(11) & \addr~combout\(10) & \addr~combout\(9) & \addr~combout\(8) & \addr~combout\(7) & \addr~combout\(6) & \addr~combout\(5) & \addr~combout\(4) & 
\addr~combout\(3) & \addr~combout\(2));

\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a1~portbdataout\ <= \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);
\i_byte1|ram_block_rtl_0|auto_generated|ram_block1a1\ <= \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(1);
\i_byte2|ram_block_rtl_0|auto_generated|ram_block1a1\ <= \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(2);
\i_byte3|ram_block_rtl_0|auto_generated|ram_block1a1\ <= \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(3);

\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ <= (ram3(2) & ram2(2) & ram1(2) & \din~combout\(2));

\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\addr~combout\(11) & \addr~combout\(10) & \addr~combout\(9) & \addr~combout\(8) & \addr~combout\(7) & \addr~combout\(6) & \addr~combout\(5) & \addr~combout\(4) & 
\addr~combout\(3) & \addr~combout\(2));

\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\addr~combout\(11) & \addr~combout\(10) & \addr~combout\(9) & \addr~combout\(8) & \addr~combout\(7) & \addr~combout\(6) & \addr~combout\(5) & \addr~combout\(4) & 
\addr~combout\(3) & \addr~combout\(2));

\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a2~portbdataout\ <= \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);
\i_byte1|ram_block_rtl_0|auto_generated|ram_block1a2\ <= \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(1);
\i_byte2|ram_block_rtl_0|auto_generated|ram_block1a2\ <= \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(2);
\i_byte3|ram_block_rtl_0|auto_generated|ram_block1a2\ <= \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(3);

\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ <= (ram3(3) & ram2(3) & ram1(3) & \din~combout\(3));

\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\addr~combout\(11) & \addr~combout\(10) & \addr~combout\(9) & \addr~combout\(8) & \addr~combout\(7) & \addr~combout\(6) & \addr~combout\(5) & \addr~combout\(4) & 
\addr~combout\(3) & \addr~combout\(2));

\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\addr~combout\(11) & \addr~combout\(10) & \addr~combout\(9) & \addr~combout\(8) & \addr~combout\(7) & \addr~combout\(6) & \addr~combout\(5) & \addr~combout\(4) & 
\addr~combout\(3) & \addr~combout\(2));

\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a3~portbdataout\ <= \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);
\i_byte1|ram_block_rtl_0|auto_generated|ram_block1a3\ <= \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(1);
\i_byte2|ram_block_rtl_0|auto_generated|ram_block1a3\ <= \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(2);
\i_byte3|ram_block_rtl_0|auto_generated|ram_block1a3\ <= \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(3);

\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ <= (ram3(4) & ram2(4) & ram1(4) & \din~combout\(4));

\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\addr~combout\(11) & \addr~combout\(10) & \addr~combout\(9) & \addr~combout\(8) & \addr~combout\(7) & \addr~combout\(6) & \addr~combout\(5) & \addr~combout\(4) & 
\addr~combout\(3) & \addr~combout\(2));

\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\addr~combout\(11) & \addr~combout\(10) & \addr~combout\(9) & \addr~combout\(8) & \addr~combout\(7) & \addr~combout\(6) & \addr~combout\(5) & \addr~combout\(4) & 
\addr~combout\(3) & \addr~combout\(2));

\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);
\i_byte1|ram_block_rtl_0|auto_generated|ram_block1a4\ <= \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(1);
\i_byte2|ram_block_rtl_0|auto_generated|ram_block1a4\ <= \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(2);
\i_byte3|ram_block_rtl_0|auto_generated|ram_block1a4\ <= \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(3);

\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ <= (ram3(5) & ram2(5) & ram1(5) & \din~combout\(5));

\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\addr~combout\(11) & \addr~combout\(10) & \addr~combout\(9) & \addr~combout\(8) & \addr~combout\(7) & \addr~combout\(6) & \addr~combout\(5) & \addr~combout\(4) & 
\addr~combout\(3) & \addr~combout\(2));

\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\addr~combout\(11) & \addr~combout\(10) & \addr~combout\(9) & \addr~combout\(8) & \addr~combout\(7) & \addr~combout\(6) & \addr~combout\(5) & \addr~combout\(4) & 
\addr~combout\(3) & \addr~combout\(2));

\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a5~portbdataout\ <= \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);
\i_byte1|ram_block_rtl_0|auto_generated|ram_block1a5\ <= \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(1);
\i_byte2|ram_block_rtl_0|auto_generated|ram_block1a5\ <= \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(2);
\i_byte3|ram_block_rtl_0|auto_generated|ram_block1a5\ <= \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(3);

\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ <= (ram3(6) & ram2(6) & ram1(6) & \din~combout\(6));

\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\addr~combout\(11) & \addr~combout\(10) & \addr~combout\(9) & \addr~combout\(8) & \addr~combout\(7) & \addr~combout\(6) & \addr~combout\(5) & \addr~combout\(4) & 
\addr~combout\(3) & \addr~combout\(2));

\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\addr~combout\(11) & \addr~combout\(10) & \addr~combout\(9) & \addr~combout\(8) & \addr~combout\(7) & \addr~combout\(6) & \addr~combout\(5) & \addr~combout\(4) & 
\addr~combout\(3) & \addr~combout\(2));

\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a6~portbdataout\ <= \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);
\i_byte1|ram_block_rtl_0|auto_generated|ram_block1a6\ <= \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(1);
\i_byte2|ram_block_rtl_0|auto_generated|ram_block1a6\ <= \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(2);
\i_byte3|ram_block_rtl_0|auto_generated|ram_block1a6\ <= \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(3);

\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ <= (ram3(7) & ram2(7) & ram1(7) & \din~combout\(7));

\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\addr~combout\(11) & \addr~combout\(10) & \addr~combout\(9) & \addr~combout\(8) & \addr~combout\(7) & \addr~combout\(6) & \addr~combout\(5) & \addr~combout\(4) & 
\addr~combout\(3) & \addr~combout\(2));

\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\addr~combout\(11) & \addr~combout\(10) & \addr~combout\(9) & \addr~combout\(8) & \addr~combout\(7) & \addr~combout\(6) & \addr~combout\(5) & \addr~combout\(4) & 
\addr~combout\(3) & \addr~combout\(2));

\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a7~portbdataout\ <= \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);
\i_byte1|ram_block_rtl_0|auto_generated|ram_block1a7\ <= \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(1);
\i_byte2|ram_block_rtl_0|auto_generated|ram_block1a7\ <= \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(2);
\i_byte3|ram_block_rtl_0|auto_generated|ram_block1a7\ <= \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(3);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\dout[9]~27clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \dout[9]~27_combout\);

-- Location: M4K_X41_Y20
\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_core:i_byte0|altsyncram:ram_block_rtl_0|altsyncram_utg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbrewe => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: M4K_X41_Y21
\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a2\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_core:i_byte0|altsyncram:ram_block_rtl_0|altsyncram_utg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbrewe => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

-- Location: M4K_X41_Y25
\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a3\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_core:i_byte0|altsyncram:ram_block_rtl_0|altsyncram_utg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbrewe => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X42_Y20_N16
\ram1[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram1[0]~0_combout\ = (\tipo_acc~combout\(0) & (((\din~combout\(8))))) # (!\tipo_acc~combout\(0) & ((\tipo_acc~combout\(1) & ((\din~combout\(8)))) # (!\tipo_acc~combout\(1) & (\din~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din~combout\(0),
	datab => \tipo_acc~combout\(0),
	datac => \din~combout\(8),
	datad => \tipo_acc~combout\(1),
	combout => \ram1[0]~0_combout\);

-- Location: LCCOMB_X42_Y21_N26
\ram1[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram1[2]~2_combout\ = (\tipo_acc~combout\(1) & (((\din~combout\(10))))) # (!\tipo_acc~combout\(1) & ((\tipo_acc~combout\(0) & ((\din~combout\(10)))) # (!\tipo_acc~combout\(0) & (\din~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(1),
	datab => \tipo_acc~combout\(0),
	datac => \din~combout\(2),
	datad => \din~combout\(10),
	combout => \ram1[2]~2_combout\);

-- Location: LCCOMB_X42_Y21_N12
\ram3[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram3[2]~2_combout\ = (\tipo_acc~combout\(1) & ((\din~combout\(26)))) # (!\tipo_acc~combout\(1) & (\ram1[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(1),
	datac => \ram1[2]~2_combout\,
	datad => \din~combout\(26),
	combout => \ram3[2]~2_combout\);

-- Location: LCCOMB_X42_Y25_N30
\ram3[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram3[3]~3_combout\ = (\tipo_acc~combout\(1) & (\din~combout\(27))) # (!\tipo_acc~combout\(1) & ((\ram1[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \din~combout\(27),
	datac => \tipo_acc~combout\(1),
	datad => \ram1[3]~3_combout\,
	combout => \ram3[3]~3_combout\);

-- Location: LCCOMB_X42_Y24_N14
\ram3[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram3[4]~4_combout\ = (\tipo_acc~combout\(1) & (\din~combout\(28))) # (!\tipo_acc~combout\(1) & ((\ram1[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \din~combout\(28),
	datac => \tipo_acc~combout\(1),
	datad => \ram1[4]~4_combout\,
	combout => \ram3[4]~4_combout\);

-- Location: LCCOMB_X42_Y26_N28
\ram1[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram1[5]~5_combout\ = (\tipo_acc~combout\(0) & (((\din~combout\(13))))) # (!\tipo_acc~combout\(0) & ((\tipo_acc~combout\(1) & ((\din~combout\(13)))) # (!\tipo_acc~combout\(1) & (\din~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(0),
	datab => \tipo_acc~combout\(1),
	datac => \din~combout\(5),
	datad => \din~combout\(13),
	combout => \ram1[5]~5_combout\);

-- Location: LCCOMB_X42_Y26_N14
\ram3[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram3[5]~5_combout\ = (\tipo_acc~combout\(1) & (\din~combout\(29))) # (!\tipo_acc~combout\(1) & ((\ram1[5]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \din~combout\(29),
	datac => \tipo_acc~combout\(1),
	datad => \ram1[5]~5_combout\,
	combout => \ram3[5]~5_combout\);

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\l_u~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_l_u,
	combout => \l_u~combout\);

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[8]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_din(8),
	combout => \din~combout\(8));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[26]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_din(26),
	combout => \din~combout\(26));

-- Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[10]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_din(10),
	combout => \din~combout\(10));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[27]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_din(27),
	combout => \din~combout\(27));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[28]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_din(28),
	combout => \din~combout\(28));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[29]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_din(29),
	combout => \din~combout\(29));

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[13]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_din(13),
	combout => \din~combout\(13));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[30]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_din(30),
	combout => \din~combout\(30));

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

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_addr(0),
	combout => \addr~combout\(0));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tipo_acc[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_tipo_acc(0),
	combout => \tipo_acc~combout\(0));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_addr(1),
	combout => \addr~combout\(1));

-- Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_din(0),
	combout => \din~combout\(0));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_addr(2),
	combout => \addr~combout\(2));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_addr(3),
	combout => \addr~combout\(3));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[4]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_addr(4),
	combout => \addr~combout\(4));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[5]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_addr(5),
	combout => \addr~combout\(5));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[6]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_addr(6),
	combout => \addr~combout\(6));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[7]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_addr(7),
	combout => \addr~combout\(7));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[8]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_addr(8),
	combout => \addr~combout\(8));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[9]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_addr(9),
	combout => \addr~combout\(9));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[10]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_addr(10),
	combout => \addr~combout\(10));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[11]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_addr(11),
	combout => \addr~combout\(11));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tipo_acc[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_tipo_acc(1),
	combout => \tipo_acc~combout\(1));

-- Location: LCCOMB_X42_Y23_N2
\dout[9]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout[9]~27_combout\ = (\tipo_acc~combout\(1) & \tipo_acc~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tipo_acc~combout\(1),
	datad => \tipo_acc~combout\(0),
	combout => \dout[9]~27_combout\);

-- Location: CLKCTRL_G10
\dout[9]~27clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \dout[9]~27clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \dout[9]~27clkctrl_outclk\);

-- Location: LCCOMB_X42_Y20_N0
\ram1[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- ram1(0) = (GLOBAL(\dout[9]~27clkctrl_outclk\) & ((ram1(0)))) # (!GLOBAL(\dout[9]~27clkctrl_outclk\) & (\ram1[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram1[0]~0_combout\,
	datab => ram1(0),
	datad => \dout[9]~27clkctrl_outclk\,
	combout => ram1(0));

-- Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[16]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_din(16),
	combout => \din~combout\(16));

-- Location: LCCOMB_X42_Y20_N22
\ram2[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram2[0]~0_combout\ = (\tipo_acc~combout\(1) & ((\din~combout\(16)))) # (!\tipo_acc~combout\(1) & (\din~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din~combout\(0),
	datab => \tipo_acc~combout\(1),
	datad => \din~combout\(16),
	combout => \ram2[0]~0_combout\);

-- Location: LCCOMB_X42_Y20_N24
\ram2[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- ram2(0) = (GLOBAL(\dout[9]~27clkctrl_outclk\) & ((ram2(0)))) # (!GLOBAL(\dout[9]~27clkctrl_outclk\) & (\ram2[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram2[0]~0_combout\,
	datac => ram2(0),
	datad => \dout[9]~27clkctrl_outclk\,
	combout => ram2(0));

-- Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[24]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_din(24),
	combout => \din~combout\(24));

-- Location: LCCOMB_X42_Y20_N2
\ram3[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram3[0]~0_combout\ = (\tipo_acc~combout\(1) & ((\din~combout\(24)))) # (!\tipo_acc~combout\(1) & (\ram1[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram1[0]~0_combout\,
	datab => \tipo_acc~combout\(1),
	datac => \din~combout\(24),
	combout => \ram3[0]~0_combout\);

-- Location: LCCOMB_X42_Y20_N6
\ram3[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- ram3(0) = (GLOBAL(\dout[9]~27clkctrl_outclk\) & (ram3(0))) # (!GLOBAL(\dout[9]~27clkctrl_outclk\) & ((\ram3[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram3(0),
	datac => \ram3[0]~0_combout\,
	datad => \dout[9]~27clkctrl_outclk\,
	combout => ram3(0));

-- Location: LCCOMB_X42_Y20_N30
\dout~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout~24_combout\ = (\addr~combout\(1) & (\i_byte3|ram_block_rtl_0|auto_generated|ram_block1a0\)) # (!\addr~combout\(1) & ((\i_byte1|ram_block_rtl_0|auto_generated|ram_block1a0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr~combout\(1),
	datac => \i_byte3|ram_block_rtl_0|auto_generated|ram_block1a0\,
	datad => \i_byte1|ram_block_rtl_0|auto_generated|ram_block1a0\,
	combout => \dout~24_combout\);

-- Location: LCCOMB_X42_Y20_N28
\dout~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout~25_combout\ = (\addr~combout\(0) & ((\tipo_acc~combout\(0) & (\i_byte2|ram_block_rtl_0|auto_generated|ram_block1a0\)) # (!\tipo_acc~combout\(0) & ((\dout~24_combout\))))) # (!\addr~combout\(0) & 
-- (\i_byte2|ram_block_rtl_0|auto_generated|ram_block1a0\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_byte2|ram_block_rtl_0|auto_generated|ram_block1a0\,
	datab => \addr~combout\(0),
	datac => \tipo_acc~combout\(0),
	datad => \dout~24_combout\,
	combout => \dout~25_combout\);

-- Location: LCCOMB_X42_Y20_N20
\dout~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout~28_combout\ = (\dout~26_combout\ & (((!\dout[9]~27_combout\ & \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\)))) # (!\dout~26_combout\ & (\dout~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dout~26_combout\,
	datab => \dout~25_combout\,
	datac => \dout[9]~27_combout\,
	datad => \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \dout~28_combout\);

-- Location: LCFF_X42_Y20_N21
\dout[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dout~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dout[0]~reg0_regout\);

-- Location: LCCOMB_X42_Y24_N18
\dout~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout~26_combout\ = (\tipo_acc~combout\(1)) # ((!\addr~combout\(1) & ((\tipo_acc~combout\(0)) # (!\addr~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \tipo_acc~combout\(1),
	datad => \tipo_acc~combout\(0),
	combout => \dout~26_combout\);

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_din(1),
	combout => \din~combout\(1));

-- Location: LCCOMB_X42_Y19_N14
\ram1[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- ram1(1) = (GLOBAL(\dout[9]~27clkctrl_outclk\) & ((ram1(1)))) # (!GLOBAL(\dout[9]~27clkctrl_outclk\) & (\ram1[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram1[1]~1_combout\,
	datac => ram1(1),
	datad => \dout[9]~27clkctrl_outclk\,
	combout => ram1(1));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[17]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_din(17),
	combout => \din~combout\(17));

-- Location: LCCOMB_X40_Y19_N28
\ram2[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram2[1]~1_combout\ = (\tipo_acc~combout\(1) & (\din~combout\(17))) # (!\tipo_acc~combout\(1) & ((\din~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(1),
	datac => \din~combout\(17),
	datad => \din~combout\(1),
	combout => \ram2[1]~1_combout\);

-- Location: LCCOMB_X40_Y19_N14
\ram2[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- ram2(1) = (GLOBAL(\dout[9]~27clkctrl_outclk\) & ((ram2(1)))) # (!GLOBAL(\dout[9]~27clkctrl_outclk\) & (\ram2[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram2[1]~1_combout\,
	datac => ram2(1),
	datad => \dout[9]~27clkctrl_outclk\,
	combout => ram2(1));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[9]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_din(9),
	combout => \din~combout\(9));

-- Location: LCCOMB_X42_Y19_N4
\ram1[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram1[1]~1_combout\ = (\tipo_acc~combout\(0) & (((\din~combout\(9))))) # (!\tipo_acc~combout\(0) & ((\tipo_acc~combout\(1) & ((\din~combout\(9)))) # (!\tipo_acc~combout\(1) & (\din~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din~combout\(1),
	datab => \tipo_acc~combout\(0),
	datac => \tipo_acc~combout\(1),
	datad => \din~combout\(9),
	combout => \ram1[1]~1_combout\);

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[25]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_din(25),
	combout => \din~combout\(25));

-- Location: LCCOMB_X42_Y19_N2
\ram3[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram3[1]~1_combout\ = (\tipo_acc~combout\(1) & ((\din~combout\(25)))) # (!\tipo_acc~combout\(1) & (\ram1[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(1),
	datac => \ram1[1]~1_combout\,
	datad => \din~combout\(25),
	combout => \ram3[1]~1_combout\);

-- Location: LCCOMB_X42_Y19_N28
\ram3[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- ram3(1) = (GLOBAL(\dout[9]~27clkctrl_outclk\) & (ram3(1))) # (!GLOBAL(\dout[9]~27clkctrl_outclk\) & ((\ram3[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ram3(1),
	datac => \ram3[1]~1_combout\,
	datad => \dout[9]~27clkctrl_outclk\,
	combout => ram3(1));

-- Location: M4K_X41_Y19
\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a1\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_core:i_byte0|altsyncram:ram_block_rtl_0|altsyncram_utg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbrewe => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X42_Y22_N18
\dout~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout~29_combout\ = (\addr~combout\(1) & ((\i_byte3|ram_block_rtl_0|auto_generated|ram_block1a1\))) # (!\addr~combout\(1) & (\i_byte1|ram_block_rtl_0|auto_generated|ram_block1a1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datac => \i_byte1|ram_block_rtl_0|auto_generated|ram_block1a1\,
	datad => \i_byte3|ram_block_rtl_0|auto_generated|ram_block1a1\,
	combout => \dout~29_combout\);

-- Location: LCCOMB_X42_Y22_N4
\dout~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout~30_combout\ = (\tipo_acc~combout\(0) & (((\i_byte2|ram_block_rtl_0|auto_generated|ram_block1a1\)))) # (!\tipo_acc~combout\(0) & ((\addr~combout\(0) & ((\dout~29_combout\))) # (!\addr~combout\(0) & 
-- (\i_byte2|ram_block_rtl_0|auto_generated|ram_block1a1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(0),
	datab => \addr~combout\(0),
	datac => \i_byte2|ram_block_rtl_0|auto_generated|ram_block1a1\,
	datad => \dout~29_combout\,
	combout => \dout~30_combout\);

-- Location: LCCOMB_X42_Y22_N6
\dout~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout~31_combout\ = (\dout~26_combout\ & (!\dout[9]~27_combout\ & (\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a1~portbdataout\))) # (!\dout~26_combout\ & (((\dout~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dout[9]~27_combout\,
	datab => \dout~26_combout\,
	datac => \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a1~portbdataout\,
	datad => \dout~30_combout\,
	combout => \dout~31_combout\);

-- Location: LCFF_X42_Y22_N7
\dout[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dout~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dout[1]~reg0_regout\);

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_din(2),
	combout => \din~combout\(2));

-- Location: LCCOMB_X42_Y21_N14
\ram1[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- ram1(2) = (GLOBAL(\dout[9]~27clkctrl_outclk\) & ((ram1(2)))) # (!GLOBAL(\dout[9]~27clkctrl_outclk\) & (\ram1[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram1[2]~2_combout\,
	datac => ram1(2),
	datad => \dout[9]~27clkctrl_outclk\,
	combout => ram1(2));

-- Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[18]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_din(18),
	combout => \din~combout\(18));

-- Location: LCCOMB_X42_Y21_N28
\ram2[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram2[2]~2_combout\ = (\tipo_acc~combout\(1) & ((\din~combout\(18)))) # (!\tipo_acc~combout\(1) & (\din~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(1),
	datac => \din~combout\(2),
	datad => \din~combout\(18),
	combout => \ram2[2]~2_combout\);

-- Location: LCCOMB_X42_Y21_N22
\ram2[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- ram2(2) = (GLOBAL(\dout[9]~27clkctrl_outclk\) & (ram2(2))) # (!GLOBAL(\dout[9]~27clkctrl_outclk\) & ((\ram2[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ram2(2),
	datac => \ram2[2]~2_combout\,
	datad => \dout[9]~27clkctrl_outclk\,
	combout => ram2(2));

-- Location: LCCOMB_X42_Y21_N16
\ram3[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- ram3(2) = (GLOBAL(\dout[9]~27clkctrl_outclk\) & ((ram3(2)))) # (!GLOBAL(\dout[9]~27clkctrl_outclk\) & (\ram3[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram3[2]~2_combout\,
	datac => ram3(2),
	datad => \dout[9]~27clkctrl_outclk\,
	combout => ram3(2));

-- Location: LCCOMB_X42_Y24_N28
\dout~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout~32_combout\ = (\addr~combout\(1) & ((\i_byte3|ram_block_rtl_0|auto_generated|ram_block1a2\))) # (!\addr~combout\(1) & (\i_byte1|ram_block_rtl_0|auto_generated|ram_block1a2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datac => \i_byte1|ram_block_rtl_0|auto_generated|ram_block1a2\,
	datad => \i_byte3|ram_block_rtl_0|auto_generated|ram_block1a2\,
	combout => \dout~32_combout\);

-- Location: LCCOMB_X42_Y24_N22
\dout~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout~33_combout\ = (\addr~combout\(0) & ((\tipo_acc~combout\(0) & (\i_byte2|ram_block_rtl_0|auto_generated|ram_block1a2\)) # (!\tipo_acc~combout\(0) & ((\dout~32_combout\))))) # (!\addr~combout\(0) & 
-- (\i_byte2|ram_block_rtl_0|auto_generated|ram_block1a2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_byte2|ram_block_rtl_0|auto_generated|ram_block1a2\,
	datab => \addr~combout\(0),
	datac => \tipo_acc~combout\(0),
	datad => \dout~32_combout\,
	combout => \dout~33_combout\);

-- Location: LCCOMB_X42_Y24_N8
\dout~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout~34_combout\ = (\dout~26_combout\ & (((!\dout[9]~27_combout\ & \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a2~portbdataout\)))) # (!\dout~26_combout\ & (\dout~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dout~26_combout\,
	datab => \dout~33_combout\,
	datac => \dout[9]~27_combout\,
	datad => \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a2~portbdataout\,
	combout => \dout~34_combout\);

-- Location: LCFF_X42_Y24_N9
\dout[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dout~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dout[2]~reg0_regout\);

-- Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_din(3),
	combout => \din~combout\(3));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[11]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_din(11),
	combout => \din~combout\(11));

-- Location: LCCOMB_X42_Y25_N12
\ram1[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram1[3]~3_combout\ = (\tipo_acc~combout\(1) & (((\din~combout\(11))))) # (!\tipo_acc~combout\(1) & ((\tipo_acc~combout\(0) & ((\din~combout\(11)))) # (!\tipo_acc~combout\(0) & (\din~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(1),
	datab => \din~combout\(3),
	datac => \tipo_acc~combout\(0),
	datad => \din~combout\(11),
	combout => \ram1[3]~3_combout\);

-- Location: LCCOMB_X42_Y25_N24
\ram1[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- ram1(3) = (GLOBAL(\dout[9]~27clkctrl_outclk\) & ((ram1(3)))) # (!GLOBAL(\dout[9]~27clkctrl_outclk\) & (\ram1[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram1[3]~3_combout\,
	datac => ram1(3),
	datad => \dout[9]~27clkctrl_outclk\,
	combout => ram1(3));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[19]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_din(19),
	combout => \din~combout\(19));

-- Location: LCCOMB_X42_Y25_N22
\ram2[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram2[3]~3_combout\ = (\tipo_acc~combout\(1) & ((\din~combout\(19)))) # (!\tipo_acc~combout\(1) & (\din~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \din~combout\(3),
	datac => \tipo_acc~combout\(1),
	datad => \din~combout\(19),
	combout => \ram2[3]~3_combout\);

-- Location: LCCOMB_X42_Y25_N28
\ram2[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- ram2(3) = (GLOBAL(\dout[9]~27clkctrl_outclk\) & ((ram2(3)))) # (!GLOBAL(\dout[9]~27clkctrl_outclk\) & (\ram2[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram2[3]~3_combout\,
	datac => ram2(3),
	datad => \dout[9]~27clkctrl_outclk\,
	combout => ram2(3));

-- Location: LCCOMB_X42_Y25_N26
\ram3[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- ram3(3) = (GLOBAL(\dout[9]~27clkctrl_outclk\) & ((ram3(3)))) # (!GLOBAL(\dout[9]~27clkctrl_outclk\) & (\ram3[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram3[3]~3_combout\,
	datab => ram3(3),
	datad => \dout[9]~27clkctrl_outclk\,
	combout => ram3(3));

-- Location: LCCOMB_X40_Y25_N2
\dout~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout~35_combout\ = (\addr~combout\(1) & ((\i_byte3|ram_block_rtl_0|auto_generated|ram_block1a3\))) # (!\addr~combout\(1) & (\i_byte1|ram_block_rtl_0|auto_generated|ram_block1a3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datac => \i_byte1|ram_block_rtl_0|auto_generated|ram_block1a3\,
	datad => \i_byte3|ram_block_rtl_0|auto_generated|ram_block1a3\,
	combout => \dout~35_combout\);

-- Location: LCCOMB_X40_Y25_N0
\dout~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout~36_combout\ = (\addr~combout\(0) & ((\tipo_acc~combout\(0) & (\i_byte2|ram_block_rtl_0|auto_generated|ram_block1a3\)) # (!\tipo_acc~combout\(0) & ((\dout~35_combout\))))) # (!\addr~combout\(0) & 
-- (((\i_byte2|ram_block_rtl_0|auto_generated|ram_block1a3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \tipo_acc~combout\(0),
	datac => \i_byte2|ram_block_rtl_0|auto_generated|ram_block1a3\,
	datad => \dout~35_combout\,
	combout => \dout~36_combout\);

-- Location: LCCOMB_X40_Y25_N16
\dout~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout~37_combout\ = (\dout~26_combout\ & (\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a3~portbdataout\ & ((!\dout[9]~27_combout\)))) # (!\dout~26_combout\ & (((\dout~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a3~portbdataout\,
	datab => \dout~36_combout\,
	datac => \dout[9]~27_combout\,
	datad => \dout~26_combout\,
	combout => \dout~37_combout\);

-- Location: LCFF_X40_Y25_N17
\dout[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dout~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dout[3]~reg0_regout\);

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[4]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_din(4),
	combout => \din~combout\(4));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[12]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_din(12),
	combout => \din~combout\(12));

-- Location: LCCOMB_X42_Y24_N4
\ram1[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram1[4]~4_combout\ = (\tipo_acc~combout\(1) & (((\din~combout\(12))))) # (!\tipo_acc~combout\(1) & ((\tipo_acc~combout\(0) & ((\din~combout\(12)))) # (!\tipo_acc~combout\(0) & (\din~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din~combout\(4),
	datab => \din~combout\(12),
	datac => \tipo_acc~combout\(1),
	datad => \tipo_acc~combout\(0),
	combout => \ram1[4]~4_combout\);

-- Location: LCCOMB_X42_Y24_N26
\ram1[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- ram1(4) = (GLOBAL(\dout[9]~27clkctrl_outclk\) & ((ram1(4)))) # (!GLOBAL(\dout[9]~27clkctrl_outclk\) & (\ram1[4]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram1[4]~4_combout\,
	datac => \dout[9]~27clkctrl_outclk\,
	datad => ram1(4),
	combout => ram1(4));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[20]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_din(20),
	combout => \din~combout\(20));

-- Location: LCCOMB_X40_Y24_N28
\ram2[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram2[4]~4_combout\ = (\tipo_acc~combout\(1) & ((\din~combout\(20)))) # (!\tipo_acc~combout\(1) & (\din~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din~combout\(4),
	datac => \din~combout\(20),
	datad => \tipo_acc~combout\(1),
	combout => \ram2[4]~4_combout\);

-- Location: LCCOMB_X40_Y24_N14
\ram2[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- ram2(4) = (GLOBAL(\dout[9]~27clkctrl_outclk\) & ((ram2(4)))) # (!GLOBAL(\dout[9]~27clkctrl_outclk\) & (\ram2[4]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram2[4]~4_combout\,
	datac => ram2(4),
	datad => \dout[9]~27clkctrl_outclk\,
	combout => ram2(4));

-- Location: LCCOMB_X42_Y24_N20
\ram3[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- ram3(4) = (GLOBAL(\dout[9]~27clkctrl_outclk\) & ((ram3(4)))) # (!GLOBAL(\dout[9]~27clkctrl_outclk\) & (\ram3[4]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram3[4]~4_combout\,
	datac => ram3(4),
	datad => \dout[9]~27clkctrl_outclk\,
	combout => ram3(4));

-- Location: M4K_X41_Y24
\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a4\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_core:i_byte0|altsyncram:ram_block_rtl_0|altsyncram_utg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbrewe => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X42_Y24_N12
\dout~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout~38_combout\ = (\addr~combout\(1) & (\i_byte3|ram_block_rtl_0|auto_generated|ram_block1a4\)) # (!\addr~combout\(1) & ((\i_byte1|ram_block_rtl_0|auto_generated|ram_block1a4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datac => \i_byte3|ram_block_rtl_0|auto_generated|ram_block1a4\,
	datad => \i_byte1|ram_block_rtl_0|auto_generated|ram_block1a4\,
	combout => \dout~38_combout\);

-- Location: LCCOMB_X42_Y24_N2
\dout~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout~39_combout\ = (\tipo_acc~combout\(0) & (((\i_byte2|ram_block_rtl_0|auto_generated|ram_block1a4\)))) # (!\tipo_acc~combout\(0) & ((\addr~combout\(0) & ((\dout~38_combout\))) # (!\addr~combout\(0) & 
-- (\i_byte2|ram_block_rtl_0|auto_generated|ram_block1a4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(0),
	datab => \addr~combout\(0),
	datac => \i_byte2|ram_block_rtl_0|auto_generated|ram_block1a4\,
	datad => \dout~38_combout\,
	combout => \dout~39_combout\);

-- Location: LCCOMB_X42_Y24_N6
\dout~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout~40_combout\ = (\dout~26_combout\ & (!\dout[9]~27_combout\ & ((\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a4~portbdataout\)))) # (!\dout~26_combout\ & (((\dout~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dout~26_combout\,
	datab => \dout[9]~27_combout\,
	datac => \dout~39_combout\,
	datad => \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	combout => \dout~40_combout\);

-- Location: LCFF_X42_Y24_N7
\dout[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dout~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dout[4]~reg0_regout\);

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[5]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_din(5),
	combout => \din~combout\(5));

-- Location: LCCOMB_X42_Y26_N6
\ram1[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- ram1(5) = (GLOBAL(\dout[9]~27clkctrl_outclk\) & ((ram1(5)))) # (!GLOBAL(\dout[9]~27clkctrl_outclk\) & (\ram1[5]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram1[5]~5_combout\,
	datac => \dout[9]~27clkctrl_outclk\,
	datad => ram1(5),
	combout => ram1(5));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[21]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_din(21),
	combout => \din~combout\(21));

-- Location: LCCOMB_X40_Y26_N28
\ram2[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram2[5]~5_combout\ = (\tipo_acc~combout\(1) & ((\din~combout\(21)))) # (!\tipo_acc~combout\(1) & (\din~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(1),
	datab => \din~combout\(5),
	datac => \din~combout\(21),
	combout => \ram2[5]~5_combout\);

-- Location: LCCOMB_X40_Y26_N14
\ram2[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- ram2(5) = (GLOBAL(\dout[9]~27clkctrl_outclk\) & ((ram2(5)))) # (!GLOBAL(\dout[9]~27clkctrl_outclk\) & (\ram2[5]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram2[5]~5_combout\,
	datac => ram2(5),
	datad => \dout[9]~27clkctrl_outclk\,
	combout => ram2(5));

-- Location: LCCOMB_X42_Y26_N16
\ram3[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- ram3(5) = (GLOBAL(\dout[9]~27clkctrl_outclk\) & ((ram3(5)))) # (!GLOBAL(\dout[9]~27clkctrl_outclk\) & (\ram3[5]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram3[5]~5_combout\,
	datac => ram3(5),
	datad => \dout[9]~27clkctrl_outclk\,
	combout => ram3(5));

-- Location: M4K_X41_Y26
\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a5\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_core:i_byte0|altsyncram:ram_block_rtl_0|altsyncram_utg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbrewe => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X42_Y24_N0
\dout~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout~41_combout\ = (\addr~combout\(1) & (\i_byte3|ram_block_rtl_0|auto_generated|ram_block1a5\)) # (!\addr~combout\(1) & ((\i_byte1|ram_block_rtl_0|auto_generated|ram_block1a5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datac => \i_byte3|ram_block_rtl_0|auto_generated|ram_block1a5\,
	datad => \i_byte1|ram_block_rtl_0|auto_generated|ram_block1a5\,
	combout => \dout~41_combout\);

-- Location: LCCOMB_X42_Y24_N30
\dout~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout~42_combout\ = (\addr~combout\(0) & ((\tipo_acc~combout\(0) & (\i_byte2|ram_block_rtl_0|auto_generated|ram_block1a5\)) # (!\tipo_acc~combout\(0) & ((\dout~41_combout\))))) # (!\addr~combout\(0) & 
-- (\i_byte2|ram_block_rtl_0|auto_generated|ram_block1a5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \i_byte2|ram_block_rtl_0|auto_generated|ram_block1a5\,
	datac => \tipo_acc~combout\(0),
	datad => \dout~41_combout\,
	combout => \dout~42_combout\);

-- Location: LCCOMB_X42_Y24_N24
\dout~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout~43_combout\ = (\dout~26_combout\ & (((!\dout[9]~27_combout\ & \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a5~portbdataout\)))) # (!\dout~26_combout\ & (\dout~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dout~26_combout\,
	datab => \dout~42_combout\,
	datac => \dout[9]~27_combout\,
	datad => \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a5~portbdataout\,
	combout => \dout~43_combout\);

-- Location: LCFF_X42_Y24_N25
\dout[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dout~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dout[5]~reg0_regout\);

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[6]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_din(6),
	combout => \din~combout\(6));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[14]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_din(14),
	combout => \din~combout\(14));

-- Location: LCCOMB_X40_Y22_N30
\ram1[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram1[6]~6_combout\ = (\tipo_acc~combout\(1) & (((\din~combout\(14))))) # (!\tipo_acc~combout\(1) & ((\tipo_acc~combout\(0) & (\din~combout\(14))) # (!\tipo_acc~combout\(0) & ((\din~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(1),
	datab => \tipo_acc~combout\(0),
	datac => \din~combout\(14),
	datad => \din~combout\(6),
	combout => \ram1[6]~6_combout\);

-- Location: LCCOMB_X40_Y22_N18
\ram1[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- ram1(6) = (GLOBAL(\dout[9]~27clkctrl_outclk\) & (ram1(6))) # (!GLOBAL(\dout[9]~27clkctrl_outclk\) & ((\ram1[6]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ram1(6),
	datac => \ram1[6]~6_combout\,
	datad => \dout[9]~27clkctrl_outclk\,
	combout => ram1(6));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[22]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_din(22),
	combout => \din~combout\(22));

-- Location: LCCOMB_X40_Y22_N8
\ram2[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram2[6]~6_combout\ = (\tipo_acc~combout\(1) & (\din~combout\(22))) # (!\tipo_acc~combout\(1) & ((\din~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(1),
	datab => \din~combout\(22),
	datad => \din~combout\(6),
	combout => \ram2[6]~6_combout\);

-- Location: LCCOMB_X40_Y22_N26
\ram2[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- ram2(6) = (GLOBAL(\dout[9]~27clkctrl_outclk\) & (ram2(6))) # (!GLOBAL(\dout[9]~27clkctrl_outclk\) & ((\ram2[6]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ram2(6),
	datac => \ram2[6]~6_combout\,
	datad => \dout[9]~27clkctrl_outclk\,
	combout => ram2(6));

-- Location: LCCOMB_X40_Y22_N28
\ram3[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram3[6]~6_combout\ = (\tipo_acc~combout\(1) & (\din~combout\(30))) # (!\tipo_acc~combout\(1) & ((\ram1[6]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din~combout\(30),
	datac => \ram1[6]~6_combout\,
	datad => \tipo_acc~combout\(1),
	combout => \ram3[6]~6_combout\);

-- Location: LCCOMB_X40_Y22_N20
\ram3[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- ram3(6) = (GLOBAL(\dout[9]~27clkctrl_outclk\) & ((ram3(6)))) # (!GLOBAL(\dout[9]~27clkctrl_outclk\) & (\ram3[6]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram3[6]~6_combout\,
	datac => ram3(6),
	datad => \dout[9]~27clkctrl_outclk\,
	combout => ram3(6));

-- Location: M4K_X41_Y22
\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a6\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_core:i_byte0|altsyncram:ram_block_rtl_0|altsyncram_utg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbrewe => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X42_Y22_N2
\dout~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout~44_combout\ = (\addr~combout\(1) & (\i_byte3|ram_block_rtl_0|auto_generated|ram_block1a6\)) # (!\addr~combout\(1) & ((\i_byte1|ram_block_rtl_0|auto_generated|ram_block1a6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datac => \i_byte3|ram_block_rtl_0|auto_generated|ram_block1a6\,
	datad => \i_byte1|ram_block_rtl_0|auto_generated|ram_block1a6\,
	combout => \dout~44_combout\);

-- Location: LCCOMB_X42_Y22_N0
\dout~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout~45_combout\ = (\tipo_acc~combout\(0) & (((\i_byte2|ram_block_rtl_0|auto_generated|ram_block1a6\)))) # (!\tipo_acc~combout\(0) & ((\addr~combout\(0) & ((\dout~44_combout\))) # (!\addr~combout\(0) & 
-- (\i_byte2|ram_block_rtl_0|auto_generated|ram_block1a6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(0),
	datab => \addr~combout\(0),
	datac => \i_byte2|ram_block_rtl_0|auto_generated|ram_block1a6\,
	datad => \dout~44_combout\,
	combout => \dout~45_combout\);

-- Location: LCCOMB_X42_Y22_N12
\dout~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout~46_combout\ = (\dout~26_combout\ & (!\dout[9]~27_combout\ & ((\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a6~portbdataout\)))) # (!\dout~26_combout\ & (((\dout~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dout[9]~27_combout\,
	datab => \dout~45_combout\,
	datac => \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a6~portbdataout\,
	datad => \dout~26_combout\,
	combout => \dout~46_combout\);

-- Location: LCFF_X42_Y22_N13
\dout[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dout~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dout[6]~reg0_regout\);

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[7]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_din(7),
	combout => \din~combout\(7));

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[15]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_din(15),
	combout => \din~combout\(15));

-- Location: LCCOMB_X40_Y23_N16
\ram1[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram1[7]~7_combout\ = (\tipo_acc~combout\(0) & (\din~combout\(15))) # (!\tipo_acc~combout\(0) & ((\tipo_acc~combout\(1) & (\din~combout\(15))) # (!\tipo_acc~combout\(1) & ((\din~combout\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(0),
	datab => \din~combout\(15),
	datac => \tipo_acc~combout\(1),
	datad => \din~combout\(7),
	combout => \ram1[7]~7_combout\);

-- Location: LCCOMB_X40_Y23_N28
\ram1[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- ram1(7) = (GLOBAL(\dout[9]~27clkctrl_outclk\) & (ram1(7))) # (!GLOBAL(\dout[9]~27clkctrl_outclk\) & ((\ram1[7]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ram1(7),
	datac => \ram1[7]~7_combout\,
	datad => \dout[9]~27clkctrl_outclk\,
	combout => ram1(7));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[23]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_din(23),
	combout => \din~combout\(23));

-- Location: LCCOMB_X40_Y23_N24
\ram2[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram2[7]~7_combout\ = (\tipo_acc~combout\(1) & (\din~combout\(23))) # (!\tipo_acc~combout\(1) & ((\din~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(1),
	datac => \din~combout\(23),
	datad => \din~combout\(7),
	combout => \ram2[7]~7_combout\);

-- Location: LCCOMB_X40_Y23_N22
\ram2[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- ram2(7) = (GLOBAL(\dout[9]~27clkctrl_outclk\) & (ram2(7))) # (!GLOBAL(\dout[9]~27clkctrl_outclk\) & ((\ram2[7]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ram2(7),
	datac => \ram2[7]~7_combout\,
	datad => \dout[9]~27clkctrl_outclk\,
	combout => ram2(7));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[31]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_din(31),
	combout => \din~combout\(31));

-- Location: LCCOMB_X40_Y23_N26
\ram3[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram3[7]~7_combout\ = (\tipo_acc~combout\(1) & (\din~combout\(31))) # (!\tipo_acc~combout\(1) & ((\ram1[7]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \din~combout\(31),
	datac => \tipo_acc~combout\(1),
	datad => \ram1[7]~7_combout\,
	combout => \ram3[7]~7_combout\);

-- Location: LCCOMB_X40_Y23_N30
\ram3[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- ram3(7) = (GLOBAL(\dout[9]~27clkctrl_outclk\) & (ram3(7))) # (!GLOBAL(\dout[9]~27clkctrl_outclk\) & ((\ram3[7]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ram3(7),
	datac => \dout[9]~27clkctrl_outclk\,
	datad => \ram3[7]~7_combout\,
	combout => ram3(7));

-- Location: M4K_X41_Y23
\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a7\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_core:i_byte0|altsyncram:ram_block_rtl_0|altsyncram_utg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbrewe => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X42_Y23_N28
\dout~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout~49_combout\ = (\addr~combout\(1) & ((\tipo_acc~combout\(1) & ((\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a7~portbdataout\))) # (!\tipo_acc~combout\(1) & (\i_byte2|ram_block_rtl_0|auto_generated|ram_block1a7\)))) # (!\addr~combout\(1) & 
-- (((\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a7~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \i_byte2|ram_block_rtl_0|auto_generated|ram_block1a7\,
	datac => \tipo_acc~combout\(1),
	datad => \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a7~portbdataout\,
	combout => \dout~49_combout\);

-- Location: LCCOMB_X42_Y23_N24
\dout~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout~47_combout\ = (\addr~combout\(1) & ((\i_byte2|ram_block_rtl_0|auto_generated|ram_block1a7\))) # (!\addr~combout\(1) & (\i_byte0|ram_block_rtl_0|auto_generated|ram_block1a7~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datac => \i_byte0|ram_block_rtl_0|auto_generated|ram_block1a7~portbdataout\,
	datad => \i_byte2|ram_block_rtl_0|auto_generated|ram_block1a7\,
	combout => \dout~47_combout\);

-- Location: LCCOMB_X42_Y23_N30
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\addr~combout\(1) & ((\i_byte3|ram_block_rtl_0|auto_generated|ram_block1a7\))) # (!\addr~combout\(1) & (\i_byte1|ram_block_rtl_0|auto_generated|ram_block1a7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datac => \i_byte1|ram_block_rtl_0|auto_generated|ram_block1a7\,
	datad => \i_byte3|ram_block_rtl_0|auto_generated|ram_block1a7\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X42_Y23_N12
\dout~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout~48_combout\ = (\addr~combout\(0) & ((\Mux0~0_combout\))) # (!\addr~combout\(0) & (\dout~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datac => \dout~47_combout\,
	datad => \Mux0~0_combout\,
	combout => \dout~48_combout\);

-- Location: LCCOMB_X42_Y23_N6
\dout~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout~50_combout\ = (\tipo_acc~combout\(0) & (\dout~49_combout\ & (!\tipo_acc~combout\(1)))) # (!\tipo_acc~combout\(0) & ((\tipo_acc~combout\(1) & (\dout~49_combout\)) # (!\tipo_acc~combout\(1) & ((\dout~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(0),
	datab => \dout~49_combout\,
	datac => \tipo_acc~combout\(1),
	datad => \dout~48_combout\,
	combout => \dout~50_combout\);

-- Location: LCFF_X42_Y23_N7
\dout[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dout~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dout[7]~reg0_regout\);

-- Location: LCCOMB_X42_Y23_N14
\dout~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout~51_combout\ = (\l_u~combout\ & ((\addr~combout\(0) & ((\Mux0~0_combout\))) # (!\addr~combout\(0) & (\dout~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l_u~combout\,
	datab => \addr~combout\(0),
	datac => \dout~47_combout\,
	datad => \Mux0~0_combout\,
	combout => \dout~51_combout\);

-- Location: LCCOMB_X42_Y23_N8
\dout[8]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout[8]~0_combout\ = (\tipo_acc~combout\(0) & ((\i_byte3|ram_block_rtl_0|auto_generated|ram_block1a0\))) # (!\tipo_acc~combout\(0) & (\dout~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(0),
	datab => \dout~51_combout\,
	datad => \i_byte3|ram_block_rtl_0|auto_generated|ram_block1a0\,
	combout => \dout[8]~0_combout\);

-- Location: LCCOMB_X42_Y23_N26
\dout~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout~52_combout\ = (\tipo_acc~combout\(0) & (!\addr~combout\(1))) # (!\tipo_acc~combout\(0) & ((\tipo_acc~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datac => \tipo_acc~combout\(1),
	datad => \tipo_acc~combout\(0),
	combout => \dout~52_combout\);

-- Location: LCFF_X42_Y23_N9
\dout[8]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dout[8]~0_combout\,
	sdata => \i_byte1|ram_block_rtl_0|auto_generated|ram_block1a0\,
	sclr => \dout[9]~27_combout\,
	sload => \dout~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dout[8]~reg0_regout\);

-- Location: LCCOMB_X42_Y23_N10
\dout[9]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout[9]~1_combout\ = (\tipo_acc~combout\(0) & ((\i_byte3|ram_block_rtl_0|auto_generated|ram_block1a1\))) # (!\tipo_acc~combout\(0) & (\dout~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(0),
	datab => \dout~51_combout\,
	datad => \i_byte3|ram_block_rtl_0|auto_generated|ram_block1a1\,
	combout => \dout[9]~1_combout\);

-- Location: LCFF_X42_Y23_N11
\dout[9]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dout[9]~1_combout\,
	sdata => \i_byte1|ram_block_rtl_0|auto_generated|ram_block1a1\,
	sclr => \dout[9]~27_combout\,
	sload => \dout~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dout[9]~reg0_regout\);

-- Location: LCCOMB_X42_Y23_N20
\dout[10]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout[10]~2_combout\ = (\tipo_acc~combout\(0) & ((\i_byte3|ram_block_rtl_0|auto_generated|ram_block1a2\))) # (!\tipo_acc~combout\(0) & (\dout~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(0),
	datab => \dout~51_combout\,
	datad => \i_byte3|ram_block_rtl_0|auto_generated|ram_block1a2\,
	combout => \dout[10]~2_combout\);

-- Location: LCFF_X42_Y23_N21
\dout[10]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dout[10]~2_combout\,
	sdata => \i_byte1|ram_block_rtl_0|auto_generated|ram_block1a2\,
	sclr => \dout[9]~27_combout\,
	sload => \dout~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dout[10]~reg0_regout\);

-- Location: LCCOMB_X42_Y25_N20
\dout[11]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout[11]~3_combout\ = (\tipo_acc~combout\(0) & (\i_byte3|ram_block_rtl_0|auto_generated|ram_block1a3\)) # (!\tipo_acc~combout\(0) & ((\dout~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(0),
	datab => \i_byte3|ram_block_rtl_0|auto_generated|ram_block1a3\,
	datad => \dout~51_combout\,
	combout => \dout[11]~3_combout\);

-- Location: LCFF_X42_Y25_N21
\dout[11]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dout[11]~3_combout\,
	sdata => \i_byte1|ram_block_rtl_0|auto_generated|ram_block1a3\,
	sclr => \dout[9]~27_combout\,
	sload => \dout~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dout[11]~reg0_regout\);

-- Location: LCCOMB_X42_Y23_N22
\dout[12]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout[12]~4_combout\ = (\tipo_acc~combout\(0) & ((\i_byte3|ram_block_rtl_0|auto_generated|ram_block1a4\))) # (!\tipo_acc~combout\(0) & (\dout~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(0),
	datab => \dout~51_combout\,
	datad => \i_byte3|ram_block_rtl_0|auto_generated|ram_block1a4\,
	combout => \dout[12]~4_combout\);

-- Location: LCFF_X42_Y23_N23
\dout[12]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dout[12]~4_combout\,
	sdata => \i_byte1|ram_block_rtl_0|auto_generated|ram_block1a4\,
	sclr => \dout[9]~27_combout\,
	sload => \dout~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dout[12]~reg0_regout\);

-- Location: LCCOMB_X42_Y23_N0
\dout[13]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout[13]~5_combout\ = (\tipo_acc~combout\(0) & ((\i_byte3|ram_block_rtl_0|auto_generated|ram_block1a5\))) # (!\tipo_acc~combout\(0) & (\dout~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(0),
	datab => \dout~51_combout\,
	datad => \i_byte3|ram_block_rtl_0|auto_generated|ram_block1a5\,
	combout => \dout[13]~5_combout\);

-- Location: LCFF_X42_Y23_N1
\dout[13]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dout[13]~5_combout\,
	sdata => \i_byte1|ram_block_rtl_0|auto_generated|ram_block1a5\,
	sclr => \dout[9]~27_combout\,
	sload => \dout~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dout[13]~reg0_regout\);

-- Location: LCCOMB_X42_Y23_N4
\dout[14]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout[14]~6_combout\ = (\tipo_acc~combout\(0) & ((\i_byte3|ram_block_rtl_0|auto_generated|ram_block1a6\))) # (!\tipo_acc~combout\(0) & (\dout~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(0),
	datab => \dout~51_combout\,
	datad => \i_byte3|ram_block_rtl_0|auto_generated|ram_block1a6\,
	combout => \dout[14]~6_combout\);

-- Location: LCFF_X42_Y23_N5
\dout[14]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dout[14]~6_combout\,
	sdata => \i_byte1|ram_block_rtl_0|auto_generated|ram_block1a6\,
	sclr => \dout[9]~27_combout\,
	sload => \dout~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dout[14]~reg0_regout\);

-- Location: LCCOMB_X42_Y23_N18
\dout[15]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout[15]~7_combout\ = (\tipo_acc~combout\(0) & ((\i_byte3|ram_block_rtl_0|auto_generated|ram_block1a7\))) # (!\tipo_acc~combout\(0) & (\dout~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(0),
	datab => \dout~51_combout\,
	datad => \i_byte3|ram_block_rtl_0|auto_generated|ram_block1a7\,
	combout => \dout[15]~7_combout\);

-- Location: LCFF_X42_Y23_N19
\dout[15]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dout[15]~7_combout\,
	sdata => \i_byte1|ram_block_rtl_0|auto_generated|ram_block1a7\,
	sclr => \dout[9]~27_combout\,
	sload => \dout~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dout[15]~reg0_regout\);

-- Location: LCCOMB_X43_Y23_N12
\dout[16]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout[16]~8_combout\ = (\tipo_acc~combout\(1) & (\i_byte2|ram_block_rtl_0|auto_generated|ram_block1a0\)) # (!\tipo_acc~combout\(1) & ((\dout~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_byte2|ram_block_rtl_0|auto_generated|ram_block1a0\,
	datab => \tipo_acc~combout\(1),
	datad => \dout~51_combout\,
	combout => \dout[16]~8_combout\);

-- Location: LCCOMB_X42_Y23_N16
\dout~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout~53_combout\ = (\l_u~combout\ & (!\tipo_acc~combout\(1) & \Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l_u~combout\,
	datac => \tipo_acc~combout\(1),
	datad => \Mux0~0_combout\,
	combout => \dout~53_combout\);

-- Location: LCFF_X43_Y23_N13
\dout[16]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dout[16]~8_combout\,
	sdata => \dout~53_combout\,
	sload => \tipo_acc~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dout[16]~reg0_regout\);

-- Location: LCCOMB_X43_Y23_N30
\dout[17]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout[17]~9_combout\ = (\tipo_acc~combout\(1) & (\i_byte2|ram_block_rtl_0|auto_generated|ram_block1a1\)) # (!\tipo_acc~combout\(1) & ((\dout~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(1),
	datab => \i_byte2|ram_block_rtl_0|auto_generated|ram_block1a1\,
	datad => \dout~51_combout\,
	combout => \dout[17]~9_combout\);

-- Location: LCFF_X43_Y23_N31
\dout[17]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dout[17]~9_combout\,
	sdata => \dout~53_combout\,
	sload => \tipo_acc~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dout[17]~reg0_regout\);

-- Location: LCCOMB_X43_Y23_N0
\dout[18]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout[18]~10_combout\ = (\tipo_acc~combout\(1) & (\i_byte2|ram_block_rtl_0|auto_generated|ram_block1a2\)) # (!\tipo_acc~combout\(1) & ((\dout~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_byte2|ram_block_rtl_0|auto_generated|ram_block1a2\,
	datab => \tipo_acc~combout\(1),
	datad => \dout~51_combout\,
	combout => \dout[18]~10_combout\);

-- Location: LCFF_X43_Y23_N1
\dout[18]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dout[18]~10_combout\,
	sdata => \dout~53_combout\,
	sload => \tipo_acc~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dout[18]~reg0_regout\);

-- Location: LCCOMB_X43_Y23_N18
\dout[19]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout[19]~11_combout\ = (\tipo_acc~combout\(1) & (\i_byte2|ram_block_rtl_0|auto_generated|ram_block1a3\)) # (!\tipo_acc~combout\(1) & ((\dout~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_byte2|ram_block_rtl_0|auto_generated|ram_block1a3\,
	datab => \tipo_acc~combout\(1),
	datad => \dout~51_combout\,
	combout => \dout[19]~11_combout\);

-- Location: LCFF_X43_Y23_N19
\dout[19]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dout[19]~11_combout\,
	sdata => \dout~53_combout\,
	sload => \tipo_acc~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dout[19]~reg0_regout\);

-- Location: LCCOMB_X42_Y24_N16
\dout[20]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout[20]~12_combout\ = (\tipo_acc~combout\(1) & (\i_byte2|ram_block_rtl_0|auto_generated|ram_block1a4\)) # (!\tipo_acc~combout\(1) & ((\dout~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_byte2|ram_block_rtl_0|auto_generated|ram_block1a4\,
	datab => \tipo_acc~combout\(1),
	datad => \dout~51_combout\,
	combout => \dout[20]~12_combout\);

-- Location: LCFF_X42_Y24_N17
\dout[20]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dout[20]~12_combout\,
	sdata => \dout~53_combout\,
	sload => \tipo_acc~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dout[20]~reg0_regout\);

-- Location: LCCOMB_X43_Y23_N8
\dout[21]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout[21]~13_combout\ = (\tipo_acc~combout\(1) & (\i_byte2|ram_block_rtl_0|auto_generated|ram_block1a5\)) # (!\tipo_acc~combout\(1) & ((\dout~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(1),
	datab => \i_byte2|ram_block_rtl_0|auto_generated|ram_block1a5\,
	datad => \dout~51_combout\,
	combout => \dout[21]~13_combout\);

-- Location: LCFF_X43_Y23_N9
\dout[21]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dout[21]~13_combout\,
	sdata => \dout~53_combout\,
	sload => \tipo_acc~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dout[21]~reg0_regout\);

-- Location: LCCOMB_X42_Y22_N16
\dout[22]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout[22]~14_combout\ = (\tipo_acc~combout\(1) & (\i_byte2|ram_block_rtl_0|auto_generated|ram_block1a6\)) # (!\tipo_acc~combout\(1) & ((\dout~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(1),
	datab => \i_byte2|ram_block_rtl_0|auto_generated|ram_block1a6\,
	datad => \dout~51_combout\,
	combout => \dout[22]~14_combout\);

-- Location: LCFF_X42_Y22_N17
\dout[22]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dout[22]~14_combout\,
	sdata => \dout~53_combout\,
	sload => \tipo_acc~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dout[22]~reg0_regout\);

-- Location: LCCOMB_X43_Y23_N2
\dout[23]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout[23]~15_combout\ = (\tipo_acc~combout\(1) & (\i_byte2|ram_block_rtl_0|auto_generated|ram_block1a7\)) # (!\tipo_acc~combout\(1) & ((\dout~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_byte2|ram_block_rtl_0|auto_generated|ram_block1a7\,
	datab => \tipo_acc~combout\(1),
	datad => \dout~51_combout\,
	combout => \dout[23]~15_combout\);

-- Location: LCFF_X43_Y23_N3
\dout[23]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dout[23]~15_combout\,
	sdata => \dout~53_combout\,
	sload => \tipo_acc~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dout[23]~reg0_regout\);

-- Location: LCCOMB_X43_Y23_N20
\dout[24]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout[24]~16_combout\ = (\tipo_acc~combout\(1) & (\i_byte3|ram_block_rtl_0|auto_generated|ram_block1a0\)) # (!\tipo_acc~combout\(1) & ((\dout~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(1),
	datab => \i_byte3|ram_block_rtl_0|auto_generated|ram_block1a0\,
	datad => \dout~51_combout\,
	combout => \dout[24]~16_combout\);

-- Location: LCFF_X43_Y23_N21
\dout[24]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dout[24]~16_combout\,
	sdata => \dout~53_combout\,
	sload => \tipo_acc~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dout[24]~reg0_regout\);

-- Location: LCCOMB_X43_Y23_N10
\dout[25]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout[25]~17_combout\ = (\tipo_acc~combout\(1) & (\i_byte3|ram_block_rtl_0|auto_generated|ram_block1a1\)) # (!\tipo_acc~combout\(1) & ((\dout~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(1),
	datab => \i_byte3|ram_block_rtl_0|auto_generated|ram_block1a1\,
	datad => \dout~51_combout\,
	combout => \dout[25]~17_combout\);

-- Location: LCFF_X43_Y23_N11
\dout[25]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dout[25]~17_combout\,
	sdata => \dout~53_combout\,
	sload => \tipo_acc~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dout[25]~reg0_regout\);

-- Location: LCCOMB_X43_Y23_N4
\dout[26]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout[26]~18_combout\ = (\tipo_acc~combout\(1) & (\i_byte3|ram_block_rtl_0|auto_generated|ram_block1a2\)) # (!\tipo_acc~combout\(1) & ((\dout~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(1),
	datab => \i_byte3|ram_block_rtl_0|auto_generated|ram_block1a2\,
	datad => \dout~51_combout\,
	combout => \dout[26]~18_combout\);

-- Location: LCFF_X43_Y23_N5
\dout[26]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dout[26]~18_combout\,
	sdata => \dout~53_combout\,
	sload => \tipo_acc~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dout[26]~reg0_regout\);

-- Location: LCCOMB_X43_Y23_N26
\dout[27]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout[27]~19_combout\ = (\tipo_acc~combout\(1) & (\i_byte3|ram_block_rtl_0|auto_generated|ram_block1a3\)) # (!\tipo_acc~combout\(1) & ((\dout~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_byte3|ram_block_rtl_0|auto_generated|ram_block1a3\,
	datab => \tipo_acc~combout\(1),
	datad => \dout~51_combout\,
	combout => \dout[27]~19_combout\);

-- Location: LCFF_X43_Y23_N27
\dout[27]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dout[27]~19_combout\,
	sdata => \dout~53_combout\,
	sload => \tipo_acc~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dout[27]~reg0_regout\);

-- Location: LCCOMB_X42_Y24_N10
\dout[28]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout[28]~20_combout\ = (\tipo_acc~combout\(1) & (\i_byte3|ram_block_rtl_0|auto_generated|ram_block1a4\)) # (!\tipo_acc~combout\(1) & ((\dout~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(1),
	datab => \i_byte3|ram_block_rtl_0|auto_generated|ram_block1a4\,
	datad => \dout~51_combout\,
	combout => \dout[28]~20_combout\);

-- Location: LCFF_X42_Y24_N11
\dout[28]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dout[28]~20_combout\,
	sdata => \dout~53_combout\,
	sload => \tipo_acc~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dout[28]~reg0_regout\);

-- Location: LCCOMB_X43_Y23_N24
\dout[29]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout[29]~21_combout\ = (\tipo_acc~combout\(1) & (\i_byte3|ram_block_rtl_0|auto_generated|ram_block1a5\)) # (!\tipo_acc~combout\(1) & ((\dout~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tipo_acc~combout\(1),
	datab => \i_byte3|ram_block_rtl_0|auto_generated|ram_block1a5\,
	datad => \dout~51_combout\,
	combout => \dout[29]~21_combout\);

-- Location: LCFF_X43_Y23_N25
\dout[29]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dout[29]~21_combout\,
	sdata => \dout~53_combout\,
	sload => \tipo_acc~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dout[29]~reg0_regout\);

-- Location: LCCOMB_X43_Y23_N22
\dout[30]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout[30]~22_combout\ = (\tipo_acc~combout\(1) & (\i_byte3|ram_block_rtl_0|auto_generated|ram_block1a6\)) # (!\tipo_acc~combout\(1) & ((\dout~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_byte3|ram_block_rtl_0|auto_generated|ram_block1a6\,
	datab => \tipo_acc~combout\(1),
	datad => \dout~51_combout\,
	combout => \dout[30]~22_combout\);

-- Location: LCFF_X43_Y23_N23
\dout[30]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dout[30]~22_combout\,
	sdata => \dout~53_combout\,
	sload => \tipo_acc~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dout[30]~reg0_regout\);

-- Location: LCCOMB_X43_Y23_N16
\dout[31]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \dout[31]~23_combout\ = (\tipo_acc~combout\(1) & (\i_byte3|ram_block_rtl_0|auto_generated|ram_block1a7\)) # (!\tipo_acc~combout\(1) & ((\dout~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_byte3|ram_block_rtl_0|auto_generated|ram_block1a7\,
	datab => \tipo_acc~combout\(1),
	datad => \dout~51_combout\,
	combout => \dout[31]~23_combout\);

-- Location: LCFF_X43_Y23_N17
\dout[31]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dout[31]~23_combout\,
	sdata => \dout~53_combout\,
	sload => \tipo_acc~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dout[31]~reg0_regout\);

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[12]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_addr(12));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[13]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_addr(13));

-- Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[14]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_addr(14));

-- Location: PIN_H7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[15]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_addr(15));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[16]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_addr(16));

-- Location: PIN_Y9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[17]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_addr(17));

-- Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[18]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_addr(18));

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[19]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_addr(19));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[20]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_addr(20));

-- Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[21]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_addr(21));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[22]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_addr(22));

-- Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[23]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_addr(23));

-- Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[24]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_addr(24));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[25]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_addr(25));

-- Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[26]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_addr(26));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[27]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_addr(27));

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[28]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_addr(28));

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[29]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_addr(29));

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[30]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_addr(30));

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[31]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_addr(31));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\we_ram~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_we_ram);

-- Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[0]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \dout[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(0));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[1]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \dout[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(1));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[2]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \dout[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(2));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[3]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \dout[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(3));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[4]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \dout[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(4));

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[5]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \dout[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(5));

-- Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[6]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \dout[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(6));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[7]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \dout[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(7));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[8]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \dout[8]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(8));

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[9]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \dout[9]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(9));

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[10]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \dout[10]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(10));

-- Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[11]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \dout[11]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(11));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[12]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \dout[12]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(12));

-- Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[13]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \dout[13]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(13));

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[14]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \dout[14]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(14));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[15]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \dout[15]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(15));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[16]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \dout[16]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(16));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[17]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \dout[17]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(17));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[18]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \dout[18]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(18));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[19]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \dout[19]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(19));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[20]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \dout[20]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(20));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[21]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \dout[21]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(21));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[22]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \dout[22]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(22));

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[23]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \dout[23]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(23));

-- Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[24]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \dout[24]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(24));

-- Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[25]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \dout[25]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(25));

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[26]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \dout[26]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(26));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[27]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \dout[27]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(27));

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[28]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \dout[28]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(28));

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[29]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \dout[29]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(29));

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[30]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \dout[30]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(30));

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[31]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \dout[31]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(31));
END structure;


