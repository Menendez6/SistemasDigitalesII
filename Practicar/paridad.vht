function CalcParidad(data_in : std_logic_vector, par : boolean)
    return std_logic is
        variable paridad : std_logic;
    begin
        paridad:='0';
        for i in 0 to data_in'lenght - 1 loop
            paridad := paridad xor data_in(i);
        end loop;

        if par = false then
            paridad := not paridad;
        end if;
    return paridad;
end CalcParidad;
