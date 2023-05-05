library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity clock is
	port (
		clock : out std_logic
	);
end entity clock;

architecture behaviour of clock is
begin

	process
	begin
		clock <= not clock;
		wait for 10 ns;
	end process;

end architecture behaviour;