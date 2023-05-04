--Control Unit sub-top-level design
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ControlUnit is
	port (
		clk : in std_logic;
		reset : in std_logic;
		
		pc_control_sig : out std_logic;
		pc_mux_select : out std_logic_vector(1 downto 0)
	);
end entity ControlUnit;

architecture behaviour of ControlUnit is
	type state_type is (T0, T1, T2);
	signal state, next_state: state_type;
	signal clear_pd : std_logic := 'X';
	signal enable_pd : std_logic := 'X';
begin

	resetprocessor : process (clk, reset)
		variable count : std_logic_vector(1 downto 0) := "00";
		variable flipflop : std_logic;
	begin
		if rising_edge(clk) then
			if (reset = '1') then
				flipflop := '1';
				enable_pd <= '0';
				clear_pd <= '1';
			elsif (reset = '0' and count = "11") then
				flipflop := '0';
				enable_pd <= '1';
				clear_pd <= '0';
			end if;
			
			if flipflop = '1' then
				count := count + 1;
			else
				count := count;
			end if;
		end if;
	end process resetprocessor;

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
	
	opdecoder : process (state)
	begin
		case state is
			when T0 =>
				next_state <= T1;
				pc_control_sig <= '1';
				pc_mux_select <= "11";
			when T1 =>	
				next_state <= T2;
				pc_control_sig <= '0';
			when T2 =>
				next_state <= T0;
		end case;
	end process opdecoder;


end architecture;