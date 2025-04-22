library ieee;
use ieee.std_logic_1164.all; -- Importa a biblioteca IEEE para acesso aos tipos de dados 'std_logic' e 'std_logic_vector'.

entity contador_de_um is
end entity;

architecture sim of contador_de_um is
    signal clk  : std_logic_vector(7 downto 0) := "01010101"; -- Vetor inicializado com um padrão específico.
    signal cnt  : natural := 0;
    signal cnt2 : natural := 0;
begin

    total_1 process is
	variable contador  :   integer := 0;
    begin

        -- Desloca cada bit para a direita.
        -- for i in clk'range loop
        -- for i in clk'reverse_range loop
        for i in clk'left downto clk'right loop
            if clk(i) = '1' then
                cnt <= cnt + 1;
                wait for 10 ns;
            end if;
        end loop;
        --slv3(slv3'right) <= slv3(slv3'left); -- O bit mais à direita recebe o valor do bit mais à esquerda, completando o deslocamento circular.
        --report "VARIAVEL = " & integer'image(contador) & " SINAL = " & integer'image(clk);
	    report "Contador = " & integer'image(cnt);
        wait;
    end process;

    total_101 process is
    begin
    
        -- Desloca cada bit para a direita.
        -- for i in clk'range loop
        -- for i in clk'reverse_range loop
        for i in 0 to clk'length - 3 loop
            if clk(i + 2 downto i) = "101" then
                cnt2 <= cnt2 + 1;
                wait for 10 ns;
            end if;
        end loop;
        --slv3(slv3'right) <= slv3(slv3'left); -- O bit mais à direita recebe o valor do bit mais à esquerda, completando o deslocamento circular.
        --report "VARIAVEL = " & integer'image(contador) & " SINAL = " & integer'image(clk);
        report "Contador = " & integer'image(cnt2);
        wait;
    end process;

end architecture;
