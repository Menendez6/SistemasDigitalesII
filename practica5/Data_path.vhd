library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Data_path is
    port(
        clk, reset_n : in std_logic;
        wr_pc, wr_pc_cond : in std_logic;-- ¿ Qué es wr_pc_cond?
        m_flags : in std_logic_vector(2 downto 0);
        m_pc : in std_logic_vector(2 downto 0);
        en_ir : in std_logic;
        tipo_inst : in std_logic_vector(2 downto 0);
        mask_b0 : in std_logic;
        m_banco: in std_logic_vector(1 downto 0);
        en_banco: in std_logic;
        m_alu_a, m_alu_b: in std_logic_vector(1 downto 0);
        alu_op: in std_logic_vector(3 downto 0);
        m_shamt: in std_logic;
        tipo_acc: in std_logic_vector(1 downto 0);
        l_u, we_ram: in std_logic;
        m_ram: in std_logic;
        ir_out: out std_logic_vector(31 downto 0) -- lo necesitamos para la máquina de estados 
    );
end Data_path;

architecture structural of Data_path is
    signal z,lt,ge : std_logic;
    signal en_pc : std_logic;
    signal pc_in,pc_out: std_logic_vector(31 downto 0);
    signal ir_in, ir_out_m, pc_ir: std_logic_vector(31 downto 0);
    signal inm, d_ram_alu: std_logic_vector(31 downto 0);
    signal d_in_banco, reg_a, reg_b: std_logic_vector(31 downto 0);
    signal a,b : std_logic_vector(31 downto 0);
    signal alu_out, alur_out: std_logic_vector(31 downto 0);
    signal dout_ram: std_logic_vector(31 downto 0);
    signal shamt : std_logic_vector(4 downto 0);
    signal sal_mux_ini : std_logic;



begin


    sal_mux_ini <= z when m_flags="00" else 
                    not z when m_flags = "01" else 
                    lt when m_flags = "10" else
                    ge when m_flags = "11" else
                    '0';
    en_pc <= wr_pc or (wr_pc_cond and sal_mux_ini);

    pc_in <= alu_out when m_pc = "00" else alur_out when m_pc = "01" else (others => '0');

    p_pcout: process(clk)
    begin
        if reset_n = '0' then
            pc_out <= (others => '0');
        elsif rising_edge(clk) then
            if en_pc = '1' then
                pc_out <= pc_in;
            end if;
        end if;
    end process;

    --Aquí enchufamos la ROM cuando la tengamos, pcin va a la entrada de la ROM, no pc_out (mirar apuntes)
    i_ROM : entity work.ROM
    port map(
        clk => clk,
        en_pc => en_pc,
        addr => pc_in,
        data => ir_in
    );

    p_irout: process(clk)
    begin
        if reset_n = '0' then
            ir_out_m <= (others => '0');
            pc_ir <= (others => '0');
        elsif rising_edge(clk) then
            if en_ir = '1' then
                ir_out_m <= ir_in;
                pc_ir <= pc_out;
            end if;
        end if;
    end process;

    i_genInm : entity work.InmGen
    port map(
        inst => ir_out_m,
        tipo_inst => tipo_inst,
        mask_b0 => mask_b0,
        inm => inm
    );

    with m_banco select
    d_in_banco <= d_ram_alu when "00",
                  pc_out when "01",
                  inm when "10",
                  (others => '0') when others;

    i_BancoReg: entity work.BancoRegistros
    port map(
        addrA => ir_out_m(19 downto 15),
        addrB => ir_out_m(24 downto 20),
        addrW => ir_out_m(11 downto 7),
        d_in => d_in_banco,
        clk => clk,
        reset_n => reset_n,
        en => en_banco,
        regA => reg_a,
        regB => reg_b
    );

    --Muxes a la salida del banco de regis
    a <= reg_a when m_alu_a = "00" else 
        pc_out when m_alu_a = "01" else 
        pc_ir when m_alu_a = "10" else
        (others => '0');

    b <= reg_b when m_alu_b = "00" else 
        std_logic_vector(to_unsigned(4,32)) when m_alu_b = "01" else 
        inm when m_alu_b = "10" else
        (others => '0');
    

    --shamt
    shamt <= reg_b(4 downto 0) when m_shamt = '0' else ir_out_m(24 downto 20) when m_shamt = '1' else "00000";

    i_ALU: entity work.ALU
    port map(
        a => a,
        b => b,
        alu_op => alu_op,
        shamt => shamt,
        alu_out => alu_out,
        z => z,
        lt => lt,
        ge => ge
    );

    p_aluout: process(clk)
    begin
        if reset_n = '0' then
            alur_out <= (others => '0');
        elsif rising_edge(clk) then
            alur_out <= alu_out;
        end if;
    end process;
            

    i_RAM : entity work.Ram
    port map(
        addr => alur_out,
        din => reg_b,
        tipo_acc => tipo_acc,
        l_u => l_u,
        we_ram => we_ram,
        clk => clk,
        dout => dout_ram
    );

    d_ram_alu <= alur_out when m_ram = '0' else dout_ram;

    ir_out <= ir_out_m;

end structural;