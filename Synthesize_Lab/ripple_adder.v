module generic_ripple_carry_adder #(parameter WIDTH = 8) (
    input  [WIDTH-1:0] A,  
    input  [WIDTH-1:0] B,  
    input           Cin, 
    output [WIDTH-1:0] Sum, 
    output          Cout 
);

    wire [WIDTH:0] carry;
    assign carry[0] = Cin; 

    genvar i;
    generate
        for (i = 0; i < WIDTH; i = i + 1) begin : ripple_adder
            full_adder FA (
                .a(A[i]),
                .b(B[i]),
                .cin(carry[i]),
                .sum(Sum[i]),
                .cout(carry[i+1])
            );
        end
    endgenerate

    assign Cout = carry[WIDTH];

endmodule

module full_adder (
    input  a,     
    input  b,     
    input  cin,   
    output sum,   
    output cout   
);

    assign sum = a ^ b ^ cin; 
    assign cout = (a & b) | (b & cin) | (a & cin); 

endmodule
