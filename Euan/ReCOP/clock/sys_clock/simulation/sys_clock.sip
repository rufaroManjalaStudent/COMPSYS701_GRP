set_global_assignment -entity "sys_clock" -library "lib_sys_clock" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "sys_clock" -library "lib_sys_clock" -name IP_TOOL_VERSION "18.1"
set_global_assignment -entity "sys_clock" -library "lib_sys_clock" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_sys_clock" -name SPD_FILE [file join $::quartus(sip_path) "../sys_clock.spd"]
set_global_assignment -library "lib_sys_clock" -name MISC_FILE [file join $::quartus(sip_path) "../../sys_clock.qsys"]

set_global_assignment -library "lib_sys_clock" -name MISC_FILE [file join $::quartus(sip_path) "sys_clock.vhd"]
set_global_assignment -library "lib_sys_clock" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_avalon_clock_source.vhd"]
