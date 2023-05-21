--TODO: Add peak detection capabilities, siogned capabilities
--TODO: Add storing or displaying capabilities

library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

library work;
use work.TdmaMinTypes.all;

entity AspDac is
	port (
		clock : in  std_logic;
		full  : in  std_logic;
		put   : out std_logic; --assuming this value enables the fifo to add the new data from the DAC
		data  : out std_logic_vector(16 downto 0); --data to be manipulated and put on the sender for tdma

        hex0  : out std_logic_vector(6 downto 0); --ports to enable the displaying of the value found on the fpga board
		hex1  : out std_logic_vector(6 downto 0);
		hex2  : out std_logic_vector(6 downto 0);
		hex3  : out std_logic_vector(6 downto 0);
		hex4  : out std_logic_vector(6 downto 0);
		hex5  : out std_logic_vector(6 downto 0);

		send  : out tdma_min_port; --tdma port connection to the whole design
		recv  : in  tdma_min_port
	);
end entity;

architecture rtl of AspDac is

    --||SIGNALS||

    signal hexn : unsigned(23 downto 0) := x"000000";

	signal enable_0 : std_logic := '0'; --bits for checking if channel 0 of the DAC is enabled
	signal enable_1 : std_logic := '0';

	signal detect: std_logic_vector(1 downto 0) := "00";

begin
	--||CONCURRENT STATEMENTS||
	send.addr <= (others => '0');
	send.data <= (others => '0'); --defaulting values to zero

    --||PROCESSES||

	process(clock) --configuration instruction
		begin
			if rising_edge(clock) then

				if recv.data(31 downto 28) = "1011" then --Config DAC instruction
					if recv.data(16) = '0' then --if instruction is for a 0 it is the left channel
						enable_0 <= recv.data(17); --assigning values to left channel settings
					else
						enable_1 <= recv.data(17); --assigning values to right channel settings
					end if;
				end if;

				-- TODO : Add some configuration options using bits 19 downto 16. instruction format is "1001", this will come from ReCop
				-- TODO: Options to include: a) peak detection b)negative peak detection (smallest value) c)none

			end if;
	end process;

	process(clock) --sending data process
		begin
			if rising_edge(clock) then

				if recv.data(31 downto 28) = "1000" and recv.data(16) = '0' and (enable_0 = '1' or enable_1 = '1') then --if audio data is being received
					put <= '1';
					data <= recv.data(16 downto 0);
				else
					put <= '0';
					data <= (others => '0');
				end if;

			end if;
	end process;

	process (clock) --peak detection
		variable value : unsigned(23 downto 0) := x"000000"; --TODO Make this compatible with signed values!!
		begin
			if rising_edge(clock)then
				if recv.data(31 downto 28) = "1000" and recv.data(16) = '0' and (enable_0 = '1' or enable_1 = '1') then --if audio data is being received
					if detect = "00" then --no detection
						hexn <= x"7EFDFBF"; --setting all the segs to simply show an dash symbol
					
					elsif detect = "01" then --negative peak detect
						if unsigned(recv.data(15 downto 0)) < value then
							value := unsigned(recv.data);
						hexn <= value;
						end if;

					elsif detect = "10" then -- positive peak detect NOTE: could use "11" to detect absolute value?
						if unsigned(recv.data(15 downto 0)) > value then
							value := unsigned(recv.data);
						hexn <= value;
						end if;

					else
						hexn <= x"C18306"; --setting all the segs to simply show an dash symbol
					end if;
				end if;
			end if;
			

	end process;



    --||COMPONENT INSTANTIATION||

    hs6 : entity work.HexSeg6
	port map (
		hexn => std_logic_vector(hexn),
		seg0 => hex0,
		seg1 => hex1,
		seg2 => hex2,
		seg3 => hex3,
		seg4 => hex4,
		seg5 => hex5
	);

end architecture;
