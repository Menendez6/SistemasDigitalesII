LIBRARY ieee;                                               
USE ieee.std_logic_1164.all; 

ENTITY Registrops8_vhd_tst IS
END Registrops8_vhd_tst;
ARCHITECTURE Registrops8_arch OF Registrops8_vhd_tst IS

    signal clk: std_logic:='0';
    signal reset_n : std_logic;
    signal enable    : std_logic;
    signal c_d       : std_logic;
    signal s_s   : std_logic;
    signal e_p      : std_logic_vector(7 downto 0);
    constant clk_per : time:= 10 ns;

    component Registrops8 is
        port(
            clk : in std_logic;
            reset_n : in std_logic;
            enable    : in std_logic;
            c_d         : in std_logic;
            s_s           : out std_logic;
            e_p        : in std_logic_vector(7 downto 0)
        );
    end component;

begin

    i1 : Registrops8
    port map(
        clk => clk,
        reset_n => reset_n,
        enable => enable,
        c_d => c_d,
        s_s => s_s,
        e_p => e_p
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
        e_p <= "00000000";
        enable <= '0';
        c_d <= '0';
        wait until reset_n = '1';
        wait for 5 ns;
        e_p <= "10101010";
        enable <= '1';
        wait for clk_per;
        enable <= '0';
        c_d <= '1';
        wait for 100 ns;
        for n in 0 to 7 loop
            enable <= '1';
            wait for clk_per;
            assert s_s = '0';
            enable <= '0';
            wait for 100 ns;
        end loop;
        assert false
            report "Fin de la simulación"
            severity failure;

    end process p_stim;
end Registrops8_arch;

        



        