library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memory is
	port (
		address_a		: in std_logic_vector (11 DOWNTO 0);
		address_b		: in std_logic_vector (11 DOWNTO 0);
		clock		: in std_logic  := '1';
		data_a		: in std_logic_vector (15 DOWNTO 0);
		data_b		: in std_logic_vector (15 DOWNTO 0);
		wren_a		: in std_logic  := '0';
		wren_b		: in std_logic  := '0';
		q_a		: out std_logic_vector (15 DOWNTO 0);
		q_b		: out std_logic_vector (15 DOWNTO 0)
	);
	
end entity memory;

architecture behaviour of memory is

	component memory_block
		port (
			address_a		: in std_logic_vector (11 DOWNTO 0);
			address_b		: in std_logic_vector (11 DOWNTO 0);
			clock		: in std_logic  := '1';
			data_a		: in std_logic_vector (15 DOWNTO 0);
			data_b		: in std_logic_vector (15 DOWNTO 0);
			wren_a		: in std_logic  := '0';
			wren_b		: in std_logic  := '0';
			q_a		: out std_logic_vector (15 DOWNTO 0);
			q_b		: out std_logic_vector (15 DOWNTO 0)
		);
	end component memory_block;
		
		
begin
	memory_test : memory_block
		port map (
			address_a => address_a,
			address_b => address_b,
			clock => clock,
			data_a => data_a,
			data_b => data_b,
			wren_a => wren_a,
			wren_b => wren_b,
			q_a => q_a,
			q_b => q_b
		);


end architecture behaviour;