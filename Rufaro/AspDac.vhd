--TODO: Add peak detection capabilities, siogned capabilities
--TODO: Add storing or displaying capabilities

library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
library work;
use work.TdmaMinTypes.all;

entity AspDac is
	--TODO: Add a generic for minimum difference, so that different peak sharpness are counted as a peak. can use % operation to keep cycling through array
	generic(
		MIN_DROP: integer range 0 to 10 := 5 --minimum difference to be considered the peak
	);
	
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

    --||SIGNALS & TYPES||
    signal hexn 	: unsigned(23 downto 0) 		:= x"000000";
	signal enable_0 : std_logic 					:= '0'; --bits for checking if channel 0 of the DAC is enabled
	signal enable_1 : std_logic 					:= '0';
	signal detect	: std_logic_vector(1 downto 0) 	:= "00";

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

					case recv.data(19 downto 18) is  --using what was formerly used for setting the sampling rate
						when "00" => detect <= "00"; --no detection mode
						when "01" => detect <= "01"; --negative peak detection mode
						when "10" => detect <= "10"; --positive peak detection mode
						when others => detect <= detect; --keep the current value
					end case;

				end if;

				

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
		variable value : unsigned(23 downto 0) := x"000000";
		variable ascend : boolean := true; --for checking if numbers are going up or down. 1 means rising
		begin
			if rising_edge(clock)then
				if recv.data(31 downto 28) = "1000" and recv.data(16) = '0' and (enable_0 = '1' or enable_1 = '1') then --if audio data is being received
					--no detection	
					if detect = "00" then 
							hexn <= x"000000"; --will be zero if no detection  set
						
					elsif detect = "01" then --negative peak detect
						if unsigned(recv.data(15 downto 0)) <= value then
							value := unsigned(recv.data(15 downto 0));
							ascend := false; --signifying that the signal is going down 
						elsif (unsigned(recv.data(15 downto 0)) > value) and ((unsigned(recv.data(15 downto 0)) - value) >= MIN_DROP) and (not ascend)  then --checking that the next point is rising up enough to make current value the peak 
							hexn <= value;
							value := unsigned(recv.data(15 downto 0)); --continuing on
							ascend := true;
						end if;

					elsif detect = "10" then -- positive peak detect
						if unsigned(recv.data(15 downto 0)) >= value then
							value := unsigned(recv.data(15 downto 0));
							ascend := true; --signifying that the signal is going up 
						elsif (unsigned(recv.data(15 downto 0)) < value) and ((value - unsigned(recv.data(15 downto 0))) >= MIN_DROP) and (ascend)  then --checking that the next point is rising up enough to make current value the peak 
							hexn <= value;
							value := unsigned(recv.data(15 downto 0)); --continuing on
							ascend := false;
						end if;
					else
						hexn <= x"eeeeee"; --setting all the segs to simply show an error symbol
				
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
