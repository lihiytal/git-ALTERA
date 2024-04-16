library ieee;
use ieee.std_logic_1164.all;
entity waveform is
	port(clk: in bit;
		f_out: out bit;
		cnt: out integer range 0 to 162);
end ;
architecture behave of waveform is 
	signal f_out_tmp: bit;
	signal x: integer range 0 to 162;
begin
	process(clk)
	begin
		if clk'event and clk='1' then
		if x<162 then
			x<=x+1;
		else
			x<=0;
		f_out_tmp <= not f_out_tmp;
		end if;
		end if;
	end process;
	f_out<=f_out_tmp;
	cnt<=x;
end behave;	