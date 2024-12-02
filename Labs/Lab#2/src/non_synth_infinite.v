module non_synth_infinite (
    input wire clk,
    input wire reset,
    output reg signal
);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            signal <= 0;
        end else begin
            signal <= 1;
            while (1) begin
                signal <= ~signal;
            end
        end
    end
endmodule