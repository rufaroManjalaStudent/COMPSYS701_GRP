--top level design of whole ReCop
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ReCOP is
end entity ReCOP;

architecture structure of ReCOP is
	signal clock : std_logic := '0';
	signal reset : std_logic := '0';
	
	signal pc_control_sig : std_logic := 'X';
	signal pc_mux_select : std_logic_vector(1 downto 0) := (others => 'X');

	component ControlUnit
		port (
			clk : in std_logic;
			reset : in std_logic;
			
			pc_control_sig : out std_logic;
			pc_mux_select : out std_logic_vector(1 downto 0)
		);
	end component ControlUnit;
	
	component DataPath
		port (
			clk : in std_logic;
			reset : in std_logic;
			
			pc_control_sig : in std_logic;
			mux_select : in std_logic_vector(1 downto 0)
		);
	end component DataPath;

begin

	clock_gen : process
	begin
		clock <= not clock;
		wait for 10 ns;
	end process clock_gen;

	control_unit : ControlUnit
		port map (
			clk => clock,
			reset => reset,
			pc_control_sig => pc_control_sig,
			pc_mux_select => pc_mux_select
		);
		
	data_path : DataPath
		port map (
			clk => clock,
			reset => reset,
			pc_control_sig => pc_control_sig,
			mux_select => pc_mux_select
		);
end architecture structure;