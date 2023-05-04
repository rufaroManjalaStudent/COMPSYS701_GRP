library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity memory_interface_tb is
end entity memory_interface_tb;

architecture sim of memory_interface_tb is
    signal clock_tb : std_logic := '1';
    signal pc_tb : std_logic_vector(15 downto 0) := (others => '0');
    signal rx_tb : std_logic_vector(15 downto 0) := (others => '0');
    signal rz_tb : std_logic_vector(15 downto 0) := (others => '0');
    signal ir_hold_tb : std_logic_vector(15 downto 0) := (others => '0');
    signal data_in_control_tb : std_logic := 'X';
    signal address_control_tb : std_logic_vector(1 downto 0) := (others => '0');
    signal mem_sel_tb : std_logic := 'X';
    signal program_memory_tb : std_logic_vector(15 downto 0);
    signal data_memory_tb : std_logic_vector(15 downto 0);
	 signal wren_b_tb : std_logic := '0';

    component memory_interface
        port (
            clock : in std_logic;
            pc : in std_logic_vector(15 downto 0);
            rx : in std_logic_vector(15 downto 0);
            rz : in std_logic_vector(15 downto 0);
            ir_hold : in std_logic_vector(15 downto 0);
            data_in_control : in std_logic;
            address_control : in std_logic_vector(1 downto 0);
            mem_sel : in std_logic;
				wren_b : in std_logic;
            program_memory : out std_logic_vector(15 downto 0);
            data_memory : out std_logic_vector(15 downto 0)
        );
    end component memory_interface;

begin
    -- Instantiate the memory_interface
    dut : memory_interface
        port map (
            clock => clock_tb,
            pc => pc_tb,
            rx => rx_tb,
            rz => rz_tb,
            ir_hold => ir_hold_tb,
            data_in_control => data_in_control_tb,
            address_control => address_control_tb,
            mem_sel => mem_sel_tb,
				wren_b => wren_b_tb,
            program_memory => program_memory_tb,
            data_memory => data_memory_tb
        );

    -- Clock generation process
    clk_process : process
    begin
        clock_tb <= not clock_tb;
        wait for 10 ns;
    end process;

    -- Testbench stimulus process
    stimulus_process : process
    begin
        -- Initial testbench setup
        data_in_control_tb <= '0';
        mem_sel_tb <= '0';
        address_control_tb <= "00";

        -- Retrieve instructions from program memory
        pc_tb <= "0000000000000000";
        wait for 20 ns;

        pc_tb <= "0000000000000001";
        wait for 20 ns;
		  
		  pc_tb <= "0000000000000010";
		  wait for 20 ns;

        -- Store data in data memory
        mem_sel_tb <= '1';
		  wren_b_tb <= '1';
        data_in_control_tb <= '1';
        address_control_tb <= "01";
        rx_tb <= "0000111100001111";
        wait for 20 ns;
			
		  wren_b_tb <= '0';
		  
        ---- Retrieve data from data memory
        data_in_control_tb <= '0';
        --wait for 20 ns;

        -- Finish simulation
        wait;
    end process;

end architecture sim;
