LIBRARY ieee;                                               
USE ieee.std_logic_1164.all; 

ENTITY Controlar_paridad_vhd_tst IS
END Controlar_paridad_vhd_tst;
ARCHITECTURE Controlar_paridad_arch OF Controlar_paridad_vhd_tst IS

    signal clk: std_logic:='0';
    signal reset_n : std_logic;
    signal enable    : std_logic;
    signal back_to_0    : std_logic;
    signal data       : std_logic;
    signal paridad   : std_logic;
    constant clk_per : time:= 10 ns;

    component Controlar_paridad is
        port(
            clk : in std_logic;
            reset_n : in std_logic;
            enable    : in std_logic;
            back_to_0   : in std_logic;
            data        : in std_logic;
            paridad     : out std_logic
        );
    end component;

begin

    i1 : Controlar_paridad
    port map(
        clk => clk,
        reset_n => reset_n,
        enable => enable,
        back_to_0 => back_to_0,
        data => data,
        paridad => paridad
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
        data <= '0';
        back_to_0 <= '0';
        enable <= '0';
        wait until reset_n = '1';
        wait for 5 ns;
        for n in 0 to 3 loop
            enable <= '1';
            data <= '1';
            wait for clk_per;
            enable <= '0';
            wait for 100 ns;
            enable <= '1';
            data <= '0';
            wait for clk_per;
            enable <= '0';
            wait for 100 ns;
        end loop;
        assert paridad = '1'
            report "La paridad tiene un valor erróneo"
            severity failure;
        wait for 100 ns;
        back_to_0 <= '1';
        wait for 100 ns;
        assert paridad = '1'
            report "La b no vuelve a 0"
            severity failure;
        wait for 100 ns;
        assert false
            report "Fin"
            severity failure;
    end process p_stim;
end Controlar_paridad_arch;