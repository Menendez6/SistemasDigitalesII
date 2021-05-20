library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Control_puente is
    port(
        reset_n : in std_logic;
        Trf : in std_logic;
        clk: in std_logic;
        en_dec: out std_logic;
        penable: out std_logic
    );
end Control_puente;

architecture behavioral of Control_puente is
    type t_estado is (IDLE,SETUP,ENABLE);

    signal estado_act, estado_sig: t_estado;
begin
    TransicionEstados: process(estado_act, Trf)
    begin
        estado_sig <= estado_act;
        case estado_act is
            when IDLE => 
                if Trf = '1' then
                    estado_sig <= SETUP;
                end if;
            when SETUP => 
                estado_sig <= ENABLE;
            when ENABLE => 
                if Trf = '1' then
                    estado_sig <= SETUP;
                elsif Trf = '0' then
                    estado_sig <= IDLE;
                end if;
        end case;
    end process;

    CambioEstados: process(clk, reset_n)
    begin
        if reset_n = '0' then
            estado_act <= IDLE;
        elsif rising_edge(clk) then
            estado_act <= estado_sig;
        end if;
    end process;


    Salidas: process(estado_act)
    begin
        en_dec <= '0';
        penable <= '0';
        case estado_act is
            when IDLE =>
            when SETUP =>
                en_dec <= '1';
            when ENABLE => 
                en_dec <= '1';
                penable <= '1';
        end case;
    end process;

end behavioral;




