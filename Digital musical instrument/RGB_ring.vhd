library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RGB_ring is
  generic (
    one_on: integer := 40;
    one_off: integer := 21;
    zero_on: integer := 20;
    zero_off: integer := 41;
    reset_time: integer := 100000
  );
  port (
    clk: in bit; 
    color_select: in integer range 0 to 2; 
	 s: in integer range 0 to 15;
    d_out: out bit
  );
end;

architecture behave of RGB_ring is
  type state is (color, stop);
  signal current_bit: std_logic;
  signal clkCount: integer range 0 to 4095;
  signal currentLed, currentLedBit: integer range 0 to 255;
  signal ledWindDir: integer range 0 to 31;
  signal green, red, blue, current_color: std_logic_vector(7 downto 0);
  signal stateCurrent: state := stop;
begin
  process(clk)
  begin
    if clk'event and clk = '1' then
      case stateCurrent is
        when color =>
          if clkCount < 61 then
            clkCount <= clkCount + 1;
					if current_bit = '1' and clkCount < one_on  then
						d_out <= '1';
					elsif current_bit = '0' and clkCount < zero_on then
						d_out <= '1';
					else
						d_out <= '0';
					end if;
          else
            clkCount <= 0;
            if currentLedBit < 23 then
              currentLedBit <= currentLedBit + 1;
            else
              currentLedBit <= 0;
              if currentLed < 23 then
                currentLed <= currentLed + 1;
              else
                currentLed <= 0;
                stateCurrent <= stop;
              end if;
            end if;
          end if;

        when stop =>
			 case s is
				when 0 =>
					red <= std_logic_vector(to_unsigned(0, 8));
					green <= std_logic_vector(to_unsigned(0, 8));
					blue <= std_logic_vector(to_unsigned(0, 8));
				when 1 =>
					--blue
					red <= std_logic_vector(to_unsigned(0, 8));
					green <= std_logic_vector(to_unsigned(0, 8));
					blue <= std_logic_vector(to_unsigned(255 * 100 / 255, 8));
				when 2=>
					-- green
					red <= std_logic_vector(to_unsigned(0, 8));
					green <= std_logic_vector(to_unsigned(255 * 100 / 255, 8));
					blue <= std_logic_vector(to_unsigned(0, 8));
				when 3 =>
					--yellow
					red <= std_logic_vector(to_unsigned(255 * 100 / 255, 8));
					green <= std_logic_vector(to_unsigned(127 * 100 / 255, 8));
					blue <= std_logic_vector(to_unsigned(0, 8));
				when 4 =>
					--red
					red <= std_logic_vector(to_unsigned(255 * 100 / 255, 8));
					green <= std_logic_vector(to_unsigned(0, 8));
					blue <= std_logic_vector(to_unsigned(0, 8));
				when 5 =>
					--pink
					red <= std_logic_vector(to_unsigned(255 * 100 / 255, 8));
					green <= std_logic_vector(to_unsigned(50 * 100 / 255, 8));
					blue <= std_logic_vector(to_unsigned(50 * 100 / 255, 8));
				when 6=>
					--orange
					red <= std_logic_vector(to_unsigned(255, 8));
					green <= std_logic_vector(to_unsigned(100 * 150 / 255, 8));
					blue <= std_logic_vector(to_unsigned(0 * 100 / 255, 8));
				when 7 =>
									--white
					red <= std_logic_vector(to_unsigned(200 * 100 / 255, 8));
					green <= std_logic_vector(to_unsigned(200 * 100 / 255, 8));
					blue <= std_logic_vector(to_unsigned(200 * 100 / 255, 8));
				when 8 =>
									--purple
					red <= std_logic_vector(to_unsigned(121 * 100 / 255, 8));
					green <= std_logic_vector(to_unsigned(50 * 100 / 255, 8));
					blue <= std_logic_vector(to_unsigned(168 * 100 / 255, 8));
				when 9 =>
									--lightblue 161, 231, 247
					red <= std_logic_vector(to_unsigned(100 * 100 / 255, 8));
					green <= std_logic_vector(to_unsigned(200, 8));
					blue <= std_logic_vector(to_unsigned(200, 8));
				when 10 =>
									--turquoise 41, 87, 83
					red <= std_logic_vector(to_unsigned(0, 8));
					green <= std_logic_vector(to_unsigned(255, 8));
					blue <= std_logic_vector(to_unsigned(100, 8));
				when others =>
					red <= std_logic_vector(to_unsigned(0, 8));
					green <= std_logic_vector(to_unsigned(0, 8));
					blue <= std_logic_vector(to_unsigned(0, 8));
				end case;
          d_out <= '0';
          clkCount <= clkCount + 1;
          if clkCount > reset_time then
            clkCount <= 0;
            stateCurrent <= color;
          end if;
      end case;
    end if;
  end process;
	current_bit <= current_color(7 - currentLedBit mod 8); --when (currentled > ledwinddir - 2 and currentLed < ledwinddir + 2) else '0';
  current_color <= green when currentLedBit < 8 else
                    red when currentLedBit < 16 else
                    blue when currentLedBit < 24;
end behave;