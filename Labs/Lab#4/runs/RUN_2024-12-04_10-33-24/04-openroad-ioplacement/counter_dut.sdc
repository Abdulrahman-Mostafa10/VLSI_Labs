###############################################################################
# Created by write_sdc
###############################################################################
current_design counter_dut
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 10.0000 [get_ports {clk}]
set_propagated_clock [get_clocks {clk}]
set_input_delay 200.0000 -clock [get_clocks {clk}] -add_delay [get_ports {enable}]
set_input_delay 200.0000 -clock [get_clocks {clk}] -add_delay [get_ports {reset}]
set_input_delay 200.0000 -clock [get_clocks {clk}] -add_delay [get_ports {up_down}]
set_output_delay 5000.0000 -clock [get_clocks {clk}] -add_delay [get_ports {counter[0]}]
set_output_delay 5000.0000 -clock [get_clocks {clk}] -add_delay [get_ports {counter[1]}]
set_output_delay 5000.0000 -clock [get_clocks {clk}] -add_delay [get_ports {counter[2]}]
set_output_delay 5000.0000 -clock [get_clocks {clk}] -add_delay [get_ports {counter[3]}]
###############################################################################
# Environment
###############################################################################
###############################################################################
# Design Rules
###############################################################################
