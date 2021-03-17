LIBRARY ieee;                                               
USE ieee.std_logic_1164.all; 

ENTITY Practica1_vhd_tst IS
END Practica1_vhd_tst;
ARCHITECTURE Practica1_arch OF Practica1_vhd_tst IS

    signal clk: std_logic:='0';
    signal reset_n : std_logic;
    signal data    : std_logic;
    signal err_paridad : std_logic;
    signal err_trama   : std_logic;
    --signal sal_registro: std_logic_vector(7 downto 0);
    --signal contar       : std_logic_vector(3 downto 0);
    signal bits        : std_logic_vector(7 downto 0);
    constant clk_per : time:= 10 ns;

    component Practica1 is
        port(
            clk : in std_logic;
            reset_n : in std_logic;
            data    : in std_logic;
            err_paridad : out std_logic;
            err_trama   : out std_logic;
          --  sal_registro: out std_logic_vector(7 downto 0);
          --  contar      : out std_logic_vector(3 downto 0);
            bits        : out std_logic_vector(7 downto 0)
        );
    end component;

begin

    i1 : Practica1
    port map(
        clk => clk,
        reset_n => reset_n,
        data    => data,
        err_paridad => err_paridad,
        err_trama   => err_trama,
--        sal_registro => sal_registro,
    --    contar=> contar,
        bits        => bits
      --  para => para
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

    p_stim : process

    begin
        data <= '1';

        wait until reset_n = '1';

        wait for 5 ns;

        --bits de start

        data <= '0';
        
        wait for 26040 ns;

        --bits de entrada

        for n in 0 to 1 loop
            data <= '0';

            wait for 26040 ns;

            data <= '0';

            wait for 26040 ns;
        end loop;
		  
		   data <= '1';

			wait for 26040 ns;

			data <= '1';

			wait for 26040 ns;
			
			data <= '0';

			wait for 26040 ns;

			data <= '0';

			wait for 26040 ns;

        -- bit de paridad

        data <= '1';

        wait for 26040 ns;

        --  bit de stop
        data <= '1';

        wait for 50000 ns;

        assert bits="00110000"
            report "El número obtenido no es el deseado"
            severity failure;

		  data <= '0';
        
        wait for 26040 ns;

        --bits de entrada

      
			data <= '1';

			wait for 26040 ns;

			data <= '0';

			wait for 26040 ns;
			
			data <= '0';

			wait for 26040 ns;

			data <= '0';

			wait for 26040 ns;
			
		  data <= '1';

			wait for 26040 ns;

			data <= '1';

			wait for 26040 ns;
			
			data <= '0';

			wait for 26040 ns;

			data <= '0';

			wait for 26040 ns;

        -- bit de paridad

        data <= '0';

        wait for 26040 ns;

        --  bit de stop
        data <= '1';

        wait for 50000 ns;

        assert bits="00110001"
            report "El número obtenido no es el deseado"
            severity failure;
		  
		  data <= '0';
        
        wait for 26040 ns;

        --bits de entrada

        for n in 0 to 3 loop
            data <= '1';

            wait for 26040 ns;

            data <= '0';

            wait for 26040 ns;
        end loop;

        -- bit de paridad

        data <= '1';

        wait for 26040 ns;

        --  bit de stop
        data <= '1';

        wait for 50000 ns;

        assert bits="01010101"
            report "El número obtenido no es el deseado"
            severity failure;

		  data <= '0';
        
        wait for 26040 ns;

        --bits de entrada

        for n in 0 to 2 loop
            data <= '1';

            wait for 26040 ns;

            data <= '0';

            wait for 26040 ns;
        end loop;
		  data <= '1';

			wait for 26040 ns;

			data <= '1';

			wait for 26040 ns;

        -- bit de paridad

        data <= '0';

        wait for 26040 ns;

        --  bit de stop
        data <= '1';

        wait for 50000 ns;

        assert bits="11010101"
            report "El número obtenido no es el deseado"
            severity failure;
        

        assert false
        report "Fin de la simulación"
            severity failure;
    end process p_stim;
end Practica1_arch;



        


