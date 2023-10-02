##########################################################################
#    System console script to test access to registers
##########################################################################

##########################################################################
#    TO BE DEFINED: Base address & Offsets (same as in Modelsim macros)
##########################################################################
#
#    ===> BaseAddr: clock_crossing_bridge_base + peripheral address
#    ===> BusSize: size of the data bus 1, 2 or 4 byte(s)
#
set BaseAddr 0x04000900
set BusSize 1
#
#    Register number
#          format: set <register_name> <register_number>
#
set Status  0
set Control 1
set DATAin  2

##########################################################################
#    INITIALIZATION OF SYSTEM CONSOLE "MASTER" SERVICE
##########################################################################
#locating a service path (for "master" service)
set master_path [lindex [get_service_paths master] 0]
#open the service
set claim_path [claim_service master $master_path mylib]
puts "Master service open"
puts "\n"
##########################################################################


##########################################################################
#    DEFINE THE TEST SCENARIO BELOW
##########################################################################
#
# ===> read: master_read_8/_16/_32 <service path> <address> <size>
# ===> write: master_write_8/_16/_32 <service path> <address> <list of values>
#
#    EXAMPLE
#
########  comment (optional):
#puts "*** test: STATUS ***"
########  read a STATUS register:
#puts "Status: [master_read_32 $claim_path [expr {$BaseAddr + $Status*$BusSize}] 1]"      ;#a comment can be added here
########  write a set register:
#master_write_32 $claim_path [expr {$BaseAddr + $SetCtrl*$BusSize}] 1                     ;#a comment can be added here
#puts "\n"

##########################################################################
#
#    TEST: UART_FIFO
#
puts "*** test: ELN ***"
puts "Status: [master_read_8 $claim_path [expr {$BaseAddr + $Status*$BusSize}] 1]";	#lecture STATUS
puts "Control: [master_read_8 $claim_path [expr {$BaseAddr + $Control*$BusSize}] 1]";	#lecture CONTROL
puts "write 0x61"
master_write_8 $claim_path [expr {$BaseAddr + $DATAin*$BusSize}] 0x61;			#ecriture DATAin
puts "write 0x62"
master_write_8 $claim_path [expr {$BaseAddr + $DATAin*$BusSize}] 0x62;			#ecriture DATAin
puts "Status: [master_read_8 $claim_path [expr {$BaseAddr + $Status*$BusSize}] 1]";	#lecture STATUS
puts "write 0x63"
master_write_8 $claim_path [expr {$BaseAddr + $DATAin*$BusSize}] 0x63;			#ecriture DATAin
puts "write 0x64"
master_write_8 $claim_path [expr {$BaseAddr + $DATAin*$BusSize}] 0x64;			#ecriture DATAin
puts "Status: [master_read_8 $claim_path [expr {$BaseAddr + $Status*$BusSize}] 1]";	#lecture STATUS
puts "START write control : 0x13"
master_write_8 $claim_path [expr {$BaseAddr + $Control*$BusSize}] 0x13;			#ecriture clock_div=4 - Irq Enable - Start
puts "Status: [master_read_8 $claim_path [expr {$BaseAddr + $Status*$BusSize}] 1]";	#lecture STATUS
puts "Status: [master_read_8 $claim_path [expr {$BaseAddr + $Status*$BusSize}] 1]";	#lecture STATUS
puts "Control: [master_read_8 $claim_path [expr {$BaseAddr + $Control*$BusSize}] 1]";	#lecture CONTROL
puts "\n"




##########################################################################
#close the service "master"
close_service master $claim_path
puts "Master service closed"
