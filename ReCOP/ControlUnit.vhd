--Control Unit sub-top-level design
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ControlUnit is
	port (
		clk : in std_logic;
		
		
	);


end entity ControlUnit;

architecture behaviour of ControlUnit is
	type state_type is (T0, T1, T2);
	signal state, next_state: state_type;
	signal clear_pd, enable_pd : std_logic;
begin

	pulsedistributor : process (clk)
	begin
		if rising_edge(clk) then
			if clear_pd = '1' then
				state <= T0;
			elsif enable_pd = '1' then
				state <= next_state;
			end if;
		end if;
	end process pulsedistributor;
	
	opdecoder : process (state, opcode)
	begin
	
	end process opdecoder;


end architecture;