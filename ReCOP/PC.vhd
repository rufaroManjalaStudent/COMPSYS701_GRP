--Program Counter Block
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity PC is
	port (
		-- Program counter inputs
		clk				: in std_logic;
		reset				: in std_logic;
		enable			: in std_logic;
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

end entity PC;

architecture behaviour of PC is
	-- Signal Declaration
	signal counter : std_logic_vector(15 downto 0);
	signal pc_in : std_logic_vector(15 downto 0);
	signal adder_in : std_logic_vector(15 downto 0);
	

	begin

	process(clk)
  	begin
		-- Program Counter
    	if rising_edge(clk) then
      		if reset = '1' then
        		counter <= X"0000";
      		elsif enable = '1' then
        		counter <= pc_in;
					-- When control signal is 1, program counter increments (execute, fetch , decode)
					if pc_control_sig = '1' then
						counter <= pc_in + 1;
					end if;
      		end if;
				
				
    	end if;
	
 	end process;
	
	-- Program counter (PC) input Multiplexer
	pc_in <= m_out when (mux_select = "00") else
			rx when (mux_select = "01") else
			ir_hold when (mux_select = "10") else
			adder_in;
			
	pc_hold <= counter;
	

end behaviour;
