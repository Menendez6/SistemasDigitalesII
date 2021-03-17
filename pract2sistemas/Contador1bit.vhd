library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Contador1bit is
    port(
        reset_n : in std_logic;
        clk     : in std_logic;
        en      : in std_logic;
		co 		 : out std_logic;
        back_to_0 : in std_logic
    );
end Contador1bit;

architecture behavioral of Contador1bit is
    signal contador : unsigned(11 downto 0);

begin

    process(reset_n,clk)
    begin
        if reset_n = '0' then
            contador <= (others => '0');
        else
            if rising_edge(clk) then
                if en='1' then
                    if contador= 2604 then
                        contador <= (others => '0');
                    else
                        contador <= contador + 1;
                    end if;
                elsif back_to_0 = '1' then
                    contador <= (others => '0');
                end if;
            end if; 
        end if;
    end process;

    co <= '1' when contador = 2604 and en = '1' else '0';

end behavioral;