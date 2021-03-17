function Shiftleft(dato_in: std_logic_vector(15 downto 0); n: std_logic_vector(1 downto 0))
    return std_logic_vector(15 downto 0) is variable resultado: std_logic_vector;
begin
    resultado := std_logic_vector(to_unsigned(0,16));
    if n = "00" then
        resultado := dato_in;
    elsif n= "01" then
        resultado := dato_in(14 downto 0) & '0';
    elsif n= "10" then
        resultado := dato_in(13 downto 0) & "00";
    else
        resultado := dato_in(12 downto 0) & "000";
    end if;
    return resultado;
end Shiftleft;

function ShiftRightLogic(dato_in: std_logic_vector(15 downto 0); n: std_logic_vector(1 downto 0))
    return std_logic_vector(15 downto 0) is variable resultado: std_logic_vector;
begin
    resultado := std_logic_vector(to_unsigned(0,16));
    if n = "00" then
        resultado := dato_in;
    elsif n= "01" then
        resultado := '0' & dato_in(15 downto 1);
    elsif n= "10" then
        resultado := "00" & dato_in(15 downto 2);
    else
        resultado := "000" & dato_in(15 downto 3);
    end if;
    return resultado;
end ShiftRightLogic;

function ShiftRightArith(dato_in: std_logic_vector(15 downto 0); n: std_logic_vector(1 downto 0))
    return std_logic_vector(15 downto 0) is variable resultado: std_logic_vector;
begin
    resultado := std_logic_vector(to_unsigned(0,16));
    if n = "00" then
        resultado := dato_in;
    elsif n= "01" then
        resultado := dato_in(15) & dato_in(15 downto 1);
    elsif n= "10" then
        resultado := dato_in(15) & dato_in(15) & dato_in(15 downto 2);
    else
        resultado := dato_in(15) & dato_in(15) & dato_in(15) & dato_in(15 downto 3);
    end if;
    return resultado;
end ShiftRightArith;

