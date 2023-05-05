library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU_tb is
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
end entity ALU_tb;

architecture sim of ALU_tb is
    --signal declaration 
    signal t_ALU_Rx      : std_logic_vector(3 downto 0);  --Rx from instruction
    signal t_ALU_IR      : std_logic_vector(15 downto 0); --Operand from the Instruction
    signal t_ALU_Flmr    : std_logic_vector(15 downto 0);  --FIFO last memory location value
    signal t_ALU_Rz      : std_logic_vector(3 downto 0);  --Rz from instruction
    signal t_cin         : std_logic; --carry input
    signal t_ALU_Opcode  : std_logic_vector(2 downto 0); --control signal for what kind of operation is to be done
    signal t_ALU_addm    : std_logic_vector( 1 downto 0); --from IR, what kind of addressing to know which of the mux inputs to allow

    signal t_clk         : std_logic; --Don't think ALU needs clock as it is an asynchronous tool

    signal t_ALU_out     :  std_logic_vector(15 downto 0);
    signal t_zout        :  std_logic;  --control signal connects to operational decoder

    component ALU
        port(    
        ALU_Rx      : in std_logic_vector(3 downto 0);  --Rx from instruction
        ALU_IR      : in std_logic_vector(15 downto 0); --Operand from the Instruction
        ALU_Flmr    : in std_logic_vector(15 downto 0);  --FIFO last memory location value
        ALU_Rz      : in std_logic_vector(3 downto 0);  --Rz from instruction
        cin         : in std_logic; --carry input
        ALU_Opcode  : in std_logic_vector(2 downto 0); --control signal for what kind of operation is to be done
        ALU_addm    : in std_logic_vector( 1 downto 0); --from IR, what kind of addressing to know which of the mux inputs to allow

        --clk         : in std_logic Don't think ALU needs clock as it is an asynchronous tool


        ALU_out     : out std_logic_vector(15 downto 0);
        zout        : out std_logic  --control signal connects to operational decoder
        );
    end component ALU;

    begin

        --processes
    

        --simulating the changing of values
        t_ALU_Rx        <= "1010";
        t_ALU_IR        <= "1010110110110101";
        t_ALU_Flmr      <= "1000110110110101";
        t_ALU_Rz        <= "0000000000000001";
        t_cin           <=  '0';
        t_ALU_Opcode    <= ADD_opcode, SUB_opcode after 20 ns, AND_opcode after 40 ns, OR_opcode after 60 ns;
        t_ALU_addm      <= Reg_addm, Im_addm after 10 ns, Reg_addm after 20 ns;

        --instantiating ALU block for testing
        dut : ALU
            port map(
                ALU_Rx      => t_ALU_Rx,
                ALU_IR      => t_ALU_IR,
                ALU_Flmr    => t_ALU_Flmr,
                ALU_Rz      => t_ALU_Rz,
                cin         => t_cin,
                ALU_Opcode  => t_ALU_Opcode,
                ALU_addm    => t_ALU_addm
            );

end architecture;