library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

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
        wren_b : in std_logic := '0';
        
        program_memory_out : out std_logic_vector(15 downto 0);
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
    
    component program_memory
        port (
            address		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
				clock		: IN STD_LOGIC;
				q		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
        );
    end component program_memory;
begin

    data_b <= ir_hold when (data_in_control = '0') else
                     rx;
    
    temp_address <= pc when (address_control = "00") else
                             rx when (address_control = "01") else
                             rz when (address_control = "10") else
                             ir_hold when (address_control = "11");
                             
    address_a_temp <= temp_address(11 downto 0) when (mem_sel = '0') else address_a_temp;
    address_b_temp <= temp_address(11 downto 0) when (mem_sel = '1') else address_b_temp;
	 address_a <= address_a_temp;
    address_b <= address_b_temp;
    
    memory_test : program_memory
        port map (
            address => address_a,
            clock => clock,
				q => program_memory_out -- Assign outputs directly to the output signals
        );
        
end architecture behaviour;