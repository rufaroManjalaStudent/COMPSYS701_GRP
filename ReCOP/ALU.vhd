--Arithmetic Logic Unit Block
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity ALU is 

    generic (
        --generics for opcode
        ADD_opcode : bit_vector := "111000";
        SUB_opcode : bit_vector := "000100";
        SUBV_opcode: bit_vector := "000011";
        AND_opcode : bit_vector := "001000";
        OR_opcode  : bit_vector := "001100";

        In_addm    : bit_vector := "00";
        Im_addm    : bit_vector := "01";
        Dir_addm   : bit_vector := "10";
        Reg_addm   : bit_vector := "11"
        
    );

    port(
        
        
    
        ALU_Rx      : in std_logic_vector(3 downto 0);  --Rx from instruction
        ALU_IR      : in std_logic_vector(15 downto 0); --Operand from the Instruction
        ALU_Flmr    : in std_logic_vector(31 downto 0);  --FIFO last memory location value
        ALU_Rz      : in std_logic_vector(3 downto 0);  --Rz from instruction
        cin         : in std_logic; --carry input
        ALU_Opcode  : in std_logic_vector(2 downto 0); --control signal for what kind of operation is to be done
        ALU_addm    : in std_logic_vector( 1 downto 0); --from IR, what kind of addressing to know which of the mux inputs to allow

        --clk         : in std_logic Don't think ALU needs clock as it is an asynchronous tool


        ALU_out     : out std_logic_vector(15 downto 0);
        zout        : out std_logic  --control signal connects to operational decoder

    );


end entity;

architecture behaviour of ALU is
    --**Signal Declaration**
    signal ALU_in1  : std_logic_vector(15 downto 0);
    signal ALU_in2  : std_logic_vector(15 downto 0);

    begin 

        --**Mux stage of ALU**

        ALU_in1 <=  ALU_Rx when (ALU_addm = "11"') else
                    ALU_IR when (ALU_addm = "01") else
                    000001 when (ALU_addm = "00") else --assuming inherent data type for this 
                    ALU_Flmr;

        ALU_in2 <=  ALU_Rx when (ALU_addm = "01") else --if immediate addressing type, operand will be operated with Rz
                    ALU_Rz;

        --**ALU stage**
        --TODO: need to confirm where to put cin
        ALU_out <=  (ALU_in1 + ALU_in2) when (ALU_Opcode = ADD_opcode) else
                    (ALU_in1 - ALU_in2) when (ALU_Opcode = SUB_opcode or SUBV_opcode) else
                    (ALU_in1 or ALU_in2) when (ALU_Opcode = OR_opcode) else --there is sub and subv as possible opcodes for instructions
                    (ALU_in1 and ALU_in2) when (ALU_Opcode = AND_opcode) else
                    "1111111111"; -- error value

        zout <= 0 and ALU_out; -- will be a flag when the output = 0

end architecture;