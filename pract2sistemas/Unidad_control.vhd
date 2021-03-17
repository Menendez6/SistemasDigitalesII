library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Unidad_control is
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
end Unidad_control;

architecture behavioral of Unidad_control is

    signal empieza,en_conta8, en_conta1bit, co1bitsenyal, reinit : std_logic;
    signal cuenta : std_logic_vector(3 downto 0);

    type t_estados is (Reposo,Serie0, Registro, Espera1bit, Paridad, Parar); 
    signal estado_act, estado_sig : t_estados;

    component DetectorFlancoBajada
    port(
		e			: in std_logic;
		reset_n	    : in std_logic;
		clk		    : in std_logic;
		s			: out std_logic
    );
    end component;

    component Contador
        port(
            reset_n : in std_logic;
            clk     : in std_logic;
            en      : in std_logic;
            back_to_0: in std_logic;
            salida  : out std_logic_vector(3 downto 0)
        );
    end component;
	 
	 component Contador1bit
		port(
        reset_n : in std_logic;
        clk     : in std_logic;
        en      : in std_logic;
        back_to_0     : in std_logic;
		co 		 : out std_logic
       -- co_medio    : out std_logic
    );
	 end component;


begin
    i1_Flanco: DetectorFlancoBajada
    port map(
        e   => transmi,
        reset_n => reset_n,
        clk => clk,
        s   => empieza
    );

    i1_Contador : Contador
    port map(
        reset_n => reset_n,
        clk     => clk,
        en      => en_conta8,
        back_to_0 => reinit,
        salida  => cuenta
    );
	 
	 i1_Contador1bit : contador1bit
	 port map(
			reset_n => reset_n,
			clk     => clk,
			en      => en_conta1bit,
			co 	  => co1bitsenyal,
            back_to_0   => reinit
        );


    VarEstado: process(clk,reset_n)
    begin
      if reset_n = '0' then
        estado_act <= Reposo;
      elsif rising_edge(clk) then
        estado_act <= estado_sig;
      end if;
    end process VarEstado;

    TransicionEstados : process (estado_act, estado_sig,empieza,co1bitsenyal)
    begin
        estado_sig <= estado_act;
        case estado_act is
            when Reposo =>
                if empieza = '1' then
                    estado_sig <= Serie0;
                end if;
            when Serie0 =>
                if co1bitsenyal = '1' then
                    estado_sig <= Registro;
                end if;
            when Registro =>
                if cuenta = "1000" then
                    estado_sig <= Paridad;
                else 
                    estado_sig <= Espera1bit;
                end if;
        
            when Espera1bit =>
				if co1bitsenyal = '1' then
                   estado_sig<=Registro;
				end if;
            when Paridad =>
				if co1bitsenyal = '1' then
                    estado_sig<=Parar;
				end if;
            when Parar =>
                if co1bitsenyal = '1' then
                    estado_sig<=Reposo;
                end if;
            when others =>
                estado_sig <= Reposo;
        end case;
    end process TransicionEstados;


    Salidas : process (estado_act)
    begin

        en_conta1bit   <= '0';
        c_d            <= '0';
        en_registro  	  <= '0';
        en_paridad   	  <= '0';
		  en_conta8	   <= '0';
        selector       <= "11";
        reinit       <= '0';

        case estado_act is
            when Reposo =>
                null;
            when Serie0 =>
                reinit <= '1';
                en_registro <= '1';
                selector <= "00";
                en_conta1bit <= '1'; 
            when Registro =>
                en_registro <= '1';
                c_d <= '1';
                selector <= "01";
					 en_conta8<='1';
					en_paridad<='1';
            when Espera1bit => 
                en_conta1bit <= '1';
                selector <= "01";
            when Paridad =>
                en_conta1bit<='1';
				selector <= "10";
            when Parar =>
                en_conta1bit<='1';
                selector <= "11";
            when others =>
                null;
        end case;
    end process Salidas;

    back_to_0 <= reinit;


end behavioral;