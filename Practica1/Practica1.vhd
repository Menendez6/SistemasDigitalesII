library ieee;
use ieee.std_logic_1164.all;

entity Practica1 is
    port(
        clk : in std_logic;
        reset_n : in std_logic;
        data    : in std_logic;
        err_paridad : out std_logic;
        err_trama   : out std_logic;
        --sal_registro : out std_logic_vector(7 downto 0);
        --contar      : out std_logic_vector(3 downto 0);
        bits        : out std_logic_vector(7 downto 0)
        --para        : out std_logic
    );
end Practica1;

architecture structural of Practica1 is

    signal paridad, en_paridad, en_registro,co_medio,en_contador,back_to_0: std_logic;
    signal en_paralelo: std_logic;
    signal sal_regi : std_logic_vector(7 downto 0); 

    component Comprobar_paridad
    port(
        data : in std_logic;
        paridad : out std_logic;
        clk     : in std_logic;
        reset_n : in std_logic;
		  back_to_0	: in std_logic;
        enable  : in std_logic
    );
    end component;

    component Registro
    port(
        clk     : in std_logic;
        enable  : in std_logic;
        reset_n : in std_logic;
        data    : in std_logic;
        bits    : out std_logic_vector(7 downto 0)
    );
    end component;

    component Contador1bit
    port(
        reset_n : in std_logic;
		  back_to_0: in std_logic;
        clk     : in std_logic;
        en      : in std_logic;
        co_medio    : out std_logic
    );
    end component;

    component Unidad_Control
    port(
        clk : in std_logic;
        reset_n : in std_logic;
        data    : in std_logic;
        paridad : in std_logic;
        co_medio    : in std_logic;
        en_contador : out std_logic;
        en_registro : out std_logic;
        en_paridad  : out std_logic;
        err_trama : out std_logic;
        err_paridad : out std_logic;
        en_paralelo : out std_logic;
        contar      : out std_logic_vector(3 downto 0);
		  back_to_0	  : out std_logic
    );
    end component;

    component Registro_paralelo
    port(
        clk     : in std_logic;
      enable  : in std_logic;
        reset_n : in std_logic;
        entrada : in std_logic_vector(7 downto 0);
        salida  : out std_logic_vector(7 downto 0)
    );
    end component;

begin

    i1_Comprobarparidad: Comprobar_paridad
    port map(
        data => data, 
        paridad => paridad,
        clk     => clk,
        reset_n => reset_n,
        enable  => en_paridad,
		  back_to_0 => back_to_0
    );

    i1_Registro : Registro
    port map(
        clk     => clk,
        enable  => en_registro,
        reset_n => reset_n,
        data    => data,
        bits    => sal_regi
    );

    i1_Contador : Contador1bit
    port map(
        clk => clk,
		  back_to_0 => back_to_0,
        reset_n => reset_n,
        en => en_contador,
        co_medio => co_medio
    );

    i1_UnidadControl: Unidad_Control
    port map(
        clk => clk,
        reset_n => reset_n,
        data    => data,
        paridad => paridad,
        co_medio => co_medio,
        en_contador => en_contador,
        en_registro => en_registro,
        en_paridad  => en_paridad,
        err_trama => err_trama,
        err_paridad => err_paridad,
        en_paralelo => en_paralelo,
        contar => open,
		  back_to_0 => back_to_0
    );

    i1_RegistroPara: Registro_paralelo
    port map(
        clk     => clk,
        enable  => en_paralelo,
        reset_n => reset_n,
        entrada => sal_regi,
        salida  => bits 
    );

    --sal_registro <= sal_regi;
    --para <= en_paralelo;
 end structural;


