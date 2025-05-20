library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity leds_top is
	port(
		MAX10_CLK1_50	:	in std_logic;
		LEDR				: out std_logic_vector(9 downto 0);
		SW					:	in unsigned(9 downto 0)
	);
end entity;

architecture estrutural of leds_top is

	constant sysfreq	: integer	:= 50e6;

begin

	-- instanciação nominal
	disp_blink: entity work.blink(comportamental)
		generic map(
			sysfreq 	=> sysfreq,
			ledfreq 	=> 1
		)
		port map(
			clk		=> MAX10_CLK1_50,
			led		=> LEDR(0)
		);
		
	disp_pwm: entity work.pwm(comportamental)
		generic map(
			sysfreq 	=> sysfreq,
			pwmfreq 	=> 1000
		)
		port map(
			clk 		=> MAX10_CLK1_50,
			led 		=>	LEDR(2),
			sw			=>	SW(3 downto 0)
		);
		
	-- instanciação posicional
	disp_blink2: entity work.blink(comportamental)
		generic map(sysfreq, 2)
		port map(MAX10_CLK1_50, LEDR(1));
		
	disp_pwm2: entity work.pwm(comportamental)
		generic map(sysfreq, 1000)
		port map(MAX10_CLK1_50, SW(7 downto 4), LEDR(3));

end architecture;
