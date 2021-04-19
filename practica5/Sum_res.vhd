library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Sum_res is
    generic(
        generic_length : integer
    );
	port(
		a,b	    : in std_logic_vector(generic_length downto 0); --Entrada
		s		: out std_logic_vector(generic_length-1 downto 0); --Salida
		s_r	    : in std_logic_vector(3 downto 0);
		sig		: out std_logic); --Acarreo de salida
end Sum_res;

architecture behavioral of Sum_res is
    signal salida : unsigned(generic_length downto 0);

begin
    salida <= unsigned(a) + unsigned(b) when s_r = "0000" else unsigned(a) - unsigned(b);

    sig <= salida(generic_length);
    s <= std_logic_vector(salida(generic_length -1 downto 0));
end behavioral;
