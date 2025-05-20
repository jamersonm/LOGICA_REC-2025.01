library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pwm is
	generic(	sysfreq	:	integer	:= 50e6;
				pwmfreq	:	integer	:= 1000);
	port(
		clk	:	in		std_logic;
		sw		:	in		unsigned(3 downto 0);
		led	:	out	std_logic -- pwm
	);
end entity;

architecture comportamental of pwm is

	signal led_temp	:	std_logic;
	signal enable		:	boolean := False;
	signal comp			:	integer range 0 to 100;

begin

	led <= led_temp;

	-- Valor proporcional das chaves entre 0 e 99
	comp <= to_integer(sw) * 99 / 15;

	-- Processo para piscar o led
	process(clk, enable) is
		variable cnt 	:	integer range 0 to 100;
	begin
		if rising_edge(clk) then
			if enable then
				led_temp <= '0';
				cnt := cnt + 1;
				if cnt = 100 then
					cnt := 0;
				end if;
				if comp > cnt then
					led_temp <= '1';
				end if;
				
			end if;
		end if;
	end process;
	
	-- Processo para o divisor de frequência
	process(clk) is
		variable cnt	:	integer range 0 to sysfreq / (100 * pwmfreq) := 0;
	begin
	
		if rising_edge(clk) then
			cnt := cnt + 1;
			enable <= False;
			if cnt = sysfreq / (100 * pwmfreq) then
				cnt := 0;
				enable <= True;
			end if;
		end if;
	
	end process;
	

end architecture;
