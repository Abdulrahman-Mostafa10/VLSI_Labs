# Has to be defined in here as a virtual block because for the port IO9, its maximum ouput delay is defined till reaching the next
# flipflop that would be clocked with either CK2 or GEN_CK2, but take care that the system is in worst case for being too fast, so take the CK2 with
# being a virtual clock with period 10
create_clock -name CK2 period 10
create_clock -name CK1 -period 10  [get_ports IO2]
create_generated_clock -name GEN_CK1 -source [get_ports IO2] -divide_by 2 [get_pins FF2/CK]
set_clock_uncertainity 0.1 [get_clocks CK1]

set_driving_cell -lib_cell Buf2 [get_ports IO1]

set_output_delay -max 5.05 -clock CK1 [get_ports IO4]
set_output_delay -max 4.05 -clock CK2 [get_ports IO9]
# Since when you constraint the paths, you deal like they would change, so in order that the intetrnal combinational path
# would work, then the whole path till reaching the first facing flipflop should be balanced with the combinationl that may change
# for that the max delay would be the (Period1 - output delay)
set_max_delay 5.95 -from [get_ports IO8] -to [get_ports IO9]

set_multicycle_path -setup 2 -start -from [get_pins FF1/CK1] -to [get_pins FF2/D]
set_multicycle_path -hold 1 -start -from [get_pins FF1/CK1] -to [get_pins FF2/D]

################################################################################

create_clock -name CK1 -period 10  [get_ports IO10]
create_clock -name CK2 -period 10  [get_ports IO6]
create_generated_clock -name GEN_CK2 -source [get_ports IO6] -divide_by 2 [get_pins ClockGenerator/out]

set_clock_uncertainity 0.1 [get_clocks CK1]
set_clock_uncertainity 0.1 [get_clocks CK2]

create_generated_clock -name CK2_MUX2 -source [get_ports IO6] -divide_by 2 [get_pins Mux/out]
create_generated_clock -name CK2_MUX1 -source [get_ports IO6] [get_pins Mux/out] -add

set_load 10 [get_ports IO11]

create_generated_clock -name GEN_CK1 -source [get_ports IO10] -divide_by 2
set_input_delay -max 7.04 -clock GEN_CK1 [get_ports IO5]
set_input_delay -max 6 [get_ports IO7]

set_false_path -from [get_clocks CK1] -to [get_clocks CK2]
set_false_path -from [get_clocks CK2] -to [get_clocks CK1]
