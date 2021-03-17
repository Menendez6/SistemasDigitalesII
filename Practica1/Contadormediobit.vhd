library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Contadormediobit is
    port(
        reset_n : in std_logic;
        clk     : in std_logic;
        en      : in std_logic;
        co      : out std_logic
    );
end Contadormediobit;

architecture behavioral of Contadormediobit is
    signal contador : unsigned(10 downto 0);

begin

    process(reset_n,clk)
    begin
        if reset_n = '0' then
            contador <= (others => '0');
        else
            if rising_edge(clk) then
                if en='1' then
                    if contador= 1301 then
                        contador <= (others => '0');
                    else
                        contador <=contador+1;
                    end if;
                end if;
            end if; 
        end if;
    end process;

    co<= '1' when contador =1301 and en='1' else '0';
end behavioral;