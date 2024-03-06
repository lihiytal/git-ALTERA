library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ADR is
port (sw_A, sw_D, sw_R: in integer range 0 to 7;
		A,D,R :out integer range 0 to 25000000);
end;

architecture behave of ADR is
begin
	with sw_A select
	A<= 25000 when 0,
		 30000 when 1,
		 35000 when 2,
		 40000 when 3,
		 45000 when 4,
		 50000 when 5,
		 55000 when 6,
		 60000 when others;
		 
	with sw_D select
	D<= 12500 when 0,
		 367900 when 1,
		 723200 when 2,
		 1078600 when 3,
		 1433900 when 4,
		 1789300 when 5,
		 2144600 when 6,
		 2500000 when others;
		 
	with sw_R select
	R<= 12500 when 0,
		 3582142 when 1,
		 7151784 when 2,
		 10721426 when 3,
		 14291068 when 4,
		 17860710 when 5,
		 21430352 when 6,
		 25000000 when others;

end behave;
