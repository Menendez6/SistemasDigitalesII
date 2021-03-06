#!/usr/bin/python3

# constants
CODE_COL_BEGIN = 14
CODE_COL_END   = 22
ASM_COL_BEGIN  = 24
ASM_COL_END    = 53

import argparse
    
parser = argparse.ArgumentParser(description='Generate a VHDL file describing a ROM containing the code generated by RARS.')
parser.add_argument("hexfile",
                    help="Hex file generated by RARS containing the machine code. To generate this file: 1) Open your asm program in RARS and assemble it (F3). 2) In Settings->Memory Configuration select: \"Compact, Text at Address 0\" and click on \"Apply and Close\". 3) Now go to File->Dump Memory... select \"Text/Data Segment Window\" and click on \"Dump To File...\" 4) Chose a file name and save the file.")
parser.add_argument("outfile", help="Optional output VHDL file. Default to ROM.vhd.",  nargs='?', default='ROM.vhd')
parser.add_argument("--filter", dest="filterfile", help="Optional filter file for gtkwave.", nargs='?')
parser.add_argument('--version', action='version', version='%(prog)s 1.2')
args = parser.parse_args()
print(args.hexfile)
print(args.outfile)
if args.filterfile is not None:
    print(args.filterfile)

file_in = open(args.hexfile, "r")
file_out = open(args.outfile, "w")
if args.filterfile is not None:
    file_filter = open(args.filterfile, "w")

print("-- ROM file for the ICAI-RISC-V processor.", file=file_out)
print("-- Generated from the hex file: ", args.outfile, file=file_out)
entity_decl = r"""
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

  -- ROM declaration"""
print(entity_decl, file=file_out)

# Read the file to know how many instructions are.
n_lines = 0
line_read = file_in.readline()
while line_read:
    n_lines +=1
    line_read = file_in.readline()

# The ROM is defined with a line more because in the last instruction the PC
# will point to the last address+1 and the simulator will fire an addresing
# error. So because the node lines are n_lines-2, we declare the lengt of
# n_lines - 1
print(' type mem_t is array (0 to', n_lines-1, ') of std_logic_vector(31 downto 0);', file=file_out)


# Now generate the ROM signal, reading the file again
print('  signal memory : mem_t:= (', file=file_out)
addr = 0
file_in.seek(0) # Rewind the file
line_read = file_in.readline() # The two first lines don't contain any code
line_read = file_in.readline()
line_read = file_in.readline()
while line_read:
    print('    ', addr, ' => X"'+line_read[CODE_COL_BEGIN:CODE_COL_END]+'",', file=file_out)
    # print the filter file is the option is given in the command line
    if args.filterfile is not None:
        print(line_read[CODE_COL_BEGIN:CODE_COL_END]+' '+
              line_read[ASM_COL_BEGIN:ASM_COL_END].strip(), file = file_filter)
        # The asm field has trailing spaces. strip() will remove them
    addr +=1
    line_read = file_in.readline()

end_of_file= r"""     others => X"00000000");
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
"""

print(end_of_file, file=file_out)
