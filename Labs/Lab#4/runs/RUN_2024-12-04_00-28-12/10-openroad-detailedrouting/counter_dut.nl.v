module counter_dut_routing (clock,
    enable,
    reset,
    up_down,
    counter);
 input clock;
 input enable;
 input reset;
 input up_down;
 output [3:0] counter;

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
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;

 sky130_fd_sc_hd__inv_2 _23_ (.A(net3),
    .Y(_04_));
 sky130_fd_sc_hd__nand2_1 _24_ (.A(net2),
    .B(_04_),
    .Y(_05_));
 sky130_fd_sc_hd__nor2_1 _25_ (.A(_04_),
    .B(net4),
    .Y(_06_));
 sky130_fd_sc_hd__nor2_1 _26_ (.A(net2),
    .B(net3),
    .Y(_07_));
 sky130_fd_sc_hd__a21oi_1 _27_ (.A1(net5),
    .A2(_07_),
    .B1(_06_),
    .Y(_08_));
 sky130_fd_sc_hd__o21ai_1 _28_ (.A1(net5),
    .A2(_05_),
    .B1(_08_),
    .Y(_00_));
 sky130_fd_sc_hd__xor2_1 _29_ (.A(net5),
    .B(net6),
    .X(_09_));
 sky130_fd_sc_hd__or2_1 _30_ (.A(net4),
    .B(_09_),
    .X(_10_));
 sky130_fd_sc_hd__nand2_1 _31_ (.A(net4),
    .B(_09_),
    .Y(_11_));
 sky130_fd_sc_hd__nand2_1 _32_ (.A(_10_),
    .B(_11_),
    .Y(_12_));
 sky130_fd_sc_hd__a21o_1 _33_ (.A1(net6),
    .A2(_07_),
    .B1(_06_),
    .X(_13_));
 sky130_fd_sc_hd__a31o_1 _34_ (.A1(net2),
    .A2(_04_),
    .A3(_12_),
    .B1(_13_),
    .X(_01_));
 sky130_fd_sc_hd__a21o_1 _35_ (.A1(net5),
    .A2(net6),
    .B1(net7),
    .X(_14_));
 sky130_fd_sc_hd__nand3_1 _36_ (.A(net5),
    .B(net6),
    .C(net7),
    .Y(_15_));
 sky130_fd_sc_hd__nand2_1 _37_ (.A(_14_),
    .B(_15_),
    .Y(_16_));
 sky130_fd_sc_hd__xnor2_1 _38_ (.A(_10_),
    .B(_16_),
    .Y(_17_));
 sky130_fd_sc_hd__a21oi_1 _39_ (.A1(net7),
    .A2(_07_),
    .B1(_06_),
    .Y(_18_));
 sky130_fd_sc_hd__o21ai_1 _40_ (.A1(_05_),
    .A2(_17_),
    .B1(_18_),
    .Y(_02_));
 sky130_fd_sc_hd__o31ai_1 _41_ (.A1(net4),
    .A2(net5),
    .A3(net6),
    .B1(_15_),
    .Y(_19_));
 sky130_fd_sc_hd__nand2b_1 _42_ (.A_N(net4),
    .B(net7),
    .Y(_20_));
 sky130_fd_sc_hd__a31o_1 _43_ (.A1(net2),
    .A2(_19_),
    .A3(_20_),
    .B1(net8),
    .X(_21_));
 sky130_fd_sc_hd__nand4_1 _44_ (.A(net2),
    .B(net8),
    .C(_19_),
    .D(_20_),
    .Y(_22_));
 sky130_fd_sc_hd__a31o_1 _45_ (.A1(_04_),
    .A2(_21_),
    .A3(_22_),
    .B1(_06_),
    .X(_03_));
 sky130_fd_sc_hd__dfxtp_1 _46_ (.CLK(net1),
    .D(_00_),
    .Q(net5));
 sky130_fd_sc_hd__dfxtp_1 _47_ (.CLK(net1),
    .D(_01_),
    .Q(net6));
 sky130_fd_sc_hd__dfxtp_1 _48_ (.CLK(net1),
    .D(_02_),
    .Q(net7));
 sky130_fd_sc_hd__dfxtp_1 _49_ (.CLK(net1),
    .D(_03_),
    .Q(net8));
 sky130_fd_sc_hd__buf_1 input1 (.A(clock),
    .X(net1));
 sky130_fd_sc_hd__buf_1 input2 (.A(enable),
    .X(net2));
 sky130_fd_sc_hd__buf_1 input3 (.A(reset),
    .X(net3));
 sky130_fd_sc_hd__buf_1 input4 (.A(up_down),
    .X(net4));
 sky130_fd_sc_hd__buf_2 output5 (.A(net5),
    .X(counter[0]));
 sky130_fd_sc_hd__buf_2 output6 (.A(net6),
    .X(counter[1]));
 sky130_fd_sc_hd__buf_2 output7 (.A(net7),
    .X(counter[2]));
 sky130_fd_sc_hd__buf_2 output8 (.A(net8),
    .X(counter[3]));
endmodule