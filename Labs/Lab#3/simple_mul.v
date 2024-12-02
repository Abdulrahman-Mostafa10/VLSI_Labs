module simple_mult #(parameter WIDTH = 4) (
    input  [WIDTH-1:0] A,   
    input  [WIDTH-1:0] B,   
    output [2*WIDTH-1:0] P  
);

    assign P = A * B;

endmodule
