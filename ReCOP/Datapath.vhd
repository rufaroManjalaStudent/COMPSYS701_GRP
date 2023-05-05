--Data Path sub-top-level design
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity DataPath is
	port (
		clk : in std_logic;
		reset : in std_logic;
		
		pc_control_sig : in std_logic;
		mux_select : in std_logic_vector(1 downto 0)
	);
end entity DataPath;

architecture structure of DataPath is

	signal m_out : std_logic_vector(15 downto 0);
	signal rx : std_logic_vector(15 downto 0);
	signal ir_hold : std_logic_vector(15 downto 0);
	signal pc_hold : std_logic_vector (15 downto 0);

	component PC
		port (
			-- Program counter inputs
			clk				: in std_logic;
			reset				: in std_logic;
			
			-- Multiplexer inputs
			m_out				: in std_logic_vector(15 downto 0);	
			rx					: in std_logic_vector(15 downto 0);
			ir_hold			: in std_logic_vector(15 downto 0);
			
			-- Control signal for incrementing the program counter
			pc_control_sig		: in std_logic;
			
			-- Multiplexer select 
			mux_select  	: in  std_logic_vector(1 downto 0);
			
			-- Program counter output
			pc_hold			: out std_logic_vector(15 downto 0)
		);
	end component PC;

begin
	program_counter : PC
		port map (
			clk => clk,
			reset => reset,
			m_out => m_out,
			rx => rx,
			ir_hold => ir_hold,
			pc_control_sig => pc_control_sig,
			mux_select => mux_select,
			pc_hold => pc_hold
		);
end architecture structure;