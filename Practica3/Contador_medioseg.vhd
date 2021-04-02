library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Contador_medioseg is
    port(
        reset_n : in std_logic;
        clk     : in std_logic;
        co      : out std_logic
    );
end Contador_medioseg;

architecture behavioral of Contador_medioseg is
    signal contador : unsigned(24 downto 0);
begin
    process(reset_n,clk)
    begin
        if reset_n = '0' then
            contador <= (others => '0');
        else
            if rising_edge(clk) then
                if contador= 250000000 then
                    contador <= (others => '0');
                else
                    contador <= contador + 1;
                end if;
            end if; 
        end if;
    end process;
    co <= '1' when contador = 249999999 else '0';
end behavioral;