-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"
-- CREATED		"Fri May 05 17:43:15 2023"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY top IS 
	port (CLOCK_50 : in std_logic;
		  SW : in std_logic_vector(7 downto 0);
		  LEDR : out std_logic_vector(7 downto 0);
		  KEY : in std_logic_vector(3 downto 0));
END top;

ARCHITECTURE bdf_type OF top IS 

signal enable : std_logic := '0';

component signalRegisters
	port (
		clk : in std_logic;
		SIP_in : in std_logic_vector(7 downto 0) := "00000010";
		SIP_out : out std_logic_vector(15 downto 0);
		load_sip : in std_logic;
		load_sop : std_logic;
		SOP_out : out std_logic_vector(7 downto 0) := "00000000";
		SOP_in : in std_logic_vector(15 downto 0)
	);
end component;

COMPONENT controlunit
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 start : IN STD_LOGIC;
		 zOut : IN STD_LOGIC;
		 IR_AM : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 IR_OpCode : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 pc_control_sig : OUT STD_LOGIC;
		 data_in_control : OUT STD_LOGIC;
		 mem_sel : OUT STD_LOGIC;
		 wren_b : OUT STD_LOGIC;
		 ld_ir1 : OUT STD_LOGIC;
		 ld_ir2 : out std_logic;
		 load_sip : out std_logic;
		 load_sop : out std_logic;
		 selz_control : OUT STD_LOGIC;
		 selx_control : OUT STD_LOGIC;
		 CarryIn : OUT STD_LOGIC;
		 write_en : out std_logic;
		 address_control : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		 ALU_Opcode : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		 cu_selx : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 cu_selz : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 pc_mux_select : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		 z_control : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;

COMPONENT pc
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 pc_control_sig : IN STD_LOGIC;
		 ir_hold : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 m_out : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 mux_select : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 rx : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 pc_hold : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT ir
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
END COMPONENT;

COMPONENT regfile
GENERIC (width : INTEGER
			);
	PORT(clk : IN STD_LOGIC;
		 selz_control : IN STD_LOGIC;
		 selx_control : IN STD_LOGIC;
		 aluout : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 cu_selx : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 cu_selz : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 ir_hold : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 ir_hold_x : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 ir_hold_z : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 sip_hold : in std_logic_vector(15 downto 0);
		 m_out : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 rx : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 rz_max : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 z_control : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 flmr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 rx_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 rz : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 write_en : in std_logic
	);
END COMPONENT;

