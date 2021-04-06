library ieee;
use ieee.std_logic_1164.all;

entity InmGen_vhd_tst is
end InmGen_vhd_tst;

architecture tb of InmGen_vhd_tst is
    signal inst : std_logic_vector(31 downto 0);
    signal tipo_inst : std_logic_vector(2 downto 0);
    signal mask_b0 : std_logic;
    signal inm : std_logic_vector(31 downto 0);
    signal ext : std_logic_vector(20 downto 0);
    signal ext2 : std_logic_vector(11 downto 0);

    constant c_time : time:= 1 ns;

begin
    i1 : entity work.InmGen
        port map(
            inst => inst,
            tipo_inst => tipo_inst,
            mask_b0 => mask_b0,
            inm => inm
        );

    p_stim : process

    begin
        -- inicializamos las entradas
        inst <= (others => '0');
        tipo_inst <= (others => '0');
        mask_b0 <= '1';

        --no me deja hacerlo con 32
        for i in 0 to (2**16-1) loop
            wait for c_time;
            inst <= std_logic_vector(to_unsigned(i,32));

            wait for c_time;
            ext <= (others => inst(31));

            tipo_inst <= "000";

            wait for c_time;

            assert inm = ext & inst(30 downto 20)
                report "Tipo I no va bien"
                severity failure;

            wait for c_time;
            tipo_inst <= "001";
            wait for c_time;

            assert inm = ext & inst(30 downto 25) & inst(11 downto 7)
                report "Tipo S no va bien"
                severity failure;

            wait for c_time;
            ext(0) <= inst(7);
            tipo_inst <= "010";
            wait for c_time;
            
            assert inm = ext & inst(30 downto 25) & inst(11 downto 8) & '0'
                report "Tipo B no va bien"
                severity failure;

            wait for c_time;
            ext2 <= (others => '0');
            tipo_inst <= "011";
            wait for c_time;

            assert inm = inst(31 downto 12) & ext2
                report "Tipo U no va bien"
                severity failure;

            wait for c_time;
            ext2 <= (others => inst(31));
            tipo_inst <= "100";
            wait for c_time;

            assert inm = ext2 & inst(19 downto 12) & inst(20) & inst(30 downto 21) & '0'
                report "Tipo J no va bien"
                severity failure;

        end loop;

        assert false
            report "Fin de la simulación"
            severity failure;

    end process;
end architecture tb;

            


            


