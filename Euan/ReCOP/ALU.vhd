--Arithmetic Logic Unit Block
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;


entity ALU is 

    generic (
        --generics for opcode
        ADD_opcode : std_logic_vector(1 downto 0) := "00";
        SUB_opcode : std_logic_vector(1 downto 0) := "01";
        SUBV_opcode: std_logic_vector(1 downto 0) := "01";
        AND_opcode : std_logic_vector(1 downto 0) := "10";
        OR_opcode  : std_logic_vector(1 downto 0) := "11"
    );

    port(
        ALU_Rx      : in std_logic_vector(15 downto 0);  --Rx from instruction
        ALU_IR      : in std_logic_vector(15 downto 0); --Operand from the Instruction
        ALU_Flmr    : in std_logic_vector(15 downto 0);  --FIFO last memory location value
        ALU_Rz      : in std_logic_vector(15 downto 0);  --Rz from instruction
        cin         : in std_logic; --carry input
        ALU_Opcode  : in std_logic_vector(1 downto 0); --control signal for what kind of operation is to be done
        ALU_addm    : in std_logic_vector( 1 downto 0); --from IR, what kind of addressing to know which of the mux inputs to allow
        ALU_out     : out std_logic_vector(15 downto 0);
        zout        : out std_logic  --control signal connects to operational decoder

    );


end entity;

architecture behaviour of ALU is
    --**Signal Declaration**
    signal ALU_in1  : std_logic_vector(15 downto 0);
    signal ALU_in2  : std_logic_vector(15 downto 0);
	 signal ALU_out_t : std_logic_vector(15 downto 0);

    begin 

        --**Mux stage of ALU**

        ALU_in1 <=  ALU_Rx when (ALU_addm = "11") else
                    ALU_IR when (ALU_addm = "01") else
                    X"0001" when (ALU_addm = "00") else --assuming inherent data type for this 
                    ALU_Flmr;

        ALU_in2 <=  ALU_Rx when (ALU_addm = "01") else --if immediate addressing type, operand will be operated with Rz
                    ALU_Rz;

        --**ALU stage**
        --TODO: need to confirm where to put cin
        ALU_out_t <=  (ALU_in1 + ALU_in2) when (ALU_Opcode = ADD_opcode) else
                    (ALU_in1 - ALU_in2) when ((ALU_Opcode = SUB_opcode) or (ALU_OpCode = SUBV_opcode)) else
                    (ALU_in1 or ALU_in2) when (ALU_Opcode = OR_opcode) else --there is sub and subv as possible opcodes for instructions
                    (ALU_in1 and ALU_in2) when (ALU_Opcode = AND_opcode) else
                    x"1111"; -- error value
						  
		  ALU_out <= ALU_out_t;
			
        zout <= '1' when (ALU_out_t = x"0000") else
							'0'; -- will be a flag when the output = 0

end architecture;