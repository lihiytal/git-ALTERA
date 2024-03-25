library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ADSR is
port (clk : in bit;
		f : in integer range 0 to 255;
		vol : in integer range 0 to 15;
		key:in integer range 0 to 8;
		A,D,R :in integer range 0 to 25000000;
		f_out:out integer range 0 to 255);
end;

architecture behave of ADSR is
type state_type is (Idle, Attack, Decay, Sustain, Release);
signal state : state_type := Idle;
signal sustain_vol : integer range 0 to 255;
signal key_s: bit;
signal y: integer range 0 to 255;
signal cnt : integer range 0 to 25000000:=0;
begin
	key_s <= '0' when key=0 else
				 '1';
--	A<= 25000;
--	D<= 2500000 when dm="00" else
--		 12500 when dm="01";
--	R<= 12500 when dm="00" else
--		 25000000 when dm="01";

	with vol select
	sustain_vol <= 0 when 0,
						15 when 1,
						31 when 2,
						47 when 3,
						63 when 4,
						79 when 5,
						95 when 6,
						111 when 7,
						127 when 8,
						143 when 9,
						159 when 10,
						175 when 11,
						191 when 12,
						207 when 13,
						223 when 14,
						239 when 15;

	process(clk)
	begin
		if clk'event and clk='1' then
			if key_s='1' and state=Idle then state <= Attack;
			elsif key_s='0' and (state=Attack or state=Decay or state=Sustain) then state <= Release;
			end if;
			if y=1 and state=Release then state <= Idle;
			elsif y=254 and state=Attack then state <= Decay;
			elsif y=sustain_vol+1 and state=Decay then state <= Sustain;
			end if;
		end if;
	end process;

	process(clk)
	begin
	if clk'event and clk='1' then
		case state is
			when Attack => cnt <= cnt + 1;
								if cnt=A then y <= y + 1; 
								cnt <= 0;
								end if;
			when Decay => 	cnt <= cnt + 1;
								if cnt=D then y <= y - 1; 
								cnt <= 0; 
								end if;
			when Release => cnt <= cnt + 1;
								 if cnt=R then y <= y - 1; 
								 cnt <= 0; 
								 end if;
			when others => y <= y;
		end case;
		end if;
	end process;

	f_out<=y*f/255;

end behave;