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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"

-- DATE "05/06/2023 20:44:10"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(7 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(7 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0)
	);
END top;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \b2v_inst|resetprocessor:count[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst|resetprocessor:count[1]~q\ : std_logic;
SIGNAL \b2v_inst|resetprocessor:count[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst|resetprocessor:count[0]~q\ : std_logic;
SIGNAL \b2v_inst|flipflop~0_combout\ : std_logic;
SIGNAL \b2v_inst|resetprocessor:flipflop~q\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \b2v_inst|state~28_combout\ : std_logic;
SIGNAL \b2v_inst|enable_pd~0_combout\ : std_logic;
SIGNAL \b2v_inst|enable_pd~q\ : std_logic;
SIGNAL \b2v_inst|state~25_combout\ : std_logic;
SIGNAL \b2v_inst|state.Test~q\ : std_logic;
SIGNAL \b2v_inst|state~29_combout\ : std_logic;
SIGNAL \b2v_inst|state.Test2~q\ : std_logic;
SIGNAL \b2v_inst|state~26_combout\ : std_logic;
SIGNAL \b2v_inst|state.T1~q\ : std_logic;
SIGNAL \b2v_inst|state~24_combout\ : std_logic;
SIGNAL \b2v_inst|state.T2~q\ : std_logic;
SIGNAL \b2v_inst|state~27_combout\ : std_logic;
SIGNAL \b2v_inst|state.T0~q\ : std_logic;
SIGNAL \b2v_inst|Selector3~0_combout\ : std_logic;
SIGNAL \b2v_inst2|Add0~22\ : std_logic;
SIGNAL \b2v_inst2|Add0~25_sumout\ : std_logic;
SIGNAL \b2v_inst3|IR_Op[9]~12_combout\ : std_logic;
SIGNAL \b2v_inst2|Add0~26\ : std_logic;
SIGNAL \b2v_inst2|Add0~30\ : std_logic;
SIGNAL \b2v_inst2|Add0~34\ : std_logic;
SIGNAL \b2v_inst2|Add0~37_sumout\ : std_logic;
SIGNAL \b2v_inst3|IR_Op[10]~13_combout\ : std_logic;
SIGNAL \b2v_inst2|Add0~38\ : std_logic;
SIGNAL \b2v_inst2|Add0~41_sumout\ : std_logic;
SIGNAL \b2v_inst3|IR_Op[11]~11_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~3_combout\ : std_logic;
SIGNAL \b2v_inst|Selector1~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~0_combout\ : std_logic;
SIGNAL \b2v_inst|z_control[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst4|z[14]~0_combout\ : std_logic;
SIGNAL \b2v_inst4|z[14]~47_combout\ : std_logic;
SIGNAL \b2v_inst5|temp_address[9]~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux6~0_combout\ : std_logic;
SIGNAL \b2v_inst4|z[14]~8_combout\ : std_logic;
SIGNAL \b2v_inst4|z[14]~49_combout\ : std_logic;
SIGNAL \b2v_inst4|z[14]~50_combout\ : std_logic;
SIGNAL \b2v_inst4|z[10]~53_combout\ : std_logic;
SIGNAL \b2v_inst4|z[14]~48_combout\ : std_logic;
SIGNAL \b2v_inst4|z[14]~6_combout\ : std_logic;
SIGNAL \b2v_inst|ALU_Opcode[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst4|z[14]~5_combout\ : std_logic;
SIGNAL \b2v_inst3|IR_Op[6]~6_combout\ : std_logic;
SIGNAL \b2v_inst|Equal1~1_combout\ : std_logic;
SIGNAL \b2v_inst|Selector5~2_combout\ : std_logic;
SIGNAL \b2v_inst|Selector5~3_combout\ : std_logic;
SIGNAL \b2v_inst|state.T0~_wirecell_combout\ : std_logic;
SIGNAL \b2v_inst3|temp_IR[5]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst3|temp_IR[6]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst|Selector5~0_combout\ : std_logic;
SIGNAL \b2v_inst5|temp_address[9]~3_combout\ : std_logic;
SIGNAL \b2v_inst|z_control[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst4|z[5]~4_combout\ : std_logic;
SIGNAL \b2v_inst4|z[1]~10_combout\ : std_logic;
SIGNAL \b2v_inst|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_1_bypass[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst4|Mux16~0_combout\ : std_logic;
SIGNAL \b2v_inst4|z[14]~7_combout\ : std_logic;
SIGNAL \b2v_inst3|IR_Op[13]~9_combout\ : std_logic;
SIGNAL \b2v_inst4|regs[10][13]~q\ : std_logic;
SIGNAL \b2v_inst3|IR_Op[12]~10_combout\ : std_logic;
SIGNAL \b2v_inst4|regs[10][12]~q\ : std_logic;
SIGNAL \b2v_inst3|IR_Op[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst4|z[5]~11_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \b2v_inst|load_sip~0_combout\ : std_logic;
SIGNAL \b2v_inst4|z[4]~34_combout\ : std_logic;
SIGNAL \b2v_inst4|regs[10][4]~q\ : std_logic;
SIGNAL \b2v_inst7|ALU_in1[4]~4_combout\ : std_logic;
SIGNAL \b2v_inst4|z[6]~15_combout\ : std_logic;
SIGNAL \b2v_inst4|z[15]~71_combout\ : std_logic;
SIGNAL \b2v_inst4|z[15]~91_combout\ : std_logic;
SIGNAL \b2v_inst4|regs[10][6]~q\ : std_logic;
SIGNAL \b2v_inst7|ALU_in1[6]~6_combout\ : std_logic;
SIGNAL \b2v_inst7|ALU_in2[6]~6_combout\ : std_logic;
SIGNAL \b2v_inst4|regs[10][5]~q\ : std_logic;
SIGNAL \b2v_inst3|IR_Op[5]~5_combout\ : std_logic;
SIGNAL \b2v_inst7|ALU_in1[5]~5_combout\ : std_logic;
SIGNAL \b2v_inst7|ALU_in2[5]~5_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \b2v_inst7|ALU_in2[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst4|regs[10][0]~q\ : std_logic;
SIGNAL \b2v_inst7|ALU_in1[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst|ALU_Opcode[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst7|Add0~66_cout\ : std_logic;
SIGNAL \b2v_inst7|Add0~1_sumout\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \b2v_inst4|Mux16~4_combout\ : std_logic;
SIGNAL \b2v_inst5|temp_address[7]~11_combout\ : std_logic;
SIGNAL \b2v_inst5|Add0~2\ : std_logic;
SIGNAL \b2v_inst5|Add0~6\ : std_logic;
SIGNAL \b2v_inst5|Add0~10\ : std_logic;
SIGNAL \b2v_inst5|Add0~14\ : std_logic;
SIGNAL \b2v_inst5|Add0~18\ : std_logic;
SIGNAL \b2v_inst5|Add0~21_sumout\ : std_logic;
SIGNAL \b2v_inst4|Mux16~7_combout\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \b2v_inst4|Mux16~18_combout\ : std_logic;
SIGNAL \b2v_inst5|temp_address[8]~12_combout\ : std_logic;
SIGNAL \b2v_inst5|Add0~22\ : std_logic;
SIGNAL \b2v_inst5|Add0~25_sumout\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \b2v_inst4|Mux16~14_combout\ : std_logic;
SIGNAL \b2v_inst5|temp_address[9]~13_combout\ : std_logic;
SIGNAL \b2v_inst5|Add0~26\ : std_logic;
SIGNAL \b2v_inst5|Add0~29_sumout\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \b2v_inst4|Mux0~16_combout\ : std_logic;
SIGNAL \b2v_inst5|temp_address[10]~14_combout\ : std_logic;
SIGNAL \b2v_inst5|Add0~30\ : std_logic;
SIGNAL \b2v_inst5|Add0~33_sumout\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \b2v_inst4|Mux16~15_combout\ : std_logic;
SIGNAL \b2v_inst5|temp_address[11]~15_combout\ : std_logic;
SIGNAL \b2v_inst5|Add0~34\ : std_logic;
SIGNAL \b2v_inst5|Add0~37_sumout\ : std_logic;
SIGNAL \b2v_inst4|z[0]~104_combout\ : std_logic;
SIGNAL \b2v_inst4|z[0]~121_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \b2v_inst4|z[0]~12_combout\ : std_logic;
SIGNAL \b2v_inst4|z[0]~13_combout\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \b2v_inst4|Mux16~8_combout\ : std_logic;
SIGNAL \b2v_inst7|ALU_in2[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst4|regs[10][1]~q\ : std_logic;
SIGNAL \b2v_inst7|ALU_in1[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst7|Add0~2\ : std_logic;
SIGNAL \b2v_inst7|Add0~5_sumout\ : std_logic;
SIGNAL \b2v_inst4|z[6]~14_combout\ : std_logic;
SIGNAL \b2v_inst4|z[1]~16_combout\ : std_logic;
SIGNAL \b2v_inst4|z[1]~17_combout\ : std_logic;
SIGNAL \b2v_inst4|z[1]~18_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \b2v_inst4|z[1]~19_combout\ : std_logic;
SIGNAL \b2v_inst4|z[1]~20_combout\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \b2v_inst4|Mux0~9_combout\ : std_logic;
SIGNAL \b2v_inst4|z[7]~45_combout\ : std_logic;
SIGNAL \b2v_inst7|ALU_in2[7]~7_combout\ : std_logic;
SIGNAL \b2v_inst4|regs[10][7]~q\ : std_logic;
SIGNAL \b2v_inst7|ALU_in1[7]~7_combout\ : std_logic;
SIGNAL \b2v_inst7|Add0~26\ : std_logic;
SIGNAL \b2v_inst7|Add0~29_sumout\ : std_logic;
SIGNAL \b2v_inst4|z[7]~44_combout\ : std_logic;
SIGNAL \b2v_inst4|z[7]~113_combout\ : std_logic;
SIGNAL \b2v_inst4|z[7]~46_combout\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \b2v_inst4|Mux16~3_combout\ : std_logic;
SIGNAL \b2v_inst7|ALU_in2[4]~4_combout\ : std_logic;
SIGNAL \b2v_inst4|regs[10][3]~q\ : std_logic;
SIGNAL \b2v_inst3|IR_Op[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst7|ALU_in1[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst4|regs[10][2]~q\ : std_logic;
SIGNAL \b2v_inst7|ALU_in1[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst7|Add0~6\ : std_logic;
SIGNAL \b2v_inst7|Add0~10\ : std_logic;
SIGNAL \b2v_inst7|Add0~14\ : std_logic;
SIGNAL \b2v_inst7|Add0~18\ : std_logic;
SIGNAL \b2v_inst7|Add0~22\ : std_logic;
SIGNAL \b2v_inst7|Add0~25_sumout\ : std_logic;
SIGNAL \b2v_inst4|z[6]~41_combout\ : std_logic;
SIGNAL \b2v_inst4|z[6]~117_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \b2v_inst4|z[6]~42_combout\ : std_logic;
SIGNAL \b2v_inst4|z[6]~43_combout\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \b2v_inst4|Mux16~5_combout\ : std_logic;
SIGNAL \b2v_inst5|temp_address[6]~10_combout\ : std_logic;
SIGNAL \b2v_inst5|Add0~17_sumout\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \b2v_inst4|Mux0~18_combout\ : std_logic;
SIGNAL \b2v_inst4|regs[10][8]~q\ : std_logic;
SIGNAL \b2v_inst7|ALU_in1[8]~14_combout\ : std_logic;
SIGNAL \b2v_inst7|ALU_in2[8]~14_combout\ : std_logic;
SIGNAL \b2v_inst7|Add0~30\ : std_logic;
SIGNAL \b2v_inst7|Add0~57_sumout\ : std_logic;
SIGNAL \b2v_inst4|z[8]~105_combout\ : std_logic;
SIGNAL \b2v_inst4|z[8]~94_combout\ : std_logic;
SIGNAL \b2v_inst4|z[8]~95_combout\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \b2v_inst4|Mux16~16_combout\ : std_logic;
SIGNAL \b2v_inst7|ALU_in2[10]~13_combout\ : std_logic;
SIGNAL \b2v_inst4|regs[10][10]~q\ : std_logic;
SIGNAL \b2v_inst7|ALU_in1[10]~13_combout\ : std_logic;
SIGNAL \b2v_inst7|ALU_in2[9]~12_combout\ : std_logic;
SIGNAL \b2v_inst7|Add0~58\ : std_logic;
SIGNAL \b2v_inst7|Add0~50\ : std_logic;
SIGNAL \b2v_inst7|Add0~53_sumout\ : std_logic;
SIGNAL \b2v_inst4|z[10]~109_combout\ : std_logic;
SIGNAL \b2v_inst4|z[10]~92_combout\ : std_logic;
SIGNAL \b2v_inst4|z[10]~93_combout\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \b2v_inst4|Mux16~6_combout\ : std_logic;
SIGNAL \b2v_inst7|Add0~21_sumout\ : std_logic;
SIGNAL \b2v_inst4|z[5]~36_combout\ : std_logic;
SIGNAL \b2v_inst4|z[5]~37_combout\ : std_logic;
SIGNAL \b2v_inst4|z[5]~38_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \b2v_inst4|z[5]~39_combout\ : std_logic;
SIGNAL \b2v_inst4|z[5]~40_combout\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \b2v_inst4|Mux0~7_combout\ : std_logic;
SIGNAL \b2v_inst5|temp_address[5]~9_combout\ : std_logic;
SIGNAL \b2v_inst5|Add0~13_sumout\ : std_logic;
SIGNAL \b2v_inst4|z[4]~31_combout\ : std_logic;
SIGNAL \b2v_inst4|z[4]~32_combout\ : std_logic;
SIGNAL \b2v_inst7|Add0~17_sumout\ : std_logic;
SIGNAL \b2v_inst4|z[4]~33_combout\ : std_logic;
SIGNAL \b2v_inst4|z[4]~35_combout\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \b2v_inst4|Mux0~6_combout\ : std_logic;
SIGNAL \b2v_inst5|temp_address[4]~8_combout\ : std_logic;
SIGNAL \b2v_inst5|Add0~9_sumout\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \b2v_inst4|Mux0~13_combout\ : std_logic;
SIGNAL \b2v_inst7|ALU_in1[12]~10_combout\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \b2v_inst4|Mux16~13_combout\ : std_logic;
SIGNAL \b2v_inst7|ALU_in2[12]~10_combout\ : std_logic;
SIGNAL \b2v_inst4|regs[10][11]~q\ : std_logic;
SIGNAL \b2v_inst7|ALU_in1[11]~11_combout\ : std_logic;
SIGNAL \b2v_inst7|ALU_in2[11]~11_combout\ : std_logic;
SIGNAL \b2v_inst7|Add0~54\ : std_logic;
SIGNAL \b2v_inst7|Add0~46\ : std_logic;
SIGNAL \b2v_inst7|Add0~41_sumout\ : std_logic;
SIGNAL \b2v_inst4|z[12]~72_combout\ : std_logic;
SIGNAL \b2v_inst4|z[12]~74_combout\ : std_logic;
SIGNAL \b2v_inst4|z[12]~75_combout\ : std_logic;
SIGNAL \b2v_inst4|z[9]~73_combout\ : std_logic;
SIGNAL \b2v_inst4|z[12]~76_combout\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \b2v_inst4|Mux16~9_combout\ : std_logic;
SIGNAL \b2v_inst7|ALU_in2[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst7|Add0~13_sumout\ : std_logic;
SIGNAL \b2v_inst4|z[3]~26_combout\ : std_logic;
SIGNAL \b2v_inst4|z[3]~27_combout\ : std_logic;
SIGNAL \b2v_inst4|z[3]~28_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \b2v_inst4|z[3]~29_combout\ : std_logic;
SIGNAL \b2v_inst4|z[3]~30_combout\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \b2v_inst4|Mux0~5_combout\ : std_logic;
SIGNAL \b2v_inst5|temp_address[3]~7_combout\ : std_logic;
SIGNAL \b2v_inst5|Add0~5_sumout\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \b2v_inst4|Mux0~12_combout\ : std_logic;
SIGNAL \b2v_inst7|ALU_in1[13]~9_combout\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \b2v_inst4|Mux16~12_combout\ : std_logic;
SIGNAL \b2v_inst7|ALU_in2[13]~9_combout\ : std_logic;
SIGNAL \b2v_inst7|Add0~42\ : std_logic;
SIGNAL \b2v_inst7|Add0~37_sumout\ : std_logic;
SIGNAL \b2v_inst4|z[13]~64_combout\ : std_logic;
SIGNAL \b2v_inst4|z[13]~62_combout\ : std_logic;
SIGNAL \b2v_inst4|z[13]~67_combout\ : std_logic;
SIGNAL \b2v_inst4|z[15]~57_combout\ : std_logic;
SIGNAL \b2v_inst4|z[13]~68_combout\ : std_logic;
SIGNAL \b2v_inst4|z[13]~63_combout\ : std_logic;
SIGNAL \b2v_inst4|z[13]~69_combout\ : std_logic;
SIGNAL \b2v_inst4|z[13]~65_combout\ : std_logic;
SIGNAL \b2v_inst4|z[13]~66_combout\ : std_logic;
SIGNAL \b2v_inst4|z[13]~70_combout\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \b2v_inst4|Mux16~10_combout\ : std_logic;
SIGNAL \b2v_inst7|ALU_in2[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst4|z[2]~21_combout\ : std_logic;
SIGNAL \b2v_inst4|z[2]~22_combout\ : std_logic;
SIGNAL \b2v_inst7|Add0~9_sumout\ : std_logic;
SIGNAL \b2v_inst4|z[2]~23_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \b2v_inst4|z[2]~24_combout\ : std_logic;
SIGNAL \b2v_inst4|z[2]~25_combout\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \b2v_inst4|Mux0~4_combout\ : std_logic;
SIGNAL \b2v_inst5|temp_address[2]~6_combout\ : std_logic;
SIGNAL \b2v_inst5|Add0~1_sumout\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \b2v_inst4|Mux0~17_combout\ : std_logic;
SIGNAL \b2v_inst4|z[14]~1_combout\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \b2v_inst4|Mux16~11_combout\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \b2v_inst4|Mux0~11_combout\ : std_logic;
SIGNAL \b2v_inst9|LessThan0~12_combout\ : std_logic;
SIGNAL \b2v_inst9|LessThan0~7_combout\ : std_logic;
SIGNAL \b2v_inst9|LessThan0~13_combout\ : std_logic;
SIGNAL \b2v_inst9|LessThan0~5_combout\ : std_logic;
SIGNAL \b2v_inst9|LessThan0~0_combout\ : std_logic;
SIGNAL \b2v_inst9|LessThan0~19_combout\ : std_logic;
SIGNAL \b2v_inst9|LessThan0~16_combout\ : std_logic;
SIGNAL \b2v_inst9|LessThan0~17_combout\ : std_logic;
SIGNAL \b2v_inst9|LessThan0~4_combout\ : std_logic;
SIGNAL \b2v_inst9|LessThan0~18_combout\ : std_logic;
SIGNAL \b2v_inst4|Mux0~10_combout\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \b2v_inst9|LessThan0~8_combout\ : std_logic;
SIGNAL \b2v_inst9|LessThan0~9_combout\ : std_logic;
SIGNAL \b2v_inst9|LessThan0~10_combout\ : std_logic;
SIGNAL \b2v_inst9|LessThan0~11_combout\ : std_logic;
SIGNAL \b2v_inst4|z[14]~9_combout\ : std_logic;
SIGNAL \b2v_inst3|IR_Op[14]~8_combout\ : std_logic;
SIGNAL \b2v_inst4|z[14]~51_combout\ : std_logic;
SIGNAL \b2v_inst3|IR_Op[15]~15_combout\ : std_logic;
SIGNAL \b2v_inst4|z[14]~52_combout\ : std_logic;
SIGNAL \b2v_inst4|z[14]~60_combout\ : std_logic;
SIGNAL \b2v_inst7|ALU_in2[14]~8_combout\ : std_logic;
SIGNAL \b2v_inst4|regs[10][14]~q\ : std_logic;
SIGNAL \b2v_inst7|ALU_in1[14]~8_combout\ : std_logic;
SIGNAL \b2v_inst4|z[14]~58_combout\ : std_logic;
SIGNAL \b2v_inst4|z[14]~59_combout\ : std_logic;
SIGNAL \b2v_inst4|z[14]~55_combout\ : std_logic;
SIGNAL \b2v_inst4|z[14]~56_combout\ : std_logic;
SIGNAL \b2v_inst7|Add0~38\ : std_logic;
SIGNAL \b2v_inst7|Add0~33_sumout\ : std_logic;
SIGNAL \b2v_inst4|z[14]~54_combout\ : std_logic;
SIGNAL \b2v_inst4|z[14]~61_combout\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \b2v_inst4|Mux16~17_combout\ : std_logic;
SIGNAL \b2v_inst4|z[14]~2_combout\ : std_logic;
SIGNAL \b2v_inst4|z[15]~98_combout\ : std_logic;
SIGNAL \b2v_inst4|regs[10][15]~q\ : std_logic;
SIGNAL \b2v_inst7|ALU_in1[15]~15_combout\ : std_logic;
SIGNAL \b2v_inst7|ALU_in2[15]~15_combout\ : std_logic;
SIGNAL \b2v_inst4|z[15]~96_combout\ : std_logic;
SIGNAL \b2v_inst4|z[15]~97_combout\ : std_logic;
SIGNAL \b2v_inst4|z[15]~100_combout\ : std_logic;
SIGNAL \b2v_inst4|z[15]~102_combout\ : std_logic;
SIGNAL \b2v_inst4|z[15]~103_combout\ : std_logic;
SIGNAL \b2v_inst4|z[15]~101_combout\ : std_logic;
SIGNAL \b2v_inst7|Add0~34\ : std_logic;
SIGNAL \b2v_inst7|Add0~61_sumout\ : std_logic;
SIGNAL \b2v_inst4|z[15]~99_combout\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \b2v_inst4|Mux0~3_combout\ : std_logic;
SIGNAL \b2v_inst5|temp_address[1]~5_combout\ : std_logic;
SIGNAL \b2v_inst4|Mux16~1_combout\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \b2v_inst4|Mux16~2_combout\ : std_logic;
SIGNAL \b2v_inst5|temp_address[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst3|temp_IR[4]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst4|regs[10][15]~0_combout\ : std_logic;
SIGNAL \b2v_inst4|regs[10][15]~1_combout\ : std_logic;
SIGNAL \b2v_inst4|regs[10][9]~q\ : std_logic;
SIGNAL \b2v_inst7|ALU_in1[9]~12_combout\ : std_logic;
SIGNAL \b2v_inst7|Add0~49_sumout\ : std_logic;
SIGNAL \b2v_inst4|z[9]~87_combout\ : std_logic;
SIGNAL \b2v_inst4|z[9]~88_combout\ : std_logic;
SIGNAL \b2v_inst4|z[9]~86_combout\ : std_logic;
SIGNAL \b2v_inst4|z[9]~89_combout\ : std_logic;
SIGNAL \b2v_inst4|z[9]~90_combout\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \b2v_inst4|Mux0~14_combout\ : std_logic;
SIGNAL \b2v_inst9|LessThan0~14_combout\ : std_logic;
SIGNAL \b2v_inst9|LessThan0~15_combout\ : std_logic;
SIGNAL \b2v_inst9|LessThan0~2_combout\ : std_logic;
SIGNAL \b2v_inst9|LessThan0~1_combout\ : std_logic;
SIGNAL \b2v_inst9|LessThan0~3_combout\ : std_logic;
SIGNAL \b2v_inst9|LessThan0~6_combout\ : std_logic;
SIGNAL \b2v_inst4|z[14]~3_combout\ : std_logic;
SIGNAL \b2v_inst4|z[11]~80_combout\ : std_logic;
SIGNAL \b2v_inst4|z[11]~81_combout\ : std_logic;
SIGNAL \b2v_inst4|z[11]~77_combout\ : std_logic;
SIGNAL \b2v_inst4|z[11]~82_combout\ : std_logic;
SIGNAL \b2v_inst4|z[11]~83_combout\ : std_logic;
SIGNAL \b2v_inst4|z[11]~84_combout\ : std_logic;
SIGNAL \b2v_inst4|z[11]~78_combout\ : std_logic;
SIGNAL \b2v_inst7|Add0~45_sumout\ : std_logic;
SIGNAL \b2v_inst4|z[11]~79_combout\ : std_logic;
SIGNAL \b2v_inst4|z[11]~85_combout\ : std_logic;
SIGNAL \b2v_inst4|Mux0~15_combout\ : std_logic;
SIGNAL \b2v_inst2|Add0~42\ : std_logic;
SIGNAL \b2v_inst2|Add0~45_sumout\ : std_logic;
SIGNAL \b2v_inst2|pc_temp~23_combout\ : std_logic;
SIGNAL \b2v_inst2|pc_temp~24_combout\ : std_logic;
SIGNAL \b2v_inst2|pc_temp~21_combout\ : std_logic;
SIGNAL \b2v_inst2|pc_temp~22_combout\ : std_logic;
SIGNAL \b2v_inst2|pc_temp~19_combout\ : std_logic;
SIGNAL \b2v_inst2|pc_temp~20_combout\ : std_logic;
SIGNAL \b2v_inst3|IR_Op[8]~14_combout\ : std_logic;
SIGNAL \b2v_inst2|Add0~33_sumout\ : std_logic;
SIGNAL \b2v_inst2|pc_temp~17_combout\ : std_logic;
SIGNAL \b2v_inst2|pc_temp~18_combout\ : std_logic;
SIGNAL \b2v_inst|Selector4~0_combout\ : std_logic;
SIGNAL \b2v_inst3|IR_Op[7]~7_combout\ : std_logic;
SIGNAL \b2v_inst2|Add0~29_sumout\ : std_logic;
SIGNAL \b2v_inst2|pc_temp~15_combout\ : std_logic;
SIGNAL \b2v_inst2|pc_temp~16_combout\ : std_logic;
SIGNAL \b2v_inst4|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \b2v_inst4|Mux0~8_combout\ : std_logic;
SIGNAL \b2v_inst2|pc_temp~13_combout\ : std_logic;
SIGNAL \b2v_inst2|pc_temp~14_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst3|IR_Op[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst2|Add0~1_sumout\ : std_logic;
SIGNAL \b2v_inst2|pc_temp~1_combout\ : std_logic;
SIGNAL \b2v_inst2|pc_temp~2_combout\ : std_logic;
SIGNAL \b2v_inst2|Add0~2\ : std_logic;
SIGNAL \b2v_inst2|Add0~6\ : std_logic;
SIGNAL \b2v_inst2|Add0~10\ : std_logic;
SIGNAL \b2v_inst2|Add0~14\ : std_logic;
SIGNAL \b2v_inst2|Add0~18\ : std_logic;
SIGNAL \b2v_inst2|Add0~21_sumout\ : std_logic;
SIGNAL \b2v_inst2|pc_temp~11_combout\ : std_logic;
SIGNAL \b2v_inst2|pc_temp~12_combout\ : std_logic;
SIGNAL \b2v_inst|Selector5~1_combout\ : std_logic;
SIGNAL \b2v_inst3|IR_Op[4]~4_combout\ : std_logic;
SIGNAL \b2v_inst2|Add0~17_sumout\ : std_logic;
SIGNAL \b2v_inst2|pc_temp~9_combout\ : std_logic;
SIGNAL \b2v_inst2|pc_temp~10_combout\ : std_logic;
SIGNAL \b2v_inst|Mux26~0_combout\ : std_logic;
SIGNAL \b2v_inst|Selector2~0_combout\ : std_logic;
SIGNAL \b2v_inst2|Add0~13_sumout\ : std_logic;
SIGNAL \b2v_inst2|pc_temp~7_combout\ : std_logic;
SIGNAL \b2v_inst2|pc_temp~8_combout\ : std_logic;
SIGNAL \b2v_inst|Selector1~1_combout\ : std_logic;
SIGNAL \b2v_inst|Selector1~2_combout\ : std_logic;
SIGNAL \b2v_inst2|pc_temp~0_combout\ : std_logic;
SIGNAL \b2v_inst2|Add0~9_sumout\ : std_logic;
SIGNAL \b2v_inst2|pc_temp~5_combout\ : std_logic;
SIGNAL \b2v_inst2|pc_temp~6_combout\ : std_logic;
SIGNAL \b2v_inst5|temp_address[9]~1_combout\ : std_logic;
SIGNAL \b2v_inst3|IR_Op[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst2|Add0~5_sumout\ : std_logic;
SIGNAL \b2v_inst2|pc_temp~3_combout\ : std_logic;
SIGNAL \b2v_inst2|pc_temp~4_combout\ : std_logic;
SIGNAL \b2v_inst|Equal1~0_combout\ : std_logic;
SIGNAL \b2v_inst5|temp_address[9]~2_combout\ : std_logic;
SIGNAL \b2v_inst4|Mux0~1_combout\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \b2v_inst4|Mux0~2_combout\ : std_logic;
SIGNAL \b2v_inst|load_sop~0_combout\ : std_logic;
SIGNAL \b2v_inst|load_sop~1_combout\ : std_logic;
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \signal_registers|SIP_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \b2v_inst3|temp_IR\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \signal_registers|SOP_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst5|address_a_temp\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \b2v_inst4|regs_rtl_0_bypass\ : std_logic_vector(0 TO 24);
SIGNAL \b2v_inst4|regs_rtl_1_bypass\ : std_logic_vector(0 TO 24);
SIGNAL \b2v_inst2|pc_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \b2v_inst5|address_b_temp\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \b2v_inst|pc_mux_select\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a14\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a15\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a0~portbdataout\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a1\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a2\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a3\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a4\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a5\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a6\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a7\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a8\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a9\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a10\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a11\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a12\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a13\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a14\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a15\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\ : std_logic;
SIGNAL \b2v_inst3|ALT_INV_temp_IR[6]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst3|ALT_INV_temp_IR[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_state.T0~_wirecell_combout\ : std_logic;
SIGNAL \b2v_inst5|ALT_INV_address_b_temp\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \b2v_inst|ALT_INV_pc_mux_select\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst5|ALT_INV_address_a_temp\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \b2v_inst4|ALT_INV_z[0]~104_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[15]~103_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[15]~102_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[15]~101_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[15]~100_combout\ : std_logic;
SIGNAL \b2v_inst5|ALT_INV_temp_address[11]~15_combout\ : std_logic;
SIGNAL \b2v_inst5|ALT_INV_temp_address[10]~14_combout\ : std_logic;
SIGNAL \b2v_inst5|ALT_INV_temp_address[9]~13_combout\ : std_logic;
SIGNAL \b2v_inst5|ALT_INV_temp_address[8]~12_combout\ : std_logic;
SIGNAL \b2v_inst5|ALT_INV_temp_address[7]~11_combout\ : std_logic;
SIGNAL \b2v_inst5|ALT_INV_temp_address[6]~10_combout\ : std_logic;
SIGNAL \b2v_inst5|ALT_INV_temp_address[5]~9_combout\ : std_logic;
SIGNAL \b2v_inst5|ALT_INV_temp_address[4]~8_combout\ : std_logic;
SIGNAL \b2v_inst5|ALT_INV_temp_address[3]~7_combout\ : std_logic;
SIGNAL \b2v_inst5|ALT_INV_temp_address[2]~6_combout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_Selector1~2_combout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \b2v_inst5|ALT_INV_temp_address[1]~5_combout\ : std_logic;
SIGNAL \b2v_inst5|ALT_INV_temp_address[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst5|ALT_INV_temp_address[9]~3_combout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_pc_temp~24_combout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_pc_temp~23_combout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_pc_reg\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \b2v_inst2|ALT_INV_pc_temp~22_combout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_pc_temp~21_combout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_pc_temp~20_combout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_pc_temp~19_combout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_pc_temp~18_combout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_pc_temp~17_combout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_pc_temp~16_combout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_pc_temp~15_combout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_pc_temp~14_combout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_pc_temp~13_combout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_pc_temp~12_combout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_pc_temp~11_combout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_pc_temp~10_combout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_pc_temp~9_combout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_pc_temp~8_combout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_pc_temp~7_combout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_pc_temp~6_combout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_pc_temp~5_combout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_pc_temp~4_combout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_pc_temp~3_combout\ : std_logic;
SIGNAL \b2v_inst5|ALT_INV_temp_address[9]~2_combout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_pc_temp~2_combout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_pc_temp~1_combout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_pc_temp~0_combout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_resetprocessor:count[1]~q\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_resetprocessor:count[0]~q\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_ALU_Opcode[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_regs[10][15]~0_combout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_state.Test2~q\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_state.Test~q\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[15]~98_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[15]~97_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[15]~96_combout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_ALU_in2[15]~15_combout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_ALU_in1[15]~15_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_regs[10][15]~q\ : std_logic;
SIGNAL \b2v_inst3|ALT_INV_IR_Op[15]~15_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[8]~94_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_Mux16~18_combout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_ALU_in2[8]~14_combout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_ALU_in1[8]~14_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_regs[10][8]~q\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_Mux0~18_combout\ : std_logic;
SIGNAL \b2v_inst3|ALT_INV_IR_Op[8]~14_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[10]~92_combout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_ALU_in2[10]~13_combout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_ALU_in1[10]~13_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_regs[10][10]~q\ : std_logic;
SIGNAL \b2v_inst3|ALT_INV_IR_Op[10]~13_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[15]~91_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[9]~89_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[9]~88_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[9]~87_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[9]~86_combout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_ALU_in2[9]~12_combout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_ALU_in1[9]~12_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_regs[10][9]~q\ : std_logic;
SIGNAL \b2v_inst3|ALT_INV_IR_Op[9]~12_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[11]~84_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[11]~83_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[11]~82_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[11]~81_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[11]~80_combout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_ALU_in2[11]~11_combout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_ALU_in1[11]~11_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_regs[10][11]~q\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[11]~79_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[11]~78_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[11]~77_combout\ : std_logic;
SIGNAL \b2v_inst3|ALT_INV_IR_Op[11]~11_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[12]~75_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[12]~74_combout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_ALU_in2[12]~10_combout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_ALU_in1[12]~10_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_regs[10][12]~q\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[9]~73_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[12]~72_combout\ : std_logic;
SIGNAL \b2v_inst3|ALT_INV_IR_Op[12]~10_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[15]~71_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[13]~69_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[13]~68_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[13]~67_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[13]~66_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[13]~65_combout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_ALU_in2[13]~9_combout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_ALU_in1[13]~9_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_regs[10][13]~q\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[13]~64_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[13]~63_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[13]~62_combout\ : std_logic;
SIGNAL \b2v_inst3|ALT_INV_IR_Op[13]~9_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[14]~60_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[14]~59_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[14]~58_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[15]~57_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[14]~56_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[14]~55_combout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_ALU_in2[14]~8_combout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_ALU_in1[14]~8_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_regs[10][14]~q\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[14]~54_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[10]~53_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[14]~52_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[14]~51_combout\ : std_logic;
SIGNAL \b2v_inst3|ALT_INV_IR_Op[14]~8_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[14]~50_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[14]~49_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[14]~48_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[14]~47_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[7]~45_combout\ : std_logic;
SIGNAL \signal_registers|ALT_INV_SIP_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst4|ALT_INV_z[7]~44_combout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_ALU_in2[7]~7_combout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_ALU_in1[7]~7_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_regs[10][7]~q\ : std_logic;
SIGNAL \b2v_inst3|ALT_INV_IR_Op[7]~7_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[6]~42_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[6]~41_combout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_ALU_in2[6]~6_combout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_ALU_in1[6]~6_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_regs[10][6]~q\ : std_logic;
SIGNAL \b2v_inst3|ALT_INV_IR_Op[6]~6_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[5]~39_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[5]~38_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[5]~37_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[5]~36_combout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_ALU_in1[5]~5_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_regs[10][5]~q\ : std_logic;
SIGNAL \b2v_inst3|ALT_INV_IR_Op[5]~5_combout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_ALU_in2[5]~5_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[4]~34_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[4]~33_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[4]~32_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[4]~31_combout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_ALU_in1[4]~4_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_regs[10][4]~q\ : std_logic;
SIGNAL \b2v_inst3|ALT_INV_IR_Op[4]~4_combout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_ALU_in2[4]~4_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[3]~29_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[3]~28_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[3]~27_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[3]~26_combout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_ALU_in1[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_regs[10][3]~q\ : std_logic;
SIGNAL \b2v_inst3|ALT_INV_IR_Op[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_ALU_in2[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[2]~24_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[2]~23_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[2]~22_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[2]~21_combout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_ALU_in1[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_regs[10][2]~q\ : std_logic;
SIGNAL \b2v_inst3|ALT_INV_IR_Op[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_ALU_in2[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[1]~19_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[1]~18_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[1]~17_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[1]~16_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[6]~15_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[6]~14_combout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_ALU_in1[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_regs[10][1]~q\ : std_logic;
SIGNAL \b2v_inst3|ALT_INV_IR_Op[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_ALU_in2[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_enable_pd~q\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_resetprocessor:flipflop~q\ : std_logic;
SIGNAL \b2v_inst3|ALT_INV_temp_IR\ : std_logic_vector(15 DOWNTO 5);
SIGNAL \b2v_inst|ALT_INV_state.T0~q\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_Selector5~2_combout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[0]~12_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[5]~11_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[1]~10_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[14]~9_combout\ : std_logic;
SIGNAL \b2v_inst9|ALT_INV_LessThan0~19_combout\ : std_logic;
SIGNAL \b2v_inst9|ALT_INV_LessThan0~18_combout\ : std_logic;
SIGNAL \b2v_inst9|ALT_INV_LessThan0~17_combout\ : std_logic;
SIGNAL \b2v_inst9|ALT_INV_LessThan0~16_combout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_Mux15~6_combout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_ALU_in1[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_regs[10][0]~q\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[14]~8_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[14]~7_combout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_ALU_Opcode[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[14]~6_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[14]~5_combout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_ALU_in2[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst3|ALT_INV_IR_Op[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_Selector1~1_combout\ : std_logic;
SIGNAL \b2v_inst5|ALT_INV_temp_address[9]~1_combout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_Selector5~1_combout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_state.T1~q\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[5]~4_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[14]~3_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[14]~2_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[14]~1_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_Mux16~17_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_regs_rtl_1_bypass\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \b2v_inst4|ALT_INV_Mux0~17_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_regs_rtl_0_bypass\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \b2v_inst|ALT_INV_z_control[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst5|ALT_INV_temp_address[9]~0_combout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_z_control[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_Mux15~5_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[14]~0_combout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_Mux15~4_combout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_Mux15~3_combout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_Mux15~2_combout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \b2v_inst9|ALT_INV_LessThan0~15_combout\ : std_logic;
SIGNAL \b2v_inst9|ALT_INV_LessThan0~14_combout\ : std_logic;
SIGNAL \b2v_inst9|ALT_INV_LessThan0~13_combout\ : std_logic;
SIGNAL \b2v_inst9|ALT_INV_LessThan0~12_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_Mux16~16_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_Mux0~16_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_Mux16~15_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_Mux0~15_combout\ : std_logic;
SIGNAL \b2v_inst9|ALT_INV_LessThan0~11_combout\ : std_logic;
SIGNAL \b2v_inst9|ALT_INV_LessThan0~10_combout\ : std_logic;
SIGNAL \b2v_inst9|ALT_INV_LessThan0~9_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_Mux16~14_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_Mux0~14_combout\ : std_logic;
SIGNAL \b2v_inst9|ALT_INV_LessThan0~8_combout\ : std_logic;
SIGNAL \b2v_inst9|ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_Mux16~13_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_Mux0~13_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_Mux16~12_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_Mux0~12_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_Mux16~11_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_Mux0~11_combout\ : std_logic;
SIGNAL \b2v_inst9|ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \b2v_inst9|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \b2v_inst9|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_Mux16~10_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_Mux16~9_combout\ : std_logic;
SIGNAL \b2v_inst9|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_Mux16~8_combout\ : std_logic;
SIGNAL \b2v_inst9|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \b2v_inst9|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_Mux16~7_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_Mux0~10_combout\ : std_logic;
SIGNAL \b2v_inst9|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_Mux16~6_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_Mux16~5_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_Mux16~4_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_Mux16~3_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_Mux16~2_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_Mux16~1_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_Mux0~9_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_Mux0~8_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_Mux0~7_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_Mux0~6_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_Mux0~5_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_load_sop~0_combout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_state.T2~q\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_Mux26~0_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[0]~121_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[6]~117_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[7]~113_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[10]~109_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_z[8]~105_combout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \b2v_inst7|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a1\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a2\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a3\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a4\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a5\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a6\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a7\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a8\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a9\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a10\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a11\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a12\ : std_logic;
SIGNAL \b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a13\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
LEDR <= ww_LEDR;
ww_KEY <= KEY;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \b2v_inst4|z[0]~13_combout\ & 
\b2v_inst4|z[1]~20_combout\ & \b2v_inst4|z[2]~25_combout\ & \b2v_inst4|z[3]~30_combout\ & \b2v_inst4|z[4]~35_combout\ & \b2v_inst4|z[5]~40_combout\ & \b2v_inst4|z[6]~43_combout\ & \b2v_inst4|z[7]~46_combout\ & \b2v_inst4|z[8]~95_combout\ & 
\b2v_inst4|z[9]~90_combout\ & \b2v_inst4|z[10]~93_combout\ & \b2v_inst4|z[11]~85_combout\ & \b2v_inst4|z[12]~76_combout\ & \b2v_inst4|z[13]~70_combout\ & \b2v_inst4|z[14]~61_combout\ & \b2v_inst4|z[15]~99_combout\);

\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\b2v_inst3|temp_IR\(7) & \b2v_inst3|temp_IR[6]~DUPLICATE_q\ & \b2v_inst3|temp_IR\(5) & \b2v_inst3|temp_IR[4]~DUPLICATE_q\);

\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(3) & \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(2) & 
\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(1) & \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(0));

\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a1\ <= \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a2\ <= \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a3\ <= \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a4\ <= \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a5\ <= \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a6\ <= \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a7\ <= \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a8\ <= \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a9\ <= \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a10\ <= \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a11\ <= \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a12\ <= \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a13\ <= \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a14\ <= \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a15\ <= \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);

\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \b2v_inst4|z[0]~13_combout\ & 
\b2v_inst4|z[1]~20_combout\ & \b2v_inst4|z[2]~25_combout\ & \b2v_inst4|z[3]~30_combout\ & \b2v_inst4|z[4]~35_combout\ & \b2v_inst4|z[5]~40_combout\ & \b2v_inst4|z[6]~43_combout\ & \b2v_inst4|z[7]~46_combout\ & \b2v_inst4|z[8]~95_combout\ & 
\b2v_inst4|z[9]~90_combout\ & \b2v_inst4|z[10]~93_combout\ & \b2v_inst4|z[11]~85_combout\ & \b2v_inst4|z[12]~76_combout\ & \b2v_inst4|z[13]~70_combout\ & \b2v_inst4|z[14]~61_combout\ & \b2v_inst4|z[15]~99_combout\);

\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\b2v_inst3|temp_IR\(7) & \b2v_inst3|temp_IR[6]~DUPLICATE_q\ & \b2v_inst3|temp_IR[5]~DUPLICATE_q\ & \b2v_inst3|temp_IR[4]~DUPLICATE_q\);

\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(7) & \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(6) & 
\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(5) & \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(4));

\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a0~portbdataout\ <= \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a1\ <= \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a2\ <= \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a3\ <= \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a4\ <= \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a5\ <= \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a6\ <= \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a7\ <= \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a8\ <= \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a9\ <= \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a10\ <= \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a11\ <= \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a12\ <= \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a13\ <= \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a14\ <= \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a15\ <= \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);

\b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\);

\b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ <= (\b2v_inst3|IR_Op[1]~1_combout\ & \b2v_inst3|IR_Op[0]~0_combout\);

\b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\b2v_inst5|address_a_temp\(11) & \b2v_inst5|address_a_temp\(10) & \b2v_inst5|address_a_temp\(9) & \b2v_inst5|address_a_temp\(8) & 
\b2v_inst5|address_a_temp\(7) & \b2v_inst5|address_a_temp\(6) & \b2v_inst5|address_a_temp\(5) & \b2v_inst5|address_a_temp\(4) & \b2v_inst5|address_a_temp\(3) & \b2v_inst5|address_a_temp\(2) & \b2v_inst5|address_a_temp\(1) & 
\b2v_inst5|address_a_temp\(0));

\b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\b2v_inst5|Add0~37_sumout\ & \b2v_inst5|Add0~33_sumout\ & \b2v_inst5|Add0~29_sumout\ & \b2v_inst5|Add0~25_sumout\ & \b2v_inst5|Add0~21_sumout\ & 
\b2v_inst5|Add0~17_sumout\ & \b2v_inst5|Add0~13_sumout\ & \b2v_inst5|Add0~9_sumout\ & \b2v_inst5|Add0~5_sumout\ & \b2v_inst5|Add0~1_sumout\ & \b2v_inst5|address_b_temp\(1) & \b2v_inst5|address_b_temp\(0));

\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(0) <= \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(1) <= \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);

\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(0) <= \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(1) <= \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);

\b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\);

\b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAIN_bus\ <= (\b2v_inst3|IR_Op[3]~3_combout\ & \b2v_inst3|IR_Op[2]~2_combout\);

\b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\b2v_inst5|address_a_temp\(11) & \b2v_inst5|address_a_temp\(10) & \b2v_inst5|address_a_temp\(9) & \b2v_inst5|address_a_temp\(8) & 
\b2v_inst5|address_a_temp\(7) & \b2v_inst5|address_a_temp\(6) & \b2v_inst5|address_a_temp\(5) & \b2v_inst5|address_a_temp\(4) & \b2v_inst5|address_a_temp\(3) & \b2v_inst5|address_a_temp\(2) & \b2v_inst5|address_a_temp\(1) & 
\b2v_inst5|address_a_temp\(0));

\b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\b2v_inst5|Add0~37_sumout\ & \b2v_inst5|Add0~33_sumout\ & \b2v_inst5|Add0~29_sumout\ & \b2v_inst5|Add0~25_sumout\ & \b2v_inst5|Add0~21_sumout\ & 
\b2v_inst5|Add0~17_sumout\ & \b2v_inst5|Add0~13_sumout\ & \b2v_inst5|Add0~9_sumout\ & \b2v_inst5|Add0~5_sumout\ & \b2v_inst5|Add0~1_sumout\ & \b2v_inst5|address_b_temp\(1) & \b2v_inst5|address_b_temp\(0));

\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(2) <= \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(3) <= \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(1);

\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(2) <= \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(3) <= \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(1);

\b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\);

\b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAIN_bus\ <= (\b2v_inst3|IR_Op[9]~12_combout\ & \b2v_inst3|IR_Op[8]~14_combout\);

\b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\b2v_inst5|address_a_temp\(11) & \b2v_inst5|address_a_temp\(10) & \b2v_inst5|address_a_temp\(9) & \b2v_inst5|address_a_temp\(8) & 
\b2v_inst5|address_a_temp\(7) & \b2v_inst5|address_a_temp\(6) & \b2v_inst5|address_a_temp\(5) & \b2v_inst5|address_a_temp\(4) & \b2v_inst5|address_a_temp\(3) & \b2v_inst5|address_a_temp\(2) & \b2v_inst5|address_a_temp\(1) & 
\b2v_inst5|address_a_temp\(0));

\b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\b2v_inst5|Add0~37_sumout\ & \b2v_inst5|Add0~33_sumout\ & \b2v_inst5|Add0~29_sumout\ & \b2v_inst5|Add0~25_sumout\ & \b2v_inst5|Add0~21_sumout\ & 
\b2v_inst5|Add0~17_sumout\ & \b2v_inst5|Add0~13_sumout\ & \b2v_inst5|Add0~9_sumout\ & \b2v_inst5|Add0~5_sumout\ & \b2v_inst5|Add0~1_sumout\ & \b2v_inst5|address_b_temp\(1) & \b2v_inst5|address_b_temp\(0));

\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(8) <= \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(9) <= \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(1);

\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(8) <= \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(9) <= \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(1);

\b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\);

\b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAIN_bus\ <= (\b2v_inst3|IR_Op[12]~10_combout\ & \b2v_inst3|IR_Op[10]~13_combout\);

\b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\b2v_inst5|address_a_temp\(11) & \b2v_inst5|address_a_temp\(10) & \b2v_inst5|address_a_temp\(9) & \b2v_inst5|address_a_temp\(8) & 
\b2v_inst5|address_a_temp\(7) & \b2v_inst5|address_a_temp\(6) & \b2v_inst5|address_a_temp\(5) & \b2v_inst5|address_a_temp\(4) & \b2v_inst5|address_a_temp\(3) & \b2v_inst5|address_a_temp\(2) & \b2v_inst5|address_a_temp\(1) & 
\b2v_inst5|address_a_temp\(0));

\b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\b2v_inst5|Add0~37_sumout\ & \b2v_inst5|Add0~33_sumout\ & \b2v_inst5|Add0~29_sumout\ & \b2v_inst5|Add0~25_sumout\ & \b2v_inst5|Add0~21_sumout\ & 
\b2v_inst5|Add0~17_sumout\ & \b2v_inst5|Add0~13_sumout\ & \b2v_inst5|Add0~9_sumout\ & \b2v_inst5|Add0~5_sumout\ & \b2v_inst5|Add0~1_sumout\ & \b2v_inst5|address_b_temp\(1) & \b2v_inst5|address_b_temp\(0));

\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(10) <= \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(12) <= \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(1);

\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(10) <= \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(12) <= \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(1);

\b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\);

\b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAIN_bus\ <= (\b2v_inst3|IR_Op[13]~9_combout\ & \b2v_inst3|IR_Op[11]~11_combout\);

\b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\b2v_inst5|address_a_temp\(11) & \b2v_inst5|address_a_temp\(10) & \b2v_inst5|address_a_temp\(9) & \b2v_inst5|address_a_temp\(8) & 
\b2v_inst5|address_a_temp\(7) & \b2v_inst5|address_a_temp\(6) & \b2v_inst5|address_a_temp\(5) & \b2v_inst5|address_a_temp\(4) & \b2v_inst5|address_a_temp\(3) & \b2v_inst5|address_a_temp\(2) & \b2v_inst5|address_a_temp\(1) & 
\b2v_inst5|address_a_temp\(0));

\b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\b2v_inst5|Add0~37_sumout\ & \b2v_inst5|Add0~33_sumout\ & \b2v_inst5|Add0~29_sumout\ & \b2v_inst5|Add0~25_sumout\ & \b2v_inst5|Add0~21_sumout\ & 
\b2v_inst5|Add0~17_sumout\ & \b2v_inst5|Add0~13_sumout\ & \b2v_inst5|Add0~9_sumout\ & \b2v_inst5|Add0~5_sumout\ & \b2v_inst5|Add0~1_sumout\ & \b2v_inst5|address_b_temp\(1) & \b2v_inst5|address_b_temp\(0));

\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(11) <= \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(13) <= \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(1);

\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(11) <= \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(13) <= \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(1);

\b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\);

\b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAIN_bus\ <= (\b2v_inst3|IR_Op[15]~15_combout\ & \b2v_inst3|IR_Op[14]~8_combout\);

\b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\b2v_inst5|address_a_temp\(11) & \b2v_inst5|address_a_temp\(10) & \b2v_inst5|address_a_temp\(9) & \b2v_inst5|address_a_temp\(8) & 
\b2v_inst5|address_a_temp\(7) & \b2v_inst5|address_a_temp\(6) & \b2v_inst5|address_a_temp\(5) & \b2v_inst5|address_a_temp\(4) & \b2v_inst5|address_a_temp\(3) & \b2v_inst5|address_a_temp\(2) & \b2v_inst5|address_a_temp\(1) & 
\b2v_inst5|address_a_temp\(0));

\b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\b2v_inst5|Add0~37_sumout\ & \b2v_inst5|Add0~33_sumout\ & \b2v_inst5|Add0~29_sumout\ & \b2v_inst5|Add0~25_sumout\ & \b2v_inst5|Add0~21_sumout\ & 
\b2v_inst5|Add0~17_sumout\ & \b2v_inst5|Add0~13_sumout\ & \b2v_inst5|Add0~9_sumout\ & \b2v_inst5|Add0~5_sumout\ & \b2v_inst5|Add0~1_sumout\ & \b2v_inst5|address_b_temp\(1) & \b2v_inst5|address_b_temp\(0));

\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(14) <= \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(15) <= \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(1);

\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(14) <= \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(15) <= \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(1);

\b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\);

\b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAIN_bus\ <= (\b2v_inst3|IR_Op[5]~5_combout\ & \b2v_inst3|IR_Op[4]~4_combout\);

\b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\b2v_inst5|address_a_temp\(11) & \b2v_inst5|address_a_temp\(10) & \b2v_inst5|address_a_temp\(9) & \b2v_inst5|address_a_temp\(8) & 
\b2v_inst5|address_a_temp\(7) & \b2v_inst5|address_a_temp\(6) & \b2v_inst5|address_a_temp\(5) & \b2v_inst5|address_a_temp\(4) & \b2v_inst5|address_a_temp\(3) & \b2v_inst5|address_a_temp\(2) & \b2v_inst5|address_a_temp\(1) & 
\b2v_inst5|address_a_temp\(0));

\b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\b2v_inst5|Add0~37_sumout\ & \b2v_inst5|Add0~33_sumout\ & \b2v_inst5|Add0~29_sumout\ & \b2v_inst5|Add0~25_sumout\ & \b2v_inst5|Add0~21_sumout\ & 
\b2v_inst5|Add0~17_sumout\ & \b2v_inst5|Add0~13_sumout\ & \b2v_inst5|Add0~9_sumout\ & \b2v_inst5|Add0~5_sumout\ & \b2v_inst5|Add0~1_sumout\ & \b2v_inst5|address_b_temp\(1) & \b2v_inst5|address_b_temp\(0));

\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(4) <= \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(5) <= \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);

\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(4) <= \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(5) <= \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(1);

\b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\);

\b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAIN_bus\ <= (\b2v_inst3|IR_Op[7]~7_combout\ & \b2v_inst3|IR_Op[6]~6_combout\);

\b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\b2v_inst5|address_a_temp\(11) & \b2v_inst5|address_a_temp\(10) & \b2v_inst5|address_a_temp\(9) & \b2v_inst5|address_a_temp\(8) & 
\b2v_inst5|address_a_temp\(7) & \b2v_inst5|address_a_temp\(6) & \b2v_inst5|address_a_temp\(5) & \b2v_inst5|address_a_temp\(4) & \b2v_inst5|address_a_temp\(3) & \b2v_inst5|address_a_temp\(2) & \b2v_inst5|address_a_temp\(1) & 
\b2v_inst5|address_a_temp\(0));

\b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\b2v_inst5|Add0~37_sumout\ & \b2v_inst5|Add0~33_sumout\ & \b2v_inst5|Add0~29_sumout\ & \b2v_inst5|Add0~25_sumout\ & \b2v_inst5|Add0~21_sumout\ & 
\b2v_inst5|Add0~17_sumout\ & \b2v_inst5|Add0~13_sumout\ & \b2v_inst5|Add0~9_sumout\ & \b2v_inst5|Add0~5_sumout\ & \b2v_inst5|Add0~1_sumout\ & \b2v_inst5|address_b_temp\(1) & \b2v_inst5|address_b_temp\(0));

\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(6) <= \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(7) <= \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(1);

\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(6) <= \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(7) <= \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(1);
\b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a14\ <= NOT \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a14\;
\b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a15\ <= NOT \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a15\;
\b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a0~portbdataout\ <= NOT \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a0~portbdataout\;
\b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a1\ <= NOT \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a1\;
\b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a2\ <= NOT \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a2\;
\b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a3\ <= NOT \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a3\;
\b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a4\ <= NOT \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a4\;
\b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a5\ <= NOT \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a5\;
\b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a6\ <= NOT \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a6\;
\b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a7\ <= NOT \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a7\;
\b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a8\ <= NOT \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a8\;
\b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a9\ <= NOT \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a9\;
\b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a10\ <= NOT \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a10\;
\b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a11\ <= NOT \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a11\;
\b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a12\ <= NOT \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a12\;
\b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a13\ <= NOT \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a13\;
\b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a14\ <= NOT \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a14\;
\b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a15\ <= NOT \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a15\;
\b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\ <= NOT \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a0~portbdataout\;
\b2v_inst3|ALT_INV_temp_IR[6]~DUPLICATE_q\ <= NOT \b2v_inst3|temp_IR[6]~DUPLICATE_q\;
\b2v_inst3|ALT_INV_temp_IR[4]~DUPLICATE_q\ <= NOT \b2v_inst3|temp_IR[4]~DUPLICATE_q\;
\ALT_INV_CLOCK_50~inputCLKENA0_outclk\ <= NOT \CLOCK_50~inputCLKENA0_outclk\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\b2v_inst|ALT_INV_state.T0~_wirecell_combout\ <= NOT \b2v_inst|state.T0~_wirecell_combout\;
\b2v_inst5|ALT_INV_address_b_temp\(11) <= NOT \b2v_inst5|address_b_temp\(11);
\b2v_inst5|ALT_INV_address_b_temp\(10) <= NOT \b2v_inst5|address_b_temp\(10);
\b2v_inst5|ALT_INV_address_b_temp\(9) <= NOT \b2v_inst5|address_b_temp\(9);
\b2v_inst5|ALT_INV_address_b_temp\(8) <= NOT \b2v_inst5|address_b_temp\(8);
\b2v_inst5|ALT_INV_address_b_temp\(7) <= NOT \b2v_inst5|address_b_temp\(7);
\b2v_inst5|ALT_INV_address_b_temp\(6) <= NOT \b2v_inst5|address_b_temp\(6);
\b2v_inst5|ALT_INV_address_b_temp\(5) <= NOT \b2v_inst5|address_b_temp\(5);
\b2v_inst5|ALT_INV_address_b_temp\(4) <= NOT \b2v_inst5|address_b_temp\(4);
\b2v_inst5|ALT_INV_address_b_temp\(3) <= NOT \b2v_inst5|address_b_temp\(3);
\b2v_inst5|ALT_INV_address_b_temp\(2) <= NOT \b2v_inst5|address_b_temp\(2);
\b2v_inst|ALT_INV_pc_mux_select\(0) <= NOT \b2v_inst|pc_mux_select\(0);
\b2v_inst|ALT_INV_pc_mux_select\(1) <= NOT \b2v_inst|pc_mux_select\(1);
\b2v_inst5|ALT_INV_address_b_temp\(1) <= NOT \b2v_inst5|address_b_temp\(1);
\b2v_inst5|ALT_INV_address_b_temp\(0) <= NOT \b2v_inst5|address_b_temp\(0);
\b2v_inst5|ALT_INV_address_a_temp\(11) <= NOT \b2v_inst5|address_a_temp\(11);
\b2v_inst5|ALT_INV_address_a_temp\(10) <= NOT \b2v_inst5|address_a_temp\(10);
\b2v_inst5|ALT_INV_address_a_temp\(9) <= NOT \b2v_inst5|address_a_temp\(9);
\b2v_inst5|ALT_INV_address_a_temp\(8) <= NOT \b2v_inst5|address_a_temp\(8);
\b2v_inst5|ALT_INV_address_a_temp\(7) <= NOT \b2v_inst5|address_a_temp\(7);
\b2v_inst5|ALT_INV_address_a_temp\(6) <= NOT \b2v_inst5|address_a_temp\(6);
\b2v_inst5|ALT_INV_address_a_temp\(5) <= NOT \b2v_inst5|address_a_temp\(5);
\b2v_inst5|ALT_INV_address_a_temp\(4) <= NOT \b2v_inst5|address_a_temp\(4);
\b2v_inst5|ALT_INV_address_a_temp\(3) <= NOT \b2v_inst5|address_a_temp\(3);
\b2v_inst5|ALT_INV_address_a_temp\(2) <= NOT \b2v_inst5|address_a_temp\(2);
\b2v_inst5|ALT_INV_address_a_temp\(1) <= NOT \b2v_inst5|address_a_temp\(1);
\b2v_inst5|ALT_INV_address_a_temp\(0) <= NOT \b2v_inst5|address_a_temp\(0);
\b2v_inst4|ALT_INV_z[0]~104_combout\ <= NOT \b2v_inst4|z[0]~104_combout\;
\b2v_inst4|ALT_INV_z[15]~103_combout\ <= NOT \b2v_inst4|z[15]~103_combout\;
\b2v_inst4|ALT_INV_z[15]~102_combout\ <= NOT \b2v_inst4|z[15]~102_combout\;
\b2v_inst4|ALT_INV_z[15]~101_combout\ <= NOT \b2v_inst4|z[15]~101_combout\;
\b2v_inst4|ALT_INV_z[15]~100_combout\ <= NOT \b2v_inst4|z[15]~100_combout\;
\b2v_inst5|ALT_INV_temp_address[11]~15_combout\ <= NOT \b2v_inst5|temp_address[11]~15_combout\;
\b2v_inst5|ALT_INV_temp_address[10]~14_combout\ <= NOT \b2v_inst5|temp_address[10]~14_combout\;
\b2v_inst5|ALT_INV_temp_address[9]~13_combout\ <= NOT \b2v_inst5|temp_address[9]~13_combout\;
\b2v_inst5|ALT_INV_temp_address[8]~12_combout\ <= NOT \b2v_inst5|temp_address[8]~12_combout\;
\b2v_inst5|ALT_INV_temp_address[7]~11_combout\ <= NOT \b2v_inst5|temp_address[7]~11_combout\;
\b2v_inst5|ALT_INV_temp_address[6]~10_combout\ <= NOT \b2v_inst5|temp_address[6]~10_combout\;
\b2v_inst5|ALT_INV_temp_address[5]~9_combout\ <= NOT \b2v_inst5|temp_address[5]~9_combout\;
\b2v_inst5|ALT_INV_temp_address[4]~8_combout\ <= NOT \b2v_inst5|temp_address[4]~8_combout\;
\b2v_inst5|ALT_INV_temp_address[3]~7_combout\ <= NOT \b2v_inst5|temp_address[3]~7_combout\;
\b2v_inst5|ALT_INV_temp_address[2]~6_combout\ <= NOT \b2v_inst5|temp_address[2]~6_combout\;
\b2v_inst|ALT_INV_Selector1~2_combout\ <= NOT \b2v_inst|Selector1~2_combout\;
\b2v_inst|ALT_INV_Selector2~0_combout\ <= NOT \b2v_inst|Selector2~0_combout\;
\b2v_inst5|ALT_INV_temp_address[1]~5_combout\ <= NOT \b2v_inst5|temp_address[1]~5_combout\;
\b2v_inst5|ALT_INV_temp_address[0]~4_combout\ <= NOT \b2v_inst5|temp_address[0]~4_combout\;
\b2v_inst5|ALT_INV_temp_address[9]~3_combout\ <= NOT \b2v_inst5|temp_address[9]~3_combout\;
\b2v_inst2|ALT_INV_pc_temp~24_combout\ <= NOT \b2v_inst2|pc_temp~24_combout\;
\b2v_inst2|ALT_INV_pc_temp~23_combout\ <= NOT \b2v_inst2|pc_temp~23_combout\;
\b2v_inst2|ALT_INV_pc_reg\(11) <= NOT \b2v_inst2|pc_reg\(11);
\b2v_inst2|ALT_INV_pc_temp~22_combout\ <= NOT \b2v_inst2|pc_temp~22_combout\;
\b2v_inst2|ALT_INV_pc_temp~21_combout\ <= NOT \b2v_inst2|pc_temp~21_combout\;
\b2v_inst2|ALT_INV_pc_reg\(10) <= NOT \b2v_inst2|pc_reg\(10);
\b2v_inst2|ALT_INV_pc_temp~20_combout\ <= NOT \b2v_inst2|pc_temp~20_combout\;
\b2v_inst2|ALT_INV_pc_temp~19_combout\ <= NOT \b2v_inst2|pc_temp~19_combout\;
\b2v_inst2|ALT_INV_pc_reg\(9) <= NOT \b2v_inst2|pc_reg\(9);
\b2v_inst2|ALT_INV_pc_temp~18_combout\ <= NOT \b2v_inst2|pc_temp~18_combout\;
\b2v_inst2|ALT_INV_pc_temp~17_combout\ <= NOT \b2v_inst2|pc_temp~17_combout\;
\b2v_inst2|ALT_INV_pc_reg\(8) <= NOT \b2v_inst2|pc_reg\(8);
\b2v_inst2|ALT_INV_pc_temp~16_combout\ <= NOT \b2v_inst2|pc_temp~16_combout\;
\b2v_inst2|ALT_INV_pc_temp~15_combout\ <= NOT \b2v_inst2|pc_temp~15_combout\;
\b2v_inst2|ALT_INV_pc_reg\(7) <= NOT \b2v_inst2|pc_reg\(7);
\b2v_inst2|ALT_INV_pc_temp~14_combout\ <= NOT \b2v_inst2|pc_temp~14_combout\;
\b2v_inst2|ALT_INV_pc_temp~13_combout\ <= NOT \b2v_inst2|pc_temp~13_combout\;
\b2v_inst2|ALT_INV_pc_reg\(6) <= NOT \b2v_inst2|pc_reg\(6);
\b2v_inst2|ALT_INV_pc_temp~12_combout\ <= NOT \b2v_inst2|pc_temp~12_combout\;
\b2v_inst2|ALT_INV_pc_temp~11_combout\ <= NOT \b2v_inst2|pc_temp~11_combout\;
\b2v_inst2|ALT_INV_pc_reg\(5) <= NOT \b2v_inst2|pc_reg\(5);
\b2v_inst2|ALT_INV_pc_temp~10_combout\ <= NOT \b2v_inst2|pc_temp~10_combout\;
\b2v_inst2|ALT_INV_pc_temp~9_combout\ <= NOT \b2v_inst2|pc_temp~9_combout\;
\b2v_inst2|ALT_INV_pc_reg\(4) <= NOT \b2v_inst2|pc_reg\(4);
\b2v_inst2|ALT_INV_pc_temp~8_combout\ <= NOT \b2v_inst2|pc_temp~8_combout\;
\b2v_inst2|ALT_INV_pc_temp~7_combout\ <= NOT \b2v_inst2|pc_temp~7_combout\;
\b2v_inst2|ALT_INV_pc_reg\(3) <= NOT \b2v_inst2|pc_reg\(3);
\b2v_inst2|ALT_INV_pc_temp~6_combout\ <= NOT \b2v_inst2|pc_temp~6_combout\;
\b2v_inst2|ALT_INV_pc_temp~5_combout\ <= NOT \b2v_inst2|pc_temp~5_combout\;
\b2v_inst2|ALT_INV_pc_reg\(2) <= NOT \b2v_inst2|pc_reg\(2);
\b2v_inst2|ALT_INV_pc_temp~4_combout\ <= NOT \b2v_inst2|pc_temp~4_combout\;
\b2v_inst2|ALT_INV_pc_temp~3_combout\ <= NOT \b2v_inst2|pc_temp~3_combout\;
\b2v_inst2|ALT_INV_pc_reg\(1) <= NOT \b2v_inst2|pc_reg\(1);
\b2v_inst5|ALT_INV_temp_address[9]~2_combout\ <= NOT \b2v_inst5|temp_address[9]~2_combout\;
\b2v_inst2|ALT_INV_pc_temp~2_combout\ <= NOT \b2v_inst2|pc_temp~2_combout\;
\b2v_inst2|ALT_INV_pc_temp~1_combout\ <= NOT \b2v_inst2|pc_temp~1_combout\;
\b2v_inst2|ALT_INV_pc_temp~0_combout\ <= NOT \b2v_inst2|pc_temp~0_combout\;
\b2v_inst|ALT_INV_Selector3~0_combout\ <= NOT \b2v_inst|Selector3~0_combout\;
\b2v_inst2|ALT_INV_pc_reg\(0) <= NOT \b2v_inst2|pc_reg\(0);
\b2v_inst|ALT_INV_resetprocessor:count[1]~q\ <= NOT \b2v_inst|resetprocessor:count[1]~q\;
\b2v_inst|ALT_INV_resetprocessor:count[0]~q\ <= NOT \b2v_inst|resetprocessor:count[0]~q\;
\b2v_inst|ALT_INV_ALU_Opcode[0]~1_combout\ <= NOT \b2v_inst|ALU_Opcode[0]~1_combout\;
\b2v_inst4|ALT_INV_regs[10][15]~0_combout\ <= NOT \b2v_inst4|regs[10][15]~0_combout\;
\b2v_inst|ALT_INV_state.Test2~q\ <= NOT \b2v_inst|state.Test2~q\;
\b2v_inst|ALT_INV_state.Test~q\ <= NOT \b2v_inst|state.Test~q\;
\b2v_inst4|ALT_INV_z[15]~98_combout\ <= NOT \b2v_inst4|z[15]~98_combout\;
\b2v_inst4|ALT_INV_z[15]~97_combout\ <= NOT \b2v_inst4|z[15]~97_combout\;
\b2v_inst4|ALT_INV_z[15]~96_combout\ <= NOT \b2v_inst4|z[15]~96_combout\;
\b2v_inst7|ALT_INV_ALU_in2[15]~15_combout\ <= NOT \b2v_inst7|ALU_in2[15]~15_combout\;
\b2v_inst7|ALT_INV_ALU_in1[15]~15_combout\ <= NOT \b2v_inst7|ALU_in1[15]~15_combout\;
\b2v_inst4|ALT_INV_regs[10][15]~q\ <= NOT \b2v_inst4|regs[10][15]~q\;
\b2v_inst3|ALT_INV_IR_Op[15]~15_combout\ <= NOT \b2v_inst3|IR_Op[15]~15_combout\;
\b2v_inst4|ALT_INV_z[8]~94_combout\ <= NOT \b2v_inst4|z[8]~94_combout\;
\b2v_inst4|ALT_INV_Mux16~18_combout\ <= NOT \b2v_inst4|Mux16~18_combout\;
\b2v_inst7|ALT_INV_ALU_in2[8]~14_combout\ <= NOT \b2v_inst7|ALU_in2[8]~14_combout\;
\b2v_inst7|ALT_INV_ALU_in1[8]~14_combout\ <= NOT \b2v_inst7|ALU_in1[8]~14_combout\;
\b2v_inst4|ALT_INV_regs[10][8]~q\ <= NOT \b2v_inst4|regs[10][8]~q\;
\b2v_inst4|ALT_INV_Mux0~18_combout\ <= NOT \b2v_inst4|Mux0~18_combout\;
\b2v_inst3|ALT_INV_IR_Op[8]~14_combout\ <= NOT \b2v_inst3|IR_Op[8]~14_combout\;
\b2v_inst4|ALT_INV_z[10]~92_combout\ <= NOT \b2v_inst4|z[10]~92_combout\;
\b2v_inst7|ALT_INV_ALU_in2[10]~13_combout\ <= NOT \b2v_inst7|ALU_in2[10]~13_combout\;
\b2v_inst7|ALT_INV_ALU_in1[10]~13_combout\ <= NOT \b2v_inst7|ALU_in1[10]~13_combout\;
\b2v_inst4|ALT_INV_regs[10][10]~q\ <= NOT \b2v_inst4|regs[10][10]~q\;
\b2v_inst3|ALT_INV_IR_Op[10]~13_combout\ <= NOT \b2v_inst3|IR_Op[10]~13_combout\;
\b2v_inst4|ALT_INV_z[15]~91_combout\ <= NOT \b2v_inst4|z[15]~91_combout\;
\b2v_inst4|ALT_INV_z[9]~89_combout\ <= NOT \b2v_inst4|z[9]~89_combout\;
\b2v_inst4|ALT_INV_z[9]~88_combout\ <= NOT \b2v_inst4|z[9]~88_combout\;
\b2v_inst4|ALT_INV_z[9]~87_combout\ <= NOT \b2v_inst4|z[9]~87_combout\;
\b2v_inst4|ALT_INV_z[9]~86_combout\ <= NOT \b2v_inst4|z[9]~86_combout\;
\b2v_inst7|ALT_INV_ALU_in2[9]~12_combout\ <= NOT \b2v_inst7|ALU_in2[9]~12_combout\;
\b2v_inst7|ALT_INV_ALU_in1[9]~12_combout\ <= NOT \b2v_inst7|ALU_in1[9]~12_combout\;
\b2v_inst4|ALT_INV_regs[10][9]~q\ <= NOT \b2v_inst4|regs[10][9]~q\;
\b2v_inst3|ALT_INV_IR_Op[9]~12_combout\ <= NOT \b2v_inst3|IR_Op[9]~12_combout\;
\b2v_inst4|ALT_INV_z[11]~84_combout\ <= NOT \b2v_inst4|z[11]~84_combout\;
\b2v_inst4|ALT_INV_z[11]~83_combout\ <= NOT \b2v_inst4|z[11]~83_combout\;
\b2v_inst4|ALT_INV_z[11]~82_combout\ <= NOT \b2v_inst4|z[11]~82_combout\;
\b2v_inst4|ALT_INV_z[11]~81_combout\ <= NOT \b2v_inst4|z[11]~81_combout\;
\b2v_inst4|ALT_INV_z[11]~80_combout\ <= NOT \b2v_inst4|z[11]~80_combout\;
\b2v_inst7|ALT_INV_ALU_in2[11]~11_combout\ <= NOT \b2v_inst7|ALU_in2[11]~11_combout\;
\b2v_inst7|ALT_INV_ALU_in1[11]~11_combout\ <= NOT \b2v_inst7|ALU_in1[11]~11_combout\;
\b2v_inst4|ALT_INV_regs[10][11]~q\ <= NOT \b2v_inst4|regs[10][11]~q\;
\b2v_inst4|ALT_INV_z[11]~79_combout\ <= NOT \b2v_inst4|z[11]~79_combout\;
\b2v_inst4|ALT_INV_z[11]~78_combout\ <= NOT \b2v_inst4|z[11]~78_combout\;
\b2v_inst4|ALT_INV_z[11]~77_combout\ <= NOT \b2v_inst4|z[11]~77_combout\;
\b2v_inst3|ALT_INV_IR_Op[11]~11_combout\ <= NOT \b2v_inst3|IR_Op[11]~11_combout\;
\b2v_inst4|ALT_INV_z[12]~75_combout\ <= NOT \b2v_inst4|z[12]~75_combout\;
\b2v_inst4|ALT_INV_z[12]~74_combout\ <= NOT \b2v_inst4|z[12]~74_combout\;
\b2v_inst7|ALT_INV_ALU_in2[12]~10_combout\ <= NOT \b2v_inst7|ALU_in2[12]~10_combout\;
\b2v_inst7|ALT_INV_ALU_in1[12]~10_combout\ <= NOT \b2v_inst7|ALU_in1[12]~10_combout\;
\b2v_inst4|ALT_INV_regs[10][12]~q\ <= NOT \b2v_inst4|regs[10][12]~q\;
\b2v_inst4|ALT_INV_z[9]~73_combout\ <= NOT \b2v_inst4|z[9]~73_combout\;
\b2v_inst4|ALT_INV_z[12]~72_combout\ <= NOT \b2v_inst4|z[12]~72_combout\;
\b2v_inst3|ALT_INV_IR_Op[12]~10_combout\ <= NOT \b2v_inst3|IR_Op[12]~10_combout\;
\b2v_inst4|ALT_INV_z[15]~71_combout\ <= NOT \b2v_inst4|z[15]~71_combout\;
\b2v_inst4|ALT_INV_z[13]~69_combout\ <= NOT \b2v_inst4|z[13]~69_combout\;
\b2v_inst4|ALT_INV_z[13]~68_combout\ <= NOT \b2v_inst4|z[13]~68_combout\;
\b2v_inst4|ALT_INV_z[13]~67_combout\ <= NOT \b2v_inst4|z[13]~67_combout\;
\b2v_inst4|ALT_INV_z[13]~66_combout\ <= NOT \b2v_inst4|z[13]~66_combout\;
\b2v_inst4|ALT_INV_z[13]~65_combout\ <= NOT \b2v_inst4|z[13]~65_combout\;
\b2v_inst7|ALT_INV_ALU_in2[13]~9_combout\ <= NOT \b2v_inst7|ALU_in2[13]~9_combout\;
\b2v_inst7|ALT_INV_ALU_in1[13]~9_combout\ <= NOT \b2v_inst7|ALU_in1[13]~9_combout\;
\b2v_inst4|ALT_INV_regs[10][13]~q\ <= NOT \b2v_inst4|regs[10][13]~q\;
\b2v_inst4|ALT_INV_z[13]~64_combout\ <= NOT \b2v_inst4|z[13]~64_combout\;
\b2v_inst4|ALT_INV_z[13]~63_combout\ <= NOT \b2v_inst4|z[13]~63_combout\;
\b2v_inst4|ALT_INV_z[13]~62_combout\ <= NOT \b2v_inst4|z[13]~62_combout\;
\b2v_inst3|ALT_INV_IR_Op[13]~9_combout\ <= NOT \b2v_inst3|IR_Op[13]~9_combout\;
\b2v_inst4|ALT_INV_z[14]~60_combout\ <= NOT \b2v_inst4|z[14]~60_combout\;
\b2v_inst4|ALT_INV_z[14]~59_combout\ <= NOT \b2v_inst4|z[14]~59_combout\;
\b2v_inst4|ALT_INV_z[14]~58_combout\ <= NOT \b2v_inst4|z[14]~58_combout\;
\b2v_inst4|ALT_INV_z[15]~57_combout\ <= NOT \b2v_inst4|z[15]~57_combout\;
\b2v_inst4|ALT_INV_z[14]~56_combout\ <= NOT \b2v_inst4|z[14]~56_combout\;
\b2v_inst4|ALT_INV_z[14]~55_combout\ <= NOT \b2v_inst4|z[14]~55_combout\;
\b2v_inst7|ALT_INV_ALU_in2[14]~8_combout\ <= NOT \b2v_inst7|ALU_in2[14]~8_combout\;
\b2v_inst7|ALT_INV_ALU_in1[14]~8_combout\ <= NOT \b2v_inst7|ALU_in1[14]~8_combout\;
\b2v_inst4|ALT_INV_regs[10][14]~q\ <= NOT \b2v_inst4|regs[10][14]~q\;
\b2v_inst4|ALT_INV_z[14]~54_combout\ <= NOT \b2v_inst4|z[14]~54_combout\;
\b2v_inst4|ALT_INV_z[10]~53_combout\ <= NOT \b2v_inst4|z[10]~53_combout\;
\b2v_inst4|ALT_INV_z[14]~52_combout\ <= NOT \b2v_inst4|z[14]~52_combout\;
\b2v_inst4|ALT_INV_z[14]~51_combout\ <= NOT \b2v_inst4|z[14]~51_combout\;
\b2v_inst3|ALT_INV_IR_Op[14]~8_combout\ <= NOT \b2v_inst3|IR_Op[14]~8_combout\;
\b2v_inst4|ALT_INV_z[14]~50_combout\ <= NOT \b2v_inst4|z[14]~50_combout\;
\b2v_inst4|ALT_INV_z[14]~49_combout\ <= NOT \b2v_inst4|z[14]~49_combout\;
\b2v_inst4|ALT_INV_z[14]~48_combout\ <= NOT \b2v_inst4|z[14]~48_combout\;
\b2v_inst4|ALT_INV_z[14]~47_combout\ <= NOT \b2v_inst4|z[14]~47_combout\;
\b2v_inst4|ALT_INV_z[7]~45_combout\ <= NOT \b2v_inst4|z[7]~45_combout\;
\signal_registers|ALT_INV_SIP_reg\(7) <= NOT \signal_registers|SIP_reg\(7);
\b2v_inst4|ALT_INV_z[7]~44_combout\ <= NOT \b2v_inst4|z[7]~44_combout\;
\b2v_inst7|ALT_INV_ALU_in2[7]~7_combout\ <= NOT \b2v_inst7|ALU_in2[7]~7_combout\;
\b2v_inst7|ALT_INV_ALU_in1[7]~7_combout\ <= NOT \b2v_inst7|ALU_in1[7]~7_combout\;
\b2v_inst4|ALT_INV_regs[10][7]~q\ <= NOT \b2v_inst4|regs[10][7]~q\;
\b2v_inst3|ALT_INV_IR_Op[7]~7_combout\ <= NOT \b2v_inst3|IR_Op[7]~7_combout\;
\b2v_inst4|ALT_INV_z[6]~42_combout\ <= NOT \b2v_inst4|z[6]~42_combout\;
\signal_registers|ALT_INV_SIP_reg\(6) <= NOT \signal_registers|SIP_reg\(6);
\b2v_inst4|ALT_INV_z[6]~41_combout\ <= NOT \b2v_inst4|z[6]~41_combout\;
\b2v_inst7|ALT_INV_ALU_in2[6]~6_combout\ <= NOT \b2v_inst7|ALU_in2[6]~6_combout\;
\b2v_inst7|ALT_INV_ALU_in1[6]~6_combout\ <= NOT \b2v_inst7|ALU_in1[6]~6_combout\;
\b2v_inst4|ALT_INV_regs[10][6]~q\ <= NOT \b2v_inst4|regs[10][6]~q\;
\b2v_inst3|ALT_INV_IR_Op[6]~6_combout\ <= NOT \b2v_inst3|IR_Op[6]~6_combout\;
\b2v_inst4|ALT_INV_z[5]~39_combout\ <= NOT \b2v_inst4|z[5]~39_combout\;
\signal_registers|ALT_INV_SIP_reg\(5) <= NOT \signal_registers|SIP_reg\(5);
\b2v_inst4|ALT_INV_z[5]~38_combout\ <= NOT \b2v_inst4|z[5]~38_combout\;
\b2v_inst4|ALT_INV_z[5]~37_combout\ <= NOT \b2v_inst4|z[5]~37_combout\;
\b2v_inst4|ALT_INV_z[5]~36_combout\ <= NOT \b2v_inst4|z[5]~36_combout\;
\b2v_inst7|ALT_INV_ALU_in1[5]~5_combout\ <= NOT \b2v_inst7|ALU_in1[5]~5_combout\;
\b2v_inst4|ALT_INV_regs[10][5]~q\ <= NOT \b2v_inst4|regs[10][5]~q\;
\b2v_inst3|ALT_INV_IR_Op[5]~5_combout\ <= NOT \b2v_inst3|IR_Op[5]~5_combout\;
\b2v_inst7|ALT_INV_ALU_in2[5]~5_combout\ <= NOT \b2v_inst7|ALU_in2[5]~5_combout\;
\b2v_inst4|ALT_INV_z[4]~34_combout\ <= NOT \b2v_inst4|z[4]~34_combout\;
\signal_registers|ALT_INV_SIP_reg\(4) <= NOT \signal_registers|SIP_reg\(4);
\b2v_inst4|ALT_INV_z[4]~33_combout\ <= NOT \b2v_inst4|z[4]~33_combout\;
\b2v_inst4|ALT_INV_z[4]~32_combout\ <= NOT \b2v_inst4|z[4]~32_combout\;
\b2v_inst4|ALT_INV_z[4]~31_combout\ <= NOT \b2v_inst4|z[4]~31_combout\;
\b2v_inst7|ALT_INV_ALU_in1[4]~4_combout\ <= NOT \b2v_inst7|ALU_in1[4]~4_combout\;
\b2v_inst4|ALT_INV_regs[10][4]~q\ <= NOT \b2v_inst4|regs[10][4]~q\;
\b2v_inst3|ALT_INV_IR_Op[4]~4_combout\ <= NOT \b2v_inst3|IR_Op[4]~4_combout\;
\b2v_inst7|ALT_INV_ALU_in2[4]~4_combout\ <= NOT \b2v_inst7|ALU_in2[4]~4_combout\;
\b2v_inst4|ALT_INV_z[3]~29_combout\ <= NOT \b2v_inst4|z[3]~29_combout\;
\signal_registers|ALT_INV_SIP_reg\(3) <= NOT \signal_registers|SIP_reg\(3);
\b2v_inst4|ALT_INV_z[3]~28_combout\ <= NOT \b2v_inst4|z[3]~28_combout\;
\b2v_inst4|ALT_INV_z[3]~27_combout\ <= NOT \b2v_inst4|z[3]~27_combout\;
\b2v_inst4|ALT_INV_z[3]~26_combout\ <= NOT \b2v_inst4|z[3]~26_combout\;
\b2v_inst7|ALT_INV_ALU_in1[3]~3_combout\ <= NOT \b2v_inst7|ALU_in1[3]~3_combout\;
\b2v_inst4|ALT_INV_regs[10][3]~q\ <= NOT \b2v_inst4|regs[10][3]~q\;
\b2v_inst3|ALT_INV_IR_Op[3]~3_combout\ <= NOT \b2v_inst3|IR_Op[3]~3_combout\;
\b2v_inst7|ALT_INV_ALU_in2[3]~3_combout\ <= NOT \b2v_inst7|ALU_in2[3]~3_combout\;
\b2v_inst4|ALT_INV_z[2]~24_combout\ <= NOT \b2v_inst4|z[2]~24_combout\;
\signal_registers|ALT_INV_SIP_reg\(2) <= NOT \signal_registers|SIP_reg\(2);
\b2v_inst4|ALT_INV_z[2]~23_combout\ <= NOT \b2v_inst4|z[2]~23_combout\;
\b2v_inst4|ALT_INV_z[2]~22_combout\ <= NOT \b2v_inst4|z[2]~22_combout\;
\b2v_inst4|ALT_INV_z[2]~21_combout\ <= NOT \b2v_inst4|z[2]~21_combout\;
\b2v_inst7|ALT_INV_ALU_in1[2]~2_combout\ <= NOT \b2v_inst7|ALU_in1[2]~2_combout\;
\b2v_inst4|ALT_INV_regs[10][2]~q\ <= NOT \b2v_inst4|regs[10][2]~q\;
\b2v_inst3|ALT_INV_IR_Op[2]~2_combout\ <= NOT \b2v_inst3|IR_Op[2]~2_combout\;
\b2v_inst7|ALT_INV_ALU_in2[2]~2_combout\ <= NOT \b2v_inst7|ALU_in2[2]~2_combout\;
\b2v_inst4|ALT_INV_z[1]~19_combout\ <= NOT \b2v_inst4|z[1]~19_combout\;
\signal_registers|ALT_INV_SIP_reg\(1) <= NOT \signal_registers|SIP_reg\(1);
\b2v_inst4|ALT_INV_z[1]~18_combout\ <= NOT \b2v_inst4|z[1]~18_combout\;
\b2v_inst4|ALT_INV_z[1]~17_combout\ <= NOT \b2v_inst4|z[1]~17_combout\;
\b2v_inst4|ALT_INV_z[1]~16_combout\ <= NOT \b2v_inst4|z[1]~16_combout\;
\b2v_inst4|ALT_INV_z[6]~15_combout\ <= NOT \b2v_inst4|z[6]~15_combout\;
\b2v_inst4|ALT_INV_z[6]~14_combout\ <= NOT \b2v_inst4|z[6]~14_combout\;
\b2v_inst7|ALT_INV_ALU_in1[1]~1_combout\ <= NOT \b2v_inst7|ALU_in1[1]~1_combout\;
\b2v_inst4|ALT_INV_regs[10][1]~q\ <= NOT \b2v_inst4|regs[10][1]~q\;
\b2v_inst3|ALT_INV_IR_Op[1]~1_combout\ <= NOT \b2v_inst3|IR_Op[1]~1_combout\;
\b2v_inst7|ALT_INV_ALU_in2[1]~1_combout\ <= NOT \b2v_inst7|ALU_in2[1]~1_combout\;
\b2v_inst|ALT_INV_enable_pd~q\ <= NOT \b2v_inst|enable_pd~q\;
\b2v_inst|ALT_INV_resetprocessor:flipflop~q\ <= NOT \b2v_inst|resetprocessor:flipflop~q\;
\b2v_inst3|ALT_INV_temp_IR\(7) <= NOT \b2v_inst3|temp_IR\(7);
\b2v_inst3|ALT_INV_temp_IR\(5) <= NOT \b2v_inst3|temp_IR\(5);
\b2v_inst|ALT_INV_state.T0~q\ <= NOT \b2v_inst|state.T0~q\;
\b2v_inst|ALT_INV_Selector5~2_combout\ <= NOT \b2v_inst|Selector5~2_combout\;
\b2v_inst|ALT_INV_Equal1~1_combout\ <= NOT \b2v_inst|Equal1~1_combout\;
\b2v_inst4|ALT_INV_z[0]~12_combout\ <= NOT \b2v_inst4|z[0]~12_combout\;
\b2v_inst4|ALT_INV_z[5]~11_combout\ <= NOT \b2v_inst4|z[5]~11_combout\;
\signal_registers|ALT_INV_SIP_reg\(0) <= NOT \signal_registers|SIP_reg\(0);
\b2v_inst4|ALT_INV_z[1]~10_combout\ <= NOT \b2v_inst4|z[1]~10_combout\;
\b2v_inst4|ALT_INV_z[14]~9_combout\ <= NOT \b2v_inst4|z[14]~9_combout\;
\b2v_inst9|ALT_INV_LessThan0~19_combout\ <= NOT \b2v_inst9|LessThan0~19_combout\;
\b2v_inst9|ALT_INV_LessThan0~18_combout\ <= NOT \b2v_inst9|LessThan0~18_combout\;
\b2v_inst9|ALT_INV_LessThan0~17_combout\ <= NOT \b2v_inst9|LessThan0~17_combout\;
\b2v_inst9|ALT_INV_LessThan0~16_combout\ <= NOT \b2v_inst9|LessThan0~16_combout\;
\b2v_inst|ALT_INV_Mux15~6_combout\ <= NOT \b2v_inst|Mux15~6_combout\;
\b2v_inst7|ALT_INV_ALU_in1[0]~0_combout\ <= NOT \b2v_inst7|ALU_in1[0]~0_combout\;
\b2v_inst4|ALT_INV_regs[10][0]~q\ <= NOT \b2v_inst4|regs[10][0]~q\;
\b2v_inst4|ALT_INV_z[14]~8_combout\ <= NOT \b2v_inst4|z[14]~8_combout\;
\b2v_inst4|ALT_INV_z[14]~7_combout\ <= NOT \b2v_inst4|z[14]~7_combout\;
\b2v_inst|ALT_INV_ALU_Opcode[1]~0_combout\ <= NOT \b2v_inst|ALU_Opcode[1]~0_combout\;
\b2v_inst4|ALT_INV_z[14]~6_combout\ <= NOT \b2v_inst4|z[14]~6_combout\;
\b2v_inst4|ALT_INV_z[14]~5_combout\ <= NOT \b2v_inst4|z[14]~5_combout\;
\b2v_inst|ALT_INV_Mux6~0_combout\ <= NOT \b2v_inst|Mux6~0_combout\;
\b2v_inst|ALT_INV_Equal1~0_combout\ <= NOT \b2v_inst|Equal1~0_combout\;
\b2v_inst7|ALT_INV_ALU_in2[0]~0_combout\ <= NOT \b2v_inst7|ALU_in2[0]~0_combout\;
\b2v_inst|ALT_INV_Mux2~0_combout\ <= NOT \b2v_inst|Mux2~0_combout\;
\b2v_inst3|ALT_INV_IR_Op[0]~0_combout\ <= NOT \b2v_inst3|IR_Op[0]~0_combout\;
\b2v_inst|ALT_INV_Selector4~0_combout\ <= NOT \b2v_inst|Selector4~0_combout\;
\b2v_inst|ALT_INV_Selector1~1_combout\ <= NOT \b2v_inst|Selector1~1_combout\;
\b2v_inst5|ALT_INV_temp_address[9]~1_combout\ <= NOT \b2v_inst5|temp_address[9]~1_combout\;
\b2v_inst|ALT_INV_Mux5~0_combout\ <= NOT \b2v_inst|Mux5~0_combout\;
\b2v_inst|ALT_INV_Selector5~1_combout\ <= NOT \b2v_inst|Selector5~1_combout\;
\b2v_inst|ALT_INV_state.T1~q\ <= NOT \b2v_inst|state.T1~q\;
\b2v_inst4|ALT_INV_z[5]~4_combout\ <= NOT \b2v_inst4|z[5]~4_combout\;
\b2v_inst4|ALT_INV_z[14]~3_combout\ <= NOT \b2v_inst4|z[14]~3_combout\;
\b2v_inst4|ALT_INV_z[14]~2_combout\ <= NOT \b2v_inst4|z[14]~2_combout\;
\b2v_inst4|ALT_INV_z[14]~1_combout\ <= NOT \b2v_inst4|z[14]~1_combout\;
\b2v_inst4|ALT_INV_Mux16~17_combout\ <= NOT \b2v_inst4|Mux16~17_combout\;
\b2v_inst4|ALT_INV_regs_rtl_1_bypass\(9) <= NOT \b2v_inst4|regs_rtl_1_bypass\(9);
\b2v_inst4|ALT_INV_Mux0~17_combout\ <= NOT \b2v_inst4|Mux0~17_combout\;
\b2v_inst4|ALT_INV_regs_rtl_0_bypass\(9) <= NOT \b2v_inst4|regs_rtl_0_bypass\(9);
\b2v_inst|ALT_INV_z_control[1]~1_combout\ <= NOT \b2v_inst|z_control[1]~1_combout\;
\b2v_inst5|ALT_INV_temp_address[9]~0_combout\ <= NOT \b2v_inst5|temp_address[9]~0_combout\;
\b2v_inst|ALT_INV_z_control[1]~0_combout\ <= NOT \b2v_inst|z_control[1]~0_combout\;
\b2v_inst|ALT_INV_Mux8~0_combout\ <= NOT \b2v_inst|Mux8~0_combout\;
\b2v_inst|ALT_INV_Mux15~5_combout\ <= NOT \b2v_inst|Mux15~5_combout\;
\b2v_inst4|ALT_INV_z[14]~0_combout\ <= NOT \b2v_inst4|z[14]~0_combout\;
\b2v_inst|ALT_INV_Selector5~0_combout\ <= NOT \b2v_inst|Selector5~0_combout\;
\b2v_inst|ALT_INV_Mux15~4_combout\ <= NOT \b2v_inst|Mux15~4_combout\;
\b2v_inst|ALT_INV_Mux3~0_combout\ <= NOT \b2v_inst|Mux3~0_combout\;
\b2v_inst|ALT_INV_Mux15~3_combout\ <= NOT \b2v_inst|Mux15~3_combout\;
\b2v_inst|ALT_INV_Mux15~2_combout\ <= NOT \b2v_inst|Mux15~2_combout\;
\b2v_inst|ALT_INV_Mux4~0_combout\ <= NOT \b2v_inst|Mux4~0_combout\;
\b2v_inst|ALT_INV_Selector1~0_combout\ <= NOT \b2v_inst|Selector1~0_combout\;
\b2v_inst|ALT_INV_Mux15~1_combout\ <= NOT \b2v_inst|Mux15~1_combout\;
\b2v_inst|ALT_INV_Mux15~0_combout\ <= NOT \b2v_inst|Mux15~0_combout\;
\b2v_inst9|ALT_INV_LessThan0~15_combout\ <= NOT \b2v_inst9|LessThan0~15_combout\;
\b2v_inst9|ALT_INV_LessThan0~14_combout\ <= NOT \b2v_inst9|LessThan0~14_combout\;
\b2v_inst9|ALT_INV_LessThan0~13_combout\ <= NOT \b2v_inst9|LessThan0~13_combout\;
\b2v_inst9|ALT_INV_LessThan0~12_combout\ <= NOT \b2v_inst9|LessThan0~12_combout\;
\b2v_inst4|ALT_INV_Mux16~16_combout\ <= NOT \b2v_inst4|Mux16~16_combout\;
\b2v_inst4|ALT_INV_Mux0~16_combout\ <= NOT \b2v_inst4|Mux0~16_combout\;
\b2v_inst4|ALT_INV_Mux16~15_combout\ <= NOT \b2v_inst4|Mux16~15_combout\;
\b2v_inst4|ALT_INV_Mux0~15_combout\ <= NOT \b2v_inst4|Mux0~15_combout\;
\b2v_inst9|ALT_INV_LessThan0~11_combout\ <= NOT \b2v_inst9|LessThan0~11_combout\;
\b2v_inst9|ALT_INV_LessThan0~10_combout\ <= NOT \b2v_inst9|LessThan0~10_combout\;
\b2v_inst4|ALT_INV_regs_rtl_1_bypass\(16) <= NOT \b2v_inst4|regs_rtl_1_bypass\(16);
\b2v_inst4|ALT_INV_regs_rtl_0_bypass\(16) <= NOT \b2v_inst4|regs_rtl_0_bypass\(16);
\b2v_inst9|ALT_INV_LessThan0~9_combout\ <= NOT \b2v_inst9|LessThan0~9_combout\;
\b2v_inst4|ALT_INV_regs_rtl_1_bypass\(14) <= NOT \b2v_inst4|regs_rtl_1_bypass\(14);
\b2v_inst4|ALT_INV_regs_rtl_0_bypass\(14) <= NOT \b2v_inst4|regs_rtl_0_bypass\(14);
\b2v_inst4|ALT_INV_Mux16~14_combout\ <= NOT \b2v_inst4|Mux16~14_combout\;
\b2v_inst4|ALT_INV_regs_rtl_1_bypass\(15) <= NOT \b2v_inst4|regs_rtl_1_bypass\(15);
\b2v_inst4|ALT_INV_Mux0~14_combout\ <= NOT \b2v_inst4|Mux0~14_combout\;
\b2v_inst4|ALT_INV_regs_rtl_0_bypass\(15) <= NOT \b2v_inst4|regs_rtl_0_bypass\(15);
\b2v_inst9|ALT_INV_LessThan0~8_combout\ <= NOT \b2v_inst9|LessThan0~8_combout\;
\b2v_inst4|ALT_INV_regs_rtl_1_bypass\(13) <= NOT \b2v_inst4|regs_rtl_1_bypass\(13);
\b2v_inst4|ALT_INV_regs_rtl_0_bypass\(13) <= NOT \b2v_inst4|regs_rtl_0_bypass\(13);
\b2v_inst9|ALT_INV_LessThan0~7_combout\ <= NOT \b2v_inst9|LessThan0~7_combout\;
\b2v_inst4|ALT_INV_Mux16~13_combout\ <= NOT \b2v_inst4|Mux16~13_combout\;
\b2v_inst4|ALT_INV_regs_rtl_1_bypass\(12) <= NOT \b2v_inst4|regs_rtl_1_bypass\(12);
\b2v_inst4|ALT_INV_Mux0~13_combout\ <= NOT \b2v_inst4|Mux0~13_combout\;
\b2v_inst4|ALT_INV_regs_rtl_0_bypass\(12) <= NOT \b2v_inst4|regs_rtl_0_bypass\(12);
\b2v_inst4|ALT_INV_Mux16~12_combout\ <= NOT \b2v_inst4|Mux16~12_combout\;
\b2v_inst4|ALT_INV_regs_rtl_1_bypass\(11) <= NOT \b2v_inst4|regs_rtl_1_bypass\(11);
\b2v_inst4|ALT_INV_Mux0~12_combout\ <= NOT \b2v_inst4|Mux0~12_combout\;
\b2v_inst4|ALT_INV_regs_rtl_0_bypass\(11) <= NOT \b2v_inst4|regs_rtl_0_bypass\(11);
\b2v_inst4|ALT_INV_Mux16~11_combout\ <= NOT \b2v_inst4|Mux16~11_combout\;
\b2v_inst4|ALT_INV_regs_rtl_1_bypass\(10) <= NOT \b2v_inst4|regs_rtl_1_bypass\(10);
\b2v_inst4|ALT_INV_Mux0~11_combout\ <= NOT \b2v_inst4|Mux0~11_combout\;
\b2v_inst4|ALT_INV_regs_rtl_0_bypass\(10) <= NOT \b2v_inst4|regs_rtl_0_bypass\(10);
\b2v_inst9|ALT_INV_LessThan0~6_combout\ <= NOT \b2v_inst9|LessThan0~6_combout\;
\b2v_inst9|ALT_INV_LessThan0~5_combout\ <= NOT \b2v_inst9|LessThan0~5_combout\;
\b2v_inst9|ALT_INV_LessThan0~4_combout\ <= NOT \b2v_inst9|LessThan0~4_combout\;
\b2v_inst4|ALT_INV_Mux16~10_combout\ <= NOT \b2v_inst4|Mux16~10_combout\;
\b2v_inst4|ALT_INV_Mux16~9_combout\ <= NOT \b2v_inst4|Mux16~9_combout\;
\b2v_inst9|ALT_INV_LessThan0~3_combout\ <= NOT \b2v_inst9|LessThan0~3_combout\;
\b2v_inst4|ALT_INV_Mux16~8_combout\ <= NOT \b2v_inst4|Mux16~8_combout\;
\b2v_inst4|ALT_INV_regs_rtl_1_bypass\(23) <= NOT \b2v_inst4|regs_rtl_1_bypass\(23);
\b2v_inst9|ALT_INV_LessThan0~2_combout\ <= NOT \b2v_inst9|LessThan0~2_combout\;
\b2v_inst4|ALT_INV_regs_rtl_1_bypass\(22) <= NOT \b2v_inst4|regs_rtl_1_bypass\(22);
\b2v_inst9|ALT_INV_LessThan0~1_combout\ <= NOT \b2v_inst9|LessThan0~1_combout\;
\b2v_inst4|ALT_INV_regs_rtl_1_bypass\(21) <= NOT \b2v_inst4|regs_rtl_1_bypass\(21);
\b2v_inst4|ALT_INV_Mux16~7_combout\ <= NOT \b2v_inst4|Mux16~7_combout\;
\b2v_inst4|ALT_INV_Mux0~10_combout\ <= NOT \b2v_inst4|Mux0~10_combout\;
\b2v_inst9|ALT_INV_LessThan0~0_combout\ <= NOT \b2v_inst9|LessThan0~0_combout\;
\b2v_inst4|ALT_INV_Mux16~6_combout\ <= NOT \b2v_inst4|Mux16~6_combout\;
\b2v_inst4|ALT_INV_regs_rtl_1_bypass\(19) <= NOT \b2v_inst4|regs_rtl_1_bypass\(19);
\b2v_inst4|ALT_INV_Mux16~5_combout\ <= NOT \b2v_inst4|Mux16~5_combout\;
\b2v_inst4|ALT_INV_regs_rtl_1_bypass\(18) <= NOT \b2v_inst4|regs_rtl_1_bypass\(18);
\b2v_inst4|ALT_INV_Mux16~4_combout\ <= NOT \b2v_inst4|Mux16~4_combout\;
\b2v_inst4|ALT_INV_regs_rtl_1_bypass\(17) <= NOT \b2v_inst4|regs_rtl_1_bypass\(17);
\b2v_inst4|ALT_INV_Mux16~3_combout\ <= NOT \b2v_inst4|Mux16~3_combout\;
\b2v_inst4|ALT_INV_regs_rtl_1_bypass\(20) <= NOT \b2v_inst4|regs_rtl_1_bypass\(20);
\b2v_inst4|ALT_INV_Mux16~2_combout\ <= NOT \b2v_inst4|Mux16~2_combout\;
\b2v_inst4|ALT_INV_regs_rtl_1_bypass\(24) <= NOT \b2v_inst4|regs_rtl_1_bypass\(24);
\b2v_inst4|ALT_INV_Mux16~1_combout\ <= NOT \b2v_inst4|Mux16~1_combout\;
\b2v_inst4|ALT_INV_regs_rtl_1_bypass\(8) <= NOT \b2v_inst4|regs_rtl_1_bypass\(8);
\b2v_inst4|ALT_INV_regs_rtl_1_bypass\(7) <= NOT \b2v_inst4|regs_rtl_1_bypass\(7);
\b2v_inst4|ALT_INV_regs_rtl_1_bypass\(6) <= NOT \b2v_inst4|regs_rtl_1_bypass\(6);
\b2v_inst4|ALT_INV_regs_rtl_1_bypass\(5) <= NOT \b2v_inst4|regs_rtl_1_bypass\(5);
\b2v_inst4|ALT_INV_Mux16~0_combout\ <= NOT \b2v_inst4|Mux16~0_combout\;
\b2v_inst4|ALT_INV_regs_rtl_1_bypass\(4) <= NOT \b2v_inst4|regs_rtl_1_bypass\(4);
\b2v_inst4|ALT_INV_regs_rtl_1_bypass\(3) <= NOT \b2v_inst4|regs_rtl_1_bypass\(3);
\b2v_inst4|ALT_INV_regs_rtl_1_bypass\(2) <= NOT \b2v_inst4|regs_rtl_1_bypass\(2);
\b2v_inst4|ALT_INV_regs_rtl_1_bypass\(1) <= NOT \b2v_inst4|regs_rtl_1_bypass\(1);
\b2v_inst4|ALT_INV_regs_rtl_1_bypass\(0) <= NOT \b2v_inst4|regs_rtl_1_bypass\(0);
\b2v_inst4|ALT_INV_Mux0~9_combout\ <= NOT \b2v_inst4|Mux0~9_combout\;
\b2v_inst4|ALT_INV_regs_rtl_0_bypass\(17) <= NOT \b2v_inst4|regs_rtl_0_bypass\(17);
\b2v_inst4|ALT_INV_Mux0~8_combout\ <= NOT \b2v_inst4|Mux0~8_combout\;
\b2v_inst4|ALT_INV_regs_rtl_0_bypass\(18) <= NOT \b2v_inst4|regs_rtl_0_bypass\(18);
\b2v_inst4|ALT_INV_Mux0~7_combout\ <= NOT \b2v_inst4|Mux0~7_combout\;
\b2v_inst4|ALT_INV_regs_rtl_0_bypass\(19) <= NOT \b2v_inst4|regs_rtl_0_bypass\(19);
\b2v_inst4|ALT_INV_Mux0~6_combout\ <= NOT \b2v_inst4|Mux0~6_combout\;
\b2v_inst4|ALT_INV_regs_rtl_0_bypass\(20) <= NOT \b2v_inst4|regs_rtl_0_bypass\(20);
\b2v_inst4|ALT_INV_Mux0~5_combout\ <= NOT \b2v_inst4|Mux0~5_combout\;
\b2v_inst4|ALT_INV_regs_rtl_0_bypass\(21) <= NOT \b2v_inst4|regs_rtl_0_bypass\(21);
\b2v_inst4|ALT_INV_Mux0~4_combout\ <= NOT \b2v_inst4|Mux0~4_combout\;
\b2v_inst4|ALT_INV_regs_rtl_0_bypass\(22) <= NOT \b2v_inst4|regs_rtl_0_bypass\(22);
\b2v_inst4|ALT_INV_Mux0~3_combout\ <= NOT \b2v_inst4|Mux0~3_combout\;
\b2v_inst4|ALT_INV_regs_rtl_0_bypass\(23) <= NOT \b2v_inst4|regs_rtl_0_bypass\(23);
\b2v_inst|ALT_INV_load_sop~0_combout\ <= NOT \b2v_inst|load_sop~0_combout\;
\b2v_inst3|ALT_INV_temp_IR\(15) <= NOT \b2v_inst3|temp_IR\(15);
\b2v_inst3|ALT_INV_temp_IR\(14) <= NOT \b2v_inst3|temp_IR\(14);
\b2v_inst|ALT_INV_state.T2~q\ <= NOT \b2v_inst|state.T2~q\;
\b2v_inst3|ALT_INV_temp_IR\(11) <= NOT \b2v_inst3|temp_IR\(11);
\b2v_inst3|ALT_INV_temp_IR\(13) <= NOT \b2v_inst3|temp_IR\(13);
\b2v_inst3|ALT_INV_temp_IR\(12) <= NOT \b2v_inst3|temp_IR\(12);
\b2v_inst|ALT_INV_Mux26~0_combout\ <= NOT \b2v_inst|Mux26~0_combout\;
\b2v_inst3|ALT_INV_temp_IR\(10) <= NOT \b2v_inst3|temp_IR\(10);
\b2v_inst3|ALT_INV_temp_IR\(8) <= NOT \b2v_inst3|temp_IR\(8);
\b2v_inst3|ALT_INV_temp_IR\(9) <= NOT \b2v_inst3|temp_IR\(9);
\b2v_inst4|ALT_INV_Mux0~2_combout\ <= NOT \b2v_inst4|Mux0~2_combout\;
\b2v_inst4|ALT_INV_Mux0~1_combout\ <= NOT \b2v_inst4|Mux0~1_combout\;
\b2v_inst4|ALT_INV_regs_rtl_0_bypass\(8) <= NOT \b2v_inst4|regs_rtl_0_bypass\(8);
\b2v_inst4|ALT_INV_regs_rtl_0_bypass\(7) <= NOT \b2v_inst4|regs_rtl_0_bypass\(7);
\b2v_inst4|ALT_INV_regs_rtl_0_bypass\(6) <= NOT \b2v_inst4|regs_rtl_0_bypass\(6);
\b2v_inst4|ALT_INV_regs_rtl_0_bypass\(5) <= NOT \b2v_inst4|regs_rtl_0_bypass\(5);
\b2v_inst4|ALT_INV_Mux0~0_combout\ <= NOT \b2v_inst4|Mux0~0_combout\;
\b2v_inst4|ALT_INV_regs_rtl_0_bypass\(4) <= NOT \b2v_inst4|regs_rtl_0_bypass\(4);
\b2v_inst4|ALT_INV_regs_rtl_0_bypass\(3) <= NOT \b2v_inst4|regs_rtl_0_bypass\(3);
\b2v_inst4|ALT_INV_regs_rtl_0_bypass\(2) <= NOT \b2v_inst4|regs_rtl_0_bypass\(2);
\b2v_inst4|ALT_INV_regs_rtl_0_bypass\(1) <= NOT \b2v_inst4|regs_rtl_0_bypass\(1);
\b2v_inst4|ALT_INV_regs_rtl_0_bypass\(0) <= NOT \b2v_inst4|regs_rtl_0_bypass\(0);
\b2v_inst4|ALT_INV_regs_rtl_0_bypass\(24) <= NOT \b2v_inst4|regs_rtl_0_bypass\(24);
\b2v_inst4|ALT_INV_z[0]~121_combout\ <= NOT \b2v_inst4|z[0]~121_combout\;
\b2v_inst4|ALT_INV_z[6]~117_combout\ <= NOT \b2v_inst4|z[6]~117_combout\;
\b2v_inst4|ALT_INV_z[7]~113_combout\ <= NOT \b2v_inst4|z[7]~113_combout\;
\b2v_inst4|ALT_INV_z[10]~109_combout\ <= NOT \b2v_inst4|z[10]~109_combout\;
\b2v_inst4|ALT_INV_z[8]~105_combout\ <= NOT \b2v_inst4|z[8]~105_combout\;
\b2v_inst2|ALT_INV_Add0~45_sumout\ <= NOT \b2v_inst2|Add0~45_sumout\;
\b2v_inst2|ALT_INV_Add0~41_sumout\ <= NOT \b2v_inst2|Add0~41_sumout\;
\b2v_inst2|ALT_INV_Add0~37_sumout\ <= NOT \b2v_inst2|Add0~37_sumout\;
\b2v_inst2|ALT_INV_Add0~33_sumout\ <= NOT \b2v_inst2|Add0~33_sumout\;
\b2v_inst2|ALT_INV_Add0~29_sumout\ <= NOT \b2v_inst2|Add0~29_sumout\;
\b2v_inst2|ALT_INV_Add0~25_sumout\ <= NOT \b2v_inst2|Add0~25_sumout\;
\b2v_inst2|ALT_INV_Add0~21_sumout\ <= NOT \b2v_inst2|Add0~21_sumout\;
\b2v_inst2|ALT_INV_Add0~17_sumout\ <= NOT \b2v_inst2|Add0~17_sumout\;
\b2v_inst2|ALT_INV_Add0~13_sumout\ <= NOT \b2v_inst2|Add0~13_sumout\;
\b2v_inst2|ALT_INV_Add0~9_sumout\ <= NOT \b2v_inst2|Add0~9_sumout\;
\b2v_inst2|ALT_INV_Add0~5_sumout\ <= NOT \b2v_inst2|Add0~5_sumout\;
\b2v_inst2|ALT_INV_Add0~1_sumout\ <= NOT \b2v_inst2|Add0~1_sumout\;
\b2v_inst7|ALT_INV_Add0~61_sumout\ <= NOT \b2v_inst7|Add0~61_sumout\;
\b2v_inst7|ALT_INV_Add0~57_sumout\ <= NOT \b2v_inst7|Add0~57_sumout\;
\b2v_inst7|ALT_INV_Add0~53_sumout\ <= NOT \b2v_inst7|Add0~53_sumout\;
\b2v_inst7|ALT_INV_Add0~49_sumout\ <= NOT \b2v_inst7|Add0~49_sumout\;
\b2v_inst7|ALT_INV_Add0~45_sumout\ <= NOT \b2v_inst7|Add0~45_sumout\;
\b2v_inst7|ALT_INV_Add0~41_sumout\ <= NOT \b2v_inst7|Add0~41_sumout\;
\b2v_inst7|ALT_INV_Add0~37_sumout\ <= NOT \b2v_inst7|Add0~37_sumout\;
\b2v_inst7|ALT_INV_Add0~33_sumout\ <= NOT \b2v_inst7|Add0~33_sumout\;
\b2v_inst7|ALT_INV_Add0~29_sumout\ <= NOT \b2v_inst7|Add0~29_sumout\;
\b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(7) <= NOT \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(7);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(7);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(6) <= NOT \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(6);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(6);
\b2v_inst7|ALT_INV_Add0~25_sumout\ <= NOT \b2v_inst7|Add0~25_sumout\;
\b2v_inst7|ALT_INV_Add0~21_sumout\ <= NOT \b2v_inst7|Add0~21_sumout\;
\b2v_inst7|ALT_INV_Add0~17_sumout\ <= NOT \b2v_inst7|Add0~17_sumout\;
\b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(5) <= NOT \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(5);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(5);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(4) <= NOT \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(4);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(4);
\b2v_inst7|ALT_INV_Add0~13_sumout\ <= NOT \b2v_inst7|Add0~13_sumout\;
\b2v_inst7|ALT_INV_Add0~9_sumout\ <= NOT \b2v_inst7|Add0~9_sumout\;
\b2v_inst7|ALT_INV_Add0~5_sumout\ <= NOT \b2v_inst7|Add0~5_sumout\;
\b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(15) <= NOT \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(15);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_a\(15) <= NOT \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(15);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(14) <= NOT \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(14);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_a\(14) <= NOT \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(14);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(13) <= NOT \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(13);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_a\(13) <= NOT \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(13);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(11) <= NOT \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(11);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_a\(11) <= NOT \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(11);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(12) <= NOT \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(12);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_a\(12) <= NOT \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(12);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(10) <= NOT \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(10);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_a\(10) <= NOT \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(10);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(9) <= NOT \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(9);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_a\(9) <= NOT \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(9);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(8) <= NOT \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(8);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_a\(8) <= NOT \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(8);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(3) <= NOT \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(3);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(3);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(2) <= NOT \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(2);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(2);
\b2v_inst7|ALT_INV_Add0~1_sumout\ <= NOT \b2v_inst7|Add0~1_sumout\;
\b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(1) <= NOT \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(1);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(1);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(0) <= NOT \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(0);
\b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(0);
\b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a1\ <= NOT \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a1\;
\b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a2\ <= NOT \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a2\;
\b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a3\ <= NOT \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a3\;
\b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a4\ <= NOT \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a4\;
\b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a5\ <= NOT \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a5\;
\b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a6\ <= NOT \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a6\;
\b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a7\ <= NOT \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a7\;
\b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a8\ <= NOT \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a8\;
\b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a9\ <= NOT \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a9\;
\b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a10\ <= NOT \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a10\;
\b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a11\ <= NOT \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a11\;
\b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a12\ <= NOT \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a12\;
\b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a13\ <= NOT \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a13\;

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \signal_registers|SOP_reg\(0),
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X52_Y0_N19
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \signal_registers|SOP_reg\(1),
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X60_Y0_N2
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \signal_registers|SOP_reg\(2),
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X80_Y0_N2
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \signal_registers|SOP_reg\(3),
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X60_Y0_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \signal_registers|SOP_reg\(4),
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X80_Y0_N19
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \signal_registers|SOP_reg\(5),
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X84_Y0_N2
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \signal_registers|SOP_reg\(6),
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X89_Y6_N5
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \signal_registers|SOP_reg\(7),
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOIBUF_X32_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G6
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: MLABCELL_X28_Y5_N21
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X30_Y2_N59
\b2v_inst2|pc_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst2|pc_temp~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|pc_reg\(1));

-- Location: IOIBUF_X36_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LABCELL_X33_Y4_N6
\b2v_inst|resetprocessor:count[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|resetprocessor:count[1]~0_combout\ = ( \b2v_inst|resetprocessor:flipflop~q\ & ( !\b2v_inst|resetprocessor:count[0]~q\ $ (!\b2v_inst|resetprocessor:count[1]~q\) ) ) # ( !\b2v_inst|resetprocessor:flipflop~q\ & ( 
-- !\b2v_inst|resetprocessor:count[1]~q\ $ (((!\b2v_inst|resetprocessor:count[0]~q\) # (\KEY[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001011011101001000101101110100110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \b2v_inst|ALT_INV_resetprocessor:count[0]~q\,
	datad => \b2v_inst|ALT_INV_resetprocessor:count[1]~q\,
	dataf => \b2v_inst|ALT_INV_resetprocessor:flipflop~q\,
	combout => \b2v_inst|resetprocessor:count[1]~0_combout\);

-- Location: FF_X33_Y4_N8
\b2v_inst|resetprocessor:count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|resetprocessor:count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|resetprocessor:count[1]~q\);

-- Location: LABCELL_X33_Y4_N57
\b2v_inst|resetprocessor:count[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|resetprocessor:count[0]~0_combout\ = ( \b2v_inst|resetprocessor:count[0]~q\ & ( \KEY[0]~input_o\ & ( !\b2v_inst|resetprocessor:flipflop~q\ ) ) ) # ( !\b2v_inst|resetprocessor:count[0]~q\ & ( \KEY[0]~input_o\ & ( 
-- (!\b2v_inst|resetprocessor:count[1]~q\ & \b2v_inst|resetprocessor:flipflop~q\) ) ) ) # ( !\b2v_inst|resetprocessor:count[0]~q\ & ( !\KEY[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000001100000011001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ALT_INV_resetprocessor:count[1]~q\,
	datac => \b2v_inst|ALT_INV_resetprocessor:flipflop~q\,
	datae => \b2v_inst|ALT_INV_resetprocessor:count[0]~q\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \b2v_inst|resetprocessor:count[0]~0_combout\);

-- Location: FF_X33_Y4_N59
\b2v_inst|resetprocessor:count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|resetprocessor:count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|resetprocessor:count[0]~q\);

-- Location: LABCELL_X33_Y4_N42
\b2v_inst|flipflop~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|flipflop~0_combout\ = ( \b2v_inst|resetprocessor:flipflop~q\ & ( \KEY[0]~input_o\ & ( (!\b2v_inst|resetprocessor:count[1]~q\) # (\b2v_inst|resetprocessor:count[0]~q\) ) ) ) # ( \b2v_inst|resetprocessor:flipflop~q\ & ( !\KEY[0]~input_o\ ) ) # ( 
-- !\b2v_inst|resetprocessor:flipflop~q\ & ( !\KEY[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000001111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ALT_INV_resetprocessor:count[0]~q\,
	datad => \b2v_inst|ALT_INV_resetprocessor:count[1]~q\,
	datae => \b2v_inst|ALT_INV_resetprocessor:flipflop~q\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \b2v_inst|flipflop~0_combout\);

-- Location: FF_X33_Y4_N44
\b2v_inst|resetprocessor:flipflop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|flipflop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|resetprocessor:flipflop~q\);

-- Location: IOIBUF_X40_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LABCELL_X33_Y4_N12
\b2v_inst|state~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|state~28_combout\ = ( \b2v_inst|state.Test2~q\ & ( (!\b2v_inst|resetprocessor:flipflop~q\ & ((\b2v_inst|state.T2~q\) # (\KEY[3]~input_o\))) ) ) # ( !\b2v_inst|state.Test2~q\ & ( (!\b2v_inst|resetprocessor:flipflop~q\ & \b2v_inst|state.T2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110001000100110011000100010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datab => \b2v_inst|ALT_INV_resetprocessor:flipflop~q\,
	datad => \b2v_inst|ALT_INV_state.T2~q\,
	dataf => \b2v_inst|ALT_INV_state.Test2~q\,
	combout => \b2v_inst|state~28_combout\);

-- Location: LABCELL_X33_Y4_N9
\b2v_inst|enable_pd~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|enable_pd~0_combout\ = (\KEY[0]~input_o\ & (((!\b2v_inst|resetprocessor:count[0]~q\ & \b2v_inst|resetprocessor:count[1]~q\)) # (\b2v_inst|enable_pd~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001010101000001000101010100000100010101010000010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \b2v_inst|ALT_INV_resetprocessor:count[0]~q\,
	datac => \b2v_inst|ALT_INV_resetprocessor:count[1]~q\,
	datad => \b2v_inst|ALT_INV_enable_pd~q\,
	combout => \b2v_inst|enable_pd~0_combout\);

-- Location: FF_X33_Y4_N11
\b2v_inst|enable_pd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|enable_pd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|enable_pd~q\);

-- Location: LABCELL_X33_Y4_N33
\b2v_inst|state~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|state~25_combout\ = ( \b2v_inst|enable_pd~q\ ) # ( !\b2v_inst|enable_pd~q\ & ( \b2v_inst|resetprocessor:flipflop~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|ALT_INV_resetprocessor:flipflop~q\,
	dataf => \b2v_inst|ALT_INV_enable_pd~q\,
	combout => \b2v_inst|state~25_combout\);

-- Location: FF_X33_Y4_N14
\b2v_inst|state.Test\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|state~28_combout\,
	ena => \b2v_inst|state~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|state.Test~q\);

-- Location: LABCELL_X33_Y4_N15
\b2v_inst|state~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|state~29_combout\ = ( !\b2v_inst|resetprocessor:flipflop~q\ & ( (\KEY[3]~input_o\ & \b2v_inst|state.Test~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datac => \b2v_inst|ALT_INV_state.Test~q\,
	dataf => \b2v_inst|ALT_INV_resetprocessor:flipflop~q\,
	combout => \b2v_inst|state~29_combout\);

-- Location: FF_X33_Y4_N17
\b2v_inst|state.Test2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|state~29_combout\,
	ena => \b2v_inst|state~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|state.Test2~q\);

-- Location: LABCELL_X33_Y4_N18
\b2v_inst|state~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|state~26_combout\ = ( !\b2v_inst|resetprocessor:flipflop~q\ & ( \b2v_inst|state.T2~q\ & ( (\b2v_inst|state.T1~q\ & !\b2v_inst|enable_pd~q\) ) ) ) # ( !\b2v_inst|resetprocessor:flipflop~q\ & ( !\b2v_inst|state.T2~q\ & ( (!\b2v_inst|state.T1~q\ & 
-- (!\b2v_inst|state.Test2~q\ & (!\b2v_inst|state.Test~q\ & \b2v_inst|enable_pd~q\))) # (\b2v_inst|state.T1~q\ & (((!\b2v_inst|enable_pd~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110000000000000000000000001010101000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_state.T1~q\,
	datab => \b2v_inst|ALT_INV_state.Test2~q\,
	datac => \b2v_inst|ALT_INV_state.Test~q\,
	datad => \b2v_inst|ALT_INV_enable_pd~q\,
	datae => \b2v_inst|ALT_INV_resetprocessor:flipflop~q\,
	dataf => \b2v_inst|ALT_INV_state.T2~q\,
	combout => \b2v_inst|state~26_combout\);

-- Location: FF_X31_Y4_N53
\b2v_inst|state.T1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst|state~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|state.T1~q\);

-- Location: LABCELL_X33_Y4_N24
\b2v_inst|state~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|state~24_combout\ = ( \b2v_inst|state.T1~q\ & ( !\b2v_inst|resetprocessor:flipflop~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ALT_INV_resetprocessor:flipflop~q\,
	dataf => \b2v_inst|ALT_INV_state.T1~q\,
	combout => \b2v_inst|state~24_combout\);

-- Location: FF_X29_Y4_N23
\b2v_inst|state.T2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst|state~24_combout\,
	sload => VCC,
	ena => \b2v_inst|state~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|state.T2~q\);

-- Location: FF_X30_Y3_N35
\b2v_inst2|pc_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst2|pc_temp~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|pc_reg\(4));

-- Location: FF_X30_Y3_N53
\b2v_inst2|pc_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst2|pc_temp~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|pc_reg\(5));

-- Location: FF_X29_Y2_N26
\b2v_inst2|pc_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst2|pc_temp~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|pc_reg\(3));

-- Location: FF_X29_Y2_N14
\b2v_inst2|pc_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst2|pc_temp~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|pc_reg\(2));

-- Location: LABCELL_X33_Y4_N36
\b2v_inst|state~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|state~27_combout\ = ( \b2v_inst|state.T0~q\ & ( !\b2v_inst|resetprocessor:flipflop~q\ & ( (((!\b2v_inst|enable_pd~q\) # (\KEY[3]~input_o\)) # (\b2v_inst|state.T2~q\)) # (\b2v_inst|state.T1~q\) ) ) ) # ( !\b2v_inst|state.T0~q\ & ( 
-- !\b2v_inst|resetprocessor:flipflop~q\ & ( \b2v_inst|enable_pd~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_state.T1~q\,
	datab => \b2v_inst|ALT_INV_state.T2~q\,
	datac => \ALT_INV_KEY[3]~input_o\,
	datad => \b2v_inst|ALT_INV_enable_pd~q\,
	datae => \b2v_inst|ALT_INV_state.T0~q\,
	dataf => \b2v_inst|ALT_INV_resetprocessor:flipflop~q\,
	combout => \b2v_inst|state~27_combout\);

-- Location: FF_X33_Y4_N38
\b2v_inst|state.T0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|state~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|state.T0~q\);

-- Location: LABCELL_X29_Y3_N9
\b2v_inst|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector3~0_combout\ = ( !\b2v_inst|Selector5~1_combout\ & ( \b2v_inst|state.T0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|ALT_INV_state.T0~q\,
	dataf => \b2v_inst|ALT_INV_Selector5~1_combout\,
	combout => \b2v_inst|Selector3~0_combout\);

-- Location: FF_X30_Y3_N43
\b2v_inst2|pc_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst2|pc_temp~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|pc_reg\(6));

-- Location: LABCELL_X29_Y5_N15
\b2v_inst2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|Add0~21_sumout\ = SUM(( \b2v_inst2|pc_reg\(5) ) + ( GND ) + ( \b2v_inst2|Add0~18\ ))
-- \b2v_inst2|Add0~22\ = CARRY(( \b2v_inst2|pc_reg\(5) ) + ( GND ) + ( \b2v_inst2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|ALT_INV_pc_reg\(5),
	cin => \b2v_inst2|Add0~18\,
	sumout => \b2v_inst2|Add0~21_sumout\,
	cout => \b2v_inst2|Add0~22\);

-- Location: LABCELL_X29_Y5_N18
\b2v_inst2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|Add0~25_sumout\ = SUM(( \b2v_inst2|pc_reg\(6) ) + ( GND ) + ( \b2v_inst2|Add0~22\ ))
-- \b2v_inst2|Add0~26\ = CARRY(( \b2v_inst2|pc_reg\(6) ) + ( GND ) + ( \b2v_inst2|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst2|ALT_INV_pc_reg\(6),
	cin => \b2v_inst2|Add0~22\,
	sumout => \b2v_inst2|Add0~25_sumout\,
	cout => \b2v_inst2|Add0~26\);

-- Location: FF_X30_Y4_N41
\b2v_inst2|pc_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst2|pc_temp~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|pc_reg\(9));

-- Location: LABCELL_X29_Y4_N15
\b2v_inst3|IR_Op[9]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst3|IR_Op[9]~12_combout\ = ( \b2v_inst|Selector4~0_combout\ & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(9) & ( (\b2v_inst|Selector5~1_combout\) # (\b2v_inst5|temp_address[9]~1_combout\) ) ) ) # ( 
-- !\b2v_inst|Selector4~0_combout\ & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(9) & ( ((\b2v_inst|Selector1~1_combout\ & (\b2v_inst5|temp_address[9]~1_combout\ & \b2v_inst|Mux5~0_combout\))) # (\b2v_inst|Selector5~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_Selector1~1_combout\,
	datab => \b2v_inst5|ALT_INV_temp_address[9]~1_combout\,
	datac => \b2v_inst|ALT_INV_Mux5~0_combout\,
	datad => \b2v_inst|ALT_INV_Selector5~1_combout\,
	datae => \b2v_inst|ALT_INV_Selector4~0_combout\,
	dataf => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \b2v_inst3|IR_Op[9]~12_combout\);

-- Location: FF_X29_Y3_N23
\b2v_inst2|pc_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst2|pc_temp~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|pc_reg\(8));

-- Location: FF_X29_Y4_N29
\b2v_inst2|pc_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst2|pc_temp~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|pc_reg\(7));

-- Location: LABCELL_X29_Y5_N21
\b2v_inst2|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|Add0~29_sumout\ = SUM(( \b2v_inst2|pc_reg\(7) ) + ( GND ) + ( \b2v_inst2|Add0~26\ ))
-- \b2v_inst2|Add0~30\ = CARRY(( \b2v_inst2|pc_reg\(7) ) + ( GND ) + ( \b2v_inst2|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst2|ALT_INV_pc_reg\(7),
	cin => \b2v_inst2|Add0~26\,
	sumout => \b2v_inst2|Add0~29_sumout\,
	cout => \b2v_inst2|Add0~30\);

-- Location: LABCELL_X29_Y5_N24
\b2v_inst2|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|Add0~33_sumout\ = SUM(( \b2v_inst2|pc_reg\(8) ) + ( GND ) + ( \b2v_inst2|Add0~30\ ))
-- \b2v_inst2|Add0~34\ = CARRY(( \b2v_inst2|pc_reg\(8) ) + ( GND ) + ( \b2v_inst2|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst2|ALT_INV_pc_reg\(8),
	cin => \b2v_inst2|Add0~30\,
	sumout => \b2v_inst2|Add0~33_sumout\,
	cout => \b2v_inst2|Add0~34\);

-- Location: LABCELL_X29_Y5_N27
\b2v_inst2|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|Add0~37_sumout\ = SUM(( \b2v_inst2|pc_reg\(9) ) + ( GND ) + ( \b2v_inst2|Add0~34\ ))
-- \b2v_inst2|Add0~38\ = CARRY(( \b2v_inst2|pc_reg\(9) ) + ( GND ) + ( \b2v_inst2|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|ALT_INV_pc_reg\(9),
	cin => \b2v_inst2|Add0~34\,
	sumout => \b2v_inst2|Add0~37_sumout\,
	cout => \b2v_inst2|Add0~38\);

-- Location: LABCELL_X30_Y4_N24
\b2v_inst3|IR_Op[10]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst3|IR_Op[10]~13_combout\ = ( \b2v_inst|Selector4~0_combout\ & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(10) & ( (\b2v_inst|Selector5~1_combout\) # (\b2v_inst5|temp_address[9]~1_combout\) ) ) ) # ( 
-- !\b2v_inst|Selector4~0_combout\ & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(10) & ( ((\b2v_inst5|temp_address[9]~1_combout\ & (\b2v_inst|Mux5~0_combout\ & \b2v_inst|Selector1~1_combout\))) # (\b2v_inst|Selector5~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ALT_INV_temp_address[9]~1_combout\,
	datab => \b2v_inst|ALT_INV_Mux5~0_combout\,
	datac => \b2v_inst|ALT_INV_Selector5~1_combout\,
	datad => \b2v_inst|ALT_INV_Selector1~1_combout\,
	datae => \b2v_inst|ALT_INV_Selector4~0_combout\,
	dataf => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \b2v_inst3|IR_Op[10]~13_combout\);

-- Location: FF_X30_Y4_N44
\b2v_inst2|pc_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst2|pc_temp~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|pc_reg\(10));

-- Location: LABCELL_X29_Y5_N30
\b2v_inst2|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|Add0~41_sumout\ = SUM(( \b2v_inst2|pc_reg\(10) ) + ( GND ) + ( \b2v_inst2|Add0~38\ ))
-- \b2v_inst2|Add0~42\ = CARRY(( \b2v_inst2|pc_reg\(10) ) + ( GND ) + ( \b2v_inst2|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst2|ALT_INV_pc_reg\(10),
	cin => \b2v_inst2|Add0~38\,
	sumout => \b2v_inst2|Add0~41_sumout\,
	cout => \b2v_inst2|Add0~42\);

-- Location: FF_X29_Y1_N44
\b2v_inst2|pc_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst2|pc_temp~24_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|pc_reg\(11));

-- Location: LABCELL_X29_Y1_N54
\b2v_inst3|IR_Op[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst3|IR_Op[11]~11_combout\ = ( \b2v_inst|Selector5~1_combout\ & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(11) ) ) # ( !\b2v_inst|Selector5~1_combout\ & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(11) & ( 
-- (\b2v_inst5|temp_address[9]~1_combout\ & (((\b2v_inst|Mux5~0_combout\ & \b2v_inst|Selector1~1_combout\)) # (\b2v_inst|Selector4~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_Mux5~0_combout\,
	datab => \b2v_inst|ALT_INV_Selector4~0_combout\,
	datac => \b2v_inst|ALT_INV_Selector1~1_combout\,
	datad => \b2v_inst5|ALT_INV_temp_address[9]~1_combout\,
	datae => \b2v_inst|ALT_INV_Selector5~1_combout\,
	dataf => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	combout => \b2v_inst3|IR_Op[11]~11_combout\);

-- Location: LABCELL_X31_Y5_N21
\b2v_inst|Mux15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~2_combout\ = ( \b2v_inst3|temp_IR\(12) & ( (!\b2v_inst3|temp_IR\(15) & (\b2v_inst3|temp_IR\(13) & !\b2v_inst3|temp_IR\(10))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|ALT_INV_temp_IR\(15),
	datac => \b2v_inst3|ALT_INV_temp_IR\(13),
	datad => \b2v_inst3|ALT_INV_temp_IR\(10),
	dataf => \b2v_inst3|ALT_INV_temp_IR\(12),
	combout => \b2v_inst|Mux15~2_combout\);

-- Location: LABCELL_X31_Y5_N36
\b2v_inst|Mux15~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~3_combout\ = ( !\b2v_inst3|temp_IR\(15) & ( (!\b2v_inst3|temp_IR\(13) & !\b2v_inst3|temp_IR\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst3|ALT_INV_temp_IR\(13),
	datac => \b2v_inst3|ALT_INV_temp_IR\(12),
	dataf => \b2v_inst3|ALT_INV_temp_IR\(15),
	combout => \b2v_inst|Mux15~3_combout\);

-- Location: FF_X30_Y5_N20
\b2v_inst3|temp_IR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(8),
	sload => VCC,
	ena => \b2v_inst|ALT_INV_state.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|temp_IR\(8));

-- Location: LABCELL_X30_Y5_N9
\b2v_inst|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector1~0_combout\ = ( !\b2v_inst3|temp_IR\(8) & ( (\b2v_inst3|temp_IR\(11) & !\b2v_inst3|temp_IR\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst3|ALT_INV_temp_IR\(11),
	datad => \b2v_inst3|ALT_INV_temp_IR\(9),
	dataf => \b2v_inst3|ALT_INV_temp_IR\(8),
	combout => \b2v_inst|Selector1~0_combout\);

-- Location: LABCELL_X31_Y5_N42
\b2v_inst|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux4~0_combout\ = ( \b2v_inst3|temp_IR\(8) & ( (!\b2v_inst3|temp_IR\(10) & (\b2v_inst3|temp_IR\(9) & !\b2v_inst3|temp_IR\(11))) ) ) # ( !\b2v_inst3|temp_IR\(8) & ( (!\b2v_inst3|temp_IR\(9) & \b2v_inst3|temp_IR\(11)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|ALT_INV_temp_IR\(10),
	datab => \b2v_inst3|ALT_INV_temp_IR\(9),
	datac => \b2v_inst3|ALT_INV_temp_IR\(11),
	dataf => \b2v_inst3|ALT_INV_temp_IR\(8),
	combout => \b2v_inst|Mux4~0_combout\);

-- Location: LABCELL_X31_Y5_N39
\b2v_inst|Mux15~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~5_combout\ = ( \b2v_inst|Mux4~0_combout\ & ( ((\b2v_inst|Mux15~2_combout\ & \b2v_inst|Selector1~0_combout\)) # (\b2v_inst|Mux15~3_combout\) ) ) # ( !\b2v_inst|Mux4~0_combout\ & ( (\b2v_inst|Mux15~2_combout\ & 
-- \b2v_inst|Selector1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_Mux15~2_combout\,
	datac => \b2v_inst|ALT_INV_Mux15~3_combout\,
	datad => \b2v_inst|ALT_INV_Selector1~0_combout\,
	dataf => \b2v_inst|ALT_INV_Mux4~0_combout\,
	combout => \b2v_inst|Mux15~5_combout\);

-- Location: LABCELL_X31_Y5_N18
\b2v_inst|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~0_combout\ = (\b2v_inst3|temp_IR\(15) & (!\b2v_inst3|temp_IR\(8) $ (\b2v_inst3|temp_IR\(9))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000101010100000000010101010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|ALT_INV_temp_IR\(15),
	datac => \b2v_inst3|ALT_INV_temp_IR\(8),
	datad => \b2v_inst3|ALT_INV_temp_IR\(9),
	combout => \b2v_inst|Mux15~0_combout\);

-- Location: LABCELL_X31_Y5_N45
\b2v_inst|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux3~0_combout\ = ( \b2v_inst3|temp_IR\(12) & ( (\b2v_inst3|temp_IR\(10) & (\b2v_inst3|temp_IR\(9) & (\b2v_inst3|temp_IR\(13) & !\b2v_inst3|temp_IR\(11)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|ALT_INV_temp_IR\(10),
	datab => \b2v_inst3|ALT_INV_temp_IR\(9),
	datac => \b2v_inst3|ALT_INV_temp_IR\(13),
	datad => \b2v_inst3|ALT_INV_temp_IR\(11),
	dataf => \b2v_inst3|ALT_INV_temp_IR\(12),
	combout => \b2v_inst|Mux3~0_combout\);

-- Location: LABCELL_X31_Y5_N54
\b2v_inst|Mux15~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~4_combout\ = ( \b2v_inst|Selector1~0_combout\ & ( \b2v_inst|Mux4~0_combout\ & ( (!\b2v_inst|Mux15~2_combout\ & (!\b2v_inst|Mux15~3_combout\ & ((!\b2v_inst|Mux15~0_combout\) # (!\b2v_inst|Mux3~0_combout\)))) ) ) ) # ( 
-- !\b2v_inst|Selector1~0_combout\ & ( \b2v_inst|Mux4~0_combout\ & ( (!\b2v_inst|Mux15~3_combout\ & ((!\b2v_inst|Mux15~0_combout\) # (!\b2v_inst|Mux3~0_combout\))) ) ) ) # ( \b2v_inst|Selector1~0_combout\ & ( !\b2v_inst|Mux4~0_combout\ & ( 
-- (!\b2v_inst|Mux15~2_combout\ & ((!\b2v_inst|Mux15~0_combout\) # (!\b2v_inst|Mux3~0_combout\))) ) ) ) # ( !\b2v_inst|Selector1~0_combout\ & ( !\b2v_inst|Mux4~0_combout\ & ( (!\b2v_inst|Mux15~0_combout\) # (!\b2v_inst|Mux3~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000101010101010000011001100110000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_Mux15~2_combout\,
	datab => \b2v_inst|ALT_INV_Mux15~3_combout\,
	datac => \b2v_inst|ALT_INV_Mux15~0_combout\,
	datad => \b2v_inst|ALT_INV_Mux3~0_combout\,
	datae => \b2v_inst|ALT_INV_Selector1~0_combout\,
	dataf => \b2v_inst|ALT_INV_Mux4~0_combout\,
	combout => \b2v_inst|Mux15~4_combout\);

-- Location: LABCELL_X31_Y5_N12
\b2v_inst|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~1_combout\ = ( !\b2v_inst3|temp_IR\(9) & ( \b2v_inst|Mux15~0_combout\ & ( (!\b2v_inst3|temp_IR\(13) & (!\b2v_inst3|temp_IR\(12) & ((!\b2v_inst3|temp_IR\(10)) # (\b2v_inst3|temp_IR\(11))))) # (\b2v_inst3|temp_IR\(13) & 
-- (\b2v_inst3|temp_IR\(11) & (\b2v_inst3|temp_IR\(12) & !\b2v_inst3|temp_IR\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000001010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|ALT_INV_temp_IR\(11),
	datab => \b2v_inst3|ALT_INV_temp_IR\(13),
	datac => \b2v_inst3|ALT_INV_temp_IR\(12),
	datad => \b2v_inst3|ALT_INV_temp_IR\(10),
	datae => \b2v_inst3|ALT_INV_temp_IR\(9),
	dataf => \b2v_inst|ALT_INV_Mux15~0_combout\,
	combout => \b2v_inst|Mux15~1_combout\);

-- Location: LABCELL_X27_Y4_N15
\b2v_inst|Mux15~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~6_combout\ = ( \b2v_inst|Mux15~1_combout\ & ( \b2v_inst3|temp_IR\(14) ) ) # ( !\b2v_inst|Mux15~1_combout\ & ( (!\b2v_inst|Mux15~4_combout\ & \b2v_inst3|temp_IR\(14)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|ALT_INV_Mux15~4_combout\,
	datad => \b2v_inst3|ALT_INV_temp_IR\(14),
	dataf => \b2v_inst|ALT_INV_Mux15~1_combout\,
	combout => \b2v_inst|Mux15~6_combout\);

-- Location: LABCELL_X30_Y5_N3
\b2v_inst|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~0_combout\ = (!\b2v_inst3|temp_IR\(8) & ((!\b2v_inst3|temp_IR\(12) & (!\b2v_inst3|temp_IR\(13))) # (\b2v_inst3|temp_IR\(12) & (\b2v_inst3|temp_IR\(13) & !\b2v_inst3|temp_IR\(10)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010000000100100001000000010010000100000001001000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|ALT_INV_temp_IR\(12),
	datab => \b2v_inst3|ALT_INV_temp_IR\(13),
	datac => \b2v_inst3|ALT_INV_temp_IR\(8),
	datad => \b2v_inst3|ALT_INV_temp_IR\(10),
	combout => \b2v_inst|Mux8~0_combout\);

-- Location: LABCELL_X31_Y5_N0
\b2v_inst|z_control[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|z_control[1]~0_combout\ = ( \b2v_inst3|temp_IR\(11) & ( \b2v_inst|Mux8~0_combout\ & ( (\b2v_inst3|temp_IR\(15) & !\b2v_inst3|temp_IR\(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|ALT_INV_temp_IR\(15),
	datab => \b2v_inst3|ALT_INV_temp_IR\(9),
	datae => \b2v_inst3|ALT_INV_temp_IR\(11),
	dataf => \b2v_inst|ALT_INV_Mux8~0_combout\,
	combout => \b2v_inst|z_control[1]~0_combout\);

-- Location: LABCELL_X29_Y4_N51
\b2v_inst4|z[14]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[14]~0_combout\ = ( \b2v_inst3|temp_IR\(8) & ( (\b2v_inst3|temp_IR\(15) & (\b2v_inst3|temp_IR\(14) & (\b2v_inst|state.T2~q\ & \b2v_inst|Mux3~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|ALT_INV_temp_IR\(15),
	datab => \b2v_inst3|ALT_INV_temp_IR\(14),
	datac => \b2v_inst|ALT_INV_state.T2~q\,
	datad => \b2v_inst|ALT_INV_Mux3~0_combout\,
	dataf => \b2v_inst3|ALT_INV_temp_IR\(8),
	combout => \b2v_inst4|z[14]~0_combout\);

-- Location: LABCELL_X27_Y4_N9
\b2v_inst4|z[14]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[14]~47_combout\ = ( \b2v_inst4|z[14]~0_combout\ & ( (!\b2v_inst|Mux15~5_combout\ & (!\b2v_inst|Mux15~6_combout\ & !\b2v_inst|z_control[1]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_Mux15~5_combout\,
	datac => \b2v_inst|ALT_INV_Mux15~6_combout\,
	datad => \b2v_inst|ALT_INV_z_control[1]~0_combout\,
	dataf => \b2v_inst4|ALT_INV_z[14]~0_combout\,
	combout => \b2v_inst4|z[14]~47_combout\);

-- Location: LABCELL_X29_Y4_N54
\b2v_inst5|temp_address[9]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|temp_address[9]~0_combout\ = (\b2v_inst3|temp_IR\(14) & \b2v_inst|state.T2~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst3|ALT_INV_temp_IR\(14),
	datad => \b2v_inst|ALT_INV_state.T2~q\,
	combout => \b2v_inst5|temp_address[9]~0_combout\);

-- Location: LABCELL_X31_Y5_N6
\b2v_inst|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~0_combout\ = ( \b2v_inst3|temp_IR\(10) & ( (\b2v_inst3|temp_IR\(11) & (!\b2v_inst3|temp_IR\(9) & !\b2v_inst3|temp_IR\(8))) ) ) # ( !\b2v_inst3|temp_IR\(10) & ( (!\b2v_inst3|temp_IR\(11) & (\b2v_inst3|temp_IR\(9) & \b2v_inst3|temp_IR\(8))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010010000000100000000000010000000100100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|ALT_INV_temp_IR\(11),
	datab => \b2v_inst3|ALT_INV_temp_IR\(9),
	datac => \b2v_inst3|ALT_INV_temp_IR\(8),
	datae => \b2v_inst3|ALT_INV_temp_IR\(10),
	combout => \b2v_inst|Mux6~0_combout\);

-- Location: MLABCELL_X28_Y4_N54
\b2v_inst4|z[14]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[14]~8_combout\ = ( \b2v_inst|Mux6~0_combout\ & ( \b2v_inst|Selector1~0_combout\ & ( (\b2v_inst|Equal1~0_combout\ & (\b2v_inst5|temp_address[9]~0_combout\ & (!\b2v_inst3|temp_IR\(10) & \b2v_inst3|temp_IR\(15)))) ) ) ) # ( 
-- !\b2v_inst|Mux6~0_combout\ & ( \b2v_inst|Selector1~0_combout\ & ( (\b2v_inst|Equal1~0_combout\ & (\b2v_inst5|temp_address[9]~0_combout\ & ((!\b2v_inst3|temp_IR\(10)) # (!\b2v_inst3|temp_IR\(15))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_Equal1~0_combout\,
	datab => \b2v_inst5|ALT_INV_temp_address[9]~0_combout\,
	datac => \b2v_inst3|ALT_INV_temp_IR\(10),
	datad => \b2v_inst3|ALT_INV_temp_IR\(15),
	datae => \b2v_inst|ALT_INV_Mux6~0_combout\,
	dataf => \b2v_inst|ALT_INV_Selector1~0_combout\,
	combout => \b2v_inst4|z[14]~8_combout\);

-- Location: LABCELL_X29_Y4_N57
\b2v_inst4|z[14]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[14]~49_combout\ = ( \b2v_inst3|temp_IR\(15) & ( (\b2v_inst|state.T2~q\ & (\b2v_inst3|temp_IR\(14) & ((!\b2v_inst3|temp_IR\(8)) # (!\b2v_inst|Mux3~0_combout\)))) ) ) # ( !\b2v_inst3|temp_IR\(15) & ( (\b2v_inst|state.T2~q\ & 
-- \b2v_inst3|temp_IR\(14)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100000001000100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_state.T2~q\,
	datab => \b2v_inst3|ALT_INV_temp_IR\(14),
	datac => \b2v_inst3|ALT_INV_temp_IR\(8),
	datad => \b2v_inst|ALT_INV_Mux3~0_combout\,
	dataf => \b2v_inst3|ALT_INV_temp_IR\(15),
	combout => \b2v_inst4|z[14]~49_combout\);

-- Location: MLABCELL_X28_Y5_N3
\b2v_inst4|z[14]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[14]~50_combout\ = ( \b2v_inst|Mux15~5_combout\ & ( !\b2v_inst4|z[14]~49_combout\ ) ) # ( !\b2v_inst|Mux15~5_combout\ & ( (!\b2v_inst4|z[14]~49_combout\) # ((!\b2v_inst|z_control[1]~0_combout\ & (\b2v_inst|Mux15~4_combout\ & 
-- !\b2v_inst|Mux15~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111010101010101011101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[14]~49_combout\,
	datab => \b2v_inst|ALT_INV_z_control[1]~0_combout\,
	datac => \b2v_inst|ALT_INV_Mux15~4_combout\,
	datad => \b2v_inst|ALT_INV_Mux15~1_combout\,
	dataf => \b2v_inst|ALT_INV_Mux15~5_combout\,
	combout => \b2v_inst4|z[14]~50_combout\);

-- Location: LABCELL_X27_Y3_N45
\b2v_inst4|z[10]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[10]~53_combout\ = (!\b2v_inst4|z[14]~8_combout\ & !\b2v_inst4|z[14]~50_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst4|ALT_INV_z[14]~8_combout\,
	datad => \b2v_inst4|ALT_INV_z[14]~50_combout\,
	combout => \b2v_inst4|z[10]~53_combout\);

-- Location: LABCELL_X30_Y5_N21
\b2v_inst4|z[14]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[14]~48_combout\ = ( \b2v_inst|Mux15~1_combout\ & ( \b2v_inst|state.T2~q\ & ( (\b2v_inst3|temp_IR\(14) & (!\b2v_inst|Mux15~5_combout\ & !\b2v_inst|z_control[1]~0_combout\)) ) ) ) # ( !\b2v_inst|Mux15~1_combout\ & ( \b2v_inst|state.T2~q\ & ( 
-- (\b2v_inst3|temp_IR\(14) & (!\b2v_inst|Mux15~5_combout\ & (!\b2v_inst|Mux15~4_combout\ & !\b2v_inst|z_control[1]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|ALT_INV_temp_IR\(14),
	datab => \b2v_inst|ALT_INV_Mux15~5_combout\,
	datac => \b2v_inst|ALT_INV_Mux15~4_combout\,
	datad => \b2v_inst|ALT_INV_z_control[1]~0_combout\,
	datae => \b2v_inst|ALT_INV_Mux15~1_combout\,
	dataf => \b2v_inst|ALT_INV_state.T2~q\,
	combout => \b2v_inst4|z[14]~48_combout\);

-- Location: LABCELL_X31_Y5_N48
\b2v_inst4|z[14]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[14]~6_combout\ = ( !\b2v_inst3|temp_IR\(9) & ( !\b2v_inst3|temp_IR\(12) & ( (!\b2v_inst3|temp_IR\(8) & (\b2v_inst3|temp_IR\(14) & (\b2v_inst3|temp_IR\(11) & !\b2v_inst3|temp_IR\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|ALT_INV_temp_IR\(8),
	datab => \b2v_inst3|ALT_INV_temp_IR\(14),
	datac => \b2v_inst3|ALT_INV_temp_IR\(11),
	datad => \b2v_inst3|ALT_INV_temp_IR\(13),
	datae => \b2v_inst3|ALT_INV_temp_IR\(9),
	dataf => \b2v_inst3|ALT_INV_temp_IR\(12),
	combout => \b2v_inst4|z[14]~6_combout\);

-- Location: MLABCELL_X28_Y3_N54
\b2v_inst|ALU_Opcode[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|ALU_Opcode[1]~0_combout\ = (\b2v_inst4|z[14]~6_combout\ & \b2v_inst|state.T2~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst4|ALT_INV_z[14]~6_combout\,
	datad => \b2v_inst|ALT_INV_state.T2~q\,
	combout => \b2v_inst|ALU_Opcode[1]~0_combout\);

-- Location: MLABCELL_X28_Y4_N48
\b2v_inst4|z[14]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[14]~5_combout\ = ( \b2v_inst|Equal1~0_combout\ & ( (!\b2v_inst3|temp_IR\(15) & (((\b2v_inst|Mux6~0_combout\)))) # (\b2v_inst3|temp_IR\(15) & (\b2v_inst3|temp_IR\(10) & (\b2v_inst|Selector1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001110011010000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|ALT_INV_temp_IR\(10),
	datab => \b2v_inst3|ALT_INV_temp_IR\(15),
	datac => \b2v_inst|ALT_INV_Selector1~0_combout\,
	datad => \b2v_inst|ALT_INV_Mux6~0_combout\,
	dataf => \b2v_inst|ALT_INV_Equal1~0_combout\,
	combout => \b2v_inst4|z[14]~5_combout\);

-- Location: LABCELL_X30_Y3_N21
\b2v_inst3|IR_Op[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst3|IR_Op[6]~6_combout\ = ( \b2v_inst|Mux5~0_combout\ & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(6) & ( ((\b2v_inst5|temp_address[9]~1_combout\ & ((\b2v_inst|Selector4~0_combout\) # (\b2v_inst|Selector1~1_combout\)))) # 
-- (\b2v_inst|Selector5~1_combout\) ) ) ) # ( !\b2v_inst|Mux5~0_combout\ & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(6) & ( ((\b2v_inst5|temp_address[9]~1_combout\ & \b2v_inst|Selector4~0_combout\)) # (\b2v_inst|Selector5~1_combout\) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011011101110011011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ALT_INV_temp_address[9]~1_combout\,
	datab => \b2v_inst|ALT_INV_Selector5~1_combout\,
	datac => \b2v_inst|ALT_INV_Selector1~1_combout\,
	datad => \b2v_inst|ALT_INV_Selector4~0_combout\,
	datae => \b2v_inst|ALT_INV_Mux5~0_combout\,
	dataf => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \b2v_inst3|IR_Op[6]~6_combout\);

-- Location: LABCELL_X30_Y5_N12
\b2v_inst|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal1~1_combout\ = ( \b2v_inst3|temp_IR\(9) & ( !\b2v_inst3|temp_IR\(8) & ( (!\b2v_inst3|temp_IR\(10) & (!\b2v_inst3|temp_IR\(13) & (!\b2v_inst3|temp_IR\(12) & !\b2v_inst3|temp_IR\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|ALT_INV_temp_IR\(10),
	datab => \b2v_inst3|ALT_INV_temp_IR\(13),
	datac => \b2v_inst3|ALT_INV_temp_IR\(12),
	datad => \b2v_inst3|ALT_INV_temp_IR\(11),
	datae => \b2v_inst3|ALT_INV_temp_IR\(9),
	dataf => \b2v_inst3|ALT_INV_temp_IR\(8),
	combout => \b2v_inst|Equal1~1_combout\);

-- Location: LABCELL_X30_Y4_N42
\b2v_inst|Selector5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector5~2_combout\ = ( \b2v_inst|Selector5~1_combout\ & ( !\b2v_inst|Equal1~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|ALT_INV_Equal1~1_combout\,
	dataf => \b2v_inst|ALT_INV_Selector5~1_combout\,
	combout => \b2v_inst|Selector5~2_combout\);

-- Location: LABCELL_X30_Y5_N39
\b2v_inst|Selector5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector5~3_combout\ = ( \b2v_inst|Selector5~2_combout\ ) # ( !\b2v_inst|Selector5~2_combout\ & ( (\b2v_inst3|temp_IR\(14) & (\b2v_inst|state.T2~q\ & ((!\b2v_inst|Mux15~4_combout\) # (\b2v_inst|Mux15~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000101000001000000010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|ALT_INV_temp_IR\(14),
	datab => \b2v_inst|ALT_INV_Mux15~4_combout\,
	datac => \b2v_inst|ALT_INV_state.T2~q\,
	datad => \b2v_inst|ALT_INV_Mux15~1_combout\,
	dataf => \b2v_inst|ALT_INV_Selector5~2_combout\,
	combout => \b2v_inst|Selector5~3_combout\);

-- Location: LABCELL_X30_Y3_N33
\b2v_inst|state.T0~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|state.T0~_wirecell_combout\ = !\b2v_inst|state.T0~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|ALT_INV_state.T0~q\,
	combout => \b2v_inst|state.T0~_wirecell_combout\);

-- Location: FF_X30_Y3_N26
\b2v_inst3|temp_IR[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(5),
	sload => VCC,
	ena => \b2v_inst|ALT_INV_state.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|temp_IR[5]~DUPLICATE_q\);

-- Location: FF_X30_Y3_N19
\b2v_inst3|temp_IR[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(6),
	sload => VCC,
	ena => \b2v_inst|ALT_INV_state.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|temp_IR[6]~DUPLICATE_q\);

-- Location: LABCELL_X29_Y4_N24
\b2v_inst|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector5~0_combout\ = ( \b2v_inst3|temp_IR\(14) & ( (\b2v_inst|state.T2~q\ & ((!\b2v_inst|Mux15~4_combout\) # (\b2v_inst|Mux15~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000000110011001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ALT_INV_state.T2~q\,
	datac => \b2v_inst|ALT_INV_Mux15~1_combout\,
	datad => \b2v_inst|ALT_INV_Mux15~4_combout\,
	dataf => \b2v_inst3|ALT_INV_temp_IR\(14),
	combout => \b2v_inst|Selector5~0_combout\);

-- Location: LABCELL_X30_Y4_N9
\b2v_inst5|temp_address[9]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|temp_address[9]~3_combout\ = ( \b2v_inst|Equal1~1_combout\ & ( \b2v_inst5|temp_address[9]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst5|ALT_INV_temp_address[9]~1_combout\,
	dataf => \b2v_inst|ALT_INV_Equal1~1_combout\,
	combout => \b2v_inst5|temp_address[9]~3_combout\);

-- Location: LABCELL_X29_Y4_N33
\b2v_inst|z_control[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|z_control[1]~1_combout\ = ( \b2v_inst5|temp_address[9]~0_combout\ & ( (\b2v_inst|z_control[1]~0_combout\) # (\b2v_inst|Mux15~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|ALT_INV_Mux15~5_combout\,
	datad => \b2v_inst|ALT_INV_z_control[1]~0_combout\,
	dataf => \b2v_inst5|ALT_INV_temp_address[9]~0_combout\,
	combout => \b2v_inst|z_control[1]~1_combout\);

-- Location: LABCELL_X27_Y4_N21
\b2v_inst4|z[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[5]~4_combout\ = ( \b2v_inst4|z[14]~0_combout\ & ( \b2v_inst|z_control[1]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|ALT_INV_z_control[1]~1_combout\,
	dataf => \b2v_inst4|ALT_INV_z[14]~0_combout\,
	combout => \b2v_inst4|z[5]~4_combout\);

-- Location: LABCELL_X27_Y4_N45
\b2v_inst4|z[1]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[1]~10_combout\ = ( !\b2v_inst4|z[14]~9_combout\ & ( \b2v_inst|Mux15~6_combout\ & ( (!\b2v_inst4|z[5]~4_combout\ & (!\b2v_inst4|z[14]~2_combout\ & !\b2v_inst4|z[14]~0_combout\)) ) ) ) # ( !\b2v_inst4|z[14]~9_combout\ & ( 
-- !\b2v_inst|Mux15~6_combout\ & ( (!\b2v_inst4|z[5]~4_combout\ & !\b2v_inst4|z[14]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000000000000000000010000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[5]~4_combout\,
	datab => \b2v_inst4|ALT_INV_z[14]~2_combout\,
	datac => \b2v_inst4|ALT_INV_z[14]~0_combout\,
	datae => \b2v_inst4|ALT_INV_z[14]~9_combout\,
	dataf => \b2v_inst|ALT_INV_Mux15~6_combout\,
	combout => \b2v_inst4|z[1]~10_combout\);

-- Location: MLABCELL_X28_Y2_N30
\b2v_inst|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux2~0_combout\ = (!\b2v_inst3|temp_IR\(15) & \b2v_inst3|temp_IR\(14))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst3|ALT_INV_temp_IR\(15),
	datad => \b2v_inst3|ALT_INV_temp_IR\(14),
	combout => \b2v_inst|Mux2~0_combout\);

-- Location: FF_X31_Y3_N23
\b2v_inst3|temp_IR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(4),
	sload => VCC,
	ena => \b2v_inst|ALT_INV_state.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|temp_IR\(4));

-- Location: FF_X31_Y3_N17
\b2v_inst4|regs_rtl_1_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst3|temp_IR\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_1_bypass\(1));

-- Location: FF_X31_Y3_N5
\b2v_inst4|regs_rtl_1_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst|Selector5~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_1_bypass\(0));

-- Location: FF_X31_Y3_N8
\b2v_inst4|regs_rtl_1_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(4),
	sload => VCC,
	ena => \b2v_inst|ALT_INV_state.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_1_bypass\(2));

-- Location: FF_X31_Y3_N26
\b2v_inst4|regs_rtl_1_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(5),
	sload => VCC,
	ena => \b2v_inst|ALT_INV_state.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_1_bypass\(4));

-- Location: LABCELL_X30_Y3_N51
\b2v_inst4|regs_rtl_1_bypass[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|regs_rtl_1_bypass[3]~feeder_combout\ = \b2v_inst3|temp_IR\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst3|ALT_INV_temp_IR\(5),
	combout => \b2v_inst4|regs_rtl_1_bypass[3]~feeder_combout\);

-- Location: FF_X30_Y3_N52
\b2v_inst4|regs_rtl_1_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst4|regs_rtl_1_bypass[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_1_bypass\(3));

-- Location: LABCELL_X31_Y3_N24
\b2v_inst4|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux16~0_combout\ = ( \b2v_inst4|regs_rtl_1_bypass\(4) & ( \b2v_inst4|regs_rtl_1_bypass\(3) & ( (\b2v_inst4|regs_rtl_1_bypass\(0) & (!\b2v_inst4|regs_rtl_1_bypass\(1) $ (\b2v_inst4|regs_rtl_1_bypass\(2)))) ) ) ) # ( 
-- !\b2v_inst4|regs_rtl_1_bypass\(4) & ( !\b2v_inst4|regs_rtl_1_bypass\(3) & ( (\b2v_inst4|regs_rtl_1_bypass\(0) & (!\b2v_inst4|regs_rtl_1_bypass\(1) $ (\b2v_inst4|regs_rtl_1_bypass\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000011000000000000000000000000000000000000110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst4|ALT_INV_regs_rtl_1_bypass\(1),
	datac => \b2v_inst4|ALT_INV_regs_rtl_1_bypass\(0),
	datad => \b2v_inst4|ALT_INV_regs_rtl_1_bypass\(2),
	datae => \b2v_inst4|ALT_INV_regs_rtl_1_bypass\(4),
	dataf => \b2v_inst4|ALT_INV_regs_rtl_1_bypass\(3),
	combout => \b2v_inst4|Mux16~0_combout\);

-- Location: FF_X27_Y4_N7
\b2v_inst4|regs_rtl_1_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst4|z[2]~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_1_bypass\(22));

-- Location: MLABCELL_X28_Y3_N57
\b2v_inst4|z[14]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[14]~7_combout\ = (\b2v_inst|ALU_Opcode[1]~0_combout\ & \b2v_inst4|z[14]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_ALU_Opcode[1]~0_combout\,
	datad => \b2v_inst4|ALT_INV_z[14]~5_combout\,
	combout => \b2v_inst4|z[14]~7_combout\);

-- Location: MLABCELL_X28_Y2_N21
\b2v_inst3|IR_Op[13]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst3|IR_Op[13]~9_combout\ = ( \b2v_inst|Selector1~1_combout\ & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(13) & ( ((\b2v_inst5|temp_address[9]~1_combout\ & ((\b2v_inst|Mux5~0_combout\) # (\b2v_inst|Selector4~0_combout\)))) # 
-- (\b2v_inst|Selector5~1_combout\) ) ) ) # ( !\b2v_inst|Selector1~1_combout\ & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(13) & ( ((\b2v_inst|Selector4~0_combout\ & \b2v_inst5|temp_address[9]~1_combout\)) # 
-- (\b2v_inst|Selector5~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101011101110101010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_Selector5~1_combout\,
	datab => \b2v_inst|ALT_INV_Selector4~0_combout\,
	datac => \b2v_inst|ALT_INV_Mux5~0_combout\,
	datad => \b2v_inst5|ALT_INV_temp_address[9]~1_combout\,
	datae => \b2v_inst|ALT_INV_Selector1~1_combout\,
	dataf => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	combout => \b2v_inst3|IR_Op[13]~9_combout\);

-- Location: FF_X27_Y2_N1
\b2v_inst4|regs[10][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst4|z[13]~70_combout\,
	ena => \b2v_inst4|regs[10][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs[10][13]~q\);

-- Location: FF_X27_Y2_N14
\b2v_inst4|regs_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst4|z[13]~70_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_0_bypass\(11));

-- Location: FF_X28_Y2_N29
\b2v_inst4|regs_rtl_1_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst4|z[3]~30_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_1_bypass\(21));

-- Location: LABCELL_X30_Y4_N27
\b2v_inst3|IR_Op[12]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst3|IR_Op[12]~10_combout\ = ( \b2v_inst|Selector4~0_combout\ & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(12) & ( (\b2v_inst|Selector5~1_combout\) # (\b2v_inst5|temp_address[9]~1_combout\) ) ) ) # ( 
-- !\b2v_inst|Selector4~0_combout\ & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(12) & ( ((\b2v_inst5|temp_address[9]~1_combout\ & (\b2v_inst|Mux5~0_combout\ & \b2v_inst|Selector1~1_combout\))) # (\b2v_inst|Selector5~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ALT_INV_temp_address[9]~1_combout\,
	datab => \b2v_inst|ALT_INV_Mux5~0_combout\,
	datac => \b2v_inst|ALT_INV_Selector1~1_combout\,
	datad => \b2v_inst|ALT_INV_Selector5~1_combout\,
	datae => \b2v_inst|ALT_INV_Selector4~0_combout\,
	dataf => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	combout => \b2v_inst3|IR_Op[12]~10_combout\);

-- Location: FF_X27_Y5_N55
\b2v_inst4|regs[10][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst4|z[12]~76_combout\,
	ena => \b2v_inst4|regs[10][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs[10][12]~q\);

-- Location: LABCELL_X30_Y4_N33
\b2v_inst3|IR_Op[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst3|IR_Op[2]~2_combout\ = ( \b2v_inst|Selector4~0_combout\ & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(2) & ( (\b2v_inst|Selector5~1_combout\) # (\b2v_inst5|temp_address[9]~1_combout\) ) ) ) # ( 
-- !\b2v_inst|Selector4~0_combout\ & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(2) & ( ((\b2v_inst5|temp_address[9]~1_combout\ & (\b2v_inst|Mux5~0_combout\ & \b2v_inst|Selector1~1_combout\))) # (\b2v_inst|Selector5~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ALT_INV_temp_address[9]~1_combout\,
	datab => \b2v_inst|ALT_INV_Mux5~0_combout\,
	datac => \b2v_inst|ALT_INV_Selector1~1_combout\,
	datad => \b2v_inst|ALT_INV_Selector5~1_combout\,
	datae => \b2v_inst|ALT_INV_Selector4~0_combout\,
	dataf => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	combout => \b2v_inst3|IR_Op[2]~2_combout\);

-- Location: LABCELL_X27_Y4_N39
\b2v_inst4|z[5]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[5]~11_combout\ = ( \b2v_inst4|z[14]~0_combout\ & ( (\b2v_inst|Mux15~6_combout\ & \b2v_inst|state.T2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|ALT_INV_Mux15~6_combout\,
	datad => \b2v_inst|ALT_INV_state.T2~q\,
	dataf => \b2v_inst4|ALT_INV_z[14]~0_combout\,
	combout => \b2v_inst4|z[5]~11_combout\);

-- Location: IOIBUF_X2_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LABCELL_X31_Y4_N57
\b2v_inst|load_sip~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|load_sip~0_combout\ = ( \b2v_inst|Mux3~0_combout\ & ( (\b2v_inst|state.T1~q\ & (\b2v_inst3|temp_IR\(15) & (\b2v_inst3|temp_IR\(14) & \b2v_inst3|temp_IR\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_state.T1~q\,
	datab => \b2v_inst3|ALT_INV_temp_IR\(15),
	datac => \b2v_inst3|ALT_INV_temp_IR\(14),
	datad => \b2v_inst3|ALT_INV_temp_IR\(8),
	dataf => \b2v_inst|ALT_INV_Mux3~0_combout\,
	combout => \b2v_inst|load_sip~0_combout\);

-- Location: FF_X27_Y3_N50
\signal_registers|SIP_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \b2v_inst|load_sip~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \signal_registers|SIP_reg\(4));

-- Location: LABCELL_X27_Y3_N48
\b2v_inst4|z[4]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[4]~34_combout\ = ( \signal_registers|SIP_reg\(4) & ( \b2v_inst4|Mux0~6_combout\ & ( (((!\b2v_inst4|z[5]~4_combout\ & \b2v_inst4|z[5]~11_combout\)) # (\b2v_inst4|z[14]~9_combout\)) # (\b2v_inst4|z[14]~2_combout\) ) ) ) # ( 
-- !\signal_registers|SIP_reg\(4) & ( \b2v_inst4|Mux0~6_combout\ & ( (\b2v_inst4|z[14]~9_combout\) # (\b2v_inst4|z[14]~2_combout\) ) ) ) # ( \signal_registers|SIP_reg\(4) & ( !\b2v_inst4|Mux0~6_combout\ & ( (!\b2v_inst4|z[14]~2_combout\ & 
-- (!\b2v_inst4|z[5]~4_combout\ & (\b2v_inst4|z[5]~11_combout\ & !\b2v_inst4|z[14]~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000001010101111111110101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[14]~2_combout\,
	datab => \b2v_inst4|ALT_INV_z[5]~4_combout\,
	datac => \b2v_inst4|ALT_INV_z[5]~11_combout\,
	datad => \b2v_inst4|ALT_INV_z[14]~9_combout\,
	datae => \signal_registers|ALT_INV_SIP_reg\(4),
	dataf => \b2v_inst4|ALT_INV_Mux0~6_combout\,
	combout => \b2v_inst4|z[4]~34_combout\);

-- Location: FF_X27_Y3_N20
\b2v_inst4|regs[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst4|z[4]~35_combout\,
	ena => \b2v_inst4|regs[10][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs[10][4]~q\);

-- Location: MLABCELL_X28_Y2_N33
\b2v_inst7|ALU_in1[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|ALU_in1[4]~4_combout\ = ( \b2v_inst3|IR_Op[4]~4_combout\ & ( (!\b2v_inst3|temp_IR\(15) & (\b2v_inst3|temp_IR\(14))) # (\b2v_inst3|temp_IR\(15) & ((!\b2v_inst3|temp_IR\(14) & (\b2v_inst4|regs[10][4]~q\)) # (\b2v_inst3|temp_IR\(14) & 
-- ((\b2v_inst4|Mux0~6_combout\))))) ) ) # ( !\b2v_inst3|IR_Op[4]~4_combout\ & ( (\b2v_inst3|temp_IR\(15) & ((!\b2v_inst3|temp_IR\(14) & (\b2v_inst4|regs[10][4]~q\)) # (\b2v_inst3|temp_IR\(14) & ((\b2v_inst4|Mux0~6_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010100100110001101110010011000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|ALT_INV_temp_IR\(15),
	datab => \b2v_inst3|ALT_INV_temp_IR\(14),
	datac => \b2v_inst4|ALT_INV_regs[10][4]~q\,
	datad => \b2v_inst4|ALT_INV_Mux0~6_combout\,
	dataf => \b2v_inst3|ALT_INV_IR_Op[4]~4_combout\,
	combout => \b2v_inst7|ALU_in1[4]~4_combout\);

-- Location: LABCELL_X27_Y4_N48
\b2v_inst4|z[6]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[6]~15_combout\ = ( \b2v_inst|z_control[1]~0_combout\ & ( \b2v_inst|Mux15~5_combout\ & ( (\b2v_inst4|z[14]~8_combout\ & (\b2v_inst5|temp_address[9]~0_combout\ & ((!\b2v_inst|ALU_Opcode[1]~0_combout\) # (!\b2v_inst4|z[14]~5_combout\)))) ) ) ) # 
-- ( !\b2v_inst|z_control[1]~0_combout\ & ( \b2v_inst|Mux15~5_combout\ & ( (\b2v_inst4|z[14]~8_combout\ & (\b2v_inst5|temp_address[9]~0_combout\ & ((!\b2v_inst|ALU_Opcode[1]~0_combout\) # (!\b2v_inst4|z[14]~5_combout\)))) ) ) ) # ( 
-- \b2v_inst|z_control[1]~0_combout\ & ( !\b2v_inst|Mux15~5_combout\ & ( (\b2v_inst4|z[14]~8_combout\ & (\b2v_inst5|temp_address[9]~0_combout\ & ((!\b2v_inst|ALU_Opcode[1]~0_combout\) # (!\b2v_inst4|z[14]~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001000000000001100100000000000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_ALU_Opcode[1]~0_combout\,
	datab => \b2v_inst4|ALT_INV_z[14]~8_combout\,
	datac => \b2v_inst4|ALT_INV_z[14]~5_combout\,
	datad => \b2v_inst5|ALT_INV_temp_address[9]~0_combout\,
	datae => \b2v_inst|ALT_INV_z_control[1]~0_combout\,
	dataf => \b2v_inst|ALT_INV_Mux15~5_combout\,
	combout => \b2v_inst4|z[6]~15_combout\);

-- Location: FF_X31_Y3_N53
\b2v_inst4|regs_rtl_1_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst4|z[5]~40_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_1_bypass\(19));

-- Location: LABCELL_X29_Y3_N12
\b2v_inst4|z[15]~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[15]~71_combout\ = ( !\b2v_inst4|z[14]~9_combout\ & ( (!\b2v_inst4|z[14]~2_combout\ & (!\b2v_inst4|z[14]~47_combout\ & !\b2v_inst4|z[14]~50_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[14]~2_combout\,
	datab => \b2v_inst4|ALT_INV_z[14]~47_combout\,
	datac => \b2v_inst4|ALT_INV_z[14]~50_combout\,
	dataf => \b2v_inst4|ALT_INV_z[14]~9_combout\,
	combout => \b2v_inst4|z[15]~71_combout\);

-- Location: FF_X29_Y3_N32
\b2v_inst4|regs_rtl_1_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst4|z[10]~93_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_1_bypass\(14));

-- Location: LABCELL_X29_Y3_N45
\b2v_inst4|z[15]~91\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[15]~91_combout\ = ( !\b2v_inst4|z[14]~9_combout\ & ( (!\b2v_inst4|z[14]~2_combout\ & (!\b2v_inst4|z[14]~47_combout\ & !\b2v_inst4|z[14]~48_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[14]~2_combout\,
	datac => \b2v_inst4|ALT_INV_z[14]~47_combout\,
	datad => \b2v_inst4|ALT_INV_z[14]~48_combout\,
	dataf => \b2v_inst4|ALT_INV_z[14]~9_combout\,
	combout => \b2v_inst4|z[15]~91_combout\);

-- Location: FF_X29_Y3_N44
\b2v_inst4|regs_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst4|z[8]~95_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_0_bypass\(16));

-- Location: FF_X28_Y4_N26
\b2v_inst4|regs[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst4|z[6]~43_combout\,
	ena => \b2v_inst4|regs[10][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs[10][6]~q\);

-- Location: LABCELL_X30_Y3_N6
\b2v_inst7|ALU_in1[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|ALU_in1[6]~6_combout\ = ( \b2v_inst4|regs[10][6]~q\ & ( (!\b2v_inst3|temp_IR\(15) & (\b2v_inst3|temp_IR\(14) & (\b2v_inst3|IR_Op[6]~6_combout\))) # (\b2v_inst3|temp_IR\(15) & ((!\b2v_inst3|temp_IR\(14)) # ((\b2v_inst4|Mux0~8_combout\)))) ) ) # 
-- ( !\b2v_inst4|regs[10][6]~q\ & ( (\b2v_inst3|temp_IR\(14) & ((!\b2v_inst3|temp_IR\(15) & (\b2v_inst3|IR_Op[6]~6_combout\)) # (\b2v_inst3|temp_IR\(15) & ((\b2v_inst4|Mux0~8_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001101000110010101110100011001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|ALT_INV_temp_IR\(15),
	datab => \b2v_inst3|ALT_INV_temp_IR\(14),
	datac => \b2v_inst3|ALT_INV_IR_Op[6]~6_combout\,
	datad => \b2v_inst4|ALT_INV_Mux0~8_combout\,
	dataf => \b2v_inst4|ALT_INV_regs[10][6]~q\,
	combout => \b2v_inst7|ALU_in1[6]~6_combout\);

-- Location: LABCELL_X31_Y4_N48
\b2v_inst7|ALU_in2[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|ALU_in2[6]~6_combout\ = ( \b2v_inst4|Mux0~8_combout\ & ( (\b2v_inst4|Mux16~5_combout\) # (\b2v_inst|Mux2~0_combout\) ) ) # ( !\b2v_inst4|Mux0~8_combout\ & ( (!\b2v_inst|Mux2~0_combout\ & \b2v_inst4|Mux16~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|ALT_INV_Mux2~0_combout\,
	datad => \b2v_inst4|ALT_INV_Mux16~5_combout\,
	dataf => \b2v_inst4|ALT_INV_Mux0~8_combout\,
	combout => \b2v_inst7|ALU_in2[6]~6_combout\);

-- Location: FF_X27_Y3_N8
\b2v_inst4|regs[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst4|z[5]~40_combout\,
	ena => \b2v_inst4|regs[10][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs[10][5]~q\);

-- Location: LABCELL_X29_Y4_N3
\b2v_inst3|IR_Op[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst3|IR_Op[5]~5_combout\ = ( \b2v_inst|Selector4~0_combout\ & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(5) & ( (\b2v_inst|Selector5~1_combout\) # (\b2v_inst5|temp_address[9]~1_combout\) ) ) ) # ( 
-- !\b2v_inst|Selector4~0_combout\ & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(5) & ( ((\b2v_inst|Selector1~1_combout\ & (\b2v_inst5|temp_address[9]~1_combout\ & \b2v_inst|Mux5~0_combout\))) # (\b2v_inst|Selector5~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_Selector1~1_combout\,
	datab => \b2v_inst5|ALT_INV_temp_address[9]~1_combout\,
	datac => \b2v_inst|ALT_INV_Mux5~0_combout\,
	datad => \b2v_inst|ALT_INV_Selector5~1_combout\,
	datae => \b2v_inst|ALT_INV_Selector4~0_combout\,
	dataf => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	combout => \b2v_inst3|IR_Op[5]~5_combout\);

-- Location: LABCELL_X30_Y3_N9
\b2v_inst7|ALU_in1[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|ALU_in1[5]~5_combout\ = ( \b2v_inst3|IR_Op[5]~5_combout\ & ( (!\b2v_inst3|temp_IR\(15) & (\b2v_inst3|temp_IR\(14))) # (\b2v_inst3|temp_IR\(15) & ((!\b2v_inst3|temp_IR\(14) & ((\b2v_inst4|regs[10][5]~q\))) # (\b2v_inst3|temp_IR\(14) & 
-- (\b2v_inst4|Mux0~7_combout\)))) ) ) # ( !\b2v_inst3|IR_Op[5]~5_combout\ & ( (\b2v_inst3|temp_IR\(15) & ((!\b2v_inst3|temp_IR\(14) & ((\b2v_inst4|regs[10][5]~q\))) # (\b2v_inst3|temp_IR\(14) & (\b2v_inst4|Mux0~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010100100011011001110010001101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|ALT_INV_temp_IR\(15),
	datab => \b2v_inst3|ALT_INV_temp_IR\(14),
	datac => \b2v_inst4|ALT_INV_Mux0~7_combout\,
	datad => \b2v_inst4|ALT_INV_regs[10][5]~q\,
	dataf => \b2v_inst3|ALT_INV_IR_Op[5]~5_combout\,
	combout => \b2v_inst7|ALU_in1[5]~5_combout\);

-- Location: LABCELL_X31_Y3_N30
\b2v_inst7|ALU_in2[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|ALU_in2[5]~5_combout\ = ( \b2v_inst4|Mux0~7_combout\ & ( (\b2v_inst|Mux2~0_combout\) # (\b2v_inst4|Mux16~6_combout\) ) ) # ( !\b2v_inst4|Mux0~7_combout\ & ( (\b2v_inst4|Mux16~6_combout\ & !\b2v_inst|Mux2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst4|ALT_INV_Mux16~6_combout\,
	datad => \b2v_inst|ALT_INV_Mux2~0_combout\,
	dataf => \b2v_inst4|ALT_INV_Mux0~7_combout\,
	combout => \b2v_inst7|ALU_in2[5]~5_combout\);

-- Location: FF_X27_Y3_N37
\b2v_inst4|regs_rtl_1_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst4|z[4]~35_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_1_bypass\(20));

-- Location: IOIBUF_X4_Y0_N1
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: FF_X27_Y3_N53
\signal_registers|SIP_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \b2v_inst|load_sip~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \signal_registers|SIP_reg\(7));

-- Location: FF_X27_Y3_N34
\b2v_inst4|regs_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst4|z[7]~46_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_0_bypass\(17));

-- Location: FF_X30_Y2_N41
\b2v_inst4|regs_rtl_1_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst4|z[1]~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_1_bypass\(23));

-- Location: MLABCELL_X25_Y2_N36
\b2v_inst7|ALU_in2[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|ALU_in2[0]~0_combout\ = ( \b2v_inst4|Mux0~2_combout\ & ( (\b2v_inst4|Mux16~2_combout\) # (\b2v_inst|Mux2~0_combout\) ) ) # ( !\b2v_inst4|Mux0~2_combout\ & ( (!\b2v_inst|Mux2~0_combout\ & \b2v_inst4|Mux16~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|ALT_INV_Mux2~0_combout\,
	datad => \b2v_inst4|ALT_INV_Mux16~2_combout\,
	dataf => \b2v_inst4|ALT_INV_Mux0~2_combout\,
	combout => \b2v_inst7|ALU_in2[0]~0_combout\);

-- Location: FF_X28_Y4_N2
\b2v_inst4|regs[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst4|z[0]~13_combout\,
	ena => \b2v_inst4|regs[10][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs[10][0]~q\);

-- Location: MLABCELL_X28_Y4_N6
\b2v_inst7|ALU_in1[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|ALU_in1[0]~0_combout\ = ( \b2v_inst3|IR_Op[0]~0_combout\ & ( (!\b2v_inst3|temp_IR\(15)) # ((!\b2v_inst3|temp_IR\(14) & (\b2v_inst4|regs[10][0]~q\)) # (\b2v_inst3|temp_IR\(14) & ((\b2v_inst4|Mux0~2_combout\)))) ) ) # ( 
-- !\b2v_inst3|IR_Op[0]~0_combout\ & ( (!\b2v_inst3|temp_IR\(15) & (((!\b2v_inst3|temp_IR\(14))))) # (\b2v_inst3|temp_IR\(15) & ((!\b2v_inst3|temp_IR\(14) & (\b2v_inst4|regs[10][0]~q\)) # (\b2v_inst3|temp_IR\(14) & ((\b2v_inst4|Mux0~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110100000011110111011100111111011101000000111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_regs[10][0]~q\,
	datab => \b2v_inst3|ALT_INV_temp_IR\(15),
	datac => \b2v_inst4|ALT_INV_Mux0~2_combout\,
	datad => \b2v_inst3|ALT_INV_temp_IR\(14),
	datae => \b2v_inst3|ALT_INV_IR_Op[0]~0_combout\,
	combout => \b2v_inst7|ALU_in1[0]~0_combout\);

-- Location: MLABCELL_X28_Y4_N42
\b2v_inst|ALU_Opcode[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|ALU_Opcode[0]~1_combout\ = ( \b2v_inst|Mux6~0_combout\ & ( \b2v_inst|Equal1~0_combout\ & ( (\b2v_inst5|temp_address[9]~0_combout\ & ((!\b2v_inst3|temp_IR\(15)) # ((\b2v_inst3|temp_IR\(10) & \b2v_inst|Selector1~0_combout\)))) ) ) ) # ( 
-- !\b2v_inst|Mux6~0_combout\ & ( \b2v_inst|Equal1~0_combout\ & ( (\b2v_inst3|temp_IR\(10) & (\b2v_inst5|temp_address[9]~0_combout\ & (\b2v_inst|Selector1~0_combout\ & \b2v_inst3|temp_IR\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010011001100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|ALT_INV_temp_IR\(10),
	datab => \b2v_inst5|ALT_INV_temp_address[9]~0_combout\,
	datac => \b2v_inst|ALT_INV_Selector1~0_combout\,
	datad => \b2v_inst3|ALT_INV_temp_IR\(15),
	datae => \b2v_inst|ALT_INV_Mux6~0_combout\,
	dataf => \b2v_inst|ALT_INV_Equal1~0_combout\,
	combout => \b2v_inst|ALU_Opcode[0]~1_combout\);

-- Location: MLABCELL_X28_Y3_N0
\b2v_inst7|Add0~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|Add0~66_cout\ = CARRY(( (\b2v_inst|state.T2~q\ & (((\b2v_inst3|temp_IR\(14) & \b2v_inst4|z[14]~5_combout\)) # (\b2v_inst4|z[14]~6_combout\))) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[14]~6_combout\,
	datab => \b2v_inst|ALT_INV_state.T2~q\,
	datac => \b2v_inst3|ALT_INV_temp_IR\(14),
	datad => \b2v_inst4|ALT_INV_z[14]~5_combout\,
	cin => GND,
	cout => \b2v_inst7|Add0~66_cout\);

-- Location: MLABCELL_X28_Y3_N3
\b2v_inst7|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|Add0~1_sumout\ = SUM(( \b2v_inst7|ALU_in1[0]~0_combout\ ) + ( !\b2v_inst7|ALU_in2[0]~0_combout\ $ (((!\b2v_inst|ALU_Opcode[0]~1_combout\ & ((!\b2v_inst4|z[14]~6_combout\) # (!\b2v_inst|state.T2~q\))))) ) + ( \b2v_inst7|Add0~66_cout\ ))
-- \b2v_inst7|Add0~2\ = CARRY(( \b2v_inst7|ALU_in1[0]~0_combout\ ) + ( !\b2v_inst7|ALU_in2[0]~0_combout\ $ (((!\b2v_inst|ALU_Opcode[0]~1_combout\ & ((!\b2v_inst4|z[14]~6_combout\) # (!\b2v_inst|state.T2~q\))))) ) + ( \b2v_inst7|Add0~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000010000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[14]~6_combout\,
	datab => \b2v_inst|ALT_INV_state.T2~q\,
	datac => \b2v_inst7|ALT_INV_ALU_in2[0]~0_combout\,
	datad => \b2v_inst7|ALT_INV_ALU_in1[0]~0_combout\,
	dataf => \b2v_inst|ALT_INV_ALU_Opcode[0]~1_combout\,
	cin => \b2v_inst7|Add0~66_cout\,
	sumout => \b2v_inst7|Add0~1_sumout\,
	cout => \b2v_inst7|Add0~2\);

-- Location: FF_X27_Y3_N56
\b2v_inst4|regs_rtl_1_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst4|z[7]~46_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_1_bypass\(17));

-- Location: M10K_X26_Y5_N0
\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "regfile:b2v_inst4|altsyncram:regs_rtl_1|altsyncram_bio1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 40,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 40,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 16,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \b2v_inst|Selector5~3_combout\,
	portbre => VCC,
	portbaddrstall => \b2v_inst|ALT_INV_state.T0~_wirecell_combout\,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	portadatain => \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LABCELL_X31_Y3_N33
\b2v_inst4|Mux16~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux16~4_combout\ = ( \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a8\ & ( (!\b2v_inst4|Mux16~0_combout\) # ((!\b2v_inst4|Mux16~1_combout\) # (\b2v_inst4|regs_rtl_1_bypass\(17))) ) ) # ( !\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a8\ & ( 
-- (\b2v_inst4|Mux16~0_combout\ & (\b2v_inst4|regs_rtl_1_bypass\(17) & \b2v_inst4|Mux16~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010111111111101011111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux16~0_combout\,
	datac => \b2v_inst4|ALT_INV_regs_rtl_1_bypass\(17),
	datad => \b2v_inst4|ALT_INV_Mux16~1_combout\,
	dataf => \b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a8\,
	combout => \b2v_inst4|Mux16~4_combout\);

-- Location: LABCELL_X31_Y3_N9
\b2v_inst5|temp_address[7]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|temp_address[7]~11_combout\ = ( \b2v_inst4|Mux16~4_combout\ & ( (\b2v_inst4|Mux0~9_combout\) # (\b2v_inst5|temp_address[9]~3_combout\) ) ) # ( !\b2v_inst4|Mux16~4_combout\ & ( (!\b2v_inst5|temp_address[9]~3_combout\ & 
-- \b2v_inst4|Mux0~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ALT_INV_temp_address[9]~3_combout\,
	datac => \b2v_inst4|ALT_INV_Mux0~9_combout\,
	dataf => \b2v_inst4|ALT_INV_Mux16~4_combout\,
	combout => \b2v_inst5|temp_address[7]~11_combout\);

-- Location: LABCELL_X31_Y2_N9
\b2v_inst5|address_b_temp[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|address_b_temp\(7) = ( \b2v_inst5|address_b_temp\(7) & ( (!\b2v_inst5|temp_address[9]~2_combout\) # (\b2v_inst5|temp_address[7]~11_combout\) ) ) # ( !\b2v_inst5|address_b_temp\(7) & ( (\b2v_inst5|temp_address[9]~2_combout\ & 
-- \b2v_inst5|temp_address[7]~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|ALT_INV_temp_address[9]~2_combout\,
	datac => \b2v_inst5|ALT_INV_temp_address[7]~11_combout\,
	dataf => \b2v_inst5|ALT_INV_address_b_temp\(7),
	combout => \b2v_inst5|address_b_temp\(7));

-- Location: LABCELL_X31_Y2_N30
\b2v_inst5|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add0~1_sumout\ = SUM(( \b2v_inst5|address_b_temp\(2) ) + ( VCC ) + ( !VCC ))
-- \b2v_inst5|Add0~2\ = CARRY(( \b2v_inst5|address_b_temp\(2) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|ALT_INV_address_b_temp\(2),
	cin => GND,
	sumout => \b2v_inst5|Add0~1_sumout\,
	cout => \b2v_inst5|Add0~2\);

-- Location: LABCELL_X31_Y2_N33
\b2v_inst5|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add0~5_sumout\ = SUM(( \b2v_inst5|address_b_temp\(3) ) + ( GND ) + ( \b2v_inst5|Add0~2\ ))
-- \b2v_inst5|Add0~6\ = CARRY(( \b2v_inst5|address_b_temp\(3) ) + ( GND ) + ( \b2v_inst5|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst5|ALT_INV_address_b_temp\(3),
	cin => \b2v_inst5|Add0~2\,
	sumout => \b2v_inst5|Add0~5_sumout\,
	cout => \b2v_inst5|Add0~6\);

-- Location: LABCELL_X31_Y2_N36
\b2v_inst5|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add0~9_sumout\ = SUM(( \b2v_inst5|address_b_temp\(4) ) + ( GND ) + ( \b2v_inst5|Add0~6\ ))
-- \b2v_inst5|Add0~10\ = CARRY(( \b2v_inst5|address_b_temp\(4) ) + ( GND ) + ( \b2v_inst5|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|ALT_INV_address_b_temp\(4),
	cin => \b2v_inst5|Add0~6\,
	sumout => \b2v_inst5|Add0~9_sumout\,
	cout => \b2v_inst5|Add0~10\);

-- Location: LABCELL_X31_Y2_N39
\b2v_inst5|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add0~13_sumout\ = SUM(( \b2v_inst5|address_b_temp\(5) ) + ( VCC ) + ( \b2v_inst5|Add0~10\ ))
-- \b2v_inst5|Add0~14\ = CARRY(( \b2v_inst5|address_b_temp\(5) ) + ( VCC ) + ( \b2v_inst5|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst5|ALT_INV_address_b_temp\(5),
	cin => \b2v_inst5|Add0~10\,
	sumout => \b2v_inst5|Add0~13_sumout\,
	cout => \b2v_inst5|Add0~14\);

-- Location: LABCELL_X31_Y2_N42
\b2v_inst5|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add0~17_sumout\ = SUM(( \b2v_inst5|address_b_temp\(6) ) + ( VCC ) + ( \b2v_inst5|Add0~14\ ))
-- \b2v_inst5|Add0~18\ = CARRY(( \b2v_inst5|address_b_temp\(6) ) + ( VCC ) + ( \b2v_inst5|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|ALT_INV_address_b_temp\(6),
	cin => \b2v_inst5|Add0~14\,
	sumout => \b2v_inst5|Add0~17_sumout\,
	cout => \b2v_inst5|Add0~18\);

-- Location: LABCELL_X31_Y2_N45
\b2v_inst5|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add0~21_sumout\ = SUM(( \b2v_inst5|address_b_temp\(7) ) + ( GND ) + ( \b2v_inst5|Add0~18\ ))
-- \b2v_inst5|Add0~22\ = CARRY(( \b2v_inst5|address_b_temp\(7) ) + ( GND ) + ( \b2v_inst5|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ALT_INV_address_b_temp\(7),
	cin => \b2v_inst5|Add0~18\,
	sumout => \b2v_inst5|Add0~21_sumout\,
	cout => \b2v_inst5|Add0~22\);

-- Location: FF_X29_Y3_N11
\b2v_inst4|regs_rtl_1_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst4|z[8]~95_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_1_bypass\(16));

-- Location: LABCELL_X31_Y3_N42
\b2v_inst4|Mux16~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux16~7_combout\ = (\b2v_inst4|Mux16~0_combout\ & \b2v_inst4|Mux16~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst4|ALT_INV_Mux16~0_combout\,
	datad => \b2v_inst4|ALT_INV_Mux16~1_combout\,
	combout => \b2v_inst4|Mux16~7_combout\);

-- Location: LABCELL_X29_Y3_N39
\b2v_inst4|Mux16~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux16~18_combout\ = ( \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a7\ & ( (!\b2v_inst4|Mux16~7_combout\) # (\b2v_inst4|regs_rtl_1_bypass\(16)) ) ) # ( !\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a7\ & ( (\b2v_inst4|regs_rtl_1_bypass\(16) 
-- & \b2v_inst4|Mux16~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst4|ALT_INV_regs_rtl_1_bypass\(16),
	datad => \b2v_inst4|ALT_INV_Mux16~7_combout\,
	dataf => \b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a7\,
	combout => \b2v_inst4|Mux16~18_combout\);

-- Location: LABCELL_X30_Y2_N12
\b2v_inst5|temp_address[8]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|temp_address[8]~12_combout\ = ( \b2v_inst4|Mux16~18_combout\ & ( (\b2v_inst4|Mux0~18_combout\) # (\b2v_inst5|temp_address[9]~3_combout\) ) ) # ( !\b2v_inst4|Mux16~18_combout\ & ( (!\b2v_inst5|temp_address[9]~3_combout\ & 
-- \b2v_inst4|Mux0~18_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|ALT_INV_temp_address[9]~3_combout\,
	datad => \b2v_inst4|ALT_INV_Mux0~18_combout\,
	dataf => \b2v_inst4|ALT_INV_Mux16~18_combout\,
	combout => \b2v_inst5|temp_address[8]~12_combout\);

-- Location: LABCELL_X31_Y2_N3
\b2v_inst5|address_b_temp[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|address_b_temp\(8) = ( \b2v_inst5|temp_address[9]~2_combout\ & ( \b2v_inst5|temp_address[8]~12_combout\ ) ) # ( !\b2v_inst5|temp_address[9]~2_combout\ & ( \b2v_inst5|address_b_temp\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ALT_INV_temp_address[8]~12_combout\,
	datad => \b2v_inst5|ALT_INV_address_b_temp\(8),
	dataf => \b2v_inst5|ALT_INV_temp_address[9]~2_combout\,
	combout => \b2v_inst5|address_b_temp\(8));

-- Location: LABCELL_X31_Y2_N48
\b2v_inst5|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add0~25_sumout\ = SUM(( \b2v_inst5|address_b_temp\(8) ) + ( GND ) + ( \b2v_inst5|Add0~22\ ))
-- \b2v_inst5|Add0~26\ = CARRY(( \b2v_inst5|address_b_temp\(8) ) + ( GND ) + ( \b2v_inst5|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst5|ALT_INV_address_b_temp\(8),
	cin => \b2v_inst5|Add0~22\,
	sumout => \b2v_inst5|Add0~25_sumout\,
	cout => \b2v_inst5|Add0~26\);

-- Location: FF_X29_Y5_N58
\b2v_inst4|regs_rtl_1_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst4|z[9]~90_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_1_bypass\(15));

-- Location: LABCELL_X30_Y5_N45
\b2v_inst4|Mux16~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux16~14_combout\ = ( \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a6\ & ( ((!\b2v_inst4|Mux16~0_combout\) # (!\b2v_inst4|Mux16~1_combout\)) # (\b2v_inst4|regs_rtl_1_bypass\(15)) ) ) # ( !\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a6\ & ( 
-- (\b2v_inst4|regs_rtl_1_bypass\(15) & (\b2v_inst4|Mux16~0_combout\ & \b2v_inst4|Mux16~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001111111111111100111111111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst4|ALT_INV_regs_rtl_1_bypass\(15),
	datac => \b2v_inst4|ALT_INV_Mux16~0_combout\,
	datad => \b2v_inst4|ALT_INV_Mux16~1_combout\,
	dataf => \b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a6\,
	combout => \b2v_inst4|Mux16~14_combout\);

-- Location: LABCELL_X31_Y4_N45
\b2v_inst5|temp_address[9]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|temp_address[9]~13_combout\ = ( \b2v_inst4|Mux0~14_combout\ & ( \b2v_inst5|temp_address[9]~3_combout\ & ( \b2v_inst4|Mux16~14_combout\ ) ) ) # ( !\b2v_inst4|Mux0~14_combout\ & ( \b2v_inst5|temp_address[9]~3_combout\ & ( 
-- \b2v_inst4|Mux16~14_combout\ ) ) ) # ( \b2v_inst4|Mux0~14_combout\ & ( !\b2v_inst5|temp_address[9]~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst4|ALT_INV_Mux16~14_combout\,
	datae => \b2v_inst4|ALT_INV_Mux0~14_combout\,
	dataf => \b2v_inst5|ALT_INV_temp_address[9]~3_combout\,
	combout => \b2v_inst5|temp_address[9]~13_combout\);

-- Location: LABCELL_X31_Y2_N18
\b2v_inst5|address_b_temp[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|address_b_temp\(9) = ( \b2v_inst5|temp_address[9]~13_combout\ & ( (\b2v_inst5|address_b_temp\(9)) # (\b2v_inst5|temp_address[9]~2_combout\) ) ) # ( !\b2v_inst5|temp_address[9]~13_combout\ & ( (!\b2v_inst5|temp_address[9]~2_combout\ & 
-- \b2v_inst5|address_b_temp\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|ALT_INV_temp_address[9]~2_combout\,
	datac => \b2v_inst5|ALT_INV_address_b_temp\(9),
	dataf => \b2v_inst5|ALT_INV_temp_address[9]~13_combout\,
	combout => \b2v_inst5|address_b_temp\(9));

-- Location: LABCELL_X31_Y2_N51
\b2v_inst5|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add0~29_sumout\ = SUM(( \b2v_inst5|address_b_temp\(9) ) + ( GND ) + ( \b2v_inst5|Add0~26\ ))
-- \b2v_inst5|Add0~30\ = CARRY(( \b2v_inst5|address_b_temp\(9) ) + ( GND ) + ( \b2v_inst5|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst5|ALT_INV_address_b_temp\(9),
	cin => \b2v_inst5|Add0~26\,
	sumout => \b2v_inst5|Add0~29_sumout\,
	cout => \b2v_inst5|Add0~30\);

-- Location: FF_X29_Y3_N14
\b2v_inst4|regs_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst4|z[10]~93_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_0_bypass\(14));

-- Location: M10K_X26_Y3_N0
\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "regfile:b2v_inst4|altsyncram:regs_rtl_0|altsyncram_bio1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 40,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 40,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 16,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \b2v_inst|Selector5~3_combout\,
	portbre => VCC,
	portbaddrstall => \b2v_inst|ALT_INV_state.T0~_wirecell_combout\,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	portadatain => \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LABCELL_X30_Y4_N12
\b2v_inst4|Mux0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux0~16_combout\ = ( \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a5\ & ( (!\b2v_inst4|Mux0~1_combout\) # ((!\b2v_inst4|Mux0~0_combout\) # (\b2v_inst4|regs_rtl_0_bypass\(14))) ) ) # ( !\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a5\ & ( 
-- (\b2v_inst4|Mux0~1_combout\ & (\b2v_inst4|regs_rtl_0_bypass\(14) & \b2v_inst4|Mux0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010111111111101011111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux0~1_combout\,
	datac => \b2v_inst4|ALT_INV_regs_rtl_0_bypass\(14),
	datad => \b2v_inst4|ALT_INV_Mux0~0_combout\,
	dataf => \b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a5\,
	combout => \b2v_inst4|Mux0~16_combout\);

-- Location: LABCELL_X31_Y4_N33
\b2v_inst5|temp_address[10]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|temp_address[10]~14_combout\ = ( \b2v_inst4|Mux0~16_combout\ & ( \b2v_inst5|temp_address[9]~3_combout\ & ( \b2v_inst4|Mux16~16_combout\ ) ) ) # ( !\b2v_inst4|Mux0~16_combout\ & ( \b2v_inst5|temp_address[9]~3_combout\ & ( 
-- \b2v_inst4|Mux16~16_combout\ ) ) ) # ( \b2v_inst4|Mux0~16_combout\ & ( !\b2v_inst5|temp_address[9]~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst4|ALT_INV_Mux16~16_combout\,
	datae => \b2v_inst4|ALT_INV_Mux0~16_combout\,
	dataf => \b2v_inst5|ALT_INV_temp_address[9]~3_combout\,
	combout => \b2v_inst5|temp_address[10]~14_combout\);

-- Location: LABCELL_X31_Y4_N54
\b2v_inst5|address_b_temp[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|address_b_temp\(10) = ( \b2v_inst5|temp_address[10]~14_combout\ & ( (\b2v_inst5|temp_address[9]~2_combout\) # (\b2v_inst5|address_b_temp\(10)) ) ) # ( !\b2v_inst5|temp_address[10]~14_combout\ & ( (\b2v_inst5|address_b_temp\(10) & 
-- !\b2v_inst5|temp_address[9]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|ALT_INV_address_b_temp\(10),
	datad => \b2v_inst5|ALT_INV_temp_address[9]~2_combout\,
	dataf => \b2v_inst5|ALT_INV_temp_address[10]~14_combout\,
	combout => \b2v_inst5|address_b_temp\(10));

-- Location: LABCELL_X31_Y2_N54
\b2v_inst5|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add0~33_sumout\ = SUM(( \b2v_inst5|address_b_temp\(10) ) + ( GND ) + ( \b2v_inst5|Add0~30\ ))
-- \b2v_inst5|Add0~34\ = CARRY(( \b2v_inst5|address_b_temp\(10) ) + ( GND ) + ( \b2v_inst5|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|ALT_INV_address_b_temp\(10),
	cin => \b2v_inst5|Add0~30\,
	sumout => \b2v_inst5|Add0~33_sumout\,
	cout => \b2v_inst5|Add0~34\);

-- Location: FF_X29_Y1_N23
\b2v_inst4|regs_rtl_1_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst4|z[11]~85_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_1_bypass\(13));

-- Location: LABCELL_X29_Y1_N21
\b2v_inst4|Mux16~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux16~15_combout\ = ( \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a4\ & ( (!\b2v_inst4|Mux16~1_combout\) # ((!\b2v_inst4|Mux16~0_combout\) # (\b2v_inst4|regs_rtl_1_bypass\(13))) ) ) # ( !\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a4\ & ( 
-- (\b2v_inst4|Mux16~1_combout\ & (\b2v_inst4|Mux16~0_combout\ & \b2v_inst4|regs_rtl_1_bypass\(13))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010111111010111111111111101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux16~1_combout\,
	datac => \b2v_inst4|ALT_INV_Mux16~0_combout\,
	datad => \b2v_inst4|ALT_INV_regs_rtl_1_bypass\(13),
	dataf => \b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a4\,
	combout => \b2v_inst4|Mux16~15_combout\);

-- Location: LABCELL_X30_Y1_N24
\b2v_inst5|temp_address[11]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|temp_address[11]~15_combout\ = ( \b2v_inst4|Mux16~15_combout\ & ( \b2v_inst4|Mux0~15_combout\ ) ) # ( !\b2v_inst4|Mux16~15_combout\ & ( \b2v_inst4|Mux0~15_combout\ & ( !\b2v_inst5|temp_address[9]~3_combout\ ) ) ) # ( 
-- \b2v_inst4|Mux16~15_combout\ & ( !\b2v_inst4|Mux0~15_combout\ & ( \b2v_inst5|temp_address[9]~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010110101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ALT_INV_temp_address[9]~3_combout\,
	datae => \b2v_inst4|ALT_INV_Mux16~15_combout\,
	dataf => \b2v_inst4|ALT_INV_Mux0~15_combout\,
	combout => \b2v_inst5|temp_address[11]~15_combout\);

-- Location: LABCELL_X30_Y1_N54
\b2v_inst5|address_b_temp[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|address_b_temp\(11) = ( \b2v_inst5|temp_address[9]~2_combout\ & ( \b2v_inst5|address_b_temp\(11) & ( \b2v_inst5|temp_address[11]~15_combout\ ) ) ) # ( !\b2v_inst5|temp_address[9]~2_combout\ & ( \b2v_inst5|address_b_temp\(11) ) ) # ( 
-- \b2v_inst5|temp_address[9]~2_combout\ & ( !\b2v_inst5|address_b_temp\(11) & ( \b2v_inst5|temp_address[11]~15_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|ALT_INV_temp_address[11]~15_combout\,
	datae => \b2v_inst5|ALT_INV_temp_address[9]~2_combout\,
	dataf => \b2v_inst5|ALT_INV_address_b_temp\(11),
	combout => \b2v_inst5|address_b_temp\(11));

-- Location: LABCELL_X31_Y2_N57
\b2v_inst5|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add0~37_sumout\ = SUM(( \b2v_inst5|address_b_temp\(11) ) + ( GND ) + ( \b2v_inst5|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ALT_INV_address_b_temp\(11),
	cin => \b2v_inst5|Add0~34\,
	sumout => \b2v_inst5|Add0~37_sumout\);

-- Location: M10K_X26_Y2_N0
\b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "C:\Users\epik990\Documents\compsys701\testing.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memory_interface:b2v_inst5|memory_block:memory_test|altsyncram:altsyncram_component|altsyncram_b274:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 12,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => GND,
	portbre => VCC,
	clk0 => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	portadatain => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portbdatain => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\,
	portaaddr => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\,
	portbdataout => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: MLABCELL_X28_Y4_N33
\b2v_inst4|z[0]~104\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[0]~104_combout\ = ( \b2v_inst|Selector5~0_combout\ & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(0) ) ) # ( !\b2v_inst|Selector5~0_combout\ & ( \b2v_inst3|IR_Op[0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	datad => \b2v_inst3|ALT_INV_IR_Op[0]~0_combout\,
	dataf => \b2v_inst|ALT_INV_Selector5~0_combout\,
	combout => \b2v_inst4|z[0]~104_combout\);

-- Location: MLABCELL_X28_Y4_N12
\b2v_inst4|z[0]~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[0]~121_combout\ = ( !\b2v_inst|z_control[1]~1_combout\ & ( (((\b2v_inst4|z[0]~104_combout\))) ) ) # ( \b2v_inst|z_control[1]~1_combout\ & ( (!\b2v_inst4|z[14]~7_combout\ & ((!\b2v_inst4|z[14]~8_combout\ & (\b2v_inst7|Add0~1_sumout\)) # 
-- (\b2v_inst4|z[14]~8_combout\ & (((\b2v_inst7|ALU_in2[0]~0_combout\ & \b2v_inst7|ALU_in1[0]~0_combout\)))))) # (\b2v_inst4|z[14]~7_combout\ & (((!\b2v_inst4|z[14]~8_combout\ & ((\b2v_inst7|ALU_in1[0]~0_combout\) # (\b2v_inst7|ALU_in2[0]~0_combout\)))))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111010101010011111100001111000011110000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|ALT_INV_Add0~1_sumout\,
	datab => \b2v_inst7|ALT_INV_ALU_in2[0]~0_combout\,
	datac => \b2v_inst7|ALT_INV_ALU_in1[0]~0_combout\,
	datad => \b2v_inst4|ALT_INV_z[14]~7_combout\,
	datae => \b2v_inst|ALT_INV_z_control[1]~1_combout\,
	dataf => \b2v_inst4|ALT_INV_z[14]~8_combout\,
	datag => \b2v_inst4|ALT_INV_z[0]~104_combout\,
	combout => \b2v_inst4|z[0]~121_combout\);

-- Location: IOIBUF_X12_Y0_N18
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X28_Y4_N38
\signal_registers|SIP_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \b2v_inst|load_sip~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \signal_registers|SIP_reg\(0));

-- Location: MLABCELL_X28_Y4_N36
\b2v_inst4|z[0]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[0]~12_combout\ = ( \signal_registers|SIP_reg\(0) & ( \b2v_inst4|Mux0~2_combout\ & ( (((!\b2v_inst4|z[5]~4_combout\ & \b2v_inst4|z[5]~11_combout\)) # (\b2v_inst4|z[14]~2_combout\)) # (\b2v_inst4|z[14]~9_combout\) ) ) ) # ( 
-- !\signal_registers|SIP_reg\(0) & ( \b2v_inst4|Mux0~2_combout\ & ( (\b2v_inst4|z[14]~2_combout\) # (\b2v_inst4|z[14]~9_combout\) ) ) ) # ( \signal_registers|SIP_reg\(0) & ( !\b2v_inst4|Mux0~2_combout\ & ( (!\b2v_inst4|z[5]~4_combout\ & 
-- (!\b2v_inst4|z[14]~9_combout\ & (\b2v_inst4|z[5]~11_combout\ & !\b2v_inst4|z[14]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000110011111111110011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[5]~4_combout\,
	datab => \b2v_inst4|ALT_INV_z[14]~9_combout\,
	datac => \b2v_inst4|ALT_INV_z[5]~11_combout\,
	datad => \b2v_inst4|ALT_INV_z[14]~2_combout\,
	datae => \signal_registers|ALT_INV_SIP_reg\(0),
	dataf => \b2v_inst4|ALT_INV_Mux0~2_combout\,
	combout => \b2v_inst4|z[0]~12_combout\);

-- Location: MLABCELL_X28_Y4_N0
\b2v_inst4|z[0]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[0]~13_combout\ = ( \b2v_inst4|Mux16~2_combout\ & ( \b2v_inst4|z[14]~3_combout\ & ( ((\b2v_inst4|z[1]~10_combout\ & ((\b2v_inst4|z[5]~4_combout\) # (\b2v_inst4|z[0]~121_combout\)))) # (\b2v_inst4|z[0]~12_combout\) ) ) ) # ( 
-- !\b2v_inst4|Mux16~2_combout\ & ( \b2v_inst4|z[14]~3_combout\ & ( ((\b2v_inst4|z[1]~10_combout\ & (\b2v_inst4|z[0]~121_combout\ & !\b2v_inst4|z[5]~4_combout\))) # (\b2v_inst4|z[0]~12_combout\) ) ) ) # ( \b2v_inst4|Mux16~2_combout\ & ( 
-- !\b2v_inst4|z[14]~3_combout\ & ( ((\b2v_inst4|z[1]~10_combout\ & \b2v_inst4|z[0]~121_combout\)) # (\b2v_inst4|z[0]~12_combout\) ) ) ) # ( !\b2v_inst4|Mux16~2_combout\ & ( !\b2v_inst4|z[14]~3_combout\ & ( ((\b2v_inst4|z[1]~10_combout\ & 
-- \b2v_inst4|z[0]~121_combout\)) # (\b2v_inst4|z[0]~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111111111000100011111111100010000111111110001010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[1]~10_combout\,
	datab => \b2v_inst4|ALT_INV_z[0]~121_combout\,
	datac => \b2v_inst4|ALT_INV_z[5]~4_combout\,
	datad => \b2v_inst4|ALT_INV_z[0]~12_combout\,
	datae => \b2v_inst4|ALT_INV_Mux16~2_combout\,
	dataf => \b2v_inst4|ALT_INV_z[14]~3_combout\,
	combout => \b2v_inst4|z[0]~13_combout\);

-- Location: LABCELL_X30_Y2_N39
\b2v_inst4|Mux16~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux16~8_combout\ = ( \b2v_inst4|regs_rtl_1_bypass\(23) & ( \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a14\ ) ) # ( !\b2v_inst4|regs_rtl_1_bypass\(23) & ( \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a14\ & ( (!\b2v_inst4|Mux16~0_combout\) 
-- # (!\b2v_inst4|Mux16~1_combout\) ) ) ) # ( \b2v_inst4|regs_rtl_1_bypass\(23) & ( !\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a14\ & ( (\b2v_inst4|Mux16~0_combout\ & \b2v_inst4|Mux16~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001111111100111111001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst4|ALT_INV_Mux16~0_combout\,
	datac => \b2v_inst4|ALT_INV_Mux16~1_combout\,
	datae => \b2v_inst4|ALT_INV_regs_rtl_1_bypass\(23),
	dataf => \b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a14\,
	combout => \b2v_inst4|Mux16~8_combout\);

-- Location: LABCELL_X30_Y2_N15
\b2v_inst7|ALU_in2[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|ALU_in2[1]~1_combout\ = ( \b2v_inst4|Mux0~3_combout\ & ( (\b2v_inst|Mux2~0_combout\) # (\b2v_inst4|Mux16~8_combout\) ) ) # ( !\b2v_inst4|Mux0~3_combout\ & ( (\b2v_inst4|Mux16~8_combout\ & !\b2v_inst|Mux2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst4|ALT_INV_Mux16~8_combout\,
	datad => \b2v_inst|ALT_INV_Mux2~0_combout\,
	dataf => \b2v_inst4|ALT_INV_Mux0~3_combout\,
	combout => \b2v_inst7|ALU_in2[1]~1_combout\);

-- Location: FF_X30_Y2_N8
\b2v_inst4|regs[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst4|z[1]~20_combout\,
	ena => \b2v_inst4|regs[10][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs[10][1]~q\);

-- Location: LABCELL_X30_Y4_N0
\b2v_inst7|ALU_in1[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|ALU_in1[1]~1_combout\ = ( \b2v_inst3|IR_Op[1]~1_combout\ & ( (!\b2v_inst3|temp_IR\(14) & (((\b2v_inst4|regs[10][1]~q\ & \b2v_inst3|temp_IR\(15))))) # (\b2v_inst3|temp_IR\(14) & (((!\b2v_inst3|temp_IR\(15))) # (\b2v_inst4|Mux0~3_combout\))) ) ) 
-- # ( !\b2v_inst3|IR_Op[1]~1_combout\ & ( (\b2v_inst3|temp_IR\(15) & ((!\b2v_inst3|temp_IR\(14) & ((\b2v_inst4|regs[10][1]~q\))) # (\b2v_inst3|temp_IR\(14) & (\b2v_inst4|Mux0~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101000000000001110100110011000111010011001100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux0~3_combout\,
	datab => \b2v_inst3|ALT_INV_temp_IR\(14),
	datac => \b2v_inst4|ALT_INV_regs[10][1]~q\,
	datad => \b2v_inst3|ALT_INV_temp_IR\(15),
	dataf => \b2v_inst3|ALT_INV_IR_Op[1]~1_combout\,
	combout => \b2v_inst7|ALU_in1[1]~1_combout\);

-- Location: MLABCELL_X28_Y3_N6
\b2v_inst7|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|Add0~5_sumout\ = SUM(( !\b2v_inst7|ALU_in2[1]~1_combout\ $ (((!\b2v_inst|ALU_Opcode[1]~0_combout\ & ((!\b2v_inst5|temp_address[9]~0_combout\) # (!\b2v_inst4|z[14]~5_combout\))))) ) + ( \b2v_inst7|ALU_in1[1]~1_combout\ ) + ( \b2v_inst7|Add0~2\ 
-- ))
-- \b2v_inst7|Add0~6\ = CARRY(( !\b2v_inst7|ALU_in2[1]~1_combout\ $ (((!\b2v_inst|ALU_Opcode[1]~0_combout\ & ((!\b2v_inst5|temp_address[9]~0_combout\) # (!\b2v_inst4|z[14]~5_combout\))))) ) + ( \b2v_inst7|ALU_in1[1]~1_combout\ ) + ( \b2v_inst7|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001111011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ALT_INV_temp_address[9]~0_combout\,
	datab => \b2v_inst4|ALT_INV_z[14]~5_combout\,
	datac => \b2v_inst7|ALT_INV_ALU_in2[1]~1_combout\,
	datad => \b2v_inst|ALT_INV_ALU_Opcode[1]~0_combout\,
	dataf => \b2v_inst7|ALT_INV_ALU_in1[1]~1_combout\,
	cin => \b2v_inst7|Add0~2\,
	sumout => \b2v_inst7|Add0~5_sumout\,
	cout => \b2v_inst7|Add0~6\);

-- Location: MLABCELL_X28_Y2_N3
\b2v_inst4|z[6]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[6]~14_combout\ = ( !\b2v_inst4|z[14]~8_combout\ & ( \b2v_inst|z_control[1]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|ALT_INV_z_control[1]~1_combout\,
	dataf => \b2v_inst4|ALT_INV_z[14]~8_combout\,
	combout => \b2v_inst4|z[6]~14_combout\);

-- Location: LABCELL_X30_Y2_N48
\b2v_inst4|z[1]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[1]~16_combout\ = ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(1) & ( \b2v_inst3|temp_IR\(14) & ( ((\b2v_inst|state.T2~q\ & ((!\b2v_inst|Mux15~4_combout\) # (\b2v_inst|Mux15~1_combout\)))) # 
-- (\b2v_inst3|IR_Op[1]~1_combout\) ) ) ) # ( !\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(1) & ( \b2v_inst3|temp_IR\(14) & ( (\b2v_inst3|IR_Op[1]~1_combout\ & ((!\b2v_inst|state.T2~q\) # ((!\b2v_inst|Mux15~1_combout\ & 
-- \b2v_inst|Mux15~4_combout\)))) ) ) ) # ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(1) & ( !\b2v_inst3|temp_IR\(14) & ( \b2v_inst3|IR_Op[1]~1_combout\ ) ) ) # ( !\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(1) & ( 
-- !\b2v_inst3|temp_IR\(14) & ( \b2v_inst3|IR_Op[1]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011000000100011001111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_Mux15~1_combout\,
	datab => \b2v_inst3|ALT_INV_IR_Op[1]~1_combout\,
	datac => \b2v_inst|ALT_INV_Mux15~4_combout\,
	datad => \b2v_inst|ALT_INV_state.T2~q\,
	datae => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(1),
	dataf => \b2v_inst3|ALT_INV_temp_IR\(14),
	combout => \b2v_inst4|z[1]~16_combout\);

-- Location: LABCELL_X30_Y2_N30
\b2v_inst4|z[1]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[1]~17_combout\ = ( \b2v_inst7|ALU_in1[1]~1_combout\ & ( \b2v_inst|z_control[1]~1_combout\ & ( (\b2v_inst4|z[6]~15_combout\ & \b2v_inst7|ALU_in2[1]~1_combout\) ) ) ) # ( \b2v_inst7|ALU_in1[1]~1_combout\ & ( !\b2v_inst|z_control[1]~1_combout\ & 
-- ( ((\b2v_inst4|z[6]~15_combout\ & \b2v_inst7|ALU_in2[1]~1_combout\)) # (\b2v_inst4|z[1]~16_combout\) ) ) ) # ( !\b2v_inst7|ALU_in1[1]~1_combout\ & ( !\b2v_inst|z_control[1]~1_combout\ & ( \b2v_inst4|z[1]~16_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011111100000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst4|ALT_INV_z[1]~16_combout\,
	datac => \b2v_inst4|ALT_INV_z[6]~15_combout\,
	datad => \b2v_inst7|ALT_INV_ALU_in2[1]~1_combout\,
	datae => \b2v_inst7|ALT_INV_ALU_in1[1]~1_combout\,
	dataf => \b2v_inst|ALT_INV_z_control[1]~1_combout\,
	combout => \b2v_inst4|z[1]~17_combout\);

-- Location: LABCELL_X30_Y2_N54
\b2v_inst4|z[1]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[1]~18_combout\ = ( \b2v_inst7|ALU_in1[1]~1_combout\ & ( !\b2v_inst4|z[1]~17_combout\ & ( (!\b2v_inst4|z[6]~14_combout\) # ((!\b2v_inst4|z[14]~7_combout\ & !\b2v_inst7|Add0~5_sumout\)) ) ) ) # ( !\b2v_inst7|ALU_in1[1]~1_combout\ & ( 
-- !\b2v_inst4|z[1]~17_combout\ & ( (!\b2v_inst4|z[6]~14_combout\) # ((!\b2v_inst4|z[14]~7_combout\ & (!\b2v_inst7|Add0~5_sumout\)) # (\b2v_inst4|z[14]~7_combout\ & ((!\b2v_inst7|ALU_in2[1]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111111000111110001111100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[14]~7_combout\,
	datab => \b2v_inst7|ALT_INV_Add0~5_sumout\,
	datac => \b2v_inst4|ALT_INV_z[6]~14_combout\,
	datad => \b2v_inst7|ALT_INV_ALU_in2[1]~1_combout\,
	datae => \b2v_inst7|ALT_INV_ALU_in1[1]~1_combout\,
	dataf => \b2v_inst4|ALT_INV_z[1]~17_combout\,
	combout => \b2v_inst4|z[1]~18_combout\);

-- Location: IOIBUF_X16_Y0_N1
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: FF_X27_Y2_N7
\signal_registers|SIP_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \b2v_inst|load_sip~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \signal_registers|SIP_reg\(1));

-- Location: MLABCELL_X28_Y2_N57
\b2v_inst4|z[1]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[1]~19_combout\ = ( \b2v_inst4|z[5]~4_combout\ & ( \signal_registers|SIP_reg\(1) & ( (\b2v_inst4|Mux0~3_combout\ & ((\b2v_inst4|z[14]~2_combout\) # (\b2v_inst4|z[14]~9_combout\))) ) ) ) # ( !\b2v_inst4|z[5]~4_combout\ & ( 
-- \signal_registers|SIP_reg\(1) & ( (!\b2v_inst4|z[14]~9_combout\ & ((!\b2v_inst4|z[14]~2_combout\ & (\b2v_inst4|z[5]~11_combout\)) # (\b2v_inst4|z[14]~2_combout\ & ((\b2v_inst4|Mux0~3_combout\))))) # (\b2v_inst4|z[14]~9_combout\ & 
-- (((\b2v_inst4|Mux0~3_combout\)))) ) ) ) # ( \b2v_inst4|z[5]~4_combout\ & ( !\signal_registers|SIP_reg\(1) & ( (\b2v_inst4|Mux0~3_combout\ & ((\b2v_inst4|z[14]~2_combout\) # (\b2v_inst4|z[14]~9_combout\))) ) ) ) # ( !\b2v_inst4|z[5]~4_combout\ & ( 
-- !\signal_registers|SIP_reg\(1) & ( (\b2v_inst4|Mux0~3_combout\ & ((\b2v_inst4|z[14]~2_combout\) # (\b2v_inst4|z[14]~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011100001000011111110000000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[14]~9_combout\,
	datab => \b2v_inst4|ALT_INV_z[14]~2_combout\,
	datac => \b2v_inst4|ALT_INV_z[5]~11_combout\,
	datad => \b2v_inst4|ALT_INV_Mux0~3_combout\,
	datae => \b2v_inst4|ALT_INV_z[5]~4_combout\,
	dataf => \signal_registers|ALT_INV_SIP_reg\(1),
	combout => \b2v_inst4|z[1]~19_combout\);

-- Location: LABCELL_X30_Y2_N6
\b2v_inst4|z[1]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[1]~20_combout\ = ( \b2v_inst4|z[5]~4_combout\ & ( \b2v_inst4|Mux16~8_combout\ & ( ((\b2v_inst4|z[1]~10_combout\ & ((!\b2v_inst4|z[1]~18_combout\) # (\b2v_inst4|z[14]~3_combout\)))) # (\b2v_inst4|z[1]~19_combout\) ) ) ) # ( 
-- !\b2v_inst4|z[5]~4_combout\ & ( \b2v_inst4|Mux16~8_combout\ & ( ((\b2v_inst4|z[1]~10_combout\ & !\b2v_inst4|z[1]~18_combout\)) # (\b2v_inst4|z[1]~19_combout\) ) ) ) # ( \b2v_inst4|z[5]~4_combout\ & ( !\b2v_inst4|Mux16~8_combout\ & ( 
-- ((\b2v_inst4|z[1]~10_combout\ & (!\b2v_inst4|z[1]~18_combout\ & !\b2v_inst4|z[14]~3_combout\))) # (\b2v_inst4|z[1]~19_combout\) ) ) ) # ( !\b2v_inst4|z[5]~4_combout\ & ( !\b2v_inst4|Mux16~8_combout\ & ( ((\b2v_inst4|z[1]~10_combout\ & 
-- !\b2v_inst4|z[1]~18_combout\)) # (\b2v_inst4|z[1]~19_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011111111010000001111111101000100111111110100010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[1]~10_combout\,
	datab => \b2v_inst4|ALT_INV_z[1]~18_combout\,
	datac => \b2v_inst4|ALT_INV_z[14]~3_combout\,
	datad => \b2v_inst4|ALT_INV_z[1]~19_combout\,
	datae => \b2v_inst4|ALT_INV_z[5]~4_combout\,
	dataf => \b2v_inst4|ALT_INV_Mux16~8_combout\,
	combout => \b2v_inst4|z[1]~20_combout\);

-- Location: LABCELL_X30_Y3_N0
\b2v_inst4|Mux0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux0~9_combout\ = ( \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a8\ & ( (!\b2v_inst4|Mux0~0_combout\) # ((!\b2v_inst4|Mux0~1_combout\) # (\b2v_inst4|regs_rtl_0_bypass\(17))) ) ) # ( !\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a8\ & ( 
-- (\b2v_inst4|Mux0~0_combout\ & (\b2v_inst4|Mux0~1_combout\ & \b2v_inst4|regs_rtl_0_bypass\(17))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000111101110111111111110111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux0~0_combout\,
	datab => \b2v_inst4|ALT_INV_Mux0~1_combout\,
	datad => \b2v_inst4|ALT_INV_regs_rtl_0_bypass\(17),
	dataf => \b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a8\,
	combout => \b2v_inst4|Mux0~9_combout\);

-- Location: LABCELL_X27_Y3_N51
\b2v_inst4|z[7]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[7]~45_combout\ = ( \signal_registers|SIP_reg\(7) & ( \b2v_inst4|Mux0~9_combout\ & ( (((!\b2v_inst4|z[5]~4_combout\ & \b2v_inst4|z[5]~11_combout\)) # (\b2v_inst4|z[14]~9_combout\)) # (\b2v_inst4|z[14]~2_combout\) ) ) ) # ( 
-- !\signal_registers|SIP_reg\(7) & ( \b2v_inst4|Mux0~9_combout\ & ( (\b2v_inst4|z[14]~9_combout\) # (\b2v_inst4|z[14]~2_combout\) ) ) ) # ( \signal_registers|SIP_reg\(7) & ( !\b2v_inst4|Mux0~9_combout\ & ( (!\b2v_inst4|z[14]~2_combout\ & 
-- (!\b2v_inst4|z[5]~4_combout\ & (!\b2v_inst4|z[14]~9_combout\ & \b2v_inst4|z[5]~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000001011111010111110101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[14]~2_combout\,
	datab => \b2v_inst4|ALT_INV_z[5]~4_combout\,
	datac => \b2v_inst4|ALT_INV_z[14]~9_combout\,
	datad => \b2v_inst4|ALT_INV_z[5]~11_combout\,
	datae => \signal_registers|ALT_INV_SIP_reg\(7),
	dataf => \b2v_inst4|ALT_INV_Mux0~9_combout\,
	combout => \b2v_inst4|z[7]~45_combout\);

-- Location: LABCELL_X27_Y3_N3
\b2v_inst7|ALU_in2[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|ALU_in2[7]~7_combout\ = ( \b2v_inst4|Mux0~9_combout\ & ( (\b2v_inst4|Mux16~4_combout\) # (\b2v_inst|Mux2~0_combout\) ) ) # ( !\b2v_inst4|Mux0~9_combout\ & ( (!\b2v_inst|Mux2~0_combout\ & \b2v_inst4|Mux16~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|ALT_INV_Mux2~0_combout\,
	datad => \b2v_inst4|ALT_INV_Mux16~4_combout\,
	dataf => \b2v_inst4|ALT_INV_Mux0~9_combout\,
	combout => \b2v_inst7|ALU_in2[7]~7_combout\);

-- Location: FF_X27_Y3_N14
\b2v_inst4|regs[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst4|z[7]~46_combout\,
	ena => \b2v_inst4|regs[10][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs[10][7]~q\);

-- Location: LABCELL_X29_Y4_N48
\b2v_inst7|ALU_in1[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|ALU_in1[7]~7_combout\ = ( \b2v_inst4|Mux0~9_combout\ & ( (!\b2v_inst3|temp_IR\(15) & (\b2v_inst3|temp_IR\(14) & (\b2v_inst3|IR_Op[7]~7_combout\))) # (\b2v_inst3|temp_IR\(15) & (((\b2v_inst4|regs[10][7]~q\)) # (\b2v_inst3|temp_IR\(14)))) ) ) # ( 
-- !\b2v_inst4|Mux0~9_combout\ & ( (!\b2v_inst3|temp_IR\(15) & (\b2v_inst3|temp_IR\(14) & (\b2v_inst3|IR_Op[7]~7_combout\))) # (\b2v_inst3|temp_IR\(15) & (!\b2v_inst3|temp_IR\(14) & ((\b2v_inst4|regs[10][7]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011000010011010101110001001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|ALT_INV_temp_IR\(15),
	datab => \b2v_inst3|ALT_INV_temp_IR\(14),
	datac => \b2v_inst3|ALT_INV_IR_Op[7]~7_combout\,
	datad => \b2v_inst4|ALT_INV_regs[10][7]~q\,
	dataf => \b2v_inst4|ALT_INV_Mux0~9_combout\,
	combout => \b2v_inst7|ALU_in1[7]~7_combout\);

-- Location: MLABCELL_X28_Y3_N21
\b2v_inst7|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|Add0~25_sumout\ = SUM(( \b2v_inst7|ALU_in1[6]~6_combout\ ) + ( !\b2v_inst7|ALU_in2[6]~6_combout\ $ (((!\b2v_inst|ALU_Opcode[1]~0_combout\ & ((!\b2v_inst5|temp_address[9]~0_combout\) # (!\b2v_inst4|z[14]~5_combout\))))) ) + ( \b2v_inst7|Add0~22\ 
-- ))
-- \b2v_inst7|Add0~26\ = CARRY(( \b2v_inst7|ALU_in1[6]~6_combout\ ) + ( !\b2v_inst7|ALU_in2[6]~6_combout\ $ (((!\b2v_inst|ALU_Opcode[1]~0_combout\ & ((!\b2v_inst5|temp_address[9]~0_combout\) # (!\b2v_inst4|z[14]~5_combout\))))) ) + ( \b2v_inst7|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010000011011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ALT_INV_temp_address[9]~0_combout\,
	datab => \b2v_inst|ALT_INV_ALU_Opcode[1]~0_combout\,
	datac => \b2v_inst4|ALT_INV_z[14]~5_combout\,
	datad => \b2v_inst7|ALT_INV_ALU_in1[6]~6_combout\,
	dataf => \b2v_inst7|ALT_INV_ALU_in2[6]~6_combout\,
	cin => \b2v_inst7|Add0~22\,
	sumout => \b2v_inst7|Add0~25_sumout\,
	cout => \b2v_inst7|Add0~26\);

-- Location: MLABCELL_X28_Y3_N24
\b2v_inst7|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|Add0~29_sumout\ = SUM(( \b2v_inst7|ALU_in1[7]~7_combout\ ) + ( !\b2v_inst7|ALU_in2[7]~7_combout\ $ (((!\b2v_inst|ALU_Opcode[1]~0_combout\ & ((!\b2v_inst4|z[14]~5_combout\) # (!\b2v_inst5|temp_address[9]~0_combout\))))) ) + ( \b2v_inst7|Add0~26\ 
-- ))
-- \b2v_inst7|Add0~30\ = CARRY(( \b2v_inst7|ALU_in1[7]~7_combout\ ) + ( !\b2v_inst7|ALU_in2[7]~7_combout\ $ (((!\b2v_inst|ALU_Opcode[1]~0_combout\ & ((!\b2v_inst4|z[14]~5_combout\) # (!\b2v_inst5|temp_address[9]~0_combout\))))) ) + ( \b2v_inst7|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010000101011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_ALU_Opcode[1]~0_combout\,
	datab => \b2v_inst4|ALT_INV_z[14]~5_combout\,
	datac => \b2v_inst5|ALT_INV_temp_address[9]~0_combout\,
	datad => \b2v_inst7|ALT_INV_ALU_in1[7]~7_combout\,
	dataf => \b2v_inst7|ALT_INV_ALU_in2[7]~7_combout\,
	cin => \b2v_inst7|Add0~26\,
	sumout => \b2v_inst7|Add0~29_sumout\,
	cout => \b2v_inst7|Add0~30\);

-- Location: M10K_X26_Y1_N0
\b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a6\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "C:\Users\epik990\Documents\compsys701\testing.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memory_interface:b2v_inst5|memory_block:memory_test|altsyncram:altsyncram_component|altsyncram_b274:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 12,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => GND,
	portbre => VCC,
	clk0 => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	portadatain => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portbdatain => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAIN_bus\,
	portaaddr => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\,
	portbdataout => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

-- Location: LABCELL_X31_Y3_N36
\b2v_inst4|z[7]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[7]~44_combout\ = ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(7) & ( \b2v_inst|state.T2~q\ & ( ((\b2v_inst3|temp_IR\(14) & ((!\b2v_inst|Mux15~4_combout\) # (\b2v_inst|Mux15~1_combout\)))) # 
-- (\b2v_inst3|IR_Op[7]~7_combout\) ) ) ) # ( !\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(7) & ( \b2v_inst|state.T2~q\ & ( (\b2v_inst3|IR_Op[7]~7_combout\ & ((!\b2v_inst3|temp_IR\(14)) # ((\b2v_inst|Mux15~4_combout\ & 
-- !\b2v_inst|Mux15~1_combout\)))) ) ) ) # ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(7) & ( !\b2v_inst|state.T2~q\ & ( \b2v_inst3|IR_Op[7]~7_combout\ ) ) ) # ( !\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(7) & ( 
-- !\b2v_inst|state.T2~q\ & ( \b2v_inst3|IR_Op[7]~7_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001101000011000010111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_Mux15~4_combout\,
	datab => \b2v_inst3|ALT_INV_temp_IR\(14),
	datac => \b2v_inst3|ALT_INV_IR_Op[7]~7_combout\,
	datad => \b2v_inst|ALT_INV_Mux15~1_combout\,
	datae => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(7),
	dataf => \b2v_inst|ALT_INV_state.T2~q\,
	combout => \b2v_inst4|z[7]~44_combout\);

-- Location: LABCELL_X27_Y3_N54
\b2v_inst4|z[7]~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[7]~113_combout\ = ( !\b2v_inst|z_control[1]~1_combout\ & ( (((\b2v_inst4|z[7]~44_combout\))) ) ) # ( \b2v_inst|z_control[1]~1_combout\ & ( (!\b2v_inst4|z[14]~7_combout\ & ((!\b2v_inst4|z[14]~8_combout\ & (((\b2v_inst7|Add0~29_sumout\)))) # 
-- (\b2v_inst4|z[14]~8_combout\ & (\b2v_inst7|ALU_in2[7]~7_combout\ & (\b2v_inst7|ALU_in1[7]~7_combout\))))) # (\b2v_inst4|z[14]~7_combout\ & (((!\b2v_inst4|z[14]~8_combout\ & ((\b2v_inst7|ALU_in1[7]~7_combout\) # (\b2v_inst7|ALU_in2[7]~7_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111000011110111011100001111000011110001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|ALT_INV_ALU_in2[7]~7_combout\,
	datab => \b2v_inst7|ALT_INV_ALU_in1[7]~7_combout\,
	datac => \b2v_inst7|ALT_INV_Add0~29_sumout\,
	datad => \b2v_inst4|ALT_INV_z[14]~7_combout\,
	datae => \b2v_inst|ALT_INV_z_control[1]~1_combout\,
	dataf => \b2v_inst4|ALT_INV_z[14]~8_combout\,
	datag => \b2v_inst4|ALT_INV_z[7]~44_combout\,
	combout => \b2v_inst4|z[7]~113_combout\);

-- Location: LABCELL_X27_Y3_N12
\b2v_inst4|z[7]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[7]~46_combout\ = ( \b2v_inst4|Mux16~4_combout\ & ( \b2v_inst4|z[5]~4_combout\ & ( ((\b2v_inst4|z[1]~10_combout\ & ((\b2v_inst4|z[14]~3_combout\) # (\b2v_inst4|z[7]~113_combout\)))) # (\b2v_inst4|z[7]~45_combout\) ) ) ) # ( 
-- !\b2v_inst4|Mux16~4_combout\ & ( \b2v_inst4|z[5]~4_combout\ & ( ((\b2v_inst4|z[7]~113_combout\ & (\b2v_inst4|z[1]~10_combout\ & !\b2v_inst4|z[14]~3_combout\))) # (\b2v_inst4|z[7]~45_combout\) ) ) ) # ( \b2v_inst4|Mux16~4_combout\ & ( 
-- !\b2v_inst4|z[5]~4_combout\ & ( ((\b2v_inst4|z[7]~113_combout\ & \b2v_inst4|z[1]~10_combout\)) # (\b2v_inst4|z[7]~45_combout\) ) ) ) # ( !\b2v_inst4|Mux16~4_combout\ & ( !\b2v_inst4|z[5]~4_combout\ & ( ((\b2v_inst4|z[7]~113_combout\ & 
-- \b2v_inst4|z[1]~10_combout\)) # (\b2v_inst4|z[7]~45_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101010111010101110101011101010111010101010101011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[7]~45_combout\,
	datab => \b2v_inst4|ALT_INV_z[7]~113_combout\,
	datac => \b2v_inst4|ALT_INV_z[1]~10_combout\,
	datad => \b2v_inst4|ALT_INV_z[14]~3_combout\,
	datae => \b2v_inst4|ALT_INV_Mux16~4_combout\,
	dataf => \b2v_inst4|ALT_INV_z[5]~4_combout\,
	combout => \b2v_inst4|z[7]~46_combout\);

-- Location: LABCELL_X31_Y3_N18
\b2v_inst4|Mux16~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux16~3_combout\ = ( \b2v_inst4|Mux16~1_combout\ & ( \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a11\ & ( (!\b2v_inst4|Mux16~0_combout\) # (\b2v_inst4|regs_rtl_1_bypass\(20)) ) ) ) # ( !\b2v_inst4|Mux16~1_combout\ & ( 
-- \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a11\ ) ) # ( \b2v_inst4|Mux16~1_combout\ & ( !\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a11\ & ( (\b2v_inst4|Mux16~0_combout\ & \b2v_inst4|regs_rtl_1_bypass\(20)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010111111111111111111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux16~0_combout\,
	datac => \b2v_inst4|ALT_INV_regs_rtl_1_bypass\(20),
	datae => \b2v_inst4|ALT_INV_Mux16~1_combout\,
	dataf => \b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a11\,
	combout => \b2v_inst4|Mux16~3_combout\);

-- Location: LABCELL_X27_Y1_N3
\b2v_inst7|ALU_in2[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|ALU_in2[4]~4_combout\ = ( \b2v_inst4|Mux16~3_combout\ & ( \b2v_inst4|Mux0~6_combout\ ) ) # ( !\b2v_inst4|Mux16~3_combout\ & ( \b2v_inst4|Mux0~6_combout\ & ( \b2v_inst|Mux2~0_combout\ ) ) ) # ( \b2v_inst4|Mux16~3_combout\ & ( 
-- !\b2v_inst4|Mux0~6_combout\ & ( !\b2v_inst|Mux2~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_Mux2~0_combout\,
	datae => \b2v_inst4|ALT_INV_Mux16~3_combout\,
	dataf => \b2v_inst4|ALT_INV_Mux0~6_combout\,
	combout => \b2v_inst7|ALU_in2[4]~4_combout\);

-- Location: FF_X28_Y2_N44
\b2v_inst4|regs[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst4|z[3]~30_combout\,
	ena => \b2v_inst4|regs[10][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs[10][3]~q\);

-- Location: MLABCELL_X28_Y2_N24
\b2v_inst3|IR_Op[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst3|IR_Op[3]~3_combout\ = ( \b2v_inst|Selector1~1_combout\ & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(3) & ( ((\b2v_inst5|temp_address[9]~1_combout\ & ((\b2v_inst|Mux5~0_combout\) # (\b2v_inst|Selector4~0_combout\)))) # 
-- (\b2v_inst|Selector5~1_combout\) ) ) ) # ( !\b2v_inst|Selector1~1_combout\ & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(3) & ( ((\b2v_inst5|temp_address[9]~1_combout\ & \b2v_inst|Selector4~0_combout\)) # 
-- (\b2v_inst|Selector5~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000011111000111110001111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ALT_INV_temp_address[9]~1_combout\,
	datab => \b2v_inst|ALT_INV_Selector4~0_combout\,
	datac => \b2v_inst|ALT_INV_Selector5~1_combout\,
	datad => \b2v_inst|ALT_INV_Mux5~0_combout\,
	datae => \b2v_inst|ALT_INV_Selector1~1_combout\,
	dataf => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \b2v_inst3|IR_Op[3]~3_combout\);

-- Location: MLABCELL_X28_Y2_N6
\b2v_inst7|ALU_in1[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|ALU_in1[3]~3_combout\ = ( \b2v_inst4|Mux0~5_combout\ & ( \b2v_inst3|IR_Op[3]~3_combout\ & ( ((\b2v_inst3|temp_IR\(15) & \b2v_inst4|regs[10][3]~q\)) # (\b2v_inst3|temp_IR\(14)) ) ) ) # ( !\b2v_inst4|Mux0~5_combout\ & ( 
-- \b2v_inst3|IR_Op[3]~3_combout\ & ( (!\b2v_inst3|temp_IR\(15) & ((\b2v_inst3|temp_IR\(14)))) # (\b2v_inst3|temp_IR\(15) & (\b2v_inst4|regs[10][3]~q\ & !\b2v_inst3|temp_IR\(14))) ) ) ) # ( \b2v_inst4|Mux0~5_combout\ & ( !\b2v_inst3|IR_Op[3]~3_combout\ & ( 
-- (\b2v_inst3|temp_IR\(15) & ((\b2v_inst3|temp_IR\(14)) # (\b2v_inst4|regs[10][3]~q\))) ) ) ) # ( !\b2v_inst4|Mux0~5_combout\ & ( !\b2v_inst3|IR_Op[3]~3_combout\ & ( (\b2v_inst3|temp_IR\(15) & (\b2v_inst4|regs[10][3]~q\ & !\b2v_inst3|temp_IR\(14))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010101010100010001101010100001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|ALT_INV_temp_IR\(15),
	datab => \b2v_inst4|ALT_INV_regs[10][3]~q\,
	datad => \b2v_inst3|ALT_INV_temp_IR\(14),
	datae => \b2v_inst4|ALT_INV_Mux0~5_combout\,
	dataf => \b2v_inst3|ALT_INV_IR_Op[3]~3_combout\,
	combout => \b2v_inst7|ALU_in1[3]~3_combout\);

-- Location: FF_X27_Y4_N32
\b2v_inst4|regs[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst4|z[2]~25_combout\,
	ena => \b2v_inst4|regs[10][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs[10][2]~q\);

-- Location: LABCELL_X27_Y4_N18
\b2v_inst7|ALU_in1[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|ALU_in1[2]~2_combout\ = ( \b2v_inst3|IR_Op[2]~2_combout\ & ( (!\b2v_inst3|temp_IR\(15) & (((\b2v_inst3|temp_IR\(14))))) # (\b2v_inst3|temp_IR\(15) & ((!\b2v_inst3|temp_IR\(14) & ((\b2v_inst4|regs[10][2]~q\))) # (\b2v_inst3|temp_IR\(14) & 
-- (\b2v_inst4|Mux0~4_combout\)))) ) ) # ( !\b2v_inst3|IR_Op[2]~2_combout\ & ( (\b2v_inst3|temp_IR\(15) & ((!\b2v_inst3|temp_IR\(14) & ((\b2v_inst4|regs[10][2]~q\))) # (\b2v_inst3|temp_IR\(14) & (\b2v_inst4|Mux0~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101000000110000010100000011111101010000001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux0~4_combout\,
	datab => \b2v_inst4|ALT_INV_regs[10][2]~q\,
	datac => \b2v_inst3|ALT_INV_temp_IR\(15),
	datad => \b2v_inst3|ALT_INV_temp_IR\(14),
	dataf => \b2v_inst3|ALT_INV_IR_Op[2]~2_combout\,
	combout => \b2v_inst7|ALU_in1[2]~2_combout\);

-- Location: MLABCELL_X28_Y3_N9
\b2v_inst7|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|Add0~9_sumout\ = SUM(( \b2v_inst7|ALU_in1[2]~2_combout\ ) + ( !\b2v_inst7|ALU_in2[2]~2_combout\ $ (((!\b2v_inst|ALU_Opcode[1]~0_combout\ & ((!\b2v_inst5|temp_address[9]~0_combout\) # (!\b2v_inst4|z[14]~5_combout\))))) ) + ( \b2v_inst7|Add0~6\ 
-- ))
-- \b2v_inst7|Add0~10\ = CARRY(( \b2v_inst7|ALU_in1[2]~2_combout\ ) + ( !\b2v_inst7|ALU_in2[2]~2_combout\ $ (((!\b2v_inst|ALU_Opcode[1]~0_combout\ & ((!\b2v_inst5|temp_address[9]~0_combout\) # (!\b2v_inst4|z[14]~5_combout\))))) ) + ( \b2v_inst7|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000010000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ALT_INV_temp_address[9]~0_combout\,
	datab => \b2v_inst4|ALT_INV_z[14]~5_combout\,
	datac => \b2v_inst7|ALT_INV_ALU_in2[2]~2_combout\,
	datad => \b2v_inst7|ALT_INV_ALU_in1[2]~2_combout\,
	dataf => \b2v_inst|ALT_INV_ALU_Opcode[1]~0_combout\,
	cin => \b2v_inst7|Add0~6\,
	sumout => \b2v_inst7|Add0~9_sumout\,
	cout => \b2v_inst7|Add0~10\);

-- Location: MLABCELL_X28_Y3_N12
\b2v_inst7|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|Add0~13_sumout\ = SUM(( !\b2v_inst7|ALU_in2[3]~3_combout\ $ (((!\b2v_inst|ALU_Opcode[1]~0_combout\ & ((!\b2v_inst5|temp_address[9]~0_combout\) # (!\b2v_inst4|z[14]~5_combout\))))) ) + ( \b2v_inst7|ALU_in1[3]~3_combout\ ) + ( \b2v_inst7|Add0~10\ 
-- ))
-- \b2v_inst7|Add0~14\ = CARRY(( !\b2v_inst7|ALU_in2[3]~3_combout\ $ (((!\b2v_inst|ALU_Opcode[1]~0_combout\ & ((!\b2v_inst5|temp_address[9]~0_combout\) # (!\b2v_inst4|z[14]~5_combout\))))) ) + ( \b2v_inst7|ALU_in1[3]~3_combout\ ) + ( \b2v_inst7|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001111011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ALT_INV_temp_address[9]~0_combout\,
	datab => \b2v_inst4|ALT_INV_z[14]~5_combout\,
	datac => \b2v_inst7|ALT_INV_ALU_in2[3]~3_combout\,
	datad => \b2v_inst|ALT_INV_ALU_Opcode[1]~0_combout\,
	dataf => \b2v_inst7|ALT_INV_ALU_in1[3]~3_combout\,
	cin => \b2v_inst7|Add0~10\,
	sumout => \b2v_inst7|Add0~13_sumout\,
	cout => \b2v_inst7|Add0~14\);

-- Location: MLABCELL_X28_Y3_N15
\b2v_inst7|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|Add0~17_sumout\ = SUM(( !\b2v_inst7|ALU_in2[4]~4_combout\ $ (((!\b2v_inst|ALU_Opcode[1]~0_combout\ & ((!\b2v_inst5|temp_address[9]~0_combout\) # (!\b2v_inst4|z[14]~5_combout\))))) ) + ( \b2v_inst7|ALU_in1[4]~4_combout\ ) + ( \b2v_inst7|Add0~14\ 
-- ))
-- \b2v_inst7|Add0~18\ = CARRY(( !\b2v_inst7|ALU_in2[4]~4_combout\ $ (((!\b2v_inst|ALU_Opcode[1]~0_combout\ & ((!\b2v_inst5|temp_address[9]~0_combout\) # (!\b2v_inst4|z[14]~5_combout\))))) ) + ( \b2v_inst7|ALU_in1[4]~4_combout\ ) + ( \b2v_inst7|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001111011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ALT_INV_temp_address[9]~0_combout\,
	datab => \b2v_inst4|ALT_INV_z[14]~5_combout\,
	datac => \b2v_inst7|ALT_INV_ALU_in2[4]~4_combout\,
	datad => \b2v_inst|ALT_INV_ALU_Opcode[1]~0_combout\,
	dataf => \b2v_inst7|ALT_INV_ALU_in1[4]~4_combout\,
	cin => \b2v_inst7|Add0~14\,
	sumout => \b2v_inst7|Add0~17_sumout\,
	cout => \b2v_inst7|Add0~18\);

-- Location: MLABCELL_X28_Y3_N18
\b2v_inst7|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|Add0~21_sumout\ = SUM(( \b2v_inst7|ALU_in1[5]~5_combout\ ) + ( !\b2v_inst7|ALU_in2[5]~5_combout\ $ (((!\b2v_inst|ALU_Opcode[1]~0_combout\ & ((!\b2v_inst5|temp_address[9]~0_combout\) # (!\b2v_inst4|z[14]~5_combout\))))) ) + ( \b2v_inst7|Add0~18\ 
-- ))
-- \b2v_inst7|Add0~22\ = CARRY(( \b2v_inst7|ALU_in1[5]~5_combout\ ) + ( !\b2v_inst7|ALU_in2[5]~5_combout\ $ (((!\b2v_inst|ALU_Opcode[1]~0_combout\ & ((!\b2v_inst5|temp_address[9]~0_combout\) # (!\b2v_inst4|z[14]~5_combout\))))) ) + ( \b2v_inst7|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010000011011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ALT_INV_temp_address[9]~0_combout\,
	datab => \b2v_inst|ALT_INV_ALU_Opcode[1]~0_combout\,
	datac => \b2v_inst4|ALT_INV_z[14]~5_combout\,
	datad => \b2v_inst7|ALT_INV_ALU_in1[5]~5_combout\,
	dataf => \b2v_inst7|ALT_INV_ALU_in2[5]~5_combout\,
	cin => \b2v_inst7|Add0~18\,
	sumout => \b2v_inst7|Add0~21_sumout\,
	cout => \b2v_inst7|Add0~22\);

-- Location: LABCELL_X27_Y4_N3
\b2v_inst4|z[6]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[6]~41_combout\ = ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(6) & ( \b2v_inst3|IR_Op[6]~6_combout\ ) ) # ( !\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(6) & ( \b2v_inst3|IR_Op[6]~6_combout\ & ( 
-- (!\b2v_inst3|temp_IR\(14)) # ((!\b2v_inst|state.T2~q\) # ((!\b2v_inst|Mux15~1_combout\ & \b2v_inst|Mux15~4_combout\))) ) ) ) # ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(6) & ( !\b2v_inst3|IR_Op[6]~6_combout\ & ( 
-- (\b2v_inst3|temp_IR\(14) & (\b2v_inst|state.T2~q\ & ((!\b2v_inst|Mux15~4_combout\) # (\b2v_inst|Mux15~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000110111111111111100101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_Mux15~1_combout\,
	datab => \b2v_inst|ALT_INV_Mux15~4_combout\,
	datac => \b2v_inst3|ALT_INV_temp_IR\(14),
	datad => \b2v_inst|ALT_INV_state.T2~q\,
	datae => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(6),
	dataf => \b2v_inst3|ALT_INV_IR_Op[6]~6_combout\,
	combout => \b2v_inst4|z[6]~41_combout\);

-- Location: MLABCELL_X28_Y4_N18
\b2v_inst4|z[6]~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[6]~117_combout\ = ( !\b2v_inst|z_control[1]~1_combout\ & ( (((\b2v_inst4|z[6]~41_combout\))) ) ) # ( \b2v_inst|z_control[1]~1_combout\ & ( (!\b2v_inst4|z[14]~8_combout\ & ((!\b2v_inst4|z[14]~7_combout\ & (((\b2v_inst7|Add0~25_sumout\)))) # 
-- (\b2v_inst4|z[14]~7_combout\ & (((\b2v_inst7|ALU_in2[6]~6_combout\)) # (\b2v_inst7|ALU_in1[6]~6_combout\))))) # (\b2v_inst4|z[14]~8_combout\ & (\b2v_inst7|ALU_in1[6]~6_combout\ & (((!\b2v_inst4|z[14]~7_combout\ & \b2v_inst7|ALU_in2[6]~6_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111000010100010001000001111000011110001101110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[14]~8_combout\,
	datab => \b2v_inst7|ALT_INV_ALU_in1[6]~6_combout\,
	datac => \b2v_inst7|ALT_INV_Add0~25_sumout\,
	datad => \b2v_inst4|ALT_INV_z[14]~7_combout\,
	datae => \b2v_inst|ALT_INV_z_control[1]~1_combout\,
	dataf => \b2v_inst7|ALT_INV_ALU_in2[6]~6_combout\,
	datag => \b2v_inst4|ALT_INV_z[6]~41_combout\,
	combout => \b2v_inst4|z[6]~117_combout\);

-- Location: IOIBUF_X4_Y0_N35
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: FF_X28_Y4_N41
\signal_registers|SIP_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \b2v_inst|load_sip~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \signal_registers|SIP_reg\(6));

-- Location: MLABCELL_X28_Y4_N39
\b2v_inst4|z[6]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[6]~42_combout\ = ( \signal_registers|SIP_reg\(6) & ( \b2v_inst4|Mux0~8_combout\ & ( (((!\b2v_inst4|z[5]~4_combout\ & \b2v_inst4|z[5]~11_combout\)) # (\b2v_inst4|z[14]~2_combout\)) # (\b2v_inst4|z[14]~9_combout\) ) ) ) # ( 
-- !\signal_registers|SIP_reg\(6) & ( \b2v_inst4|Mux0~8_combout\ & ( (\b2v_inst4|z[14]~2_combout\) # (\b2v_inst4|z[14]~9_combout\) ) ) ) # ( \signal_registers|SIP_reg\(6) & ( !\b2v_inst4|Mux0~8_combout\ & ( (!\b2v_inst4|z[5]~4_combout\ & 
-- (!\b2v_inst4|z[14]~9_combout\ & (!\b2v_inst4|z[14]~2_combout\ & \b2v_inst4|z[5]~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000111111001111110011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[5]~4_combout\,
	datab => \b2v_inst4|ALT_INV_z[14]~9_combout\,
	datac => \b2v_inst4|ALT_INV_z[14]~2_combout\,
	datad => \b2v_inst4|ALT_INV_z[5]~11_combout\,
	datae => \signal_registers|ALT_INV_SIP_reg\(6),
	dataf => \b2v_inst4|ALT_INV_Mux0~8_combout\,
	combout => \b2v_inst4|z[6]~42_combout\);

-- Location: MLABCELL_X28_Y4_N24
\b2v_inst4|z[6]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[6]~43_combout\ = ( \b2v_inst4|Mux16~5_combout\ & ( \b2v_inst4|z[14]~3_combout\ & ( ((\b2v_inst4|z[1]~10_combout\ & ((\b2v_inst4|z[5]~4_combout\) # (\b2v_inst4|z[6]~117_combout\)))) # (\b2v_inst4|z[6]~42_combout\) ) ) ) # ( 
-- !\b2v_inst4|Mux16~5_combout\ & ( \b2v_inst4|z[14]~3_combout\ & ( ((\b2v_inst4|z[1]~10_combout\ & (\b2v_inst4|z[6]~117_combout\ & !\b2v_inst4|z[5]~4_combout\))) # (\b2v_inst4|z[6]~42_combout\) ) ) ) # ( \b2v_inst4|Mux16~5_combout\ & ( 
-- !\b2v_inst4|z[14]~3_combout\ & ( ((\b2v_inst4|z[1]~10_combout\ & \b2v_inst4|z[6]~117_combout\)) # (\b2v_inst4|z[6]~42_combout\) ) ) ) # ( !\b2v_inst4|Mux16~5_combout\ & ( !\b2v_inst4|z[14]~3_combout\ & ( ((\b2v_inst4|z[1]~10_combout\ & 
-- \b2v_inst4|z[6]~117_combout\)) # (\b2v_inst4|z[6]~42_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111111111000100011111111100010000111111110001010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[1]~10_combout\,
	datab => \b2v_inst4|ALT_INV_z[6]~117_combout\,
	datac => \b2v_inst4|ALT_INV_z[5]~4_combout\,
	datad => \b2v_inst4|ALT_INV_z[6]~42_combout\,
	datae => \b2v_inst4|ALT_INV_Mux16~5_combout\,
	dataf => \b2v_inst4|ALT_INV_z[14]~3_combout\,
	combout => \b2v_inst4|z[6]~43_combout\);

-- Location: FF_X28_Y4_N20
\b2v_inst4|regs_rtl_1_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst4|z[6]~43_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_1_bypass\(18));

-- Location: LABCELL_X27_Y5_N6
\b2v_inst4|Mux16~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux16~5_combout\ = ( \b2v_inst4|Mux16~0_combout\ & ( \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a9\ & ( (!\b2v_inst4|Mux16~1_combout\) # (\b2v_inst4|regs_rtl_1_bypass\(18)) ) ) ) # ( !\b2v_inst4|Mux16~0_combout\ & ( 
-- \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a9\ ) ) # ( \b2v_inst4|Mux16~0_combout\ & ( !\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a9\ & ( (\b2v_inst4|Mux16~1_combout\ & \b2v_inst4|regs_rtl_1_bypass\(18)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010111111111111111111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux16~1_combout\,
	datac => \b2v_inst4|ALT_INV_regs_rtl_1_bypass\(18),
	datae => \b2v_inst4|ALT_INV_Mux16~0_combout\,
	dataf => \b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a9\,
	combout => \b2v_inst4|Mux16~5_combout\);

-- Location: LABCELL_X31_Y2_N15
\b2v_inst5|temp_address[6]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|temp_address[6]~10_combout\ = ( \b2v_inst4|Mux16~5_combout\ & ( (\b2v_inst4|Mux0~8_combout\) # (\b2v_inst5|temp_address[9]~3_combout\) ) ) # ( !\b2v_inst4|Mux16~5_combout\ & ( (!\b2v_inst5|temp_address[9]~3_combout\ & 
-- \b2v_inst4|Mux0~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ALT_INV_temp_address[9]~3_combout\,
	datac => \b2v_inst4|ALT_INV_Mux0~8_combout\,
	dataf => \b2v_inst4|ALT_INV_Mux16~5_combout\,
	combout => \b2v_inst5|temp_address[6]~10_combout\);

-- Location: LABCELL_X31_Y2_N27
\b2v_inst5|address_b_temp[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|address_b_temp\(6) = (!\b2v_inst5|temp_address[9]~2_combout\ & ((\b2v_inst5|address_b_temp\(6)))) # (\b2v_inst5|temp_address[9]~2_combout\ & (\b2v_inst5|temp_address[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|ALT_INV_temp_address[6]~10_combout\,
	datac => \b2v_inst5|ALT_INV_temp_address[9]~2_combout\,
	datad => \b2v_inst5|ALT_INV_address_b_temp\(6),
	combout => \b2v_inst5|address_b_temp\(6));

-- Location: M10K_X38_Y3_N0
\b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "C:\Users\epik990\Documents\compsys701\testing.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memory_interface:b2v_inst5|memory_block:memory_test|altsyncram:altsyncram_component|altsyncram_b274:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 12,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => GND,
	portbre => VCC,
	clk0 => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	portadatain => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portbdatain => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAIN_bus\,
	portaaddr => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\,
	portbdataout => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

-- Location: LABCELL_X29_Y3_N42
\b2v_inst4|Mux0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux0~18_combout\ = ( \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a7\ & ( (!\b2v_inst4|Mux0~1_combout\) # ((!\b2v_inst4|Mux0~0_combout\) # (\b2v_inst4|regs_rtl_0_bypass\(16))) ) ) # ( !\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a7\ & ( 
-- (\b2v_inst4|Mux0~1_combout\ & (\b2v_inst4|Mux0~0_combout\ & \b2v_inst4|regs_rtl_0_bypass\(16))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001111111100111111111111110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst4|ALT_INV_Mux0~1_combout\,
	datac => \b2v_inst4|ALT_INV_Mux0~0_combout\,
	datad => \b2v_inst4|ALT_INV_regs_rtl_0_bypass\(16),
	dataf => \b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	combout => \b2v_inst4|Mux0~18_combout\);

-- Location: FF_X29_Y3_N2
\b2v_inst4|regs[10][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst4|z[8]~95_combout\,
	ena => \b2v_inst4|regs[10][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs[10][8]~q\);

-- Location: LABCELL_X29_Y3_N36
\b2v_inst7|ALU_in1[8]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|ALU_in1[8]~14_combout\ = ( \b2v_inst3|temp_IR\(14) & ( (!\b2v_inst3|temp_IR\(15) & ((\b2v_inst3|IR_Op[8]~14_combout\))) # (\b2v_inst3|temp_IR\(15) & (\b2v_inst4|Mux0~18_combout\)) ) ) # ( !\b2v_inst3|temp_IR\(14) & ( (\b2v_inst3|temp_IR\(15) & 
-- \b2v_inst4|regs[10][8]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|ALT_INV_temp_IR\(15),
	datab => \b2v_inst4|ALT_INV_Mux0~18_combout\,
	datac => \b2v_inst3|ALT_INV_IR_Op[8]~14_combout\,
	datad => \b2v_inst4|ALT_INV_regs[10][8]~q\,
	dataf => \b2v_inst3|ALT_INV_temp_IR\(14),
	combout => \b2v_inst7|ALU_in1[8]~14_combout\);

-- Location: LABCELL_X31_Y3_N45
\b2v_inst7|ALU_in2[8]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|ALU_in2[8]~14_combout\ = ( \b2v_inst4|Mux0~18_combout\ & ( ((!\b2v_inst4|Mux16~7_combout\ & ((\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a7\))) # (\b2v_inst4|Mux16~7_combout\ & (\b2v_inst4|regs_rtl_1_bypass\(16)))) # 
-- (\b2v_inst|Mux2~0_combout\) ) ) # ( !\b2v_inst4|Mux0~18_combout\ & ( (!\b2v_inst|Mux2~0_combout\ & ((!\b2v_inst4|Mux16~7_combout\ & ((\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a7\))) # (\b2v_inst4|Mux16~7_combout\ & 
-- (\b2v_inst4|regs_rtl_1_bypass\(16))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001010111110111110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_Mux2~0_combout\,
	datab => \b2v_inst4|ALT_INV_Mux16~7_combout\,
	datac => \b2v_inst4|ALT_INV_regs_rtl_1_bypass\(16),
	datad => \b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a7\,
	dataf => \b2v_inst4|ALT_INV_Mux0~18_combout\,
	combout => \b2v_inst7|ALU_in2[8]~14_combout\);

-- Location: MLABCELL_X28_Y3_N27
\b2v_inst7|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|Add0~57_sumout\ = SUM(( \b2v_inst7|ALU_in1[8]~14_combout\ ) + ( !\b2v_inst7|ALU_in2[8]~14_combout\ $ (((!\b2v_inst|ALU_Opcode[1]~0_combout\ & ((!\b2v_inst4|z[14]~5_combout\) # (!\b2v_inst5|temp_address[9]~0_combout\))))) ) + ( 
-- \b2v_inst7|Add0~30\ ))
-- \b2v_inst7|Add0~58\ = CARRY(( \b2v_inst7|ALU_in1[8]~14_combout\ ) + ( !\b2v_inst7|ALU_in2[8]~14_combout\ $ (((!\b2v_inst|ALU_Opcode[1]~0_combout\ & ((!\b2v_inst4|z[14]~5_combout\) # (!\b2v_inst5|temp_address[9]~0_combout\))))) ) + ( \b2v_inst7|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010000101011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_ALU_Opcode[1]~0_combout\,
	datab => \b2v_inst4|ALT_INV_z[14]~5_combout\,
	datac => \b2v_inst5|ALT_INV_temp_address[9]~0_combout\,
	datad => \b2v_inst7|ALT_INV_ALU_in1[8]~14_combout\,
	dataf => \b2v_inst7|ALT_INV_ALU_in2[8]~14_combout\,
	cin => \b2v_inst7|Add0~30\,
	sumout => \b2v_inst7|Add0~57_sumout\,
	cout => \b2v_inst7|Add0~58\);

-- Location: M10K_X26_Y4_N0
\b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a8\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002C",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "C:\Users\epik990\Documents\compsys701\testing.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memory_interface:b2v_inst5|memory_block:memory_test|altsyncram:altsyncram_component|altsyncram_b274:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 12,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => GND,
	portbre => VCC,
	clk0 => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	portadatain => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portbdatain => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAIN_bus\,
	portaaddr => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\,
	portbdataout => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

-- Location: LABCELL_X29_Y3_N48
\b2v_inst4|z[8]~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[8]~105_combout\ = ( !\b2v_inst4|z[14]~48_combout\ & ( (!\b2v_inst4|z[14]~7_combout\ & ((!\b2v_inst4|z[14]~8_combout\ & (\b2v_inst7|Add0~57_sumout\)) # (\b2v_inst4|z[14]~8_combout\ & (((\b2v_inst7|ALU_in2[8]~14_combout\ & 
-- \b2v_inst7|ALU_in1[8]~14_combout\)))))) # (\b2v_inst4|z[14]~7_combout\ & (((!\b2v_inst4|z[14]~8_combout\ & ((\b2v_inst7|ALU_in1[8]~14_combout\) # (\b2v_inst7|ALU_in2[8]~14_combout\)))))) ) ) # ( \b2v_inst4|z[14]~48_combout\ & ( 
-- (((\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100000001110000000011110000111101110000011111000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|ALT_INV_Add0~57_sumout\,
	datab => \b2v_inst4|ALT_INV_z[14]~7_combout\,
	datac => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(8),
	datad => \b2v_inst7|ALT_INV_ALU_in2[8]~14_combout\,
	datae => \b2v_inst4|ALT_INV_z[14]~48_combout\,
	dataf => \b2v_inst7|ALT_INV_ALU_in1[8]~14_combout\,
	datag => \b2v_inst4|ALT_INV_z[14]~8_combout\,
	combout => \b2v_inst4|z[8]~105_combout\);

-- Location: LABCELL_X29_Y3_N15
\b2v_inst4|z[8]~94\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[8]~94_combout\ = ( \b2v_inst4|z[14]~9_combout\ & ( \b2v_inst4|Mux0~18_combout\ ) ) # ( !\b2v_inst4|z[14]~9_combout\ & ( (!\b2v_inst4|z[14]~2_combout\ & (\b2v_inst4|z[14]~47_combout\ & (\b2v_inst4|Mux16~18_combout\))) # 
-- (\b2v_inst4|z[14]~2_combout\ & (((\b2v_inst4|Mux0~18_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[14]~2_combout\,
	datab => \b2v_inst4|ALT_INV_z[14]~47_combout\,
	datac => \b2v_inst4|ALT_INV_Mux16~18_combout\,
	datad => \b2v_inst4|ALT_INV_Mux0~18_combout\,
	dataf => \b2v_inst4|ALT_INV_z[14]~9_combout\,
	combout => \b2v_inst4|z[8]~94_combout\);

-- Location: LABCELL_X29_Y3_N0
\b2v_inst4|z[8]~95\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[8]~95_combout\ = ( \b2v_inst3|IR_Op[8]~14_combout\ & ( \b2v_inst4|z[8]~94_combout\ ) ) # ( !\b2v_inst3|IR_Op[8]~14_combout\ & ( \b2v_inst4|z[8]~94_combout\ ) ) # ( \b2v_inst3|IR_Op[8]~14_combout\ & ( !\b2v_inst4|z[8]~94_combout\ & ( 
-- (!\b2v_inst4|z[15]~71_combout\ & (\b2v_inst4|z[15]~91_combout\ & ((\b2v_inst4|z[14]~50_combout\)))) # (\b2v_inst4|z[15]~71_combout\ & (((\b2v_inst4|z[15]~91_combout\ & \b2v_inst4|z[14]~50_combout\)) # (\b2v_inst4|z[8]~105_combout\))) ) ) ) # ( 
-- !\b2v_inst3|IR_Op[8]~14_combout\ & ( !\b2v_inst4|z[8]~94_combout\ & ( (\b2v_inst4|z[15]~71_combout\ & \b2v_inst4|z[8]~105_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010011011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[15]~71_combout\,
	datab => \b2v_inst4|ALT_INV_z[15]~91_combout\,
	datac => \b2v_inst4|ALT_INV_z[8]~105_combout\,
	datad => \b2v_inst4|ALT_INV_z[14]~50_combout\,
	datae => \b2v_inst3|ALT_INV_IR_Op[8]~14_combout\,
	dataf => \b2v_inst4|ALT_INV_z[8]~94_combout\,
	combout => \b2v_inst4|z[8]~95_combout\);

-- Location: LABCELL_X31_Y4_N12
\b2v_inst4|Mux16~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux16~16_combout\ = ( \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a5\ & ( (!\b2v_inst4|Mux16~0_combout\) # ((!\b2v_inst4|Mux16~1_combout\) # (\b2v_inst4|regs_rtl_1_bypass\(14))) ) ) # ( !\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a5\ & ( 
-- (\b2v_inst4|Mux16~0_combout\ & (\b2v_inst4|Mux16~1_combout\ & \b2v_inst4|regs_rtl_1_bypass\(14))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001111111100111111111111110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst4|ALT_INV_Mux16~0_combout\,
	datac => \b2v_inst4|ALT_INV_Mux16~1_combout\,
	datad => \b2v_inst4|ALT_INV_regs_rtl_1_bypass\(14),
	dataf => \b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a5\,
	combout => \b2v_inst4|Mux16~16_combout\);

-- Location: LABCELL_X31_Y4_N9
\b2v_inst7|ALU_in2[10]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|ALU_in2[10]~13_combout\ = ( \b2v_inst|Mux2~0_combout\ & ( \b2v_inst4|Mux0~16_combout\ ) ) # ( !\b2v_inst|Mux2~0_combout\ & ( \b2v_inst4|Mux16~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst4|ALT_INV_Mux16~16_combout\,
	datad => \b2v_inst4|ALT_INV_Mux0~16_combout\,
	dataf => \b2v_inst|ALT_INV_Mux2~0_combout\,
	combout => \b2v_inst7|ALU_in2[10]~13_combout\);

-- Location: FF_X29_Y3_N55
\b2v_inst4|regs[10][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst4|z[10]~93_combout\,
	ena => \b2v_inst4|regs[10][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs[10][10]~q\);

-- Location: LABCELL_X30_Y4_N6
\b2v_inst7|ALU_in1[10]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|ALU_in1[10]~13_combout\ = ( \b2v_inst4|Mux0~16_combout\ & ( (!\b2v_inst3|temp_IR\(14) & (((\b2v_inst3|temp_IR\(15) & \b2v_inst4|regs[10][10]~q\)))) # (\b2v_inst3|temp_IR\(14) & (((\b2v_inst3|temp_IR\(15))) # (\b2v_inst3|IR_Op[10]~13_combout\))) 
-- ) ) # ( !\b2v_inst4|Mux0~16_combout\ & ( (!\b2v_inst3|temp_IR\(14) & (((\b2v_inst3|temp_IR\(15) & \b2v_inst4|regs[10][10]~q\)))) # (\b2v_inst3|temp_IR\(14) & (\b2v_inst3|IR_Op[10]~13_combout\ & (!\b2v_inst3|temp_IR\(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100000100000001110000010011000111110001001100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|ALT_INV_IR_Op[10]~13_combout\,
	datab => \b2v_inst3|ALT_INV_temp_IR\(14),
	datac => \b2v_inst3|ALT_INV_temp_IR\(15),
	datad => \b2v_inst4|ALT_INV_regs[10][10]~q\,
	dataf => \b2v_inst4|ALT_INV_Mux0~16_combout\,
	combout => \b2v_inst7|ALU_in1[10]~13_combout\);

-- Location: LABCELL_X31_Y4_N15
\b2v_inst7|ALU_in2[9]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|ALU_in2[9]~12_combout\ = ( \b2v_inst4|Mux16~14_combout\ & ( (!\b2v_inst|Mux2~0_combout\) # (\b2v_inst4|Mux0~14_combout\) ) ) # ( !\b2v_inst4|Mux16~14_combout\ & ( (\b2v_inst|Mux2~0_combout\ & \b2v_inst4|Mux0~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_Mux2~0_combout\,
	datad => \b2v_inst4|ALT_INV_Mux0~14_combout\,
	dataf => \b2v_inst4|ALT_INV_Mux16~14_combout\,
	combout => \b2v_inst7|ALU_in2[9]~12_combout\);

-- Location: MLABCELL_X28_Y3_N30
\b2v_inst7|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|Add0~49_sumout\ = SUM(( \b2v_inst7|ALU_in1[9]~12_combout\ ) + ( !\b2v_inst7|ALU_in2[9]~12_combout\ $ (((!\b2v_inst|ALU_Opcode[1]~0_combout\ & ((!\b2v_inst5|temp_address[9]~0_combout\) # (!\b2v_inst4|z[14]~5_combout\))))) ) + ( 
-- \b2v_inst7|Add0~58\ ))
-- \b2v_inst7|Add0~50\ = CARRY(( \b2v_inst7|ALU_in1[9]~12_combout\ ) + ( !\b2v_inst7|ALU_in2[9]~12_combout\ $ (((!\b2v_inst|ALU_Opcode[1]~0_combout\ & ((!\b2v_inst5|temp_address[9]~0_combout\) # (!\b2v_inst4|z[14]~5_combout\))))) ) + ( \b2v_inst7|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010000101011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_ALU_Opcode[1]~0_combout\,
	datab => \b2v_inst5|ALT_INV_temp_address[9]~0_combout\,
	datac => \b2v_inst4|ALT_INV_z[14]~5_combout\,
	datad => \b2v_inst7|ALT_INV_ALU_in1[9]~12_combout\,
	dataf => \b2v_inst7|ALT_INV_ALU_in2[9]~12_combout\,
	cin => \b2v_inst7|Add0~58\,
	sumout => \b2v_inst7|Add0~49_sumout\,
	cout => \b2v_inst7|Add0~50\);

-- Location: MLABCELL_X28_Y3_N33
\b2v_inst7|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|Add0~53_sumout\ = SUM(( \b2v_inst7|ALU_in1[10]~13_combout\ ) + ( !\b2v_inst7|ALU_in2[10]~13_combout\ $ (((!\b2v_inst|ALU_Opcode[1]~0_combout\ & ((!\b2v_inst5|temp_address[9]~0_combout\) # (!\b2v_inst4|z[14]~5_combout\))))) ) + ( 
-- \b2v_inst7|Add0~50\ ))
-- \b2v_inst7|Add0~54\ = CARRY(( \b2v_inst7|ALU_in1[10]~13_combout\ ) + ( !\b2v_inst7|ALU_in2[10]~13_combout\ $ (((!\b2v_inst|ALU_Opcode[1]~0_combout\ & ((!\b2v_inst5|temp_address[9]~0_combout\) # (!\b2v_inst4|z[14]~5_combout\))))) ) + ( \b2v_inst7|Add0~50\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010000101011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_ALU_Opcode[1]~0_combout\,
	datab => \b2v_inst5|ALT_INV_temp_address[9]~0_combout\,
	datac => \b2v_inst4|ALT_INV_z[14]~5_combout\,
	datad => \b2v_inst7|ALT_INV_ALU_in1[10]~13_combout\,
	dataf => \b2v_inst7|ALT_INV_ALU_in2[10]~13_combout\,
	cin => \b2v_inst7|Add0~50\,
	sumout => \b2v_inst7|Add0~53_sumout\,
	cout => \b2v_inst7|Add0~54\);

-- Location: LABCELL_X29_Y3_N30
\b2v_inst4|z[10]~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[10]~109_combout\ = ( !\b2v_inst4|z[14]~50_combout\ & ( (!\b2v_inst4|z[14]~7_combout\ & ((!\b2v_inst4|z[14]~8_combout\ & (((\b2v_inst7|Add0~53_sumout\)))) # (\b2v_inst4|z[14]~8_combout\ & (\b2v_inst7|ALU_in2[10]~13_combout\ & 
-- (\b2v_inst7|ALU_in1[10]~13_combout\))))) # (\b2v_inst4|z[14]~7_combout\ & (!\b2v_inst4|z[14]~8_combout\ & (((\b2v_inst7|ALU_in1[10]~13_combout\)) # (\b2v_inst7|ALU_in2[10]~13_combout\)))) ) ) # ( \b2v_inst4|z[14]~50_combout\ & ( 
-- (((\b2v_inst3|IR_Op[10]~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000000110100000011110000111111010000111101000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|ALT_INV_ALU_in2[10]~13_combout\,
	datab => \b2v_inst4|ALT_INV_z[14]~7_combout\,
	datac => \b2v_inst3|ALT_INV_IR_Op[10]~13_combout\,
	datad => \b2v_inst7|ALT_INV_ALU_in1[10]~13_combout\,
	datae => \b2v_inst4|ALT_INV_z[14]~50_combout\,
	dataf => \b2v_inst7|ALT_INV_Add0~53_sumout\,
	datag => \b2v_inst4|ALT_INV_z[14]~8_combout\,
	combout => \b2v_inst4|z[10]~109_combout\);

-- Location: LABCELL_X31_Y4_N6
\b2v_inst4|z[10]~92\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[10]~92_combout\ = ( \b2v_inst4|z[14]~9_combout\ & ( \b2v_inst4|Mux0~16_combout\ ) ) # ( !\b2v_inst4|z[14]~9_combout\ & ( (!\b2v_inst4|z[14]~2_combout\ & (\b2v_inst4|Mux16~16_combout\ & (\b2v_inst4|z[14]~47_combout\))) # 
-- (\b2v_inst4|z[14]~2_combout\ & (((\b2v_inst4|Mux0~16_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[14]~2_combout\,
	datab => \b2v_inst4|ALT_INV_Mux16~16_combout\,
	datac => \b2v_inst4|ALT_INV_z[14]~47_combout\,
	datad => \b2v_inst4|ALT_INV_Mux0~16_combout\,
	dataf => \b2v_inst4|ALT_INV_z[14]~9_combout\,
	combout => \b2v_inst4|z[10]~92_combout\);

-- Location: LABCELL_X29_Y3_N54
\b2v_inst4|z[10]~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[10]~93_combout\ = ( \b2v_inst4|z[14]~48_combout\ & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(10) & ( (((\b2v_inst4|z[10]~109_combout\ & \b2v_inst4|z[15]~91_combout\)) # (\b2v_inst4|z[10]~92_combout\)) # 
-- (\b2v_inst4|z[15]~71_combout\) ) ) ) # ( !\b2v_inst4|z[14]~48_combout\ & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(10) & ( ((\b2v_inst4|z[10]~109_combout\ & \b2v_inst4|z[15]~91_combout\)) # (\b2v_inst4|z[10]~92_combout\) ) ) ) # ( 
-- \b2v_inst4|z[14]~48_combout\ & ( !\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(10) & ( ((\b2v_inst4|z[10]~109_combout\ & \b2v_inst4|z[15]~91_combout\)) # (\b2v_inst4|z[10]~92_combout\) ) ) ) # ( !\b2v_inst4|z[14]~48_combout\ & ( 
-- !\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(10) & ( ((\b2v_inst4|z[10]~109_combout\ & \b2v_inst4|z[15]~91_combout\)) # (\b2v_inst4|z[10]~92_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111100001111001111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[15]~71_combout\,
	datab => \b2v_inst4|ALT_INV_z[10]~109_combout\,
	datac => \b2v_inst4|ALT_INV_z[10]~92_combout\,
	datad => \b2v_inst4|ALT_INV_z[15]~91_combout\,
	datae => \b2v_inst4|ALT_INV_z[14]~48_combout\,
	dataf => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(10),
	combout => \b2v_inst4|z[10]~93_combout\);

-- Location: LABCELL_X31_Y3_N51
\b2v_inst4|Mux16~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux16~6_combout\ = ( \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a10\ & ( (!\b2v_inst4|Mux16~0_combout\) # ((!\b2v_inst4|Mux16~1_combout\) # (\b2v_inst4|regs_rtl_1_bypass\(19))) ) ) # ( !\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a10\ & 
-- ( (\b2v_inst4|Mux16~0_combout\ & (\b2v_inst4|Mux16~1_combout\ & \b2v_inst4|regs_rtl_1_bypass\(19))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010111111010111111111111101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux16~0_combout\,
	datac => \b2v_inst4|ALT_INV_Mux16~1_combout\,
	datad => \b2v_inst4|ALT_INV_regs_rtl_1_bypass\(19),
	dataf => \b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a10\,
	combout => \b2v_inst4|Mux16~6_combout\);

-- Location: M10K_X26_Y6_N0
\b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "C:\Users\epik990\Documents\compsys701\testing.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memory_interface:b2v_inst5|memory_block:memory_test|altsyncram:altsyncram_component|altsyncram_b274:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 12,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => GND,
	portbre => VCC,
	clk0 => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	portadatain => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portbdatain => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAIN_bus\,
	portaaddr => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\,
	portbdataout => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: LABCELL_X31_Y3_N54
\b2v_inst4|z[5]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[5]~36_combout\ = ( \b2v_inst3|IR_Op[5]~5_combout\ & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(5) ) ) # ( !\b2v_inst3|IR_Op[5]~5_combout\ & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(5) & ( 
-- (\b2v_inst|state.T2~q\ & (\b2v_inst3|temp_IR\(14) & ((!\b2v_inst|Mux15~4_combout\) # (\b2v_inst|Mux15~1_combout\)))) ) ) ) # ( \b2v_inst3|IR_Op[5]~5_combout\ & ( !\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(5) & ( 
-- (!\b2v_inst|state.T2~q\) # ((!\b2v_inst3|temp_IR\(14)) # ((\b2v_inst|Mux15~4_combout\ & !\b2v_inst|Mux15~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011111110111000010000000100011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_state.T2~q\,
	datab => \b2v_inst3|ALT_INV_temp_IR\(14),
	datac => \b2v_inst|ALT_INV_Mux15~4_combout\,
	datad => \b2v_inst|ALT_INV_Mux15~1_combout\,
	datae => \b2v_inst3|ALT_INV_IR_Op[5]~5_combout\,
	dataf => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(5),
	combout => \b2v_inst4|z[5]~36_combout\);

-- Location: LABCELL_X27_Y3_N0
\b2v_inst4|z[5]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[5]~37_combout\ = ( \b2v_inst7|ALU_in1[5]~5_combout\ & ( (!\b2v_inst|z_control[1]~1_combout\ & (((\b2v_inst4|z[6]~15_combout\ & \b2v_inst7|ALU_in2[5]~5_combout\)) # (\b2v_inst4|z[5]~36_combout\))) # (\b2v_inst|z_control[1]~1_combout\ & 
-- (\b2v_inst4|z[6]~15_combout\ & ((\b2v_inst7|ALU_in2[5]~5_combout\)))) ) ) # ( !\b2v_inst7|ALU_in1[5]~5_combout\ & ( (!\b2v_inst|z_control[1]~1_combout\ & \b2v_inst4|z[5]~36_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010001110110000101000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_z_control[1]~1_combout\,
	datab => \b2v_inst4|ALT_INV_z[6]~15_combout\,
	datac => \b2v_inst4|ALT_INV_z[5]~36_combout\,
	datad => \b2v_inst7|ALT_INV_ALU_in2[5]~5_combout\,
	dataf => \b2v_inst7|ALT_INV_ALU_in1[5]~5_combout\,
	combout => \b2v_inst4|z[5]~37_combout\);

-- Location: LABCELL_X27_Y3_N36
\b2v_inst4|z[5]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[5]~38_combout\ = ( \b2v_inst7|ALU_in2[5]~5_combout\ & ( \b2v_inst4|z[14]~7_combout\ & ( (!\b2v_inst4|z[5]~37_combout\ & !\b2v_inst4|z[6]~14_combout\) ) ) ) # ( !\b2v_inst7|ALU_in2[5]~5_combout\ & ( \b2v_inst4|z[14]~7_combout\ & ( 
-- (!\b2v_inst4|z[5]~37_combout\ & ((!\b2v_inst7|ALU_in1[5]~5_combout\) # (!\b2v_inst4|z[6]~14_combout\))) ) ) ) # ( \b2v_inst7|ALU_in2[5]~5_combout\ & ( !\b2v_inst4|z[14]~7_combout\ & ( (!\b2v_inst4|z[5]~37_combout\ & ((!\b2v_inst7|Add0~21_sumout\) # 
-- (!\b2v_inst4|z[6]~14_combout\))) ) ) ) # ( !\b2v_inst7|ALU_in2[5]~5_combout\ & ( !\b2v_inst4|z[14]~7_combout\ & ( (!\b2v_inst4|z[5]~37_combout\ & ((!\b2v_inst7|Add0~21_sumout\) # (!\b2v_inst4|z[6]~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010100000111100001010000011110000110000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|ALT_INV_Add0~21_sumout\,
	datab => \b2v_inst7|ALT_INV_ALU_in1[5]~5_combout\,
	datac => \b2v_inst4|ALT_INV_z[5]~37_combout\,
	datad => \b2v_inst4|ALT_INV_z[6]~14_combout\,
	datae => \b2v_inst7|ALT_INV_ALU_in2[5]~5_combout\,
	dataf => \b2v_inst4|ALT_INV_z[14]~7_combout\,
	combout => \b2v_inst4|z[5]~38_combout\);

-- Location: IOIBUF_X16_Y0_N18
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: FF_X27_Y3_N29
\signal_registers|SIP_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \b2v_inst|load_sip~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \signal_registers|SIP_reg\(5));

-- Location: LABCELL_X27_Y3_N27
\b2v_inst4|z[5]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[5]~39_combout\ = ( \signal_registers|SIP_reg\(5) & ( \b2v_inst4|z[14]~9_combout\ & ( \b2v_inst4|Mux0~7_combout\ ) ) ) # ( !\signal_registers|SIP_reg\(5) & ( \b2v_inst4|z[14]~9_combout\ & ( \b2v_inst4|Mux0~7_combout\ ) ) ) # ( 
-- \signal_registers|SIP_reg\(5) & ( !\b2v_inst4|z[14]~9_combout\ & ( (!\b2v_inst4|z[14]~2_combout\ & (\b2v_inst4|z[5]~11_combout\ & (!\b2v_inst4|z[5]~4_combout\))) # (\b2v_inst4|z[14]~2_combout\ & (((\b2v_inst4|Mux0~7_combout\)))) ) ) ) # ( 
-- !\signal_registers|SIP_reg\(5) & ( !\b2v_inst4|z[14]~9_combout\ & ( (\b2v_inst4|Mux0~7_combout\ & \b2v_inst4|z[14]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010001000000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[5]~11_combout\,
	datab => \b2v_inst4|ALT_INV_z[5]~4_combout\,
	datac => \b2v_inst4|ALT_INV_Mux0~7_combout\,
	datad => \b2v_inst4|ALT_INV_z[14]~2_combout\,
	datae => \signal_registers|ALT_INV_SIP_reg\(5),
	dataf => \b2v_inst4|ALT_INV_z[14]~9_combout\,
	combout => \b2v_inst4|z[5]~39_combout\);

-- Location: LABCELL_X27_Y3_N6
\b2v_inst4|z[5]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[5]~40_combout\ = ( \b2v_inst4|z[5]~39_combout\ & ( \b2v_inst4|z[5]~4_combout\ ) ) # ( !\b2v_inst4|z[5]~39_combout\ & ( \b2v_inst4|z[5]~4_combout\ & ( (\b2v_inst4|z[1]~10_combout\ & ((!\b2v_inst4|z[14]~3_combout\ & 
-- ((!\b2v_inst4|z[5]~38_combout\))) # (\b2v_inst4|z[14]~3_combout\ & (\b2v_inst4|Mux16~6_combout\)))) ) ) ) # ( \b2v_inst4|z[5]~39_combout\ & ( !\b2v_inst4|z[5]~4_combout\ ) ) # ( !\b2v_inst4|z[5]~39_combout\ & ( !\b2v_inst4|z[5]~4_combout\ & ( 
-- (!\b2v_inst4|z[5]~38_combout\ & \b2v_inst4|z[1]~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100111111111111111100001100000001011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux16~6_combout\,
	datab => \b2v_inst4|ALT_INV_z[5]~38_combout\,
	datac => \b2v_inst4|ALT_INV_z[1]~10_combout\,
	datad => \b2v_inst4|ALT_INV_z[14]~3_combout\,
	datae => \b2v_inst4|ALT_INV_z[5]~39_combout\,
	dataf => \b2v_inst4|ALT_INV_z[5]~4_combout\,
	combout => \b2v_inst4|z[5]~40_combout\);

-- Location: FF_X27_Y3_N40
\b2v_inst4|regs_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst4|z[5]~40_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_0_bypass\(19));

-- Location: LABCELL_X30_Y3_N15
\b2v_inst4|Mux0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux0~7_combout\ = ( \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a10\ & ( (!\b2v_inst4|Mux0~0_combout\) # ((!\b2v_inst4|Mux0~1_combout\) # (\b2v_inst4|regs_rtl_0_bypass\(19))) ) ) # ( !\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a10\ & ( 
-- (\b2v_inst4|Mux0~0_combout\ & (\b2v_inst4|Mux0~1_combout\ & \b2v_inst4|regs_rtl_0_bypass\(19))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111101111111011111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux0~0_combout\,
	datab => \b2v_inst4|ALT_INV_Mux0~1_combout\,
	datac => \b2v_inst4|ALT_INV_regs_rtl_0_bypass\(19),
	dataf => \b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a10\,
	combout => \b2v_inst4|Mux0~7_combout\);

-- Location: LABCELL_X31_Y3_N0
\b2v_inst5|temp_address[5]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|temp_address[5]~9_combout\ = ( \b2v_inst4|Mux16~6_combout\ & ( (\b2v_inst4|Mux0~7_combout\) # (\b2v_inst5|temp_address[9]~3_combout\) ) ) # ( !\b2v_inst4|Mux16~6_combout\ & ( (!\b2v_inst5|temp_address[9]~3_combout\ & \b2v_inst4|Mux0~7_combout\) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ALT_INV_temp_address[9]~3_combout\,
	datad => \b2v_inst4|ALT_INV_Mux0~7_combout\,
	dataf => \b2v_inst4|ALT_INV_Mux16~6_combout\,
	combout => \b2v_inst5|temp_address[5]~9_combout\);

-- Location: LABCELL_X31_Y2_N21
\b2v_inst5|address_b_temp[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|address_b_temp\(5) = ( \b2v_inst5|temp_address[9]~2_combout\ & ( \b2v_inst5|temp_address[5]~9_combout\ ) ) # ( !\b2v_inst5|temp_address[9]~2_combout\ & ( \b2v_inst5|address_b_temp\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|ALT_INV_temp_address[5]~9_combout\,
	datad => \b2v_inst5|ALT_INV_address_b_temp\(5),
	dataf => \b2v_inst5|ALT_INV_temp_address[9]~2_combout\,
	combout => \b2v_inst5|address_b_temp\(5));

-- Location: MLABCELL_X25_Y4_N33
\b2v_inst4|z[4]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[4]~31_combout\ = ( \b2v_inst3|temp_IR\(14) & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(4) & ( ((\b2v_inst|state.T2~q\ & ((!\b2v_inst|Mux15~4_combout\) # (\b2v_inst|Mux15~1_combout\)))) # 
-- (\b2v_inst3|IR_Op[4]~4_combout\) ) ) ) # ( !\b2v_inst3|temp_IR\(14) & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(4) & ( \b2v_inst3|IR_Op[4]~4_combout\ ) ) ) # ( \b2v_inst3|temp_IR\(14) & ( 
-- !\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(4) & ( (\b2v_inst3|IR_Op[4]~4_combout\ & ((!\b2v_inst|state.T2~q\) # ((!\b2v_inst|Mux15~1_combout\ & \b2v_inst|Mux15~4_combout\)))) ) ) ) # ( !\b2v_inst3|temp_IR\(14) & ( 
-- !\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(4) & ( \b2v_inst3|IR_Op[4]~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001010111000000000111111110101000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_state.T2~q\,
	datab => \b2v_inst|ALT_INV_Mux15~1_combout\,
	datac => \b2v_inst|ALT_INV_Mux15~4_combout\,
	datad => \b2v_inst3|ALT_INV_IR_Op[4]~4_combout\,
	datae => \b2v_inst3|ALT_INV_temp_IR\(14),
	dataf => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(4),
	combout => \b2v_inst4|z[4]~31_combout\);

-- Location: LABCELL_X27_Y3_N42
\b2v_inst4|z[4]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[4]~32_combout\ = ( \b2v_inst7|ALU_in2[4]~4_combout\ & ( (!\b2v_inst7|ALU_in1[4]~4_combout\ & (((!\b2v_inst|z_control[1]~1_combout\ & \b2v_inst4|z[4]~31_combout\)))) # (\b2v_inst7|ALU_in1[4]~4_combout\ & (((!\b2v_inst|z_control[1]~1_combout\ & 
-- \b2v_inst4|z[4]~31_combout\)) # (\b2v_inst4|z[6]~15_combout\))) ) ) # ( !\b2v_inst7|ALU_in2[4]~4_combout\ & ( (!\b2v_inst|z_control[1]~1_combout\ & \b2v_inst4|z[4]~31_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000010001111100010001000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|ALT_INV_ALU_in1[4]~4_combout\,
	datab => \b2v_inst4|ALT_INV_z[6]~15_combout\,
	datac => \b2v_inst|ALT_INV_z_control[1]~1_combout\,
	datad => \b2v_inst4|ALT_INV_z[4]~31_combout\,
	dataf => \b2v_inst7|ALT_INV_ALU_in2[4]~4_combout\,
	combout => \b2v_inst4|z[4]~32_combout\);

-- Location: LABCELL_X27_Y3_N30
\b2v_inst4|z[4]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[4]~33_combout\ = ( \b2v_inst4|z[6]~14_combout\ & ( \b2v_inst4|z[14]~7_combout\ & ( (!\b2v_inst4|z[4]~32_combout\ & (!\b2v_inst7|ALU_in1[4]~4_combout\ & !\b2v_inst7|ALU_in2[4]~4_combout\)) ) ) ) # ( !\b2v_inst4|z[6]~14_combout\ & ( 
-- \b2v_inst4|z[14]~7_combout\ & ( !\b2v_inst4|z[4]~32_combout\ ) ) ) # ( \b2v_inst4|z[6]~14_combout\ & ( !\b2v_inst4|z[14]~7_combout\ & ( (!\b2v_inst4|z[4]~32_combout\ & !\b2v_inst7|Add0~17_sumout\) ) ) ) # ( !\b2v_inst4|z[6]~14_combout\ & ( 
-- !\b2v_inst4|z[14]~7_combout\ & ( !\b2v_inst4|z[4]~32_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101000001010000010101010101010101000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[4]~32_combout\,
	datab => \b2v_inst7|ALT_INV_ALU_in1[4]~4_combout\,
	datac => \b2v_inst7|ALT_INV_Add0~17_sumout\,
	datad => \b2v_inst7|ALT_INV_ALU_in2[4]~4_combout\,
	datae => \b2v_inst4|ALT_INV_z[6]~14_combout\,
	dataf => \b2v_inst4|ALT_INV_z[14]~7_combout\,
	combout => \b2v_inst4|z[4]~33_combout\);

-- Location: LABCELL_X27_Y3_N18
\b2v_inst4|z[4]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[4]~35_combout\ = ( \b2v_inst4|Mux16~3_combout\ & ( \b2v_inst4|z[5]~4_combout\ & ( ((\b2v_inst4|z[1]~10_combout\ & ((!\b2v_inst4|z[4]~33_combout\) # (\b2v_inst4|z[14]~3_combout\)))) # (\b2v_inst4|z[4]~34_combout\) ) ) ) # ( 
-- !\b2v_inst4|Mux16~3_combout\ & ( \b2v_inst4|z[5]~4_combout\ & ( ((!\b2v_inst4|z[4]~33_combout\ & (\b2v_inst4|z[1]~10_combout\ & !\b2v_inst4|z[14]~3_combout\))) # (\b2v_inst4|z[4]~34_combout\) ) ) ) # ( \b2v_inst4|Mux16~3_combout\ & ( 
-- !\b2v_inst4|z[5]~4_combout\ & ( ((!\b2v_inst4|z[4]~33_combout\ & \b2v_inst4|z[1]~10_combout\)) # (\b2v_inst4|z[4]~34_combout\) ) ) ) # ( !\b2v_inst4|Mux16~3_combout\ & ( !\b2v_inst4|z[5]~4_combout\ & ( ((!\b2v_inst4|z[4]~33_combout\ & 
-- \b2v_inst4|z[1]~10_combout\)) # (\b2v_inst4|z[4]~34_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101011101010111010101110101011101010101010101110101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[4]~34_combout\,
	datab => \b2v_inst4|ALT_INV_z[4]~33_combout\,
	datac => \b2v_inst4|ALT_INV_z[1]~10_combout\,
	datad => \b2v_inst4|ALT_INV_z[14]~3_combout\,
	datae => \b2v_inst4|ALT_INV_Mux16~3_combout\,
	dataf => \b2v_inst4|ALT_INV_z[5]~4_combout\,
	combout => \b2v_inst4|z[4]~35_combout\);

-- Location: FF_X27_Y3_N44
\b2v_inst4|regs_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst4|z[4]~35_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_0_bypass\(20));

-- Location: LABCELL_X30_Y3_N12
\b2v_inst4|Mux0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux0~6_combout\ = ( \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a11\ & ( (!\b2v_inst4|Mux0~0_combout\) # ((!\b2v_inst4|Mux0~1_combout\) # (\b2v_inst4|regs_rtl_0_bypass\(20))) ) ) # ( !\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a11\ & ( 
-- (\b2v_inst4|Mux0~0_combout\ & (\b2v_inst4|Mux0~1_combout\ & \b2v_inst4|regs_rtl_0_bypass\(20))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000111101110111111111110111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux0~0_combout\,
	datab => \b2v_inst4|ALT_INV_Mux0~1_combout\,
	datad => \b2v_inst4|ALT_INV_regs_rtl_0_bypass\(20),
	dataf => \b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a11\,
	combout => \b2v_inst4|Mux0~6_combout\);

-- Location: LABCELL_X31_Y3_N12
\b2v_inst5|temp_address[4]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|temp_address[4]~8_combout\ = ( \b2v_inst4|Mux0~6_combout\ & ( \b2v_inst4|Mux16~3_combout\ ) ) # ( !\b2v_inst4|Mux0~6_combout\ & ( \b2v_inst4|Mux16~3_combout\ & ( \b2v_inst5|temp_address[9]~3_combout\ ) ) ) # ( \b2v_inst4|Mux0~6_combout\ & ( 
-- !\b2v_inst4|Mux16~3_combout\ & ( !\b2v_inst5|temp_address[9]~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ALT_INV_temp_address[9]~3_combout\,
	datae => \b2v_inst4|ALT_INV_Mux0~6_combout\,
	dataf => \b2v_inst4|ALT_INV_Mux16~3_combout\,
	combout => \b2v_inst5|temp_address[4]~8_combout\);

-- Location: LABCELL_X31_Y2_N0
\b2v_inst5|address_b_temp[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|address_b_temp\(4) = ( \b2v_inst5|temp_address[4]~8_combout\ & ( (\b2v_inst5|address_b_temp\(4)) # (\b2v_inst5|temp_address[9]~2_combout\) ) ) # ( !\b2v_inst5|temp_address[4]~8_combout\ & ( (!\b2v_inst5|temp_address[9]~2_combout\ & 
-- \b2v_inst5|address_b_temp\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|ALT_INV_temp_address[9]~2_combout\,
	datad => \b2v_inst5|ALT_INV_address_b_temp\(4),
	dataf => \b2v_inst5|ALT_INV_temp_address[4]~8_combout\,
	combout => \b2v_inst5|address_b_temp\(4));

-- Location: FF_X27_Y5_N38
\b2v_inst4|regs_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst4|z[12]~76_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_0_bypass\(12));

-- Location: LABCELL_X27_Y5_N36
\b2v_inst4|Mux0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux0~13_combout\ = ( \b2v_inst4|Mux0~0_combout\ & ( (!\b2v_inst4|Mux0~1_combout\ & (\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a3\)) # (\b2v_inst4|Mux0~1_combout\ & ((\b2v_inst4|regs_rtl_0_bypass\(12)))) ) ) # ( !\b2v_inst4|Mux0~0_combout\ 
-- & ( \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a3\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux0~1_combout\,
	datac => \b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	datad => \b2v_inst4|ALT_INV_regs_rtl_0_bypass\(12),
	dataf => \b2v_inst4|ALT_INV_Mux0~0_combout\,
	combout => \b2v_inst4|Mux0~13_combout\);

-- Location: LABCELL_X27_Y4_N12
\b2v_inst7|ALU_in1[12]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|ALU_in1[12]~10_combout\ = ( \b2v_inst4|Mux0~13_combout\ & ( (!\b2v_inst3|temp_IR\(15) & (\b2v_inst3|IR_Op[12]~10_combout\ & ((\b2v_inst3|temp_IR\(14))))) # (\b2v_inst3|temp_IR\(15) & (((\b2v_inst3|temp_IR\(14)) # (\b2v_inst4|regs[10][12]~q\)))) 
-- ) ) # ( !\b2v_inst4|Mux0~13_combout\ & ( (!\b2v_inst3|temp_IR\(15) & (\b2v_inst3|IR_Op[12]~10_combout\ & ((\b2v_inst3|temp_IR\(14))))) # (\b2v_inst3|temp_IR\(15) & (((\b2v_inst4|regs[10][12]~q\ & !\b2v_inst3|temp_IR\(14))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100000000110100010000000011011101110000001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|ALT_INV_IR_Op[12]~10_combout\,
	datab => \b2v_inst3|ALT_INV_temp_IR\(15),
	datac => \b2v_inst4|ALT_INV_regs[10][12]~q\,
	datad => \b2v_inst3|ALT_INV_temp_IR\(14),
	dataf => \b2v_inst4|ALT_INV_Mux0~13_combout\,
	combout => \b2v_inst7|ALU_in1[12]~10_combout\);

-- Location: FF_X27_Y5_N23
\b2v_inst4|regs_rtl_1_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst4|z[12]~76_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_1_bypass\(12));

-- Location: LABCELL_X27_Y5_N21
\b2v_inst4|Mux16~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux16~13_combout\ = ( \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a3\ & ( (!\b2v_inst4|Mux16~1_combout\) # ((!\b2v_inst4|Mux16~0_combout\) # (\b2v_inst4|regs_rtl_1_bypass\(12))) ) ) # ( !\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a3\ & ( 
-- (\b2v_inst4|Mux16~1_combout\ & (\b2v_inst4|Mux16~0_combout\ & \b2v_inst4|regs_rtl_1_bypass\(12))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010111111010111111111111101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux16~1_combout\,
	datac => \b2v_inst4|ALT_INV_Mux16~0_combout\,
	datad => \b2v_inst4|ALT_INV_regs_rtl_1_bypass\(12),
	dataf => \b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a3\,
	combout => \b2v_inst4|Mux16~13_combout\);

-- Location: MLABCELL_X28_Y5_N0
\b2v_inst7|ALU_in2[12]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|ALU_in2[12]~10_combout\ = ( \b2v_inst4|Mux0~13_combout\ & ( (\b2v_inst4|Mux16~13_combout\) # (\b2v_inst|Mux2~0_combout\) ) ) # ( !\b2v_inst4|Mux0~13_combout\ & ( (!\b2v_inst|Mux2~0_combout\ & \b2v_inst4|Mux16~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|ALT_INV_Mux2~0_combout\,
	datad => \b2v_inst4|ALT_INV_Mux16~13_combout\,
	dataf => \b2v_inst4|ALT_INV_Mux0~13_combout\,
	combout => \b2v_inst7|ALU_in2[12]~10_combout\);

-- Location: FF_X29_Y1_N14
\b2v_inst4|regs[10][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst4|z[11]~85_combout\,
	ena => \b2v_inst4|regs[10][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs[10][11]~q\);

-- Location: LABCELL_X29_Y1_N24
\b2v_inst7|ALU_in1[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|ALU_in1[11]~11_combout\ = ( \b2v_inst3|IR_Op[11]~11_combout\ & ( (!\b2v_inst3|temp_IR\(15) & (((\b2v_inst3|temp_IR\(14))))) # (\b2v_inst3|temp_IR\(15) & ((!\b2v_inst3|temp_IR\(14) & (\b2v_inst4|regs[10][11]~q\)) # (\b2v_inst3|temp_IR\(14) & 
-- ((\b2v_inst4|Mux0~15_combout\))))) ) ) # ( !\b2v_inst3|IR_Op[11]~11_combout\ & ( (\b2v_inst3|temp_IR\(15) & ((!\b2v_inst3|temp_IR\(14) & (\b2v_inst4|regs[10][11]~q\)) # (\b2v_inst3|temp_IR\(14) & ((\b2v_inst4|Mux0~15_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100010000010100010001101011110001000110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|ALT_INV_temp_IR\(15),
	datab => \b2v_inst4|ALT_INV_regs[10][11]~q\,
	datac => \b2v_inst4|ALT_INV_Mux0~15_combout\,
	datad => \b2v_inst3|ALT_INV_temp_IR\(14),
	dataf => \b2v_inst3|ALT_INV_IR_Op[11]~11_combout\,
	combout => \b2v_inst7|ALU_in1[11]~11_combout\);

-- Location: LABCELL_X30_Y1_N51
\b2v_inst7|ALU_in2[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|ALU_in2[11]~11_combout\ = ( \b2v_inst4|Mux16~15_combout\ & ( \b2v_inst4|Mux0~15_combout\ ) ) # ( !\b2v_inst4|Mux16~15_combout\ & ( \b2v_inst4|Mux0~15_combout\ & ( \b2v_inst|Mux2~0_combout\ ) ) ) # ( \b2v_inst4|Mux16~15_combout\ & ( 
-- !\b2v_inst4|Mux0~15_combout\ & ( !\b2v_inst|Mux2~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_Mux2~0_combout\,
	datae => \b2v_inst4|ALT_INV_Mux16~15_combout\,
	dataf => \b2v_inst4|ALT_INV_Mux0~15_combout\,
	combout => \b2v_inst7|ALU_in2[11]~11_combout\);

-- Location: MLABCELL_X28_Y3_N36
\b2v_inst7|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|Add0~45_sumout\ = SUM(( \b2v_inst7|ALU_in1[11]~11_combout\ ) + ( !\b2v_inst7|ALU_in2[11]~11_combout\ $ (((!\b2v_inst|ALU_Opcode[1]~0_combout\ & ((!\b2v_inst4|z[14]~5_combout\) # (!\b2v_inst5|temp_address[9]~0_combout\))))) ) + ( 
-- \b2v_inst7|Add0~54\ ))
-- \b2v_inst7|Add0~46\ = CARRY(( \b2v_inst7|ALU_in1[11]~11_combout\ ) + ( !\b2v_inst7|ALU_in2[11]~11_combout\ $ (((!\b2v_inst|ALU_Opcode[1]~0_combout\ & ((!\b2v_inst4|z[14]~5_combout\) # (!\b2v_inst5|temp_address[9]~0_combout\))))) ) + ( \b2v_inst7|Add0~54\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010000011011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[14]~5_combout\,
	datab => \b2v_inst|ALT_INV_ALU_Opcode[1]~0_combout\,
	datac => \b2v_inst5|ALT_INV_temp_address[9]~0_combout\,
	datad => \b2v_inst7|ALT_INV_ALU_in1[11]~11_combout\,
	dataf => \b2v_inst7|ALT_INV_ALU_in2[11]~11_combout\,
	cin => \b2v_inst7|Add0~54\,
	sumout => \b2v_inst7|Add0~45_sumout\,
	cout => \b2v_inst7|Add0~46\);

-- Location: MLABCELL_X28_Y3_N39
\b2v_inst7|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|Add0~41_sumout\ = SUM(( \b2v_inst7|ALU_in1[12]~10_combout\ ) + ( !\b2v_inst7|ALU_in2[12]~10_combout\ $ (((!\b2v_inst|ALU_Opcode[1]~0_combout\ & ((!\b2v_inst4|z[14]~5_combout\) # (!\b2v_inst5|temp_address[9]~0_combout\))))) ) + ( 
-- \b2v_inst7|Add0~46\ ))
-- \b2v_inst7|Add0~42\ = CARRY(( \b2v_inst7|ALU_in1[12]~10_combout\ ) + ( !\b2v_inst7|ALU_in2[12]~10_combout\ $ (((!\b2v_inst|ALU_Opcode[1]~0_combout\ & ((!\b2v_inst4|z[14]~5_combout\) # (!\b2v_inst5|temp_address[9]~0_combout\))))) ) + ( \b2v_inst7|Add0~46\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010000011011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[14]~5_combout\,
	datab => \b2v_inst|ALT_INV_ALU_Opcode[1]~0_combout\,
	datac => \b2v_inst5|ALT_INV_temp_address[9]~0_combout\,
	datad => \b2v_inst7|ALT_INV_ALU_in1[12]~10_combout\,
	dataf => \b2v_inst7|ALT_INV_ALU_in2[12]~10_combout\,
	cin => \b2v_inst7|Add0~46\,
	sumout => \b2v_inst7|Add0~41_sumout\,
	cout => \b2v_inst7|Add0~42\);

-- Location: LABCELL_X27_Y5_N24
\b2v_inst4|z[12]~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[12]~72_combout\ = ( \b2v_inst4|z[14]~50_combout\ & ( !\b2v_inst4|z[14]~48_combout\ & ( (\b2v_inst3|IR_Op[12]~10_combout\ & (!\b2v_inst4|z[14]~9_combout\ & (!\b2v_inst4|z[14]~2_combout\ & !\b2v_inst4|z[14]~47_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|ALT_INV_IR_Op[12]~10_combout\,
	datab => \b2v_inst4|ALT_INV_z[14]~9_combout\,
	datac => \b2v_inst4|ALT_INV_z[14]~2_combout\,
	datad => \b2v_inst4|ALT_INV_z[14]~47_combout\,
	datae => \b2v_inst4|ALT_INV_z[14]~50_combout\,
	dataf => \b2v_inst4|ALT_INV_z[14]~48_combout\,
	combout => \b2v_inst4|z[12]~72_combout\);

-- Location: M10K_X38_Y4_N0
\b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a10\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000AC",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "C:\Users\epik990\Documents\compsys701\testing.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memory_interface:b2v_inst5|memory_block:memory_test|altsyncram:altsyncram_component|altsyncram_b274:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 12,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => GND,
	portbre => VCC,
	clk0 => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	portadatain => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portbdatain => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAIN_bus\,
	portaaddr => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\,
	portbdataout => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

-- Location: MLABCELL_X28_Y5_N9
\b2v_inst4|z[12]~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[12]~74_combout\ = ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(12) & ( \b2v_inst4|z[14]~48_combout\ ) ) # ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(12) & ( !\b2v_inst4|z[14]~48_combout\ & ( 
-- (!\b2v_inst4|z[14]~7_combout\ & (\b2v_inst4|z[14]~8_combout\ & (\b2v_inst7|ALU_in1[12]~10_combout\ & \b2v_inst7|ALU_in2[12]~10_combout\))) # (\b2v_inst4|z[14]~7_combout\ & (!\b2v_inst4|z[14]~8_combout\ & ((\b2v_inst7|ALU_in2[12]~10_combout\) # 
-- (\b2v_inst7|ALU_in1[12]~10_combout\)))) ) ) ) # ( !\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(12) & ( !\b2v_inst4|z[14]~48_combout\ & ( (!\b2v_inst4|z[14]~7_combout\ & (\b2v_inst4|z[14]~8_combout\ & (\b2v_inst7|ALU_in1[12]~10_combout\ 
-- & \b2v_inst7|ALU_in2[12]~10_combout\))) # (\b2v_inst4|z[14]~7_combout\ & (!\b2v_inst4|z[14]~8_combout\ & ((\b2v_inst7|ALU_in2[12]~10_combout\) # (\b2v_inst7|ALU_in1[12]~10_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000110000001000100011000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[14]~7_combout\,
	datab => \b2v_inst4|ALT_INV_z[14]~8_combout\,
	datac => \b2v_inst7|ALT_INV_ALU_in1[12]~10_combout\,
	datad => \b2v_inst7|ALT_INV_ALU_in2[12]~10_combout\,
	datae => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(12),
	dataf => \b2v_inst4|ALT_INV_z[14]~48_combout\,
	combout => \b2v_inst4|z[12]~74_combout\);

-- Location: LABCELL_X27_Y5_N30
\b2v_inst4|z[12]~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[12]~75_combout\ = ( \b2v_inst4|z[14]~2_combout\ & ( \b2v_inst4|Mux0~13_combout\ ) ) # ( !\b2v_inst4|z[14]~2_combout\ & ( (!\b2v_inst4|z[14]~9_combout\ & (\b2v_inst4|Mux16~13_combout\ & (\b2v_inst4|z[14]~47_combout\))) # 
-- (\b2v_inst4|z[14]~9_combout\ & (((\b2v_inst4|Mux0~13_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011111000100000001111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux16~13_combout\,
	datab => \b2v_inst4|ALT_INV_z[14]~47_combout\,
	datac => \b2v_inst4|ALT_INV_z[14]~9_combout\,
	datad => \b2v_inst4|ALT_INV_Mux0~13_combout\,
	dataf => \b2v_inst4|ALT_INV_z[14]~2_combout\,
	combout => \b2v_inst4|z[12]~75_combout\);

-- Location: MLABCELL_X28_Y5_N24
\b2v_inst4|z[9]~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[9]~73_combout\ = ( !\b2v_inst4|z[14]~7_combout\ & ( !\b2v_inst4|z[14]~8_combout\ & ( !\b2v_inst4|z[14]~48_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[14]~48_combout\,
	datae => \b2v_inst4|ALT_INV_z[14]~7_combout\,
	dataf => \b2v_inst4|ALT_INV_z[14]~8_combout\,
	combout => \b2v_inst4|z[9]~73_combout\);

-- Location: LABCELL_X27_Y5_N54
\b2v_inst4|z[12]~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[12]~76_combout\ = ( \b2v_inst4|z[15]~71_combout\ & ( \b2v_inst4|z[9]~73_combout\ & ( (((\b2v_inst4|z[12]~75_combout\) # (\b2v_inst4|z[12]~74_combout\)) # (\b2v_inst4|z[12]~72_combout\)) # (\b2v_inst7|Add0~41_sumout\) ) ) ) # ( 
-- !\b2v_inst4|z[15]~71_combout\ & ( \b2v_inst4|z[9]~73_combout\ & ( (\b2v_inst4|z[12]~75_combout\) # (\b2v_inst4|z[12]~72_combout\) ) ) ) # ( \b2v_inst4|z[15]~71_combout\ & ( !\b2v_inst4|z[9]~73_combout\ & ( ((\b2v_inst4|z[12]~75_combout\) # 
-- (\b2v_inst4|z[12]~74_combout\)) # (\b2v_inst4|z[12]~72_combout\) ) ) ) # ( !\b2v_inst4|z[15]~71_combout\ & ( !\b2v_inst4|z[9]~73_combout\ & ( (\b2v_inst4|z[12]~75_combout\) # (\b2v_inst4|z[12]~72_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001111111111111100110011111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|ALT_INV_Add0~41_sumout\,
	datab => \b2v_inst4|ALT_INV_z[12]~72_combout\,
	datac => \b2v_inst4|ALT_INV_z[12]~74_combout\,
	datad => \b2v_inst4|ALT_INV_z[12]~75_combout\,
	datae => \b2v_inst4|ALT_INV_z[15]~71_combout\,
	dataf => \b2v_inst4|ALT_INV_z[9]~73_combout\,
	combout => \b2v_inst4|z[12]~76_combout\);

-- Location: LABCELL_X29_Y2_N6
\b2v_inst4|Mux16~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux16~9_combout\ = ( \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a12\ & ( (!\b2v_inst4|Mux16~1_combout\) # ((!\b2v_inst4|Mux16~0_combout\) # (\b2v_inst4|regs_rtl_1_bypass\(21))) ) ) # ( !\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a12\ & 
-- ( (\b2v_inst4|Mux16~1_combout\ & (\b2v_inst4|Mux16~0_combout\ & \b2v_inst4|regs_rtl_1_bypass\(21))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111101111111011111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux16~1_combout\,
	datab => \b2v_inst4|ALT_INV_Mux16~0_combout\,
	datac => \b2v_inst4|ALT_INV_regs_rtl_1_bypass\(21),
	dataf => \b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a12\,
	combout => \b2v_inst4|Mux16~9_combout\);

-- Location: MLABCELL_X28_Y2_N39
\b2v_inst7|ALU_in2[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|ALU_in2[3]~3_combout\ = ( \b2v_inst4|Mux16~9_combout\ & ( (!\b2v_inst|Mux2~0_combout\) # (\b2v_inst4|Mux0~5_combout\) ) ) # ( !\b2v_inst4|Mux16~9_combout\ & ( (\b2v_inst|Mux2~0_combout\ & \b2v_inst4|Mux0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|ALT_INV_Mux2~0_combout\,
	datad => \b2v_inst4|ALT_INV_Mux0~5_combout\,
	dataf => \b2v_inst4|ALT_INV_Mux16~9_combout\,
	combout => \b2v_inst7|ALU_in2[3]~3_combout\);

-- Location: MLABCELL_X28_Y2_N12
\b2v_inst4|z[3]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[3]~26_combout\ = ( \b2v_inst3|temp_IR\(14) & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(3) & ( ((\b2v_inst|state.T2~q\ & ((!\b2v_inst|Mux15~4_combout\) # (\b2v_inst|Mux15~1_combout\)))) # 
-- (\b2v_inst3|IR_Op[3]~3_combout\) ) ) ) # ( !\b2v_inst3|temp_IR\(14) & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(3) & ( \b2v_inst3|IR_Op[3]~3_combout\ ) ) ) # ( \b2v_inst3|temp_IR\(14) & ( 
-- !\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(3) & ( (\b2v_inst3|IR_Op[3]~3_combout\ & ((!\b2v_inst|state.T2~q\) # ((!\b2v_inst|Mux15~1_combout\ & \b2v_inst|Mux15~4_combout\)))) ) ) ) # ( !\b2v_inst3|temp_IR\(14) & ( 
-- !\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(3) & ( \b2v_inst3|IR_Op[3]~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001000100011001000110011001100110111011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_state.T2~q\,
	datab => \b2v_inst3|ALT_INV_IR_Op[3]~3_combout\,
	datac => \b2v_inst|ALT_INV_Mux15~1_combout\,
	datad => \b2v_inst|ALT_INV_Mux15~4_combout\,
	datae => \b2v_inst3|ALT_INV_temp_IR\(14),
	dataf => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(3),
	combout => \b2v_inst4|z[3]~26_combout\);

-- Location: MLABCELL_X28_Y2_N0
\b2v_inst4|z[3]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[3]~27_combout\ = ( \b2v_inst7|ALU_in2[3]~3_combout\ & ( (!\b2v_inst7|ALU_in1[3]~3_combout\ & (\b2v_inst4|z[3]~26_combout\ & ((!\b2v_inst|z_control[1]~1_combout\)))) # (\b2v_inst7|ALU_in1[3]~3_combout\ & (((\b2v_inst4|z[3]~26_combout\ & 
-- !\b2v_inst|z_control[1]~1_combout\)) # (\b2v_inst4|z[6]~15_combout\))) ) ) # ( !\b2v_inst7|ALU_in2[3]~3_combout\ & ( (\b2v_inst4|z[3]~26_combout\ & !\b2v_inst|z_control[1]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110111000001010011011100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|ALT_INV_ALU_in1[3]~3_combout\,
	datab => \b2v_inst4|ALT_INV_z[3]~26_combout\,
	datac => \b2v_inst4|ALT_INV_z[6]~15_combout\,
	datad => \b2v_inst|ALT_INV_z_control[1]~1_combout\,
	dataf => \b2v_inst7|ALT_INV_ALU_in2[3]~3_combout\,
	combout => \b2v_inst4|z[3]~27_combout\);

-- Location: MLABCELL_X28_Y2_N48
\b2v_inst4|z[3]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[3]~28_combout\ = ( \b2v_inst4|z[6]~14_combout\ & ( \b2v_inst7|ALU_in1[3]~3_combout\ & ( (!\b2v_inst4|z[14]~7_combout\ & (!\b2v_inst7|Add0~13_sumout\ & !\b2v_inst4|z[3]~27_combout\)) ) ) ) # ( !\b2v_inst4|z[6]~14_combout\ & ( 
-- \b2v_inst7|ALU_in1[3]~3_combout\ & ( !\b2v_inst4|z[3]~27_combout\ ) ) ) # ( \b2v_inst4|z[6]~14_combout\ & ( !\b2v_inst7|ALU_in1[3]~3_combout\ & ( (!\b2v_inst4|z[3]~27_combout\ & ((!\b2v_inst4|z[14]~7_combout\ & (!\b2v_inst7|Add0~13_sumout\)) # 
-- (\b2v_inst4|z[14]~7_combout\ & ((!\b2v_inst7|ALU_in2[3]~3_combout\))))) ) ) ) # ( !\b2v_inst4|z[6]~14_combout\ & ( !\b2v_inst7|ALU_in1[3]~3_combout\ & ( !\b2v_inst4|z[3]~27_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000110100001000000011110000111100001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[14]~7_combout\,
	datab => \b2v_inst7|ALT_INV_Add0~13_sumout\,
	datac => \b2v_inst4|ALT_INV_z[3]~27_combout\,
	datad => \b2v_inst7|ALT_INV_ALU_in2[3]~3_combout\,
	datae => \b2v_inst4|ALT_INV_z[6]~14_combout\,
	dataf => \b2v_inst7|ALT_INV_ALU_in1[3]~3_combout\,
	combout => \b2v_inst4|z[3]~28_combout\);

-- Location: IOIBUF_X4_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: FF_X27_Y4_N29
\signal_registers|SIP_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \b2v_inst|load_sip~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \signal_registers|SIP_reg\(3));

-- Location: LABCELL_X27_Y4_N27
\b2v_inst4|z[3]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[3]~29_combout\ = ( \signal_registers|SIP_reg\(3) & ( \b2v_inst4|Mux0~5_combout\ & ( (((!\b2v_inst4|z[5]~4_combout\ & \b2v_inst4|z[5]~11_combout\)) # (\b2v_inst4|z[14]~2_combout\)) # (\b2v_inst4|z[14]~9_combout\) ) ) ) # ( 
-- !\signal_registers|SIP_reg\(3) & ( \b2v_inst4|Mux0~5_combout\ & ( (\b2v_inst4|z[14]~2_combout\) # (\b2v_inst4|z[14]~9_combout\) ) ) ) # ( \signal_registers|SIP_reg\(3) & ( !\b2v_inst4|Mux0~5_combout\ & ( (!\b2v_inst4|z[5]~4_combout\ & 
-- (!\b2v_inst4|z[14]~9_combout\ & (!\b2v_inst4|z[14]~2_combout\ & \b2v_inst4|z[5]~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000111111001111110011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[5]~4_combout\,
	datab => \b2v_inst4|ALT_INV_z[14]~9_combout\,
	datac => \b2v_inst4|ALT_INV_z[14]~2_combout\,
	datad => \b2v_inst4|ALT_INV_z[5]~11_combout\,
	datae => \signal_registers|ALT_INV_SIP_reg\(3),
	dataf => \b2v_inst4|ALT_INV_Mux0~5_combout\,
	combout => \b2v_inst4|z[3]~29_combout\);

-- Location: MLABCELL_X28_Y2_N42
\b2v_inst4|z[3]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[3]~30_combout\ = ( \b2v_inst4|z[3]~29_combout\ & ( \b2v_inst4|z[14]~3_combout\ ) ) # ( !\b2v_inst4|z[3]~29_combout\ & ( \b2v_inst4|z[14]~3_combout\ & ( (\b2v_inst4|z[1]~10_combout\ & ((!\b2v_inst4|z[5]~4_combout\ & 
-- (!\b2v_inst4|z[3]~28_combout\)) # (\b2v_inst4|z[5]~4_combout\ & ((\b2v_inst4|Mux16~9_combout\))))) ) ) ) # ( \b2v_inst4|z[3]~29_combout\ & ( !\b2v_inst4|z[14]~3_combout\ ) ) # ( !\b2v_inst4|z[3]~29_combout\ & ( !\b2v_inst4|z[14]~3_combout\ & ( 
-- (\b2v_inst4|z[1]~10_combout\ & !\b2v_inst4|z[3]~28_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100111111111111111101000000010001011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[1]~10_combout\,
	datab => \b2v_inst4|ALT_INV_z[3]~28_combout\,
	datac => \b2v_inst4|ALT_INV_z[5]~4_combout\,
	datad => \b2v_inst4|ALT_INV_Mux16~9_combout\,
	datae => \b2v_inst4|ALT_INV_z[3]~29_combout\,
	dataf => \b2v_inst4|ALT_INV_z[14]~3_combout\,
	combout => \b2v_inst4|z[3]~30_combout\);

-- Location: FF_X28_Y2_N20
\b2v_inst4|regs_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst4|z[3]~30_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_0_bypass\(21));

-- Location: LABCELL_X29_Y2_N57
\b2v_inst4|Mux0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux0~5_combout\ = ( \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a12\ & ( (!\b2v_inst4|Mux0~0_combout\) # ((!\b2v_inst4|Mux0~1_combout\) # (\b2v_inst4|regs_rtl_0_bypass\(21))) ) ) # ( !\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a12\ & ( 
-- (\b2v_inst4|Mux0~0_combout\ & (\b2v_inst4|regs_rtl_0_bypass\(21) & \b2v_inst4|Mux0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010111111111101011111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux0~0_combout\,
	datac => \b2v_inst4|ALT_INV_regs_rtl_0_bypass\(21),
	datad => \b2v_inst4|ALT_INV_Mux0~1_combout\,
	dataf => \b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a12\,
	combout => \b2v_inst4|Mux0~5_combout\);

-- Location: LABCELL_X29_Y2_N15
\b2v_inst5|temp_address[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|temp_address[3]~7_combout\ = ( \b2v_inst4|Mux16~9_combout\ & ( (\b2v_inst5|temp_address[9]~3_combout\) # (\b2v_inst4|Mux0~5_combout\) ) ) # ( !\b2v_inst4|Mux16~9_combout\ & ( (\b2v_inst4|Mux0~5_combout\ & !\b2v_inst5|temp_address[9]~3_combout\) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst4|ALT_INV_Mux0~5_combout\,
	datad => \b2v_inst5|ALT_INV_temp_address[9]~3_combout\,
	dataf => \b2v_inst4|ALT_INV_Mux16~9_combout\,
	combout => \b2v_inst5|temp_address[3]~7_combout\);

-- Location: LABCELL_X31_Y2_N6
\b2v_inst5|address_b_temp[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|address_b_temp\(3) = ( \b2v_inst5|address_b_temp\(3) & ( (!\b2v_inst5|temp_address[9]~2_combout\) # (\b2v_inst5|temp_address[3]~7_combout\) ) ) # ( !\b2v_inst5|address_b_temp\(3) & ( (\b2v_inst5|temp_address[9]~2_combout\ & 
-- \b2v_inst5|temp_address[3]~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|ALT_INV_temp_address[9]~2_combout\,
	datac => \b2v_inst5|ALT_INV_temp_address[3]~7_combout\,
	dataf => \b2v_inst5|ALT_INV_address_b_temp\(3),
	combout => \b2v_inst5|address_b_temp\(3));

-- Location: LABCELL_X27_Y2_N12
\b2v_inst4|Mux0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux0~12_combout\ = ( \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a2\ & ( (!\b2v_inst4|Mux0~1_combout\) # ((!\b2v_inst4|Mux0~0_combout\) # (\b2v_inst4|regs_rtl_0_bypass\(11))) ) ) # ( !\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a2\ & ( 
-- (\b2v_inst4|Mux0~1_combout\ & (\b2v_inst4|Mux0~0_combout\ & \b2v_inst4|regs_rtl_0_bypass\(11))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001111111100111111111111110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst4|ALT_INV_Mux0~1_combout\,
	datac => \b2v_inst4|ALT_INV_Mux0~0_combout\,
	datad => \b2v_inst4|ALT_INV_regs_rtl_0_bypass\(11),
	dataf => \b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	combout => \b2v_inst4|Mux0~12_combout\);

-- Location: MLABCELL_X28_Y2_N36
\b2v_inst7|ALU_in1[13]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|ALU_in1[13]~9_combout\ = ( \b2v_inst3|temp_IR\(15) & ( (!\b2v_inst3|temp_IR\(14) & (\b2v_inst4|regs[10][13]~q\)) # (\b2v_inst3|temp_IR\(14) & ((\b2v_inst4|Mux0~12_combout\))) ) ) # ( !\b2v_inst3|temp_IR\(15) & ( (\b2v_inst3|IR_Op[13]~9_combout\ 
-- & \b2v_inst3|temp_IR\(14)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|ALT_INV_IR_Op[13]~9_combout\,
	datab => \b2v_inst4|ALT_INV_regs[10][13]~q\,
	datac => \b2v_inst4|ALT_INV_Mux0~12_combout\,
	datad => \b2v_inst3|ALT_INV_temp_IR\(14),
	dataf => \b2v_inst3|ALT_INV_temp_IR\(15),
	combout => \b2v_inst7|ALU_in1[13]~9_combout\);

-- Location: FF_X27_Y2_N32
\b2v_inst4|regs_rtl_1_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst4|z[13]~70_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_1_bypass\(11));

-- Location: MLABCELL_X25_Y5_N27
\b2v_inst4|Mux16~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux16~12_combout\ = ( \b2v_inst4|Mux16~0_combout\ & ( \b2v_inst4|Mux16~1_combout\ & ( \b2v_inst4|regs_rtl_1_bypass\(11) ) ) ) # ( !\b2v_inst4|Mux16~0_combout\ & ( \b2v_inst4|Mux16~1_combout\ & ( 
-- \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a2\ ) ) ) # ( \b2v_inst4|Mux16~0_combout\ & ( !\b2v_inst4|Mux16~1_combout\ & ( \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a2\ ) ) ) # ( !\b2v_inst4|Mux16~0_combout\ & ( !\b2v_inst4|Mux16~1_combout\ & ( 
-- \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a2\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_regs_rtl_1_bypass\(11),
	datad => \b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a2\,
	datae => \b2v_inst4|ALT_INV_Mux16~0_combout\,
	dataf => \b2v_inst4|ALT_INV_Mux16~1_combout\,
	combout => \b2v_inst4|Mux16~12_combout\);

-- Location: MLABCELL_X28_Y5_N33
\b2v_inst7|ALU_in2[13]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|ALU_in2[13]~9_combout\ = ( \b2v_inst4|Mux16~12_combout\ & ( \b2v_inst4|Mux0~12_combout\ ) ) # ( !\b2v_inst4|Mux16~12_combout\ & ( \b2v_inst4|Mux0~12_combout\ & ( \b2v_inst|Mux2~0_combout\ ) ) ) # ( \b2v_inst4|Mux16~12_combout\ & ( 
-- !\b2v_inst4|Mux0~12_combout\ & ( !\b2v_inst|Mux2~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_Mux2~0_combout\,
	datae => \b2v_inst4|ALT_INV_Mux16~12_combout\,
	dataf => \b2v_inst4|ALT_INV_Mux0~12_combout\,
	combout => \b2v_inst7|ALU_in2[13]~9_combout\);

-- Location: MLABCELL_X28_Y3_N42
\b2v_inst7|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|Add0~37_sumout\ = SUM(( \b2v_inst7|ALU_in1[13]~9_combout\ ) + ( !\b2v_inst7|ALU_in2[13]~9_combout\ $ (((!\b2v_inst|ALU_Opcode[1]~0_combout\ & ((!\b2v_inst4|z[14]~5_combout\) # (!\b2v_inst5|temp_address[9]~0_combout\))))) ) + ( 
-- \b2v_inst7|Add0~42\ ))
-- \b2v_inst7|Add0~38\ = CARRY(( \b2v_inst7|ALU_in1[13]~9_combout\ ) + ( !\b2v_inst7|ALU_in2[13]~9_combout\ $ (((!\b2v_inst|ALU_Opcode[1]~0_combout\ & ((!\b2v_inst4|z[14]~5_combout\) # (!\b2v_inst5|temp_address[9]~0_combout\))))) ) + ( \b2v_inst7|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010000101011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_ALU_Opcode[1]~0_combout\,
	datab => \b2v_inst4|ALT_INV_z[14]~5_combout\,
	datac => \b2v_inst5|ALT_INV_temp_address[9]~0_combout\,
	datad => \b2v_inst7|ALT_INV_ALU_in1[13]~9_combout\,
	dataf => \b2v_inst7|ALT_INV_ALU_in2[13]~9_combout\,
	cin => \b2v_inst7|Add0~42\,
	sumout => \b2v_inst7|Add0~37_sumout\,
	cout => \b2v_inst7|Add0~38\);

-- Location: LABCELL_X27_Y2_N48
\b2v_inst4|z[13]~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[13]~64_combout\ = ( !\b2v_inst4|z[14]~7_combout\ & ( \b2v_inst7|Add0~37_sumout\ & ( (!\b2v_inst4|z[14]~47_combout\ & (!\b2v_inst4|z[14]~48_combout\ & (\b2v_inst4|z[10]~53_combout\ & \b2v_inst4|z[14]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[14]~47_combout\,
	datab => \b2v_inst4|ALT_INV_z[14]~48_combout\,
	datac => \b2v_inst4|ALT_INV_z[10]~53_combout\,
	datad => \b2v_inst4|ALT_INV_z[14]~3_combout\,
	datae => \b2v_inst4|ALT_INV_z[14]~7_combout\,
	dataf => \b2v_inst7|ALT_INV_Add0~37_sumout\,
	combout => \b2v_inst4|z[13]~64_combout\);

-- Location: LABCELL_X27_Y2_N54
\b2v_inst4|z[13]~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[13]~62_combout\ = ( \b2v_inst4|z[14]~50_combout\ & ( \b2v_inst3|IR_Op[13]~9_combout\ & ( (!\b2v_inst4|z[14]~47_combout\ & (!\b2v_inst4|z[14]~48_combout\ & (!\b2v_inst4|z[14]~9_combout\ & !\b2v_inst4|z[14]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[14]~47_combout\,
	datab => \b2v_inst4|ALT_INV_z[14]~48_combout\,
	datac => \b2v_inst4|ALT_INV_z[14]~9_combout\,
	datad => \b2v_inst4|ALT_INV_z[14]~2_combout\,
	datae => \b2v_inst4|ALT_INV_z[14]~50_combout\,
	dataf => \b2v_inst3|ALT_INV_IR_Op[13]~9_combout\,
	combout => \b2v_inst4|z[13]~62_combout\);

-- Location: LABCELL_X27_Y2_N39
\b2v_inst4|z[13]~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[13]~67_combout\ = ( \b2v_inst7|ALU_in1[13]~9_combout\ & ( \b2v_inst7|ALU_in2[13]~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst7|ALT_INV_ALU_in2[13]~9_combout\,
	dataf => \b2v_inst7|ALT_INV_ALU_in1[13]~9_combout\,
	combout => \b2v_inst4|z[13]~67_combout\);

-- Location: LABCELL_X27_Y5_N0
\b2v_inst4|z[15]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[15]~57_combout\ = ( \b2v_inst4|z[14]~8_combout\ & ( (!\b2v_inst4|z[14]~50_combout\ & !\b2v_inst4|z[14]~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000000000000000000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[14]~50_combout\,
	datac => \b2v_inst4|ALT_INV_z[14]~7_combout\,
	datae => \b2v_inst4|ALT_INV_z[14]~8_combout\,
	combout => \b2v_inst4|z[15]~57_combout\);

-- Location: LABCELL_X27_Y2_N57
\b2v_inst4|z[13]~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[13]~68_combout\ = ( \b2v_inst4|z[13]~67_combout\ & ( \b2v_inst4|z[15]~57_combout\ & ( (!\b2v_inst4|z[14]~47_combout\ & (!\b2v_inst4|z[14]~48_combout\ & (!\b2v_inst4|z[14]~2_combout\ & !\b2v_inst4|z[14]~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[14]~47_combout\,
	datab => \b2v_inst4|ALT_INV_z[14]~48_combout\,
	datac => \b2v_inst4|ALT_INV_z[14]~2_combout\,
	datad => \b2v_inst4|ALT_INV_z[14]~9_combout\,
	datae => \b2v_inst4|ALT_INV_z[13]~67_combout\,
	dataf => \b2v_inst4|ALT_INV_z[15]~57_combout\,
	combout => \b2v_inst4|z[13]~68_combout\);

-- Location: M10K_X38_Y1_N0
\b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a11\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000078",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "C:\Users\epik990\Documents\compsys701\testing.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memory_interface:b2v_inst5|memory_block:memory_test|altsyncram:altsyncram_component|altsyncram_b274:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 12,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => GND,
	portbre => VCC,
	clk0 => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	portadatain => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portbdatain => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAIN_bus\,
	portaaddr => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\,
	portbdataout => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

-- Location: MLABCELL_X28_Y1_N0
\b2v_inst4|z[13]~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[13]~63_combout\ = ( \b2v_inst4|z[14]~48_combout\ & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(13) & ( (!\b2v_inst4|z[14]~2_combout\ & (!\b2v_inst4|z[14]~50_combout\ & (!\b2v_inst4|z[14]~47_combout\ & 
-- !\b2v_inst4|z[14]~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[14]~2_combout\,
	datab => \b2v_inst4|ALT_INV_z[14]~50_combout\,
	datac => \b2v_inst4|ALT_INV_z[14]~47_combout\,
	datad => \b2v_inst4|ALT_INV_z[14]~9_combout\,
	datae => \b2v_inst4|ALT_INV_z[14]~48_combout\,
	dataf => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(13),
	combout => \b2v_inst4|z[13]~63_combout\);

-- Location: LABCELL_X27_Y2_N36
\b2v_inst4|z[13]~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[13]~69_combout\ = ( \b2v_inst4|Mux0~12_combout\ & ( (((\b2v_inst4|Mux16~12_combout\ & \b2v_inst4|z[14]~47_combout\)) # (\b2v_inst4|z[14]~9_combout\)) # (\b2v_inst4|z[14]~2_combout\) ) ) # ( !\b2v_inst4|Mux0~12_combout\ & ( 
-- (\b2v_inst4|Mux16~12_combout\ & (!\b2v_inst4|z[14]~2_combout\ & (\b2v_inst4|z[14]~47_combout\ & !\b2v_inst4|z[14]~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux16~12_combout\,
	datab => \b2v_inst4|ALT_INV_z[14]~2_combout\,
	datac => \b2v_inst4|ALT_INV_z[14]~47_combout\,
	datad => \b2v_inst4|ALT_INV_z[14]~9_combout\,
	dataf => \b2v_inst4|ALT_INV_Mux0~12_combout\,
	combout => \b2v_inst4|z[13]~69_combout\);

-- Location: LABCELL_X27_Y2_N30
\b2v_inst4|z[13]~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[13]~65_combout\ = ( !\b2v_inst7|ALU_in1[13]~9_combout\ & ( !\b2v_inst7|ALU_in2[13]~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst7|ALT_INV_ALU_in2[13]~9_combout\,
	dataf => \b2v_inst7|ALT_INV_ALU_in1[13]~9_combout\,
	combout => \b2v_inst4|z[13]~65_combout\);

-- Location: LABCELL_X27_Y2_N51
\b2v_inst4|z[13]~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[13]~66_combout\ = ( !\b2v_inst4|z[13]~65_combout\ & ( \b2v_inst4|z[14]~7_combout\ & ( (!\b2v_inst4|z[14]~47_combout\ & (!\b2v_inst4|z[14]~48_combout\ & (\b2v_inst4|z[14]~3_combout\ & \b2v_inst4|z[10]~53_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[14]~47_combout\,
	datab => \b2v_inst4|ALT_INV_z[14]~48_combout\,
	datac => \b2v_inst4|ALT_INV_z[14]~3_combout\,
	datad => \b2v_inst4|ALT_INV_z[10]~53_combout\,
	datae => \b2v_inst4|ALT_INV_z[13]~65_combout\,
	dataf => \b2v_inst4|ALT_INV_z[14]~7_combout\,
	combout => \b2v_inst4|z[13]~66_combout\);

-- Location: LABCELL_X27_Y2_N0
\b2v_inst4|z[13]~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[13]~70_combout\ = ( \b2v_inst4|z[13]~69_combout\ & ( \b2v_inst4|z[13]~66_combout\ ) ) # ( !\b2v_inst4|z[13]~69_combout\ & ( \b2v_inst4|z[13]~66_combout\ ) ) # ( \b2v_inst4|z[13]~69_combout\ & ( !\b2v_inst4|z[13]~66_combout\ ) ) # ( 
-- !\b2v_inst4|z[13]~69_combout\ & ( !\b2v_inst4|z[13]~66_combout\ & ( (((\b2v_inst4|z[13]~63_combout\) # (\b2v_inst4|z[13]~68_combout\)) # (\b2v_inst4|z[13]~62_combout\)) # (\b2v_inst4|z[13]~64_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[13]~64_combout\,
	datab => \b2v_inst4|ALT_INV_z[13]~62_combout\,
	datac => \b2v_inst4|ALT_INV_z[13]~68_combout\,
	datad => \b2v_inst4|ALT_INV_z[13]~63_combout\,
	datae => \b2v_inst4|ALT_INV_z[13]~69_combout\,
	dataf => \b2v_inst4|ALT_INV_z[13]~66_combout\,
	combout => \b2v_inst4|z[13]~70_combout\);

-- Location: LABCELL_X27_Y4_N6
\b2v_inst4|Mux16~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux16~10_combout\ = ( \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a13\ & ( (!\b2v_inst4|Mux16~1_combout\) # ((!\b2v_inst4|Mux16~0_combout\) # (\b2v_inst4|regs_rtl_1_bypass\(22))) ) ) # ( !\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a13\ & 
-- ( (\b2v_inst4|Mux16~1_combout\ & (\b2v_inst4|Mux16~0_combout\ & \b2v_inst4|regs_rtl_1_bypass\(22))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001111111100111111111111110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst4|ALT_INV_Mux16~1_combout\,
	datac => \b2v_inst4|ALT_INV_Mux16~0_combout\,
	datad => \b2v_inst4|ALT_INV_regs_rtl_1_bypass\(22),
	dataf => \b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a13\,
	combout => \b2v_inst4|Mux16~10_combout\);

-- Location: MLABCELL_X25_Y2_N33
\b2v_inst7|ALU_in2[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|ALU_in2[2]~2_combout\ = ( \b2v_inst4|Mux16~10_combout\ & ( (!\b2v_inst|Mux2~0_combout\) # (\b2v_inst4|Mux0~4_combout\) ) ) # ( !\b2v_inst4|Mux16~10_combout\ & ( (\b2v_inst|Mux2~0_combout\ & \b2v_inst4|Mux0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100000000010101011010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_Mux2~0_combout\,
	datad => \b2v_inst4|ALT_INV_Mux0~4_combout\,
	datae => \b2v_inst4|ALT_INV_Mux16~10_combout\,
	combout => \b2v_inst7|ALU_in2[2]~2_combout\);

-- Location: LABCELL_X27_Y4_N0
\b2v_inst4|z[2]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[2]~21_combout\ = ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(2) & ( \b2v_inst3|IR_Op[2]~2_combout\ ) ) # ( !\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(2) & ( \b2v_inst3|IR_Op[2]~2_combout\ & ( 
-- (!\b2v_inst|state.T2~q\) # ((!\b2v_inst3|temp_IR\(14)) # ((!\b2v_inst|Mux15~1_combout\ & \b2v_inst|Mux15~4_combout\))) ) ) ) # ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(2) & ( !\b2v_inst3|IR_Op[2]~2_combout\ & ( 
-- (\b2v_inst|state.T2~q\ & (\b2v_inst3|temp_IR\(14) & ((!\b2v_inst|Mux15~4_combout\) # (\b2v_inst|Mux15~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000110111111111111100101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_Mux15~1_combout\,
	datab => \b2v_inst|ALT_INV_Mux15~4_combout\,
	datac => \b2v_inst|ALT_INV_state.T2~q\,
	datad => \b2v_inst3|ALT_INV_temp_IR\(14),
	datae => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(2),
	dataf => \b2v_inst3|ALT_INV_IR_Op[2]~2_combout\,
	combout => \b2v_inst4|z[2]~21_combout\);

-- Location: LABCELL_X27_Y4_N36
\b2v_inst4|z[2]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[2]~22_combout\ = ( \b2v_inst4|z[6]~15_combout\ & ( (!\b2v_inst7|ALU_in2[2]~2_combout\ & (((\b2v_inst4|z[2]~21_combout\ & !\b2v_inst|z_control[1]~1_combout\)))) # (\b2v_inst7|ALU_in2[2]~2_combout\ & (((\b2v_inst4|z[2]~21_combout\ & 
-- !\b2v_inst|z_control[1]~1_combout\)) # (\b2v_inst7|ALU_in1[2]~2_combout\))) ) ) # ( !\b2v_inst4|z[6]~15_combout\ & ( (\b2v_inst4|z[2]~21_combout\ & !\b2v_inst|z_control[1]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000011111000100010001111100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|ALT_INV_ALU_in2[2]~2_combout\,
	datab => \b2v_inst7|ALT_INV_ALU_in1[2]~2_combout\,
	datac => \b2v_inst4|ALT_INV_z[2]~21_combout\,
	datad => \b2v_inst|ALT_INV_z_control[1]~1_combout\,
	dataf => \b2v_inst4|ALT_INV_z[6]~15_combout\,
	combout => \b2v_inst4|z[2]~22_combout\);

-- Location: LABCELL_X27_Y4_N54
\b2v_inst4|z[2]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[2]~23_combout\ = ( \b2v_inst4|z[14]~7_combout\ & ( \b2v_inst7|ALU_in2[2]~2_combout\ & ( (!\b2v_inst4|z[2]~22_combout\ & !\b2v_inst4|z[6]~14_combout\) ) ) ) # ( !\b2v_inst4|z[14]~7_combout\ & ( \b2v_inst7|ALU_in2[2]~2_combout\ & ( 
-- (!\b2v_inst4|z[2]~22_combout\ & ((!\b2v_inst7|Add0~9_sumout\) # (!\b2v_inst4|z[6]~14_combout\))) ) ) ) # ( \b2v_inst4|z[14]~7_combout\ & ( !\b2v_inst7|ALU_in2[2]~2_combout\ & ( (!\b2v_inst4|z[2]~22_combout\ & ((!\b2v_inst7|ALU_in1[2]~2_combout\) # 
-- (!\b2v_inst4|z[6]~14_combout\))) ) ) ) # ( !\b2v_inst4|z[14]~7_combout\ & ( !\b2v_inst7|ALU_in2[2]~2_combout\ & ( (!\b2v_inst4|z[2]~22_combout\ & ((!\b2v_inst7|Add0~9_sumout\) # (!\b2v_inst4|z[6]~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010100000101010101000100010101010101000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[2]~22_combout\,
	datab => \b2v_inst7|ALT_INV_ALU_in1[2]~2_combout\,
	datac => \b2v_inst7|ALT_INV_Add0~9_sumout\,
	datad => \b2v_inst4|ALT_INV_z[6]~14_combout\,
	datae => \b2v_inst4|ALT_INV_z[14]~7_combout\,
	dataf => \b2v_inst7|ALT_INV_ALU_in2[2]~2_combout\,
	combout => \b2v_inst4|z[2]~23_combout\);

-- Location: IOIBUF_X8_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: FF_X27_Y4_N26
\signal_registers|SIP_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \b2v_inst|load_sip~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \signal_registers|SIP_reg\(2));

-- Location: LABCELL_X27_Y4_N24
\b2v_inst4|z[2]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[2]~24_combout\ = ( \signal_registers|SIP_reg\(2) & ( \b2v_inst4|Mux0~4_combout\ & ( (((!\b2v_inst4|z[5]~4_combout\ & \b2v_inst4|z[5]~11_combout\)) # (\b2v_inst4|z[14]~2_combout\)) # (\b2v_inst4|z[14]~9_combout\) ) ) ) # ( 
-- !\signal_registers|SIP_reg\(2) & ( \b2v_inst4|Mux0~4_combout\ & ( (\b2v_inst4|z[14]~2_combout\) # (\b2v_inst4|z[14]~9_combout\) ) ) ) # ( \signal_registers|SIP_reg\(2) & ( !\b2v_inst4|Mux0~4_combout\ & ( (!\b2v_inst4|z[5]~4_combout\ & 
-- (!\b2v_inst4|z[14]~9_combout\ & (\b2v_inst4|z[5]~11_combout\ & !\b2v_inst4|z[14]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000110011111111110011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[5]~4_combout\,
	datab => \b2v_inst4|ALT_INV_z[14]~9_combout\,
	datac => \b2v_inst4|ALT_INV_z[5]~11_combout\,
	datad => \b2v_inst4|ALT_INV_z[14]~2_combout\,
	datae => \signal_registers|ALT_INV_SIP_reg\(2),
	dataf => \b2v_inst4|ALT_INV_Mux0~4_combout\,
	combout => \b2v_inst4|z[2]~24_combout\);

-- Location: LABCELL_X27_Y4_N30
\b2v_inst4|z[2]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[2]~25_combout\ = ( \b2v_inst4|z[14]~3_combout\ & ( \b2v_inst4|z[2]~24_combout\ ) ) # ( !\b2v_inst4|z[14]~3_combout\ & ( \b2v_inst4|z[2]~24_combout\ ) ) # ( \b2v_inst4|z[14]~3_combout\ & ( !\b2v_inst4|z[2]~24_combout\ & ( 
-- (\b2v_inst4|z[1]~10_combout\ & ((!\b2v_inst4|z[5]~4_combout\ & (!\b2v_inst4|z[2]~23_combout\)) # (\b2v_inst4|z[5]~4_combout\ & ((\b2v_inst4|Mux16~10_combout\))))) ) ) ) # ( !\b2v_inst4|z[14]~3_combout\ & ( !\b2v_inst4|z[2]~24_combout\ & ( 
-- (\b2v_inst4|z[1]~10_combout\ & !\b2v_inst4|z[2]~23_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001000000011000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[5]~4_combout\,
	datab => \b2v_inst4|ALT_INV_z[1]~10_combout\,
	datac => \b2v_inst4|ALT_INV_z[2]~23_combout\,
	datad => \b2v_inst4|ALT_INV_Mux16~10_combout\,
	datae => \b2v_inst4|ALT_INV_z[14]~3_combout\,
	dataf => \b2v_inst4|ALT_INV_z[2]~24_combout\,
	combout => \b2v_inst4|z[2]~25_combout\);

-- Location: FF_X27_Y4_N53
\b2v_inst4|regs_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst4|z[2]~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_0_bypass\(22));

-- Location: LABCELL_X27_Y2_N21
\b2v_inst4|Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux0~4_combout\ = ( \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a13\ & ( ((!\b2v_inst4|Mux0~1_combout\) # (!\b2v_inst4|Mux0~0_combout\)) # (\b2v_inst4|regs_rtl_0_bypass\(22)) ) ) # ( !\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a13\ & ( 
-- (\b2v_inst4|regs_rtl_0_bypass\(22) & (\b2v_inst4|Mux0~1_combout\ & \b2v_inst4|Mux0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010111111111111101011111111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_regs_rtl_0_bypass\(22),
	datac => \b2v_inst4|ALT_INV_Mux0~1_combout\,
	datad => \b2v_inst4|ALT_INV_Mux0~0_combout\,
	dataf => \b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a13\,
	combout => \b2v_inst4|Mux0~4_combout\);

-- Location: LABCELL_X31_Y2_N24
\b2v_inst5|temp_address[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|temp_address[2]~6_combout\ = ( \b2v_inst4|Mux16~10_combout\ & ( (\b2v_inst4|Mux0~4_combout\) # (\b2v_inst5|temp_address[9]~3_combout\) ) ) # ( !\b2v_inst4|Mux16~10_combout\ & ( (!\b2v_inst5|temp_address[9]~3_combout\ & 
-- \b2v_inst4|Mux0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ALT_INV_temp_address[9]~3_combout\,
	datac => \b2v_inst4|ALT_INV_Mux0~4_combout\,
	dataf => \b2v_inst4|ALT_INV_Mux16~10_combout\,
	combout => \b2v_inst5|temp_address[2]~6_combout\);

-- Location: LABCELL_X31_Y2_N12
\b2v_inst5|address_b_temp[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|address_b_temp\(2) = ( \b2v_inst5|temp_address[2]~6_combout\ & ( (\b2v_inst5|address_b_temp\(2)) # (\b2v_inst5|temp_address[9]~2_combout\) ) ) # ( !\b2v_inst5|temp_address[2]~6_combout\ & ( (!\b2v_inst5|temp_address[9]~2_combout\ & 
-- \b2v_inst5|address_b_temp\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|ALT_INV_temp_address[9]~2_combout\,
	datad => \b2v_inst5|ALT_INV_address_b_temp\(2),
	dataf => \b2v_inst5|ALT_INV_temp_address[2]~6_combout\,
	combout => \b2v_inst5|address_b_temp\(2));

-- Location: FF_X27_Y2_N17
\b2v_inst4|regs_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst4|z[15]~99_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_0_bypass\(9));

-- Location: LABCELL_X27_Y2_N15
\b2v_inst4|Mux0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux0~17_combout\ = (!\b2v_inst4|Mux0~0_combout\ & (((\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a0~portbdataout\)))) # (\b2v_inst4|Mux0~0_combout\ & ((!\b2v_inst4|Mux0~1_combout\ & 
-- (\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a0~portbdataout\)) # (\b2v_inst4|Mux0~1_combout\ & ((\b2v_inst4|regs_rtl_0_bypass\(9))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux0~0_combout\,
	datab => \b2v_inst4|ALT_INV_Mux0~1_combout\,
	datac => \b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\,
	datad => \b2v_inst4|ALT_INV_regs_rtl_0_bypass\(9),
	combout => \b2v_inst4|Mux0~17_combout\);

-- Location: LABCELL_X29_Y4_N36
\b2v_inst4|z[14]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[14]~1_combout\ = ( \b2v_inst4|z[14]~0_combout\ & ( (!\b2v_inst|Selector5~0_combout\ & (!\b2v_inst|z_control[1]~1_combout\ & (!\b2v_inst4|Mux16~17_combout\ $ (\b2v_inst4|Mux0~17_combout\)))) ) ) # ( !\b2v_inst4|z[14]~0_combout\ & ( 
-- (!\b2v_inst|Selector5~0_combout\ & (\b2v_inst|z_control[1]~1_combout\ & (!\b2v_inst4|Mux16~17_combout\ $ (\b2v_inst4|Mux0~17_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000100000000001000010010000100000000001000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux16~17_combout\,
	datab => \b2v_inst|ALT_INV_Selector5~0_combout\,
	datac => \b2v_inst4|ALT_INV_Mux0~17_combout\,
	datad => \b2v_inst|ALT_INV_z_control[1]~1_combout\,
	dataf => \b2v_inst4|ALT_INV_z[14]~0_combout\,
	combout => \b2v_inst4|z[14]~1_combout\);

-- Location: FF_X25_Y3_N35
\b2v_inst4|regs_rtl_1_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst4|z[14]~61_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_1_bypass\(10));

-- Location: MLABCELL_X25_Y3_N33
\b2v_inst4|Mux16~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux16~11_combout\ = ( \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a1\ & ( (!\b2v_inst4|Mux16~1_combout\) # ((!\b2v_inst4|Mux16~0_combout\) # (\b2v_inst4|regs_rtl_1_bypass\(10))) ) ) # ( !\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a1\ & ( 
-- (\b2v_inst4|Mux16~1_combout\ & (\b2v_inst4|Mux16~0_combout\ & \b2v_inst4|regs_rtl_1_bypass\(10))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001111111100111111111111110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst4|ALT_INV_Mux16~1_combout\,
	datac => \b2v_inst4|ALT_INV_Mux16~0_combout\,
	datad => \b2v_inst4|ALT_INV_regs_rtl_1_bypass\(10),
	dataf => \b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a1\,
	combout => \b2v_inst4|Mux16~11_combout\);

-- Location: FF_X25_Y3_N32
\b2v_inst4|regs_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst4|z[14]~61_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_0_bypass\(10));

-- Location: MLABCELL_X25_Y3_N30
\b2v_inst4|Mux0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux0~11_combout\ = ( \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a1\ & ( (!\b2v_inst4|Mux0~1_combout\) # ((!\b2v_inst4|Mux0~0_combout\) # (\b2v_inst4|regs_rtl_0_bypass\(10))) ) ) # ( !\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a1\ & ( 
-- (\b2v_inst4|Mux0~1_combout\ & (\b2v_inst4|Mux0~0_combout\ & \b2v_inst4|regs_rtl_0_bypass\(10))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010111111010111111111111101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux0~1_combout\,
	datac => \b2v_inst4|ALT_INV_Mux0~0_combout\,
	datad => \b2v_inst4|ALT_INV_regs_rtl_0_bypass\(10),
	dataf => \b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	combout => \b2v_inst4|Mux0~11_combout\);

-- Location: MLABCELL_X28_Y5_N54
\b2v_inst9|LessThan0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst9|LessThan0~12_combout\ = ( \b2v_inst4|Mux16~12_combout\ & ( \b2v_inst4|Mux0~11_combout\ & ( (!\b2v_inst4|Mux16~11_combout\) # ((!\b2v_inst4|Mux16~13_combout\ & (\b2v_inst4|Mux0~12_combout\ & \b2v_inst4|Mux0~13_combout\))) ) ) ) # ( 
-- !\b2v_inst4|Mux16~12_combout\ & ( \b2v_inst4|Mux0~11_combout\ & ( ((!\b2v_inst4|Mux16~11_combout\) # ((!\b2v_inst4|Mux16~13_combout\ & \b2v_inst4|Mux0~13_combout\))) # (\b2v_inst4|Mux0~12_combout\) ) ) ) # ( \b2v_inst4|Mux16~12_combout\ & ( 
-- !\b2v_inst4|Mux0~11_combout\ & ( (!\b2v_inst4|Mux16~13_combout\ & (\b2v_inst4|Mux0~12_combout\ & (\b2v_inst4|Mux0~13_combout\ & !\b2v_inst4|Mux16~11_combout\))) ) ) ) # ( !\b2v_inst4|Mux16~12_combout\ & ( !\b2v_inst4|Mux0~11_combout\ & ( 
-- (!\b2v_inst4|Mux16~11_combout\ & (((!\b2v_inst4|Mux16~13_combout\ & \b2v_inst4|Mux0~13_combout\)) # (\b2v_inst4|Mux0~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100000000000000100000000011111111001110111111111100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux16~13_combout\,
	datab => \b2v_inst4|ALT_INV_Mux0~12_combout\,
	datac => \b2v_inst4|ALT_INV_Mux0~13_combout\,
	datad => \b2v_inst4|ALT_INV_Mux16~11_combout\,
	datae => \b2v_inst4|ALT_INV_Mux16~12_combout\,
	dataf => \b2v_inst4|ALT_INV_Mux0~11_combout\,
	combout => \b2v_inst9|LessThan0~12_combout\);

-- Location: MLABCELL_X28_Y5_N51
\b2v_inst9|LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst9|LessThan0~7_combout\ = ( \b2v_inst4|Mux16~12_combout\ & ( \b2v_inst4|Mux0~11_combout\ & ( (\b2v_inst4|Mux0~12_combout\ & (\b2v_inst4|Mux16~11_combout\ & (!\b2v_inst4|Mux16~13_combout\ $ (\b2v_inst4|Mux0~13_combout\)))) ) ) ) # ( 
-- !\b2v_inst4|Mux16~12_combout\ & ( \b2v_inst4|Mux0~11_combout\ & ( (!\b2v_inst4|Mux0~12_combout\ & (\b2v_inst4|Mux16~11_combout\ & (!\b2v_inst4|Mux16~13_combout\ $ (\b2v_inst4|Mux0~13_combout\)))) ) ) ) # ( \b2v_inst4|Mux16~12_combout\ & ( 
-- !\b2v_inst4|Mux0~11_combout\ & ( (\b2v_inst4|Mux0~12_combout\ & (!\b2v_inst4|Mux16~11_combout\ & (!\b2v_inst4|Mux16~13_combout\ $ (\b2v_inst4|Mux0~13_combout\)))) ) ) ) # ( !\b2v_inst4|Mux16~12_combout\ & ( !\b2v_inst4|Mux0~11_combout\ & ( 
-- (!\b2v_inst4|Mux0~12_combout\ & (!\b2v_inst4|Mux16~11_combout\ & (!\b2v_inst4|Mux16~13_combout\ $ (\b2v_inst4|Mux0~13_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000001000000001000000001000000001000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux16~13_combout\,
	datab => \b2v_inst4|ALT_INV_Mux0~12_combout\,
	datac => \b2v_inst4|ALT_INV_Mux16~11_combout\,
	datad => \b2v_inst4|ALT_INV_Mux0~13_combout\,
	datae => \b2v_inst4|ALT_INV_Mux16~12_combout\,
	dataf => \b2v_inst4|ALT_INV_Mux0~11_combout\,
	combout => \b2v_inst9|LessThan0~7_combout\);

-- Location: LABCELL_X31_Y4_N24
\b2v_inst9|LessThan0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst9|LessThan0~13_combout\ = ( !\b2v_inst9|LessThan0~12_combout\ & ( \b2v_inst9|LessThan0~7_combout\ & ( (!\b2v_inst4|Mux16~15_combout\ & (!\b2v_inst4|Mux0~15_combout\ & ((!\b2v_inst4|Mux0~16_combout\) # (\b2v_inst4|Mux16~16_combout\)))) # 
-- (\b2v_inst4|Mux16~15_combout\ & (((!\b2v_inst4|Mux0~16_combout\) # (!\b2v_inst4|Mux0~15_combout\)) # (\b2v_inst4|Mux16~16_combout\))) ) ) ) # ( !\b2v_inst9|LessThan0~12_combout\ & ( !\b2v_inst9|LessThan0~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011110111010100010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux16~15_combout\,
	datab => \b2v_inst4|ALT_INV_Mux16~16_combout\,
	datac => \b2v_inst4|ALT_INV_Mux0~16_combout\,
	datad => \b2v_inst4|ALT_INV_Mux0~15_combout\,
	datae => \b2v_inst9|ALT_INV_LessThan0~12_combout\,
	dataf => \b2v_inst9|ALT_INV_LessThan0~7_combout\,
	combout => \b2v_inst9|LessThan0~13_combout\);

-- Location: MLABCELL_X25_Y2_N0
\b2v_inst9|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst9|LessThan0~5_combout\ = ( \b2v_inst4|Mux0~9_combout\ & ( \b2v_inst4|Mux16~6_combout\ & ( (!\b2v_inst4|Mux16~4_combout\) # ((!\b2v_inst4|Mux16~5_combout\ & \b2v_inst4|Mux0~8_combout\)) ) ) ) # ( !\b2v_inst4|Mux0~9_combout\ & ( 
-- \b2v_inst4|Mux16~6_combout\ & ( (!\b2v_inst4|Mux16~4_combout\ & (!\b2v_inst4|Mux16~5_combout\ & \b2v_inst4|Mux0~8_combout\)) ) ) ) # ( \b2v_inst4|Mux0~9_combout\ & ( !\b2v_inst4|Mux16~6_combout\ & ( (!\b2v_inst4|Mux16~4_combout\) # 
-- ((!\b2v_inst4|Mux0~7_combout\ & (!\b2v_inst4|Mux16~5_combout\ & \b2v_inst4|Mux0~8_combout\)) # (\b2v_inst4|Mux0~7_combout\ & ((!\b2v_inst4|Mux16~5_combout\) # (\b2v_inst4|Mux0~8_combout\)))) ) ) ) # ( !\b2v_inst4|Mux0~9_combout\ & ( 
-- !\b2v_inst4|Mux16~6_combout\ & ( (!\b2v_inst4|Mux16~4_combout\ & ((!\b2v_inst4|Mux0~7_combout\ & (!\b2v_inst4|Mux16~5_combout\ & \b2v_inst4|Mux0~8_combout\)) # (\b2v_inst4|Mux0~7_combout\ & ((!\b2v_inst4|Mux16~5_combout\) # 
-- (\b2v_inst4|Mux0~8_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010100010101110101111101100000000101000001010101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux16~4_combout\,
	datab => \b2v_inst4|ALT_INV_Mux0~7_combout\,
	datac => \b2v_inst4|ALT_INV_Mux16~5_combout\,
	datad => \b2v_inst4|ALT_INV_Mux0~8_combout\,
	datae => \b2v_inst4|ALT_INV_Mux0~9_combout\,
	dataf => \b2v_inst4|ALT_INV_Mux16~6_combout\,
	combout => \b2v_inst9|LessThan0~5_combout\);

-- Location: MLABCELL_X25_Y2_N48
\b2v_inst9|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst9|LessThan0~0_combout\ = ( \b2v_inst4|Mux0~9_combout\ & ( \b2v_inst4|Mux16~6_combout\ & ( (\b2v_inst4|Mux16~4_combout\ & (\b2v_inst4|Mux0~7_combout\ & (!\b2v_inst4|Mux16~5_combout\ $ (\b2v_inst4|Mux0~8_combout\)))) ) ) ) # ( 
-- !\b2v_inst4|Mux0~9_combout\ & ( \b2v_inst4|Mux16~6_combout\ & ( (!\b2v_inst4|Mux16~4_combout\ & (\b2v_inst4|Mux0~7_combout\ & (!\b2v_inst4|Mux16~5_combout\ $ (\b2v_inst4|Mux0~8_combout\)))) ) ) ) # ( \b2v_inst4|Mux0~9_combout\ & ( 
-- !\b2v_inst4|Mux16~6_combout\ & ( (\b2v_inst4|Mux16~4_combout\ & (!\b2v_inst4|Mux0~7_combout\ & (!\b2v_inst4|Mux16~5_combout\ $ (\b2v_inst4|Mux0~8_combout\)))) ) ) ) # ( !\b2v_inst4|Mux0~9_combout\ & ( !\b2v_inst4|Mux16~6_combout\ & ( 
-- (!\b2v_inst4|Mux16~4_combout\ & (!\b2v_inst4|Mux0~7_combout\ & (!\b2v_inst4|Mux16~5_combout\ $ (\b2v_inst4|Mux0~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000010010000000000000000100100000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux16~5_combout\,
	datab => \b2v_inst4|ALT_INV_Mux0~8_combout\,
	datac => \b2v_inst4|ALT_INV_Mux16~4_combout\,
	datad => \b2v_inst4|ALT_INV_Mux0~7_combout\,
	datae => \b2v_inst4|ALT_INV_Mux0~9_combout\,
	dataf => \b2v_inst4|ALT_INV_Mux16~6_combout\,
	combout => \b2v_inst9|LessThan0~0_combout\);

-- Location: MLABCELL_X25_Y2_N54
\b2v_inst9|LessThan0~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst9|LessThan0~19_combout\ = ( \b2v_inst9|LessThan0~0_combout\ & ( (!\b2v_inst9|LessThan0~5_combout\ & ((!\b2v_inst4|Mux0~6_combout\) # (\b2v_inst4|Mux16~3_combout\))) ) ) # ( !\b2v_inst9|LessThan0~0_combout\ & ( !\b2v_inst9|LessThan0~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110011000000001111001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst4|ALT_INV_Mux16~3_combout\,
	datac => \b2v_inst4|ALT_INV_Mux0~6_combout\,
	datad => \b2v_inst9|ALT_INV_LessThan0~5_combout\,
	dataf => \b2v_inst9|ALT_INV_LessThan0~0_combout\,
	combout => \b2v_inst9|LessThan0~19_combout\);

-- Location: MLABCELL_X25_Y2_N45
\b2v_inst9|LessThan0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst9|LessThan0~16_combout\ = ( \b2v_inst4|Mux16~8_combout\ & ( (\b2v_inst4|Mux0~2_combout\ & (!\b2v_inst4|Mux16~2_combout\ & \b2v_inst4|Mux0~3_combout\)) ) ) # ( !\b2v_inst4|Mux16~8_combout\ & ( ((\b2v_inst4|Mux0~2_combout\ & 
-- !\b2v_inst4|Mux16~2_combout\)) # (\b2v_inst4|Mux0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011111111010100001111111100000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux0~2_combout\,
	datac => \b2v_inst4|ALT_INV_Mux16~2_combout\,
	datad => \b2v_inst4|ALT_INV_Mux0~3_combout\,
	dataf => \b2v_inst4|ALT_INV_Mux16~8_combout\,
	combout => \b2v_inst9|LessThan0~16_combout\);

-- Location: MLABCELL_X25_Y2_N42
\b2v_inst9|LessThan0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst9|LessThan0~17_combout\ = ( \b2v_inst4|Mux16~9_combout\ & ( (\b2v_inst4|Mux0~5_combout\ & (!\b2v_inst4|Mux0~4_combout\ $ (\b2v_inst4|Mux16~10_combout\))) ) ) # ( !\b2v_inst4|Mux16~9_combout\ & ( (!\b2v_inst4|Mux0~5_combout\ & 
-- (!\b2v_inst4|Mux0~4_combout\ $ (\b2v_inst4|Mux16~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000110000110000000000000000110000110000000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst4|ALT_INV_Mux0~4_combout\,
	datac => \b2v_inst4|ALT_INV_Mux16~10_combout\,
	datad => \b2v_inst4|ALT_INV_Mux0~5_combout\,
	dataf => \b2v_inst4|ALT_INV_Mux16~9_combout\,
	combout => \b2v_inst9|LessThan0~17_combout\);

-- Location: MLABCELL_X25_Y2_N57
\b2v_inst9|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst9|LessThan0~4_combout\ = ( \b2v_inst4|Mux16~9_combout\ & ( (\b2v_inst4|Mux0~4_combout\ & (\b2v_inst4|Mux0~5_combout\ & !\b2v_inst4|Mux16~10_combout\)) ) ) # ( !\b2v_inst4|Mux16~9_combout\ & ( ((\b2v_inst4|Mux0~4_combout\ & 
-- !\b2v_inst4|Mux16~10_combout\)) # (\b2v_inst4|Mux0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100001111010111110000111100000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux0~4_combout\,
	datac => \b2v_inst4|ALT_INV_Mux0~5_combout\,
	datad => \b2v_inst4|ALT_INV_Mux16~10_combout\,
	dataf => \b2v_inst4|ALT_INV_Mux16~9_combout\,
	combout => \b2v_inst9|LessThan0~4_combout\);

-- Location: MLABCELL_X25_Y2_N24
\b2v_inst9|LessThan0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst9|LessThan0~18_combout\ = ( \b2v_inst9|LessThan0~4_combout\ & ( \b2v_inst9|LessThan0~0_combout\ & ( !\b2v_inst4|Mux0~6_combout\ $ (\b2v_inst4|Mux16~3_combout\) ) ) ) # ( !\b2v_inst9|LessThan0~4_combout\ & ( \b2v_inst9|LessThan0~0_combout\ & ( 
-- (\b2v_inst9|LessThan0~16_combout\ & (\b2v_inst9|LessThan0~17_combout\ & (!\b2v_inst4|Mux0~6_combout\ $ (\b2v_inst4|Mux16~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux0~6_combout\,
	datab => \b2v_inst9|ALT_INV_LessThan0~16_combout\,
	datac => \b2v_inst4|ALT_INV_Mux16~3_combout\,
	datad => \b2v_inst9|ALT_INV_LessThan0~17_combout\,
	datae => \b2v_inst9|ALT_INV_LessThan0~4_combout\,
	dataf => \b2v_inst9|ALT_INV_LessThan0~0_combout\,
	combout => \b2v_inst9|LessThan0~18_combout\);

-- Location: LABCELL_X30_Y2_N24
\b2v_inst4|Mux0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux0~10_combout\ = ( \b2v_inst4|Mux0~0_combout\ & ( \b2v_inst4|Mux0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst4|ALT_INV_Mux0~1_combout\,
	dataf => \b2v_inst4|ALT_INV_Mux0~0_combout\,
	combout => \b2v_inst4|Mux0~10_combout\);

-- Location: LABCELL_X29_Y1_N42
\b2v_inst9|LessThan0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst9|LessThan0~8_combout\ = ( \b2v_inst4|regs_rtl_1_bypass\(13) & ( \b2v_inst4|regs_rtl_0_bypass\(13) & ( (!\b2v_inst4|Mux16~7_combout\ & (!\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a4\ $ (((!\b2v_inst4|Mux0~10_combout\ & 
-- !\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a4\))))) # (\b2v_inst4|Mux16~7_combout\ & (((!\b2v_inst4|Mux0~10_combout\ & !\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a4\)))) ) ) ) # ( !\b2v_inst4|regs_rtl_1_bypass\(13) & ( 
-- \b2v_inst4|regs_rtl_0_bypass\(13) & ( (!\b2v_inst4|Mux16~7_combout\ & (!\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a4\ $ (((!\b2v_inst4|Mux0~10_combout\ & !\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a4\))))) # (\b2v_inst4|Mux16~7_combout\ & 
-- (((\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a4\) # (\b2v_inst4|Mux0~10_combout\)))) ) ) ) # ( \b2v_inst4|regs_rtl_1_bypass\(13) & ( !\b2v_inst4|regs_rtl_0_bypass\(13) & ( (!\b2v_inst4|Mux16~7_combout\ & 
-- (!\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a4\ $ (((!\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a4\) # (\b2v_inst4|Mux0~10_combout\))))) # (\b2v_inst4|Mux16~7_combout\ & (((!\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a4\) # 
-- (\b2v_inst4|Mux0~10_combout\)))) ) ) ) # ( !\b2v_inst4|regs_rtl_1_bypass\(13) & ( !\b2v_inst4|regs_rtl_0_bypass\(13) & ( (!\b2v_inst4|Mux16~7_combout\ & (!\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a4\ $ 
-- (((!\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a4\) # (\b2v_inst4|Mux0~10_combout\))))) # (\b2v_inst4|Mux16~7_combout\ & (((!\b2v_inst4|Mux0~10_combout\ & \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a4\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001011010010011101111000011100101101110111010111100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux16~7_combout\,
	datab => \b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a4\,
	datac => \b2v_inst4|ALT_INV_Mux0~10_combout\,
	datad => \b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	datae => \b2v_inst4|ALT_INV_regs_rtl_1_bypass\(13),
	dataf => \b2v_inst4|ALT_INV_regs_rtl_0_bypass\(13),
	combout => \b2v_inst9|LessThan0~8_combout\);

-- Location: LABCELL_X31_Y4_N3
\b2v_inst9|LessThan0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst9|LessThan0~9_combout\ = ( \b2v_inst4|regs_rtl_1_bypass\(14) & ( \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a5\ & ( (!\b2v_inst4|Mux0~10_combout\ & (!\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a5\)) # (\b2v_inst4|Mux0~10_combout\ & 
-- ((!\b2v_inst4|regs_rtl_0_bypass\(14)))) ) ) ) # ( !\b2v_inst4|regs_rtl_1_bypass\(14) & ( \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a5\ & ( !\b2v_inst4|Mux16~7_combout\ $ (((!\b2v_inst4|Mux0~10_combout\ & 
-- (\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a5\)) # (\b2v_inst4|Mux0~10_combout\ & ((\b2v_inst4|regs_rtl_0_bypass\(14)))))) ) ) ) # ( \b2v_inst4|regs_rtl_1_bypass\(14) & ( !\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a5\ & ( 
-- !\b2v_inst4|Mux16~7_combout\ $ (((!\b2v_inst4|Mux0~10_combout\ & (!\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a5\)) # (\b2v_inst4|Mux0~10_combout\ & ((!\b2v_inst4|regs_rtl_0_bypass\(14)))))) ) ) ) # ( !\b2v_inst4|regs_rtl_1_bypass\(14) & ( 
-- !\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a5\ & ( (!\b2v_inst4|Mux0~10_combout\ & (\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a5\)) # (\b2v_inst4|Mux0~10_combout\ & ((\b2v_inst4|regs_rtl_0_bypass\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001111101100011011000001001111101100011011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux0~10_combout\,
	datab => \b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a5\,
	datac => \b2v_inst4|ALT_INV_regs_rtl_0_bypass\(14),
	datad => \b2v_inst4|ALT_INV_Mux16~7_combout\,
	datae => \b2v_inst4|ALT_INV_regs_rtl_1_bypass\(14),
	dataf => \b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a5\,
	combout => \b2v_inst9|LessThan0~9_combout\);

-- Location: LABCELL_X33_Y4_N0
\b2v_inst9|LessThan0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst9|LessThan0~10_combout\ = ( \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a7\ & ( \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a7\ & ( (!\b2v_inst4|regs_rtl_0_bypass\(16) & (!\b2v_inst4|Mux0~10_combout\ $ (((!\b2v_inst4|Mux16~7_combout\) # 
-- (\b2v_inst4|regs_rtl_1_bypass\(16)))))) # (\b2v_inst4|regs_rtl_0_bypass\(16) & (\b2v_inst4|Mux16~7_combout\ & ((!\b2v_inst4|regs_rtl_1_bypass\(16))))) ) ) ) # ( !\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a7\ & ( 
-- \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a7\ & ( (!\b2v_inst4|regs_rtl_0_bypass\(16) & (!\b2v_inst4|Mux0~10_combout\ $ (((\b2v_inst4|Mux16~7_combout\ & \b2v_inst4|regs_rtl_1_bypass\(16)))))) # (\b2v_inst4|regs_rtl_0_bypass\(16) & 
-- ((!\b2v_inst4|Mux16~7_combout\) # ((!\b2v_inst4|regs_rtl_1_bypass\(16))))) ) ) ) # ( \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a7\ & ( !\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a7\ & ( (!\b2v_inst4|regs_rtl_0_bypass\(16) & 
-- ((!\b2v_inst4|Mux16~7_combout\) # ((\b2v_inst4|regs_rtl_1_bypass\(16))))) # (\b2v_inst4|regs_rtl_0_bypass\(16) & (!\b2v_inst4|Mux0~10_combout\ $ (((\b2v_inst4|Mux16~7_combout\ & !\b2v_inst4|regs_rtl_1_bypass\(16)))))) ) ) ) # ( 
-- !\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a7\ & ( !\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a7\ & ( (!\b2v_inst4|regs_rtl_0_bypass\(16) & (\b2v_inst4|Mux16~7_combout\ & ((\b2v_inst4|regs_rtl_1_bypass\(16))))) # 
-- (\b2v_inst4|regs_rtl_0_bypass\(16) & (!\b2v_inst4|Mux0~10_combout\ $ (((!\b2v_inst4|Mux16~7_combout\) # (!\b2v_inst4|regs_rtl_1_bypass\(16)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110110110010011111101011110101110001100011100100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_regs_rtl_0_bypass\(16),
	datab => \b2v_inst4|ALT_INV_Mux16~7_combout\,
	datac => \b2v_inst4|ALT_INV_Mux0~10_combout\,
	datad => \b2v_inst4|ALT_INV_regs_rtl_1_bypass\(16),
	datae => \b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a7\,
	dataf => \b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	combout => \b2v_inst9|LessThan0~10_combout\);

-- Location: LABCELL_X31_Y4_N18
\b2v_inst9|LessThan0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst9|LessThan0~11_combout\ = ( !\b2v_inst9|LessThan0~10_combout\ & ( \b2v_inst4|Mux16~14_combout\ & ( (\b2v_inst4|Mux0~14_combout\ & (!\b2v_inst9|LessThan0~8_combout\ & (!\b2v_inst9|LessThan0~9_combout\ & \b2v_inst9|LessThan0~7_combout\))) ) ) ) # ( 
-- !\b2v_inst9|LessThan0~10_combout\ & ( !\b2v_inst4|Mux16~14_combout\ & ( (!\b2v_inst4|Mux0~14_combout\ & (!\b2v_inst9|LessThan0~8_combout\ & (!\b2v_inst9|LessThan0~9_combout\ & \b2v_inst9|LessThan0~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux0~14_combout\,
	datab => \b2v_inst9|ALT_INV_LessThan0~8_combout\,
	datac => \b2v_inst9|ALT_INV_LessThan0~9_combout\,
	datad => \b2v_inst9|ALT_INV_LessThan0~7_combout\,
	datae => \b2v_inst9|ALT_INV_LessThan0~10_combout\,
	dataf => \b2v_inst4|ALT_INV_Mux16~14_combout\,
	combout => \b2v_inst9|LessThan0~11_combout\);

-- Location: LABCELL_X29_Y4_N18
\b2v_inst4|z[14]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[14]~9_combout\ = ( \b2v_inst9|LessThan0~11_combout\ & ( \b2v_inst9|LessThan0~15_combout\ & ( \b2v_inst4|z[14]~1_combout\ ) ) ) # ( !\b2v_inst9|LessThan0~11_combout\ & ( \b2v_inst9|LessThan0~15_combout\ & ( \b2v_inst4|z[14]~1_combout\ ) ) ) # 
-- ( \b2v_inst9|LessThan0~11_combout\ & ( !\b2v_inst9|LessThan0~15_combout\ & ( (\b2v_inst4|z[14]~1_combout\ & ((!\b2v_inst9|LessThan0~13_combout\) # ((!\b2v_inst9|LessThan0~19_combout\) # (\b2v_inst9|LessThan0~18_combout\)))) ) ) ) # ( 
-- !\b2v_inst9|LessThan0~11_combout\ & ( !\b2v_inst9|LessThan0~15_combout\ & ( (\b2v_inst4|z[14]~1_combout\ & !\b2v_inst9|LessThan0~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010101000101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[14]~1_combout\,
	datab => \b2v_inst9|ALT_INV_LessThan0~13_combout\,
	datac => \b2v_inst9|ALT_INV_LessThan0~19_combout\,
	datad => \b2v_inst9|ALT_INV_LessThan0~18_combout\,
	datae => \b2v_inst9|ALT_INV_LessThan0~11_combout\,
	dataf => \b2v_inst9|ALT_INV_LessThan0~15_combout\,
	combout => \b2v_inst4|z[14]~9_combout\);

-- Location: MLABCELL_X25_Y3_N36
\b2v_inst3|IR_Op[14]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst3|IR_Op[14]~8_combout\ = ( \b2v_inst|Selector5~1_combout\ & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(14) ) ) # ( !\b2v_inst|Selector5~1_combout\ & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(14) & ( 
-- (\b2v_inst5|temp_address[9]~1_combout\ & (((\b2v_inst|Mux5~0_combout\ & \b2v_inst|Selector1~1_combout\)) # (\b2v_inst|Selector4~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ALT_INV_temp_address[9]~1_combout\,
	datab => \b2v_inst|ALT_INV_Selector4~0_combout\,
	datac => \b2v_inst|ALT_INV_Mux5~0_combout\,
	datad => \b2v_inst|ALT_INV_Selector1~1_combout\,
	datae => \b2v_inst|ALT_INV_Selector5~1_combout\,
	dataf => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	combout => \b2v_inst3|IR_Op[14]~8_combout\);

-- Location: MLABCELL_X25_Y3_N24
\b2v_inst4|z[14]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[14]~51_combout\ = ( !\b2v_inst4|z[14]~48_combout\ & ( \b2v_inst3|IR_Op[14]~8_combout\ & ( (!\b2v_inst4|z[14]~2_combout\ & (\b2v_inst4|z[14]~50_combout\ & (!\b2v_inst4|z[14]~9_combout\ & !\b2v_inst4|z[14]~47_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[14]~2_combout\,
	datab => \b2v_inst4|ALT_INV_z[14]~50_combout\,
	datac => \b2v_inst4|ALT_INV_z[14]~9_combout\,
	datad => \b2v_inst4|ALT_INV_z[14]~47_combout\,
	datae => \b2v_inst4|ALT_INV_z[14]~48_combout\,
	dataf => \b2v_inst3|ALT_INV_IR_Op[14]~8_combout\,
	combout => \b2v_inst4|z[14]~51_combout\);

-- Location: LABCELL_X27_Y2_N6
\b2v_inst3|IR_Op[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst3|IR_Op[15]~15_combout\ = ( \b2v_inst5|temp_address[9]~1_combout\ & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(15) & ( (((\b2v_inst|Mux5~0_combout\ & \b2v_inst|Selector1~1_combout\)) # (\b2v_inst|Selector5~1_combout\)) # 
-- (\b2v_inst|Selector4~0_combout\) ) ) ) # ( !\b2v_inst5|temp_address[9]~1_combout\ & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(15) & ( \b2v_inst|Selector5~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_Mux5~0_combout\,
	datab => \b2v_inst|ALT_INV_Selector4~0_combout\,
	datac => \b2v_inst|ALT_INV_Selector5~1_combout\,
	datad => \b2v_inst|ALT_INV_Selector1~1_combout\,
	datae => \b2v_inst5|ALT_INV_temp_address[9]~1_combout\,
	dataf => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	combout => \b2v_inst3|IR_Op[15]~15_combout\);

-- Location: M10K_X38_Y2_N0
\b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a14\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007C",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "C:\Users\epik990\Documents\compsys701\testing.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memory_interface:b2v_inst5|memory_block:memory_test|altsyncram:altsyncram_component|altsyncram_b274:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 12,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 14,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => GND,
	portbre => VCC,
	clk0 => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	portadatain => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portbdatain => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAIN_bus\,
	portaaddr => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\,
	portbdataout => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

-- Location: MLABCELL_X25_Y3_N54
\b2v_inst4|z[14]~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[14]~52_combout\ = ( \b2v_inst4|z[14]~48_combout\ & ( !\b2v_inst4|z[14]~9_combout\ & ( (!\b2v_inst4|z[14]~2_combout\ & (!\b2v_inst4|z[14]~50_combout\ & (\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(14) & 
-- !\b2v_inst4|z[14]~47_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[14]~2_combout\,
	datab => \b2v_inst4|ALT_INV_z[14]~50_combout\,
	datac => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(14),
	datad => \b2v_inst4|ALT_INV_z[14]~47_combout\,
	datae => \b2v_inst4|ALT_INV_z[14]~48_combout\,
	dataf => \b2v_inst4|ALT_INV_z[14]~9_combout\,
	combout => \b2v_inst4|z[14]~52_combout\);

-- Location: MLABCELL_X25_Y3_N51
\b2v_inst4|z[14]~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[14]~60_combout\ = ( \b2v_inst4|Mux16~11_combout\ & ( (!\b2v_inst4|z[14]~2_combout\ & ((!\b2v_inst4|z[14]~9_combout\ & ((\b2v_inst4|z[14]~47_combout\))) # (\b2v_inst4|z[14]~9_combout\ & (\b2v_inst4|Mux0~11_combout\)))) # 
-- (\b2v_inst4|z[14]~2_combout\ & (\b2v_inst4|Mux0~11_combout\)) ) ) # ( !\b2v_inst4|Mux16~11_combout\ & ( (\b2v_inst4|Mux0~11_combout\ & ((\b2v_inst4|z[14]~9_combout\) # (\b2v_inst4|z[14]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100110011000100010011001100011011001100110001101100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[14]~2_combout\,
	datab => \b2v_inst4|ALT_INV_Mux0~11_combout\,
	datac => \b2v_inst4|ALT_INV_z[14]~47_combout\,
	datad => \b2v_inst4|ALT_INV_z[14]~9_combout\,
	dataf => \b2v_inst4|ALT_INV_Mux16~11_combout\,
	combout => \b2v_inst4|z[14]~60_combout\);

-- Location: LABCELL_X30_Y5_N33
\b2v_inst7|ALU_in2[14]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|ALU_in2[14]~8_combout\ = ( \b2v_inst4|Mux16~11_combout\ & ( (!\b2v_inst|Mux2~0_combout\) # (\b2v_inst4|Mux0~11_combout\) ) ) # ( !\b2v_inst4|Mux16~11_combout\ & ( (\b2v_inst|Mux2~0_combout\ & \b2v_inst4|Mux0~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_Mux2~0_combout\,
	datac => \b2v_inst4|ALT_INV_Mux0~11_combout\,
	dataf => \b2v_inst4|ALT_INV_Mux16~11_combout\,
	combout => \b2v_inst7|ALU_in2[14]~8_combout\);

-- Location: FF_X25_Y3_N8
\b2v_inst4|regs[10][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst4|z[14]~61_combout\,
	ena => \b2v_inst4|regs[10][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs[10][14]~q\);

-- Location: MLABCELL_X25_Y3_N45
\b2v_inst7|ALU_in1[14]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|ALU_in1[14]~8_combout\ = ( \b2v_inst4|Mux0~11_combout\ & ( (!\b2v_inst3|temp_IR\(15) & (\b2v_inst3|IR_Op[14]~8_combout\ & ((\b2v_inst3|temp_IR\(14))))) # (\b2v_inst3|temp_IR\(15) & (((\b2v_inst3|temp_IR\(14)) # (\b2v_inst4|regs[10][14]~q\)))) ) 
-- ) # ( !\b2v_inst4|Mux0~11_combout\ & ( (!\b2v_inst3|temp_IR\(15) & (\b2v_inst3|IR_Op[14]~8_combout\ & ((\b2v_inst3|temp_IR\(14))))) # (\b2v_inst3|temp_IR\(15) & (((\b2v_inst4|regs[10][14]~q\ & !\b2v_inst3|temp_IR\(14))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100010000001010010001000000101011101110000010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|ALT_INV_temp_IR\(15),
	datab => \b2v_inst3|ALT_INV_IR_Op[14]~8_combout\,
	datac => \b2v_inst4|ALT_INV_regs[10][14]~q\,
	datad => \b2v_inst3|ALT_INV_temp_IR\(14),
	dataf => \b2v_inst4|ALT_INV_Mux0~11_combout\,
	combout => \b2v_inst7|ALU_in1[14]~8_combout\);

-- Location: MLABCELL_X25_Y3_N42
\b2v_inst4|z[14]~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[14]~58_combout\ = ( \b2v_inst7|ALU_in1[14]~8_combout\ & ( \b2v_inst7|ALU_in2[14]~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst7|ALT_INV_ALU_in2[14]~8_combout\,
	dataf => \b2v_inst7|ALT_INV_ALU_in1[14]~8_combout\,
	combout => \b2v_inst4|z[14]~58_combout\);

-- Location: MLABCELL_X25_Y3_N3
\b2v_inst4|z[14]~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[14]~59_combout\ = ( !\b2v_inst4|z[14]~48_combout\ & ( !\b2v_inst4|z[14]~9_combout\ & ( (\b2v_inst4|z[14]~58_combout\ & (\b2v_inst4|z[15]~57_combout\ & (!\b2v_inst4|z[14]~2_combout\ & !\b2v_inst4|z[14]~47_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[14]~58_combout\,
	datab => \b2v_inst4|ALT_INV_z[15]~57_combout\,
	datac => \b2v_inst4|ALT_INV_z[14]~2_combout\,
	datad => \b2v_inst4|ALT_INV_z[14]~47_combout\,
	datae => \b2v_inst4|ALT_INV_z[14]~48_combout\,
	dataf => \b2v_inst4|ALT_INV_z[14]~9_combout\,
	combout => \b2v_inst4|z[14]~59_combout\);

-- Location: MLABCELL_X25_Y3_N48
\b2v_inst4|z[14]~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[14]~55_combout\ = ( !\b2v_inst7|ALU_in1[14]~8_combout\ & ( !\b2v_inst7|ALU_in2[14]~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst7|ALT_INV_ALU_in2[14]~8_combout\,
	dataf => \b2v_inst7|ALT_INV_ALU_in1[14]~8_combout\,
	combout => \b2v_inst4|z[14]~55_combout\);

-- Location: MLABCELL_X25_Y3_N21
\b2v_inst4|z[14]~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[14]~56_combout\ = ( !\b2v_inst4|z[14]~48_combout\ & ( \b2v_inst4|z[14]~7_combout\ & ( (\b2v_inst4|z[10]~53_combout\ & (!\b2v_inst4|z[14]~47_combout\ & (\b2v_inst4|z[14]~3_combout\ & !\b2v_inst4|z[14]~55_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[10]~53_combout\,
	datab => \b2v_inst4|ALT_INV_z[14]~47_combout\,
	datac => \b2v_inst4|ALT_INV_z[14]~3_combout\,
	datad => \b2v_inst4|ALT_INV_z[14]~55_combout\,
	datae => \b2v_inst4|ALT_INV_z[14]~48_combout\,
	dataf => \b2v_inst4|ALT_INV_z[14]~7_combout\,
	combout => \b2v_inst4|z[14]~56_combout\);

-- Location: MLABCELL_X28_Y3_N45
\b2v_inst7|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|Add0~33_sumout\ = SUM(( \b2v_inst7|ALU_in1[14]~8_combout\ ) + ( !\b2v_inst7|ALU_in2[14]~8_combout\ $ (((!\b2v_inst|ALU_Opcode[1]~0_combout\ & ((!\b2v_inst4|z[14]~5_combout\) # (!\b2v_inst5|temp_address[9]~0_combout\))))) ) + ( 
-- \b2v_inst7|Add0~38\ ))
-- \b2v_inst7|Add0~34\ = CARRY(( \b2v_inst7|ALU_in1[14]~8_combout\ ) + ( !\b2v_inst7|ALU_in2[14]~8_combout\ $ (((!\b2v_inst|ALU_Opcode[1]~0_combout\ & ((!\b2v_inst4|z[14]~5_combout\) # (!\b2v_inst5|temp_address[9]~0_combout\))))) ) + ( \b2v_inst7|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010000101011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_ALU_Opcode[1]~0_combout\,
	datab => \b2v_inst4|ALT_INV_z[14]~5_combout\,
	datac => \b2v_inst5|ALT_INV_temp_address[9]~0_combout\,
	datad => \b2v_inst7|ALT_INV_ALU_in1[14]~8_combout\,
	dataf => \b2v_inst7|ALT_INV_ALU_in2[14]~8_combout\,
	cin => \b2v_inst7|Add0~38\,
	sumout => \b2v_inst7|Add0~33_sumout\,
	cout => \b2v_inst7|Add0~34\);

-- Location: MLABCELL_X25_Y3_N12
\b2v_inst4|z[14]~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[14]~54_combout\ = ( !\b2v_inst4|z[14]~48_combout\ & ( !\b2v_inst4|z[14]~7_combout\ & ( (\b2v_inst7|Add0~33_sumout\ & (!\b2v_inst4|z[14]~47_combout\ & (\b2v_inst4|z[10]~53_combout\ & \b2v_inst4|z[14]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|ALT_INV_Add0~33_sumout\,
	datab => \b2v_inst4|ALT_INV_z[14]~47_combout\,
	datac => \b2v_inst4|ALT_INV_z[10]~53_combout\,
	datad => \b2v_inst4|ALT_INV_z[14]~3_combout\,
	datae => \b2v_inst4|ALT_INV_z[14]~48_combout\,
	dataf => \b2v_inst4|ALT_INV_z[14]~7_combout\,
	combout => \b2v_inst4|z[14]~54_combout\);

-- Location: MLABCELL_X25_Y3_N6
\b2v_inst4|z[14]~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[14]~61_combout\ = ( \b2v_inst4|z[14]~56_combout\ & ( \b2v_inst4|z[14]~54_combout\ ) ) # ( !\b2v_inst4|z[14]~56_combout\ & ( \b2v_inst4|z[14]~54_combout\ ) ) # ( \b2v_inst4|z[14]~56_combout\ & ( !\b2v_inst4|z[14]~54_combout\ ) ) # ( 
-- !\b2v_inst4|z[14]~56_combout\ & ( !\b2v_inst4|z[14]~54_combout\ & ( (((\b2v_inst4|z[14]~59_combout\) # (\b2v_inst4|z[14]~60_combout\)) # (\b2v_inst4|z[14]~52_combout\)) # (\b2v_inst4|z[14]~51_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[14]~51_combout\,
	datab => \b2v_inst4|ALT_INV_z[14]~52_combout\,
	datac => \b2v_inst4|ALT_INV_z[14]~60_combout\,
	datad => \b2v_inst4|ALT_INV_z[14]~59_combout\,
	datae => \b2v_inst4|ALT_INV_z[14]~56_combout\,
	dataf => \b2v_inst4|ALT_INV_z[14]~54_combout\,
	combout => \b2v_inst4|z[14]~61_combout\);

-- Location: FF_X27_Y2_N20
\b2v_inst4|regs_rtl_1_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst4|z[15]~99_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_1_bypass\(9));

-- Location: LABCELL_X27_Y2_N18
\b2v_inst4|Mux16~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux16~17_combout\ = ( \b2v_inst4|Mux16~1_combout\ & ( (!\b2v_inst4|Mux16~0_combout\ & (\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a0~portbdataout\)) # (\b2v_inst4|Mux16~0_combout\ & ((\b2v_inst4|regs_rtl_1_bypass\(9)))) ) ) # ( 
-- !\b2v_inst4|Mux16~1_combout\ & ( \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a0~portbdataout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a0~portbdataout\,
	datac => \b2v_inst4|ALT_INV_Mux16~0_combout\,
	datad => \b2v_inst4|ALT_INV_regs_rtl_1_bypass\(9),
	dataf => \b2v_inst4|ALT_INV_Mux16~1_combout\,
	combout => \b2v_inst4|Mux16~17_combout\);

-- Location: LABCELL_X29_Y4_N39
\b2v_inst4|z[14]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[14]~2_combout\ = ( \b2v_inst4|z[14]~0_combout\ & ( (!\b2v_inst4|Mux16~17_combout\ & (!\b2v_inst|Selector5~0_combout\ & (!\b2v_inst|z_control[1]~1_combout\ & \b2v_inst4|Mux0~17_combout\))) ) ) # ( !\b2v_inst4|z[14]~0_combout\ & ( 
-- (!\b2v_inst|Selector5~0_combout\ & \b2v_inst|z_control[1]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux16~17_combout\,
	datab => \b2v_inst|ALT_INV_Selector5~0_combout\,
	datac => \b2v_inst|ALT_INV_z_control[1]~1_combout\,
	datad => \b2v_inst4|ALT_INV_Mux0~17_combout\,
	dataf => \b2v_inst4|ALT_INV_z[14]~0_combout\,
	combout => \b2v_inst4|z[14]~2_combout\);

-- Location: LABCELL_X27_Y2_N33
\b2v_inst4|z[15]~98\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[15]~98_combout\ = ( \b2v_inst4|Mux16~17_combout\ & ( (!\b2v_inst4|z[14]~2_combout\ & ((!\b2v_inst4|z[14]~9_combout\ & (\b2v_inst4|z[14]~47_combout\)) # (\b2v_inst4|z[14]~9_combout\ & ((\b2v_inst4|Mux0~17_combout\))))) # 
-- (\b2v_inst4|z[14]~2_combout\ & (((\b2v_inst4|Mux0~17_combout\)))) ) ) # ( !\b2v_inst4|Mux16~17_combout\ & ( (\b2v_inst4|Mux0~17_combout\ & ((\b2v_inst4|z[14]~9_combout\) # (\b2v_inst4|z[14]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111101000111000011110100011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[14]~47_combout\,
	datab => \b2v_inst4|ALT_INV_z[14]~2_combout\,
	datac => \b2v_inst4|ALT_INV_Mux0~17_combout\,
	datad => \b2v_inst4|ALT_INV_z[14]~9_combout\,
	dataf => \b2v_inst4|ALT_INV_Mux16~17_combout\,
	combout => \b2v_inst4|z[15]~98_combout\);

-- Location: FF_X27_Y2_N43
\b2v_inst4|regs[10][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst4|z[15]~99_combout\,
	ena => \b2v_inst4|regs[10][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs[10][15]~q\);

-- Location: LABCELL_X27_Y5_N42
\b2v_inst7|ALU_in1[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|ALU_in1[15]~15_combout\ = ( \b2v_inst4|Mux0~17_combout\ & ( \b2v_inst3|IR_Op[15]~15_combout\ & ( ((\b2v_inst3|temp_IR\(15) & \b2v_inst4|regs[10][15]~q\)) # (\b2v_inst3|temp_IR\(14)) ) ) ) # ( !\b2v_inst4|Mux0~17_combout\ & ( 
-- \b2v_inst3|IR_Op[15]~15_combout\ & ( (!\b2v_inst3|temp_IR\(15) & (\b2v_inst3|temp_IR\(14))) # (\b2v_inst3|temp_IR\(15) & (!\b2v_inst3|temp_IR\(14) & \b2v_inst4|regs[10][15]~q\)) ) ) ) # ( \b2v_inst4|Mux0~17_combout\ & ( !\b2v_inst3|IR_Op[15]~15_combout\ & 
-- ( (\b2v_inst3|temp_IR\(15) & ((\b2v_inst4|regs[10][15]~q\) # (\b2v_inst3|temp_IR\(14)))) ) ) ) # ( !\b2v_inst4|Mux0~17_combout\ & ( !\b2v_inst3|IR_Op[15]~15_combout\ & ( (\b2v_inst3|temp_IR\(15) & (!\b2v_inst3|temp_IR\(14) & \b2v_inst4|regs[10][15]~q\)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000101010001010100100110001001100011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|ALT_INV_temp_IR\(15),
	datab => \b2v_inst3|ALT_INV_temp_IR\(14),
	datac => \b2v_inst4|ALT_INV_regs[10][15]~q\,
	datae => \b2v_inst4|ALT_INV_Mux0~17_combout\,
	dataf => \b2v_inst3|ALT_INV_IR_Op[15]~15_combout\,
	combout => \b2v_inst7|ALU_in1[15]~15_combout\);

-- Location: LABCELL_X31_Y3_N6
\b2v_inst7|ALU_in2[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|ALU_in2[15]~15_combout\ = ( \b2v_inst4|Mux16~17_combout\ & ( (!\b2v_inst|Mux2~0_combout\) # (\b2v_inst4|Mux0~17_combout\) ) ) # ( !\b2v_inst4|Mux16~17_combout\ & ( (\b2v_inst4|Mux0~17_combout\ & \b2v_inst|Mux2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst4|ALT_INV_Mux0~17_combout\,
	datac => \b2v_inst|ALT_INV_Mux2~0_combout\,
	dataf => \b2v_inst4|ALT_INV_Mux16~17_combout\,
	combout => \b2v_inst7|ALU_in2[15]~15_combout\);

-- Location: LABCELL_X27_Y5_N33
\b2v_inst4|z[15]~96\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[15]~96_combout\ = ( !\b2v_inst7|ALU_in2[15]~15_combout\ & ( !\b2v_inst7|ALU_in1[15]~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst7|ALT_INV_ALU_in1[15]~15_combout\,
	dataf => \b2v_inst7|ALT_INV_ALU_in2[15]~15_combout\,
	combout => \b2v_inst4|z[15]~96_combout\);

-- Location: LABCELL_X27_Y5_N39
\b2v_inst4|z[15]~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[15]~97_combout\ = ( \b2v_inst7|ALU_in1[15]~15_combout\ & ( \b2v_inst7|ALU_in2[15]~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst7|ALT_INV_ALU_in2[15]~15_combout\,
	dataf => \b2v_inst7|ALT_INV_ALU_in1[15]~15_combout\,
	combout => \b2v_inst4|z[15]~97_combout\);

-- Location: LABCELL_X27_Y5_N12
\b2v_inst4|z[15]~100\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[15]~100_combout\ = ( \b2v_inst4|z[15]~97_combout\ & ( \b2v_inst4|z[14]~50_combout\ & ( (!\b2v_inst4|z[14]~48_combout\ & ((\b2v_inst3|IR_Op[15]~15_combout\) # (\b2v_inst4|z[15]~57_combout\))) ) ) ) # ( !\b2v_inst4|z[15]~97_combout\ & ( 
-- \b2v_inst4|z[14]~50_combout\ & ( (\b2v_inst3|IR_Op[15]~15_combout\ & !\b2v_inst4|z[14]~48_combout\) ) ) ) # ( \b2v_inst4|z[15]~97_combout\ & ( !\b2v_inst4|z[14]~50_combout\ & ( (!\b2v_inst4|z[14]~48_combout\ & (\b2v_inst4|z[15]~57_combout\)) # 
-- (\b2v_inst4|z[14]~48_combout\ & ((\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(15)))) ) ) ) # ( !\b2v_inst4|z[15]~97_combout\ & ( !\b2v_inst4|z[14]~50_combout\ & ( (\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(15) & 
-- \b2v_inst4|z[14]~48_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010101010000111100110011000000000111011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[15]~57_combout\,
	datab => \b2v_inst3|ALT_INV_IR_Op[15]~15_combout\,
	datac => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(15),
	datad => \b2v_inst4|ALT_INV_z[14]~48_combout\,
	datae => \b2v_inst4|ALT_INV_z[15]~97_combout\,
	dataf => \b2v_inst4|ALT_INV_z[14]~50_combout\,
	combout => \b2v_inst4|z[15]~100_combout\);

-- Location: LABCELL_X27_Y5_N51
\b2v_inst4|z[15]~102\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[15]~102_combout\ = ( \b2v_inst4|z[14]~7_combout\ & ( \b2v_inst4|z[14]~2_combout\ & ( (!\b2v_inst4|z[15]~96_combout\ & \b2v_inst4|z[14]~3_combout\) ) ) ) # ( !\b2v_inst4|z[14]~7_combout\ & ( \b2v_inst4|z[14]~2_combout\ & ( 
-- \b2v_inst4|z[14]~3_combout\ ) ) ) # ( \b2v_inst4|z[14]~7_combout\ & ( !\b2v_inst4|z[14]~2_combout\ & ( (!\b2v_inst4|z[14]~9_combout\ & (((!\b2v_inst4|z[15]~96_combout\ & \b2v_inst4|z[14]~3_combout\)) # (\b2v_inst4|z[15]~100_combout\))) # 
-- (\b2v_inst4|z[14]~9_combout\ & (!\b2v_inst4|z[15]~96_combout\ & (\b2v_inst4|z[14]~3_combout\))) ) ) ) # ( !\b2v_inst4|z[14]~7_combout\ & ( !\b2v_inst4|z[14]~2_combout\ & ( ((!\b2v_inst4|z[14]~9_combout\ & \b2v_inst4|z[15]~100_combout\)) # 
-- (\b2v_inst4|z[14]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110101111000011001010111000001111000011110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[14]~9_combout\,
	datab => \b2v_inst4|ALT_INV_z[15]~96_combout\,
	datac => \b2v_inst4|ALT_INV_z[14]~3_combout\,
	datad => \b2v_inst4|ALT_INV_z[15]~100_combout\,
	datae => \b2v_inst4|ALT_INV_z[14]~7_combout\,
	dataf => \b2v_inst4|ALT_INV_z[14]~2_combout\,
	combout => \b2v_inst4|z[15]~102_combout\);

-- Location: LABCELL_X27_Y5_N18
\b2v_inst4|z[15]~103\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[15]~103_combout\ = (\b2v_inst4|z[15]~100_combout\ & (!\b2v_inst4|z[14]~2_combout\ & !\b2v_inst4|z[14]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst4|ALT_INV_z[15]~100_combout\,
	datac => \b2v_inst4|ALT_INV_z[14]~2_combout\,
	datad => \b2v_inst4|ALT_INV_z[14]~9_combout\,
	combout => \b2v_inst4|z[15]~103_combout\);

-- Location: LABCELL_X27_Y2_N27
\b2v_inst4|z[15]~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[15]~101_combout\ = ( \b2v_inst4|z[14]~9_combout\ & ( \b2v_inst4|z[15]~100_combout\ & ( (!\b2v_inst4|z[14]~47_combout\ & (!\b2v_inst4|z[14]~48_combout\ & \b2v_inst4|z[10]~53_combout\)) ) ) ) # ( !\b2v_inst4|z[14]~9_combout\ & ( 
-- \b2v_inst4|z[15]~100_combout\ & ( (!\b2v_inst4|z[14]~47_combout\ & ((!\b2v_inst4|z[14]~2_combout\) # ((!\b2v_inst4|z[14]~48_combout\ & \b2v_inst4|z[10]~53_combout\)))) ) ) ) # ( \b2v_inst4|z[14]~9_combout\ & ( !\b2v_inst4|z[15]~100_combout\ & ( 
-- (!\b2v_inst4|z[14]~47_combout\ & (!\b2v_inst4|z[14]~48_combout\ & \b2v_inst4|z[10]~53_combout\)) ) ) ) # ( !\b2v_inst4|z[14]~9_combout\ & ( !\b2v_inst4|z[15]~100_combout\ & ( (!\b2v_inst4|z[14]~47_combout\ & (!\b2v_inst4|z[14]~48_combout\ & 
-- \b2v_inst4|z[10]~53_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100010100000101010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[14]~47_combout\,
	datab => \b2v_inst4|ALT_INV_z[14]~48_combout\,
	datac => \b2v_inst4|ALT_INV_z[14]~2_combout\,
	datad => \b2v_inst4|ALT_INV_z[10]~53_combout\,
	datae => \b2v_inst4|ALT_INV_z[14]~9_combout\,
	dataf => \b2v_inst4|ALT_INV_z[15]~100_combout\,
	combout => \b2v_inst4|z[15]~101_combout\);

-- Location: MLABCELL_X28_Y3_N48
\b2v_inst7|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|Add0~61_sumout\ = SUM(( \b2v_inst7|ALU_in1[15]~15_combout\ ) + ( !\b2v_inst7|ALU_in2[15]~15_combout\ $ (((!\b2v_inst|ALU_Opcode[1]~0_combout\ & ((!\b2v_inst4|z[14]~5_combout\) # (!\b2v_inst5|temp_address[9]~0_combout\))))) ) + ( 
-- \b2v_inst7|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000000001111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[14]~5_combout\,
	datab => \b2v_inst5|ALT_INV_temp_address[9]~0_combout\,
	datac => \b2v_inst|ALT_INV_ALU_Opcode[1]~0_combout\,
	datad => \b2v_inst7|ALT_INV_ALU_in1[15]~15_combout\,
	dataf => \b2v_inst7|ALT_INV_ALU_in2[15]~15_combout\,
	cin => \b2v_inst7|Add0~34\,
	sumout => \b2v_inst7|Add0~61_sumout\);

-- Location: LABCELL_X27_Y2_N42
\b2v_inst4|z[15]~99\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[15]~99_combout\ = ( \b2v_inst4|z[15]~101_combout\ & ( \b2v_inst7|Add0~61_sumout\ & ( (\b2v_inst4|z[15]~102_combout\) # (\b2v_inst4|z[15]~98_combout\) ) ) ) # ( !\b2v_inst4|z[15]~101_combout\ & ( \b2v_inst7|Add0~61_sumout\ & ( 
-- \b2v_inst4|z[15]~98_combout\ ) ) ) # ( \b2v_inst4|z[15]~101_combout\ & ( !\b2v_inst7|Add0~61_sumout\ & ( ((!\b2v_inst4|z[14]~7_combout\ & ((\b2v_inst4|z[15]~103_combout\))) # (\b2v_inst4|z[14]~7_combout\ & (\b2v_inst4|z[15]~102_combout\))) # 
-- (\b2v_inst4|z[15]~98_combout\) ) ) ) # ( !\b2v_inst4|z[15]~101_combout\ & ( !\b2v_inst7|Add0~61_sumout\ & ( \b2v_inst4|z[15]~98_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010111110111011101010101010101010111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[15]~98_combout\,
	datab => \b2v_inst4|ALT_INV_z[15]~102_combout\,
	datac => \b2v_inst4|ALT_INV_z[15]~103_combout\,
	datad => \b2v_inst4|ALT_INV_z[14]~7_combout\,
	datae => \b2v_inst4|ALT_INV_z[15]~101_combout\,
	dataf => \b2v_inst7|ALT_INV_Add0~61_sumout\,
	combout => \b2v_inst4|z[15]~99_combout\);

-- Location: FF_X30_Y2_N37
\b2v_inst4|regs_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst4|z[1]~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_0_bypass\(23));

-- Location: LABCELL_X29_Y2_N36
\b2v_inst4|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux0~3_combout\ = ( \b2v_inst4|Mux0~0_combout\ & ( (!\b2v_inst4|Mux0~1_combout\ & (\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a14\)) # (\b2v_inst4|Mux0~1_combout\ & ((\b2v_inst4|regs_rtl_0_bypass\(23)))) ) ) # ( !\b2v_inst4|Mux0~0_combout\ 
-- & ( \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a14\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a14\,
	datab => \b2v_inst4|ALT_INV_regs_rtl_0_bypass\(23),
	datac => \b2v_inst4|ALT_INV_Mux0~1_combout\,
	dataf => \b2v_inst4|ALT_INV_Mux0~0_combout\,
	combout => \b2v_inst4|Mux0~3_combout\);

-- Location: LABCELL_X30_Y2_N27
\b2v_inst5|temp_address[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|temp_address[1]~5_combout\ = ( \b2v_inst4|Mux16~8_combout\ & ( (\b2v_inst5|temp_address[9]~3_combout\) # (\b2v_inst4|Mux0~3_combout\) ) ) # ( !\b2v_inst4|Mux16~8_combout\ & ( (\b2v_inst4|Mux0~3_combout\ & !\b2v_inst5|temp_address[9]~3_combout\) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux0~3_combout\,
	datac => \b2v_inst5|ALT_INV_temp_address[9]~3_combout\,
	dataf => \b2v_inst4|ALT_INV_Mux16~8_combout\,
	combout => \b2v_inst5|temp_address[1]~5_combout\);

-- Location: LABCELL_X30_Y2_N3
\b2v_inst5|address_b_temp[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|address_b_temp\(1) = ( \b2v_inst5|temp_address[1]~5_combout\ & ( (\b2v_inst5|address_b_temp\(1)) # (\b2v_inst5|temp_address[9]~2_combout\) ) ) # ( !\b2v_inst5|temp_address[1]~5_combout\ & ( (!\b2v_inst5|temp_address[9]~2_combout\ & 
-- \b2v_inst5|address_b_temp\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|ALT_INV_temp_address[9]~2_combout\,
	datad => \b2v_inst5|ALT_INV_address_b_temp\(1),
	dataf => \b2v_inst5|ALT_INV_temp_address[1]~5_combout\,
	combout => \b2v_inst5|address_b_temp\(1));

-- Location: FF_X30_Y3_N20
\b2v_inst3|temp_IR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(6),
	sload => VCC,
	ena => \b2v_inst|ALT_INV_state.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|temp_IR\(6));

-- Location: FF_X30_Y3_N49
\b2v_inst4|regs_rtl_1_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst3|temp_IR\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_1_bypass\(5));

-- Location: FF_X31_Y3_N29
\b2v_inst4|regs_rtl_1_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(6),
	sload => VCC,
	ena => \b2v_inst|ALT_INV_state.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_1_bypass\(6));

-- Location: FF_X31_Y3_N47
\b2v_inst4|regs_rtl_1_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(7),
	sload => VCC,
	ena => \b2v_inst|ALT_INV_state.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_1_bypass\(8));

-- Location: FF_X31_Y3_N41
\b2v_inst4|regs_rtl_1_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst3|temp_IR\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_1_bypass\(7));

-- Location: LABCELL_X31_Y3_N48
\b2v_inst4|Mux16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux16~1_combout\ = ( \b2v_inst4|regs_rtl_1_bypass\(7) & ( (\b2v_inst4|regs_rtl_1_bypass\(8) & (!\b2v_inst4|regs_rtl_1_bypass\(5) $ (\b2v_inst4|regs_rtl_1_bypass\(6)))) ) ) # ( !\b2v_inst4|regs_rtl_1_bypass\(7) & ( 
-- (!\b2v_inst4|regs_rtl_1_bypass\(8) & (!\b2v_inst4|regs_rtl_1_bypass\(5) $ (\b2v_inst4|regs_rtl_1_bypass\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000110000110000000000000000110000110000000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst4|ALT_INV_regs_rtl_1_bypass\(5),
	datac => \b2v_inst4|ALT_INV_regs_rtl_1_bypass\(6),
	datad => \b2v_inst4|ALT_INV_regs_rtl_1_bypass\(8),
	dataf => \b2v_inst4|ALT_INV_regs_rtl_1_bypass\(7),
	combout => \b2v_inst4|Mux16~1_combout\);

-- Location: FF_X28_Y4_N8
\b2v_inst4|regs_rtl_1_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst4|z[0]~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_1_bypass\(24));

-- Location: LABCELL_X29_Y2_N9
\b2v_inst4|Mux16~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux16~2_combout\ = ( \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a15\ & ( (!\b2v_inst4|Mux16~1_combout\) # ((!\b2v_inst4|Mux16~0_combout\) # (\b2v_inst4|regs_rtl_1_bypass\(24))) ) ) # ( !\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a15\ & 
-- ( (\b2v_inst4|Mux16~1_combout\ & (\b2v_inst4|Mux16~0_combout\ & \b2v_inst4|regs_rtl_1_bypass\(24))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111101111111011111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux16~1_combout\,
	datab => \b2v_inst4|ALT_INV_Mux16~0_combout\,
	datac => \b2v_inst4|ALT_INV_regs_rtl_1_bypass\(24),
	dataf => \b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a15\,
	combout => \b2v_inst4|Mux16~2_combout\);

-- Location: LABCELL_X29_Y2_N51
\b2v_inst5|temp_address[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|temp_address[0]~4_combout\ = ( \b2v_inst4|Mux0~2_combout\ & ( (!\b2v_inst5|temp_address[9]~3_combout\) # (\b2v_inst4|Mux16~2_combout\) ) ) # ( !\b2v_inst4|Mux0~2_combout\ & ( (\b2v_inst4|Mux16~2_combout\ & \b2v_inst5|temp_address[9]~3_combout\) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst4|ALT_INV_Mux16~2_combout\,
	datad => \b2v_inst5|ALT_INV_temp_address[9]~3_combout\,
	dataf => \b2v_inst4|ALT_INV_Mux0~2_combout\,
	combout => \b2v_inst5|temp_address[0]~4_combout\);

-- Location: LABCELL_X29_Y2_N27
\b2v_inst5|address_b_temp[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|address_b_temp\(0) = ( \b2v_inst5|temp_address[0]~4_combout\ & ( (\b2v_inst5|address_b_temp\(0)) # (\b2v_inst5|temp_address[9]~2_combout\) ) ) # ( !\b2v_inst5|temp_address[0]~4_combout\ & ( (!\b2v_inst5|temp_address[9]~2_combout\ & 
-- \b2v_inst5|address_b_temp\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|ALT_INV_temp_address[9]~2_combout\,
	datad => \b2v_inst5|ALT_INV_address_b_temp\(0),
	dataf => \b2v_inst5|ALT_INV_temp_address[0]~4_combout\,
	combout => \b2v_inst5|address_b_temp\(0));

-- Location: FF_X31_Y3_N22
\b2v_inst3|temp_IR[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(4),
	sload => VCC,
	ena => \b2v_inst|ALT_INV_state.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|temp_IR[4]~DUPLICATE_q\);

-- Location: MLABCELL_X25_Y4_N3
\b2v_inst4|regs[10][15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|regs[10][15]~0_combout\ = ( \b2v_inst3|temp_IR\(7) & ( \b2v_inst3|temp_IR\(5) & ( (!\b2v_inst3|temp_IR[4]~DUPLICATE_q\ & !\b2v_inst3|temp_IR[6]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst3|ALT_INV_temp_IR[4]~DUPLICATE_q\,
	datad => \b2v_inst3|ALT_INV_temp_IR[6]~DUPLICATE_q\,
	datae => \b2v_inst3|ALT_INV_temp_IR\(7),
	dataf => \b2v_inst3|ALT_INV_temp_IR\(5),
	combout => \b2v_inst4|regs[10][15]~0_combout\);

-- Location: MLABCELL_X25_Y4_N54
\b2v_inst4|regs[10][15]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|regs[10][15]~1_combout\ = ( \b2v_inst|Selector5~2_combout\ & ( \b2v_inst|state.T2~q\ & ( \b2v_inst4|regs[10][15]~0_combout\ ) ) ) # ( !\b2v_inst|Selector5~2_combout\ & ( \b2v_inst|state.T2~q\ & ( (\b2v_inst3|temp_IR\(14) & 
-- (\b2v_inst4|regs[10][15]~0_combout\ & ((!\b2v_inst|Mux15~4_combout\) # (\b2v_inst|Mux15~1_combout\)))) ) ) ) # ( \b2v_inst|Selector5~2_combout\ & ( !\b2v_inst|state.T2~q\ & ( \b2v_inst4|regs[10][15]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000010000000110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_Mux15~4_combout\,
	datab => \b2v_inst3|ALT_INV_temp_IR\(14),
	datac => \b2v_inst4|ALT_INV_regs[10][15]~0_combout\,
	datad => \b2v_inst|ALT_INV_Mux15~1_combout\,
	datae => \b2v_inst|ALT_INV_Selector5~2_combout\,
	dataf => \b2v_inst|ALT_INV_state.T2~q\,
	combout => \b2v_inst4|regs[10][15]~1_combout\);

-- Location: FF_X29_Y5_N50
\b2v_inst4|regs[10][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst4|z[9]~90_combout\,
	ena => \b2v_inst4|regs[10][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs[10][9]~q\);

-- Location: MLABCELL_X28_Y4_N30
\b2v_inst7|ALU_in1[9]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|ALU_in1[9]~12_combout\ = ( \b2v_inst4|regs[10][9]~q\ & ( (!\b2v_inst3|temp_IR\(14) & (((\b2v_inst3|temp_IR\(15))))) # (\b2v_inst3|temp_IR\(14) & ((!\b2v_inst3|temp_IR\(15) & (\b2v_inst3|IR_Op[9]~12_combout\)) # (\b2v_inst3|temp_IR\(15) & 
-- ((\b2v_inst4|Mux0~14_combout\))))) ) ) # ( !\b2v_inst4|regs[10][9]~q\ & ( (\b2v_inst3|temp_IR\(14) & ((!\b2v_inst3|temp_IR\(15) & (\b2v_inst3|IR_Op[9]~12_combout\)) # (\b2v_inst3|temp_IR\(15) & ((\b2v_inst4|Mux0~14_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011000100010000001100010001110011110001000111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|ALT_INV_IR_Op[9]~12_combout\,
	datab => \b2v_inst3|ALT_INV_temp_IR\(14),
	datac => \b2v_inst4|ALT_INV_Mux0~14_combout\,
	datad => \b2v_inst3|ALT_INV_temp_IR\(15),
	dataf => \b2v_inst4|ALT_INV_regs[10][9]~q\,
	combout => \b2v_inst7|ALU_in1[9]~12_combout\);

-- Location: LABCELL_X29_Y5_N42
\b2v_inst4|z[9]~87\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[9]~87_combout\ = ( \b2v_inst4|z[14]~8_combout\ & ( !\b2v_inst4|z[14]~48_combout\ & ( (!\b2v_inst4|z[14]~7_combout\ & (!\b2v_inst4|z[14]~50_combout\ & (\b2v_inst7|ALU_in1[9]~12_combout\ & \b2v_inst7|ALU_in2[9]~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[14]~7_combout\,
	datab => \b2v_inst4|ALT_INV_z[14]~50_combout\,
	datac => \b2v_inst7|ALT_INV_ALU_in1[9]~12_combout\,
	datad => \b2v_inst7|ALT_INV_ALU_in2[9]~12_combout\,
	datae => \b2v_inst4|ALT_INV_z[14]~8_combout\,
	dataf => \b2v_inst4|ALT_INV_z[14]~48_combout\,
	combout => \b2v_inst4|z[9]~87_combout\);

-- Location: MLABCELL_X28_Y5_N36
\b2v_inst4|z[9]~88\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[9]~88_combout\ = ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(9) & ( (!\b2v_inst4|z[14]~50_combout\ & ((\b2v_inst4|z[14]~48_combout\))) # (\b2v_inst4|z[14]~50_combout\ & (\b2v_inst3|IR_Op[9]~12_combout\ & 
-- !\b2v_inst4|z[14]~48_combout\)) ) ) # ( !\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(9) & ( (\b2v_inst3|IR_Op[9]~12_combout\ & (\b2v_inst4|z[14]~50_combout\ & !\b2v_inst4|z[14]~48_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000111000001110000010000000100000001110000011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|ALT_INV_IR_Op[9]~12_combout\,
	datab => \b2v_inst4|ALT_INV_z[14]~50_combout\,
	datac => \b2v_inst4|ALT_INV_z[14]~48_combout\,
	datae => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(9),
	combout => \b2v_inst4|z[9]~88_combout\);

-- Location: LABCELL_X29_Y5_N54
\b2v_inst4|z[9]~86\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[9]~86_combout\ = ( !\b2v_inst4|z[14]~8_combout\ & ( !\b2v_inst4|z[14]~48_combout\ & ( (\b2v_inst4|z[14]~7_combout\ & (!\b2v_inst4|z[14]~50_combout\ & ((\b2v_inst7|ALU_in2[9]~12_combout\) # (\b2v_inst7|ALU_in1[9]~12_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[14]~7_combout\,
	datab => \b2v_inst4|ALT_INV_z[14]~50_combout\,
	datac => \b2v_inst7|ALT_INV_ALU_in1[9]~12_combout\,
	datad => \b2v_inst7|ALT_INV_ALU_in2[9]~12_combout\,
	datae => \b2v_inst4|ALT_INV_z[14]~8_combout\,
	dataf => \b2v_inst4|ALT_INV_z[14]~48_combout\,
	combout => \b2v_inst4|z[9]~86_combout\);

-- Location: LABCELL_X29_Y5_N36
\b2v_inst4|z[9]~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[9]~89_combout\ = ( \b2v_inst4|z[9]~73_combout\ & ( !\b2v_inst4|z[9]~86_combout\ & ( (!\b2v_inst4|z[9]~87_combout\ & (!\b2v_inst4|z[9]~88_combout\ & ((!\b2v_inst7|Add0~49_sumout\) # (\b2v_inst4|z[14]~50_combout\)))) ) ) ) # ( 
-- !\b2v_inst4|z[9]~73_combout\ & ( !\b2v_inst4|z[9]~86_combout\ & ( (!\b2v_inst4|z[9]~87_combout\ & !\b2v_inst4|z[9]~88_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000100011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|ALT_INV_Add0~49_sumout\,
	datab => \b2v_inst4|ALT_INV_z[9]~87_combout\,
	datac => \b2v_inst4|ALT_INV_z[14]~50_combout\,
	datad => \b2v_inst4|ALT_INV_z[9]~88_combout\,
	datae => \b2v_inst4|ALT_INV_z[9]~73_combout\,
	dataf => \b2v_inst4|ALT_INV_z[9]~86_combout\,
	combout => \b2v_inst4|z[9]~89_combout\);

-- Location: LABCELL_X29_Y5_N48
\b2v_inst4|z[9]~90\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[9]~90_combout\ = ( \b2v_inst4|z[14]~47_combout\ & ( \b2v_inst4|z[14]~2_combout\ & ( \b2v_inst4|Mux0~14_combout\ ) ) ) # ( !\b2v_inst4|z[14]~47_combout\ & ( \b2v_inst4|z[14]~2_combout\ & ( \b2v_inst4|Mux0~14_combout\ ) ) ) # ( 
-- \b2v_inst4|z[14]~47_combout\ & ( !\b2v_inst4|z[14]~2_combout\ & ( (!\b2v_inst4|z[14]~9_combout\ & ((\b2v_inst4|Mux16~14_combout\))) # (\b2v_inst4|z[14]~9_combout\ & (\b2v_inst4|Mux0~14_combout\)) ) ) ) # ( !\b2v_inst4|z[14]~47_combout\ & ( 
-- !\b2v_inst4|z[14]~2_combout\ & ( (!\b2v_inst4|z[14]~9_combout\ & ((!\b2v_inst4|z[9]~89_combout\))) # (\b2v_inst4|z[14]~9_combout\ & (\b2v_inst4|Mux0~14_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110001010101000011110101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux0~14_combout\,
	datab => \b2v_inst4|ALT_INV_z[9]~89_combout\,
	datac => \b2v_inst4|ALT_INV_Mux16~14_combout\,
	datad => \b2v_inst4|ALT_INV_z[14]~9_combout\,
	datae => \b2v_inst4|ALT_INV_z[14]~47_combout\,
	dataf => \b2v_inst4|ALT_INV_z[14]~2_combout\,
	combout => \b2v_inst4|z[9]~90_combout\);

-- Location: FF_X29_Y5_N38
\b2v_inst4|regs_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst4|z[9]~90_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_0_bypass\(15));

-- Location: LABCELL_X30_Y4_N15
\b2v_inst4|Mux0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux0~14_combout\ = ( \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a6\ & ( (!\b2v_inst4|Mux0~0_combout\) # ((!\b2v_inst4|Mux0~1_combout\) # (\b2v_inst4|regs_rtl_0_bypass\(15))) ) ) # ( !\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a6\ & ( 
-- (\b2v_inst4|Mux0~0_combout\ & (\b2v_inst4|regs_rtl_0_bypass\(15) & \b2v_inst4|Mux0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001111111111110011111111111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst4|ALT_INV_Mux0~0_combout\,
	datac => \b2v_inst4|ALT_INV_regs_rtl_0_bypass\(15),
	datad => \b2v_inst4|ALT_INV_Mux0~1_combout\,
	dataf => \b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a6\,
	combout => \b2v_inst4|Mux0~14_combout\);

-- Location: LABCELL_X33_Y4_N48
\b2v_inst9|LessThan0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst9|LessThan0~14_combout\ = ( \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a7\ & ( \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a7\ & ( (\b2v_inst4|Mux16~7_combout\ & (!\b2v_inst4|regs_rtl_1_bypass\(16) & ((!\b2v_inst4|Mux0~10_combout\) # 
-- (\b2v_inst4|regs_rtl_0_bypass\(16))))) ) ) ) # ( !\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a7\ & ( \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a7\ & ( (!\b2v_inst4|regs_rtl_0_bypass\(16) & (!\b2v_inst4|Mux0~10_combout\ & 
-- ((!\b2v_inst4|Mux16~7_combout\) # (!\b2v_inst4|regs_rtl_1_bypass\(16))))) # (\b2v_inst4|regs_rtl_0_bypass\(16) & ((!\b2v_inst4|Mux16~7_combout\) # ((!\b2v_inst4|regs_rtl_1_bypass\(16))))) ) ) ) # ( \b2v_inst4|regs_rtl_1|auto_generated|ram_block1a7\ & ( 
-- !\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a7\ & ( (\b2v_inst4|regs_rtl_0_bypass\(16) & (\b2v_inst4|Mux16~7_combout\ & (\b2v_inst4|Mux0~10_combout\ & !\b2v_inst4|regs_rtl_1_bypass\(16)))) ) ) ) # ( !\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a7\ 
-- & ( !\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a7\ & ( (\b2v_inst4|regs_rtl_0_bypass\(16) & (\b2v_inst4|Mux0~10_combout\ & ((!\b2v_inst4|Mux16~7_combout\) # (!\b2v_inst4|regs_rtl_1_bypass\(16))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000100000000010000000011110101110001000011000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_regs_rtl_0_bypass\(16),
	datab => \b2v_inst4|ALT_INV_Mux16~7_combout\,
	datac => \b2v_inst4|ALT_INV_Mux0~10_combout\,
	datad => \b2v_inst4|ALT_INV_regs_rtl_1_bypass\(16),
	datae => \b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a7\,
	dataf => \b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	combout => \b2v_inst9|LessThan0~14_combout\);

-- Location: LABCELL_X31_Y4_N36
\b2v_inst9|LessThan0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst9|LessThan0~15_combout\ = ( !\b2v_inst9|LessThan0~8_combout\ & ( \b2v_inst9|LessThan0~7_combout\ & ( (!\b2v_inst9|LessThan0~9_combout\ & ((!\b2v_inst4|Mux0~14_combout\ & (\b2v_inst9|LessThan0~14_combout\ & !\b2v_inst4|Mux16~14_combout\)) # 
-- (\b2v_inst4|Mux0~14_combout\ & ((!\b2v_inst4|Mux16~14_combout\) # (\b2v_inst9|LessThan0~14_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux0~14_combout\,
	datab => \b2v_inst9|ALT_INV_LessThan0~14_combout\,
	datac => \b2v_inst9|ALT_INV_LessThan0~9_combout\,
	datad => \b2v_inst4|ALT_INV_Mux16~14_combout\,
	datae => \b2v_inst9|ALT_INV_LessThan0~8_combout\,
	dataf => \b2v_inst9|ALT_INV_LessThan0~7_combout\,
	combout => \b2v_inst9|LessThan0~15_combout\);

-- Location: MLABCELL_X25_Y4_N51
\b2v_inst9|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst9|LessThan0~2_combout\ = ( \b2v_inst4|regs_rtl_0_bypass\(22) & ( \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a13\ & ( (!\b2v_inst4|Mux16~7_combout\ & ((!\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a13\))) # (\b2v_inst4|Mux16~7_combout\ & 
-- (!\b2v_inst4|regs_rtl_1_bypass\(22))) ) ) ) # ( !\b2v_inst4|regs_rtl_0_bypass\(22) & ( \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a13\ & ( !\b2v_inst4|Mux0~10_combout\ $ (((!\b2v_inst4|Mux16~7_combout\ & 
-- ((\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a13\))) # (\b2v_inst4|Mux16~7_combout\ & (\b2v_inst4|regs_rtl_1_bypass\(22))))) ) ) ) # ( \b2v_inst4|regs_rtl_0_bypass\(22) & ( !\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a13\ & ( 
-- !\b2v_inst4|Mux0~10_combout\ $ (((!\b2v_inst4|Mux16~7_combout\ & ((!\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a13\))) # (\b2v_inst4|Mux16~7_combout\ & (!\b2v_inst4|regs_rtl_1_bypass\(22))))) ) ) ) # ( !\b2v_inst4|regs_rtl_0_bypass\(22) & ( 
-- !\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a13\ & ( (!\b2v_inst4|Mux16~7_combout\ & ((\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a13\))) # (\b2v_inst4|Mux16~7_combout\ & (\b2v_inst4|regs_rtl_1_bypass\(22))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000111101011010011100001010010111110111001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux16~7_combout\,
	datab => \b2v_inst4|ALT_INV_regs_rtl_1_bypass\(22),
	datac => \b2v_inst4|ALT_INV_Mux0~10_combout\,
	datad => \b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a13\,
	datae => \b2v_inst4|ALT_INV_regs_rtl_0_bypass\(22),
	dataf => \b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a13\,
	combout => \b2v_inst9|LessThan0~2_combout\);

-- Location: MLABCELL_X25_Y2_N21
\b2v_inst9|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst9|LessThan0~1_combout\ = ( \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a12\ & ( \b2v_inst4|regs_rtl_0_bypass\(21) & ( (!\b2v_inst4|Mux16~7_combout\ & ((!\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a12\))) # (\b2v_inst4|Mux16~7_combout\ & 
-- (!\b2v_inst4|regs_rtl_1_bypass\(21))) ) ) ) # ( !\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a12\ & ( \b2v_inst4|regs_rtl_0_bypass\(21) & ( !\b2v_inst4|Mux0~10_combout\ $ (((!\b2v_inst4|Mux16~7_combout\ & 
-- ((!\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a12\))) # (\b2v_inst4|Mux16~7_combout\ & (!\b2v_inst4|regs_rtl_1_bypass\(21))))) ) ) ) # ( \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a12\ & ( !\b2v_inst4|regs_rtl_0_bypass\(21) & ( 
-- !\b2v_inst4|Mux0~10_combout\ $ (((!\b2v_inst4|Mux16~7_combout\ & ((\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a12\))) # (\b2v_inst4|Mux16~7_combout\ & (\b2v_inst4|regs_rtl_1_bypass\(21))))) ) ) ) # ( 
-- !\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a12\ & ( !\b2v_inst4|regs_rtl_0_bypass\(21) & ( (!\b2v_inst4|Mux16~7_combout\ & ((\b2v_inst4|regs_rtl_1|auto_generated|ram_block1a12\))) # (\b2v_inst4|Mux16~7_combout\ & (\b2v_inst4|regs_rtl_1_bypass\(21))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011111001000001101100011011111001001110010011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux16~7_combout\,
	datab => \b2v_inst4|ALT_INV_regs_rtl_1_bypass\(21),
	datac => \b2v_inst4|regs_rtl_1|auto_generated|ALT_INV_ram_block1a12\,
	datad => \b2v_inst4|ALT_INV_Mux0~10_combout\,
	datae => \b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a12\,
	dataf => \b2v_inst4|ALT_INV_regs_rtl_0_bypass\(21),
	combout => \b2v_inst9|LessThan0~1_combout\);

-- Location: MLABCELL_X25_Y2_N12
\b2v_inst9|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst9|LessThan0~3_combout\ = ( !\b2v_inst4|Mux16~8_combout\ & ( \b2v_inst4|Mux16~2_combout\ & ( (!\b2v_inst9|LessThan0~2_combout\ & (!\b2v_inst9|LessThan0~1_combout\ & \b2v_inst4|Mux0~3_combout\)) ) ) ) # ( \b2v_inst4|Mux16~8_combout\ & ( 
-- !\b2v_inst4|Mux16~2_combout\ & ( (\b2v_inst4|Mux0~2_combout\ & (!\b2v_inst9|LessThan0~2_combout\ & (!\b2v_inst9|LessThan0~1_combout\ & \b2v_inst4|Mux0~3_combout\))) ) ) ) # ( !\b2v_inst4|Mux16~8_combout\ & ( !\b2v_inst4|Mux16~2_combout\ & ( 
-- (!\b2v_inst9|LessThan0~2_combout\ & (!\b2v_inst9|LessThan0~1_combout\ & ((\b2v_inst4|Mux0~3_combout\) # (\b2v_inst4|Mux0~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011000000000000000100000000000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux0~2_combout\,
	datab => \b2v_inst9|ALT_INV_LessThan0~2_combout\,
	datac => \b2v_inst9|ALT_INV_LessThan0~1_combout\,
	datad => \b2v_inst4|ALT_INV_Mux0~3_combout\,
	datae => \b2v_inst4|ALT_INV_Mux16~8_combout\,
	dataf => \b2v_inst4|ALT_INV_Mux16~2_combout\,
	combout => \b2v_inst9|LessThan0~3_combout\);

-- Location: MLABCELL_X25_Y2_N6
\b2v_inst9|LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst9|LessThan0~6_combout\ = ( !\b2v_inst9|LessThan0~5_combout\ & ( \b2v_inst9|LessThan0~0_combout\ & ( (!\b2v_inst4|Mux0~6_combout\ & (((!\b2v_inst9|LessThan0~4_combout\ & !\b2v_inst9|LessThan0~3_combout\)) # (\b2v_inst4|Mux16~3_combout\))) # 
-- (\b2v_inst4|Mux0~6_combout\ & (\b2v_inst4|Mux16~3_combout\ & (!\b2v_inst9|LessThan0~4_combout\ & !\b2v_inst9|LessThan0~3_combout\))) ) ) ) # ( !\b2v_inst9|LessThan0~5_combout\ & ( !\b2v_inst9|LessThan0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000010110010001000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux0~6_combout\,
	datab => \b2v_inst4|ALT_INV_Mux16~3_combout\,
	datac => \b2v_inst9|ALT_INV_LessThan0~4_combout\,
	datad => \b2v_inst9|ALT_INV_LessThan0~3_combout\,
	datae => \b2v_inst9|ALT_INV_LessThan0~5_combout\,
	dataf => \b2v_inst9|ALT_INV_LessThan0~0_combout\,
	combout => \b2v_inst9|LessThan0~6_combout\);

-- Location: LABCELL_X29_Y4_N45
\b2v_inst4|z[14]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[14]~3_combout\ = ( \b2v_inst4|z[14]~1_combout\ & ( \b2v_inst9|LessThan0~6_combout\ & ( (!\b2v_inst9|LessThan0~15_combout\ & (!\b2v_inst4|z[14]~2_combout\ & \b2v_inst9|LessThan0~13_combout\)) ) ) ) # ( !\b2v_inst4|z[14]~1_combout\ & ( 
-- \b2v_inst9|LessThan0~6_combout\ & ( !\b2v_inst4|z[14]~2_combout\ ) ) ) # ( \b2v_inst4|z[14]~1_combout\ & ( !\b2v_inst9|LessThan0~6_combout\ & ( (!\b2v_inst9|LessThan0~15_combout\ & (!\b2v_inst4|z[14]~2_combout\ & (\b2v_inst9|LessThan0~13_combout\ & 
-- !\b2v_inst9|LessThan0~11_combout\))) ) ) ) # ( !\b2v_inst4|z[14]~1_combout\ & ( !\b2v_inst9|LessThan0~6_combout\ & ( !\b2v_inst4|z[14]~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000010000000000011001100110011000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst9|ALT_INV_LessThan0~15_combout\,
	datab => \b2v_inst4|ALT_INV_z[14]~2_combout\,
	datac => \b2v_inst9|ALT_INV_LessThan0~13_combout\,
	datad => \b2v_inst9|ALT_INV_LessThan0~11_combout\,
	datae => \b2v_inst4|ALT_INV_z[14]~1_combout\,
	dataf => \b2v_inst9|ALT_INV_LessThan0~6_combout\,
	combout => \b2v_inst4|z[14]~3_combout\);

-- Location: LABCELL_X29_Y1_N36
\b2v_inst4|z[11]~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[11]~80_combout\ = (!\b2v_inst7|ALU_in2[11]~11_combout\ & !\b2v_inst7|ALU_in1[11]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst7|ALT_INV_ALU_in2[11]~11_combout\,
	datad => \b2v_inst7|ALT_INV_ALU_in1[11]~11_combout\,
	combout => \b2v_inst4|z[11]~80_combout\);

-- Location: LABCELL_X29_Y1_N33
\b2v_inst4|z[11]~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[11]~81_combout\ = ( !\b2v_inst4|z[11]~80_combout\ & ( \b2v_inst4|z[14]~7_combout\ & ( (!\b2v_inst4|z[14]~47_combout\ & (\b2v_inst4|z[10]~53_combout\ & (!\b2v_inst4|z[14]~48_combout\ & \b2v_inst4|z[14]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[14]~47_combout\,
	datab => \b2v_inst4|ALT_INV_z[10]~53_combout\,
	datac => \b2v_inst4|ALT_INV_z[14]~48_combout\,
	datad => \b2v_inst4|ALT_INV_z[14]~3_combout\,
	datae => \b2v_inst4|ALT_INV_z[11]~80_combout\,
	dataf => \b2v_inst4|ALT_INV_z[14]~7_combout\,
	combout => \b2v_inst4|z[11]~81_combout\);

-- Location: LABCELL_X29_Y1_N48
\b2v_inst4|z[11]~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[11]~77_combout\ = ( \b2v_inst4|z[14]~50_combout\ & ( \b2v_inst3|IR_Op[11]~11_combout\ & ( (!\b2v_inst4|z[14]~9_combout\ & (!\b2v_inst4|z[14]~2_combout\ & (!\b2v_inst4|z[14]~47_combout\ & !\b2v_inst4|z[14]~48_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[14]~9_combout\,
	datab => \b2v_inst4|ALT_INV_z[14]~2_combout\,
	datac => \b2v_inst4|ALT_INV_z[14]~47_combout\,
	datad => \b2v_inst4|ALT_INV_z[14]~48_combout\,
	datae => \b2v_inst4|ALT_INV_z[14]~50_combout\,
	dataf => \b2v_inst3|ALT_INV_IR_Op[11]~11_combout\,
	combout => \b2v_inst4|z[11]~77_combout\);

-- Location: LABCELL_X29_Y1_N9
\b2v_inst4|z[11]~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[11]~82_combout\ = (\b2v_inst7|ALU_in2[11]~11_combout\ & \b2v_inst7|ALU_in1[11]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst7|ALT_INV_ALU_in2[11]~11_combout\,
	datad => \b2v_inst7|ALT_INV_ALU_in1[11]~11_combout\,
	combout => \b2v_inst4|z[11]~82_combout\);

-- Location: LABCELL_X29_Y1_N51
\b2v_inst4|z[11]~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[11]~83_combout\ = ( \b2v_inst4|z[15]~57_combout\ & ( \b2v_inst4|z[11]~82_combout\ & ( (!\b2v_inst4|z[14]~9_combout\ & (!\b2v_inst4|z[14]~2_combout\ & (!\b2v_inst4|z[14]~48_combout\ & !\b2v_inst4|z[14]~47_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[14]~9_combout\,
	datab => \b2v_inst4|ALT_INV_z[14]~2_combout\,
	datac => \b2v_inst4|ALT_INV_z[14]~48_combout\,
	datad => \b2v_inst4|ALT_INV_z[14]~47_combout\,
	datae => \b2v_inst4|ALT_INV_z[15]~57_combout\,
	dataf => \b2v_inst4|ALT_INV_z[11]~82_combout\,
	combout => \b2v_inst4|z[11]~83_combout\);

-- Location: LABCELL_X30_Y1_N42
\b2v_inst4|z[11]~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[11]~84_combout\ = ( \b2v_inst4|Mux16~15_combout\ & ( \b2v_inst4|z[14]~47_combout\ & ( ((!\b2v_inst4|z[14]~2_combout\ & !\b2v_inst4|z[14]~9_combout\)) # (\b2v_inst4|Mux0~15_combout\) ) ) ) # ( !\b2v_inst4|Mux16~15_combout\ & ( 
-- \b2v_inst4|z[14]~47_combout\ & ( (\b2v_inst4|Mux0~15_combout\ & ((\b2v_inst4|z[14]~9_combout\) # (\b2v_inst4|z[14]~2_combout\))) ) ) ) # ( \b2v_inst4|Mux16~15_combout\ & ( !\b2v_inst4|z[14]~47_combout\ & ( (\b2v_inst4|Mux0~15_combout\ & 
-- ((\b2v_inst4|z[14]~9_combout\) # (\b2v_inst4|z[14]~2_combout\))) ) ) ) # ( !\b2v_inst4|Mux16~15_combout\ & ( !\b2v_inst4|z[14]~47_combout\ & ( (\b2v_inst4|Mux0~15_combout\ & ((\b2v_inst4|z[14]~9_combout\) # (\b2v_inst4|z[14]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100110011000100010011001100010001001100111011101100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[14]~2_combout\,
	datab => \b2v_inst4|ALT_INV_Mux0~15_combout\,
	datad => \b2v_inst4|ALT_INV_z[14]~9_combout\,
	datae => \b2v_inst4|ALT_INV_Mux16~15_combout\,
	dataf => \b2v_inst4|ALT_INV_z[14]~47_combout\,
	combout => \b2v_inst4|z[11]~84_combout\);

-- Location: LABCELL_X29_Y1_N0
\b2v_inst4|z[11]~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[11]~78_combout\ = ( !\b2v_inst4|z[14]~50_combout\ & ( \b2v_inst4|z[14]~48_combout\ & ( (!\b2v_inst4|z[14]~9_combout\ & (!\b2v_inst4|z[14]~2_combout\ & (!\b2v_inst4|z[14]~47_combout\ & 
-- \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[14]~9_combout\,
	datab => \b2v_inst4|ALT_INV_z[14]~2_combout\,
	datac => \b2v_inst4|ALT_INV_z[14]~47_combout\,
	datad => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(11),
	datae => \b2v_inst4|ALT_INV_z[14]~50_combout\,
	dataf => \b2v_inst4|ALT_INV_z[14]~48_combout\,
	combout => \b2v_inst4|z[11]~78_combout\);

-- Location: LABCELL_X29_Y1_N30
\b2v_inst4|z[11]~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[11]~79_combout\ = ( !\b2v_inst4|z[14]~7_combout\ & ( \b2v_inst7|Add0~45_sumout\ & ( (!\b2v_inst4|z[14]~47_combout\ & (\b2v_inst4|z[10]~53_combout\ & (\b2v_inst4|z[14]~3_combout\ & !\b2v_inst4|z[14]~48_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[14]~47_combout\,
	datab => \b2v_inst4|ALT_INV_z[10]~53_combout\,
	datac => \b2v_inst4|ALT_INV_z[14]~3_combout\,
	datad => \b2v_inst4|ALT_INV_z[14]~48_combout\,
	datae => \b2v_inst4|ALT_INV_z[14]~7_combout\,
	dataf => \b2v_inst7|ALT_INV_Add0~45_sumout\,
	combout => \b2v_inst4|z[11]~79_combout\);

-- Location: LABCELL_X29_Y1_N12
\b2v_inst4|z[11]~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|z[11]~85_combout\ = ( \b2v_inst4|z[11]~78_combout\ & ( \b2v_inst4|z[11]~79_combout\ ) ) # ( !\b2v_inst4|z[11]~78_combout\ & ( \b2v_inst4|z[11]~79_combout\ ) ) # ( \b2v_inst4|z[11]~78_combout\ & ( !\b2v_inst4|z[11]~79_combout\ ) ) # ( 
-- !\b2v_inst4|z[11]~78_combout\ & ( !\b2v_inst4|z[11]~79_combout\ & ( (((\b2v_inst4|z[11]~84_combout\) # (\b2v_inst4|z[11]~83_combout\)) # (\b2v_inst4|z[11]~77_combout\)) # (\b2v_inst4|z[11]~81_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_z[11]~81_combout\,
	datab => \b2v_inst4|ALT_INV_z[11]~77_combout\,
	datac => \b2v_inst4|ALT_INV_z[11]~83_combout\,
	datad => \b2v_inst4|ALT_INV_z[11]~84_combout\,
	datae => \b2v_inst4|ALT_INV_z[11]~78_combout\,
	dataf => \b2v_inst4|ALT_INV_z[11]~79_combout\,
	combout => \b2v_inst4|z[11]~85_combout\);

-- Location: FF_X29_Y1_N20
\b2v_inst4|regs_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst4|z[11]~85_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_0_bypass\(13));

-- Location: LABCELL_X29_Y1_N18
\b2v_inst4|Mux0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux0~15_combout\ = ( \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a4\ & ( (!\b2v_inst4|Mux0~1_combout\) # ((!\b2v_inst4|Mux0~0_combout\) # (\b2v_inst4|regs_rtl_0_bypass\(13))) ) ) # ( !\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a4\ & ( 
-- (\b2v_inst4|Mux0~1_combout\ & (\b2v_inst4|Mux0~0_combout\ & \b2v_inst4|regs_rtl_0_bypass\(13))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001111111100111111111111110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst4|ALT_INV_Mux0~1_combout\,
	datac => \b2v_inst4|ALT_INV_Mux0~0_combout\,
	datad => \b2v_inst4|ALT_INV_regs_rtl_0_bypass\(13),
	dataf => \b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	combout => \b2v_inst4|Mux0~15_combout\);

-- Location: LABCELL_X29_Y5_N33
\b2v_inst2|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|Add0~45_sumout\ = SUM(( \b2v_inst2|pc_reg\(11) ) + ( GND ) + ( \b2v_inst2|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|ALT_INV_pc_reg\(11),
	cin => \b2v_inst2|Add0~42\,
	sumout => \b2v_inst2|Add0~45_sumout\);

-- Location: LABCELL_X29_Y1_N6
\b2v_inst2|pc_temp~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|pc_temp~23_combout\ = ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(11) & ( (!\b2v_inst|pc_mux_select\(0) & (((!\b2v_inst|pc_mux_select\(1))))) # (\b2v_inst|pc_mux_select\(0) & ((!\b2v_inst|pc_mux_select\(1) & 
-- (\b2v_inst4|Mux0~15_combout\)) # (\b2v_inst|pc_mux_select\(1) & ((\b2v_inst2|Add0~45_sumout\))))) ) ) # ( !\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(11) & ( (\b2v_inst|pc_mux_select\(0) & ((!\b2v_inst|pc_mux_select\(1) & 
-- (\b2v_inst4|Mux0~15_combout\)) # (\b2v_inst|pc_mux_select\(1) & ((\b2v_inst2|Add0~45_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011000001010000001111110101000000111111010100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux0~15_combout\,
	datab => \b2v_inst2|ALT_INV_Add0~45_sumout\,
	datac => \b2v_inst|ALT_INV_pc_mux_select\(0),
	datad => \b2v_inst|ALT_INV_pc_mux_select\(1),
	dataf => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(11),
	combout => \b2v_inst2|pc_temp~23_combout\);

-- Location: LABCELL_X29_Y1_N39
\b2v_inst2|pc_temp~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|pc_temp~24_combout\ = ( \b2v_inst2|pc_temp~23_combout\ & ( (!\b2v_inst|Selector3~0_combout\) # (\b2v_inst2|pc_reg\(11)) ) ) # ( !\b2v_inst2|pc_temp~23_combout\ & ( (!\b2v_inst|Selector3~0_combout\ & (((\b2v_inst3|IR_Op[11]~11_combout\ & 
-- \b2v_inst2|pc_temp~0_combout\)))) # (\b2v_inst|Selector3~0_combout\ & (\b2v_inst2|pc_reg\(11))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011011000100010001101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_Selector3~0_combout\,
	datab => \b2v_inst2|ALT_INV_pc_reg\(11),
	datac => \b2v_inst3|ALT_INV_IR_Op[11]~11_combout\,
	datad => \b2v_inst2|ALT_INV_pc_temp~0_combout\,
	dataf => \b2v_inst2|ALT_INV_pc_temp~23_combout\,
	combout => \b2v_inst2|pc_temp~24_combout\);

-- Location: LABCELL_X29_Y1_N27
\b2v_inst5|address_a_temp[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|address_a_temp\(11) = ( \b2v_inst2|pc_temp~24_combout\ & ( (!\b2v_inst5|temp_address[9]~2_combout\) # (\b2v_inst5|address_a_temp\(11)) ) ) # ( !\b2v_inst2|pc_temp~24_combout\ & ( (\b2v_inst5|temp_address[9]~2_combout\ & 
-- \b2v_inst5|address_a_temp\(11)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|ALT_INV_temp_address[9]~2_combout\,
	datad => \b2v_inst5|ALT_INV_address_a_temp\(11),
	dataf => \b2v_inst2|ALT_INV_pc_temp~24_combout\,
	combout => \b2v_inst5|address_a_temp\(11));

-- Location: LABCELL_X30_Y4_N48
\b2v_inst2|pc_temp~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|pc_temp~21_combout\ = ( \b2v_inst4|Mux0~16_combout\ & ( (!\b2v_inst|pc_mux_select\(1) & (((\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(10)) # (\b2v_inst|pc_mux_select\(0))))) # (\b2v_inst|pc_mux_select\(1) & 
-- (\b2v_inst2|Add0~41_sumout\ & (\b2v_inst|pc_mux_select\(0)))) ) ) # ( !\b2v_inst4|Mux0~16_combout\ & ( (!\b2v_inst|pc_mux_select\(1) & (((!\b2v_inst|pc_mux_select\(0) & \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(10))))) # 
-- (\b2v_inst|pc_mux_select\(1) & (\b2v_inst2|Add0~41_sumout\ & (\b2v_inst|pc_mux_select\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000001000000011100000100001101110011010000110111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|ALT_INV_Add0~41_sumout\,
	datab => \b2v_inst|ALT_INV_pc_mux_select\(1),
	datac => \b2v_inst|ALT_INV_pc_mux_select\(0),
	datad => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(10),
	dataf => \b2v_inst4|ALT_INV_Mux0~16_combout\,
	combout => \b2v_inst2|pc_temp~21_combout\);

-- Location: LABCELL_X30_Y4_N57
\b2v_inst2|pc_temp~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|pc_temp~22_combout\ = ( \b2v_inst2|pc_temp~21_combout\ & ( (!\b2v_inst|Selector3~0_combout\) # (\b2v_inst2|pc_reg\(10)) ) ) # ( !\b2v_inst2|pc_temp~21_combout\ & ( (!\b2v_inst|Selector3~0_combout\ & (\b2v_inst2|pc_temp~0_combout\ & 
-- (\b2v_inst3|IR_Op[10]~13_combout\))) # (\b2v_inst|Selector3~0_combout\ & (((\b2v_inst2|pc_reg\(10))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001111000100010000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|ALT_INV_pc_temp~0_combout\,
	datab => \b2v_inst3|ALT_INV_IR_Op[10]~13_combout\,
	datac => \b2v_inst2|ALT_INV_pc_reg\(10),
	datad => \b2v_inst|ALT_INV_Selector3~0_combout\,
	dataf => \b2v_inst2|ALT_INV_pc_temp~21_combout\,
	combout => \b2v_inst2|pc_temp~22_combout\);

-- Location: LABCELL_X30_Y4_N21
\b2v_inst5|address_a_temp[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|address_a_temp\(10) = ( \b2v_inst2|pc_temp~22_combout\ & ( (!\b2v_inst5|temp_address[9]~2_combout\) # (\b2v_inst5|address_a_temp\(10)) ) ) # ( !\b2v_inst2|pc_temp~22_combout\ & ( (\b2v_inst5|temp_address[9]~2_combout\ & 
-- \b2v_inst5|address_a_temp\(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|ALT_INV_temp_address[9]~2_combout\,
	datad => \b2v_inst5|ALT_INV_address_a_temp\(10),
	dataf => \b2v_inst2|ALT_INV_pc_temp~22_combout\,
	combout => \b2v_inst5|address_a_temp\(10));

-- Location: LABCELL_X30_Y4_N18
\b2v_inst2|pc_temp~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|pc_temp~19_combout\ = ( \b2v_inst4|Mux0~14_combout\ & ( (!\b2v_inst|pc_mux_select\(1) & (((\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(9)) # (\b2v_inst|pc_mux_select\(0))))) # (\b2v_inst|pc_mux_select\(1) & 
-- (\b2v_inst2|Add0~37_sumout\ & (\b2v_inst|pc_mux_select\(0)))) ) ) # ( !\b2v_inst4|Mux0~14_combout\ & ( (!\b2v_inst|pc_mux_select\(1) & (((!\b2v_inst|pc_mux_select\(0) & \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(9))))) # 
-- (\b2v_inst|pc_mux_select\(1) & (\b2v_inst2|Add0~37_sumout\ & (\b2v_inst|pc_mux_select\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000001000000011100000100001101110011010000110111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|ALT_INV_Add0~37_sumout\,
	datab => \b2v_inst|ALT_INV_pc_mux_select\(1),
	datac => \b2v_inst|ALT_INV_pc_mux_select\(0),
	datad => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(9),
	dataf => \b2v_inst4|ALT_INV_Mux0~14_combout\,
	combout => \b2v_inst2|pc_temp~19_combout\);

-- Location: LABCELL_X30_Y4_N36
\b2v_inst2|pc_temp~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|pc_temp~20_combout\ = ( \b2v_inst3|IR_Op[9]~12_combout\ & ( \b2v_inst2|pc_temp~19_combout\ & ( (!\b2v_inst|Selector3~0_combout\) # (\b2v_inst2|pc_reg\(9)) ) ) ) # ( !\b2v_inst3|IR_Op[9]~12_combout\ & ( \b2v_inst2|pc_temp~19_combout\ & ( 
-- (!\b2v_inst|Selector3~0_combout\) # (\b2v_inst2|pc_reg\(9)) ) ) ) # ( \b2v_inst3|IR_Op[9]~12_combout\ & ( !\b2v_inst2|pc_temp~19_combout\ & ( (!\b2v_inst|Selector3~0_combout\ & ((\b2v_inst2|pc_temp~0_combout\))) # (\b2v_inst|Selector3~0_combout\ & 
-- (\b2v_inst2|pc_reg\(9))) ) ) ) # ( !\b2v_inst3|IR_Op[9]~12_combout\ & ( !\b2v_inst2|pc_temp~19_combout\ & ( (\b2v_inst|Selector3~0_combout\ & \b2v_inst2|pc_reg\(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000110110001101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_Selector3~0_combout\,
	datab => \b2v_inst2|ALT_INV_pc_reg\(9),
	datac => \b2v_inst2|ALT_INV_pc_temp~0_combout\,
	datae => \b2v_inst3|ALT_INV_IR_Op[9]~12_combout\,
	dataf => \b2v_inst2|ALT_INV_pc_temp~19_combout\,
	combout => \b2v_inst2|pc_temp~20_combout\);

-- Location: LABCELL_X30_Y4_N54
\b2v_inst5|address_a_temp[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|address_a_temp\(9) = ( \b2v_inst2|pc_temp~20_combout\ & ( (!\b2v_inst5|temp_address[9]~2_combout\) # (\b2v_inst5|address_a_temp\(9)) ) ) # ( !\b2v_inst2|pc_temp~20_combout\ & ( (\b2v_inst5|address_a_temp\(9) & 
-- \b2v_inst5|temp_address[9]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|ALT_INV_address_a_temp\(9),
	datad => \b2v_inst5|ALT_INV_temp_address[9]~2_combout\,
	dataf => \b2v_inst2|ALT_INV_pc_temp~20_combout\,
	combout => \b2v_inst5|address_a_temp\(9));

-- Location: LABCELL_X29_Y3_N24
\b2v_inst3|IR_Op[8]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst3|IR_Op[8]~14_combout\ = ( \b2v_inst|Selector4~0_combout\ & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(8) & ( (\b2v_inst5|temp_address[9]~1_combout\) # (\b2v_inst|Selector5~1_combout\) ) ) ) # ( 
-- !\b2v_inst|Selector4~0_combout\ & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(8) & ( ((\b2v_inst|Selector1~1_combout\ & (\b2v_inst5|temp_address[9]~1_combout\ & \b2v_inst|Mux5~0_combout\))) # (\b2v_inst|Selector5~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001101110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_Selector1~1_combout\,
	datab => \b2v_inst|ALT_INV_Selector5~1_combout\,
	datac => \b2v_inst5|ALT_INV_temp_address[9]~1_combout\,
	datad => \b2v_inst|ALT_INV_Mux5~0_combout\,
	datae => \b2v_inst|ALT_INV_Selector4~0_combout\,
	dataf => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	combout => \b2v_inst3|IR_Op[8]~14_combout\);

-- Location: LABCELL_X29_Y3_N6
\b2v_inst2|pc_temp~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|pc_temp~17_combout\ = ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(8) & ( (!\b2v_inst|pc_mux_select\(0) & (((!\b2v_inst|pc_mux_select\(1))))) # (\b2v_inst|pc_mux_select\(0) & ((!\b2v_inst|pc_mux_select\(1) & 
-- (\b2v_inst4|Mux0~18_combout\)) # (\b2v_inst|pc_mux_select\(1) & ((\b2v_inst2|Add0~33_sumout\))))) ) ) # ( !\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(8) & ( (\b2v_inst|pc_mux_select\(0) & ((!\b2v_inst|pc_mux_select\(1) & 
-- (\b2v_inst4|Mux0~18_combout\)) # (\b2v_inst|pc_mux_select\(1) & ((\b2v_inst2|Add0~33_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000100000001010110110000101101011011000010110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_pc_mux_select\(0),
	datab => \b2v_inst4|ALT_INV_Mux0~18_combout\,
	datac => \b2v_inst|ALT_INV_pc_mux_select\(1),
	datad => \b2v_inst2|ALT_INV_Add0~33_sumout\,
	dataf => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(8),
	combout => \b2v_inst2|pc_temp~17_combout\);

-- Location: LABCELL_X29_Y3_N21
\b2v_inst2|pc_temp~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|pc_temp~18_combout\ = ( \b2v_inst2|pc_temp~0_combout\ & ( (!\b2v_inst|Selector3~0_combout\ & (((\b2v_inst2|pc_temp~17_combout\)) # (\b2v_inst3|IR_Op[8]~14_combout\))) # (\b2v_inst|Selector3~0_combout\ & (((\b2v_inst2|pc_reg\(8))))) ) ) # ( 
-- !\b2v_inst2|pc_temp~0_combout\ & ( (!\b2v_inst|Selector3~0_combout\ & (\b2v_inst2|pc_temp~17_combout\)) # (\b2v_inst|Selector3~0_combout\ & ((\b2v_inst2|pc_reg\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101110000011111110111000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|ALT_INV_IR_Op[8]~14_combout\,
	datab => \b2v_inst2|ALT_INV_pc_temp~17_combout\,
	datac => \b2v_inst|ALT_INV_Selector3~0_combout\,
	datad => \b2v_inst2|ALT_INV_pc_reg\(8),
	dataf => \b2v_inst2|ALT_INV_pc_temp~0_combout\,
	combout => \b2v_inst2|pc_temp~18_combout\);

-- Location: LABCELL_X29_Y3_N18
\b2v_inst5|address_a_temp[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|address_a_temp\(8) = ( \b2v_inst5|address_a_temp\(8) & ( (\b2v_inst5|temp_address[9]~2_combout\) # (\b2v_inst2|pc_temp~18_combout\) ) ) # ( !\b2v_inst5|address_a_temp\(8) & ( (\b2v_inst2|pc_temp~18_combout\ & 
-- !\b2v_inst5|temp_address[9]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|ALT_INV_pc_temp~18_combout\,
	datad => \b2v_inst5|ALT_INV_temp_address[9]~2_combout\,
	dataf => \b2v_inst5|ALT_INV_address_a_temp\(8),
	combout => \b2v_inst5|address_a_temp\(8));

-- Location: FF_X30_Y5_N35
\b2v_inst3|temp_IR[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(12),
	sload => VCC,
	ena => \b2v_inst|ALT_INV_state.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|temp_IR\(12));

-- Location: LABCELL_X30_Y5_N57
\b2v_inst|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector4~0_combout\ = ( \b2v_inst3|temp_IR\(10) & ( !\b2v_inst3|temp_IR\(8) & ( (!\b2v_inst3|temp_IR\(9) & (\b2v_inst3|temp_IR\(11) & (!\b2v_inst3|temp_IR\(13) & !\b2v_inst3|temp_IR\(12)))) ) ) ) # ( !\b2v_inst3|temp_IR\(10) & ( 
-- !\b2v_inst3|temp_IR\(8) & ( (!\b2v_inst3|temp_IR\(9) & (\b2v_inst3|temp_IR\(11) & (\b2v_inst3|temp_IR\(13) & \b2v_inst3|temp_IR\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|ALT_INV_temp_IR\(9),
	datab => \b2v_inst3|ALT_INV_temp_IR\(11),
	datac => \b2v_inst3|ALT_INV_temp_IR\(13),
	datad => \b2v_inst3|ALT_INV_temp_IR\(12),
	datae => \b2v_inst3|ALT_INV_temp_IR\(10),
	dataf => \b2v_inst3|ALT_INV_temp_IR\(8),
	combout => \b2v_inst|Selector4~0_combout\);

-- Location: LABCELL_X29_Y4_N0
\b2v_inst3|IR_Op[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst3|IR_Op[7]~7_combout\ = ( \b2v_inst|Selector4~0_combout\ & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(7) & ( (\b2v_inst|Selector5~1_combout\) # (\b2v_inst5|temp_address[9]~1_combout\) ) ) ) # ( 
-- !\b2v_inst|Selector4~0_combout\ & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(7) & ( ((\b2v_inst|Selector1~1_combout\ & (\b2v_inst5|temp_address[9]~1_combout\ & \b2v_inst|Mux5~0_combout\))) # (\b2v_inst|Selector5~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_Selector1~1_combout\,
	datab => \b2v_inst5|ALT_INV_temp_address[9]~1_combout\,
	datac => \b2v_inst|ALT_INV_Selector5~1_combout\,
	datad => \b2v_inst|ALT_INV_Mux5~0_combout\,
	datae => \b2v_inst|ALT_INV_Selector4~0_combout\,
	dataf => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \b2v_inst3|IR_Op[7]~7_combout\);

-- Location: LABCELL_X29_Y4_N30
\b2v_inst2|pc_temp~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|pc_temp~15_combout\ = ( \b2v_inst4|Mux0~9_combout\ & ( (!\b2v_inst|pc_mux_select\(1) & (((\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(7)) # (\b2v_inst|pc_mux_select\(0))))) # (\b2v_inst|pc_mux_select\(1) & 
-- (\b2v_inst2|Add0~29_sumout\ & (\b2v_inst|pc_mux_select\(0)))) ) ) # ( !\b2v_inst4|Mux0~9_combout\ & ( (!\b2v_inst|pc_mux_select\(1) & (((!\b2v_inst|pc_mux_select\(0) & \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(7))))) # 
-- (\b2v_inst|pc_mux_select\(1) & (\b2v_inst2|Add0~29_sumout\ & (\b2v_inst|pc_mux_select\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100001000000011010000100001011101010110000101110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_pc_mux_select\(1),
	datab => \b2v_inst2|ALT_INV_Add0~29_sumout\,
	datac => \b2v_inst|ALT_INV_pc_mux_select\(0),
	datad => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(7),
	dataf => \b2v_inst4|ALT_INV_Mux0~9_combout\,
	combout => \b2v_inst2|pc_temp~15_combout\);

-- Location: LABCELL_X29_Y4_N9
\b2v_inst2|pc_temp~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|pc_temp~16_combout\ = ( \b2v_inst2|pc_temp~15_combout\ & ( (!\b2v_inst|Selector3~0_combout\) # (\b2v_inst2|pc_reg\(7)) ) ) # ( !\b2v_inst2|pc_temp~15_combout\ & ( (!\b2v_inst|Selector3~0_combout\ & (\b2v_inst3|IR_Op[7]~7_combout\ & 
-- (\b2v_inst2|pc_temp~0_combout\))) # (\b2v_inst|Selector3~0_combout\ & (((\b2v_inst2|pc_reg\(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_Selector3~0_combout\,
	datab => \b2v_inst3|ALT_INV_IR_Op[7]~7_combout\,
	datac => \b2v_inst2|ALT_INV_pc_temp~0_combout\,
	datad => \b2v_inst2|ALT_INV_pc_reg\(7),
	dataf => \b2v_inst2|ALT_INV_pc_temp~15_combout\,
	combout => \b2v_inst2|pc_temp~16_combout\);

-- Location: LABCELL_X29_Y4_N27
\b2v_inst5|address_a_temp[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|address_a_temp\(7) = ( \b2v_inst5|temp_address[9]~2_combout\ & ( \b2v_inst5|address_a_temp\(7) ) ) # ( !\b2v_inst5|temp_address[9]~2_combout\ & ( \b2v_inst2|pc_temp~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ALT_INV_address_a_temp\(7),
	datac => \b2v_inst2|ALT_INV_pc_temp~16_combout\,
	dataf => \b2v_inst5|ALT_INV_temp_address[9]~2_combout\,
	combout => \b2v_inst5|address_a_temp\(7));

-- Location: FF_X30_Y3_N25
\b2v_inst3|temp_IR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(5),
	sload => VCC,
	ena => \b2v_inst|ALT_INV_state.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|temp_IR\(5));

-- Location: FF_X30_Y2_N35
\b2v_inst4|regs_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst3|temp_IR\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_0_bypass\(3));

-- Location: FF_X30_Y2_N47
\b2v_inst4|regs_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst|Selector5~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_0_bypass\(0));

-- Location: FF_X30_Y2_N26
\b2v_inst4|regs_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst3|temp_IR[4]~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_0_bypass\(1));

-- Location: FF_X29_Y2_N7
\b2v_inst4|regs_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(0),
	sload => VCC,
	ena => \b2v_inst|ALT_INV_state.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_0_bypass\(2));

-- Location: FF_X29_Y2_N10
\b2v_inst4|regs_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(1),
	sload => VCC,
	ena => \b2v_inst|ALT_INV_state.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_0_bypass\(4));

-- Location: LABCELL_X30_Y2_N18
\b2v_inst4|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux0~0_combout\ = ( \b2v_inst4|regs_rtl_0_bypass\(4) & ( (\b2v_inst4|regs_rtl_0_bypass\(3) & (\b2v_inst4|regs_rtl_0_bypass\(0) & (!\b2v_inst4|regs_rtl_0_bypass\(1) $ (\b2v_inst4|regs_rtl_0_bypass\(2))))) ) ) # ( 
-- !\b2v_inst4|regs_rtl_0_bypass\(4) & ( (!\b2v_inst4|regs_rtl_0_bypass\(3) & (\b2v_inst4|regs_rtl_0_bypass\(0) & (!\b2v_inst4|regs_rtl_0_bypass\(1) $ (\b2v_inst4|regs_rtl_0_bypass\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000010001000000000001000010000000000010001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_regs_rtl_0_bypass\(3),
	datab => \b2v_inst4|ALT_INV_regs_rtl_0_bypass\(0),
	datac => \b2v_inst4|ALT_INV_regs_rtl_0_bypass\(1),
	datad => \b2v_inst4|ALT_INV_regs_rtl_0_bypass\(2),
	dataf => \b2v_inst4|ALT_INV_regs_rtl_0_bypass\(4),
	combout => \b2v_inst4|Mux0~0_combout\);

-- Location: FF_X28_Y4_N11
\b2v_inst4|regs_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst4|z[6]~43_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_0_bypass\(18));

-- Location: LABCELL_X30_Y3_N3
\b2v_inst4|Mux0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux0~8_combout\ = ( \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a9\ & ( (!\b2v_inst4|Mux0~0_combout\) # ((!\b2v_inst4|Mux0~1_combout\) # (\b2v_inst4|regs_rtl_0_bypass\(18))) ) ) # ( !\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a9\ & ( 
-- (\b2v_inst4|Mux0~0_combout\ & (\b2v_inst4|Mux0~1_combout\ & \b2v_inst4|regs_rtl_0_bypass\(18))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000111101110111111111110111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux0~0_combout\,
	datab => \b2v_inst4|ALT_INV_Mux0~1_combout\,
	datad => \b2v_inst4|ALT_INV_regs_rtl_0_bypass\(18),
	dataf => \b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a9\,
	combout => \b2v_inst4|Mux0~8_combout\);

-- Location: LABCELL_X30_Y3_N48
\b2v_inst2|pc_temp~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|pc_temp~13_combout\ = ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(6) & ( (!\b2v_inst|pc_mux_select\(1) & (((!\b2v_inst|pc_mux_select\(0)) # (\b2v_inst4|Mux0~8_combout\)))) # (\b2v_inst|pc_mux_select\(1) & 
-- (\b2v_inst2|Add0~25_sumout\ & (\b2v_inst|pc_mux_select\(0)))) ) ) # ( !\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(6) & ( (\b2v_inst|pc_mux_select\(0) & ((!\b2v_inst|pc_mux_select\(1) & ((\b2v_inst4|Mux0~8_combout\))) # 
-- (\b2v_inst|pc_mux_select\(1) & (\b2v_inst2|Add0~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011000000010000101110100001101010111010000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_pc_mux_select\(1),
	datab => \b2v_inst2|ALT_INV_Add0~25_sumout\,
	datac => \b2v_inst|ALT_INV_pc_mux_select\(0),
	datad => \b2v_inst4|ALT_INV_Mux0~8_combout\,
	dataf => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(6),
	combout => \b2v_inst2|pc_temp~13_combout\);

-- Location: LABCELL_X30_Y3_N42
\b2v_inst2|pc_temp~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|pc_temp~14_combout\ = ( \b2v_inst3|IR_Op[6]~6_combout\ & ( (!\b2v_inst|Selector3~0_combout\ & (((\b2v_inst2|pc_temp~13_combout\)) # (\b2v_inst2|pc_temp~0_combout\))) # (\b2v_inst|Selector3~0_combout\ & (((\b2v_inst2|pc_reg\(6))))) ) ) # ( 
-- !\b2v_inst3|IR_Op[6]~6_combout\ & ( (!\b2v_inst|Selector3~0_combout\ & (\b2v_inst2|pc_temp~13_combout\)) # (\b2v_inst|Selector3~0_combout\ & ((\b2v_inst2|pc_reg\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100101010011111110010101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_Selector3~0_combout\,
	datab => \b2v_inst2|ALT_INV_pc_temp~0_combout\,
	datac => \b2v_inst2|ALT_INV_pc_temp~13_combout\,
	datad => \b2v_inst2|ALT_INV_pc_reg\(6),
	dataf => \b2v_inst3|ALT_INV_IR_Op[6]~6_combout\,
	combout => \b2v_inst2|pc_temp~14_combout\);

-- Location: LABCELL_X30_Y3_N45
\b2v_inst5|address_a_temp[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|address_a_temp\(6) = ( \b2v_inst2|pc_temp~14_combout\ & ( (!\b2v_inst5|temp_address[9]~2_combout\) # (\b2v_inst5|address_a_temp\(6)) ) ) # ( !\b2v_inst2|pc_temp~14_combout\ & ( (\b2v_inst5|address_a_temp\(6) & 
-- \b2v_inst5|temp_address[9]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|ALT_INV_address_a_temp\(6),
	datad => \b2v_inst5|ALT_INV_temp_address[9]~2_combout\,
	dataf => \b2v_inst2|ALT_INV_pc_temp~14_combout\,
	combout => \b2v_inst5|address_a_temp\(6));

-- Location: FF_X30_Y5_N17
\b2v_inst3|temp_IR[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(11),
	sload => VCC,
	ena => \b2v_inst|ALT_INV_state.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|temp_IR\(11));

-- Location: LABCELL_X30_Y5_N30
\b2v_inst|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~0_combout\ = ( \b2v_inst3|temp_IR\(12) & ( (\b2v_inst3|temp_IR\(11) & (!\b2v_inst3|temp_IR\(8) & !\b2v_inst3|temp_IR\(9))) ) ) # ( !\b2v_inst3|temp_IR\(12) & ( (!\b2v_inst3|temp_IR\(11) & ((\b2v_inst3|temp_IR\(9)))) # 
-- (\b2v_inst3|temp_IR\(11) & (!\b2v_inst3|temp_IR\(8) & !\b2v_inst3|temp_IR\(9))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011001100001100001100110000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst3|ALT_INV_temp_IR\(11),
	datac => \b2v_inst3|ALT_INV_temp_IR\(8),
	datad => \b2v_inst3|ALT_INV_temp_IR\(9),
	dataf => \b2v_inst3|ALT_INV_temp_IR\(12),
	combout => \b2v_inst|Mux5~0_combout\);

-- Location: LABCELL_X29_Y3_N27
\b2v_inst3|IR_Op[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst3|IR_Op[0]~0_combout\ = ( \b2v_inst|Selector4~0_combout\ & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(0) & ( (\b2v_inst5|temp_address[9]~1_combout\) # (\b2v_inst|Selector5~1_combout\) ) ) ) # ( 
-- !\b2v_inst|Selector4~0_combout\ & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(0) & ( ((\b2v_inst|Selector1~1_combout\ & (\b2v_inst|Mux5~0_combout\ & \b2v_inst5|temp_address[9]~1_combout\))) # (\b2v_inst|Selector5~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001101110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_Selector1~1_combout\,
	datab => \b2v_inst|ALT_INV_Selector5~1_combout\,
	datac => \b2v_inst|ALT_INV_Mux5~0_combout\,
	datad => \b2v_inst5|ALT_INV_temp_address[9]~1_combout\,
	datae => \b2v_inst|ALT_INV_Selector4~0_combout\,
	dataf => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \b2v_inst3|IR_Op[0]~0_combout\);

-- Location: LABCELL_X29_Y5_N0
\b2v_inst2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|Add0~1_sumout\ = SUM(( \b2v_inst2|pc_reg\(0) ) + ( VCC ) + ( !VCC ))
-- \b2v_inst2|Add0~2\ = CARRY(( \b2v_inst2|pc_reg\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|ALT_INV_pc_reg\(0),
	cin => GND,
	sumout => \b2v_inst2|Add0~1_sumout\,
	cout => \b2v_inst2|Add0~2\);

-- Location: LABCELL_X29_Y2_N18
\b2v_inst2|pc_temp~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|pc_temp~1_combout\ = ( \b2v_inst4|Mux0~2_combout\ & ( (!\b2v_inst|pc_mux_select\(1) & (((\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(0))) # (\b2v_inst|pc_mux_select\(0)))) # (\b2v_inst|pc_mux_select\(1) & 
-- (\b2v_inst|pc_mux_select\(0) & ((\b2v_inst2|Add0~1_sumout\)))) ) ) # ( !\b2v_inst4|Mux0~2_combout\ & ( (!\b2v_inst|pc_mux_select\(1) & (!\b2v_inst|pc_mux_select\(0) & (\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(0)))) # 
-- (\b2v_inst|pc_mux_select\(1) & (\b2v_inst|pc_mux_select\(0) & ((\b2v_inst2|Add0~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001000010000001100100101010001110110010101000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_pc_mux_select\(1),
	datab => \b2v_inst|ALT_INV_pc_mux_select\(0),
	datac => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	datad => \b2v_inst2|ALT_INV_Add0~1_sumout\,
	dataf => \b2v_inst4|ALT_INV_Mux0~2_combout\,
	combout => \b2v_inst2|pc_temp~1_combout\);

-- Location: LABCELL_X29_Y2_N48
\b2v_inst2|pc_temp~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|pc_temp~2_combout\ = ( \b2v_inst2|pc_temp~1_combout\ & ( (!\b2v_inst|Selector3~0_combout\) # (\b2v_inst2|pc_reg\(0)) ) ) # ( !\b2v_inst2|pc_temp~1_combout\ & ( (!\b2v_inst|Selector3~0_combout\ & (\b2v_inst3|IR_Op[0]~0_combout\ & 
-- ((\b2v_inst2|pc_temp~0_combout\)))) # (\b2v_inst|Selector3~0_combout\ & (((\b2v_inst2|pc_reg\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_Selector3~0_combout\,
	datab => \b2v_inst3|ALT_INV_IR_Op[0]~0_combout\,
	datac => \b2v_inst2|ALT_INV_pc_reg\(0),
	datad => \b2v_inst2|ALT_INV_pc_temp~0_combout\,
	dataf => \b2v_inst2|ALT_INV_pc_temp~1_combout\,
	combout => \b2v_inst2|pc_temp~2_combout\);

-- Location: FF_X29_Y2_N2
\b2v_inst2|pc_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst2|pc_temp~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|pc_reg\(0));

-- Location: LABCELL_X29_Y5_N3
\b2v_inst2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|Add0~5_sumout\ = SUM(( \b2v_inst2|pc_reg\(1) ) + ( GND ) + ( \b2v_inst2|Add0~2\ ))
-- \b2v_inst2|Add0~6\ = CARRY(( \b2v_inst2|pc_reg\(1) ) + ( GND ) + ( \b2v_inst2|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst2|ALT_INV_pc_reg\(1),
	cin => \b2v_inst2|Add0~2\,
	sumout => \b2v_inst2|Add0~5_sumout\,
	cout => \b2v_inst2|Add0~6\);

-- Location: LABCELL_X29_Y5_N6
\b2v_inst2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|Add0~9_sumout\ = SUM(( \b2v_inst2|pc_reg\(2) ) + ( GND ) + ( \b2v_inst2|Add0~6\ ))
-- \b2v_inst2|Add0~10\ = CARRY(( \b2v_inst2|pc_reg\(2) ) + ( GND ) + ( \b2v_inst2|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|ALT_INV_pc_reg\(2),
	cin => \b2v_inst2|Add0~6\,
	sumout => \b2v_inst2|Add0~9_sumout\,
	cout => \b2v_inst2|Add0~10\);

-- Location: LABCELL_X29_Y5_N9
\b2v_inst2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|Add0~13_sumout\ = SUM(( \b2v_inst2|pc_reg\(3) ) + ( GND ) + ( \b2v_inst2|Add0~10\ ))
-- \b2v_inst2|Add0~14\ = CARRY(( \b2v_inst2|pc_reg\(3) ) + ( GND ) + ( \b2v_inst2|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|ALT_INV_pc_reg\(3),
	cin => \b2v_inst2|Add0~10\,
	sumout => \b2v_inst2|Add0~13_sumout\,
	cout => \b2v_inst2|Add0~14\);

-- Location: LABCELL_X29_Y5_N12
\b2v_inst2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|Add0~17_sumout\ = SUM(( \b2v_inst2|pc_reg\(4) ) + ( GND ) + ( \b2v_inst2|Add0~14\ ))
-- \b2v_inst2|Add0~18\ = CARRY(( \b2v_inst2|pc_reg\(4) ) + ( GND ) + ( \b2v_inst2|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|ALT_INV_pc_reg\(4),
	cin => \b2v_inst2|Add0~14\,
	sumout => \b2v_inst2|Add0~17_sumout\,
	cout => \b2v_inst2|Add0~18\);

-- Location: LABCELL_X30_Y3_N30
\b2v_inst2|pc_temp~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|pc_temp~11_combout\ = ( \b2v_inst4|Mux0~7_combout\ & ( (!\b2v_inst|pc_mux_select\(1) & (((\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(5)) # (\b2v_inst|pc_mux_select\(0))))) # (\b2v_inst|pc_mux_select\(1) & 
-- (\b2v_inst2|Add0~21_sumout\ & (\b2v_inst|pc_mux_select\(0)))) ) ) # ( !\b2v_inst4|Mux0~7_combout\ & ( (!\b2v_inst|pc_mux_select\(1) & (((!\b2v_inst|pc_mux_select\(0) & \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(5))))) # 
-- (\b2v_inst|pc_mux_select\(1) & (\b2v_inst2|Add0~21_sumout\ & (\b2v_inst|pc_mux_select\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000001000000011100000100001101110011010000110111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|ALT_INV_Add0~21_sumout\,
	datab => \b2v_inst|ALT_INV_pc_mux_select\(1),
	datac => \b2v_inst|ALT_INV_pc_mux_select\(0),
	datad => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(5),
	dataf => \b2v_inst4|ALT_INV_Mux0~7_combout\,
	combout => \b2v_inst2|pc_temp~11_combout\);

-- Location: LABCELL_X30_Y3_N36
\b2v_inst2|pc_temp~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|pc_temp~12_combout\ = ( \b2v_inst2|pc_temp~0_combout\ & ( (!\b2v_inst|Selector3~0_combout\ & (((\b2v_inst3|IR_Op[5]~5_combout\) # (\b2v_inst2|pc_temp~11_combout\)))) # (\b2v_inst|Selector3~0_combout\ & (\b2v_inst2|pc_reg\(5))) ) ) # ( 
-- !\b2v_inst2|pc_temp~0_combout\ & ( (!\b2v_inst|Selector3~0_combout\ & ((\b2v_inst2|pc_temp~11_combout\))) # (\b2v_inst|Selector3~0_combout\ & (\b2v_inst2|pc_reg\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100111111010101010011111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|ALT_INV_pc_reg\(5),
	datab => \b2v_inst2|ALT_INV_pc_temp~11_combout\,
	datac => \b2v_inst3|ALT_INV_IR_Op[5]~5_combout\,
	datad => \b2v_inst|ALT_INV_Selector3~0_combout\,
	dataf => \b2v_inst2|ALT_INV_pc_temp~0_combout\,
	combout => \b2v_inst2|pc_temp~12_combout\);

-- Location: LABCELL_X30_Y3_N39
\b2v_inst5|address_a_temp[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|address_a_temp\(5) = ( \b2v_inst2|pc_temp~12_combout\ & ( (!\b2v_inst5|temp_address[9]~2_combout\) # (\b2v_inst5|address_a_temp\(5)) ) ) # ( !\b2v_inst2|pc_temp~12_combout\ & ( (\b2v_inst5|address_a_temp\(5) & 
-- \b2v_inst5|temp_address[9]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|ALT_INV_address_a_temp\(5),
	datad => \b2v_inst5|ALT_INV_temp_address[9]~2_combout\,
	dataf => \b2v_inst2|ALT_INV_pc_temp~12_combout\,
	combout => \b2v_inst5|address_a_temp\(5));

-- Location: FF_X29_Y4_N44
\b2v_inst3|temp_IR[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(14),
	sload => VCC,
	ena => \b2v_inst|ALT_INV_state.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|temp_IR\(14));

-- Location: MLABCELL_X28_Y4_N51
\b2v_inst|Selector5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector5~1_combout\ = ( \b2v_inst|state.T1~q\ & ( (!\b2v_inst3|temp_IR\(15) & \b2v_inst3|temp_IR\(14)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst3|ALT_INV_temp_IR\(15),
	datac => \b2v_inst3|ALT_INV_temp_IR\(14),
	dataf => \b2v_inst|ALT_INV_state.T1~q\,
	combout => \b2v_inst|Selector5~1_combout\);

-- Location: LABCELL_X29_Y4_N12
\b2v_inst3|IR_Op[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst3|IR_Op[4]~4_combout\ = ( \b2v_inst|Selector4~0_combout\ & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(4) & ( (\b2v_inst|Selector5~1_combout\) # (\b2v_inst5|temp_address[9]~1_combout\) ) ) ) # ( 
-- !\b2v_inst|Selector4~0_combout\ & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(4) & ( ((\b2v_inst|Selector1~1_combout\ & (\b2v_inst5|temp_address[9]~1_combout\ & \b2v_inst|Mux5~0_combout\))) # (\b2v_inst|Selector5~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_Selector1~1_combout\,
	datab => \b2v_inst5|ALT_INV_temp_address[9]~1_combout\,
	datac => \b2v_inst|ALT_INV_Selector5~1_combout\,
	datad => \b2v_inst|ALT_INV_Mux5~0_combout\,
	datae => \b2v_inst|ALT_INV_Selector4~0_combout\,
	dataf => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \b2v_inst3|IR_Op[4]~4_combout\);

-- Location: LABCELL_X30_Y3_N27
\b2v_inst2|pc_temp~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|pc_temp~9_combout\ = ( \b2v_inst|pc_mux_select\(0) & ( (!\b2v_inst|pc_mux_select\(1) & ((\b2v_inst4|Mux0~6_combout\))) # (\b2v_inst|pc_mux_select\(1) & (\b2v_inst2|Add0~17_sumout\)) ) ) # ( !\b2v_inst|pc_mux_select\(0) & ( 
-- (!\b2v_inst|pc_mux_select\(1) & \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000111010001110100000000110011000001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|ALT_INV_Add0~17_sumout\,
	datab => \b2v_inst|ALT_INV_pc_mux_select\(1),
	datac => \b2v_inst4|ALT_INV_Mux0~6_combout\,
	datad => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(4),
	datae => \b2v_inst|ALT_INV_pc_mux_select\(0),
	combout => \b2v_inst2|pc_temp~9_combout\);

-- Location: LABCELL_X30_Y3_N54
\b2v_inst2|pc_temp~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|pc_temp~10_combout\ = ( \b2v_inst2|pc_temp~0_combout\ & ( (!\b2v_inst|Selector3~0_combout\ & (((\b2v_inst2|pc_temp~9_combout\) # (\b2v_inst3|IR_Op[4]~4_combout\)))) # (\b2v_inst|Selector3~0_combout\ & (\b2v_inst2|pc_reg\(4))) ) ) # ( 
-- !\b2v_inst2|pc_temp~0_combout\ & ( (!\b2v_inst|Selector3~0_combout\ & ((\b2v_inst2|pc_temp~9_combout\))) # (\b2v_inst|Selector3~0_combout\ & (\b2v_inst2|pc_reg\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110101111101010011010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|ALT_INV_pc_reg\(4),
	datab => \b2v_inst3|ALT_INV_IR_Op[4]~4_combout\,
	datac => \b2v_inst|ALT_INV_Selector3~0_combout\,
	datad => \b2v_inst2|ALT_INV_pc_temp~9_combout\,
	dataf => \b2v_inst2|ALT_INV_pc_temp~0_combout\,
	combout => \b2v_inst2|pc_temp~10_combout\);

-- Location: LABCELL_X30_Y3_N57
\b2v_inst5|address_a_temp[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|address_a_temp\(4) = ( \b2v_inst2|pc_temp~10_combout\ & ( (!\b2v_inst5|temp_address[9]~2_combout\) # (\b2v_inst5|address_a_temp\(4)) ) ) # ( !\b2v_inst2|pc_temp~10_combout\ & ( (\b2v_inst5|address_a_temp\(4) & 
-- \b2v_inst5|temp_address[9]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|ALT_INV_address_a_temp\(4),
	datad => \b2v_inst5|ALT_INV_temp_address[9]~2_combout\,
	dataf => \b2v_inst2|ALT_INV_pc_temp~10_combout\,
	combout => \b2v_inst5|address_a_temp\(4));

-- Location: FF_X30_Y5_N56
\b2v_inst3|temp_IR[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(9),
	sload => VCC,
	ena => \b2v_inst|ALT_INV_state.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|temp_IR\(9));

-- Location: LABCELL_X30_Y5_N42
\b2v_inst|Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux26~0_combout\ = ( !\b2v_inst3|temp_IR\(8) & ( !\b2v_inst3|temp_IR\(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst3|ALT_INV_temp_IR\(10),
	dataf => \b2v_inst3|ALT_INV_temp_IR\(8),
	combout => \b2v_inst|Mux26~0_combout\);

-- Location: LABCELL_X30_Y5_N27
\b2v_inst|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector2~0_combout\ = ( \b2v_inst|state.T2~q\ & ( (!\b2v_inst3|temp_IR\(9) & (\b2v_inst|Mux26~0_combout\ & \b2v_inst3|temp_IR\(14))) ) ) # ( !\b2v_inst|state.T2~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|ALT_INV_temp_IR\(9),
	datab => \b2v_inst|ALT_INV_Mux26~0_combout\,
	datad => \b2v_inst3|ALT_INV_temp_IR\(14),
	dataf => \b2v_inst|ALT_INV_state.T2~q\,
	combout => \b2v_inst|Selector2~0_combout\);

-- Location: LABCELL_X30_Y4_N45
\b2v_inst|pc_mux_select[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|pc_mux_select\(1) = ( \b2v_inst|Selector1~2_combout\ & ( \b2v_inst|Selector2~0_combout\ ) ) # ( !\b2v_inst|Selector1~2_combout\ & ( \b2v_inst|pc_mux_select\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|ALT_INV_Selector2~0_combout\,
	datad => \b2v_inst|ALT_INV_pc_mux_select\(1),
	dataf => \b2v_inst|ALT_INV_Selector1~2_combout\,
	combout => \b2v_inst|pc_mux_select\(1));

-- Location: LABCELL_X29_Y2_N30
\b2v_inst2|pc_temp~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|pc_temp~7_combout\ = ( \b2v_inst4|Mux0~5_combout\ & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(3) & ( (!\b2v_inst|pc_mux_select\(1)) # ((\b2v_inst|pc_mux_select\(0) & \b2v_inst2|Add0~13_sumout\)) ) ) ) # ( 
-- !\b2v_inst4|Mux0~5_combout\ & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(3) & ( (!\b2v_inst|pc_mux_select\(0) & (!\b2v_inst|pc_mux_select\(1))) # (\b2v_inst|pc_mux_select\(0) & (\b2v_inst|pc_mux_select\(1) & 
-- \b2v_inst2|Add0~13_sumout\)) ) ) ) # ( \b2v_inst4|Mux0~5_combout\ & ( !\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(3) & ( (\b2v_inst|pc_mux_select\(0) & ((!\b2v_inst|pc_mux_select\(1)) # (\b2v_inst2|Add0~13_sumout\))) ) ) ) # ( 
-- !\b2v_inst4|Mux0~5_combout\ & ( !\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(3) & ( (\b2v_inst|pc_mux_select\(0) & (\b2v_inst|pc_mux_select\(1) & \b2v_inst2|Add0~13_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011001100000011001111000000110000111111000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ALT_INV_pc_mux_select\(0),
	datac => \b2v_inst|ALT_INV_pc_mux_select\(1),
	datad => \b2v_inst2|ALT_INV_Add0~13_sumout\,
	datae => \b2v_inst4|ALT_INV_Mux0~5_combout\,
	dataf => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(3),
	combout => \b2v_inst2|pc_temp~7_combout\);

-- Location: LABCELL_X29_Y2_N24
\b2v_inst2|pc_temp~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|pc_temp~8_combout\ = ( \b2v_inst3|IR_Op[3]~3_combout\ & ( (!\b2v_inst|Selector3~0_combout\ & (((\b2v_inst2|pc_temp~7_combout\)) # (\b2v_inst2|pc_temp~0_combout\))) # (\b2v_inst|Selector3~0_combout\ & (((\b2v_inst2|pc_reg\(3))))) ) ) # ( 
-- !\b2v_inst3|IR_Op[3]~3_combout\ & ( (!\b2v_inst|Selector3~0_combout\ & (\b2v_inst2|pc_temp~7_combout\)) # (\b2v_inst|Selector3~0_combout\ & ((\b2v_inst2|pc_reg\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101110000011111110111000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|ALT_INV_pc_temp~0_combout\,
	datab => \b2v_inst2|ALT_INV_pc_temp~7_combout\,
	datac => \b2v_inst|ALT_INV_Selector3~0_combout\,
	datad => \b2v_inst2|ALT_INV_pc_reg\(3),
	dataf => \b2v_inst3|ALT_INV_IR_Op[3]~3_combout\,
	combout => \b2v_inst2|pc_temp~8_combout\);

-- Location: LABCELL_X29_Y2_N21
\b2v_inst5|address_a_temp[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|address_a_temp\(3) = ( \b2v_inst2|pc_temp~8_combout\ & ( (!\b2v_inst5|temp_address[9]~2_combout\) # (\b2v_inst5|address_a_temp\(3)) ) ) # ( !\b2v_inst2|pc_temp~8_combout\ & ( (\b2v_inst5|temp_address[9]~2_combout\ & 
-- \b2v_inst5|address_a_temp\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|ALT_INV_temp_address[9]~2_combout\,
	datad => \b2v_inst5|ALT_INV_address_a_temp\(3),
	dataf => \b2v_inst2|ALT_INV_pc_temp~8_combout\,
	combout => \b2v_inst5|address_a_temp\(3));

-- Location: FF_X30_Y5_N2
\b2v_inst3|temp_IR[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(10),
	sload => VCC,
	ena => \b2v_inst|ALT_INV_state.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|temp_IR\(10));

-- Location: LABCELL_X30_Y5_N24
\b2v_inst|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector1~1_combout\ = ( !\b2v_inst3|temp_IR\(13) & ( !\b2v_inst3|temp_IR\(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst3|ALT_INV_temp_IR\(10),
	dataf => \b2v_inst3|ALT_INV_temp_IR\(13),
	combout => \b2v_inst|Selector1~1_combout\);

-- Location: LABCELL_X30_Y5_N6
\b2v_inst|Selector1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector1~2_combout\ = ( \b2v_inst5|temp_address[9]~1_combout\ & ( (!\b2v_inst|state.T0~q\) # ((\b2v_inst|Selector1~1_combout\ & (\b2v_inst|Selector1~0_combout\ & \b2v_inst3|temp_IR\(12)))) ) ) # ( !\b2v_inst5|temp_address[9]~1_combout\ & ( 
-- !\b2v_inst|state.T0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000011111111100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_Selector1~1_combout\,
	datab => \b2v_inst|ALT_INV_Selector1~0_combout\,
	datac => \b2v_inst3|ALT_INV_temp_IR\(12),
	datad => \b2v_inst|ALT_INV_state.T0~q\,
	dataf => \b2v_inst5|ALT_INV_temp_address[9]~1_combout\,
	combout => \b2v_inst|Selector1~2_combout\);

-- Location: LABCELL_X30_Y4_N3
\b2v_inst|pc_mux_select[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|pc_mux_select\(0) = ( \b2v_inst|Selector1~2_combout\ & ( !\b2v_inst|state.T2~q\ ) ) # ( !\b2v_inst|Selector1~2_combout\ & ( \b2v_inst|pc_mux_select\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|ALT_INV_state.T2~q\,
	datad => \b2v_inst|ALT_INV_pc_mux_select\(0),
	dataf => \b2v_inst|ALT_INV_Selector1~2_combout\,
	combout => \b2v_inst|pc_mux_select\(0));

-- Location: LABCELL_X30_Y4_N51
\b2v_inst2|pc_temp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|pc_temp~0_combout\ = ( \b2v_inst|pc_mux_select\(1) & ( !\b2v_inst|pc_mux_select\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|ALT_INV_pc_mux_select\(0),
	dataf => \b2v_inst|ALT_INV_pc_mux_select\(1),
	combout => \b2v_inst2|pc_temp~0_combout\);

-- Location: LABCELL_X29_Y2_N3
\b2v_inst2|pc_temp~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|pc_temp~5_combout\ = ( \b2v_inst2|Add0~9_sumout\ & ( \b2v_inst4|Mux0~4_combout\ & ( ((!\b2v_inst|pc_mux_select\(1) & \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(2))) # (\b2v_inst|pc_mux_select\(0)) ) ) ) # ( 
-- !\b2v_inst2|Add0~9_sumout\ & ( \b2v_inst4|Mux0~4_combout\ & ( (!\b2v_inst|pc_mux_select\(1) & ((\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(2)) # (\b2v_inst|pc_mux_select\(0)))) ) ) ) # ( \b2v_inst2|Add0~9_sumout\ & ( 
-- !\b2v_inst4|Mux0~4_combout\ & ( (!\b2v_inst|pc_mux_select\(1) & (!\b2v_inst|pc_mux_select\(0) & \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(2))) # (\b2v_inst|pc_mux_select\(1) & (\b2v_inst|pc_mux_select\(0))) ) ) ) # ( 
-- !\b2v_inst2|Add0~9_sumout\ & ( !\b2v_inst4|Mux0~4_combout\ & ( (!\b2v_inst|pc_mux_select\(1) & (!\b2v_inst|pc_mux_select\(0) & \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000001011010010100001010101010100000111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_pc_mux_select\(1),
	datac => \b2v_inst|ALT_INV_pc_mux_select\(0),
	datad => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(2),
	datae => \b2v_inst2|ALT_INV_Add0~9_sumout\,
	dataf => \b2v_inst4|ALT_INV_Mux0~4_combout\,
	combout => \b2v_inst2|pc_temp~5_combout\);

-- Location: LABCELL_X29_Y2_N12
\b2v_inst2|pc_temp~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|pc_temp~6_combout\ = ( \b2v_inst2|pc_temp~5_combout\ & ( (!\b2v_inst|Selector3~0_combout\) # (\b2v_inst2|pc_reg\(2)) ) ) # ( !\b2v_inst2|pc_temp~5_combout\ & ( (!\b2v_inst|Selector3~0_combout\ & (\b2v_inst2|pc_temp~0_combout\ & 
-- (\b2v_inst3|IR_Op[2]~2_combout\))) # (\b2v_inst|Selector3~0_combout\ & (((\b2v_inst2|pc_reg\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011111000100000001111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|ALT_INV_pc_temp~0_combout\,
	datab => \b2v_inst3|ALT_INV_IR_Op[2]~2_combout\,
	datac => \b2v_inst|ALT_INV_Selector3~0_combout\,
	datad => \b2v_inst2|ALT_INV_pc_reg\(2),
	dataf => \b2v_inst2|ALT_INV_pc_temp~5_combout\,
	combout => \b2v_inst2|pc_temp~6_combout\);

-- Location: LABCELL_X29_Y2_N39
\b2v_inst5|address_a_temp[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|address_a_temp\(2) = ( \b2v_inst2|pc_temp~6_combout\ & ( (!\b2v_inst5|temp_address[9]~2_combout\) # (\b2v_inst5|address_a_temp\(2)) ) ) # ( !\b2v_inst2|pc_temp~6_combout\ & ( (\b2v_inst5|temp_address[9]~2_combout\ & 
-- \b2v_inst5|address_a_temp\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|ALT_INV_temp_address[9]~2_combout\,
	datad => \b2v_inst5|ALT_INV_address_a_temp\(2),
	dataf => \b2v_inst2|ALT_INV_pc_temp~6_combout\,
	combout => \b2v_inst5|address_a_temp\(2));

-- Location: FF_X29_Y5_N47
\b2v_inst3|temp_IR[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(15),
	sload => VCC,
	ena => \b2v_inst|ALT_INV_state.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|temp_IR\(15));

-- Location: LABCELL_X29_Y4_N6
\b2v_inst5|temp_address[9]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|temp_address[9]~1_combout\ = ( \b2v_inst3|temp_IR\(14) & ( (!\b2v_inst3|temp_IR\(15) & \b2v_inst|state.T2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst3|ALT_INV_temp_IR\(15),
	datad => \b2v_inst|ALT_INV_state.T2~q\,
	dataf => \b2v_inst3|ALT_INV_temp_IR\(14),
	combout => \b2v_inst5|temp_address[9]~1_combout\);

-- Location: LABCELL_X30_Y4_N30
\b2v_inst3|IR_Op[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst3|IR_Op[1]~1_combout\ = ( \b2v_inst|Selector4~0_combout\ & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(1) & ( (\b2v_inst|Selector5~1_combout\) # (\b2v_inst5|temp_address[9]~1_combout\) ) ) ) # ( 
-- !\b2v_inst|Selector4~0_combout\ & ( \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(1) & ( ((\b2v_inst5|temp_address[9]~1_combout\ & (\b2v_inst|Mux5~0_combout\ & \b2v_inst|Selector1~1_combout\))) # (\b2v_inst|Selector5~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ALT_INV_temp_address[9]~1_combout\,
	datab => \b2v_inst|ALT_INV_Mux5~0_combout\,
	datac => \b2v_inst|ALT_INV_Selector5~1_combout\,
	datad => \b2v_inst|ALT_INV_Selector1~1_combout\,
	datae => \b2v_inst|ALT_INV_Selector4~0_combout\,
	dataf => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \b2v_inst3|IR_Op[1]~1_combout\);

-- Location: LABCELL_X30_Y2_N42
\b2v_inst2|pc_temp~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|pc_temp~3_combout\ = ( \b2v_inst|pc_mux_select\(0) & ( \b2v_inst4|Mux0~3_combout\ & ( (!\b2v_inst|pc_mux_select\(1)) # (\b2v_inst2|Add0~5_sumout\) ) ) ) # ( !\b2v_inst|pc_mux_select\(0) & ( \b2v_inst4|Mux0~3_combout\ & ( 
-- (\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(1) & !\b2v_inst|pc_mux_select\(1)) ) ) ) # ( \b2v_inst|pc_mux_select\(0) & ( !\b2v_inst4|Mux0~3_combout\ & ( (\b2v_inst2|Add0~5_sumout\ & \b2v_inst|pc_mux_select\(1)) ) ) ) # ( 
-- !\b2v_inst|pc_mux_select\(0) & ( !\b2v_inst4|Mux0~3_combout\ & ( (\b2v_inst5|memory_test|altsyncram_component|auto_generated|q_b\(1) & !\b2v_inst|pc_mux_select\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000101010100001111000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|ALT_INV_Add0~5_sumout\,
	datac => \b2v_inst5|memory_test|altsyncram_component|auto_generated|ALT_INV_q_b\(1),
	datad => \b2v_inst|ALT_INV_pc_mux_select\(1),
	datae => \b2v_inst|ALT_INV_pc_mux_select\(0),
	dataf => \b2v_inst4|ALT_INV_Mux0~3_combout\,
	combout => \b2v_inst2|pc_temp~3_combout\);

-- Location: LABCELL_X30_Y2_N0
\b2v_inst2|pc_temp~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|pc_temp~4_combout\ = ( \b2v_inst2|pc_temp~3_combout\ & ( (!\b2v_inst|Selector3~0_combout\) # (\b2v_inst2|pc_reg\(1)) ) ) # ( !\b2v_inst2|pc_temp~3_combout\ & ( (!\b2v_inst|Selector3~0_combout\ & (((\b2v_inst3|IR_Op[1]~1_combout\ & 
-- \b2v_inst2|pc_temp~0_combout\)))) # (\b2v_inst|Selector3~0_combout\ & (\b2v_inst2|pc_reg\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110101000001010011010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|ALT_INV_pc_reg\(1),
	datab => \b2v_inst3|ALT_INV_IR_Op[1]~1_combout\,
	datac => \b2v_inst|ALT_INV_Selector3~0_combout\,
	datad => \b2v_inst2|ALT_INV_pc_temp~0_combout\,
	dataf => \b2v_inst2|ALT_INV_pc_temp~3_combout\,
	combout => \b2v_inst2|pc_temp~4_combout\);

-- Location: LABCELL_X30_Y2_N21
\b2v_inst5|address_a_temp[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|address_a_temp\(1) = ( \b2v_inst2|pc_temp~4_combout\ & ( (!\b2v_inst5|temp_address[9]~2_combout\) # (\b2v_inst5|address_a_temp\(1)) ) ) # ( !\b2v_inst2|pc_temp~4_combout\ & ( (\b2v_inst5|temp_address[9]~2_combout\ & 
-- \b2v_inst5|address_a_temp\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|ALT_INV_temp_address[9]~2_combout\,
	datad => \b2v_inst5|ALT_INV_address_a_temp\(1),
	dataf => \b2v_inst2|ALT_INV_pc_temp~4_combout\,
	combout => \b2v_inst5|address_a_temp\(1));

-- Location: FF_X30_Y5_N41
\b2v_inst3|temp_IR[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(13),
	sload => VCC,
	ena => \b2v_inst|ALT_INV_state.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|temp_IR\(13));

-- Location: LABCELL_X30_Y5_N36
\b2v_inst|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal1~0_combout\ = (!\b2v_inst3|temp_IR\(13) & !\b2v_inst3|temp_IR\(12))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst3|ALT_INV_temp_IR\(13),
	datad => \b2v_inst3|ALT_INV_temp_IR\(12),
	combout => \b2v_inst|Equal1~0_combout\);

-- Location: LABCELL_X30_Y5_N48
\b2v_inst5|temp_address[9]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|temp_address[9]~2_combout\ = ( \b2v_inst3|temp_IR\(15) & ( \b2v_inst5|temp_address[9]~0_combout\ & ( (\b2v_inst|Equal1~0_combout\ & (\b2v_inst|Mux26~0_combout\ & (!\b2v_inst3|temp_IR\(9) & !\b2v_inst3|temp_IR\(11)))) ) ) ) # ( 
-- !\b2v_inst3|temp_IR\(15) & ( \b2v_inst5|temp_address[9]~0_combout\ & ( (\b2v_inst|Equal1~0_combout\ & (\b2v_inst|Mux26~0_combout\ & (\b2v_inst3|temp_IR\(9) & !\b2v_inst3|temp_IR\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_Equal1~0_combout\,
	datab => \b2v_inst|ALT_INV_Mux26~0_combout\,
	datac => \b2v_inst3|ALT_INV_temp_IR\(9),
	datad => \b2v_inst3|ALT_INV_temp_IR\(11),
	datae => \b2v_inst3|ALT_INV_temp_IR\(15),
	dataf => \b2v_inst5|ALT_INV_temp_address[9]~0_combout\,
	combout => \b2v_inst5|temp_address[9]~2_combout\);

-- Location: LABCELL_X29_Y2_N45
\b2v_inst5|address_a_temp[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|address_a_temp\(0) = ( \b2v_inst2|pc_temp~2_combout\ & ( (!\b2v_inst5|temp_address[9]~2_combout\) # (\b2v_inst5|address_a_temp\(0)) ) ) # ( !\b2v_inst2|pc_temp~2_combout\ & ( (\b2v_inst5|temp_address[9]~2_combout\ & 
-- \b2v_inst5|address_a_temp\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|ALT_INV_temp_address[9]~2_combout\,
	datad => \b2v_inst5|ALT_INV_address_a_temp\(0),
	dataf => \b2v_inst2|ALT_INV_pc_temp~2_combout\,
	combout => \b2v_inst5|address_a_temp\(0));

-- Location: FF_X29_Y4_N59
\b2v_inst3|temp_IR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(7),
	sload => VCC,
	ena => \b2v_inst|ALT_INV_state.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|temp_IR\(7));

-- Location: FF_X29_Y2_N43
\b2v_inst4|regs_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst3|temp_IR\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_0_bypass\(7));

-- Location: FF_X29_Y2_N35
\b2v_inst4|regs_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst3|temp_IR[6]~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_0_bypass\(5));

-- Location: FF_X29_Y2_N56
\b2v_inst4|regs_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(2),
	sload => VCC,
	ena => \b2v_inst|ALT_INV_state.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_0_bypass\(6));

-- Location: FF_X28_Y2_N55
\b2v_inst4|regs_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst5|memory_test|altsyncram_component|auto_generated|q_a\(3),
	sload => VCC,
	ena => \b2v_inst|ALT_INV_state.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_0_bypass\(8));

-- Location: LABCELL_X29_Y2_N54
\b2v_inst4|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux0~1_combout\ = ( \b2v_inst4|regs_rtl_0_bypass\(8) & ( (\b2v_inst4|regs_rtl_0_bypass\(7) & (!\b2v_inst4|regs_rtl_0_bypass\(5) $ (\b2v_inst4|regs_rtl_0_bypass\(6)))) ) ) # ( !\b2v_inst4|regs_rtl_0_bypass\(8) & ( 
-- (!\b2v_inst4|regs_rtl_0_bypass\(7) & (!\b2v_inst4|regs_rtl_0_bypass\(5) $ (\b2v_inst4|regs_rtl_0_bypass\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100110000000000110000110000000000110011000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst4|ALT_INV_regs_rtl_0_bypass\(7),
	datac => \b2v_inst4|ALT_INV_regs_rtl_0_bypass\(5),
	datad => \b2v_inst4|ALT_INV_regs_rtl_0_bypass\(6),
	dataf => \b2v_inst4|ALT_INV_regs_rtl_0_bypass\(8),
	combout => \b2v_inst4|Mux0~1_combout\);

-- Location: FF_X28_Y4_N59
\b2v_inst4|regs_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst4|z[0]~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|regs_rtl_0_bypass\(24));

-- Location: LABCELL_X29_Y2_N42
\b2v_inst4|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux0~2_combout\ = ( \b2v_inst4|regs_rtl_0|auto_generated|ram_block1a15\ & ( (!\b2v_inst4|Mux0~1_combout\) # ((!\b2v_inst4|Mux0~0_combout\) # (\b2v_inst4|regs_rtl_0_bypass\(24))) ) ) # ( !\b2v_inst4|regs_rtl_0|auto_generated|ram_block1a15\ & ( 
-- (\b2v_inst4|Mux0~1_combout\ & (\b2v_inst4|regs_rtl_0_bypass\(24) & \b2v_inst4|Mux0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111111011111110111111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|ALT_INV_Mux0~1_combout\,
	datab => \b2v_inst4|ALT_INV_regs_rtl_0_bypass\(24),
	datac => \b2v_inst4|ALT_INV_Mux0~0_combout\,
	dataf => \b2v_inst4|regs_rtl_0|auto_generated|ALT_INV_ram_block1a15\,
	combout => \b2v_inst4|Mux0~2_combout\);

-- Location: LABCELL_X31_Y5_N27
\b2v_inst|load_sop~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|load_sop~0_combout\ = ( \b2v_inst3|temp_IR\(11) & ( \b2v_inst|state.T2~q\ & ( (\b2v_inst3|temp_IR\(14) & \b2v_inst3|temp_IR\(15)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst3|ALT_INV_temp_IR\(14),
	datad => \b2v_inst3|ALT_INV_temp_IR\(15),
	datae => \b2v_inst3|ALT_INV_temp_IR\(11),
	dataf => \b2v_inst|ALT_INV_state.T2~q\,
	combout => \b2v_inst|load_sop~0_combout\);

-- Location: LABCELL_X30_Y5_N0
\b2v_inst|load_sop~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|load_sop~1_combout\ = ( \b2v_inst|load_sop~0_combout\ & ( (\b2v_inst3|temp_IR\(12) & (\b2v_inst3|temp_IR\(13) & (\b2v_inst3|temp_IR\(9) & \b2v_inst|Mux26~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|ALT_INV_temp_IR\(12),
	datab => \b2v_inst3|ALT_INV_temp_IR\(13),
	datac => \b2v_inst3|ALT_INV_temp_IR\(9),
	datad => \b2v_inst|ALT_INV_Mux26~0_combout\,
	dataf => \b2v_inst|ALT_INV_load_sop~0_combout\,
	combout => \b2v_inst|load_sop~1_combout\);

-- Location: FF_X29_Y2_N50
\signal_registers|SOP_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst4|Mux0~2_combout\,
	sload => VCC,
	ena => \b2v_inst|load_sop~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \signal_registers|SOP_reg\(0));

-- Location: FF_X30_Y2_N52
\signal_registers|SOP_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst4|Mux0~3_combout\,
	sload => VCC,
	ena => \b2v_inst|load_sop~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \signal_registers|SOP_reg\(1));

-- Location: FF_X31_Y2_N17
\signal_registers|SOP_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst4|Mux0~4_combout\,
	sload => VCC,
	ena => \b2v_inst|load_sop~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \signal_registers|SOP_reg\(2));

-- Location: FF_X29_Y2_N38
\signal_registers|SOP_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst4|Mux0~5_combout\,
	sload => VCC,
	ena => \b2v_inst|load_sop~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \signal_registers|SOP_reg\(3));

-- Location: FF_X31_Y2_N47
\signal_registers|SOP_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst4|Mux0~6_combout\,
	sload => VCC,
	ena => \b2v_inst|load_sop~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \signal_registers|SOP_reg\(4));

-- Location: FF_X31_Y2_N43
\signal_registers|SOP_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst4|Mux0~7_combout\,
	sload => VCC,
	ena => \b2v_inst|load_sop~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \signal_registers|SOP_reg\(5));

-- Location: FF_X31_Y2_N56
\signal_registers|SOP_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst4|Mux0~8_combout\,
	sload => VCC,
	ena => \b2v_inst|load_sop~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \signal_registers|SOP_reg\(6));

-- Location: FF_X31_Y4_N40
\signal_registers|SOP_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst4|Mux0~9_combout\,
	sload => VCC,
	ena => \b2v_inst|load_sop~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \signal_registers|SOP_reg\(7));

-- Location: IOIBUF_X36_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);
END structure;


