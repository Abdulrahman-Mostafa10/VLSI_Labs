module generic_piplined_multiplier #(parameter WIDTH = 8) (
    input wire clk,
    input wire rst,
    input wire [WIDTH-1:0] A,
    input wire [WIDTH-1:0] B,
    output reg [2*WIDTH-1:0] Result
);

    reg [WIDTH-1:0] A_reg0, A_reg1, A_reg2;
    reg [WIDTH-1:0] B_reg0, B_reg1, B_reg2;
    reg [2*WIDTH-1:0] Product_reg0, Product_reg1, Product_reg2;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            A_reg0 <= 0;
            B_reg0 <= 0;
            Product_reg0 <= 0;

            A_reg1 <= 0;
            B_reg1 <= 0;
            Product_reg1 <= 0;

            A_reg2 <= 0;
            B_reg2 <= 0;
            Product_reg2 <= 0;

            Result <= 0;
        end else begin
            A_reg0 <= A;
            B_reg0 <= B;
            Product_reg0 <= A * B;

            A_reg1 <= A_reg0;
            B_reg1 <= B_reg0;
            Product_reg1 <= Product_reg0;

            A_reg2 <= A_reg1;
            B_reg2 <= B_reg1;
            Product_reg2 <= Product_reg1;

            Result <= Product_reg2;
        end
    end

endmodule
