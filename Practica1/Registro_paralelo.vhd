library ieee;
use ieee.std_logic_1164.all;

entity Registro_paralelo is
    port(
        clk     : in std_logic;
        enable  : in std_logic;
        reset_n : in std_logic;
        entrada : in std_logic_vector(7 downto 0);
        salida  : out std_logic_vector(7 downto 0)
    );
end Registro_paralelo;

architecture behavioral of Registro_paralelo is
    signal registro : std_logic_vector(7 downto 0);
begin
    process(clk, reset_n)
    begin
        if reset_n= '0' then
            registro <= (others =>'0');
        else
            if rising_edge(clk) then
                if enable = '1' then
                    registro <= entrada;
                end if;
            end if;
        end if;
    end process;

    salida <= registro;
end behavioral;