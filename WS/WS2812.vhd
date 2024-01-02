library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity WS2812 is
	port (
		clk : in std_logic; 
		serial : out std_logic
	);
end entity WS2812;

architecture behave of WS2812 is

	constant T0H : integer := 17;
	constant T0L : integer := 38; -- compensate for state changes
	constant T1H : integer := 35;
	constant T1L : integer := 28; -- compensate for state changes
	constant RES : integer := 2500;
	
	type LED_ring is array (0 to 23) of std_logic_vector(23 downto 0);
	type state_machine is (load, sending, send_bit, reset);

begin
	process
		variable state : state_machine := load;
		variable GRB : std_logic_vector(23 downto 0) := x"000000";
		variable delay_high_counter : integer := 0;
		variable delay_low_counter : integer := 0;
		variable index : integer := 0;
		variable bit_counter : integer := 0;
		variable LED : LED_ring := (x"0017D8", -- LED 0, Green Red Blue
											 x"0015DA", -- LED 2
											 x"0013DC", -- LED 4
											 x"0011DE", -- LED 6
											 x"000FF0", -- LED 8
											 x"000DF2", -- LED 10
											 x"000BF4", -- LED 12
											 x"0009F6", -- LED 14
											 x"0007F8", -- LED 16
											 x"0005FA", -- LED 18
											 x"0003FC", -- LED 20
											 x"0001FE", -- LED 22
											 x"0016D9", -- LED 1
											 x"0014DB", -- LED 3
											 x"0012DD", -- LED 5
											 x"0010DF", -- LED 7
											 x"000EF1", -- LED 9
											 x"000CF3", -- LED 11
											 x"000AF5", -- LED 13
											 x"0008F7", -- LED 15
											 x"0006F9", -- LED 17
											 x"0004FB", -- LED 19
											 x"0002FD", -- LED 21
											 x"0000FF"); -- LED 23
	begin
		wait until rising_edge(clk);
	
		case state is
			when load =>
						GRB := LED(index);
						bit_counter := 24;
						state := sending;
			when sending =>
					if (bit_counter > 0) then
						bit_counter := bit_counter - 1;
						if GRB(bit_counter) = '1' then
							delay_high_counter := T1H;
							delay_low_counter := T1L;
						else
							delay_high_counter := T0H;
							delay_low_counter := T0L;
						end if;
						state := send_bit;
					else
						if (index < 23) then
							index := index + 1;
							state := load;
						else
							delay_low_counter := RES;
							state := reset;
						end if;
					end if;
			when send_bit =>
					if (delay_high_counter > 0) then
						serial <= '1';
						delay_high_counter := delay_high_counter - 1;
					elsif (delay_low_counter > 0) then
							serial <= '0';
							delay_low_counter := delay_low_counter - 1;
					else
						state := sending;
					end if;
			when reset =>
					if (delay_low_counter > 0) then
						serial <= '0';
						delay_low_counter := delay_low_counter - 1;
					else
						index := 0;
						--state := possibly load new data for next cycle
					end if;
			when others => null;
		end case;
	end process;
end behave;