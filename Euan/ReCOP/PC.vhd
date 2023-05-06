--Program Counter Block
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity PC is
    port (
        -- Program counter inputs
        clk             : in std_logic;
        reset           : in std_logic;
        
        -- Multiplexer inputs
        m_out           : in std_logic_vector(15 downto 0);    
        rx              : in std_logic_vector(15 downto 0);
        ir_hold         : in std_logic_vector(15 downto 0);
        
        -- Control signal for incrementing the program counter
        pc_control_sig  : in std_logic;
        
        -- Multiplexer select 
        mux_select      : in  std_logic_vector(1 downto 0);
        
        -- Program counter output
        pc_hold         : out std_logic_vector(15 downto 0)
    );
end entity PC;

architecture behaviour of PC is
    -- Signal Declaration
    signal pc_reg : std_logic_vector(15 downto 0) := (others => '0');
    signal pc_temp : std_logic_vector(15 downto 0);
begin
    process (reset, pc_control_sig, mux_select, m_out, rx, ir_hold, pc_reg)
    begin
        if reset = '1' then
            pc_temp <= X"0000";
        elsif pc_control_sig = '1' then
            case mux_select is
                when "00" => pc_temp <= m_out;
                when "01" => pc_temp <= rx;
                when "10" => pc_temp <= ir_hold;
                when "11" => pc_temp <= std_logic_vector(unsigned(pc_reg) + 1);
                when others =>
            end case;
        else
            pc_temp <= pc_reg;
        end if;
    end process;

    process (clk)
    begin
        if rising_edge(clk) then
            pc_reg <= pc_temp;
        end if;
    end process;
    
    pc_hold <= pc_temp;

end behaviour;