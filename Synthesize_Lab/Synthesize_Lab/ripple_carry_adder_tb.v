module generic_ripple_carry_adder_tb;

    parameter WIDTH = 8;

    reg [WIDTH-1:0] A, B;   
    reg Cin;           
    wire [WIDTH-1:0] Sum; 
    wire Cout;          

    generic_ripple_carry_adder_detailed_routing #(WIDTH) UUT (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    initial begin
        A = 0; B = 0; Cin = 0;

        // Test 1: Add two zero values
        #10 A = 4'b0000; B = 4'b0000; Cin = 1'b0;
        #10 $display("A = %b, B = %b, Cin = %b -> Sum = %b, Cout = %b", A, B, Cin, Sum, Cout);

        // Test 2: Add maximum values without carry-in
        #10 A = 4'b1111; B = 4'b1111; Cin = 1'b0;
        #10 $display("A = %b, B = %b, Cin = %b -> Sum = %b, Cout = %b", A, B, Cin, Sum, Cout);

        // Test 3: Add maximum values with carry-in
        #10 A = 4'b1111; B = 4'b1111; Cin = 1'b1;
        #10 $display("A = %b, B = %b, Cin = %b -> Sum = %b, Cout = %b", A, B, Cin, Sum, Cout);

        // Test 4: Add minimum values with carry-in
        #10 A = 4'b0000; B = 4'b0000; Cin = 1'b1;
        #10 $display("A = %b, B = %b, Cin = %b -> Sum = %b, Cout = %b", A, B, Cin, Sum, Cout);

        // Test 5: Add alternating patterns
        #10 A = 4'b1010; B = 4'b0101; Cin = 1'b0;
        #10 $display("A = %b, B = %b, Cin = %b -> Sum = %b, Cout = %b", A, B, Cin, Sum, Cout);

        // Test 6: Add values to force carry propagation
        #10 A = 4'b0111; B = 4'b0001; Cin = 1'b0; // Forces carry through all bits
        #10 $display("A = %b, B = %b, Cin = %b -> Sum = %b, Cout = %b", A, B, Cin, Sum, Cout);

        // Test 7: Add values to force carry-in propagation
        #10 A = 4'b0111; B = 4'b0000; Cin = 1'b1; // Forces carry propagation due to Cin
        #10 $display("A = %b, B = %b, Cin = %b -> Sum = %b, Cout = %b", A, B, Cin, Sum, Cout);

        // Test 8: Single bit values (basic cases)
        #10 A = 4'b0001; B = 4'b0000; Cin = 1'b0;
        #10 $display("A = %b, B = %b, Cin = %b -> Sum = %b, Cout = %b", A, B, Cin, Sum, Cout);

        #10 A = 4'b0000; B = 4'b0001; Cin = 1'b0;
        #10 $display("A = %b, B = %b, Cin = %b -> Sum = %b, Cout = %b", A, B, Cin, Sum, Cout);

        // Test 9: Carry-out overflow
        #10 A = 4'b1000; B = 4'b1000; Cin = 1'b1;
        #10 $display("A = %b, B = %b, Cin = %b -> Sum = %b, Cout = %b", A, B, Cin, Sum, Cout);


        // Test 10: Random values
        #10 A = 4'b1101; B = 4'b1011; Cin = 1'b0;
        #10 $display("A = %b, B = %b, Cin = %b -> Sum = %b, Cout = %b", A, B, Cin, Sum, Cout);


        #10 A = 4'b1110; B = 4'b0001; Cin = 1'b1;
        #10 $display("A = %b, B = %b, Cin = %b -> Sum = %b, Cout = %b", A, B, Cin, Sum, Cout);

        $finish;
    end
endmodule
