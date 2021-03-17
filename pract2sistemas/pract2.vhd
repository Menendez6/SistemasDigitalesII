library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pract2 is
	port(
	clk : in std_logic;
	e_p : in std_logic_vector(7 downto 0);
	reset : in std_logic;
	s_s : out std_logic;
	transmi : in std_logic
	);
end pract2;

architecture behavioral of pract2 is
	signal en_registro_senyal : std_logic;
	signal c_d_senyal: std_logic;
	signal s_registro_senyal: std_logic;
	signal paridad_senyal: std_logic;
	signal back_to_0_senyal: std_logic;
	signal en_paridad_senyal: std_logic;
	signal selector_senyal : std_logic_vector(1 downto 0);
	--signal s_ssenyal_final : std_logic;
	
	component registrops8
		port(
      clk : in std_logic;
		reset_n : in std_logic;
		enable : in std_logic;
		c_d : in std_logic;
		e_p : in std_logic_vector(7 downto 0);
		s_s : out std_logic
   );
	end component;
	 
	component Controlar_paridad 
		port(
		data : in std_logic;
        paridad : out std_logic;
        clk     : in std_logic;
        back_to_0 : in std_logic;
        reset_n : in std_logic;
        enable  : in std_logic
		);
	end component;
	 
	component Mux_enviar
		port(
        s_registro : in std_logic;
        paridad    : in std_logic;
        sel        : in std_logic_vector(1 downto 0);
        s_serie    : out std_logic
   );
	end component;
	
	component Unidad_control
		port(
		clk : in std_logic;
      reset_n : in std_logic;
      transmi : in std_logic;
      en_registro : out std_logic;
      c_d         : out std_logic;
      en_paridad  : out std_logic;
      selector    : out std_logic_vector(1 downto 0);
      back_to_0   : out std_logic
	);
	end component;
	
begin

	i_registrops8 : registrops8
	port map(
		clk =>clk,
		reset_n => reset,
		enable => en_registro_senyal,
		c_d =>c_d_senyal,
		e_p =>e_p,
		s_s =>s_registro_senyal);
		
	i_Controlar_paridad : Controlar_paridad
	port map(
		data =>s_registro_senyal,
      paridad =>paridad_senyal,
      clk     =>clk,
      back_to_0 =>back_to_0_senyal,
      reset_n => reset,
      enable  =>en_paridad_senyal
		);
		
	i_Mux_enviar : Mux_enviar
	port map(
		s_registro =>s_registro_senyal,
      paridad    =>paridad_senyal,
      sel        =>selector_senyal,
      s_serie    =>s_s);
	
	i_Unidad_control : Unidad_control
	port map(
		clk =>clk,
      reset_n =>reset,
      transmi =>transmi,
      en_registro =>en_registro_senyal,
      c_d         =>c_d_senyal,
      en_paridad  =>en_paridad_senyal,
      selector    =>selector_senyal,
      back_to_0   =>back_to_0_senyal
	);

end behavioral;