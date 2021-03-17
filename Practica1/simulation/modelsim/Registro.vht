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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "01/26/2021 19:53:51"
                                                            
-- Vhdl Test Bench template for design  :  Registro
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Registro_vhd_tst IS
END Registro_vhd_tst;
ARCHITECTURE Registro_arch OF Registro_vhd_tst IS
-- constants                                                 
-- signals                                                   
	SIGNAL bits : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL clk : STD_LOGIC:='0';
	SIGNAL data : STD_LOGIC;
	SIGNAL enable : STD_LOGIC;
	SIGNAL reset_n : STD_LOGIC;
	constant clk_per : time := 20 ns;

COMPONENT Registro
	PORT (
	bits : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	clk : IN STD_LOGIC;
	data : IN STD_LOGIC;
	enable : IN STD_LOGIC;
	reset_n : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Registro
	PORT MAP (
-- list connections between master ports and signals
	bits => bits,
	clk => clk,
	data => data,
	enable => enable,
	reset_n => reset_n
	);


p_clk: process
begin
	clk <= '0';
	wait for clk_per / 2;
	clk <= '1';
	wait for clk_per / 2;
end process;

p_rstn : process
begin
	reset_n <= '0';
	wait for 100 ns;
	reset_n <= '1';
	wait;
end process;
                                                      
                                           
p_stim : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN
	data <= '0';
	enable <= '0';

	wait until reset_n = '1';

	wait for 5 ns;

	for n in 0 to 3 loop

		data <= '1';
		
		wait for clk_per;

		enable <= '1';

		wait for clk_per;

		enable <= '0';

		wait for 80 ns;

		data <= '0';

		wait for clk_per;

		enable <= '1';

		wait for clk_per;

		enable <= '0';

		wait for 80 ns;
	end loop;

	assert bits = "01010101"
	report "Error: salida del registro errónea"
		severity failure;
	
	assert false
	report "Fin de la simulación"
		severity failure;
		
        -- code executes for every event on sensitivity list                                                          
END PROCESS p_stim;                                          
END Registro_arch;
