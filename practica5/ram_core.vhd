library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram_core is
	generic(
	g_data_width : integer :=8;
	g_addr_width : integer :=10;
	g_depth 		 : integer :=1024
	);
	port(
	clk: in std_logic;
	din : in std_logic_vector(g_data_width-1 downto 0);
	addr : in std_logic_vector(g_addr_width-1 downto 0);
	we 	: in std_logic;
	dout  : out std_logic_vector(g_data_width-1 downto 0)
	);
end entity ram_core;

architecture behavioral of ram_core is
	type mem_t is array(0 to g_depth-1) of std_logic_vector(g_data_width-1 downto 0);
	signal ram_block : mem_t;
	begin
	p_ram: process(clk)
	begin 
		if rising_edge(clk) then
			if we='1' then
				ram_block(to_integer(unsigned(addr)))<=din;
			end if;
				
				dout<=ram_block(to_integer(unsigned(addr)));
		end if;
	end process;
end behavioral;