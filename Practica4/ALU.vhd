library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU is
    generic(
        generic_length : integer :=4
    );
    port(
        a,b : in std_logic_vector(generic_length -1 downto 0);
        alu_op : in std_logic_vector(3 downto 0);
        shamt   : in std_logic_vector(2 downto 0); --normalmente (4 downto 0) pero para implantar lo hacemos con 4 bits
        alu_out : out std_logic_vector(generic_length -1 downto 0);
        z,lt,ge : out std_logic
    );
end ALU;

architecture behavioral of ALU is
    signal a_ext, b_ext : std_logic_vector(generic_length downto 0);
    signal sr_out, sll_out, srl_out, sra_out,and_out,or_out,xor_out : std_logic_vector(generic_length -1 downto 0);
    signal sig : std_logic; 
    signal ceros : std_logic_vector(generic_length -2 downto 0);

    component Sum_res
        generic(
            generic_length : integer
        );
        port(
            a,b	    : in std_logic_vector(generic_length downto 0); --Entrada
            s		: out std_logic_vector(generic_length-1 downto 0); --Salida
            s_r	    : in std_logic_vector(3 downto 0);
            sig		: out std_logic); --Acarreo de salida
    end component;
begin

    -- Extensión de signo
    a_ext <= a(generic_length -1) & a when alu_op = "0010" else '0' & a;
    b_ext <= b(generic_length -1) & b when alu_op = "0010" else '0' & b;
   
    -- vector de ceros para el slt
    ceros <= (others => '0');

    -- Sumador/Restador
    i1_sr : Sum_res
        generic map(
            generic_length => generic_length
        )
        port map(
            a => a_ext,
            b => b_ext,
            s => sr_out,
            s_r => alu_op,
            sig => sig
        );

    -- Desplazamientos
    sll_out <= std_logic_vector(shift_left(unsigned(a),to_integer(unsigned(shamt))));
    srl_out <= std_logic_vector(shift_right(unsigned(a),to_integer(unsigned(shamt))));
    sra_out <= std_logic_vector(shift_right(signed(a),to_integer(unsigned(shamt))));

    -- Funciones lógicas
    Genlog: for i in 0 to generic_length -1 generate
            
        and_out(i) <= a(i) and b(i);
        or_out(i) <= a(i) or b(i);
        xor_out(i) <= a(i) xor b(i);
    end generate Genlog;

    -- Salidas de comparacion
    z <= '1' when a = b else '0';
    lt <= sig;
    ge <= not sig;

    -- Multiplexor
    with alu_op select
        alu_out <=
            sr_out when "0000",
            sr_out when "1000",
			ceros & sig when "0010",
			ceros & sig when "0011",
            sll_out when "0001",
            srl_out when "0101",
            sra_out when "1101",
            xor_out when "0100",
            or_out when "0110",
            and_out when "0111",
            (others => '0') when others;
end behavioral;


    


