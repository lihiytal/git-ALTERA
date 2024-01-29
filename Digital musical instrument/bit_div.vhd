library ieee;
use ieee.std_logic_1164.all;
entity bit_div is
port(dis : in integer range 0 to 255;
        dout: out bit_vector( 3 downto 0));
end;

architecture behave of bit_div is 
begin
	dout<= "0000" when ((dis>0) and (dis<3)) else
			 "0001" when ((dis>2) and (dis<5)) else
			 "0010" when ((dis>4) and (dis<7)) else
			 "0011" when ((dis>6) and (dis<9)) else
			 "0100" when ((dis>8) and (dis<11)) else
			 "0101" when ((dis>10) and (dis<13)) else
			 "0110" when ((dis>12) and (dis<15)) else
			 "0111" when ((dis>14) and (dis<17)) else
			 "1000" when ((dis>16) and (dis<19)) else
			 "1001" when ((dis>18) and (dis<21)) else
			 "1010" when ((dis>20) and (dis<23)) else
			 "1011" when ((dis>22) and (dis<25)) else
			 "1100" when ((dis>24) and (dis<27)) else
			 "1101" when ((dis>26) and (dis<29)) else
			 "1110" when ((dis>28) and (dis<31)) else
			 "1111";
end behave;