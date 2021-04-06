library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity BancoRegistros_vhd_tst is
end BancoRegistros_vhd_tst;

architecture tb of BancoRegistros_vhd_tst is
    constant length: integer := 4; --Para simular vamos a usar de d_in de 4 bits
    signal addrA, addrB, addrW : std_logic_vector(4 downto 0); 
    signal d_in : std_logic_vector(length -1 downto 0);
    signal clk : std_logic := '0';
    signal reset_n, en : std_logic;
    signal regA, regB : std_logic_vector(length -1 downto 0);
    signal ceros : std_logic_vector(length -1 downto 0) := (others => '0');

    constant c_time: time := 2 ns;

begin
    i1 : entity work.BancoRegistros
        generic map(
            length => length
        )
        port map(
           addrA => addrA,
           addrB => addrB,
           addrW => addrW,
           d_in => d_in,
           clk => clk,
           reset_n => reset_n,
           en => en,
           regA => regA,
           regB => regB
        );

    p_clk : process
    begin
        clk<='0';
        wait for c_time/2;
        clk<='1';
        wait for c_time/2;
    end process;
		
	p_reset_n: process
		begin 
			reset_n<='0';
			wait for 20 ns;
			reset_n<='1';
			wait;
		end process;

    p_stim : process

    begin
        --inicializamos las entradas
        addrA <= (others => '0');
        addrB <= (others => '0');
        addrW <= (others => '0');
        d_in <= (others => '0');
        en <= '0';

        wait until reset_n = '1';

        for i in 0 to 2**length -1 loop
            wait for c_time;
            d_in <= std_logic_vector(to_unsigned(i,length));
            -- vamos a testear que el 0, independientemente de lo que escribas se queda en 0
            addrW <= (others => '0');
            en <= '1';
            wait for c_time;
            en <= '0';
            addrA <= (others => '0');
            addrB <= (others => '0');

            wait for c_time;

            assert regA = ceros
                report "Fallo en la salida del regA"
                severity failure;

            assert regB = ceros
                report "Fallo en la salida del regB"
                severity failure;

            for j in 1 to 31 loop
                wait for c_time;
                addrW <= std_logic_vector(to_unsigned(j,5));
                addrA <= std_logic_vector(to_unsigned(j,5));
                addrB <= std_logic_vector(to_unsigned(j,5));
                en <= '1';
                wait for c_time;
                en <= '0';
                wait for c_time;
                 
                assert regA = d_in
                    report "Fallo en la salida del regA"
                    severity failure;

                assert regB = d_in
                    report "Fallo en la salida del regB"
                    severity failure;
            end loop;
        end loop;

        assert False
            report "Fin de la simulacion"
            severity failure;
    end process;
end tb;


