library ieee;
use ieee.std_logic_1164.all;

entity div_rx is
port (rx: in bit_VECTOR (7 downto 0);
		RGB: out bit_VECTOR (3 downto 0);
		dm: out bit_VECTOR (1 downto 0));
end;

architecture behave of div_rx is
begin
dm<= rx(1 downto 0);
RGB<= rx(5 downto 2);
end behave;
