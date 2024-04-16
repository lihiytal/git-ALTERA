library ieee;
use ieee.std_logic_1164.all;
entity pulse_sw is 
port(clk, trig : in bit;
		pulse : buffer bit);
	end;

architecture behave of pulse_sw is
signal cnt: integer range 0 to 25000000;
signal clr, enable: bit;
begin
	process(trig)
	begin
		if trig'event and trig ='0' then
			pulse<='1'; enable<='1';
			end if;
		if cnt=25000000 then 
			pulse<='0'; enable<='0'; 
			end if;
		end process;
	
	process(clk)
	begin
		if clr='1' then cnt<=0;
		elsif clk'event and clk='1' and enable = '1' then
			if cnt<25000000 then cnt<=cnt+1;
			else cnt<=0;
			end if;
		end if;
	end process;
	
	clr<='1' when cnt = 25000000 else '0';
end behave;