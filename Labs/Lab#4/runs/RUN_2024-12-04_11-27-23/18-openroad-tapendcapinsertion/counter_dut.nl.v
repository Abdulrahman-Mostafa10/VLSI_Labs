module counter_dut (clk,
    enable,
    reset,
    up_down,
    counter);
 input clk;
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

 sky130_fd_sc_hd__inv_2 _23_ (.A(reset),
    .Y(_04_));
 sky130_fd_sc_hd__nand2_2 _24_ (.A(enable),
    .B(_04_),
    .Y(_05_));
 sky130_fd_sc_hd__nor2_2 _25_ (.A(_04_),
    .B(up_down),
    .Y(_06_));
 sky130_fd_sc_hd__nor2_2 _26_ (.A(enable),
    .B(reset),
    .Y(_07_));
 sky130_fd_sc_hd__a21oi_2 _27_ (.A1(counter[0]),
    .A2(_07_),
    .B1(_06_),
    .Y(_08_));
 sky130_fd_sc_hd__o21ai_2 _28_ (.A1(counter[0]),
    .A2(_05_),
    .B1(_08_),
    .Y(_00_));
 sky130_fd_sc_hd__xor2_2 _29_ (.A(counter[0]),
    .B(counter[1]),
    .X(_09_));
 sky130_fd_sc_hd__or2_2 _30_ (.A(up_down),
    .B(_09_),
    .X(_10_));
 sky130_fd_sc_hd__nand2_2 _31_ (.A(up_down),
    .B(_09_),
    .Y(_11_));
 sky130_fd_sc_hd__nand2_2 _32_ (.A(_10_),
    .B(_11_),
    .Y(_12_));
 sky130_fd_sc_hd__a21o_2 _33_ (.A1(counter[1]),
    .A2(_07_),
    .B1(_06_),
    .X(_13_));
 sky130_fd_sc_hd__a31o_2 _34_ (.A1(enable),
    .A2(_04_),
    .A3(_12_),
    .B1(_13_),
    .X(_01_));
 sky130_fd_sc_hd__a21o_2 _35_ (.A1(counter[0]),
    .A2(counter[1]),
    .B1(counter[2]),
    .X(_14_));
 sky130_fd_sc_hd__nand3_2 _36_ (.A(counter[0]),
    .B(counter[1]),
    .C(counter[2]),
    .Y(_15_));
 sky130_fd_sc_hd__nand2_2 _37_ (.A(_14_),
    .B(_15_),
    .Y(_16_));
 sky130_fd_sc_hd__xnor2_2 _38_ (.A(_10_),
    .B(_16_),
    .Y(_17_));
 sky130_fd_sc_hd__a21oi_2 _39_ (.A1(counter[2]),
    .A2(_07_),
    .B1(_06_),
    .Y(_18_));
 sky130_fd_sc_hd__o21ai_2 _40_ (.A1(_05_),
    .A2(_17_),
    .B1(_18_),
    .Y(_02_));
 sky130_fd_sc_hd__o31ai_2 _41_ (.A1(up_down),
    .A2(counter[0]),
    .A3(counter[1]),
    .B1(_15_),
    .Y(_19_));
 sky130_fd_sc_hd__nand2b_2 _42_ (.A_N(up_down),
    .B(counter[2]),
    .Y(_20_));
 sky130_fd_sc_hd__a31o_2 _43_ (.A1(enable),
    .A2(_19_),
    .A3(_20_),
    .B1(counter[3]),
    .X(_21_));
 sky130_fd_sc_hd__nand4_2 _44_ (.A(enable),
    .B(counter[3]),
    .C(_19_),
    .D(_20_),
    .Y(_22_));
 sky130_fd_sc_hd__a31o_2 _45_ (.A1(_04_),
    .A2(_21_),
    .A3(_22_),
    .B1(_06_),
    .X(_03_));
 sky130_fd_sc_hd__dfxtp_2 _46_ (.CLK(clk),
    .D(_00_),
    .Q(counter[0]));
 sky130_fd_sc_hd__dfxtp_2 _47_ (.CLK(clk),
    .D(_01_),
    .Q(counter[1]));
 sky130_fd_sc_hd__dfxtp_2 _48_ (.CLK(clk),
    .D(_02_),
    .Q(counter[2]));
 sky130_fd_sc_hd__dfxtp_2 _49_ (.CLK(clk),
    .D(_03_),
    .Q(counter[3]));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_9 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_15 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_16 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_17 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_18 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_19 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_20 ();
endmodule
