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
    signal we_ram: std_logic;
    signal re: std_logic;
    signal paddr: std_logic_vector(3 downto 0);
    signal p_write: std_logic;
    signal pwdata: std_logic_vector(7 downto 0);
    signal psel0,psel1, psel2,psel3,penable: std_logic;
    signal dout_puente: std_logic_vector(31 downto 0);
    signal dato_val: std_logic;
    signal pwrite: std_logic;
    signal DIN2, DIN3: std_logic_vector(7 downto 0);

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
        we => we,
        re => re,
        dato_val => dato_val
    );
    we_ram <= we when addr(31 downto 12) = "0000000000000000000" else '0';

    i_RAM : entity work.Ram
    port map(
        addr => addr(11 downto 0),
        din => w_data,
		tipo_acc => tipo_acc,
		l_u => l_u,
        we_ram => we_ram,
        clk => clk,
		dout  => dout_ram
    );

    i_Puente: entity work.puente
    port map(
        reset_n => reset_n,
        clk => clk,
        addr => addr,
        re => re, -- hay que añadir esta señal al RISCV
        we => we,
        paddr_out => paddr,
        WE_out => pwrite,
        din => w_data(7 downto 0),
        pwdata => pwdata,
        psel0 => psel0,
        psel1 => psel1,
        psel2 => psel2,
        psel3 => psel3,
        penable => penable,
        --dato_val : out std_logic; dato val y penable es lo mismo
        dout => dout_puente,
        DIN0 => dout_PSP,
        DIN1 => dout_PEP, 
        DIN2 => DIN2, -- de momento las dejo a null hasta que tenga todo (UART y temporizador)
        DIN3 => DIN3
    );

    -- PSP
    p_PSP : process(clk,reset_n,w_data)
    begin
        if reset_n = '0' then
            dout_PSP <= (others => '0');
        elsif rising_edge(clk) then
            if (pwrite and psel0 and penable) = '1' then
                dout_PSP <= pwdata;
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

    --muxes
    --M2
    dato_val <= penable when addr(31) = '1' else '1';

    --M1
    r_data <= dout_puente when addr(31) = '1' else dout_ram;
    

    out_pins <= dout_PSP;
   
end structural;