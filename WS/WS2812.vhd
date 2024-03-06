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
		variable LED : LED_ring := (x"0FF000",
											 x"0FF000",
											 x"0F3000",
											 x"0F3000",
											 x"0E7000",
											 x"0DB000",
											 x"0CF000",
											 x"0C3000",
											 x"0B7000",
											 x"0AB000",
											 x"09F000",
											 x"093000",
											 x"087000",
											 x"07B000",
											 x"06F000",
											 x"063000",
											 x"057000",
											 x"04B000",
											 x"03F000",
											 x"033000",
											 x"027000",
											 x"01B000",
											 x"00F000",
											 x"003000");
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