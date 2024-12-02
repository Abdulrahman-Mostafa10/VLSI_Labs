module generic_piplined_multiplier_tb;

    parameter WIDTH = 8;

    reg clk;
    reg rst;
    reg [WIDTH-1:0] A;
    reg [WIDTH-1:0] B;
    wire [2*WIDTH-1:0] Result;

    generic_piplined_multiplier #(WIDTH) uut (
        .clk(clk),
        .rst(rst),
        .A(A),
        .B(B),
        .Result(Result)
    );

    initial begin
        clk = 0;
        rst = 0;
        A = 8'b0;
        B = 8'b0;
        
        #5 rst = 1;    // Assert reset
        #10 rst = 0;   // Deassert reset
        
        A = 8'b00000011; // A = 3
        B = 8'b00000101; // B = 5
        #10; // Wait for a few clock cycles

        A = 8'b00001010; // A = 10
        B = 8'b00001010; // B = 2
        #10; // Wait for a few clock cycles

        A = 8'b00000000; // A = 17
        B = 8'b00000000; // B = 3
        #10; // Wait for a few clock cycles
        
        $finish; // End the simulation
    end

    always #5 clk = ~clk; // Generate clock signal with 10 time units period

    initial begin
        $monitor("At time %t, A = %h, B = %h, Result = %h", $time, A, B, Result);
    end

endmodule
