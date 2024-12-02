module simple_adder_tb;
    parameter WIDTH = 8;
    
    reg [WIDTH-1:0] A, B;             // Test inputs
    wire [WIDTH-1:0] Sum;             // Test output
    wire Cout;                        // Carry-out
    
    // Instantiate the GenericAdder
    generic_simple_adder_detailed_routing#(WIDTH) uut (
        .A(A),
        .B(B),
        .Sum(Sum),
        .Cout(Cout)
    );
    
    initial begin

        // Test case 0
        A = 8'b00000000; 
        B = 8'b00000000; 
        #10;             // Wait for 10 time units
        $display("A=%b, B=%b, Sum=%b, Cout=%b", A, B, Sum, Cout);

        // Test case 1
        A = 8'b00011111; // 15
        B = 8'b00000001; // 1
        #10;             // Wait for 10 time units
        $display("A=%b, B=%b, Sum=%b, Cout=%b", A, B, Sum, Cout);

        // Test case 2
        A = 8'b11111111; // 255
        B = 8'b00000001; // 1
        #10;
        $display("A=%b, B=%b, Sum=%b, Cout=%b", A, B, Sum, Cout);

        // Test case 3
        A = 8'b00001010; // 170
        B = 8'b0000101; // 85
        #10;
        $display("A=%b, B=%b, Sum=%b, Cout=%b", A, B, Sum, Cout);

        $finish;         // End simulation
    end
endmodule
