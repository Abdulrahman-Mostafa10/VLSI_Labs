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
 wire VPWR;
 wire VGND;

 sky130_fd_sc_hd__nor2_2 _34_ (.A(A[0]),
    .B(Cin),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_00_));
 sky130_fd_sc_hd__inv_2 _35_ (.A(_00_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_01_));
 sky130_fd_sc_hd__a21oi_2 _36_ (.A1(A[0]),
    .A2(Cin),
    .B1(B[0]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_02_));
 sky130_fd_sc_hd__or2_2 _37_ (.A(_00_),
    .B(_02_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_03_));
 sky130_fd_sc_hd__nand2_2 _38_ (.A(B[1]),
    .B(A[1]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_04_));
 sky130_fd_sc_hd__nor2_2 _39_ (.A(B[1]),
    .B(A[1]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_05_));
 sky130_fd_sc_hd__nand2_2 _40_ (.A(_03_),
    .B(_05_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_06_));
 sky130_fd_sc_hd__o21a_2 _41_ (.A1(_03_),
    .A2(_05_),
    .B1(_04_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_07_));
 sky130_fd_sc_hd__a2bb2o_2 _42_ (.A1_N(_03_),
    .A2_N(_04_),
    .B1(_06_),
    .B2(_07_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(\ripple_adder[1].FA.sum ));
 sky130_fd_sc_hd__nand2_2 _43_ (.A(B[2]),
    .B(A[2]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_08_));
 sky130_fd_sc_hd__nor2_2 _44_ (.A(B[2]),
    .B(A[2]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_09_));
 sky130_fd_sc_hd__nand2_2 _45_ (.A(_07_),
    .B(_09_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_10_));
 sky130_fd_sc_hd__o311a_2 _46_ (.A1(_00_),
    .A2(_02_),
    .A3(_05_),
    .B1(_08_),
    .C1(_04_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_11_));
 sky130_fd_sc_hd__or2_2 _47_ (.A(_09_),
    .B(_11_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_12_));
 sky130_fd_sc_hd__a2bb2o_2 _48_ (.A1_N(_07_),
    .A2_N(_08_),
    .B1(_10_),
    .B2(_12_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(\ripple_adder[2].FA.sum ));
 sky130_fd_sc_hd__nor2_2 _49_ (.A(B[3]),
    .B(A[3]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_13_));
 sky130_fd_sc_hd__nand2_2 _50_ (.A(_12_),
    .B(_13_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_14_));
 sky130_fd_sc_hd__nand2_2 _51_ (.A(B[3]),
    .B(A[3]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_15_));
 sky130_fd_sc_hd__o21a_2 _52_ (.A1(_12_),
    .A2(_13_),
    .B1(_15_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_16_));
 sky130_fd_sc_hd__a2bb2o_2 _53_ (.A1_N(_12_),
    .A2_N(_15_),
    .B1(_16_),
    .B2(_14_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(\ripple_adder[3].FA.sum ));
 sky130_fd_sc_hd__nor2_2 _54_ (.A(B[4]),
    .B(A[4]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_17_));
 sky130_fd_sc_hd__nand2_2 _55_ (.A(B[4]),
    .B(A[4]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_18_));
 sky130_fd_sc_hd__and2b_2 _56_ (.A_N(_17_),
    .B(_18_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_19_));
 sky130_fd_sc_hd__xnor2_2 _57_ (.A(_16_),
    .B(_19_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(\ripple_adder[4].FA.sum ));
 sky130_fd_sc_hd__nor2_2 _58_ (.A(B[5]),
    .B(A[5]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_20_));
 sky130_fd_sc_hd__nand2_2 _59_ (.A(B[5]),
    .B(A[5]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_21_));
 sky130_fd_sc_hd__nand2b_2 _60_ (.A_N(_20_),
    .B(_21_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_22_));
 sky130_fd_sc_hd__o311a_2 _61_ (.A1(_09_),
    .A2(_11_),
    .A3(_13_),
    .B1(_15_),
    .C1(_18_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_23_));
 sky130_fd_sc_hd__nor2_2 _62_ (.A(_17_),
    .B(_23_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_24_));
 sky130_fd_sc_hd__xnor2_2 _63_ (.A(_22_),
    .B(_24_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(\ripple_adder[5].FA.sum ));
 sky130_fd_sc_hd__nor2_2 _64_ (.A(B[6]),
    .B(A[6]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_25_));
 sky130_fd_sc_hd__nand2_2 _65_ (.A(B[6]),
    .B(A[6]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_26_));
 sky130_fd_sc_hd__and2b_2 _66_ (.A_N(_25_),
    .B(_26_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_27_));
 sky130_fd_sc_hd__o31a_2 _67_ (.A1(_17_),
    .A2(_20_),
    .A3(_23_),
    .B1(_21_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_28_));
 sky130_fd_sc_hd__xnor2_2 _68_ (.A(_27_),
    .B(_28_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(\ripple_adder[6].FA.sum ));
 sky130_fd_sc_hd__or2_2 _69_ (.A(B[7]),
    .B(A[7]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_29_));
 sky130_fd_sc_hd__nand2_2 _70_ (.A(B[7]),
    .B(A[7]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_30_));
 sky130_fd_sc_hd__o21ai_2 _71_ (.A1(_25_),
    .A2(_28_),
    .B1(_26_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_31_));
 sky130_fd_sc_hd__a21bo_2 _72_ (.A1(_29_),
    .A2(_31_),
    .B1_N(_30_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(Cout));
 sky130_fd_sc_hd__nand2_2 _73_ (.A(_29_),
    .B(_30_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_32_));
 sky130_fd_sc_hd__xnor2_2 _74_ (.A(_31_),
    .B(_32_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(\ripple_adder[7].FA.sum ));
 sky130_fd_sc_hd__and3_2 _75_ (.A(B[0]),
    .B(A[0]),
    .C(Cin),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_33_));
 sky130_fd_sc_hd__o22a_2 _76_ (.A1(B[0]),
    .A2(_01_),
    .B1(_03_),
    .B2(_33_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(\ripple_adder[0].FA.sum ));
 sky130_fd_sc_hd__buf_2 _77_ (.A(\ripple_adder[0].FA.sum ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(Sum[0]));
 sky130_fd_sc_hd__buf_2 _78_ (.A(\ripple_adder[1].FA.sum ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(Sum[1]));
 sky130_fd_sc_hd__buf_2 _79_ (.A(\ripple_adder[2].FA.sum ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(Sum[2]));
 sky130_fd_sc_hd__buf_2 _80_ (.A(\ripple_adder[3].FA.sum ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(Sum[3]));
 sky130_fd_sc_hd__buf_2 _81_ (.A(\ripple_adder[4].FA.sum ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(Sum[4]));
 sky130_fd_sc_hd__buf_2 _82_ (.A(\ripple_adder[5].FA.sum ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(Sum[5]));
 sky130_fd_sc_hd__buf_2 _83_ (.A(\ripple_adder[6].FA.sum ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(Sum[6]));
 sky130_fd_sc_hd__buf_2 _84_ (.A(\ripple_adder[7].FA.sum ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(Sum[7]));
endmodule
