library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Mensaje is
  
  port (
    clk : in  std_logic;
    e   : in  std_logic_vector(7 downto 0);    -- Entrada en entero
    s   : out std_logic_vector(7 downto 0));  -- Salida en ascii
                                             
end Mensaje;

architecture behavioural of Mensaje is
  type mem_t is array (0 to 255) of std_logic_vector(7 downto 0);
  signal memoria : mem_t := (
    16#00# =>
    16#01# => --Aquí ponemos el mensaje en el orden que está. Si queremos poner más mensaje añadimos líneas (ahora está hasta 14 caracteres, pero podemos poner hasta 256 )
    16#02# => 
    16#03# => 
    16#04# => 
    16#05# => 
    16#06# => 
    16#07# => 
    16#08# => 
    16#09# => 
    16#0A# => 
    16#0B# => 
    16#0C# => 
    16#0C# => 
    16#0D# => 
    
    others => X"0000"&'0');             
  
  signal s_i : std_logic_vector(7 downto 0);
  
begin  -- behavioural

  mem_rom : process(clk)
  begin
    if clk'event and clk = '1' then
      s_i <= memoria(to_integer(unsigned(e)));
    end if;
  end process mem_rom;

 s <= s_i;
  
end behavioural;