library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memory_tb is
end entity memory_tb;

architecture sim of memory_tb is
    signal clk: std_logic := '0';
    signal address_a: std_logic_vector(11 downto 0) := (others => '0');
    signal address_b: std_logic_vector(11 downto 0) := (others => '0');
    signal data_a: std_logic_vector(15 downto 0) := (others => '0');
    signal data_b: std_logic_vector(15 downto 0) := (others => '0');
    signal wren_a: std_logic := '0';
    signal wren_b: std_logic := '0';
    signal q_a: std_logic_vector(15 downto 0);
    signal q_b: std_logic_vector(15 downto 0);

    component memory
        port (
            address_a      : in std_logic_vector (11 DOWNTO 0);
            address_b      : in std_logic_vector (11 DOWNTO 0);
            clock          : in std_logic;
            data_a         : in std_logic_vector (15 DOWNTO 0);
            data_b         : in std_logic_vector (15 DOWNTO 0);
            wren_a         : in std_logic;
            wren_b         : in std_logic;
            q_a            : out std_logic_vector (15 DOWNTO 0);
            q_b            : out std_logic_vector (15 DOWNTO 0)
        );
    end component memory;
	 
begin

    -- Clock generation process
    clk_process: process
    begin
        clk <= not clk;
        wait for 10 ns;
    end process clk_process;

    -- Stimulus process
    stimulus_process: process
        variable count: integer := 0;
    begin
        -- Initial conditions
        address_a <= (others => '0');
        wren_a <= '0';

        -- Read the memory every few clock cycles
        for i in 0 to 100 loop
            wait until rising_edge(clk);
            count := count + 1;

            -- Increment address every 5 clock cycles
            if count mod 5 = 0 then
                address_a <= std_logic_vector(unsigned(address_a) + 1);
            end if;
        end loop;

        -- Stop the simulation
        wait;
    end process stimulus_process;
	 
    -- Instantiate your memory block
    dut: memory
        port map (
            address_a => address_a,
            address_b => address_b,
            clock => clk,
            data_a => data_a,
            data_b => data_b,
            wren_a => wren_a,
            wren_b => wren_b,
            q_a => q_a,
            q_b => q_b
        );

end architecture sim;