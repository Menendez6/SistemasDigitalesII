library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contador_lgmsg is
    port(
        reset_n : in std_logic;
        clk     : in std_logic;
        en      : in std_logic;
        salida   : out std_logic_vector(7 downto 0) 
    );
end contador_lgmsg;

architecture behavioral of contador_lgmsg is
    signal contador : unsigned(7 downto 0);

begin

    process(reset_n,clk)
    begin
        if reset_n = '0' then
            contador <= (others => '0');
        else
            if rising_edge(clk) then
                if en='1' then
                    if contador= 15 then --Cambiamos este número dependiendo de la longitud del mensaje
                        contador <= (others => '0');
                    else
                        contador <= contador + 1;
                    end if;
                end if;
            end if; 
        end if;
    end process;

    salida <= std_logic_vector(contador);

end behavioral;