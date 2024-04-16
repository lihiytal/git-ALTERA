library ieee;
use ieee.std_logic_1164.all;

entity octava is 
port(	pulse: in bit;
		octava: out integer range 0 to 256);
end;
architecture behave of octava is
signal cnt: integer range 0 to 3:=1;
begin	
	process(pulse)
	begin
		if pulse'event and pulse='1'then  
			 cnt <= cnt + 1;
		end if;
	end process;
	with cnt select
	octava <= 8 when 0,
				 16 when 1,
				 32 when 2,
				 64 when 3;
end behave;
