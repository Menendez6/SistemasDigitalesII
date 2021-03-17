library ieee;
use ieee.std_logic_1164.all;

entity Registro_grande is
    port(
        clk: in std_logic;
        enable  : in std_logic;
        entrada : in std_logic_vector(7 downto 0);
        salida : out std_logic_vector(63 downto 0)
    );
end Registro_grande;

architecture behavioral of Registro_grande is
    signal