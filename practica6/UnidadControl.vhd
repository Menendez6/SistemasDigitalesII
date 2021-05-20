library ieee;
use ieee.std_logic_1164.all;

entity UnidadControl is
	port(
	reset_n : in std_logic;
	--opcode : in std_logic_vector(4 downto 0); SON LOS 7 ÚLTIMOS DE IR_OUT PERO OS ÚLTIMOS 2 SON 1
	clk : in std_logic;
	ir_out : in std_logic_vector(31 downto 0);
	m_pc : out std_logic_vector(1 downto 0);
	wr_pc : out std_logic;
	m_alu_a : out std_logic_vector(1 downto 0);
	m_alu_b : out std_logic_vector(1 downto 0); 
	alu_op : out std_logic_vector(3 downto 0);
	en_ir : out std_logic;
	tipo_inst : out std_logic_vector(2 downto 0); 
	m_banco : out std_logic_vector(1 downto 0); 
	en_banco : out std_logic;
	wr_pc_cond : out std_logic;
	tipo_acc : out std_logic_vector(1 downto 0); --ir_out 13 12
	l_u : out std_logic;
	wc_ram : out std_logic;
    maskb0: out std_logic;
    m_shamt: out std_logic;
	m_ram : out std_logic;
	re: out std_logic;
	dato_val: in std_logic);
end UnidadControl;

architecture behavioral of UnidadControl is
	signal opcode : std_logic_vector(4 downto 0);
	type t_estados is (Reset, Fetch, Decod, lui3, lwsw3, auipc3, Arit3, SalCond, lw4, sw4, Arit4, lw5,Inm3, Jal, Jalr);
	
	signal estado_act, estado_sig : t_estados;
	
	begin
	opcode<=ir_out(6 downto 2);	--los últimos son siempre 1s
	TransicionesEstados : process(estado_act, opcode, clk)
	begin
	estado_sig<=estado_act;
	case estado_act is
		when Reset =>
				estado_sig<=Fetch;
		when Fetch =>
				estado_sig<=Decod;
		when Decod=> -- No entiendo muy bien qué hace el decode
			if opcode="01101" then
				estado_sig<=lui3;
			elsif opcode="00000" or opcode="01000" then
				estado_sig<=lwsw3;
			elsif opcode="00101" then
				estado_sig<=auipc3;
			elsif opcode="01100" then
				estado_sig<=Arit3;
			elsif opcode="11000" then 
				estado_sig<=SalCond;
			elsif opcode="00100" then
				estado_sig<=Inm3;
			elsif opcode="11011" then
				estado_sig<=Jal;
			elsif opcode="11001" then
				estado_sig<=Jalr;
			end if;	
		when lui3=>
				estado_sig<=Fetch;
		when lwsw3 =>
			if opcode="00000" then
				estado_sig<=lw4;
			elsif opcode="01000" then
				estado_sig<=sw4;
			end if;
		when lw4 =>
			estado_sig<=lw5;
		when lw5 =>
			if dato_val = '1' then
				estado_sig<=Fetch;
			end if;
		when sw4 =>
			estado_sig<=Fetch;
		when auipc3 =>
			estado_sig<=Arit4;
		when Arit4 =>
			estado_sig<=Fetch;
		when Arit3 =>
			estado_sig<=Arit4;
		when SalCond =>
			estado_sig<=Fetch;
		when Jal =>
			estado_sig<=Fetch;
		when Jalr =>
			estado_sig<=Fetch;
		when Inm3 =>
			estado_sig<=Arit4;
		when others =>
			estado_sig<=Reset;
		end case;
	end process;
	
	VarEstado: process(clk,reset_n)
	begin
	if reset_n='0' then
		estado_act<= Reset;
	else 
		if rising_edge(clk) then
			estado_act<=estado_sig;
		end if;
	end if;
	end process;
	
	Salidas : process(estado_act)
	begin
	m_pc<="00";
	wr_pc<='0';
	m_alu_a<="00";
	m_alu_b<="00";
	tipo_inst<="000";
	m_banco<="00"; 
	alu_op <="0000";
	en_ir <='0';
	en_banco <='0';
	wr_pc_cond <='0';
	tipo_acc <="00";
	l_u <='0';
	wc_ram <='0';
	m_ram <='0';
    m_shamt <= '0';
    maskb0 <= '0';
	re <= '0';
	
	case estado_act is
		when Reset=>
			m_pc<="10";
			wr_pc<='1';
		when Fetch=>
			m_alu_a<="01";
			m_alu_b<="01";
			alu_op<="0000";
			m_pc<="00";
			wr_pc<='1';
			en_ir<='1';
		when Decod=>
			tipo_inst<="010"; -- no sé si es 3 o 2??
			m_alu_a<="10";
			m_alu_b<="10";
			alu_op<="0000";
		when lui3=>
			tipo_inst<="011";
			m_banco<="10";
			en_banco<='1';
		when lwsw3=>
			tipo_inst <= "00" & opcode(3);									
			alu_op<="0000";
			m_alu_a<="00";
			m_alu_b<="10";
		when lw4 =>
			tipo_acc<=ir_out(13) & ir_out(12);
			l_u<=ir_out(14);
			re <= '1';
		when sw4=>
			tipo_acc<=ir_out(13) & ir_out(12);
			wc_ram<='1';
		when lw5=>
			l_u <= ir_out(14);
			m_banco<="00";
			en_banco<='1';
			m_ram<='1';
		when auipc3=>
			tipo_inst<="011";
			alu_op<="0000";
			m_alu_a<="10";
			m_alu_b<="10";
		when Arit3 =>
			alu_op<=ir_out(30) & ir_out(14) & ir_out(13) & ir_out(12);
			m_alu_a<="00";
			m_alu_b<="00";
		when Arit4 =>
			m_ram<='0';
			m_banco<="00";
			en_banco<='1';
		when SalCond =>
			wr_pc_cond<='1';
			m_pc<="01";
			m_alu_a<="00";
			m_alu_b<="00";
			alu_op<="001X";
		when Inm3 =>
			if ir_out(14 downto 12) = "101" or ir_out(14 downto 12) = "001" then
				alu_op<=ir_out(30) & ir_out(14 downto 12); -- ¿Cómo diferencias el caso de shift y normal?
				m_shamt <= '1';
			else
				alu_op <= '0' & ir_out(14 downto 12);
			end if;
			tipo_inst <= "000";
            m_alu_a<="00";    
			m_alu_b<="10";
			maskb0 <= '1';
		when Jal=>
			--Llenar las variables que tiene ¿Habría otro estado más para jal? --Primero guardar en ra el PC +4 y luego hacer el salto de PC más inmediato
			tipo_inst<="100";
			m_alu_a<="10";
			m_alu_b<="10";
			alu_op<="0000"; --se suma para la dirección de salto
			en_banco <= '1';
			m_banco <= "01";
			wr_pc <= '1';
			m_pc <= "00";
			
		when Jalr=>
			tipo_inst<="000";
			wr_pc <= '1';
			m_banco<="01";
           -- maskb0 <= '1';
			en_banco<='1';
			m_alu_a<="00";
			m_alu_b<="10";
			alu_op<="0000";
			m_pc <= "00";
			--Llenar las variables que tiene
		
		when others =>
			null;
	end case;
	end process;
end behavioral;