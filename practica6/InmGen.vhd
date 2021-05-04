library ieee;
use ieee.std_logic_1164.all;

entity InmGen is
    port(
        inst : in std_logic_vector(31 downto 0);
        tipo_inst : in std_logic_vector(2 downto 0);
        mask_b0 : in std_logic;
        inm : out std_logic_vector(31 downto 0)
    );
end InmGen;

architecture behavioral of InmGen is
    subtype tipo_inst_t is std_logic_vector(2 downto 0);
    constant TYPE_I : tipo_inst_t := "000";
    constant TYPE_S : tipo_inst_t := "001";
    constant TYPE_B : tipo_inst_t := "010";
    constant TYPE_U : tipo_inst_t := "011";
    constant TYPE_J : tipo_inst_t := "100";
    signal inm_sin_mask : std_logic;

    begin
        inm_sin_mask <=
            inst(20) when tipo_inst = TYPE_I else
            inst(7) when tipo_inst = TYPE_S else
            '0';
        
        inm(0) <= inm_sin_mask and mask_b0;

        inm(4 downto 1) <= inst(24 downto 21) when tipo_inst = TYPE_I or tipo_inst = TYPE_J else
                           inst(11 downto 8) when tipo_inst = TYPE_S or tipo_inst = TYPE_B else "0000";
        
        inm(10 downto 5) <= inst(30 downto 25) when tipo_inst = TYPE_I or tipo_inst = TYPE_J or tipo_inst = TYPE_S or tipo_inst = TYPE_B else "000000";

        inm(11) <= inst(31) when tipo_inst = TYPE_I or tipo_inst = TYPE_S else
                   inst(7) when tipo_inst = TYPE_B else
                   inst(20) when tipo_inst = TYPE_J else '0';

        inm(19 downto 12) <= inst(19 downto 12) when tipo_inst = TYPE_U or tipo_inst = TYPE_J else
                             (others => inst(31)); 

        inm(30 downto 20) <= inst(30 downto 20) when tipo_inst = TYPE_U else
                             (others => inst(31));

        inm(31) <= inst(31);
    end behavioral;

        


