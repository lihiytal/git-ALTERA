library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity f_vol is 
port(	f : in integer range 0 to 1;
		vol : in integer range 0 to 15;
	  f_out:out integer range 0 to 255 );
end;
architecture behave of f_vol is
signal s_vol : integer range 0 to 255;
begin
	with vol select
	s_vol <= 0 when 0,
				1 when 1,
				2 when 2,
				3 when 3,
				5 when 4,
				8 when 5,
				13 when 6,
				21 when 7,
				34 when 8,
				55 when 9,
				89 when 10,
				144 when 11,
				165 when 12,
				198 when 13,
				223 when 14,
				255 when 15;
	f_out<=f*(255-s_vol);
end behave;