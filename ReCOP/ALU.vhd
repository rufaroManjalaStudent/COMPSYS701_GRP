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

        

    );


end entity;

architecture behaviour of ALU is
    --signal declaration 
    begin 


end architecture;