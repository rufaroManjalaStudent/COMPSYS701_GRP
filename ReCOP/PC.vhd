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
	signal pc_reg : std_logic_vector(15 downto 0) := (others => '0');
begin
	process (clk)
  	begin
		-- Program Counter
    	if rising_edge(clk) then
      		if reset = '1' then
					pc_reg <= X"0000";
				else
					if (pc_control_sig = '1') then
						case mux_select is
							when "00" => pc_reg <= m_out;
							when "01" => pc_reg <= rx;
							when "10" => pc_reg <= ir_hold;
							when "11" => pc_reg <= std_logic_vector(unsigned(pc_reg) + 1);
							when others =>
						end case;
					end if;
				end if;
				
				pc_hold <= pc_reg;
				
    	end if;
 	end process;

end behaviour;
