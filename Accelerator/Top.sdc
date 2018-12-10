###################################################################

# Created by write_sdc on Mon Dec 10 00:25:54 2018

###################################################################
set sdc_version 2.0

set_units -time ps -resistance kOhm -capacitance fF -power mW -voltage V       \
-current mA
set_driving_cell -lib_cell inv_1 [get_ports clk]
set_driving_cell -lib_cell inv_1 [get_ports reset]
set_load -pin_load 57.462 [get_ports Done]
create_clock [get_ports clk]  -period 100000  -waveform {0 50000}
