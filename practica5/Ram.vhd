library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

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
	signal h: std_logic_vector(15 downto 0);
	signal ram1, ram2, ram3 : std_logic_vector(7 downto 0);
	signal we1, we2, we3, we0 : std_logic;
	
begin
	--Escritura

	we_b(to_integer(unsigned(addr(1 downto 0)))) <= we_ram when tipo_acc = "00" else 'X';
	we_h <= '0' & we_ram when tipo_acc = "01" and addr(1) = '0' else
			we_ram & '0' when tipo_acc = "01" and addr(1) = '1' else
			"XX";
	we_w <= we_ram when tipo_acc = "10" else 'X';
		
	-- Byte 0
	we0 <= we_b(0) or we_h(0) or we_w;

	i_byte0: entity work.ram_core
		port map(
		clk => clk,
		din => din(7 downto 0),
		addr => addr(11 downto 2), 
		we  => we0,
		dout  => b(0)
		);

	ram1 <= din(7 downto 0) when tipo_acc = "00" else din(15 downto 8) when tipo_acc = "01" or tipo_acc="10" else din(15 downto 8);
	we1 <= we_b(1) or we_h(0) or we_w;
		
	-- Byte1
	i_byte1: entity work.ram_core
		port map(
		clk => clk,
		din => ram1,
		addr => addr(11 downto 2), 
		we  => we1,
		dout  => b(1)
		);

	ram2 <= din(7 downto 0) when tipo_acc = "00" or tipo_acc = "01" else din(23 downto 16);
	we2 <= we_b(2) or we_h(1) or we_w;
		
	-- Byte2
	i_byte2: entity work.ram_core
		port map(
		clk => clk,
		din => ram2,
		addr => addr(11 downto 2), 
		we  => we2,
		dout  => b(2)
		);
		
	ram3 <= din(7 downto 0) when tipo_acc = "00" else din(15 downto 8) when tipo_acc = "01" else din(31 downto 24);
	we3 <= we_b(3) or we_h(1) or we_w;
	-- Byte3
	i_byte3: entity work.ram_core
		port map(
		clk => clk,
		din => ram3,
		addr => addr(11 downto 2), 
		we  => we3,
		dout  => b(3)
		);
		
	--Lectura
	h <= b(1) & b(0) when addr(1) = '0' else b(3) & b(2) when addr(1) = '1' else (others => '0');
	dout <= std_logic_vector(resize(signed(b(to_integer(unsigned(addr(1 downto 0))))),32)) when tipo_acc = "00" and l_u = '0' else
			std_logic_vector(resize(unsigned(b(to_integer(unsigned(addr(1 downto 0))))),32)) when tipo_acc = "00" and l_u = '1' else
			std_logic_vector(resize(signed(h),32)) when tipo_acc = "01" and l_u = '0' else
			std_logic_vector(resize(unsigned(h),32)) when tipo_acc = "01" and l_u = '1' else
			b(3) & b(2) & b(1) & b(0) when tipo_acc = "10" else
			(others => 'X');

end arch_ram;
			
	
		
	
	