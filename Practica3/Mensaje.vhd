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
    16#00# => "00000000",
    16#01# => "00000000",--Aquí ponemos el mensaje en el orden que está. Si queremos poner más mensaje añadimos líneas (ahora está hasta 14 caracteres, pero podemos poner hasta 256 )
    16#02# => "00000000",
    16#03# => "00000000",
    16#04# => "00000000",
    16#05# => "00000000",
    16#06# => "00000000",
    16#07# => "00000000",
    16#08# => "00000000",
    16#09# => "00000000",
    16#0A# => "00000000",
    16#0B# => "00000000",
    16#0C# => "00000000",
    16#0D# => "00000000",
    16#0E# => "00000000",
    
    others => X"00");             
  
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