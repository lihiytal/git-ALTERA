library ieee;
use ieee.std_logic_1164.all;

entity trigger is
port (	clk: in bit;
			trig:out bit);
		end;
	
architecture behave of trigger is
	signal cnt: integer range 0 to 2500000;
begin
	process (clk)
	begin
		if clk'event and clk='1' then
		if cnt<2500000 then cnt<=cnt+1;
		else cnt<=0;
		end if;
		if cnt<1000 then trig <='1';
		else trig <='0';
		end if;
		end if;
	end process;
end behave;