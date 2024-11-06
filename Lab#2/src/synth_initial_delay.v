module synth_initial_delay (
    input wire clk,
    output reg signal
);
    reg[3:0] counter =0;
    always @(posedge clk) begin
        if (counter<10) begin
            counter <= counter+1;
            signal <=0;
        end else begin
            signal <=1;
        end
    end

endmodule