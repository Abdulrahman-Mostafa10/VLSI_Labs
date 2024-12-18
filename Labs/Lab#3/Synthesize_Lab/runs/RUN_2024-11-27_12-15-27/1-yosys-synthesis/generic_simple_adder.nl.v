/* Generated by Yosys 0.46 (git sha1 e97731b9dda91fa5fa53ed87df7c34163ba59a41, clang++ 17.0.6 -fPIC -O3) */

module generic_simple_adder(A, B, Sum, Cout);
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
  input [7:0] A;
  wire [7:0] A;
  input [7:0] B;
  wire [7:0] B;
  output Cout;
  wire Cout;
  output [7:0] Sum;
  wire [7:0] Sum;
  sky130_fd_sc_hd__nand2_2 _31_ (
    .A(A[7]),
    .B(B[7]),
    .Y(_00_)
  );
  sky130_fd_sc_hd__or2_2 _32_ (
    .A(A[7]),
    .B(B[7]),
    .X(_01_)
  );
  sky130_fd_sc_hd__nand2_2 _33_ (
    .A(_00_),
    .B(_01_),
    .Y(_02_)
  );
  sky130_fd_sc_hd__xor2_2 _34_ (
    .A(A[6]),
    .B(B[6]),
    .X(_03_)
  );
  sky130_fd_sc_hd__or2_2 _35_ (
    .A(A[5]),
    .B(B[5]),
    .X(_04_)
  );
  sky130_fd_sc_hd__nand2_2 _36_ (
    .A(A[4]),
    .B(B[4]),
    .Y(_05_)
  );
  sky130_fd_sc_hd__or2_2 _37_ (
    .A(A[4]),
    .B(B[4]),
    .X(_06_)
  );
  sky130_fd_sc_hd__and2_2 _38_ (
    .A(_05_),
    .B(_06_),
    .X(_07_)
  );
  sky130_fd_sc_hd__or2_2 _39_ (
    .A(A[3]),
    .B(B[3]),
    .X(_08_)
  );
  sky130_fd_sc_hd__and2_2 _40_ (
    .A(A[2]),
    .B(B[2]),
    .X(_09_)
  );
  sky130_fd_sc_hd__nor2_2 _41_ (
    .A(A[2]),
    .B(B[2]),
    .Y(_10_)
  );
  sky130_fd_sc_hd__nor2_2 _42_ (
    .A(_09_),
    .B(_10_),
    .Y(_11_)
  );
  sky130_fd_sc_hd__and2_2 _43_ (
    .A(A[1]),
    .B(B[1]),
    .X(_12_)
  );
  sky130_fd_sc_hd__nand2_2 _44_ (
    .A(A[0]),
    .B(B[0]),
    .Y(_13_)
  );
  sky130_fd_sc_hd__nor2_2 _45_ (
    .A(A[1]),
    .B(B[1]),
    .Y(_14_)
  );
  sky130_fd_sc_hd__nor2_2 _46_ (
    .A(_12_),
    .B(_14_),
    .Y(_15_)
  );
  sky130_fd_sc_hd__o21bai_2 _47_ (
    .A1(_13_),
    .A2(_14_),
    .B1_N(_12_),
    .Y(_16_)
  );
  sky130_fd_sc_hd__nand2_2 _48_ (
    .A(A[3]),
    .B(B[3]),
    .Y(_17_)
  );
  sky130_fd_sc_hd__a221o_2 _49_ (
    .A1(A[3]),
    .A2(B[3]),
    .B1(_11_),
    .B2(_16_),
    .C1(_09_),
    .X(_18_)
  );
  sky130_fd_sc_hd__nand2_2 _50_ (
    .A(_08_),
    .B(_17_),
    .Y(_19_)
  );
  sky130_fd_sc_hd__nand3_2 _51_ (
    .A(_07_),
    .B(_08_),
    .C(_18_),
    .Y(_20_)
  );
  sky130_fd_sc_hd__nand2_2 _52_ (
    .A(A[5]),
    .B(B[5]),
    .Y(_21_)
  );
  sky130_fd_sc_hd__nand2_2 _53_ (
    .A(_05_),
    .B(_21_),
    .Y(_22_)
  );
  sky130_fd_sc_hd__a31o_2 _54_ (
    .A1(_07_),
    .A2(_08_),
    .A3(_18_),
    .B1(_22_),
    .X(_23_)
  );
  sky130_fd_sc_hd__nand2_2 _55_ (
    .A(_04_),
    .B(_23_),
    .Y(_24_)
  );
  sky130_fd_sc_hd__a32o_2 _56_ (
    .A1(_03_),
    .A2(_04_),
    .A3(_23_),
    .B1(B[6]),
    .B2(A[6]),
    .X(_25_)
  );
  sky130_fd_sc_hd__a21bo_2 _57_ (
    .A1(_01_),
    .A2(_25_),
    .B1_N(_00_),
    .X(Cout)
  );
  sky130_fd_sc_hd__xnor2_2 _58_ (
    .A(_13_),
    .B(_15_),
    .Y(Sum[1])
  );
  sky130_fd_sc_hd__xor2_2 _59_ (
    .A(_11_),
    .B(_16_),
    .X(Sum[2])
  );
  sky130_fd_sc_hd__a21o_2 _60_ (
    .A1(_11_),
    .A2(_16_),
    .B1(_09_),
    .X(_26_)
  );
  sky130_fd_sc_hd__xnor2_2 _61_ (
    .A(_19_),
    .B(_26_),
    .Y(Sum[3])
  );
  sky130_fd_sc_hd__a21o_2 _62_ (
    .A1(_08_),
    .A2(_18_),
    .B1(_07_),
    .X(_27_)
  );
  sky130_fd_sc_hd__and2_2 _63_ (
    .A(_20_),
    .B(_27_),
    .X(Sum[4])
  );
  sky130_fd_sc_hd__a22o_2 _64_ (
    .A1(_05_),
    .A2(_20_),
    .B1(_21_),
    .B2(_04_),
    .X(_28_)
  );
  sky130_fd_sc_hd__nand4_2 _65_ (
    .A(_04_),
    .B(_05_),
    .C(_20_),
    .D(_21_),
    .Y(_29_)
  );
  sky130_fd_sc_hd__nand2_2 _66_ (
    .A(_28_),
    .B(_29_),
    .Y(Sum[5])
  );
  sky130_fd_sc_hd__xnor2_2 _67_ (
    .A(_03_),
    .B(_24_),
    .Y(Sum[6])
  );
  sky130_fd_sc_hd__xnor2_2 _68_ (
    .A(_02_),
    .B(_25_),
    .Y(Sum[7])
  );
  sky130_fd_sc_hd__or2_2 _69_ (
    .A(A[0]),
    .B(B[0]),
    .X(_30_)
  );
  sky130_fd_sc_hd__and2_2 _70_ (
    .A(_13_),
    .B(_30_),
    .X(Sum[0])
  );
endmodule
