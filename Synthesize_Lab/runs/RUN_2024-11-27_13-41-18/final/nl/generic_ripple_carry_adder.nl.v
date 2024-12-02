module generic_ripple_carry_adder (Cin,
    Cout,
    A,
    B,
    Sum);
 input Cin;
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
 wire _31_;
 wire _32_;
 wire _33_;
 wire \ripple_adder[0].FA.sum ;
 wire \ripple_adder[1].FA.sum ;
 wire \ripple_adder[2].FA.sum ;
 wire \ripple_adder[3].FA.sum ;
 wire \ripple_adder[4].FA.sum ;
 wire \ripple_adder[5].FA.sum ;
 wire \ripple_adder[6].FA.sum ;
 wire \ripple_adder[7].FA.sum ;
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
 wire net26;

 sky130_fd_sc_hd__nor2_1 _34_ (.A(net1),
    .B(net17),
    .Y(_00_));
 sky130_fd_sc_hd__inv_2 _35_ (.A(_00_),
    .Y(_01_));
 sky130_fd_sc_hd__a21oi_1 _36_ (.A1(net1),
    .A2(net17),
    .B1(net9),
    .Y(_02_));
 sky130_fd_sc_hd__or2_1 _37_ (.A(_00_),
    .B(_02_),
    .X(_03_));
 sky130_fd_sc_hd__nand2_1 _38_ (.A(net10),
    .B(net2),
    .Y(_04_));
 sky130_fd_sc_hd__nor2_1 _39_ (.A(net10),
    .B(net2),
    .Y(_05_));
 sky130_fd_sc_hd__nand2_1 _40_ (.A(_03_),
    .B(_05_),
    .Y(_06_));
 sky130_fd_sc_hd__o21a_1 _41_ (.A1(_03_),
    .A2(_05_),
    .B1(_04_),
    .X(_07_));
 sky130_fd_sc_hd__a2bb2o_1 _42_ (.A1_N(_03_),
    .A2_N(_04_),
    .B1(_06_),
    .B2(_07_),
    .X(\ripple_adder[1].FA.sum ));
 sky130_fd_sc_hd__nand2_1 _43_ (.A(net11),
    .B(net3),
    .Y(_08_));
 sky130_fd_sc_hd__nor2_1 _44_ (.A(net11),
    .B(net3),
    .Y(_09_));
 sky130_fd_sc_hd__nand2_1 _45_ (.A(_07_),
    .B(_09_),
    .Y(_10_));
 sky130_fd_sc_hd__o311a_1 _46_ (.A1(_00_),
    .A2(_02_),
    .A3(_05_),
    .B1(_08_),
    .C1(_04_),
    .X(_11_));
 sky130_fd_sc_hd__or2_1 _47_ (.A(_09_),
    .B(_11_),
    .X(_12_));
 sky130_fd_sc_hd__a2bb2o_1 _48_ (.A1_N(_07_),
    .A2_N(_08_),
    .B1(_10_),
    .B2(_12_),
    .X(\ripple_adder[2].FA.sum ));
 sky130_fd_sc_hd__nor2_1 _49_ (.A(net12),
    .B(net4),
    .Y(_13_));
 sky130_fd_sc_hd__nand2_1 _50_ (.A(_12_),
    .B(_13_),
    .Y(_14_));
 sky130_fd_sc_hd__nand2_1 _51_ (.A(net12),
    .B(net4),
    .Y(_15_));
 sky130_fd_sc_hd__o21a_1 _52_ (.A1(_12_),
    .A2(_13_),
    .B1(_15_),
    .X(_16_));
 sky130_fd_sc_hd__a2bb2o_1 _53_ (.A1_N(_12_),
    .A2_N(_15_),
    .B1(_16_),
    .B2(_14_),
    .X(\ripple_adder[3].FA.sum ));
 sky130_fd_sc_hd__nor2_1 _54_ (.A(net13),
    .B(net5),
    .Y(_17_));
 sky130_fd_sc_hd__nand2_1 _55_ (.A(net13),
    .B(net5),
    .Y(_18_));
 sky130_fd_sc_hd__and2b_1 _56_ (.A_N(_17_),
    .B(_18_),
    .X(_19_));
 sky130_fd_sc_hd__xnor2_1 _57_ (.A(_16_),
    .B(_19_),
    .Y(\ripple_adder[4].FA.sum ));
 sky130_fd_sc_hd__nor2_1 _58_ (.A(net14),
    .B(net6),
    .Y(_20_));
 sky130_fd_sc_hd__nand2_1 _59_ (.A(net14),
    .B(net6),
    .Y(_21_));
 sky130_fd_sc_hd__nand2b_1 _60_ (.A_N(_20_),
    .B(_21_),
    .Y(_22_));
 sky130_fd_sc_hd__o311a_1 _61_ (.A1(_09_),
    .A2(_11_),
    .A3(_13_),
    .B1(_15_),
    .C1(_18_),
    .X(_23_));
 sky130_fd_sc_hd__nor2_1 _62_ (.A(_17_),
    .B(_23_),
    .Y(_24_));
 sky130_fd_sc_hd__xnor2_1 _63_ (.A(_22_),
    .B(_24_),
    .Y(\ripple_adder[5].FA.sum ));
 sky130_fd_sc_hd__nor2_1 _64_ (.A(net15),
    .B(net7),
    .Y(_25_));
 sky130_fd_sc_hd__nand2_1 _65_ (.A(net15),
    .B(net7),
    .Y(_26_));
 sky130_fd_sc_hd__and2b_1 _66_ (.A_N(_25_),
    .B(_26_),
    .X(_27_));
 sky130_fd_sc_hd__o31a_1 _67_ (.A1(_17_),
    .A2(_20_),
    .A3(_23_),
    .B1(_21_),
    .X(_28_));
 sky130_fd_sc_hd__xnor2_1 _68_ (.A(_27_),
    .B(_28_),
    .Y(\ripple_adder[6].FA.sum ));
 sky130_fd_sc_hd__or2_1 _69_ (.A(net16),
    .B(net8),
    .X(_29_));
 sky130_fd_sc_hd__nand2_1 _70_ (.A(net16),
    .B(net8),
    .Y(_30_));
 sky130_fd_sc_hd__o21ai_1 _71_ (.A1(_25_),
    .A2(_28_),
    .B1(_26_),
    .Y(_31_));
 sky130_fd_sc_hd__a21bo_1 _72_ (.A1(_29_),
    .A2(_31_),
    .B1_N(_30_),
    .X(net18));
 sky130_fd_sc_hd__nand2_1 _73_ (.A(_29_),
    .B(_30_),
    .Y(_32_));
 sky130_fd_sc_hd__xnor2_1 _74_ (.A(_31_),
    .B(_32_),
    .Y(\ripple_adder[7].FA.sum ));
 sky130_fd_sc_hd__and3_1 _75_ (.A(net9),
    .B(net1),
    .C(net17),
    .X(_33_));
 sky130_fd_sc_hd__o22a_1 _76_ (.A1(net9),
    .A2(_01_),
    .B1(_03_),
    .B2(_33_),
    .X(\ripple_adder[0].FA.sum ));
 sky130_fd_sc_hd__clkbuf_1 _77_ (.A(\ripple_adder[0].FA.sum ),
    .X(net19));
 sky130_fd_sc_hd__clkbuf_1 _78_ (.A(\ripple_adder[1].FA.sum ),
    .X(net20));
 sky130_fd_sc_hd__clkbuf_1 _79_ (.A(\ripple_adder[2].FA.sum ),
    .X(net21));
 sky130_fd_sc_hd__clkbuf_1 _80_ (.A(\ripple_adder[3].FA.sum ),
    .X(net22));
 sky130_fd_sc_hd__clkbuf_1 _81_ (.A(\ripple_adder[4].FA.sum ),
    .X(net23));
 sky130_fd_sc_hd__clkbuf_1 _82_ (.A(\ripple_adder[5].FA.sum ),
    .X(net24));
 sky130_fd_sc_hd__clkbuf_1 _83_ (.A(\ripple_adder[6].FA.sum ),
    .X(net25));
 sky130_fd_sc_hd__clkbuf_1 _84_ (.A(\ripple_adder[7].FA.sum ),
    .X(net26));
 sky130_fd_sc_hd__buf_1 input1 (.A(A[0]),
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
 sky130_fd_sc_hd__clkbuf_1 input7 (.A(A[6]),
    .X(net7));
 sky130_fd_sc_hd__clkbuf_1 input8 (.A(A[7]),
    .X(net8));
 sky130_fd_sc_hd__buf_1 input9 (.A(B[0]),
    .X(net9));
 sky130_fd_sc_hd__clkbuf_1 input10 (.A(B[1]),
    .X(net10));
 sky130_fd_sc_hd__clkbuf_1 input11 (.A(B[2]),
    .X(net11));
 sky130_fd_sc_hd__clkbuf_1 input12 (.A(B[3]),
    .X(net12));
 sky130_fd_sc_hd__clkbuf_1 input13 (.A(B[4]),
    .X(net13));
 sky130_fd_sc_hd__clkbuf_1 input14 (.A(B[5]),
    .X(net14));
 sky130_fd_sc_hd__clkbuf_1 input15 (.A(B[6]),
    .X(net15));
 sky130_fd_sc_hd__clkbuf_1 input16 (.A(B[7]),
    .X(net16));
 sky130_fd_sc_hd__buf_1 input17 (.A(Cin),
    .X(net17));
 sky130_fd_sc_hd__buf_2 output18 (.A(net18),
    .X(Cout));
 sky130_fd_sc_hd__buf_2 output19 (.A(net19),
    .X(Sum[0]));
 sky130_fd_sc_hd__buf_2 output20 (.A(net20),
    .X(Sum[1]));
 sky130_fd_sc_hd__buf_2 output21 (.A(net21),
    .X(Sum[2]));
 sky130_fd_sc_hd__buf_2 output22 (.A(net22),
    .X(Sum[3]));
 sky130_fd_sc_hd__buf_2 output23 (.A(net23),
    .X(Sum[4]));
 sky130_fd_sc_hd__buf_2 output24 (.A(net24),
    .X(Sum[5]));
 sky130_fd_sc_hd__buf_2 output25 (.A(net25),
    .X(Sum[6]));
 sky130_fd_sc_hd__buf_2 output26 (.A(net26),
    .X(Sum[7]));
endmodule
