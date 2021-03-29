library ieee;
use ieee.std_logic_1164.all;

entity Registro_grande is
    port(
        clk: in std_logic;
        reset_n: in std_logic;
        enable  : in std_logic;
        entrada : in std_logic_vector(7 downto 0);
        salida : out std_logic_vector(63 downto 0)
    );
end Registro_grande;

architecture behavioral of Registro_grande is
    s_registro : std_logic_vector(63 downto 0);
begin
    process(clk,reset_n)
    begin
        if reset_n = '0' then
            s_registro <= (others => '0');
        else
            if rising_edge(clk) then
                if enable = '1' then
                    s_registro(7 downto 0) <= entrada;
                    s_registro(63 downto 8) <= s_registro(55 downto 0);
                end if;
            end if;
        end if;
    end process;
    salida <= s_registro;
end behavioral;