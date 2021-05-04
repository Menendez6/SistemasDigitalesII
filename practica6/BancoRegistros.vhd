library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity BancoRegistros is
    generic(
        length : integer := 32
    );
    port(
        addrA, addrB, addrW : in std_logic_vector(4 downto 0); 
        d_in : in std_logic_vector(length -1 downto 0);
        clk, reset_n, en : in std_logic;
        regA, regB : out std_logic_vector(length -1 downto 0)
    );
end BancoRegistros;

architecture behavioral of BancoRegistros is
    type t_reg is array(0 to 31) of std_logic_vector(length -1 downto 0);
    signal reg : t_reg;

    begin
        --Decodificador + registros (escritura)
        p_w : process(clk, reset_n)
        begin
            if reset_n = '0' then
                reg <= (others => (others => '0'));
            else
                if rising_edge(clk) then
                    for i in 1 to 31 loop
                        if i = to_integer(unsigned(addrW)) and en = '1' then
                            reg(i) <= d_in;
                        end if;
                    end loop;
                end if;
            end if;
        end process;
        

        -- Muxes
        regA <= reg(to_integer(unsigned(addrA)));
        regB <= reg(to_integer(unsigned(addrB)));
        

end behavioral;