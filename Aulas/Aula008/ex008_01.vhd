-- Desenvolva um código em VHDL que faça um led do kit de desenvolvimento piscar na taxa de 2 Hz. Se estiver utilizando o kit de10 lite o clock da placa é de 50 MHz.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

entity ex008_01 is
    port (
        clk : in std_logic;         -- Clock do sistema
        led : out std_logic      -- Bit de saída do registro de deslocamento
    );
end entity ex008_01;

architecture rtl of ex008_01 is
    signal led_temp : std_logic := '0';
    signal ctd : unsigned(24 downto 0) := (others => '0');
begin
    process(clk) is
    begin
        if rising_edge(clk) then
            if ctd = ((50_000_000/4)-1) then
                ctd <= (others => '0');
                led_temp <= not led_temp;
            else
                ctd <= 1 + ctd;
            end if;
        end if;
    end process;
    led <= led_temp;
end architecture;
