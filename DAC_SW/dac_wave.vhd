library ieee;
use ieee.std_logic_1164.all;

entity dac_wave is 
port(clk: in bit;
	  dout: out integer range 0 to 255);
end;
architecture behave of dac_wave is
signal cnt: integer range 0 to 255 := 0; 
signal u_d: bit :='1';
begin
	process(clk)
	begin
		if clk'event and clk = '1' then
			if u_d = '1' then cnt<=cnt+1;
			elsif u_d = '0' then cnt<=cnt-1;
			end if;
		end if;
	end process;
	dout <= cnt;
	u_d <= '0' when cnt=255 else
			 '1' when cnt=0 else u_d;
end behave;