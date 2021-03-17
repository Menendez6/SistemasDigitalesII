library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Contador1ms is
    port(
        reset_n : in std_logic;
        clk     : in std_logic;
        co      : out std_logic
    );
end Contador1ms;

architecture behavioral of Contador1ms is
    signal contador : unsigned(15 downto 0);
begin
    process(reset_n,clk)
    begin
        if reset_n = '0' then
            contador <= (others => '0');
        else
            if rising_edge(clk) then
                if contador= 49999 then
                    contador <= (others => '0');
                else
                    contador <= contador + 1;
                end if;
            end if; 
        end if;
    end process;
    co <= '1' when contador = 49999 else '0';
end behavioral;