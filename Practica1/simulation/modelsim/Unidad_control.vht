LIBRARY ieee;                                               
USE ieee.std_logic_1164.all; 

ENTITY Unidad_control_vhd_tst IS
END Unidad_control_vhd_tst;
ARCHITECTURE Unidad_control_arch OF Unidad_control_vhd_tst IS

    signal clk: std_logic:='0';
    signal reset_n : std_logic;
    signal data    : std_logic;
    signal paridad  : std_logic;
    signal co_medio : std_logic;
    signal en_contador  : std_logic;
    signal en_registro  : std_logic;
    signal en_paridad   : std_logic;
    signal err_paridad : std_logic;
    signal err_trama   : std_logic;
    signal en_paralelo  : std_logic;
    signal contar       : std_logic_vector(3 downto 0);
    signal back_to_0    : std_logic;
    constant clk_per : time:= 20 ns;

    component Unidad_control is
        port(
            clk : in std_logic;
            reset_n : in std_logic;
            data    : in std_logic;
            paridad : in std_logic;
            co_medio  : in std_logic;
            en_contador : out std_logic;
            en_registro : out std_logic;
            en_paridad  : out std_logic;
            err_trama : out std_logic;
            err_paridad : out std_logic;
            en_paralelo : out std_logic;
            contar      : out std_logic_vector(3 downto 0),
            back_to_0   : out std_logic
        );
    end component;

begin

    i1: Unidad_control
    port map(
        clk => clk,
        reset_n => reset_n,
        data    => data,
        paridad => paridad,
        co_medio => co_medio,
        en_contador => en_contador,
        en_registro => en_registro,
        en_paridad => en_paridad,
        err_paridad => err_paridad,
        err_trama   => err_trama,
        en_paralelo => en_paralelo,
        contar => contar,
        back_to_0   => back_to_0
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

    p_stim: process
    begin
        data <= '1';
        paridad <= '0';
        co_medio <= '0';

        wait until reset_n = '1';

        wait for 5 ns;

        -- debería empezar el programa

        data <= '0';

        wait for 60 ns;

        assert en_contador = '1'
           report "El contador no se enciende"
            severity failure;
        wait for 40 ns;
        co_medio <= '1';


        wait for clk_per;
        co_medio <= '0';
        assert en_contador = '1'
            report "El contador se para después al pasar a Espera1bit"
            severity failure;
        
        wait for 80 ns;

        for n in 0 to 3 loop
            data <= '1';

            wait for 100 ns;

            co_medio <= '1';

            wait for clk_per;

            co_medio <= '0';

            wait for 80 ns;

            data <= '0';

            wait for 100 ns;

            co_medio <= '1';

            wait for clk_per;

            co_medio <= '0';

            wait for 80 ns;
        end loop;

        -- paridad
        data <= '1';
        wait for 100 ns;
        co_medio <= '1';
        wait for clk_per;
        co_medio <= '0';
        wait for 180 ns;
        co_medio <= '1';
        wait for clk_per;
        co_medio <= '0';

        wait for 100 ns;

        assert false
            report "Fin de la simulación"
            severity failure;

    end process p_stim;
end Unidad_control_arch;  
