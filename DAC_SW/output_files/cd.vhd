library ieee;
use ieee.std_logic_1164.all;
entity cd is 
port (clk: in bit;
cnt:buffer integer range 0 to 255;
                  y: buffer bit);
						end;
architecture b of cd is
--signal cnt: integer range 0 to 98;
begin
process(clk)
begin
if clk'event and clk='1' then
if cnt<255 then cnt<=cnt+1; else cnt<=0; y<=not y; end if;
end if;
end process;
end b;