library ieee;
use ieee.std_logic_1164.all;

entity padding3_8 is
port (kOld : in bit_VECTOR (2 downto 0);
		kNew : out bit_VECTOR (7 downto 0));
end;

architecture behave of padding3_8 is
begin
kNew <= '0' & '0' & '0' & '0' & '0' & kOld;
end behave;