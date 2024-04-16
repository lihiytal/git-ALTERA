library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SOUND_DIV is
port (D : in integer range 0 to 8;
		octava : in integer;
		clk : in bit;
		f : out bit);
end;

architecture behave of SOUND_DIV is
signal cnt: integer;
signal y: bit;
signal s: integer;
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
	--4
--	s <= 95555 when 8,
--		  85132 when 7,
--		  75843 when 6,
--		  71586 when 5,
--		  63776 when 4,
--		  56818 when 3,
--		  50620 when 2,
--		  47778 when 1,
--		  0 when others;
--
--		  95555*40/10000 when 8,1528902 23889 
--		  85132*40/10000 when 7,1362100 21283
--		  75843*40/10000 when 6,1213492 18961
--		  71586*40/10000 when 5,1145380 17897
--		  63776*40/10000 when 4,1020420 15944
--		  56818*40/10000 when 3, 909090 14204
--		  50620*40/10000 when 2, 809923 12655
--		  47778*40/10000 when 1, 764451 11944
--		  0 when others;
			--0
	s <=  1528902/octava when 8,
		   1362100/octava when 7,
		   1213492/octava when 6,
		   1145380/octava when 5,
		   1020420/octava when 4,
		    909090/octava when 3,
		    809923/octava when 2,
		    764451/octava when 1,
		  0 when others;

		  
end behave;