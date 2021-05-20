library ieee;
use ieee.std_logic_1164.all;
use ieee.std_numeric.all;

entity SumaVec is
    generic(
        g_data_w : integer := 16
    );
    port(
        ent_a : in std_logic_vector(g_data_w -1 downto 0);
        ent_b : in std_logic_vector(g_data_w -1 downto 0);
        sal : out std_logic_vector(g_data_w -1 downto 0)
    );
end entity SumaVec;

architecture behavioral of SumaVec is
    signal suma_baja_9 : signed(g_data_w/2 downto 0);
    signal suma_alta_9 : signed(g_data_w/2 downto 0);
    signal suma_baja_8 : signed(g_data_w/2-1 downto 0);
    signal suma_alta_8 : signed(g_data_w/2-1 downto 0);
    signal salida_baja: std_logic_vector(g_data_w/2 - 1 downto 0);
    signal salida_alta: std_logic_vector(g_data_w/2 - 1 downto 0);
begin
    suma_baja_9 <= signed(ent_a(g_data_w/2 -1 downto 0)) + signed(ent_b(g_data_w/2 -1 downto 0));
    suma_baja_8 <= signed(ent_a(g_data_w/2 -1 downto 0)) + signed(ent_b(g_data_w/2 -1 downto 0));
    salida_baja <= std_logic_vector(suma_baja_8) when suma_baja8 = suma_baja_9 else
                   std_logic_vector(to_signed(2**(g_data_w/2-1)-1,g_data_w) when suma_baja_9 > 0 else
                   std_logic_vector(to_signed(-2**(g_data_w/2-1)-1,g_data_w) when suma_baja_9 < 0 ;

    suma_alta_9 <= signed(ent_a(g_data_w/2 -1 downto 0)) + signed(ent_b(g_data_w/2 -1 downto 0));
    suma_alta_8 <= signed(ent_a(g_data_w/2 -1 downto 0)) + signed(ent_b(g_data_w/2 -1 downto 0));
    salida_alta <= std_logic_vector(suma_alta_8) when suma_alta8 = suma_alta_9 else
                    std_logic_vector(to_signed(2**(g_data_w/2-1)-1,g_data_w) when suma_alta_9 > 0 else
                    std_logic_vector(to_signed(-2**(g_data_w/2-1)-1,g_data_w) when suma_alta_9 < 0 ;

    sal <= salida_alta & salida_baja;

end behavioral;

