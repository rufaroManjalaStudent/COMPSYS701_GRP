--Data Path sub-top-level design
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity DataPath is
	port (
		clk : in std_logic;
		reset : in std_logic;
		
		pc_control_sig : in std_logic;
		mux_select : in std_logic_vector(1 downto 0);
		ld_ir1 : in std_logic;
		
		data_in_control : in std_logic := 'X';
		address_control : in std_logic_vector(1 downto 0);
		mem_sel : in std_logic := 'X';
		wren_b : in std_logic := '0';
		
		IR_AM : out std_logic_vector(1 downto 0);
		IR_Opcode : out std_logic_vector(5 downto 0)
	);
end entity DataPath;

architecture structure of DataPath is

	-- temp
	signal programMemory_out : std_logic_vector(15 downto 0);
	signal dataMemory_out : std_logic_vector(15 downto 0);
	
	signal m_out : std_logic_vector(15 downto 0);
	signal rx : std_logic_vector(15 downto 0);
	signal ir_hold : std_logic_vector(15 downto 0);
	signal pc_hold : std_logic_vector (15 downto 0);
	signal rz : std_logic_vector(15 downto 0);
	
	-- Instruction Register Signals
	signal IR_Rz : std_logic_vector(3 downto 0);
	signal IR_Rx : std_logic_vector(3 downto 0);
	signal IR_Op : std_logic_vector(15 downto 0);

	component PC
		port (
			-- Program counter inputs
			clk				: in std_logic;
			reset				: in std_logic;
			-- Multiplexer inputs
			m_out				: in std_logic_vector(15 downto 0);	
			rx					: in std_logic_vector(15 downto 0);
			ir_hold			: in std_logic_vector(15 downto 0);
			-- Control signal for incrementing the program counter
			pc_control_sig		: in std_logic;
			-- Multiplexer select 
			mux_select  	: in  std_logic_vector(1 downto 0);
			-- Program counter output
			pc_hold			: out std_logic_vector(15 downto 0)
		);
	end component PC;
	
	component IR
		port (
		  clk : in std_logic;
		  reset : in std_logic;
        ld_ir1  : in std_logic; --control to load the IR
        programMemory_out   : in std_logic_vector(15 downto 0); --this comes from the memory (PM)
        
        IR_AM   : out std_logic_vector(1 downto 0);     --Addressing mode bits, connected to operation decoder in Control Unit
        IR_Opcode   : out std_logic_vector(5 downto 0); -- OpCode bits, connected to operation decoder in Control Unit
        IR_Rz   : out std_logic_vector(3 downto 0);     -- connected to sel_z input of Register File Mux
        IR_Rx   : out std_logic_vector(3 downto 0);     -- connected to sel_x input of Register File Mux
        IR_Op   : out std_logic_vector(15 downto 0)      -- loaded in the decode state only if the fetched instruction is using an operand
		);
	end component IR;
	
	component memory_interface
		port (
			clock : in std_logic := '0';
			pc : in std_logic_vector(15 downto 0);
			rx : in std_logic_vector(15 downto 0);
			rz : in std_logic_vector(15 downto 0);
			ir_hold : in std_logic_vector(15 downto 0);
			
			data_in_control : in std_logic := 'X';
			address_control : in std_logic_vector (1 downto 0);
			mem_sel : in std_logic := 'X';
			wren_b : in std_logic := '0';
			
			program_memory : out std_logic_vector(15 downto 0);
			data_memory : out std_logic_vector(15 downto 0)
		);
	end component memory_interface;

begin
	program_counter : PC
		port map (
			clk => clk,
			reset => reset,
			m_out => m_out,
			rx => rx,
			ir_hold => ir_hold,
			pc_control_sig => pc_control_sig,
			mux_select => mux_select,
			pc_hold => pc_hold
		);
		
		
	instruction_register : IR
		port map (
			clk => clk,
			reset => reset,
			ld_ir1 => ld_ir1,
			programMemory_out => programMemory_out,
			IR_AM => IR_AM,
			IR_Opcode => IR_Opcode,
			IR_Rz => IR_Rz,
			IR_Rx => IR_Rx,
			IR_Op => IR_Op
		);
		
	memory : memory_interface
		port map (
			clock => clk,
			pc => pc_hold,
			rx => rx,
			rz => rz,
			ir_hold => IR_Op,
			data_in_control => data_in_control,
			address_control => address_control,
			mem_sel => mem_sel,
			wren_b => wren_b,
			program_memory => programMemory_out,
			data_memory => dataMemory_out
		);
		
end architecture structure;





