	component sys_clock is
		port (
			clk : out std_logic   -- clk
		);
	end component sys_clock;

	u0 : component sys_clock
		port map (
			clk => CONNECTED_TO_clk  -- clk.clk
		);

