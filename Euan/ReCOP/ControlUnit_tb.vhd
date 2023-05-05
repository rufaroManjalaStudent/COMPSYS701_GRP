library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ControlUnit_tb is
end entity ControlUnit_tb;

architecture sim of ControlUnit_tb is
	signal clk: std_logic := '0';
	signal reset : std_logic := '0';
	
	component ControlUnit
		port (
			clk : in std_logic;
			reset : in std_logic
		);
	end component ControlUnit;

begin

	clk_gen: process
	begin
		clk <= not clk;
		wait for 10 ns;
	end process clk_gen;
	
	simulation_process : process
	begin
		reset <= '1';
		wait for 20 ns;
		
		reset <= '0';
		
		wait;
	
	end process simulation_process;
	
	dut: ControlUnit
		port map (
			clk => clk,
			reset => reset
	);

end architecture sim;