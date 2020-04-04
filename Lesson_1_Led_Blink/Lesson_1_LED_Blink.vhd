library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity lesson_1_LED_Blink is
	generic(
		ClockSpeed : integer := 50_000_000				-- This how much your FPGA clock internal. I used 50MHz.
	);
	port(
		CLK	: in std_logic;								-- This is your clock source as input
		Led	: out std_logic;								-- This is your LED pin as output
		reset	: in std_logic									-- This is additional input for reset your program
	);
end entity;

architecture led_blink_1s of lesson_1_LED_Blink is

signal clock_count 	: integer range 0 to ClockSpeed :=0;
signal forward			: std_logic := '0';

begin

process (CLK,reset,forward)
	begin
		if reset = '0' then
			clock_count <= 0;
			Led <='1';
		elsif rising_edge(CLK) then
			if forward = '0' then
				if clock_count < 49999999 then
					clock_count <= clock_count + 1;
				else 
					forward <= '1';
					Led <= '0';
				end if;
			elsif forward = '1' then
				if clock_count > 1 then
					clock_count <= clock_count - 1;
				else 
					forward <= '0';
					Led <= '1';
				end if;
			end if;
		end if;
end process;

end led_blink_1s;
		
 