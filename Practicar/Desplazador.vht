library ieee;
use ieee.std_logic_1164.all;

entity Desplazador_vhd_tst is
end Desplazador_vhd_tst;

architecture tb of Desplazador_vhd_tst is
    signal e : std_logic_vector(15 downto 0);
    signal n : std_logic_vector(1 downto 0);
    signal l_r, l_a : std_logic;
    signal s : std_logic_vector(15 downto 0);
    signal resultado : std_logic_vector(15 downto 0);

    -- aquí declararíamos las funciones
begin
    dut: entity work.Desplazador
        port map(
            e <= e,
            n <= n,
            l_r <= l_r,
            l_s <= l_s,
            s <= s
        );
    
    p_stim: process
    begin
        wait for 5 ns;
        e <= "1010101110011101";
        wait for 5 ns;
        --empezamos desplazando a izquierda
        for i in 0 to 3 loop
            n<std_logic_vector(to_unsigned(i,2));
            l_r <= '0';
            wait for 5 ns;

            resultado <= ShiftLeft(e,n);
            wait for 5 ns;

            assert resultado = s
                report ""
                severity failure;

            wait for 100 ns;

            l_r <= '1';
            l_s <= '0';
            wait for 5 ns;

            resultado <= ShiftRightLogic(e,n);
            wait for 5 ns;

            assert resultado = s
                report ""
                severity failure;

            l_r <= '1';
            l_s <= '1';
            wait for 5 ns;

            resultado <= ShiftRightArith(e,n);
            wait for 5 ns;

            assert resultado = s
                report ""
                severity failure;
        end loop;
    end process;
        end tb;
