library ieee;
use ieee.std_logic_1164.all;

entity mux_dis_tav is
port (dis, tav: in bit_VECTOR (7 downto 0);
		s:in bit_VECTOR (7 downto 0);
		Y : out bit_VECTOR (7 downto 0));
end;

architecture behave of mux_dis_tav is
begin
Y <=  tav when s(0)='0' else
		dis ;
end behave;