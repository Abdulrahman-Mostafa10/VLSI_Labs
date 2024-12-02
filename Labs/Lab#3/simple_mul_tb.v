
module simple_mult_tb;

    // Parameters for the bit-width
    parameter WIDTH = 4;

    // Testbench signals
    reg [WIDTH-1:0] A, B;       // Inputs
    wire [2*WIDTH-1:0] P;       // Product output

    // Instantiate the multiplier
    simple_mult_detailed_routing #(WIDTH) UUT (
        .A(A),
        .B(B),
        .P(P)
    );

    // Task for displaying results
    task display_result;
        input [WIDTH-1:0] A, B;
        input [2*WIDTH-1:0] P;
        begin
            
        end
    endtask

    // Test vectors
    initial begin
        // Test 1: Multiply by zero
        A = 4'b0000; B = 4'b0000; // 0 * 0
        #10 $display("A = %b (%d), B = %b (%d) -> P = %b (%d)", A, A, B, B, P, P);

        #10 A = 4'b0000; B = 4'b1010; // 0 * 10
        #10 $display("A = %b (%d), B = %b (%d) -> P = %b (%d)", A, A, B, B, P, P);


        // Test 2: Multiply by one
        #10 A = 4'b0001; B = 4'b0110; // 1 * 6
        #10 $display("A = %b (%d), B = %b (%d) -> P = %b (%d)", A, A, B, B, P, P);


        #10 A = 4'b0110; B = 4'b0001; // 6 * 1
        #10 $display("A = %b (%d), B = %b (%d) -> P = %b (%d)", A, A, B, B, P, P);


        // Test 3: Maximum values
        #10 A = 4'b1111; B = 4'b1111; // 15 * 15
        #10 $display("A = %b (%d), B = %b (%d) -> P = %b (%d)", A, A, B, B, P, P);


        // Test 4: Alternating bits
        #10 A = 4'b1010; B = 4'b0101; // 10 * 5
        #10 $display("A = %b (%d), B = %b (%d) -> P = %b (%d)", A, A, B, B, P, P);


        // Test 5: One operand is a power of 2
        #10 A = 4'b1000; B = 4'b0011; // 8 * 3
        #10 $display("A = %b (%d), B = %b (%d) -> P = %b (%d)", A, A, B, B, P, P);


        // Test 6: Random values
        #10 A = 4'b1101; B = 4'b1011; // 13 * 11
        #10 $display("A = %b (%d), B = %b (%d) -> P = %b (%d)", A, A, B, B, P, P);


        #10 A = 4'b0111; B = 4'b0010; // 7 * 2
        #10 $display("A = %b (%d), B = %b (%d) -> P = %b (%d)", A, A, B, B, P, P);


        // Test 7: Edge cases
        #10 A = 4'b0001; B = 4'b1111; // 1 * 15
        #10 $display("A = %b (%d), B = %b (%d) -> P = %b (%d)", A, A, B, B, P, P);


        #10 A = 4'b1111; B = 4'b0001; // 15 * 1
        #10 $display("A = %b (%d), B = %b (%d) -> P = %b (%d)", A, A, B, B, P, P);


        // Test 8: Large asymmetry
        #10 A = 4'b1111; B = 4'b1111; // 15 * 15
        #10 $display("A = %b (%d), B = %b (%d) -> P = %b (%d)", A, A, B, B, P, P);

        // End simulation
        $finish;
    end
endmodule
