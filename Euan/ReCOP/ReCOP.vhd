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
	signal ld_ir1 : std_logic := 'X';

	component ControlUnit
		port (
        clk : in std_logic;
        reset : in std_logic;
        
        pc_control_sig : out std_logic;
        pc_mux_select : out std_logic_vector(1 downto 0);
		  data_in_control : out std_logic;
		  address_control : out std_logic_vector(1 downto 0);
		  mem_sel : out std_logic;
		  wren_b : out std_logic;
        ld_ir1 : out std_logic
    );
	end component ControlUnit;
	
	component DataPath
		port (
			clk : in std_logic;
			reset : in std_logic;
			
			pc_control_sig : in std_logic;
			mux_select : in std_logic_vector(1 downto 0);
			ld_ir1 : in std_logic
		);
	end component DataPath;

begin

	clock_gen : process
	begin
		clock <= not clock;
		wait for 10 ns;
	end process clock_gen;
	
	reset_test : process
	begin
		reset <= '1';
		wait for 20 ns;
		reset <= '0';
		wait;
	end process reset_test;

	control_unit : ControlUnit
		port map (
			clk => clock,
			reset => reset,
			pc_control_sig => pc_control_sig,
			pc_mux_select => pc_mux_select,
			ld_ir1 => ld_ir1
		);
		
	data_path : DataPath
		port map (
			clk => clock,
			reset => reset,
			pc_control_sig => pc_control_sig,
			mux_select => pc_mux_select,
			ld_ir1 => ld_ir1
		);
end architecture structure;