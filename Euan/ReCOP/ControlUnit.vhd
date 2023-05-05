--Control Unit sub-top-level design
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ControlUnit is
    port (
        clk : in std_logic;
        reset : in std_logic;
        
        pc_control_sig : out std_logic;
        pc_mux_select : out std_logic_vector(1 downto 0);
		  data_in_control : out std_logic;
		  address_control : out std_logic_vector(1 downto 0);
		  mem_sel : out std_logic;
		  wren_b : out std_logic;
        ld_ir1 : out std_logic;
		  ld_ir2 : out std_logic;
		  
		  
		  cu_selx : out std_logic_vector(3 downto 0);
		  cu_selz : out std_logic_vector(3 downto 0);
		  z_control : out std_logic_vector(2 downto 0);
		  selz_control : out std_logic;
		  selx_control : out std_logic;
		  
		  ALU_Opcode : out std_logic_vector(1 downto 0);
		  CarryIn : out std_logic;
		  zOut : in std_logic;
		  
		  IR_AM : in std_logic_vector(1 downto 0);
		  IR_OpCode : in std_logic_vector(5 downto 0)
    );
end entity ControlUnit;

architecture behaviour of ControlUnit is
    type state_type is (T0, T1, T2, R, R_HOLD);
    signal state : state_type := R;
    signal next_state: state_type;
    signal next_state_op: state_type;
    signal clear_pd : std_logic := 'X';
    signal enable_pd : std_logic := 'X';
begin

    resetprocessor : process (clk, reset)
        variable count : std_logic_vector(1 downto 0) := "00";
        variable flipflop : std_logic;
    begin
        if rising_edge(clk) then
            if (reset = '1') then
                flipflop := '1';
                enable_pd <= '0';
                clear_pd <= '1';
            elsif (reset = '0' and count = "10") then
                flipflop := '0';
                enable_pd <= '1';
                clear_pd <= '0';
                next_state <= R_HOLD;
            end if;
            
            if flipflop = '1' then
                count := count + 1;
            else
                count := count;
            end if;
        end if;
    end process resetprocessor;

    pulsedistributor : process (clk)
    begin
        if rising_edge(clk) then
            if clear_pd = '1' then
                state <= T0;
            elsif enable_pd = '1' then
                if state = R then
                    state <= R_HOLD;
                else
                    state <= next_state_op;
                end if;
            end if;
        end if;
    end process pulsedistributor;
    
    opdecoder : process (state, IR_AM, IR_OpCode)
    begin
        ld_ir1 <= '0'; pc_control_sig <= '0';
		  mem_sel <= '0'; address_control <= "00";
		  z_control <= "000"; selz_control <= '0';
        
        case state is
		  -- FETCH
            when T0 =>
					 ld_ir1 <= '1';
					 ld_ir2 <= '0';
                next_state_op <= T1;
                pc_mux_select <= "11";
					 pc_control_sig <= '1';		 
		  -- DECODE
            when T1 =>    
                next_state_op <= T2;
                case IR_AM is -- Check addressing mode
						when "00" => -- Inherent
						
						when "01" => -- Immediate
							ld_ir2 <= '1';
						when "10" => -- Direct
						
						when "11" => -- Register
						when others =>
							-- Invalid Ignore
					 end case;
						
		  -- EXECUTE
            when T2 =>
                next_state_op <= T0;
					 case IR_OpCode is
						when "000000" =>
							z_control <= "000";
							selz_control <= '0';
						when others =>
					 end case;
            when R_HOLD =>
                next_state_op <= T0;
            when others =>
        end case;
        
    end process opdecoder;

end architecture;