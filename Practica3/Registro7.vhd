library ieee;
use ieee.std_logic_1164.all;

entity Registro7 is
    port(
        clk     : in std_logic;
        enable  : in std_logic;
        reset_n : in std_logic;
        e       : in std_logic_vector(7 downto 0);
        s       : out std_logic_vector(7 downto 0)
    );
end Registro7;

architecture behavioral of Registro is
begin
    process(clk, reset_n)
    begin
        if reset_n= '0' then
            s <= (others =>'0');
        else
            if rising_edge(clk) then
                if enable = '1' then
                    s <= e;
                end if;
            end if;
        end if;
    end process;

end behavioral;