library ieee;
use ieee.std_logic_1164.all;

entity dm is 
port(	d_web: in bit;
		d_mus: in bit;
		dm: in bit_VECTOR (1 downto 0);
		d_out: out bit);
end;
architecture behave of dm is
begin	
	with dm select
	d_out <= d_web when "00",
				d_mus when others;
				
				
end behave;