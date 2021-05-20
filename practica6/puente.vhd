library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity puente is
    port(
        reset_n: in std_logic;
        clk: in std_logic;
        addr: in std_logic_vector(31 downto 0);
        re, we: in std_logic;
        paddr_out: out std_logic_vector(3 downto 0);
        WE_out: out std_logic;
        din : in std_logic_vector(7 downto 0);
        pwdata: out std_logic_vector(7 downto 0);
        psel0, psel1, psel2, psel3 : out std_logic;
        penable : out std_logic;
        --dato_val : out std_logic; dato val y penable es lo mismo
        dout: out std_logic_vector(31 downto 0);
        DIN0, DIN1, DIN2, DIN3: in std_logic_vector(7 downto 0)
    );
end puente;

architecture structural of puente is
    signal paddr: std_logic_vector(5 downto 0);
    signal sal_and, en_dec: std_logic;
begin
     sal_and <= (addr(31) and re) or (addr(31) and we);


    --registros
     process(clk, reset_n, sal_and)
     begin
        if reset_n = '0' then
            paddr <= (others=> '0');
            WE_out <= '0';
            pwdata <= (others => '0');
        elsif rising_edge(clk) then
            if sal_and = '1' then
                paddr <= addr(5 downto 0);
                WE_out <= we;
                pwdata <= din;
            end if;
        end if;
    end process;

    --control
    i_control: entity work.Control_puente
    port map(
        reset_n => reset_n,
        Trf => sal_and,
        clk => clk,
        en_dec => en_dec,
        penable => penable
    );
    
    --decodificador
    psel0 <= '1' when paddr(5 downto 4) = "00" else '0';
    psel1 <= '1' when paddr(5 downto 4) = "01" else '0';
    psel2 <= '1' when paddr(5 downto 4) = "10" else '0';
    psel3 <= '1' when paddr(5 downto 4) = "11" else '0';

    --mux
    dout(31 downto 8) <= (others => '0');
    with paddr(5 downto 4) select
        dout(7 downto 0) <= 
            DIN0 when "00",
            DIN1 when "01",
            DIN2 when "10",
            DIN3 when "11",
            (others => '0') when others;

end structural;



