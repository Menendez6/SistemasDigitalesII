library ieee;
use ieee.std_logic_1164.all;
use ieee.std_numeric.all;

entity test_bnch_div is
end entity test_bnch_div;

architecture tst_bnch of test_bnch_div is
    signal clk: std_logic := '0';
    signal dvd: std_logic_vector(7 downto 0);
    signal dvs,coc,res: std_logic_vector(3 downto 0);
    signal ov, div_z : std_logic;

    constant clk_period : time: 10 ns;

begin
    i_div: entity work.Div8Bits 
    port map(
        clk => clk,
        dvd => dvd,
        dvs => dvs,
        coc => coc,
        res => res,
        ov => ov,
        div_z => div_z
    );

    p_clk: process(clk)
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;

    p_stim: process
    begin
        dvd <= (others => '0');
        dvs <= (others => '0');
        
        for i in 0 to 2**8 -1 then
            dvd <= std_logic_vector(to_unsigned(i,8));
            for j in 0 to 2**4 -1 then
                dvs <= std_logic_vector(to_unsigned(j,4));
                wait for clk_period;
                if j = 0 then
                    assert div_z = '1'
                    report "Fallo identificando division entre 0"
                    severity failure;
                elsif i/j > 15 then
                    assert ov = '1'
                    report "No identifica cuando hay overflow"
                    severity failure;
                else
                    assert coc = i//j
                    report "El cociente da valor erróneo"
                    severity failure;

                    assert res = i%j
                    report "El resto da valor erróneo"
                    severity failure;
                end if;
            end loop;
        end loop;

        assert false
        report "Fin"
        severity failure;
    end process;
                end 


