module generic_simple_adder_detailed_routing (Cout,
    A,
    B,
    Sum);
 output Cout;
 input [7:0] A;
 input [7:0] B;
 output [7:0] Sum;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire _13_;
 wire _14_;
 wire _15_;
 wire _16_;
 wire _17_;
 wire _18_;
 wire _19_;
 wire _20_;
 wire _21_;
 wire _22_;
 wire _23_;
 wire _24_;
 wire _25_;
 wire _26_;
 wire _27_;
 wire _28_;
 wire _29_;
 wire _30_;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;

 sky130_fd_sc_hd__nand2_1 _31_ (.A(net8),
    .B(net16),
    .Y(_00_));
 sky130_fd_sc_hd__or2_1 _32_ (.A(net8),
    .B(net16),
    .X(_01_));
 sky130_fd_sc_hd__nand2_1 _33_ (.A(_00_),
    .B(_01_),
    .Y(_02_));
 sky130_fd_sc_hd__xor2_1 _34_ (.A(net7),
    .B(net15),
    .X(_03_));
 sky130_fd_sc_hd__or2_1 _35_ (.A(net6),
    .B(net14),
    .X(_04_));
 sky130_fd_sc_hd__nand2_1 _36_ (.A(net5),
    .B(net13),
    .Y(_05_));
 sky130_fd_sc_hd__or2_1 _37_ (.A(net5),
    .B(net13),
    .X(_06_));
 sky130_fd_sc_hd__and2_1 _38_ (.A(_05_),
    .B(_06_),
    .X(_07_));
 sky130_fd_sc_hd__or2_1 _39_ (.A(net4),
    .B(net12),
    .X(_08_));
 sky130_fd_sc_hd__and2_1 _40_ (.A(net3),
    .B(net11),
    .X(_09_));
 sky130_fd_sc_hd__nor2_1 _41_ (.A(net3),
    .B(net11),
    .Y(_10_));
 sky130_fd_sc_hd__nor2_1 _42_ (.A(_09_),
    .B(_10_),
    .Y(_11_));
 sky130_fd_sc_hd__and2_1 _43_ (.A(net2),
    .B(net10),
    .X(_12_));
 sky130_fd_sc_hd__nand2_1 _44_ (.A(net1),
    .B(net9),
    .Y(_13_));
 sky130_fd_sc_hd__nor2_1 _45_ (.A(net2),
    .B(net10),
    .Y(_14_));
 sky130_fd_sc_hd__nor2_1 _46_ (.A(_12_),
    .B(_14_),
    .Y(_15_));
 sky130_fd_sc_hd__o21bai_2 _47_ (.A1(_13_),
    .A2(_14_),
    .B1_N(_12_),
    .Y(_16_));
 sky130_fd_sc_hd__nand2_1 _48_ (.A(net4),
    .B(net12),
    .Y(_17_));
 sky130_fd_sc_hd__a221o_1 _49_ (.A1(net4),
    .A2(net12),
    .B1(_11_),
    .B2(_16_),
    .C1(_09_),
    .X(_18_));
 sky130_fd_sc_hd__nand2_1 _50_ (.A(_08_),
    .B(_17_),
    .Y(_19_));
 sky130_fd_sc_hd__nand3_1 _51_ (.A(_07_),
    .B(_08_),
    .C(_18_),
    .Y(_20_));
 sky130_fd_sc_hd__nand2_1 _52_ (.A(net6),
    .B(net14),
    .Y(_21_));
 sky130_fd_sc_hd__nand2_1 _53_ (.A(_05_),
    .B(_21_),
    .Y(_22_));
 sky130_fd_sc_hd__a31o_1 _54_ (.A1(_07_),
    .A2(_08_),
    .A3(_18_),
    .B1(_22_),
    .X(_23_));
 sky130_fd_sc_hd__nand2_1 _55_ (.A(_04_),
    .B(_23_),
    .Y(_24_));
 sky130_fd_sc_hd__a32o_1 _56_ (.A1(_03_),
    .A2(_04_),
    .A3(_23_),
    .B1(net15),
    .B2(net7),
    .X(_25_));
 sky130_fd_sc_hd__a21bo_1 _57_ (.A1(_01_),
    .A2(_25_),
    .B1_N(_00_),
    .X(net17));
 sky130_fd_sc_hd__xnor2_1 _58_ (.A(_13_),
    .B(_15_),
    .Y(net19));
 sky130_fd_sc_hd__xor2_1 _59_ (.A(_11_),
    .B(_16_),
    .X(net20));
 sky130_fd_sc_hd__a21o_1 _60_ (.A1(_11_),
    .A2(_16_),
    .B1(_09_),
    .X(_26_));
 sky130_fd_sc_hd__xnor2_1 _61_ (.A(_19_),
    .B(_26_),
    .Y(net21));
 sky130_fd_sc_hd__a21o_1 _62_ (.A1(_08_),
    .A2(_18_),
    .B1(_07_),
    .X(_27_));
 sky130_fd_sc_hd__and2_1 _63_ (.A(_20_),
    .B(_27_),
    .X(net22));
 sky130_fd_sc_hd__a22o_1 _64_ (.A1(_05_),
    .A2(_20_),
    .B1(_21_),
    .B2(_04_),
    .X(_28_));
 sky130_fd_sc_hd__nand4_1 _65_ (.A(_04_),
    .B(_05_),
    .C(_20_),
    .D(_21_),
    .Y(_29_));
 sky130_fd_sc_hd__nand2_1 _66_ (.A(_28_),
    .B(_29_),
    .Y(net23));
 sky130_fd_sc_hd__xnor2_1 _67_ (.A(_03_),
    .B(_24_),
    .Y(net24));
 sky130_fd_sc_hd__xnor2_1 _68_ (.A(_02_),
    .B(_25_),
    .Y(net25));
 sky130_fd_sc_hd__or2_1 _69_ (.A(net1),
    .B(net9),
    .X(_30_));
 sky130_fd_sc_hd__and2_1 _70_ (.A(_13_),
    .B(_30_),
    .X(net18));
 sky130_fd_sc_hd__clkbuf_1 input1 (.A(A[0]),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_1 input2 (.A(A[1]),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_1 input3 (.A(A[2]),
    .X(net3));
 sky130_fd_sc_hd__clkbuf_1 input4 (.A(A[3]),
    .X(net4));
 sky130_fd_sc_hd__clkbuf_1 input5 (.A(A[4]),
    .X(net5));
 sky130_fd_sc_hd__clkbuf_1 input6 (.A(A[5]),
    .X(net6));
 sky130_fd_sc_hd__buf_1 input7 (.A(A[6]),
    .X(net7));
 sky130_fd_sc_hd__clkbuf_1 input8 (.A(A[7]),
    .X(net8));
 sky130_fd_sc_hd__clkbuf_1 input9 (.A(B[0]),
    .X(net9));
 sky130_fd_sc_hd__clkbuf_1 input10 (.A(B[1]),
    .X(net10));
 sky130_fd_sc_hd__clkbuf_1 input11 (.A(B[2]),
    .X(net11));
 sky130_fd_sc_hd__buf_1 input12 (.A(B[3]),
    .X(net12));
 sky130_fd_sc_hd__clkbuf_1 input13 (.A(B[4]),
    .X(net13));
 sky130_fd_sc_hd__clkbuf_1 input14 (.A(B[5]),
    .X(net14));
 sky130_fd_sc_hd__buf_1 input15 (.A(B[6]),
    .X(net15));
 sky130_fd_sc_hd__clkbuf_1 input16 (.A(B[7]),
    .X(net16));
 sky130_fd_sc_hd__buf_2 output17 (.A(net17),
    .X(Cout));
 sky130_fd_sc_hd__buf_2 output18 (.A(net18),
    .X(Sum[0]));
 sky130_fd_sc_hd__buf_2 output19 (.A(net19),
    .X(Sum[1]));
 sky130_fd_sc_hd__buf_2 output20 (.A(net20),
    .X(Sum[2]));
 sky130_fd_sc_hd__buf_2 output21 (.A(net21),
    .X(Sum[3]));
 sky130_fd_sc_hd__buf_2 output22 (.A(net22),
    .X(Sum[4]));
 sky130_fd_sc_hd__buf_2 output23 (.A(net23),
    .X(Sum[5]));
 sky130_fd_sc_hd__buf_2 output24 (.A(net24),
    .X(Sum[6]));
 sky130_fd_sc_hd__buf_2 output25 (.A(net25),
    .X(Sum[7]));
endmodule
