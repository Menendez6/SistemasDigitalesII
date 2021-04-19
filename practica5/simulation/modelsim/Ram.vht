library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Ram_vhd_tst is
end Ram_vhd_tst;

architecture tst_bnch of Ram_vhd_tst is
    signal addr, din: std_logic_vector(31 downto 0);
   -- addr_ram : std_logic_vector(9 downto 0); -- No necesitamos toda la addr, solo los 12 bits lsb
    --addr_mux : std_logic_vector(1 downto 0);
    signal tipo_acc : std_logic_vector(1 downto 0);
    signal l_u, we_ram: std_logic;
    signal clk: std_logic := '0';
    signal dout : std_logic_vector(31 downto 0);
    constant c_time: time := 2 ns;

begin
    i1 : entity work.Ram
    port map(
        addr => addr,
        din => din,
		tipo_acc => tipo_acc,
		l_u => l_u, 
        we_ram => we_ram,
        clk => clk,
		dout => dout
    );

    p_clk : process
    begin
        clk<='0';
        wait for c_time/2;
        clk<='1';
        wait for c_time/2;
    end process;

    p_stim : process
    begin
        --inicializamos todas las entradas
        addr <= (others => '0');
        din <= (others => '0');
        tipo_acc <= "00";
        l_u <= '0';
        we_ram <= '0';

        wait for c_time;
        -- Probamos primero la lectura del byte0
        --Primero escribimos en el byte 0
        we_ram <= '1';
        tipo_acc <= "00";
        addr(1 downto 0) <= "00";
        --Al hacer esto se debe activar el write enable de la ram0
        --Ahora vamos a ir escribiendo en cada dirección de memoria y comprobando que escribimos bien
        wait for c_time;

        tipo_acc <= "00";
        addr(1 downto 0) <= "00";
        wait for c_time;

        for i in 0 to 2**8 - 1 loop
            we_ram <= '1';
            wait for c_time;
            --Al hacer esto se debe activar el write enable de la ram0
            --Ahora vamos a ir escribiendo en cada dirección de memoria y comprobando que escribimos bien
            --cada dato lo voy a guardar en su misma dirección de memoria para no perder tiempo de simulación
            din(7 downto 0) <= std_logic_vector(to_unsigned(i,8));
            addr(11 downto 2) <= std_logic_vector(to_unsigned(i,9));
            wait for c_time;
            we_ram<= '0';
            l_u <= '1';
            wait for c_time;
            assert dout <= std_logic_vector(resize(signed(b(to_integer(unsigned(addr(1 downto 0))))),32))
                report "Fallo en la ram 0"
                severity failure;

        end loop;
    
    assert False
        report "Fin de la simulación"
        severity failure;
    end process;
end tst_bnch;



        


