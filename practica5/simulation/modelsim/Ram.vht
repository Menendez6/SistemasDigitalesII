library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Ram_vhd_tst is
end Ram_vhd_tst;

architecture tst_bnch of Ram_vhd_tst is
    signal addr, din: std_logic_vector(31 downto 0);
   -- addr_ram : std_logic_vector(9 downto 0); -- No necesitamos toda la addr, solo los 12 bits lsb
    --addr_mux : std_logic_vector(1 downto 0);
    signal tipo_acc : std_logic_vector(1 downto 0);
    signal l_u, we_ram: std_logic;
    signal clk: std_logic := '0';
    signal dout : std_logic_vector(31 downto 0);
    constant c_clk_period: time := 10 ns;

    -- intermediate signals
    signal d_to_read : std_logic_vector(31 downto 0);

begin
    i1 : entity work.Ram
    port map(
        addr => addr,
        din => din,
		tipo_acc => tipo_acc,
		l_u => l_u, 
        we_ram => we_ram,
        clk => clk,
		dout => dout
    );

    p_clk : process
    begin
        clk<='0';
        wait for c_clk_period/2;
        clk<='1';
        wait for c_clk_period/2;
    end process;

    p_stim : process
    begin
        --inicializamos todas las entradas
        addr <= (others => '0');
        din <= (others => '0');
        tipo_acc <= "00";
        l_u <= '0';
        we_ram <= '0';

        wait until clk = '1';
        wait until clk = '0';
        wait for 2 ns;
            

        tipo_acc <= "10"; -- word access
        for i in 0 to 255 loop
            for a in 0 to 3 loop
                -- The data written is composed of 4 bytes, each with a distinct value.
                -- In addition, in each address the value is also different (i+a)
                din(7  downto  0) <= std_logic_vector(to_unsigned(i+a  ,8));
                din(15 downto  8) <= std_logic_vector(to_unsigned(i+a+1,8));
                din(23 downto 16) <= std_logic_vector(to_unsigned(i+a+2,8));
                din(31 downto 24) <= std_logic_vector(to_unsigned(i+a+3,8));
                addr <= X"0000000" & std_logic_vector(to_unsigned(a, 2)) & "00";
                we_ram   <= '1';
                wait for c_clk_period;
                we_ram   <= '0';
                din <= (others => '0'); -- to verify the we_ram signal
                wait for c_clk_period;  
            end loop;
            -- now we_ram read the values
            we_ram <= '0';
            for a in 0 to 3 loop
                din <= (others => '0');
                addr <= X"0000000" & std_logic_vector(to_unsigned(a, 2)) & "00";
                
                d_to_read(7  downto  0) <= std_logic_vector(to_unsigned(i+a  ,8));
                d_to_read(15 downto  8) <= std_logic_vector(to_unsigned(i+a+1,8));
                d_to_read(23 downto 16) <= std_logic_vector(to_unsigned(i+a+2,8));
                d_to_read(31 downto 24) <= std_logic_vector(to_unsigned(i+a+3,8));
                wait for c_clk_period;
                assert dout = d_to_read
                report "Error in RAM word access: data read is not data written."
                severity failure;
            end loop;
        end loop;

        tipo_acc <= "01"; -- half word access
    for i in 0 to 255 loop
      for a in 0 to 7 loop
        -- The data written is composed of 2 bytes, each with a distinct value.
        -- In addition, in each address the value is also different (i+a)
        din(7  downto  0) <= std_logic_vector(to_unsigned(i+a  ,8));
        din(15 downto  8) <= std_logic_vector(to_unsigned(i+a+1,8));
        -- In this case, the 16 higher bits are not used. we_ram give then values
        -- to check that they are effectively ignored.
        din(23 downto 16) <= std_logic_vector(to_unsigned(i+a+2,8));
        din(31 downto 24) <= std_logic_vector(to_unsigned(i+a+3,8));
        addr <= X"0000000" & std_logic_vector(to_unsigned(a, 3)) & '0';
        we_ram   <= '1';
        wait for c_clk_period;
        we_ram   <= '0';
        din <= (others => '0'); -- to verify the we_ram signal
        wait for c_clk_period;  
      end loop;
      -- now we_ram read the values as signed
      we_ram  <= '0';
      l_u <= '0';
      for a in 0 to 7 loop
        din <= (others => '0');
        addr <= X"0000000" & std_logic_vector(to_unsigned(a, 3)) & '0';
        
        d_to_read(7  downto  0) <= std_logic_vector(to_unsigned(i+a  ,8));
        d_to_read(15 downto  8) <= std_logic_vector(to_unsigned(i+a+1,8));
        wait for 1 fs; -- to actualize d_to_read(15)
        d_to_read(31 downto 16) <= (others => d_to_read(15));
        wait for c_clk_period;
        assert dout = d_to_read
          report "Error in RAM half signed access: data read is not data written."
          severity failure;
      end loop;
      -- And now as unsigned
      l_u <= '1';
      for a in 0 to 7 loop
        din <= (others => '0');
        addr <= X"0000000" & std_logic_vector(to_unsigned(a, 3)) & '0';
        
        d_to_read(7  downto  0) <= std_logic_vector(to_unsigned(i+a  ,8));
        d_to_read(15 downto  8) <= std_logic_vector(to_unsigned(i+a+1,8));
        d_to_read(31 downto 16) <= (others => '0');
        wait for c_clk_period;
        assert dout = d_to_read
          report "Error in RAM half unsigned access: data read is not data written."
          severity failure;
      end loop;
    end loop;
    
    -- And finally we_ram test the byte access
    tipo_acc <= "00"; -- byte access
    for i in 0 to 255 loop
      for a in 0 to 15 loop
        -- The data written is composed of 1 byte.
        -- In addition, in each address the value is also different (i+a)
        din(7  downto  0) <= std_logic_vector(to_unsigned(i+a  ,8));
        -- In this case, the 24 higher bits are not used. we_ram give then values
        -- to check that they are effectively ignored.
        din(15 downto  8) <= std_logic_vector(to_unsigned(i+a+1,8));
        din(23 downto 16) <= std_logic_vector(to_unsigned(i+a+2,8));
        din(31 downto 24) <= std_logic_vector(to_unsigned(i+a+3,8));
        addr <= X"0000000" & std_logic_vector(to_unsigned(a, 4));
        we_ram   <= '1';
        wait for c_clk_period;
        we_ram   <= '0';
        din <= (others => '0'); -- to verify the we_ram signal
        wait for c_clk_period;  
      end loop;
      -- now we_ram read the values as signed
      we_ram  <= '0';
      l_u <= '0';
      for a in 0 to 15 loop
        din <= (others => '0');
        addr <= X"0000000" & std_logic_vector(to_unsigned(a, 4));
        
        d_to_read(7  downto  0) <= std_logic_vector(to_unsigned(i+a  ,8));
        wait for 1 fs; -- to actualize d_to_read(7)
        d_to_read(31 downto 8) <= (others => d_to_read(7));
        wait for c_clk_period;
        assert dout = d_to_read
          report "Error in RAM byte signed access: data read is not data written."
          severity failure;
      end loop;
      -- And now as unsigned
      l_u <= '1';
      for a in 0 to 15 loop
        din <= (others => '0');
        addr <= X"0000000" & std_logic_vector(to_unsigned(a, 4));
        
        d_to_read(7  downto  0) <= std_logic_vector(to_unsigned(i+a  ,8));
        d_to_read(31 downto 8) <= (others => '0');
        wait for c_clk_period;
        assert dout = d_to_read
          report "Error in RAM byte unsigned access: data read is not data written."
          severity failure;
      end loop;
    end loop;
    
    assert False
        report "Fin de la simulación"
        severity failure;
    end process;
end tst_bnch;

