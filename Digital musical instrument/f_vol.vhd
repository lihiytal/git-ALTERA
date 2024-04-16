library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity f_vol is 
port(f : in integer range 0 to 1;
		vol : in integer range 0 to 15;
	  f_out:out integer range 0 to 255 );
end;
architecture behave of f_vol is
signal s_vol:integer range 0 to 255;
begin
		with vol select
		s_vol <= 0 when 0,
				6 when 1,
				12 when 2,
				18 when 3,
				24 when 4,
				30 when 5,
				36  when 6,
				42 when 7,
				48 when 8,
				54 when 9,
				60 when 10,
				66 when 11,
				72 when 12,
				78 when 13,
				84 when 14,
				90 when 15;
	f_out<=f*(s_vol);
end behave;