library ieee;
use ieee.std_logic_1164.all;

entity octava is 
port(	pulse: in bit;
		octava: out integer range 0 to 8;
		oct: out integer range 0 to 255);
end;
architecture behave of octava is
signal cnt: integer range 0 to 8:=4;
begin	
	process(pulse)
	begin
		if pulse'event and pulse='1'then 
			if cnt=8 then cnt <= 0; 
			else cnt <= cnt + 1;
			end if;
		end if;
	end process;
	with cnt select
	oct <= 	 1 when 0,
				 2 when 1,
				 4 when 2,
				 8 when 3,
				 16 when 4,
				 32 when 5,
				 64 when 6,
				 128 when 7,
				 255 when 8;
	
	octava <= cnt;
end behave;
