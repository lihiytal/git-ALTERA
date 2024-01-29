library ieee;
use ieee.std_logic_1164.all;

entity padding is
port (keyOld : in bit_VECTOR (3 downto 0);
		keyNew : out bit_VECTOR (7 downto 0));
end;

architecture behave of padding is
begin
keyNew <= '0' & '0' & '0' & '0' & keyOld;
end behave;