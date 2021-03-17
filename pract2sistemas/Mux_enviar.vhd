library ieee;
use ieee.std_logic_1164.all;

entity Mux_enviar is
    port(
        s_registro : in std_logic;
        paridad    : in std_logic;
        sel        : in std_logic_vector(1 downto 0);
        s_serie    : out std_logic
    );
end Mux_enviar;

architecture behavioral of Mux_enviar is
begin

    with sel select
        s_serie <=
        '0' when "00",
        s_registro when "01",
        paridad when "10",
        '1' when "11",
        '1' when others;
        
end behavioral;
