
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


--library ieee;
--use ieee.std_logic_1164.all;
--
--entity P_ENCODER is
--port (IR : in bit_VECTOR (7 downto 0);
--		Y : out integer range 0 to 8);
--end;
--
--architecture behave of P_ENCODER is
--begin
--process(IR)
--begin
--	
--end process;
--process(IR(7))
--begin 
--	if IR(7)'event and IR(7)='0' then y<=8;
--	else y<=0;
--	end if;
--	end process;
--	
--process(IR(6))
--begin 
--	if IR(6)'event and IR(6)='0' then y<=7;
--		else y<=0;
--	end if;
--	end process;
--	
--process(IR(5))
--begin 
--	if IR(5)'event and IR(5)='0' then y<=6;
--		else y<=0;
--	end if;
--	end process;
--	
--process(IR(4))
--begin 
--	if IR(4)'event and IR(4)='0' then y<=5;
--		else y<=0;
--	end if;
--	end process;
--	
--process(IR(3))
--begin 
--	if IR(3)'event and IR(3)='0' then y<=4;
--		else y<=0;
--	end if;
--	end process;
--	
--process(IR(2))
--begin 
--	if IR(2)'event and IR(2)='0' then y<=3;
--		else y<=0;
--	end if;
--	end process;
--	
--process(IR(1))
--begin 
--	if IR(1)'event and IR(1)='0' then y<=2;
--		else y<=0;
--	end if;
--	end process;
--	
--	process(IR(0))
--begin 
--	if IR(0)'event and IR(0)='0' then y<=1;
--		else y<=0;
--	end if;
--	end process;
--
--end behave;
--
--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--use ieee.numeric_std.all;
--
--entity p_encoder is
--    Port ( IR : in bit_vector(7 downto 0);
--           Y : buffer integer range 0 to 8);
--end;
--
--architecture behave of p_encoder is
--begin
--	
--    process(IR)
--	 variable keyIndex: integer range 0 to 8;
--    begin
--			keyIndex := 0;
--        -- Find the index of the last pressed key
--        for i in 0 to 7 loop
--            if IR(i) = '0' and Y /= i then
--					keyIndex := 1 + i;
--            end if;
--        end loop;
--
--        -- Output the index of the last pressed key
--        Y <= keyIndex;
--    end process;
--
--end behave;
