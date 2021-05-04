library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity practica6 is
    port(
        reset_n, clk: in std_logic;
        out_pins : out std_logic_vector(7 downto 0);
        in_pins : in std_logic_vector(7 downto 0)
    );
end practica6;

architecture structural of practica6 is
    signal r_data : std_logic_vector (31 downto 0);
    signal addr : std_logic_vector(31 downto 0);
    signal w_data : std_logic_vector(31 downto 0);
    signal tipo_acc : std_logic_vector(1 downto 0);
    signal l_u : std_logic;
    signal we : std_logic;
    signal dout_ram: std_logic_vector(31 downto 0);
    signal dout_PSP: std_logic_vector(7 downto 0);
    signal mid_PEP, dout_PEP: std_logic_vector(7 downto 0);
    signal p_data: std_logic_vector(31 downto 0);

begin
    i_RISCV : entity work.RISCV
    port map(
        clk => clk,
        reset_n => reset_n,
        r_data => r_data,
        addr => addr,
        w_data => w_data,
        tipo_acc => tipo_acc,
        l_u => l_u,
        we => we
    );

    i_RAM : entity work.Ram
    port map(
        addr => addr,
        din => w_data,
		tipo_acc => tipo_acc,
		l_u => l_u,
        we_ram => we and addr(31),
        clk => clk,
		dout  => dout_ram
    );

    -- PSP
    p_PSP : process(clk,reset_n,w_data)
    begin
        if reset_n = '0' then
            dout_PSP <= (others => '0');
        elsif rising_edge(clk) then
            if (we and addr(31)) = '1' then
                dout_PSP <= w_data(7 downto 0);
            end if;
        end if;
    end process;

    -- PEP

    p_PEP1: process(clk,reset_n,in_pins)
    begin
        if reset_n = '0' then
            mid_PEP <= (others => '0');
        elsif rising_edge(clk) then
            mid_PEP <= in_pins;
        end if;
    end process;

    p_PEP2: process(clk,reset_n,mid_PEP)
    begin
        if reset_n = '0' then
            dout_PEP <= (others => '0');
        elsif rising_edge(clk) then
            dout_PEP <= mid_PEP;
        end if;
    end process;

    --p_data
    p_data(31 downto 8) <= (others => '0');
    p_data(7 downto 0) <= dout_PSP when addr(2) = '0' else dout_PEP;

    r_data <= dout_ram when addr(31)= '0' else p_data;

    out_pins <= dout_PSP;

end structural;