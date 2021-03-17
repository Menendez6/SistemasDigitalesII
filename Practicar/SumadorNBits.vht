library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SumadorNbits_vhd_tst is
end SumadorNbits_vhd_tst;

architecture SumadorNbits_arch of SumadorNBits_vhd_tst is
    signal a,b : std_logic_vector(1 downto 0);
    signal s : std_logic_vector(1 downto 0);
    variable media : std_logic_vector (2 downto 0);
    signal c_out : std_logic;

begin
    dut : entity work.SumadorNBits
        generic map(
            g_data_w => 2);
        port map(
            a => a;
            b => b;
            s => s;
            c_out => c_out
        );
    p_stim: process
    begin
        for i in 0 to 3 loop
            a <= std_logic_vector(to_unsigned(i,2));
            for j in 0 to 3 loop
                b <= std_logic_vector(to_unsigned(j,2));

                media := a+b;

                wait for 100 ns;

                assert s = media(1 downto 0)
                    report "La salida no es la suma de las 2"
                    severity failure;
                
                assert c_out = media(2)
                report "El acarreo no es el que debe"
                severity failure;
            end loop;
        end loop;

        assert false
        report "Fin de la simulacion"
        severity failure;
    end process;
end SumadorNbits_arch;




