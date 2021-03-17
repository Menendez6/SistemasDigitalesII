library ieee;
use ieee.std_logic_1164.all;

entity Multiplexor is
    port(
        reg0    : in std_logic_vector(7 downto 0);
        reg1    : in std_logic_vector(7 downto 0);
        reg2    : in std_logic_vector(7 downto 0);
        reg3    : in std_logic_vector(7 downto 0);
        reg4    : in std_logic_vector(7 downto 0);
        reg5    : in std_logic_vector(7 downto 0);
        reg6    : in std_logic_vector(7 downto 0);
        reg7    : in std_logic_vector(7 downto 0);
        sel     : in std_logic_vector(2 downto 0);
        salida  : out std_logic_vector(7 downto 0)
    );
end Multiplexor;

architecture behavioral of Multiplexor is

begin
    with sel select
        salida <=
        reg0 when "000",
        reg1 when "001",
        reg2 when "010",
        reg3 when "011",
        reg4 when "100",
        reg5 when "101",
        reg6 when "110",
        reg7 when "111",
        "00000000" when others;
end behavioral;