library ieee;
use ieee.std_logic_1164.all;

entity padding1 is
port (old : in bit;
		n_ew : out bit_VECTOR (7 downto 0));
end;

architecture behave of padding1 is
begin
n_ew <= '0' & '0' & '0' & '0'& '0' & '0' & '0' &old;
end behave;