library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity zRegister is
	port (
		clk : in std_logic;
		in_z : in std_logic;
		out_z : out std_logic
	);
end entity zRegister;

architecture behaviour of zRegister is
	signal z_reg : std_logic := '0';
begin

	process (clk)
	begin
		if rising_edge(clk) then
			out_z <= in_z;
		end if;
	end process;
end architecture behaviour;