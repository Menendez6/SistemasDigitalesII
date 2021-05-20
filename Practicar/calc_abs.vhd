library ieee;
use ieee.std_logic_1164.all;
use ieee.std_numeric.all;


entity calc_abs is
    generic (
        g_data_width : integer := 16
    );
    port(
        i_data_re: in std_logic_vector(g_data_width -1 downto 0);
        i_data_im: in std_logic_vector(g_data_width -1 downto 0);
        o_data : out std_logic_vector(g_data_width -1 downto 0);
        o_overflow: out std_logic
    );
end calc_abs;

architecture behavioral of calc_abs is
    signal i_data_re_sqr, i_data_im_sqr : signed(2*g_data_width -1 downto 0);
    signal o_data_grande : unsigned(2*g_data_width -1 downto 0);

begin
    i_data_re_sqr <= signed(i_data_re) * signed(i_data_re);
    i_data_im_sqr <= signed(i_data_im) * signed(i_data_im);
    o_data_grande <= i_data_re_sqr + i_data_im_sqr;
    o_data <= std_logic_vector(o_data_grande(g_data_width -1 downto 0));
    o_overflow <= '0' when o_data = std_logic_vector(o_data_grande) else '1';
end behavioral;


