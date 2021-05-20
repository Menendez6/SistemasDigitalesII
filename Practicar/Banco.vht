entity Banco is
end entity Banco;

architecture tst_bnch of Banco is
    signal addrA, addrB, addrW: std_logic_vector(4 downto 0);
    signal a, b, din: std_logic_vector(31 downto 0);
    signal en_banco,clk,reset_n: std_logic;

    constant clk_period: time := 10 ns;

begin
    i_Banco: entity work.Banco
    port map(
        addrA => addrA,
        addrB => addrB,
        addrW => addrW,
        regA => a,
        regB => b,
        d_in => din,
        clk => clk,
        reset_n => reset_n,
        en => en_banco
    );

    p_clk: process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;

    p_reset: process
        reset_n <= '0';
        wait for 100 ns;
        reset_n <= '1';
        wait;
    end process;

    p_stim: process
    begin
        addrA <= (others => '0');
        addrB <= (others => '0');
        addrW <= (others => '0');
        din <= (others => '0');
        en <= '0';

        wait until reset_n = '1';

        for i in 0 to 31 loop
            addrW <= std_logic_vector(to_unsigned(i,5));
            addrA <= std_logic_vector(to_unsigned(i,5));
            addrB <= std_logic_vector(to_unsigned(i,5));
            for j in 0 to 2**32 -1 loop
                din <= std_logic_vector(to_unsigned(j,5));
                en <= '1';

                wait for clk_period;

                if i = 0 then
                    assert a = (others => '0')
                    report "Fallo en el registro 0 a"
                    severity failure;

                    assert b = (others => '0')
                    report "Fallo en el registro 0 b"
                    severity failure;
                else
                    assert a = din
                    report "Fallo en registro a"
                    severity failure;

                    assert b = din
                    report "Fallo en el registro b"
                    severity failure;
                end if;
            end loop;
        end loop;
        assert false
        report "fin de la sim"
        severity failure;
    end process;
end architecture;


