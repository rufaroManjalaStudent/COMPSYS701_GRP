--Arithmetic Logic Unit Block
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity ALU is 
    port(
        ALU_Rx      : in std_logic_vector(3 downto 0);  --Rx from instruction
        ALU_IR      : in std_logic_vector(15 downto 0); --Operand from the Instruction
        ALU_Flmr    : in std_logic_vector(31 downto 0);  --FIFO last memory location value
        ALU_Rz      : in std_logic_vector(3 downto 0);  --Rz from instruction
        cin         : in std_logic; --carry input
        ALU_CU_Mux  : in std_logic_vector(5 downto 0); --control signal for knowing which two values will pass through Muxes. Each bit represents an input option across the two muxes. Only 2 bits should ever be set high
        ALU_op      : in std_logic_vector(2 downto 0); --control signal for what kind of operation is to be done


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

        --Layout of ALU_CU_Mux -> [rx][ir_hold]["1"][flmr] [rx][rz]. 1 means that will be passed through. 2 lsb are for mux 2
        ALU_in1 <=  ALU_Rx when (ALU_CU_Mux(5) = 1) else
                    ALU_IR when (ALU_CU_Mux(4) = 1) else
                    000001 when (ALU_CU_Mux(3) = 1) else
                    ALU_Flmr;

        ALU_in2 <=  ALU_Rx when (ALU_CU_Mux(1) = 1) else
                    ALU_Rz;

        --**ALU stage**
        --TODO: need to confirm where to put cin
        ALU_out <=  (ALU_in1 + ALU_in2) when (ALU_op = 00) else
                    (ALU_in1 + ALU_in2) when (ALU_op = 01) else
                    (ALU_in1 or ALU_in2) when (ALU_op = 10) else
                    (ALU_in1 and ALU_in2);

        zout <= 0 and ALU_out; -- will be sent as a flag when the output = 0

end architecture;