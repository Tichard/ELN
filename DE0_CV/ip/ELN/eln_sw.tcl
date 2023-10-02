###################################################
# ELN_driver.tcl   		                          #
###################################################

# Create a new driver
create_driver ELN_driver

# Associate it with some hardware known as "ELN"
set_sw_property hw_class_name ELN

# The version of this driver
set_sw_property version 17.0
set_sw_property min_compatible_hw_version 1.0

# Location in generated BSP that above sources will be copied into
set_sw_property bsp_subdirectory drivers

#this driver uses new API
set_sw_property supported_interrupt_apis enhanced_interrupt_api

# This driver supports HAL BSP (OS) type
add_sw_property supported_bsp_type HAL


###################################################
# Source file listings...                         #
###################################################

# Include files (*.h)
add_sw_property include_source inc/ELN_regs.h
add_sw_property include_source inc/ELN_API.h

# C/C++ source files
add_sw_property c_source src/ELN_API.c

# asm source files
#add_sw_property asm_source src/< asm file name >.s


# End of file
