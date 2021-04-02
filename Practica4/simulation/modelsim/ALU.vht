library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU_vhd_tst is
end ALU_vhd_tst;

architecture tb of ALU_vhd_tst is
	constant generic_length : integer :=4;
	signal a,b :std_logic_vector(generic_length -1 downto 0);
	signal alu_op : std_logic_vector(3 downto 0);
	signal  shamt   : std_logic_vector(2 downto 0); -- sería logaritmo de generic_length menos 1
	signal  alu_out : std_logic_vector(generic_length -1 downto 0);
	signal  z,lt,ge : std_logic;
	signal a_and_b, a_or_b, a_xor_b : std_logic_vector(generic_length -1 downto 0); 
	--signal sll_out,srl_out,sra_out : std_logic_vector(generic_length -1 downto 0);
	signal shamt_i : unsigned(2 downto 0);
	constant max_value: integer := (2**generic_length-1);
	
	constant c_time : time :=1 ns;

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
	begin
		a <= (others => '0');
		b <= (others => '0');
		alu_op <= "1000"; -- Inicializo a esta porque no es ninguna de las del mux
		shamt <= (others => '0');

		wait for 10 ns;

		a_and_b <= a and b;
		a_or_b <= a or b;
		a_xor_b <= a xor b;

		wait for 100 ns;
		
		-- Hacemos el bucle
		for i in 0 to max_value loop
			a <= std_logic_vector(to_unsigned(i,generic_length));
			for j in 0 to max_value loop
				b <= std_logic_vector(to_unsigned(j,generic_length));
				-- ya tenemos las señales, ahora probamos la suma
				wait for c_time;
				alu_op <= "0000";
				--esperamos un tiempo y comprobamos la suma
				wait for c_time;
				
				assert alu_out = std_logic_vector(unsigned(a)+unsigned(b))
					report "No se suman bien"
					severity failure;

				wait for c_time;
				
				alu_op <= "1000";
				
				wait for c_time;
				assert alu_out = std_logic_vector(unsigned(a)-unsigned(b))
					report "No se restan bien"
					severity failure;
				wait for c_time;
					
				--Revisar slt y sltu (habría que extender signo)
				alu_op <= "0010";
				wait for c_time;
				if signed(a)<signed(b) then
					assert alu_out(0) = '1'
						report "slt no funciona"
						severity failure;
				end if;
				wait for c_time;
				
				alu_op <= "0011";
				wait for c_time;
				if unsigned(a)<unsigned(b) then
					assert alu_out(0) = '1'
						report "sltu no funciona"
						severity failure;
				end if;
				wait for c_time;
				
				-- Funciones lógicas
				--xor
				a_and_b <= a and b;
				a_or_b <= a or b;
				a_xor_b <= a xor b;

				alu_op <= "0100";
				wait for c_time;
				assert alu_out = a_xor_b
					report "Fallo en el xor"
					severity failure;
				wait for c_time;
				
				--or
				alu_op <= "0110";
				wait for c_time;
				assert alu_out = a_or_b
					report "Fallo en el xor"
					severity failure;
				wait for c_time;
				
				--and
				alu_op <= "0111";
				wait for c_time;
				assert alu_out = a_and_b
					report "Fallo en el xor"
					severity failure;
				wait for c_time;
				--Comparaciones
				if a = b then
					wait for c_time;
					assert z = '1'
						report "La comparacion de igualdad no funciona"
						severity failure;
				end if;
				
				if a >= b then
					wait for c_time;
					assert ge = '1'
						report "La comparacion de igualdad no funciona"
						severity failure;
				end if;
				
				if a < b then
					wait for c_time;
					assert lt = '1'
						report "La comparacion de igualdad no funciona"
						severity failure;
				end if;	
			end loop;
			
			for k in 0 to 4 loop
				wait for c_time;
				shamt <= std_logic_vector(to_unsigned(k,3));
				--shamt_i <= to_unsigned(k,3);
				wait for c_time;
				shamt_i <= unsigned(shamt);
				wait for c_time;

				-- shift logic left
				alu_op <= "0001";
				wait for c_time;
				assert alu_out = std_logic_vector(shift_left(unsigned(a),to_integer(shamt_i)))
					report "Fallo en el desplazamiento lógico a la izquierda"
					severity failure;

				wait for c_time;
				alu_op <= "0101";
				wait for c_time;
				assert alu_out = std_logic_vector(shift_right(unsigned(a),to_integer(shamt_i)))
					report "Fallo en el desplazamiento lógico a la derecho"
					severity failure;

				wait for c_time;
				alu_op <= "1101";
				wait for c_time;
				assert alu_out = std_logic_vector(shift_right(signed(a),to_integer(shamt_i)))
					report "Fallo en el desplazamiento lógico a la izquierda"
					severity failure;
				
			end loop;
			
		end loop;

		
		assert false
		report "Fin de la simulación"
		severity failure;
	end process;

end architecture tb;
	
		   