library ieee;
use ieee.std_logic_1164.all; -- Importa tipos e operaÃ§Ãµes para std_logic e std_logic_vector.
use ieee.numeric_std.all;    -- Importa tipos e operaÃ§Ãµes para signed e unsigned.

entity exercicio006 is
end entity;

architecture sim of exercicio006 is
    signal clk : std_logic := '0';
    signal baund_9600 :std_logic   := '0';
    signal baund_115200 : std_logic := '0';
    
    signal tx_9600 : std_logic_vector(9 downto 0);
    signal tx_115200 : std_logic_vector(9 downto 0);

    constant a_ascii : std_logic := x'61';
    constant A_ascii : std_logic := x'41';

begin
    
    
    send_9600 process(clk) is
    begin
        tx_9600(0) <= '0';
        wait for baund_9600;
        for i in 1 to 8 loop
            tx_9600(i+1) = 0000 1111 << 
            wait for baund_9600;
        end loop
        tx_9600(9) <= '1';
        wait for baund_9600;
    end process;

    
    send_115200 process(clk) is
    begin
        
    end process;

    
    clk <= not clk after 1 s; 
    baund_9600 <= not baund_9600 after 104 us;
    baund_115200 <= not baund_115200 after 8 us;
    
end architecture;
