library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY lesson_2_led_button is 
	port (
		clk	: in std_logic;
		btn	: in std_logic;
		led	: out std_logic
	);
end ENTITY;	

ARCHITECTURE led_button of lesson_2_led_button is
	
	signal state	: std_logic := '0';
	signal done_press	: std_logic := '0';

begin
	process(clk,btn,state)
		begin
			if rising_edge(clk) then
				if btn = '1' then
					if done_press = '1' then
						if state = '1' then
							state <= '0'; 
						elsif state = '0' then
							state <= '1';
						end if;
						done_press <= '0';
					end if;
				end if;
				if btn = '0' then
					if done_press = '0' then
						done_press <= '1';
					end if;
				end if;
			end if;
			led <= state;
		end process;

end led_button;