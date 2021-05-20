library ieee;
use ieee.std_logic_1164.all;

entity Desplazador_vhd_tst is
end Desplazador_vhd_tst;

architecture tb of Desplazador_vhd_tst is
    signal e : std_logic_vector(15 downto 0);
    signal n : std_logic_vector(1 downto 0);
    signal l_r, l_a : std_logic;
    signal s : std_logic_vector(15 downto 0);
    signal resultado : std_logic_vector(15 downto 0);

    -- aquí declararíamos las funciones
begin
    dut: entity work.Desplazador
        port map(
            e <= e,
            n <= n,
            l_r <= l_r,
            l_s <= l_s,
            s <= s
        );
    
    p_stim: process
        function ShiftLeftLogic(e: std_logic_vector, n : std_logic_vector)
            return std_logic_vector is
            variable dato_out : std_logic;
        begin
            dato_out <=  e when n="00" else 
                        e(14 downto 0) & '0' when n = "01" else
                        e(13 downto 0) & "00" when n = "10" else
                        e(12 downto 0) & "000" when n= "11";
            return dato_out;
        end function ShiftLeftLogic;

        -- ...

    begin

        e <= (others => '0');
        n <= (others => '0');
        l_r <= '0';
        l_a <= '0';

        for i in 0 to (2**16 -1) then
            e <= std_logic_vector(to_unsigned(i,16));
            for j in 0 to 3 then
                n <= std_logic_vector(j,2);
                -- primero a izquierdas
                l_r <= '0';
                wait for c_time;
                assert s = ShiftLeftLogic (e,n)
                report "Fallo en el desplazamiento a izquierdas"
                severity failure;
                
        
    end process;
        end tb;
