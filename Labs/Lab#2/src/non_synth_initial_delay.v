module non_synth_initial_delay (
    output reg signal
);

    initial begin
        signal = 0;
        #10;          // Non-synthesizable delay
        signal = 1;
    end
endmodule