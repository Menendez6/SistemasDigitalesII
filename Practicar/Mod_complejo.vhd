library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



architecture behavioral of Mod_complejo is
    sqr_real, sqr_img,sol : std_logic_vector(2*g_data_witdht -1 downto 0);
begin
    sqr_real <= std_logic_vector(signed(i_data_re) * signed(i_data_re));
    sqr_img <= std_logic_vector(signed(i_data_im) * signed(i_data_im));

    sol <= sqr_real + sqr_img;

    o_data <= sol(g_data_width downto 0);

    o_overflow <= '0' when unsigned(sol(g_data_width *2 -1 downto g_data_width) = 0 else '1';

    