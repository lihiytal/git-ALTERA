library ieee;
use ieee.std_logic_1164.all;

entity IR_LED is 
port(fr: in integer range 0 to 255;
	y: out integer range 0 to 255);
end;
architecture behave of IR_LED is
begin
	y<= 1 when fr=0
	else 0;
	end behave;