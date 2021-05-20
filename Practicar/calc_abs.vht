entity calc_abs is
end calc_abs;

architecture tst_bnch of calc_abs is
    constant g_data_width: integer := 6;
    signal i_data_re: std_logic_vector(g_data_width -1 downto 0);
    signal i_data_im: std_logic_vector(g_data_width -1 downto 0);
    signal o_data : std_logic_vector(g_data_width -1 downto 0);
    signal o_overflow: std_logic;
    signal resultado : std_logic_vector(g_data_width*2 -1 downto 0);

begin
    i_calcAbs : entity work.calc_abs
    generic map(
        g_data_width => g_data_width
    );
    port map(
        i_data_re => i_data_re,
        i_data_im => i_data_im,
        o_data => o_data,
        o_overflow => o_overflow
    );

    i_data_re <= (others => '0');
    i_data_im <= (others => '0');
    
    wait for 30 ns;

    for i in 0 to (2**g_data_width -1) loop
        i_data_re <= std_logic_vector(to_signed(i,g_data_width));
        for j in 0 to (2**g_data_width -1) loop
            i_data_im <= std_logic_vector(to_signed(j,g_data_width));
            resultado <= std_logic_vector(signed(i_data_re)**2 + signed(i_data_im)**2);
            wait for 5 ns;
            assert o_data = resultado(g_data_width - 1 downto 0)
                report "Fallo en la multiplicación"
                severity failure;

            if resultado(g_data_width*2 -1 downto g_data_width) = 0 then
                assert o_overflow = '0'
                report "Fallo en el overflow"
                severity failure;
            else
                assert o_overflow = '1' 
                report "Fallo en el overflow"
                severity failure;
            end if;
        end loop;
    end loop;

    assert false
    report "Fin de la simulación"
    severity failure;
end architecture tst_bnch;
