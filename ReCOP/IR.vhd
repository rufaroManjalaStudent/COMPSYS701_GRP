--Instruction Register Block
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity IP is
    port (
        ld_ir1  : in std_logic; --control to load the IR
        ld_ir2  : in std_logic;
        m_out   : in std_logic_vector(31 downto 0); --this comes from the memory (PM)
        
        IR_AM   : out std_logic_vector(1 downto 0);     --Addressing mode bits, connected to operation decoder in Control Unit
        IR_Opcode   : out std_logic_vector(1 downto 0); -- OpCode bits, connected to operation decoder in Control Unit
        IR_Rz   : out std_logic_vector(1 downto 0);     -- connected to sel_z input of Register File Mux
        IR_Rx   : out std_logic_vector(1 downto 0);     -- connected to sel_x input of Register File Mux
        IR_Op   : out std_logic_vector(1 downto 0)      -- loaded in the decode state only if the fetched instruction is using an operand
    );

end entity;

architecture behaviour of IP is
    --signals and components
    begin

        --assigning input to separate outputs
        IR_AM <= m_out(31 downto 30) when ld_ir1 = 1;
        IR_Opcode <= m_out(29 downto 24) when ld_ir1 = 1;
        IR_Rz <= m_out(23 downto 20) when ld_ir1 = 1;
        IR_Rx <= m_out(19 downto 16) when ld_ir1 = 1;
        IR_Op <= m_out(15 downto 0) when ld_ir2 = 1; --only load when needed for operation. as controlled by ld_ir2

end architecture;

