library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity memory_interface is
	port (
		clock : in std_logic := '0';
		pc : in std_logic_vector(15 downto 0);
		rx : in std_logic_vector(15 downto 0);
		rz : in std_logic_vector(15 downto 0);
		ir_hold : in std_logic_vector(15 downto 0);
		
		data_in_control : in std_logic := 'X';
		address_control : in std_logic_vector (1 downto 0);
		mem_sel : in std_logic := 'X';
		
		program_memory : out std_logic_vector(15 downto 0);
		data_memory : out std_logic_vector(15 downto 0)
	);
end entity memory_interface;

architecture behaviour of memory_interface is
	signal temp_address : std_logic_vector(15 downto 0);
	signal address_a_temp : std_logic_vector(11 downto 0);
	signal address_b_temp : std_logic_vector(11 downto 0);
	signal address_a : std_logic_vector(11 downto 0);
	signal address_b : std_logic_vector(11 downto 0);
	signal data_b : std_logic_vector(15 downto 0);
	
	component memory_block
		port (
			address_a		: in std_logic_vector (11 DOWNTO 0);
			address_b		: in std_logic_vector (11 DOWNTO 0);
			clock		: in std_logic  := '1';
			data_a		: in std_logic_vector (15 DOWNTO 0) := (others => 'X');
			data_b		: in std_logic_vector (15 DOWNTO 0);
			wren_a		: in std_logic  := '0';
			wren_b		: in std_logic  := '0';
			q_a		: out std_logic_vector (15 DOWNTO 0);
			q_b		: out std_logic_vector (15 DOWNTO 0)
		);
	end component memory_block;
	
begin

	data_selection : process (clock, data_in_control, ir_hold, rx)
	begin
		if rising_edge(clock) then
			case data_in_control is
				when '0' => data_b <= ir_hold;
				when '1' => data_b <= rx;
				when others => data_b <= (others => 'X');
			end case;
		end if;
	end process;
	
	address_selection : process (clock, address_control, pc, rx, rz, ir_hold)
	begin
		if rising_edge(clock) then
			case address_control is
				when "00" => temp_address <= pc;
				when "01" => temp_address <= rx;
				when "10" => temp_address <= rz;
				when "11" => temp_address <= ir_hold;
				when others => temp_address <= (others => 'X');
			end case;
		end if;
	end process;
	
	address_update : process (clock, mem_sel, temp_address)
	begin
		if rising_edge(clock) then
			if mem_sel = '0' then
				address_a_temp <= temp_address(11 downto 0);
			elsif mem_sel = '1' then
				address_b_temp <= temp_address(11 downto 0);
			end if;
		end if;
	end process;
	
	address_a <= address_a_temp;
	address_b <= address_b_temp;
	
	
	memory_test : memory_block
		port map (
			address_a => address_a,
			address_b => address_b,
			clock => clock,
			data_a => open,
			data_b => data_b,
			wren_a => open,
			wren_b => open,
			q_a => program_memory,
			q_b => data_memory
		);
end architecture behaviour;