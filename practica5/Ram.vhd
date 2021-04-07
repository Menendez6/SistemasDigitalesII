library ieee;
use ieee.std_logic_1164.all;

entity Ram is
	port(
		addr, din: in std_logic_vector(31 downto 0);
		tipo_acc : in std_logic_vector(1 downto 0);
		l_u, we_ram,clk: in std_logic;
		dout : out std_logic_vector(31 downto 0)	
	);
end Ram;

architecture arch_ram of Ram is
	type t_byte is array(0 to 3) of std_logic_vector(7 downto 0);
	signal b: t_byte;
	signal b_sal: std_logic_vector(7 downto 0);
	signal we_b: std_logic_vector(3 downto 0);
	signal we_h: std_logic_vector(1 downto 0);
	signal we_w: std_logic;
	
begin
	--Escritura
	p_write: process
		begin
			if we_ram = '1' then
				if tipo_acc = "00" then
					we_b(to_integer(addr(1 downto 0))) <= '1';
				elsif tipo_acc = "01" then
					we_h(to_integer(addr(1))) <= '1';
				elsif tipo_acc = "10" then
					we_w <= '1';
				end if;
			end if;
		end process;
		
	-- Byte 0
	i_byte0: entity work.ram_core
		port map(
		clk => clk,
		din => din(7 downto 0),
		addr => addr(11 downto 2), 
		we  => we_b(0) or we_h(0) or we_w,
		dout  => b(0)
		);
		
	-- Byte1
	i_byte1: entity work.ram_core
		port map(
		clk => clk,
		din => din(7 downto 0) when tipo_acc = "00" else din(15 downto 8) when tipo_acc = "01" or tipo_acc="10",
		addr => addr(11 downto 2), 
		we  => we_b(1) or we_h(0) or we_w,
		dout  => b(1)
		);
		
	-- Byte2
	i_byte2: entity work.ram_core
		port map(
		clk => clk,
		din => din(7 downto 0) when tipo_acc = "00" or tipo_acc = "01" else din(23 downto 16) when tipo_acc="10",
		addr => addr(11 downto 2), 
		we  => we_b(2) or we_h(1) or we_w,
		dout  => b(2)
		);
		
	-- Byte3
	i_byte1: entity work.ram_core
		port map(
		clk => clk,
		din => din(7 downto 0) when tipo_acc = "00" else din(15 downto 8) when tipo_acc = "01" else din(31 downto 24) when tipo_acc = "10",
		addr => addr(11 downto 2), 
		we  => we_b(3) or we_h(0) or we_w,
		dout  => b(3)
		);
		
	--Lectura
	d_out <= std_logic_vector(resize(signed(b(to_integer(unsigned(addr(1 downto 0))))),32)) when l_u = '1' and tipo_acc = "00" else
	
		
	
	