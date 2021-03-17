LIBRARY ieee;                                               
USE ieee.std_logic_1164.all; 

ENTITY Unidad_control_vhd_tst IS
END Unidad_control_vhd_tst;
ARCHITECTURE Unidad_control_arch OF Unidad_control_vhd_tst IS
    signal clk : std_logic:='0';
    signal reset_n :std_logic;
    signal transmi :  std_logic;
    signal en_registro : std_logic;
    signal c_d         : std_logic;
    signal en_paridad  : std_logic;
    signal selector    : std_logic_vector(1 downto 0);
    signal back_to_0   : std_logic;
    constant clk_per : time:= 10 ns;

    component Unidad_control is
        port(
        clk : in std_logic;
        reset_n : in std_logic;
        transmi : in std_logic;
        en_registro : out std_logic;
        c_d         : out std_logic;
        en_paridad  : out std_logic;
        selector    : out std_logic_vector(1 downto 0);
        back_to_0   : out std_logic
        );
    end component;
begin
    i1 : Unidad_control
    port map(
        clk => clk,
        reset_n => reset_n,
        transmi => transmi,
        en_registro => en_registro,
        c_d         => c_d,
        en_paridad  => en_paridad,
        selector    => selector,
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

    p_stim : process
    begin
        transmi <= '1';
        wait until reset_n = '1';
        wait for 5 ns;
        transmi <= '0';
        wait for 20 ns;
       -- assert selector = "00"
        --    report "No detecta el flanco de bajada"
        --    severity failure;
        wait for 26020 ns;
        for i in 0 to 4 loop
            wait for 26040 ns;
            wait for 26040 ns;
        end loop;
        
        assert false
            report "Fin de la simulación"
            severity failure;
    end process p_stim;
end Unidad_control_arch;
