library ieee;
use ieee.std_logic_1164.all;

entity PC_TB is
end entity PC_TB;

architecture behavior of PC_TB is

	-- Component Declaration for the Unit Under Test (UUT)
	component PC
		port (
		clk         : in std_logic;
		reset       : in std_logic;
		pc_control_sig		: in std_logic;
		m_out       : in std_logic_vector(15 downto 0);
		rx          : in std_logic_vector(15 downto 0);
		ir_hold     : in std_logic_vector(15 downto 0);
		mux_select  : in std_logic_vector(1 downto 0);
		pc_hold     : out std_logic_vector(15 downto 0)
		);
	end component;

	-- Inputs
	signal clk        : std_logic := '0';
	signal reset      : std_logic := '0';
	signal pc_control_sig	: std_logic := '0';
	signal m_out      : std_logic_vector(15 downto 0) := (others => '0');
	signal rx         : std_logic_vector(15 downto 0) := (others => '0');
	signal ir_hold    : std_logic_vector(15 downto 0) := (others => '0');
	signal mux_select : std_logic_vector(1 downto 0) := (others => '0');

	-- Outputs
	signal pc_hold    : std_logic_vector(15 downto 0);

	-- Clock period definitions
	constant clk_period : time := 10 ns;

begin

	-- Instantiate the Unit Under Test (UUT)
	uut : PC
	port map (
		clk         => clk,
		reset       => reset,
		m_out       => m_out,
		rx          => rx,
		ir_hold     => ir_hold,
		mux_select  => mux_select,
		pc_hold     => pc_hold,
		pc_control_sig => pc_control_sig
	);

	-- Clock process definitions
	clk_process : process
	begin
		clk <= '0';
		wait for clk_period / 2;
		clk <= '1';
		wait for clk_period / 2;
	end process;

	-- Stimulus process
	stim_proc : process
	begin
		-- Reset PC
		reset <= '1';
		mux_select <= "11";
		wait for 20 ns;
		reset <= '0';
		wait for 20 ns;
		
		pc_control_sig <= '1';
		wait for 20 ns;
		pc_control_sig <= '0';
		wait for 20 ns;
		
		pc_control_sig <= '1';
		wait for 20 ns;
		pc_control_sig <= '0';
		wait for 20 ns;

	end process;

end architecture behavior;