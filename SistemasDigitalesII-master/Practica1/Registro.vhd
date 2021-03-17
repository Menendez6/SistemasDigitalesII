library ieee;
use ieee.std_logic_1164.all;

entity Registro is
    port(
        clk     : in std_logic;
        enable  : in std_logic;
        reset_n : in std_logic;
        data    : in std_logic;
        bits    : out std_logic_vector(7 downto 0)
    );
end Registro;

architecture behavioral of Registro is
    signal registro : std_logic_vector(7 downto 0);
begin
    process(clk, reset_n)
    begin
        if reset_n= '0' then
            registro <= (others =>'0');
        else
            if enable = '1' then
                if rising_edge(clk) then
                    registro(7) <= data;
                    registro(6 downto 0) <= registro(7 downto 1);
                end if;
            end if;
        end if;
    end process;

    bits <= registro(7 downto 0);
end behavioral;

