library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity memory_interface is
	port (
		pc : in std_logic_vector(15 downto 0);
		rx : in std_logic_vector(15 downto 0);
		rz : in std_logic_vector(15 downto 0);
		ir_hold : in std_logic_vector(15 downto 0);
		
		data_in_control : in std_logic := 'X';
		address_control : in std_logic_vector (1 downto 0);
		mem_sel : in std_logic := 'X';
		
		address_a : out std_logic_vector(11 downto 0);
		address_b : out std_logic_vector(11 downto 0);
		
		data_b : out std_logic_vector(15 downto 0);
	);
end entity memory_interface;

architecture behaviour of memory_interface is
	signal temp_address : std_logic_vector(15 downto 0);
begin

	data_selection : process
	begin
		case data_in_control is
			when '0' => data_b <= ir_hold;
			when '1' => data_b <= rx;
	end process;
	
	address_selection : process
	begin
		case address_control is
			when "00" => temp_address <= pc;
			when "01" => temp_address <= rx;
			when "10" => temp_address <= rz;
			when "11" => temp_address <= ir_hold;
	end process;
	
	
	address : process
	begin
		if (mel_sel <= '0') then
			address_a <= temp_address;
		else
			address_b <= temp_address;
	end process
	



end architecture behaviour;