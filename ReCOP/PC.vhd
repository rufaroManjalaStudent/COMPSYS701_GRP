--Program Counter Block
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PC is
	port (
		clk				: in std_logic;
		reset			: in std_logic;
		enable			: in std_logic;
		m_out			: in std_logic_vector(15 downto 0);	
		rx				: in std_logic_vector(3 downto 0);
		ir				: in std_logic_vector(15 downto 0);
		add_input		: in std_logic_vector(1 downto 0);
		mux_select  	: in  std_logic_vector(1 downto 0);
		pc_hold			: out std_logic_vector(15 downto 0);	
		
	);

end entity;

architecture behaviour of PC is
	signal counter : unsigned(15 downto 0);
	signal mux_out : std_logic_vector(15 downto 0);
	signal adder_in : unsigned(15 downto 0);
	signal adder_out : unsigned(15 downto 0);

begin

	process(clk)
  	begin
    	if rising_edge(clk) then
      		if reset = '1' then
        		counter <= X"0000";
      		elsif enable = '1' then
        		counter <= counter + 1;
      		end if;
    	end if;
 	end process;

	pc_hold <= std_logic_vector(counter);
  	adder_in <= pc_hold + unsigned(X"0001");
  
  	mux_out <= m_out when mux_select = "00" else
             rx when mux_select = "01" else
             ir_hold when mux_select = "10" else
             std_logic_vector(adder_out) when mux_select = "11" else
             (others => '0');
  
  	pc_holder <= mux_out;
  



end behaviour;

