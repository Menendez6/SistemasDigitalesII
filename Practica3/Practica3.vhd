library ieee;
use ieee.std_logic_1164.all;

entity Practica3 is
    port(
        clk : in std_logic;
        reset_n : in std_logic;
        dig_led : out std_logic_vector(16 downto 0);
        digito  : out std_logic_vector(7 downto 0)
    );
end Practica3;

architecture structural of Practica3 is

    signal en_contador : std_logic;
    signal reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7 : std_logic_vector(7 downto 0);
    signal seleccion : std_logic_vector(2 downto 0);
    signal digito_intermedio, salida_mux : std_logic_vector(7 downto 0);
    signal en_medioseg : std_logic;
    signal num_caracter, cod_ASCII: std_logic_vector(7 downto 0);
    signal ent_reg  : std_logic_vector(63 downto 0); 

    component Contador1ms
        port(
            reset_n : in std_logic;
            clk     : in std_logic;
            co      : out std_logic
        );
    end component;

    component Contador_medioseg
        port(
            reset_n : in std_logic;
            clk     : in std_logic;
            co      : out std_logic
        );
    end component;

    component Contador
        port(
            reset_n : in std_logic;
            clk     : in std_logic;
            en      : in std_logic;
            salida   : out std_logic_vector(2 downto 0)
        );
    end component;

    component Contador_lgmsg
        port(
            reset_n : in std_logic;
            clk     : in std_logic;
            en      : in std_logic;
            salida   : out std_logic_vector(7 downto 0));
    end component;

    component Mensaje
        port(
            clk : in  std_logic;
            e   : in  std_logic_vector(7 downto 0);    -- Entrada en entero
            s   : out std_logic_vector(7 downto 0)
        );
    end component;

    component Registro_grande 
        port(
            clk: in std_logic;
            reset_n: in std_logic;
            enable  : in std_logic;
            entrada : in std_logic_vector(7 downto 0);
            salida : out std_logic_vector(63 downto 0)
        );
    end component Registro_grande;

    component Multiplexor
        port(
            reg0    : in std_logic_vector(7 downto 0);
            reg1    : in std_logic_vector(7 downto 0);
            reg2    : in std_logic_vector(7 downto 0);
            reg3    : in std_logic_vector(7 downto 0);
            reg4    : in std_logic_vector(7 downto 0);
            reg5    : in std_logic_vector(7 downto 0);
            reg6    : in std_logic_vector(7 downto 0);
            reg7    : in std_logic_vector(7 downto 0);
            sel     : in std_logic_vector(2 downto 0);
            salida  : out std_logic_vector(7 downto 0)
        );
    end component Multiplexor;

    component Selector
        port(
            e           : in std_logic_vector(2 downto 0);
            digito      : out std_logic_vector(7 downto 0)
        );
    end component Selector;

    component ASCIIa16Seg
        port (
          clk : in  std_logic;
          e   : in  std_logic_vector(7 downto 0);    -- Entrada en ASCII
          s   : out std_logic_vector(16 downto 0));  -- Salida (16 segmentos)                                                -- el bit 0 es el segmento A
    end component ASCIIa16Seg;

    component Registro
        port(
            clk     : in std_logic;
            enable  : in std_logic;
            reset_n : in std_logic;
            e       : in std_logic_vector(7 downto 0);
            s       : out std_logic_vector(7 downto 0)
        );
    end component;

begin

    i_contador1ms : Contador1ms
    port map(
        reset_n => reset_n,
        clk     => clk,
        co      => en_contador
    );

    i_Contador: Contador
    port map(
        reset_n => reset_n,
        clk     => clk,
        en      => en_contador,
        salida  => seleccion
    );

    i_Contador_medioseg: Contador_medioseg
    port map(
        reset_n => reset_n,
        clk => clk,
        co => en_medioseg
    );

    i_Contador_longitud: Contador_lgmsg
    port map(
        reset_n => reset_n,
        clk => clk,
        en => en_medioseg,
        salida => num_caracter
    );

    i_Mensaje: Mensaje
    port map(
        clk => clk,
        e   => num_caracter,   -- Entrada en entero
        s   => cod_ASCII
    );

    i_RegGrande: Registro_grande
    port map(
        clk => clk,
        reset_n => reset_n,
        enable  => en_medioseg,
        entrada => cod_ASCII,
        salida => ent_reg
    );


    i_Selector  : Selector
    port map(
        e           => seleccion,
        digito      => digito_intermedio
    );

    i1_Registro0: Registro
        port map(
            clk     => clk,
            enable  => digito_intermedio(0),
            reset_n => reset_n,
            e       => ent_reg(63 downto 56),
            s       => reg0
        );
    
    i1_Registro1: Registro
        port map(
            clk     => clk,
            enable  => digito_intermedio(1),
            reset_n => reset_n,
            e       => ent_reg(55 downto 48),
            s       => reg1
        );
    
    i1_Registro2: Registro
        port map(
            clk     => clk,
            enable  => digito_intermedio(2),
            reset_n => reset_n,
            e       => ent_reg(47 downto 40),
            s       => reg2
        );
    
    i1_Registro3: Registro
        port map(
            clk     => clk,
            enable  => digito_intermedio(3),
            reset_n => reset_n,
            e       => ent_reg(39 downto 32),
            s       => reg3
        );
    
    i1_Registro4: Registro
        port map(
            clk     => clk,
            enable  => digito_intermedio(4),
            reset_n => reset_n,
            e       => ent_reg(31 downto 24),
            s       => reg4
        );
    
    i1_Registro5: Registro
        port map(
            clk     => clk,
            enable  => digito_intermedio(5),
            reset_n => reset_n,
            e       => ent_reg(23 downto 16),
            s       => reg5
        );
    
    i1_Registro6: Registro
        port map(
            clk     => clk,
            enable  => digito_intermedio(6),
            reset_n => reset_n,
            e       => ent_reg(15 downto 8),
            s       => reg6
        );
    
    i1_Registro7: Registro
        port map(
            clk     => clk,
            enable  => digito_intermedio(7),
            reset_n => reset_n,
            e       => ent_reg(7 downto 0),
            s       => reg7
        );
    
    i_Mux: Multiplexor
        port map(
            reg0    => reg0,
            reg1    => reg1,
            reg2    => reg2,
            reg3    => reg3,
            reg4    => reg4,
            reg5    => reg5,
            reg6    => reg6,
            reg7    => reg7,
            sel     => seleccion,
            salida  => salida_mux
        );

    i_ASCIIa17Seg : ASCIIa16Seg
        port map(
            clk => clk,
            e   => salida_mux,    -- Entrada en ASCII
            s   => dig_led
        );
    
    digito <= digito_intermedio;
end structural;