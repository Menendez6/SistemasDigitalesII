library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU_vhd_tst is
end ALU_vhd_tst;

architecture tb of ALU_vhd_tst is
	constant generic_length : integer :=8;
	signal a,b :std_logic_vector(generic_length -1 downto 0);
	signal alu_op : std_logic_vector(3 downto 0);
	signal  shamt   : std_logic_vector(2 downto 0); -- sería logaritmo de generic_length menos 1
	signal  alu_out : std_logic_vector(generic_length -1 downto 0);
	signal  z,lt,ge : std_logic;
	--signal a_ext, b_ext : std_logic_vector(generic_length downto 0);
	--constant min_value: integer := -(2**(generic_length-1));
	constant max_value: integer := (2**generic_length-1);
	
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
	for i in 0 to max_value loop
		a <= std_logic_vector(to_unsigned(i,generic_length));
		for j in 0 to max_value loop
			b <= std_logic_vector(to_unsigned(j,generic_length));
			-- ya tenemos las señales, ahora probamos la suma
			alu_op <= "0000";
			--esperamos un tiempo y comprobamos la suma
			wait for c_time;
			
			assert alu_out = unsigned(a)+unsigned(b)
				report "No se suman bien"
				severity failure;
			
			alu_op <= "1000";
			
			wait for c_time;
			assert alu_out = unsigned(a)-unsigned(b)
				report "No se restan bien"
				severity failure;
				
			--Revisar slt y sltu (habría que extender signo)
			alu_op <= "0010";
			wait for c_time;
			if signed(a)<signed(b) then
				assert alu_out(0) = '1'
					report "slt no funciona"
					severity failure;
			end if;
			
			alu_op <= "0011";
			wait for c_time;
			if unsigned(a)<unsigned(b) then
				assert alu_out(0) = '1'
					report "sltu no funciona"
					severity failure;
			end if;
			
			-- Funciones lógicas
			--xor
			alu_op <= "0100"
			for i in 0 to generic_length -1 then
				wait for c_time
				assert alu_out(i) = a(i) xor b(i)
					report "Fallo en el xor"
					severity failure;
			end loop;
			
			--or
			alu_op <= "0110"
			for i in 0 to generic_length -1 then
				wait for c_time
				assert alu_out(i) = a(i) or b(i)
					report "Fallo en el or"
					severity failure;
			end loop;
			
			--and
			alu_op <= "0111"
			for i in 0 to generic_length -1 then
				wait for c_time
				assert alu_out(i) = a(i) and b(i)
					report "Fallo en el and"
					severity failure;
			end loop;
			
			--Comparaciones
			if a = b then
				wait for c_time
				assert z = '1'
					report "La comparacion de igualdad no funciona"
					severity failure;
			end if;
			
			if a >= b then
				wait for c_time
				assert ge = '1'
					report "La comparacion de igualdad no funciona"
					severity failure;
			end if;
			
			if a < b then
				wait for c_time
				assert lt = '1'
					report "La comparacion de igualdad no funciona"
					severity failure;
			end if;
			
		end loop;
		
		-- Hay que hacerse las funciones para comprobar el tb (están en las diapos tema 1, funciones)
		for k in 0 to 31 then
			shamt <= std_logic_vector(to_unsigned(k,5));
			--shift logic left
			alu_op <= "0001"
			
		end loop;
		
	end loop;
	
		   