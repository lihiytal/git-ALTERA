library ieee;
use ieee.std_logic_1164.all;

entity oc is 
port(	b_r: in bit;
		b_b: in bit;
		clk: in bit;
		octava: out integer range 0 to 8;
		oct: out integer range 0 to 255;
		b: out bit);
end;
architecture behave of oc is
signal cnt: integer range 0 to 8;
begin
	process(clk)
	begin
		if clk'event and clk='1' then
			if b_b='0' then cnt <= cnt+1;
			elsif b_r='0' then cnt <= cnt-1;
			end if;
		end if;
	end process;
	
	with cnt select
	oct <= 1 when 0,
				 2 when 1,
				 4 when 2,
				 8 when 3,
				 16 when 4,
				 32 when 5,
				 64 when 6,
				 128 when 7,
				 255 when 8;
	
	octava <= cnt;
	b <= '1';
end behave;