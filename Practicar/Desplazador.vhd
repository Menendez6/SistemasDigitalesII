library ieee;
use ieee.std_logic_1164.all;

entity Desplazador is
    port(
        e   : in std_logic_vector(15 downto 0);
        n   : in std_logic_vector(1 downto 0);
        l_r : in std_logic;
        l_a : in std_logic;
        s   : out std_logic_vector(15 downto 0)
    );
end entity Desplazador;

architecture behavioral of Desplazador is
    signal d_derecha, d_izquierda: std_logic_vector(15 downto 0);
    signal signo : std_logic;
    
begin
    d_izquierda <=  e when n="00" else 
                    e(14 downto 0) & '0' when n = "01" else
                    e(13 downto 0) & "00" when n = "10" else
                    e(12 downto 0) & "000" when n= "11";
    signo <= '0' when l_a = '0' else e(15);
    d_derecha <=    e when n = "00" else
                    signo & e(15 downto 1) when n="01" else
                    signo & signo & e(15 downto 2) when n="10" else
                    signo & signo & & signo e(15 downto 3) when n="11";
    
    s <= d_izquierda when l_r = '0' else d_derecha;
end behavioral;



                    

    
