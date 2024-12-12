`timescale 1ns / 1ps
module counter_tb;

    // Testbench signals
    reg clock;
    reg reset;
    reg enable;
    reg up_down;
    wire [3:0] counter_orig;
    wire [3:0] counter_synt;
    wire [3:0] counter_routing;

    // Instantiate the DUT
    counter_dut_routing uut (
        .clock(clock),
        .reset(reset),
        .enable(enable),
        .up_down(up_down),
        .counter(counter_routing)
    );

    counter_dut uut1 (
        .clock(clock),
        .reset(reset),
        .enable(enable),
        .up_down(up_down),
        .counter(counter_orig)
    );

    counter_dut_synth uut2 (
        .clock(clock),
        .reset(reset),
        .enable(enable),
        .up_down(up_down),
        .counter(counter_synt)
    );

    // Clock generation (50% duty cycle)
    initial clock = 0;
    always #5 clock = ~clock; // 10ns clock period

    // Testbench procedure
    initial begin

        // Initialize inputs
        reset = 0;
        enable = 0;
        up_down = 0;

        // Apply reset
        $display("Applying Reset...");
        reset = 1;
        #10;
        reset = 0;

        // Test all scenarios
        // Case 1: Enable = 0 (Counter should hold its value)
        $display("Testing Enable = 0...");
        up_down = 0; #10;
        up_down = 1; #10;

        // Case 2: Enable = 1, Up/Down = 0 (Counter decrements)
        $display("Testing Enable = 1, Up/Down = 0...");
        enable = 1;
        up_down = 0;
        repeat (20) @(posedge clock);

        // Case 3: Enable = 1, Up/Down = 1 (Counter increments)
        $display("Testing Enable = 1, Up/Down = 1...");
        up_down = 1;
        repeat (18) @(posedge clock);

        #5;
        // Case 4: Test Reset during operation
        $display("Testing Reset during operation...");
        #1;
        reset = 1; #5;
        reset = 0;
        repeat (10) @(posedge clock);

        #70

        // End simulation
        $display("Simulation Complete.");
        $finish;
    end

endmodule
