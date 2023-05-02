library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity regfile_tb is
end entity regfile_tb;

architecture sim of regfile_tb is
    signal clk: std_logic := '0';
    signal rx_out, rz, flmr: std_logic_vector(15 downto 0);
    signal ir_hold: std_logic_vector(15 downto 0);
    signal m_out: std_logic_vector(15 downto 0);
    signal rx: std_logic_vector(3 downto 0);
    signal aluout: std_logic_vector(15 downto 0);
    signal rz_max: std_logic_vector(15 downto 0);
    signal sip_hold: std_logic_vector(15 downto 0);
    signal er_temp: std_logic;
    signal mem_hp_low: std_logic_vector(6 downto 0);
    
    signal ir_hold_x, ir_hold_z: std_logic_vector(3 downto 0);
    signal cu_selx, cu_selz: std_logic_vector(3 downto 0);
    signal z_control: std_logic_vector(2 downto 0);
    signal selz_control, selx_control: std_logic;

    constant clk_period : time := 10 ns;

begin
    DUT: entity work.regfile
        generic map(width => 4)
        port map(
            clk => clk,
            rx_out => rx_out,
            rz => rz,
            flmr => flmr,
            ir_hold => ir_hold,
            m_out => m_out,
            rx => rx,
            aluout => aluout,
            rz_max => rz_max,
            sip_hold => sip_hold,
            er_temp => er_temp,
            mem_hp_low => mem_hp_low,
            
            ir_hold_x => ir_hold_x,
            ir_hold_z => ir_hold_z,
            cu_selx => cu_selx,
            cu_selz => cu_selz,
            
            z_control => z_control,
            selz_control => selz_control,
            selx_control => selx_control
        );

    -- Clock generation process
    clk_process : process
    begin
        clk <= '0';
        wait for clk_period / 2;
        clk <= '1';
        wait for clk_period / 2;
    end process;

    -- Testbench stimulus process
    stimulus_process : process
    begin
        -- Reset all control signals
        z_control <= "000";
        selz_control <= '0';
        selx_control <= '0';

        -- Initialize input signals
        ir_hold <= "0000000000000000";
        m_out <= "0000000000000000";
        aluout <= "0000000000000000";
        rz_max <= "0000000000000000";
        sip_hold <= "0000000000000000";
        er_temp <= '0';
        mem_hp_low <= "0000000";

        -- Write the first 16-bit number (0x1234) to register 2
        ir_hold <= "0000000100100011";
        ir_hold_z <= "0010";
        z_control <= "000";
        selz_control <= '0';
        wait for clk_period;

        -- Write the second 16-bit number (0xABCD) to register 3
        ir_hold <= "0000101010111100";
        ir_hold_z <= "0011";
        z_control <= "000";
		  selz_control <= '0';
        wait for clk_period;

        -- Read the first number (0x1234) from register 2 to rx_out
        ir_hold_x <= "0010";
        selx_control <= '0';
        wait for clk_period;
        assert (rx_out = "0000000100100011") report "Mismatch in rx_out for first number" severity error;

        -- Read the second number (0xABCD) from register 3 to rz
        ir_hold_z <= "0011";
        selz_control <= '1';
        wait for clk_period;
        assert (rz = "0000101010111100") report "Mismatch in rz for second number" severity error;

        -- End simulation
        wait;
    end process;

end architecture sim;