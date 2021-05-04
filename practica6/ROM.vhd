-- ROM file for the ICAI-RISC-V processor.
-- Generated from the hex file:  ROM.vhd

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM is
  port(
    clk: in std_logic;                         -- Synchronous ROM
    en_pc: in std_logic;                       -- Whith enable
    addr: in  std_logic_vector(31 downto 0);   -- Address bus
    data: out std_logic_vector(31 downto 0) ); -- Data out
end ROM;

architecture Behavioural of ROM is
  -- The internal address is word address, no byte address
  signal internal_addr : std_logic_vector(29 downto 0);

  -- ROM declaration
 type mem_t is array (0 to 101 ) of std_logic_vector(31 downto 0);
  signal memory : mem_t:= (
     0  => X"00000f93",
     1  => X"0280006f",
     2  => X"00100293",
     3  => X"00f00f13",
     4  => X"00b50663",
     5  => X"01efa023",
     6  => X"00c0006f",
     7  => X"005fa023",
     8  => X"0040006f",
     9  => X"004f8f93",
     10  => X"00008067",
     11  => X"00500593",
     12  => X"00500513",
     13  => X"fd5ff0ef",
     14  => X"00100593",
     15  => X"00400513",
     16  => X"00b50533",
     17  => X"00500593",
     18  => X"fc1ff0ef",
     19  => X"00500593",
     20  => X"00300513",
     21  => X"40a58533",
     22  => X"00200593",
     23  => X"fadff0ef",
     24  => X"00100593",
     25  => X"00400513",
     26  => X"00552513",
     27  => X"f9dff0ef",
     28  => X"00100593",
     29  => X"00400513",
     30  => X"00a5a533",
     31  => X"00100593",
     32  => X"f89ff0ef",
     33  => X"00100513",
     34  => X"00400593",
     35  => X"00b53533",
     36  => X"00100593",
     37  => X"f75ff0ef",
     38  => X"00100513",
     39  => X"00453513",
     40  => X"00100593",
     41  => X"f65ff0ef",
     42  => X"00400513",
     43  => X"00551513",
     44  => X"08000593",
     45  => X"f55ff0ef",
     46  => X"00200593",
     47  => X"01000513",
     48  => X"00b51533",
     49  => X"04000593",
     50  => X"f41ff0ef",
     51  => X"00100593",
     52  => X"01000513",
     53  => X"00255513",
     54  => X"00400593",
     55  => X"f2dff0ef",
     56  => X"01000593",
     57  => X"00200513",
     58  => X"00a5d533",
     59  => X"00400593",
     60  => X"f19ff0ef",
     61  => X"01000593",
     62  => X"01000513",
     63  => X"40255513",
     64  => X"00400593",
     65  => X"f05ff0ef",
     66  => X"00200593",
     67  => X"02000513",
     68  => X"40b55533",
     69  => X"00800593",
     70  => X"ef1ff0ef",
     71  => X"00100593",
     72  => X"00400513",
     73  => X"00554513",
     74  => X"ee1ff0ef",
     75  => X"00100593",
     76  => X"00400513",
     77  => X"00a5c533",
     78  => X"00500593",
     79  => X"ecdff0ef",
     80  => X"00100593",
     81  => X"00400513",
     82  => X"00556513",
     83  => X"00500593",
     84  => X"eb9ff0ef",
     85  => X"00100593",
     86  => X"00400513",
     87  => X"00b56533",
     88  => X"00500593",
     89  => X"ea5ff0ef",
     90  => X"00100593",
     91  => X"00400513",
     92  => X"00557513",
     93  => X"00400593",
     94  => X"e91ff0ef",
     95  => X"00500593",
     96  => X"00400513",
     97  => X"00b57533",
     98  => X"00400593",
     99  => X"e7dff0ef",
     others => X"00000000");
begin

  internal_addr <= addr(31 downto 2);

  mem_rom: process(clk)
  begin
    if clk'event and clk = '1' then
      if en_pc = '1' then
        data <= memory(to_integer(unsigned(internal_addr)));
      end if;
    end if;
  end process mem_rom;
end architecture Behavioural;

