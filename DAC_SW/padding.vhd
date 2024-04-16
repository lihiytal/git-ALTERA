library ieee;
use ieee.std_logic_1164.all;

entity padding is
port (old : in bit_vector (3 downto 0);
		n_ew : out bit_VECTOR (7 downto 0));
end;

architecture behave of padding is
begin
n_ew <= '0' & '0' & '0' & '0' &old;
end behave;