library ieee;
use ieee.std_logic_1164.all;

entity SOUND_DIV is
port (D : in integer range 0 to 8;
		clk : in bit;
		f : out bit);
end;

architecture behave of SOUND_DIV is
signal cnt: integer range 0 to 50000000;
signal y: bit;
signal s: integer range 0 to 95556;
begin
	process (clk)
	begin
		if clk'event and clk = '1' then
			if cnt<s then cnt<= cnt + 1;
			else cnt<=0;
			y <= not(y);
			end if;
		end if;
	end process;
	
	f<= '0' when D=0 else y;
	
	with d select
	s <= 95555 when 8,
		  85132 when 7,
		  75843 when 6,
		  71586 when 5,
		  63776 when 4,
		  56818 when 3,
		  50620 when 2,
		  47778 when 1,
		  0 when others;
end behave;