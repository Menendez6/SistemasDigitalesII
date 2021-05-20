library ieee;
use ieee.std_logic_1164.all;
use ieee.std_numeric.all;

entity SumaVec_vht is
    generic(
        g_data_w : integer := 16
    );
end entity SumaVec_vht;

architecture vhd_tst of SumaVec_vht is
    signal ent_a, ent_b, sal: std_logic_vector(g_data_w -1 downto 0);
    signal a_bajo, a_alto, b_bajo, b_alto: signed(g_data_w/2 -1 downto 0);
    signal suma_baja, suma_alta: signed (g_data_w/2 -1 downto 0);

    constant c_time: time : 10 ns;
    constant val_max: integer := 2**(g_data/2 -1) -1;
    constant val_min : integer := -2**(g_data/2 -1);

begin
    i_Suma: entity work.SumaVec
    generic map(
        g_data_w => g_data_w
    );

    port map(
        ent_a => ent_a,
        ent_b => entb,
        sal => sal
    );

    for i in val_min to val_max loop
        a_bajo <= to_signed(i,g_data_w/2);
        a_alto <= to_signed(i,g_data_w/2);
        for j in val_min to val_max loop
            b_bajo <= to_signed(j,g_data_w/2);
            b_alto <= to_signed(j,g_data_w/2);

            suma_baja <= a_bajo + b_bajo;
            suma_alta <= a_alto + b_alto;

            if suma_baja = i + j then
                assert sal = std_logic_vector(suma_baja) & std_logic_vector(suma_alta);



