library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU_vhd_tst is
end ALU_vhd_tst;

architecture tb of Practica3_vhd_tst is
		constant generic_length : integer :=8;
		signal a,b :std_logic_vector(generic_length -1 downto 0);
		signal alu_op : std_logic_vector(3 downto 0);
		signal  shamt   : std_logic_vector(4 downto 0);
		signal  alu_out : std_logic_vector(generic_length -1 downto 0);
		signal  z,lt,ge : std_logic;
		constant min_value: integer := -(2**(generic_length-1));
		constant max_value: integer := (2**(generic_length-1)-1);
		
		constant c_time : time :=20 ns;
begin
	
	i1 : entity work.ALU
		generic map(
			generic_length => generic_length)
		port map(
			a => a,
			b => b,
			alu_op => alu_op,
			shamt => shamt,
			alu_out => alu_out,
			z => z,
			lt => lt,
			ge => ge
		);
		
	p_stim: process
	--inicializamos las entradas
	a <= (others <= '0');
	b <= (others <= '0');
	alu_op <= "1001"; -- Inicializo a esta porque no es ninguna de las del mux
	shamt <= (others <= '0');
	
	-- Hacemos el bucle
	for i in min_value to max_value loop
		a <= std_logic_vector(to_signed(i,generic_length));
		for j in min_value to max_value loop
			b <= std_logic_vector(to_signed(j,generic_length));
			-- ya tenemos las señales, ahora probamos la suma
			alu_op <= "0000";
			--esperamos un tiempo y comprobamos la suma
			wait for c_time;
			
		end loop;
		
	end loop;
	
		   