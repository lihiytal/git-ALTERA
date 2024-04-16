library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RGB_fvol is
  generic (
    one_on: integer := 40;
    one_off: integer := 21;
    zero_on: integer := 20;
    zero_off: integer := 41;
    reset_time: integer := 100000
  );
  port (
    clk: in bit; 
	 vol: in integer range 0 to 15;
	 k: in integer range 0 to 8;
    d_out: out bit
  );
end;

architecture behave of RGB_fvol is
  type state is (color, stop);
  signal current_bit: std_logic;
  signal clkCount: integer range 0 to 4095;
  signal currentLed, currentLedBit: integer range 0 to 255;
  signal ledWindDir: integer range 0 to 31;
  signal green, red, blue, current_color: std_logic_vector(7 downto 0);
  signal bright: integer range 0 to 255 ;
  signal stateCurrent: state := stop;
begin

		bright<=	6*(15-vol);
		
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
			 case k is
				when 8 =>
							--blue
					red   <= std_logic_vector(to_unsigned(0, 8));
					green <= std_logic_vector(to_unsigned(0, 8));
					blue  <= std_logic_vector(to_unsigned(255 * bright / 100, 8));
					
				when 7 =>
							-- green
					red   <= std_logic_vector(to_unsigned(0, 8));
					green <= std_logic_vector(to_unsigned(255 * bright / 100, 8));
					blue  <= std_logic_vector(to_unsigned(0, 8));

				when 6=>
							--yellow
					red   <= std_logic_vector(to_unsigned(255 * bright / 100, 8));
					green <= std_logic_vector(to_unsigned(127 * bright / 100, 8));
					blue  <= std_logic_vector(to_unsigned(0, 8));
					
				when 5 =>
							--orange
					red   <= std_logic_vector(to_unsigned(255* bright / 100, 8));
					green <= std_logic_vector(to_unsigned(100 * bright / 100, 8));
					blue  <= std_logic_vector(to_unsigned(0, 8));

				when 4 =>		
							--red
					red   <= std_logic_vector(to_unsigned(255 * bright / 100, 8));
					green <= std_logic_vector(to_unsigned(0, 8));
					blue  <= std_logic_vector(to_unsigned(0, 8));

				when 3 =>	
							--pink
					red   <= std_logic_vector(to_unsigned(255 * bright / 100, 8));
					green <= std_logic_vector(to_unsigned(50 * bright / 100, 8));
					blue  <= std_logic_vector(to_unsigned(50 * bright / 100, 8));
					
				when 2=>				
							--purple
					red   <= std_logic_vector(to_unsigned(121 * bright / 100, 8));
					green <= std_logic_vector(to_unsigned(50 * bright / 100, 8));
					blue  <= std_logic_vector(to_unsigned(168 * bright / 100, 8));
					
				when 1 =>
							--lightblue 161, 231, 247
					red   <= std_logic_vector(to_unsigned(100 * bright / 100, 8));
					green <= std_logic_vector(to_unsigned(200* bright / 100, 8));
					blue  <= std_logic_vector(to_unsigned(200* bright / 100, 8));
					
				when others =>
					red   <= std_logic_vector(to_unsigned(0, 8));
					green <= std_logic_vector(to_unsigned(0, 8));
					blue  <= std_logic_vector(to_unsigned(0, 8));
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
	current_bit <= current_color(7 - currentLedBit mod 8); 
  current_color <= green when currentLedBit < 8 else
                    red when currentLedBit < 16 else
                    blue when currentLedBit < 24;
end behave;