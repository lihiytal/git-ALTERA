library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity s_vol is 
port(	vol : in integer range 0 to 15;
	  s_min:out integer range 0 to 255;
	  s_max:out integer range 0 to 255 );
end;
architecture behave of s_vol is
begin
	with vol select
	s_min <= 0 when 0,
				16 when 1,
				32 when 2,
				48 when 3,
				64 when 4,
				80 when 5,
				96 when 6,
				112 when 7,
				128 when 8,
				144 when 9,
				160 when 10,
				176 when 11,
				192 when 12,
				208 when 13,
				224 when 14,
				240 when 15;
		with vol select
		s_max <= 15 when 0,
				31 when 1,
				47 when 2,
				63 when 3,
				79 when 4,
				95 when 5,
				111  when 6,
				127 when 7,
				143 when 8,
				159 when 9,
				175 when 10,
				191 when 11,
				207 when 12,
				223 when 13,
				239 when 14,
				255 when 15;
end behave;