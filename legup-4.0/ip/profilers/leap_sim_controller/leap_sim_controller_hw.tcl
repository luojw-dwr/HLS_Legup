# TCL File Generated by Component Editor 13.0sp1
# Sun Apr 19 11:04:43 EDT 2015
# DO NOT MODIFY


# 
# leap_sim_controller "Leap's Controller during Simulation" v1.0
# U of T 2015.04.19.11:04:43
# This  module controls Leap during simulation
# 

# 
# request TCL package from ACDS 13.1
# 
package require -exact qsys 13.1


# 
# module leap_sim_controller
# 
set_module_property DESCRIPTION "This  module controls Leap during simulation"
set_module_property NAME leap_sim_controller
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP "LegUp/Profilers"
set_module_property AUTHOR "University of Toronto - LegUp Group"
set_module_property DISPLAY_NAME "Leap's Controller during Simulation"
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL AUTO
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL leap_sim_controller
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file leap_sim_controller.v VERILOG PATH hdl/leap_sim_controller.v TOP_LEVEL_FILE

add_fileset SIM_VERILOG SIM_VERILOG "" ""
set_fileset_property SIM_VERILOG TOP_LEVEL leap_sim_controller
set_fileset_property SIM_VERILOG ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file leap_sim_controller.v VERILOG PATH hdl/leap_sim_controller.v

add_fileset SIM_VHDL SIM_VHDL "" ""
set_fileset_property SIM_VHDL TOP_LEVEL leap_sim_controller
set_fileset_property SIM_VHDL ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file leap_sim_controller.v VERILOG PATH hdl/leap_sim_controller.v


# 
# parameters
# 
add_parameter STARTING_PC INTEGER 0x00800020
set_parameter_property STARTING_PC DISPLAY_NAME "Program Start Address"
set_parameter_property STARTING_PC DISPLAY_HINT hexadecimal
set_parameter_property STARTING_PC UNITS None
set_parameter_property STARTING_PC DESCRIPTION "The starting address of programs"
set_parameter_property STARTING_PC HDL_PARAMETER true

add_parameter N2 INTEGER 8
set_parameter_property N2 DEFAULT_VALUE 8
set_parameter_property N2 DISPLAY_NAME N2
set_parameter_property N2 TYPE INTEGER
set_parameter_property N2 UNITS None
set_parameter_property N2 HDL_PARAMETER true
set_parameter_property N2 VISIBLE false

# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clk clk Input 1


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset reset reset Input 1


# 
# connection point bridge_slave
# 
add_interface bridge_slave avalon end
set_interface_property bridge_slave addressUnits WORDS
set_interface_property bridge_slave associatedClock clock
set_interface_property bridge_slave associatedReset reset
set_interface_property bridge_slave bitsPerSymbol 8
set_interface_property bridge_slave burstOnBurstBoundariesOnly false
set_interface_property bridge_slave burstcountUnits WORDS
set_interface_property bridge_slave explicitAddressSpan 0
set_interface_property bridge_slave holdTime 0
set_interface_property bridge_slave linewrapBursts false
set_interface_property bridge_slave maximumPendingReadTransactions 0
set_interface_property bridge_slave readLatency 0
set_interface_property bridge_slave readWaitTime 1
set_interface_property bridge_slave setupTime 0
set_interface_property bridge_slave timingUnits Cycles
set_interface_property bridge_slave writeWaitTime 0
set_interface_property bridge_slave ENABLED true
set_interface_property bridge_slave EXPORT_OF ""
set_interface_property bridge_slave PORT_NAME_MAP ""
set_interface_property bridge_slave SVD_ADDRESS_GROUP ""

add_interface_port bridge_slave avs_bridge_slave_address address Input N2
add_interface_port bridge_slave avs_bridge_slave_read read Input 1
add_interface_port bridge_slave avs_bridge_slave_write write Input 1
add_interface_port bridge_slave avs_bridge_slave_writedata writedata Input 32
add_interface_port bridge_slave avs_bridge_slave_readdata readdata Output 32
set_interface_assignment bridge_slave embeddedsw.configuration.isFlash 0
set_interface_assignment bridge_slave embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment bridge_slave embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment bridge_slave embeddedsw.configuration.isPrintableDevice 0


# 
# connection point bridge_master
# 
add_interface bridge_master avalon start
set_interface_property bridge_master addressUnits SYMBOLS
set_interface_property bridge_master associatedClock clock
set_interface_property bridge_master associatedReset reset
set_interface_property bridge_master bitsPerSymbol 8
set_interface_property bridge_master burstOnBurstBoundariesOnly false
set_interface_property bridge_master burstcountUnits WORDS
set_interface_property bridge_master doStreamReads false
set_interface_property bridge_master doStreamWrites false
set_interface_property bridge_master holdTime 0
set_interface_property bridge_master linewrapBursts false
set_interface_property bridge_master maximumPendingReadTransactions 0
set_interface_property bridge_master readLatency 0
set_interface_property bridge_master readWaitTime 1
set_interface_property bridge_master setupTime 0
set_interface_property bridge_master timingUnits Cycles
set_interface_property bridge_master writeWaitTime 0
set_interface_property bridge_master ENABLED true
set_interface_property bridge_master EXPORT_OF ""
set_interface_property bridge_master PORT_NAME_MAP ""
set_interface_property bridge_master SVD_ADDRESS_GROUP ""

add_interface_port bridge_master avm_bridge_master_readdata readdata Input 32
add_interface_port bridge_master avm_bridge_master_waitrequest waitrequest Input 1
add_interface_port bridge_master avm_bridge_master_address address Output 32
add_interface_port bridge_master avm_bridge_master_byteenable byteenable Output 4
add_interface_port bridge_master avm_bridge_master_read read Output 1
add_interface_port bridge_master avm_bridge_master_write write Output 1
add_interface_port bridge_master avm_bridge_master_writedata writedata Output 32

