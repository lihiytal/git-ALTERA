library ieee;
use ieee.std_logic_1164.all;

entity padding_tx is
port (dis, key: in bit_VECTOR (3 downto 0);
		dout: out bit_VECTOR (7 downto 0));
end;

architecture behave of padding_tx is
begin
dout<= dis & key;
end behave;