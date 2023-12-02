library ieee;
use ieee.std_logic_1164.all;

entity P_ENCODER is
port (IR : in bit_VECTOR (7 downto 0);
		Y : out integer range 0 to 8);
end;

architecture behave of P_ENCODER is
begin
Y <=  8 WHEN IR(7)='0' ELSE
		7 WHEN IR(6)='0' ELSE
		6 WHEN IR(5)='0' ELSE
		5 WHEN IR(4)='0' ELSE
		4 WHEN IR(3)='0' ELSE
		3 WHEN IR(2)='0' ELSE
		2 WHEN IR(1)='0' ELSE
		1 WHEN IR(0)='0' ELSE
		0;
end behave;