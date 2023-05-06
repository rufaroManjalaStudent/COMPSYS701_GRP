library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity ReCOPProgramCounter_tb is
end entity;

architecture sim of ReCOPProgramCounter_tb is

    -- Component declaration for ReCOPProgramCounter
    component ReCOPProgramCounter
        generic (
            PC_init         : std_logic_vector(15 downto 0)
        );
        port (
            clk             : in std_logic;
            rst             : in std_logic;
            wr_PC           : in std_logic;
            mux_select      : in std_logic_vector(1 downto 0);
            DM_OUT          : in std_logic_vector(15 downto 0);
            Ry              : in std_logic_vector(15 downto 0);
            operand         : in std_logic_vector(15 downto 0);
            PM_ADR          : out std_logic_vector(15 downto 0)
        );
    end component;

    -- Test bench signals
    signal clk     : std_logic := '0';
    signal rst     : std_logic := '0';
    signal wr_PC   : std_logic := '0';
    signal mux_sel : std_logic_vector(1 downto 0) := "00";
    signal DM_OUT  : std_logic_vector(15 downto 0) := (others => '0');
    signal Ry      : std_logic_vector(15 downto 0) := (others => '0');
    signal operand : std_logic_vector(15 downto 0) := (others => '0');
    signal PM_ADR  : std_logic_vector(15 downto 0);

    -- Clock period constant
    constant clk_period : time := 10 ns;

begin

    -- Instantiate ReCOPProgramCounter
    UUT: ReCOPProgramCounter
        generic map (
            PC_init => X"0000"
        )
        port map (
            clk     => clk,
            rst     => rst,
            wr_PC   => wr_PC,
            mux_select  => mux_sel,
            DM_OUT  => DM_OUT,
            Ry      => Ry,
            operand => operand,
            PM_ADR  => PM_ADR
        );

    -- Clock generation process
    clk_gen: process
    begin
        wait for clk_period / 2;
        clk <= not clk;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Reset
        rst <= '1';
        wait for clk_period;
        rst <= '0';
        wait for clk_period;

        -- Test: increment PC by 1
        wr_PC <= '1';
        mux_sel <= "00";
        wait for clk_period;
        wr_PC <= '0';
        wait for clk_period * 5;

        -- Test: load operand
        operand <= X"1234";
        wr_PC <= '1';
        mux_sel <= "01";
        wait for clk_period;
        wr_PC <= '0';
        wait for clk_period * 5;

        -- Test: load Ry
        Ry <= X"ABCD";
        wr_PC <= '1';
        mux_sel <= "10";
        wait for clk_period;
        wr_PC <= '0';
        wait for clk_period * 5;

        -- Test: load DM_OUT
        DM_OUT <= X"5678";
        wr_PC <= '1';
        mux_sel <= "11";
        wait for clk_period;
        wr_PC <= '0';
        wait for clk_period * 5;

        -- Simulation complete
        assert false report "Simulation complete" severity note;
        wait;
    end process;

end architecture sim;