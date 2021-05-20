library ieee;
use ieee.std_logic_1164.all;

entity RISCV is
    port(
        clk: in std_logic;
        reset_n : in std_logic;
        r_data : in std_logic_vector(31 downto 0);
        addr : out std_logic_vector(31 downto 0);
        w_data : out std_logic_vector(31 downto 0);
        tipo_acc : out std_logic_vector(1 downto 0);
        l_u : out std_logic;
        we : out std_logic;
        re: out std_logic;
        dato_val : in std_logic
    );
end RISCV;

architecture structural of RISCV is
    signal ir_out : std_logic_vector(31 downto 0);
	signal m_pc : std_logic_vector(1 downto 0);
	signal wr_pc : std_logic;
	signal m_alu_a : std_logic_vector(1 downto 0);
	signal m_alu_b : std_logic_vector(1 downto 0); 
	signal alu_op : std_logic_vector(3 downto 0);
	signal en_ir : std_logic;
	signal tipo_inst : std_logic_vector(2 downto 0); 
	signal m_banco : std_logic_vector(1 downto 0); 
	signal en_banco : std_logic;
	signal wr_pc_cond : std_logic;
	signal m_ram : std_logic;
    signal m_shamt : std_logic;
    signal maskb0 : std_logic;

begin
    i_Control : entity work.UnidadControl
    port map(
        reset_n => reset_n,
        clk => clk,
        ir_out => ir_out,
        m_pc => m_pc,
        wr_pc => wr_pc,
        m_alu_a => m_alu_a,
        m_alu_b => m_alu_b, 
        alu_op => alu_op,
        en_ir => en_ir,
        tipo_inst => tipo_inst, 
        m_banco => m_banco, 
        en_banco => en_banco,
        wr_pc_cond => wr_pc_cond,
        tipo_acc => tipo_acc,
        l_u => l_u,
        wc_ram => we,
        m_shamt => m_shamt,
        m_ram => m_ram,
        maskb0 => maskb0,
        re => re,
        dato_val => dato_val
    );

    i_Path : entity work.Data_path
    port map(
        clk => clk,
        reset_n => reset_n,
        wr_pc => wr_pc,
        wr_pc_cond => wr_pc_cond,
        m_pc => m_pc,
        en_ir => en_ir,
        tipo_inst => tipo_inst,
        mask_b0 => maskb0, 
        m_banco=> m_banco,
        en_banco => en_banco,
        m_alu_a => m_alu_a,
        m_alu_b => m_alu_b,
        alu_op => alu_op,
        m_shamt => m_shamt,
        m_ram => m_ram,
        ir_out => ir_out,
        addr => addr,
        dout => w_data,
        dout_ram => r_data
    );

end structural;
