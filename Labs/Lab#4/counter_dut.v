module counter_dut(
    input clock,
    input reset,
    input enable,
    input up_down,
    output reg [3:0] counter
);

    always @(posedge clock) begin
        if (reset) begin
            if (up_down) begin
                counter <= 4'b0000;
            end else begin
                counter <= 4'b1111;
            end
        end else begin
            if (enable) begin
                if (up_down) begin
                    if (counter != 4'b1111)begin
                        counter <= counter + 1;
                    end else begin
                        counter <= 4'b0000;
                    end
                end else begin
                    if (counter != 4'b0000) begin
                        counter <= counter - 1;
                    end else begin
                        counter <= 4'b1111;
                    end
                end
            end else begin
                counter <= counter; 
            end
        end
    end

endmodule