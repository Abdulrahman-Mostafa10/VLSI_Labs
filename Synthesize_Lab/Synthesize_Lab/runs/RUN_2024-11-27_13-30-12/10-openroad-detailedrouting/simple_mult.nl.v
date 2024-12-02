module simple_mult_detailed_routing (A,
    B,
    P);
 input [3:0] A;
 input [3:0] B;
 output [7:0] P;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
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

 sky130_fd_sc_hd__a22oi_1 _047_ (.A1(net2),
    .A2(net5),
    .B1(net6),
    .B2(net1),
    .Y(_000_));
 sky130_fd_sc_hd__and4_1 _048_ (.A(net2),
    .B(net5),
    .C(net6),
    .D(net1),
    .X(_001_));
 sky130_fd_sc_hd__nor2_1 _049_ (.A(_000_),
    .B(_001_),
    .Y(net10));
 sky130_fd_sc_hd__nand2_1 _050_ (.A(net1),
    .B(net7),
    .Y(_002_));
 sky130_fd_sc_hd__nand2_1 _051_ (.A(net6),
    .B(net3),
    .Y(_003_));
 sky130_fd_sc_hd__and4_1 _052_ (.A(net2),
    .B(net5),
    .C(net6),
    .D(net3),
    .X(_004_));
 sky130_fd_sc_hd__a22o_1 _053_ (.A1(net2),
    .A2(net6),
    .B1(net3),
    .B2(net5),
    .X(_005_));
 sky130_fd_sc_hd__and2b_1 _054_ (.A_N(_004_),
    .B(_005_),
    .X(_006_));
 sky130_fd_sc_hd__xnor2_1 _055_ (.A(_002_),
    .B(_006_),
    .Y(_007_));
 sky130_fd_sc_hd__and2_1 _056_ (.A(_001_),
    .B(_007_),
    .X(_008_));
 sky130_fd_sc_hd__nor2_1 _057_ (.A(_001_),
    .B(_007_),
    .Y(_009_));
 sky130_fd_sc_hd__nor2_1 _058_ (.A(_008_),
    .B(_009_),
    .Y(net11));
 sky130_fd_sc_hd__nand2_1 _059_ (.A(net2),
    .B(net8),
    .Y(_010_));
 sky130_fd_sc_hd__a22o_1 _060_ (.A1(net3),
    .A2(net7),
    .B1(net4),
    .B2(net6),
    .X(_011_));
 sky130_fd_sc_hd__nand2_1 _061_ (.A(net7),
    .B(net4),
    .Y(_012_));
 sky130_fd_sc_hd__o21ai_1 _062_ (.A1(_003_),
    .A2(_012_),
    .B1(_011_),
    .Y(_013_));
 sky130_fd_sc_hd__and4_1 _063_ (.A(net5),
    .B(net6),
    .C(net3),
    .D(net4),
    .X(_014_));
 sky130_fd_sc_hd__nand2_1 _064_ (.A(net2),
    .B(net7),
    .Y(_015_));
 sky130_fd_sc_hd__a22oi_2 _065_ (.A1(net6),
    .A2(net3),
    .B1(net4),
    .B2(net5),
    .Y(_016_));
 sky130_fd_sc_hd__or3_1 _066_ (.A(_014_),
    .B(_015_),
    .C(_016_),
    .X(_017_));
 sky130_fd_sc_hd__o21bai_1 _067_ (.A1(_015_),
    .A2(_016_),
    .B1_N(_014_),
    .Y(_018_));
 sky130_fd_sc_hd__nand2b_1 _068_ (.A_N(_013_),
    .B(_018_),
    .Y(_019_));
 sky130_fd_sc_hd__xnor2_1 _069_ (.A(_013_),
    .B(_018_),
    .Y(_020_));
 sky130_fd_sc_hd__nand2b_1 _070_ (.A_N(_010_),
    .B(_020_),
    .Y(_021_));
 sky130_fd_sc_hd__xnor2_1 _071_ (.A(_010_),
    .B(_020_),
    .Y(_022_));
 sky130_fd_sc_hd__a31o_1 _072_ (.A1(net1),
    .A2(net7),
    .A3(_005_),
    .B1(_004_),
    .X(_023_));
 sky130_fd_sc_hd__o21ai_1 _073_ (.A1(_014_),
    .A2(_016_),
    .B1(_015_),
    .Y(_024_));
 sky130_fd_sc_hd__and3_1 _074_ (.A(_017_),
    .B(_023_),
    .C(_024_),
    .X(_025_));
 sky130_fd_sc_hd__nand2_1 _075_ (.A(net1),
    .B(net8),
    .Y(_026_));
 sky130_fd_sc_hd__a21oi_1 _076_ (.A1(_017_),
    .A2(_024_),
    .B1(_023_),
    .Y(_027_));
 sky130_fd_sc_hd__or3_1 _077_ (.A(_025_),
    .B(_026_),
    .C(_027_),
    .X(_028_));
 sky130_fd_sc_hd__o21bai_1 _078_ (.A1(_026_),
    .A2(_027_),
    .B1_N(_025_),
    .Y(_029_));
 sky130_fd_sc_hd__nand2_1 _079_ (.A(_022_),
    .B(_029_),
    .Y(_030_));
 sky130_fd_sc_hd__xor2_1 _080_ (.A(_022_),
    .B(_029_),
    .X(_031_));
 sky130_fd_sc_hd__o21ai_1 _081_ (.A1(_025_),
    .A2(_027_),
    .B1(_026_),
    .Y(_032_));
 sky130_fd_sc_hd__and3_1 _082_ (.A(_008_),
    .B(_028_),
    .C(_032_),
    .X(_033_));
 sky130_fd_sc_hd__xor2_1 _083_ (.A(_031_),
    .B(_033_),
    .X(net13));
 sky130_fd_sc_hd__and3_1 _084_ (.A(net7),
    .B(net4),
    .C(_003_),
    .X(_034_));
 sky130_fd_sc_hd__a21oi_1 _085_ (.A1(net3),
    .A2(net8),
    .B1(_034_),
    .Y(_035_));
 sky130_fd_sc_hd__and3_1 _086_ (.A(net3),
    .B(net8),
    .C(_034_),
    .X(_036_));
 sky130_fd_sc_hd__o211a_1 _087_ (.A1(_035_),
    .A2(_036_),
    .B1(_019_),
    .C1(_021_),
    .X(_037_));
 sky130_fd_sc_hd__a211oi_1 _088_ (.A1(_019_),
    .A2(_021_),
    .B1(_035_),
    .C1(_036_),
    .Y(_038_));
 sky130_fd_sc_hd__or2_1 _089_ (.A(_037_),
    .B(_038_),
    .X(_039_));
 sky130_fd_sc_hd__a21bo_1 _090_ (.A1(_031_),
    .A2(_033_),
    .B1_N(_030_),
    .X(_040_));
 sky130_fd_sc_hd__xnor2_1 _091_ (.A(_039_),
    .B(_040_),
    .Y(net14));
 sky130_fd_sc_hd__o21bai_1 _092_ (.A1(_003_),
    .A2(_012_),
    .B1_N(_036_),
    .Y(_041_));
 sky130_fd_sc_hd__nand3_1 _093_ (.A(net4),
    .B(net8),
    .C(_041_),
    .Y(_042_));
 sky130_fd_sc_hd__a21oi_1 _094_ (.A1(net4),
    .A2(net8),
    .B1(_041_),
    .Y(_043_));
 sky130_fd_sc_hd__a41o_1 _095_ (.A1(net3),
    .A2(net7),
    .A3(net4),
    .A4(net8),
    .B1(_043_),
    .X(_044_));
 sky130_fd_sc_hd__o21ba_1 _096_ (.A1(_030_),
    .A2(_037_),
    .B1_N(_038_),
    .X(_045_));
 sky130_fd_sc_hd__xor2_1 _097_ (.A(_044_),
    .B(_045_),
    .X(net15));
 sky130_fd_sc_hd__a21oi_1 _098_ (.A1(_028_),
    .A2(_032_),
    .B1(_008_),
    .Y(_046_));
 sky130_fd_sc_hd__nor2_1 _099_ (.A(_033_),
    .B(_046_),
    .Y(net12));
 sky130_fd_sc_hd__o21ai_1 _100_ (.A1(_043_),
    .A2(_045_),
    .B1(_042_),
    .Y(net16));
 sky130_fd_sc_hd__and2_1 _101_ (.A(net5),
    .B(net1),
    .X(net9));
 sky130_fd_sc_hd__buf_1 input1 (.A(A[0]),
    .X(net1));
 sky130_fd_sc_hd__dlymetal6s2s_1 input2 (.A(A[1]),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_2 input3 (.A(A[2]),
    .X(net3));
 sky130_fd_sc_hd__clkbuf_2 input4 (.A(A[3]),
    .X(net4));
 sky130_fd_sc_hd__dlymetal6s2s_1 input5 (.A(B[0]),
    .X(net5));
 sky130_fd_sc_hd__clkbuf_2 input6 (.A(B[1]),
    .X(net6));
 sky130_fd_sc_hd__clkbuf_2 input7 (.A(B[2]),
    .X(net7));
 sky130_fd_sc_hd__clkbuf_2 input8 (.A(B[3]),
    .X(net8));
 sky130_fd_sc_hd__buf_2 output9 (.A(net9),
    .X(P[0]));
 sky130_fd_sc_hd__buf_2 output10 (.A(net10),
    .X(P[1]));
 sky130_fd_sc_hd__buf_2 output11 (.A(net11),
    .X(P[2]));
 sky130_fd_sc_hd__buf_2 output12 (.A(net12),
    .X(P[3]));
 sky130_fd_sc_hd__buf_2 output13 (.A(net13),
    .X(P[4]));
 sky130_fd_sc_hd__buf_2 output14 (.A(net14),
    .X(P[5]));
 sky130_fd_sc_hd__buf_2 output15 (.A(net15),
    .X(P[6]));
 sky130_fd_sc_hd__buf_2 output16 (.A(net16),
    .X(P[7]));
endmodule
