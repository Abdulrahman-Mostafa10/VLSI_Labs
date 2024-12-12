# Load the design for simulation
vsim -suppress 3009,3250,3263,3894 -sdftyp "/home/amostafa/vlsi/counter_dut__max_tt_025C_1v80.sdf" work.counter_dut_routing     ;

# Add signals to the waveform window for observation
add wave -position insertpoint \
    sim:/counter_dut_routing/clock \
    sim:/counter_dut_routing/reset \
    sim:/counter_dut_routing/enable \
    sim:/counter_dut_routing/up_down \
    sim:/counter_dut_routing/counter

# Set up simulation parameters
log -r /*                ;# Log all signals

# Initialize inputs and simulate
force -freeze sim:/counter_dut_routing/clock 1 0, 0 {5000 ps} -r 10000

# Apply Reset
force sim:/counter_dut_routing/reset 1  ;# Apply reset high
run 10ns                    ;# Wait for 10 ns
force sim:/counter_dut_routing/reset 0  ;# Release reset

# Test Enable = 0 (Counter should hold its value)
force sim:/counter_dut_routing/enable 0 ;# Enable is 0
force sim:/counter_dut_routing/up_down 0 ;# Test Up/Down = 0
run 10ns ;# Wait 10 ns
force sim:/counter_dut_routing/up_down 1 ;# Change Up/Down = 1
run 10ns ;# Wait 10 ns

# Test Enable = 1, Up/Down = 0 (Counter decrements)
force sim:/counter_dut_routing/enable 1 ;# Enable = 1
force sim:/counter_dut_routing/up_down 0 ;# Up/Down = 0
run 200ns ;# Simulate 200 ns for decrementing

# Test Enable = 1, Up/Down = 1 (Counter increments)
force sim:/counter_dut_routing/up_down 1 ;# Up/Down = 1
run 200ns ;# Simulate 200 ns for incrementing

# Test Reset during operation
force sim:/counter_dut_routing/reset 1 ;# Apply reset high
run 10ns ;# Wait for 10 ns
force sim:/counter_dut_routing/reset 0 ;# Release reset
run 100ns ;# Run for 100 ns to see reset behavior

# End the simulation
$display("Simulation Complete.");
$finish;
