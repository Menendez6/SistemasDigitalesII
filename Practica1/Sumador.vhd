library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--corres el sumador cada vez que hagas el registro y cuando hayas terminado compruebas en el programa principal si
-- salida (0) es igual a 1

entity Sumador is
    port(
        enable: in std_logic;
        clk:    in std_logic;
        reset_n: in std_logic;
        data    : in std_logic;
        salida   : out std_logic_vector(3 downto 0)
    );
end Sumador;

architecture behavioral of Sumador is
    signal suma: unsigned(3 downto 0);
begin

    process(reset_n,clk)
    begin
        if reset_n = '0' then
            suma <= (others <= '0');
        else
            if rising_edge(clk) then
                if enable = '1' then
                    if data = '1' then
                        suma <= suma +1;
                    end if;
                end if;
            end if;
        end if;
    end process;

    salida <= std_logic_vector(suma);
end behavioral;
