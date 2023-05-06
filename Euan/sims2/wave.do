onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /top/b2v_inst/clk
add wave -noupdate /top/b2v_inst/reset
add wave -noupdate /top/b2v_inst/pc_mux_select
add wave -noupdate /top/b2v_inst/data_in_control
add wave -noupdate /top/b2v_inst/address_control
add wave -noupdate /top/b2v_inst/mem_sel
add wave -noupdate /top/b2v_inst/wren_b
add wave -noupdate /top/b2v_inst/ld_ir1
add wave -noupdate /top/b2v_inst/ld_ir2
add wave -noupdate /top/b2v_inst/cu_selx
add wave -noupdate /top/b2v_inst/cu_selz
add wave -noupdate /top/b2v_inst/z_control
add wave -noupdate /top/b2v_inst/selz_control
add wave -noupdate /top/b2v_inst/selx_control
add wave -noupdate /top/b2v_inst/ALU_Opcode
add wave -noupdate /top/b2v_inst/CarryIn
add wave -noupdate /top/b2v_inst/zOut
add wave -noupdate /top/b2v_inst/IR_AM
add wave -noupdate -radix binary /top/b2v_inst/IR_OpCode
add wave -noupdate /top/b2v_inst/state
add wave -noupdate /top/b2v_inst2/pc_reg
add wave -noupdate /top/b2v_inst/pc_control_sig
add wave -noupdate /top/b2v_inst/clear_pd
add wave -noupdate /top/b2v_inst/enable_pd
add wave -noupdate /top/b2v_inst7/ALU_out
add wave -noupdate /top/b2v_inst7/ALU_in1
add wave -noupdate /top/b2v_inst7/ALU_in2
add wave -noupdate /top/b2v_inst4/rx_out
add wave -noupdate /top/b2v_inst4/rz
add wave -noupdate -radix binary /top/b2v_inst3/IR_Rz
add wave -noupdate -radix binary /top/b2v_inst3/IR_Rx
add wave -noupdate /top/b2v_inst3/programMemory_out
add wave -noupdate /top/b2v_inst3/IR_Op
add wave -noupdate /top/b2v_inst5/data_in_control
add wave -noupdate /top/b2v_inst5/address_control
add wave -noupdate /top/b2v_inst5/mem_sel
add wave -noupdate /top/b2v_inst5/wren_b
add wave -noupdate /top/b2v_inst5/program_memory
add wave -noupdate /top/b2v_inst5/data_memory
add wave -noupdate /top/b2v_inst5/temp_address
add wave -noupdate /top/b2v_inst5/address_a_temp
add wave -noupdate /top/b2v_inst5/address_b_temp
add wave -noupdate /top/b2v_inst5/address_a
add wave -noupdate /top/b2v_inst5/address_b
add wave -noupdate /top/b2v_inst5/data_b
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {151 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 237
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {907 ns}
