--Control Unit sub-top-level design
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ControlUnit is
    port (
        clk : in std_logic;
        reset : in std_logic;
		  start : in std_logic;
        pc_control_sig : out std_logic;
        pc_mux_select : out std_logic_vector(1 downto 0);
		  data_in_control : out std_logic;
		  address_control : out std_logic_vector(1 downto 0);
		  mem_sel : out std_logic;
		  wren_b : out std_logic;
        ld_ir1 : out std_logic;
		  ld_ir2 : out std_logic;
		  load_sip : out std_logic;
		  load_sop : out std_logic;
		  
		  cu_selx : out std_logic_vector(3 downto 0);
		  cu_selz : out std_logic_vector(3 downto 0);
		  z_control : out std_logic_vector(2 downto 0);
		  selz_control : out std_logic;
		  selx_control : out std_logic;
		  
		  ALU_Opcode : out std_logic_vector(1 downto 0);
		  CarryIn : out std_logic;
		  write_en : out std_logic;
		  zOut : in std_logic;
		  
		  IR_AM : in std_logic_vector(1 downto 0);
		  IR_OpCode : in std_logic_vector(5 downto 0)
    );
end entity ControlUnit;

architecture behaviour of ControlUnit is
    type state_type is (T0, T1, T2, R, R_HOLD, Test, Test2, E0, E1,E1bis, E2);
    signal state : state_type := R;
    signal next_state: state_type;
    signal next_state_op: state_type;
    signal clear_pd : std_logic := 'X';
	 signal enable_pd : std_logic := '0';
begin

    resetprocessor : process (clk, reset)
        variable count : std_logic_vector(1 downto 0) := "00";
        variable flipflop : std_logic;
    begin
        if rising_edge(clk) then
            if (reset = '0') then
                flipflop := '1';
                enable_pd <= '0';
                clear_pd <= '1';
            elsif (reset = '1' and count = "10") then
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
    
    opdecoder : process (state, IR_AM, IR_OpCode, start)
    begin
        ld_ir1 <= '0'; pc_control_sig <= '0';
		  mem_sel <= '0'; address_control <= "00";
		  z_control <= "000"; selz_control <= '0';
		  selx_control <= '0'; ALU_Opcode <= "00";
		  ld_ir2 <= '0'; write_en <= '0';
		  data_in_control <= '0'; wren_b <= '0';
		  load_sip <= '0'; load_sop <= '0';
								        
        case state is
		  -- FETCH
            when T0 =>
					 next_state_op <= T1;
					 ld_ir1 <= '1';
                pc_mux_select <= "11";
					 pc_control_sig <= '1';		 
		  -- DECODE
            when T1 =>    
                next_state_op <= T2;
                case IR_AM is -- Check addressing mode
						when "00" => -- Inherent
						
						when "01" => -- Immediate
							ld_ir2 <= '1';
							pc_control_sig <= '1';
							if (Ir_OpCode /= "000010") then
								write_en <= '1';
							end if;
						when "10" => -- Direct
						
						when "11" => -- Register
							case IR_OpCode is
								when "110111" =>
									load_sip <= '1';
								when others =>
							end case;
						when others =>
							-- Invalid Ignore
					 end case;
						
		  -- EXECUTE
            when T2 =>
                next_state_op <= Test;
					 case IR_AM is
						when "00" => -- Inherent
						when "01" => -- Immediate 
							case IR_OpCode is
								when "000000" => -- LDR
									z_control <= "000";
									selz_control <= '0';
								when "001000" =>	-- AND
									ld_ir2 <= '1';
									selx_control <= '0';
									z_control <= "011";
									ALU_Opcode <= "10";
									selz_control <= '0';
									write_en <= '1';
								when "001100" => -- OR	
									ld_ir2 <= '1';
									selx_control <= '0';
									z_control <= "011";
									ALU_Opcode <= "11";
									selz_control <= '0';
									write_en <= '1';
								when "011000" => -- JMP
									ld_ir2 <= '1';
									pc_mux_select <= "10";
								when "111000" =>	-- ADD
									ld_ir2 <= '1';
									ALU_Opcode <= "00";
									selx_control <= '0';
									selz_control <= '0';
									write_en <= '1';
									z_control <= "011";
								when "000011" => -- SUBV
									ld_ir2 <= '1';
									ALU_Opcode <= "01";
									selx_control <= '0';
									selz_control <= '0';
									write_en <= '1';
									z_control <= "011";
								when "000100" =>
									-- SUB Not implemented
								when "000010" => -- STR
									ld_ir2 <= '1';
									data_in_control <= '0';
									address_control <= "10";
									mem_sel <= '1';
								when others =>
							end case;
						when "10" => -- Direct
						when "11" => -- Register
							case IR_OPCode is
								when "001000" => -- AND
									selx_control <= '0';
									z_control <= "011";
									ALU_Opcode <= "10";
									selz_control <= '0';
									write_en <= '1';
								when "001100" => -- OR
									selx_control <= '0';
									z_control <= "011";
									ALU_Opcode <= "11";
									selz_control <= '0';
									write_en <= '1';
								when "111000" => -- ADD
									ALU_Opcode <= "00";
									selx_control <= '0';
									selz_control <= '0';
									write_en <= '1';
									z_control <= "011";
								when "000000" => -- LDR
									address_control <= "01";
									z_control <= "001";
									selz_control <= '0';
									write_en <= '1';
									mem_sel <= '1';
								when "110111" =>
									write_en <= '1';
									z_control <= "101";
									selz_control <= '0';
								when "111010" =>
									selx_control <= '0';
									load_sop <= '1';
								when others =>
							end case;
						when others =>
					 end case;
            when R_HOLD =>
                next_state_op <= Test;
					 
				when Test =>
					if (start = '0') then
						next_state_op <= T0;
					else 
						next_state_op <= Test2;
					end if;
				when Test2 =>
					if (start = '0') then
						next_state_op <= T0;
					else 
						next_state_op <= Test;
					end if;
					
				when E0 =>
					
            when others =>
        end case;
        
    end process opdecoder;

end architecture;