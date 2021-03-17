library ieee;
use ieee.std_logic_1164.all;

entity Comprobar_paridad_vhd_tst is
end Comprobar_paridad_vhd_tst;

architecture Comprobar_paridad_arch of Comprobar_paridad_vhd_tst is
    SIGNAL paridad : std_logic;
	SIGNAL clk : STD_LOGIC:='0';
	SIGNAL data : STD_LOGIC;
	SIGNAL enable : STD_LOGIC;
	SIGNAL reset_n : STD_LOGIC;
    signal back_to_0 : std_logic;
    constant clk_per : time := 20 ns;
    
begin

    i1 : entity work.Comprobar_paridad
        port map(
            paridad => paridad,
            clk => clk,
            data => data,
            enable => enable,
            reset_n => reset_n,
            back_to_0 => back_to_0
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

    p_stim : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
    BEGIN
        data <= '0';
        enable <= '0';
        back_to_0 <= '0';

        wait until reset_n = '1';

        wait for 10 ns;

        for n in 0 to 3 loop

            data <= '1';
            enable <= '1';
            wait for clk_per;

            enable <= '0';

            wait for 100 ns;

            data <= '0';
            enable <= '1';

            wait for clk_per;

            enable <= '0';

            wait for 100 ns;
        end loop;

        data <= '1';
        enable <= '1';
        wait for clk_per;

        enable <= '0';

        wait for 100 ns;

        assert paridad = '0'
        report "Error: salida de paridad errónea"
            severity failure;
        
        assert false
        report "Fin de la simulación"
            severity failure;
            
            -- code executes for every event on sensitivity list                                                          
    END PROCESS p_stim;                                          
END Comprobar_paridad_arch;