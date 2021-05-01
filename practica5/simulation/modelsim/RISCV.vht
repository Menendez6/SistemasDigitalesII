library ieee;
use ieee.std_logic_1164.all;

entity RISCV_tst_bnch is
end RISCV_tst_bnch;

architecture tst of RISCV_tst_bnch is
    signal clk: std_logic := '0';
    signal reset_n: std_logic;
    constant c_clk_period: time := 5 ns;

begin
    i1 : entity work.RISCV
    port map(
        clk => clk,
        reset_n => reset_n
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
        wait until reset_n = '1';
        wait for 5 ns;

        assert false
        report "Se acabó mamahuevo"
        severity failure;
    end process;

end tst;
