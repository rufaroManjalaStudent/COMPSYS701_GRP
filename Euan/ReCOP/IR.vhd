--Instruction Register Block
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity IR is
    port (
		  clk : in std_logic;
		  reset : in std_logic;
        ld_ir1  : in std_logic; --control to load the IR
		  ld_ir2 : in std_logic;
        programMemory_out   : in std_logic_vector(15 downto 0); --this comes from the memory (PM)
        
        IR_AM   : out std_logic_vector(1 downto 0);     --Addressing mode bits, connected to operation decoder in Control Unit
        IR_Opcode   : out std_logic_vector(5 downto 0); -- OpCode bits, connected to operation decoder in Control Unit
        IR_Rz   : out std_logic_vector(3 downto 0);     -- connected to sel_z input of Register File Mux
        IR_Rx   : out std_logic_vector(3 downto 0);     -- connected to sel_x input of Register File Mux
        IR_Op   : out std_logic_vector(15 downto 0)      -- loaded in the decode state only if the fetched instruction is using an operand
    );
end entity IR;

architecture behaviour of IR is
	signal temp_IR : std_logic_vector(15 downto 0) := (others => '0');	
begin
		  process (clk)
		  begin
			if (rising_edge(clk)) then
				if (reset = '1') then
					temp_IR <= (others => '0');
				else
					if (ld_ir1 = '1') then
						temp_IR <= programMemory_out;
					end if;
				end if;
					--assigning input to separate outputs
			end if;
		 end process;
		 
		  IR_AM <= temp_IR(15 downto 14);
		  IR_Opcode <= temp_IR(13 downto 8);
		  IR_Rz <= temp_IR(7 downto 4);
		  IR_Rx <= temp_IR(3 downto 0);
		  
		  
		  IR_Op <= programMemory_out(15 downto 0) when (ld_ir2 = '1') else X"0000";
end architecture;

