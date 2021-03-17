library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Practica3_vhd_tst is
end Practica3_vhd_tst;

architecture tb of Practica3_vhd_tst is
		signal clk 	   :  std_logic:='0';
      signal reset_n :  std_logic;
      signal dig_led :  std_logic_vector(16 downto 0);
      signal digito  :  std_logic_vector(7 downto 0);
		
		constant c_clk_per : time :=10 ns;
begin
	
	i1 : entity work.Practica3
		port map(
		   clk =>clk,
       reset_n =>reset_n,
       dig_led =>dig_led,
       digito  =>digito);
		 
	p_clk : process
		begin
			clk<='0';
			wait for c_clk_per/2;
			clk<='1';
			wait for c_clk_per/2;
		end process;
		
	p_reset_n: process
		begin 
			reset_n<='0';
			wait for 100 ns;
			reset_n<='1';
			wait;
		end process;
		
	p_stim : process
		begin
			--Inicializar las entradas a 0. No hay entradas a las que tenga que inicializar.
		
		wait until reset_n='1';
		
		wait for  5000000 ns;
		assert false
            report "Fin de la simulación"
            severity failure;
		
	end process p_stim;
end tb;