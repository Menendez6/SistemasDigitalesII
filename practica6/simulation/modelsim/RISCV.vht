library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RISCV_tst_bnch is
end RISCV_tst_bnch;

architecture tst of RISCV_tst_bnch is
    signal clk: std_logic := '0';
    signal reset_n: std_logic;
    signal in_pins: std_logic_vector(7 downto 0);
    signal out_pins: std_logic_vector(7 downto 0);
    constant c_clk_period: time := 5 ns;

begin
    i1 : entity work.practica6
    port map(
        clk => clk,
        reset_n => reset_n,
        in_pins => in_pins,
        out_pins=> out_pins
    );

    p_clk : process
    begin
        clk<='0';
        wait for c_clk_period/2;
        clk<='1';
        wait for c_clk_period/2;
    end process;

    p_reset_n: process
    begin 
        reset_n<='0';
        wait for 10 ns;
        reset_n<='1';
        wait;
    end process;

    p_stim: process
    begin
        in_pins <= "00000000";
        wait until reset_n = '1';
        wait for 5 ns;


        for i in 0 to (2**8 -1) loop
            in_pins <= std_logic_vector(to_unsigned(i,8));
            wait for 150 ns;
        
            --assert out_pins = std_logic_vector(to_unsigned(i,8))
            --   report "Error"
            --   severity failure;
        end loop;

        assert false
        report "Se acabó mamahuevo"
        severity failure;
    end process;

end tst;