COMPONENT memory_interface
	PORT(clock : IN STD_LOGIC;
		 data_in_control : IN STD_LOGIC;
		 mem_sel : IN STD_LOGIC;
		 wren_b : IN STD_LOGIC;
		 address_control : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 ir_hold : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 pc : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 rx : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 rz : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data_memory : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 program_memory : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT sys_clock
	PORT(		 clk : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT alu
GENERIC (ADD_opcode : STD_LOGIC_VECTOR(1 DOWNTO 0);
			AND_opcode : STD_LOGIC_VECTOR(1 DOWNTO 0);
			OR_opcode : STD_LOGIC_VECTOR(1 DOWNTO 0);
			SUB_opcode : STD_LOGIC_VECTOR(1 DOWNTO 0);
			SUBV_opcode : STD_LOGIC_VECTOR(1 DOWNTO 0)
			);
	PORT(cin : IN STD_LOGIC;
		 ALU_addm : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 ALU_Flmr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 ALU_IR : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 ALU_Opcode : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 ALU_Rx : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 ALU_Rz : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 zout : OUT STD_LOGIC;
		 ALU_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT zregister
	PORT(clk : IN STD_LOGIC;
		 in_z : IN STD_LOGIC;
		 out_z : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT max
	PORT(m_in1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 m_in2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 m_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_46 :  STD_LOGIC := '0';
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_47 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_48 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_49 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_50 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_27 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_28 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_29 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_30 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_32 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_51 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_35 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_37 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_39 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_43 :  STD_LOGIC;
signal ld_ir2 : std_logic;
signal reset : STD_LOGIC := '0';
signal write_enabled : std_logic;
signal inv_clk : std_logic;
signal load_sip : std_logic;
signal load_sop : std_logic;
signal SIP_out : std_logic_vector(15 downto 0);

BEGIN 


--clk_gen : process
--begin
--	SYNTHESIZED_WIRE_46 <= not SYNTHESIZED_WIRE_46;
--	wait for 20 ns;
--end process clk_gen;

inv_clk <= not CLOCK_50;

--reset_proc : process
--begin
--	wait for 40 ns;
--	enable <= '1';
--	wait;
--end process reset_proc;

signal_registers : signalRegisters
port map (
	clk => CLOCK_50,
	SIP_in => SW,
	SIP_out => SIP_out,
	load_sip => load_sip,
	load_sop => load_sop,
	SOP_out => LEDR,
	SOP_in  => SYNTHESIZED_WIRE_50
);


b2v_inst : controlunit
PORT MAP(clk => CLOCK_50,
		reset => KEY(0),
		start => KEY(3),
		 zOut => SYNTHESIZED_WIRE_1,
		 IR_AM => SYNTHESIZED_WIRE_47,
		 IR_OpCode => SYNTHESIZED_WIRE_3,
		 pc_control_sig => SYNTHESIZED_WIRE_5,
		 data_in_control => SYNTHESIZED_WIRE_27,
		 mem_sel => SYNTHESIZED_WIRE_28,
		 wren_b => SYNTHESIZED_WIRE_29,
		 ld_ir1 => SYNTHESIZED_WIRE_11,
		 ld_ir2 => ld_ir2,
		 load_sip => load_sip,
		 load_sop => load_sop,
		 selz_control => SYNTHESIZED_WIRE_14,
		 selx_control => SYNTHESIZED_WIRE_15,
		 CarryIn => SYNTHESIZED_WIRE_35,
		 write_en => write_enabled,
		 address_control => SYNTHESIZED_WIRE_30,
		 ALU_Opcode => SYNTHESIZED_WIRE_39,
		 cu_selx => SYNTHESIZED_WIRE_17,
		 cu_selz => SYNTHESIZED_WIRE_18,
		 pc_mux_select => SYNTHESIZED_WIRE_8,
		 z_control => SYNTHESIZED_WIRE_25);


b2v_inst2 : pc
PORT MAP(clk => CLOCK_50,
		reset => reset,
		 pc_control_sig => SYNTHESIZED_WIRE_5,
		 ir_hold => SYNTHESIZED_WIRE_48,
		 m_out => SYNTHESIZED_WIRE_49,
		 mux_select => SYNTHESIZED_WIRE_8,
		 rx => SYNTHESIZED_WIRE_50,
		 pc_hold => SYNTHESIZED_WIRE_32);


b2v_inst3 : ir
PORT MAP(clk => CLOCK_50,
		reset => reset,
		 ld_ir1 => SYNTHESIZED_WIRE_11,
		 ld_ir2 => ld_ir2,
		 programMemory_out => SYNTHESIZED_WIRE_12,
		 IR_AM => SYNTHESIZED_WIRE_47,
		 IR_Op => SYNTHESIZED_WIRE_48,
		 IR_Opcode => SYNTHESIZED_WIRE_3,
		 IR_Rx => SYNTHESIZED_WIRE_20,
		 IR_Rz => SYNTHESIZED_WIRE_21);


b2v_inst4 : regfile
GENERIC MAP(width => 4
			)
PORT MAP(clk => CLOCK_50,
		 selz_control => SYNTHESIZED_WIRE_14,
		 selx_control => SYNTHESIZED_WIRE_15,
		 aluout => SYNTHESIZED_WIRE_16,
		 cu_selx => SYNTHESIZED_WIRE_17,
		 cu_selz => SYNTHESIZED_WIRE_18,
		 ir_hold => SYNTHESIZED_WIRE_48,
		 ir_hold_x => SYNTHESIZED_WIRE_20,
		 ir_hold_z => SYNTHESIZED_WIRE_21,
		 m_out => SYNTHESIZED_WIRE_49,
		 rx => SYNTHESIZED_WIRE_50,
		 rz_max => SYNTHESIZED_WIRE_24,
		 sip_hold => SIP_out,
		 z_control => SYNTHESIZED_WIRE_25,
		 flmr => SYNTHESIZED_WIRE_37,
		 rx_out => SYNTHESIZED_WIRE_50,
		 rz => SYNTHESIZED_WIRE_51,
		 write_en => write_enabled);


b2v_inst5 : memory_interface
PORT MAP(clock => inv_clk,
		 data_in_control => SYNTHESIZED_WIRE_27,
		 mem_sel => SYNTHESIZED_WIRE_28,
		 wren_b => SYNTHESIZED_WIRE_29,
		 address_control => SYNTHESIZED_WIRE_30,
		 ir_hold => SYNTHESIZED_WIRE_48,
		 pc => SYNTHESIZED_WIRE_32,
		 rx => SYNTHESIZED_WIRE_50,
		 rz => SYNTHESIZED_WIRE_51,
		 data_memory => SYNTHESIZED_WIRE_49,
		 program_memory => SYNTHESIZED_WIRE_12);


b2v_inst7 : alu
GENERIC MAP(ADD_opcode => "00",
			AND_opcode => "10",
			OR_opcode => "11",
			SUB_opcode => "01",
			SUBV_opcode => "01"
			)
PORT MAP(cin => SYNTHESIZED_WIRE_35,
		 ALU_addm => SYNTHESIZED_WIRE_47,
		 ALU_Flmr => SYNTHESIZED_WIRE_37,
		 ALU_IR => SYNTHESIZED_WIRE_48,
		 ALU_Opcode => SYNTHESIZED_WIRE_39,
		 ALU_Rx => SYNTHESIZED_WIRE_50,
		 ALU_Rz => SYNTHESIZED_WIRE_51,
		 zout => SYNTHESIZED_WIRE_43,
		 ALU_out => SYNTHESIZED_WIRE_16);


b2v_inst8 : zregister
PORT MAP(clk => CLOCK_50,
		 in_z => SYNTHESIZED_WIRE_43,
		 out_z => SYNTHESIZED_WIRE_1);


b2v_inst9 : max
PORT MAP(m_in1 => SYNTHESIZED_WIRE_50,
		 m_in2 => SYNTHESIZED_WIRE_51,
		 m_out => SYNTHESIZED_WIRE_24);


END bdf_type;