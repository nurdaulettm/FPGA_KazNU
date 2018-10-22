// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
// Date        : Mon Apr 02 14:22:17 2018
// Host        : Asus running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/Calculations/project_2/project_1.sim/sim_1/impl/func/calc_tb_func_impl.v
// Design      : main
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "a9b595d8" *) (* s2_0 = "0" *) (* s2_1 = "1" *) 
(* s2_2 = "2" *) (* s3_0 = "0" *) (* s3_1 = "1" *) 
(* s3_2 = "2" *) (* s4_0 = "0" *) (* s4_1 = "1" *) 
(* s4_2 = "2" *) (* s4_3 = "3" *) (* s4_4 = "4" *) 
(* s4_5 = "5" *) (* s4_6 = "6" *) (* s4_7 = "7" *) 
(* s_0 = "0" *) (* s_1 = "1" *) (* s_2 = "2" *) 
(* NotValidForBitStream *)
module main
   (clk,
    reset,
    data_out,
    clk_out);
  input clk;
  input reset;
  output [3:0]data_out;
  output clk_out;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire clk_out;
  wire clk_out_OBUF;
  wire [30:0]count;
  wire \count[30]_i_10_n_0 ;
  wire \count[30]_i_2_n_0 ;
  wire \count[30]_i_3_n_0 ;
  wire \count[30]_i_4_n_0 ;
  wire \count[30]_i_6_n_0 ;
  wire \count[30]_i_7_n_0 ;
  wire \count[30]_i_8_n_0 ;
  wire \count[30]_i_9_n_0 ;
  wire \count_reg[12]_i_2_n_0 ;
  wire \count_reg[16]_i_2_n_0 ;
  wire \count_reg[20]_i_2_n_0 ;
  wire \count_reg[24]_i_2_n_0 ;
  wire \count_reg[28]_i_2_n_0 ;
  wire \count_reg[4]_i_2_n_0 ;
  wire \count_reg[8]_i_2_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[10] ;
  wire \count_reg_n_0_[11] ;
  wire \count_reg_n_0_[12] ;
  wire \count_reg_n_0_[13] ;
  wire \count_reg_n_0_[14] ;
  wire \count_reg_n_0_[15] ;
  wire \count_reg_n_0_[16] ;
  wire \count_reg_n_0_[17] ;
  wire \count_reg_n_0_[18] ;
  wire \count_reg_n_0_[19] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[20] ;
  wire \count_reg_n_0_[21] ;
  wire \count_reg_n_0_[22] ;
  wire \count_reg_n_0_[23] ;
  wire \count_reg_n_0_[24] ;
  wire \count_reg_n_0_[25] ;
  wire \count_reg_n_0_[26] ;
  wire \count_reg_n_0_[27] ;
  wire \count_reg_n_0_[28] ;
  wire \count_reg_n_0_[29] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[30] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire \count_reg_n_0_[8] ;
  wire \count_reg_n_0_[9] ;
  wire [30:1]data0;
  wire read_clk_i_1_n_0;
  wire reset;
  wire reset_IBUF;
  wire [2:0]\NLW_count_reg[12]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[16]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[20]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[24]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[28]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[30]_i_5_CO_UNCONNECTED ;
  wire [3:2]\NLW_count_reg[30]_i_5_O_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[4]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[8]_i_2_CO_UNCONNECTED ;

  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF clk_out_OBUF_inst
       (.I(clk_out_OBUF),
        .O(clk_out));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(\count_reg_n_0_[0] ),
        .O(count[0]));
  (* SOFT_HLUTNM = "soft_lutpair324" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \count[10]_i_1 
       (.I0(\count[30]_i_2_n_0 ),
        .I1(\count[30]_i_3_n_0 ),
        .I2(\count[30]_i_4_n_0 ),
        .I3(data0[10]),
        .O(count[10]));
  (* SOFT_HLUTNM = "soft_lutpair324" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \count[11]_i_1 
       (.I0(\count[30]_i_2_n_0 ),
        .I1(\count[30]_i_3_n_0 ),
        .I2(\count[30]_i_4_n_0 ),
        .I3(data0[11]),
        .O(count[11]));
  (* SOFT_HLUTNM = "soft_lutpair325" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \count[12]_i_1 
       (.I0(\count[30]_i_2_n_0 ),
        .I1(\count[30]_i_3_n_0 ),
        .I2(\count[30]_i_4_n_0 ),
        .I3(data0[12]),
        .O(count[12]));
  (* SOFT_HLUTNM = "soft_lutpair325" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \count[13]_i_1 
       (.I0(\count[30]_i_2_n_0 ),
        .I1(\count[30]_i_3_n_0 ),
        .I2(\count[30]_i_4_n_0 ),
        .I3(data0[13]),
        .O(count[13]));
  (* SOFT_HLUTNM = "soft_lutpair326" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \count[14]_i_1 
       (.I0(\count[30]_i_2_n_0 ),
        .I1(\count[30]_i_3_n_0 ),
        .I2(\count[30]_i_4_n_0 ),
        .I3(data0[14]),
        .O(count[14]));
  (* SOFT_HLUTNM = "soft_lutpair326" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \count[15]_i_1 
       (.I0(\count[30]_i_2_n_0 ),
        .I1(\count[30]_i_3_n_0 ),
        .I2(\count[30]_i_4_n_0 ),
        .I3(data0[15]),
        .O(count[15]));
  (* SOFT_HLUTNM = "soft_lutpair327" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \count[16]_i_1 
       (.I0(\count[30]_i_2_n_0 ),
        .I1(\count[30]_i_3_n_0 ),
        .I2(\count[30]_i_4_n_0 ),
        .I3(data0[16]),
        .O(count[16]));
  (* SOFT_HLUTNM = "soft_lutpair318" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \count[17]_i_1 
       (.I0(\count[30]_i_2_n_0 ),
        .I1(\count[30]_i_3_n_0 ),
        .I2(\count[30]_i_4_n_0 ),
        .I3(data0[17]),
        .O(count[17]));
  (* SOFT_HLUTNM = "soft_lutpair319" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \count[18]_i_1 
       (.I0(\count[30]_i_2_n_0 ),
        .I1(\count[30]_i_3_n_0 ),
        .I2(\count[30]_i_4_n_0 ),
        .I3(data0[18]),
        .O(count[18]));
  (* SOFT_HLUTNM = "soft_lutpair327" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \count[19]_i_1 
       (.I0(\count[30]_i_2_n_0 ),
        .I1(\count[30]_i_3_n_0 ),
        .I2(\count[30]_i_4_n_0 ),
        .I3(data0[19]),
        .O(count[19]));
  (* SOFT_HLUTNM = "soft_lutpair318" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \count[1]_i_1 
       (.I0(\count[30]_i_2_n_0 ),
        .I1(\count[30]_i_3_n_0 ),
        .I2(\count[30]_i_4_n_0 ),
        .I3(data0[1]),
        .O(count[1]));
  (* SOFT_HLUTNM = "soft_lutpair328" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \count[20]_i_1 
       (.I0(\count[30]_i_2_n_0 ),
        .I1(\count[30]_i_3_n_0 ),
        .I2(\count[30]_i_4_n_0 ),
        .I3(data0[20]),
        .O(count[20]));
  (* SOFT_HLUTNM = "soft_lutpair329" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \count[21]_i_1 
       (.I0(\count[30]_i_2_n_0 ),
        .I1(\count[30]_i_3_n_0 ),
        .I2(\count[30]_i_4_n_0 ),
        .I3(data0[21]),
        .O(count[21]));
  (* SOFT_HLUTNM = "soft_lutpair329" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \count[22]_i_1 
       (.I0(\count[30]_i_2_n_0 ),
        .I1(\count[30]_i_3_n_0 ),
        .I2(\count[30]_i_4_n_0 ),
        .I3(data0[22]),
        .O(count[22]));
  (* SOFT_HLUTNM = "soft_lutpair330" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \count[23]_i_1 
       (.I0(\count[30]_i_2_n_0 ),
        .I1(\count[30]_i_3_n_0 ),
        .I2(\count[30]_i_4_n_0 ),
        .I3(data0[23]),
        .O(count[23]));
  (* SOFT_HLUTNM = "soft_lutpair330" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \count[24]_i_1 
       (.I0(\count[30]_i_2_n_0 ),
        .I1(\count[30]_i_3_n_0 ),
        .I2(\count[30]_i_4_n_0 ),
        .I3(data0[24]),
        .O(count[24]));
  (* SOFT_HLUTNM = "soft_lutpair328" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \count[25]_i_1 
       (.I0(\count[30]_i_2_n_0 ),
        .I1(\count[30]_i_3_n_0 ),
        .I2(\count[30]_i_4_n_0 ),
        .I3(data0[25]),
        .O(count[25]));
  (* SOFT_HLUTNM = "soft_lutpair331" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \count[26]_i_1 
       (.I0(\count[30]_i_2_n_0 ),
        .I1(\count[30]_i_3_n_0 ),
        .I2(\count[30]_i_4_n_0 ),
        .I3(data0[26]),
        .O(count[26]));
  (* SOFT_HLUTNM = "soft_lutpair331" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \count[27]_i_1 
       (.I0(\count[30]_i_2_n_0 ),
        .I1(\count[30]_i_3_n_0 ),
        .I2(\count[30]_i_4_n_0 ),
        .I3(data0[27]),
        .O(count[27]));
  (* SOFT_HLUTNM = "soft_lutpair332" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \count[28]_i_1 
       (.I0(\count[30]_i_2_n_0 ),
        .I1(\count[30]_i_3_n_0 ),
        .I2(\count[30]_i_4_n_0 ),
        .I3(data0[28]),
        .O(count[28]));
  LUT4 #(
    .INIT(16'hFE00)) 
    \count[29]_i_1 
       (.I0(\count[30]_i_2_n_0 ),
        .I1(\count[30]_i_3_n_0 ),
        .I2(\count[30]_i_4_n_0 ),
        .I3(data0[29]),
        .O(count[29]));
  (* SOFT_HLUTNM = "soft_lutpair319" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \count[2]_i_1 
       (.I0(\count[30]_i_2_n_0 ),
        .I1(\count[30]_i_3_n_0 ),
        .I2(\count[30]_i_4_n_0 ),
        .I3(data0[2]),
        .O(count[2]));
  (* SOFT_HLUTNM = "soft_lutpair332" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \count[30]_i_1 
       (.I0(\count[30]_i_2_n_0 ),
        .I1(\count[30]_i_3_n_0 ),
        .I2(\count[30]_i_4_n_0 ),
        .I3(data0[30]),
        .O(count[30]));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \count[30]_i_10 
       (.I0(\count_reg_n_0_[14] ),
        .I1(\count_reg_n_0_[13] ),
        .I2(\count_reg_n_0_[16] ),
        .I3(\count_reg_n_0_[15] ),
        .O(\count[30]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \count[30]_i_2 
       (.I0(\count[30]_i_6_n_0 ),
        .I1(\count[30]_i_7_n_0 ),
        .I2(\count_reg_n_0_[30] ),
        .I3(\count_reg_n_0_[29] ),
        .I4(\count_reg_n_0_[0] ),
        .I5(\count[30]_i_8_n_0 ),
        .O(\count[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \count[30]_i_3 
       (.I0(\count_reg_n_0_[4] ),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[2] ),
        .I4(\count[30]_i_9_n_0 ),
        .O(\count[30]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \count[30]_i_4 
       (.I0(\count_reg_n_0_[11] ),
        .I1(\count_reg_n_0_[12] ),
        .I2(\count_reg_n_0_[9] ),
        .I3(\count_reg_n_0_[10] ),
        .I4(\count[30]_i_10_n_0 ),
        .O(\count[30]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[30]_i_6 
       (.I0(\count_reg_n_0_[22] ),
        .I1(\count_reg_n_0_[21] ),
        .I2(\count_reg_n_0_[24] ),
        .I3(\count_reg_n_0_[23] ),
        .O(\count[30]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[30]_i_7 
       (.I0(\count_reg_n_0_[18] ),
        .I1(\count_reg_n_0_[17] ),
        .I2(\count_reg_n_0_[20] ),
        .I3(\count_reg_n_0_[19] ),
        .O(\count[30]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[30]_i_8 
       (.I0(\count_reg_n_0_[26] ),
        .I1(\count_reg_n_0_[25] ),
        .I2(\count_reg_n_0_[28] ),
        .I3(\count_reg_n_0_[27] ),
        .O(\count[30]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \count[30]_i_9 
       (.I0(\count_reg_n_0_[6] ),
        .I1(\count_reg_n_0_[5] ),
        .I2(\count_reg_n_0_[8] ),
        .I3(\count_reg_n_0_[7] ),
        .O(\count[30]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair320" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \count[3]_i_1 
       (.I0(\count[30]_i_2_n_0 ),
        .I1(\count[30]_i_3_n_0 ),
        .I2(\count[30]_i_4_n_0 ),
        .I3(data0[3]),
        .O(count[3]));
  (* SOFT_HLUTNM = "soft_lutpair321" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \count[4]_i_1 
       (.I0(\count[30]_i_2_n_0 ),
        .I1(\count[30]_i_3_n_0 ),
        .I2(\count[30]_i_4_n_0 ),
        .I3(data0[4]),
        .O(count[4]));
  (* SOFT_HLUTNM = "soft_lutpair321" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \count[5]_i_1 
       (.I0(\count[30]_i_2_n_0 ),
        .I1(\count[30]_i_3_n_0 ),
        .I2(\count[30]_i_4_n_0 ),
        .I3(data0[5]),
        .O(count[5]));
  (* SOFT_HLUTNM = "soft_lutpair322" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \count[6]_i_1 
       (.I0(\count[30]_i_2_n_0 ),
        .I1(\count[30]_i_3_n_0 ),
        .I2(\count[30]_i_4_n_0 ),
        .I3(data0[6]),
        .O(count[6]));
  (* SOFT_HLUTNM = "soft_lutpair322" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \count[7]_i_1 
       (.I0(\count[30]_i_2_n_0 ),
        .I1(\count[30]_i_3_n_0 ),
        .I2(\count[30]_i_4_n_0 ),
        .I3(data0[7]),
        .O(count[7]));
  (* SOFT_HLUTNM = "soft_lutpair323" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \count[8]_i_1 
       (.I0(\count[30]_i_2_n_0 ),
        .I1(\count[30]_i_3_n_0 ),
        .I2(\count[30]_i_4_n_0 ),
        .I3(data0[8]),
        .O(count[8]));
  (* SOFT_HLUTNM = "soft_lutpair323" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \count[9]_i_1 
       (.I0(\count[30]_i_2_n_0 ),
        .I1(\count[30]_i_3_n_0 ),
        .I2(\count[30]_i_4_n_0 ),
        .I3(data0[9]),
        .O(count[9]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count[0]),
        .Q(\count_reg_n_0_[0] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count[10]),
        .Q(\count_reg_n_0_[10] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count[11]),
        .Q(\count_reg_n_0_[11] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count[12]),
        .Q(\count_reg_n_0_[12] ),
        .R(reset_IBUF));
  CARRY4 \count_reg[12]_i_2 
       (.CI(\count_reg[8]_i_2_n_0 ),
        .CO({\count_reg[12]_i_2_n_0 ,\NLW_count_reg[12]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\count_reg_n_0_[12] ,\count_reg_n_0_[11] ,\count_reg_n_0_[10] ,\count_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count[13]),
        .Q(\count_reg_n_0_[13] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count[14]),
        .Q(\count_reg_n_0_[14] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count[15]),
        .Q(\count_reg_n_0_[15] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count[16]),
        .Q(\count_reg_n_0_[16] ),
        .R(reset_IBUF));
  CARRY4 \count_reg[16]_i_2 
       (.CI(\count_reg[12]_i_2_n_0 ),
        .CO({\count_reg[16]_i_2_n_0 ,\NLW_count_reg[16]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\count_reg_n_0_[16] ,\count_reg_n_0_[15] ,\count_reg_n_0_[14] ,\count_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count[17]),
        .Q(\count_reg_n_0_[17] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count[18]),
        .Q(\count_reg_n_0_[18] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count[19]),
        .Q(\count_reg_n_0_[19] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count[1]),
        .Q(\count_reg_n_0_[1] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count[20]),
        .Q(\count_reg_n_0_[20] ),
        .R(reset_IBUF));
  CARRY4 \count_reg[20]_i_2 
       (.CI(\count_reg[16]_i_2_n_0 ),
        .CO({\count_reg[20]_i_2_n_0 ,\NLW_count_reg[20]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S({\count_reg_n_0_[20] ,\count_reg_n_0_[19] ,\count_reg_n_0_[18] ,\count_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count[21]),
        .Q(\count_reg_n_0_[21] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count[22]),
        .Q(\count_reg_n_0_[22] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count[23]),
        .Q(\count_reg_n_0_[23] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count[24]),
        .Q(\count_reg_n_0_[24] ),
        .R(reset_IBUF));
  CARRY4 \count_reg[24]_i_2 
       (.CI(\count_reg[20]_i_2_n_0 ),
        .CO({\count_reg[24]_i_2_n_0 ,\NLW_count_reg[24]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S({\count_reg_n_0_[24] ,\count_reg_n_0_[23] ,\count_reg_n_0_[22] ,\count_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count[25]),
        .Q(\count_reg_n_0_[25] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count[26]),
        .Q(\count_reg_n_0_[26] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count[27]),
        .Q(\count_reg_n_0_[27] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count[28]),
        .Q(\count_reg_n_0_[28] ),
        .R(reset_IBUF));
  CARRY4 \count_reg[28]_i_2 
       (.CI(\count_reg[24]_i_2_n_0 ),
        .CO({\count_reg[28]_i_2_n_0 ,\NLW_count_reg[28]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S({\count_reg_n_0_[28] ,\count_reg_n_0_[27] ,\count_reg_n_0_[26] ,\count_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count[29]),
        .Q(\count_reg_n_0_[29] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count[2]),
        .Q(\count_reg_n_0_[2] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count[30]),
        .Q(\count_reg_n_0_[30] ),
        .R(reset_IBUF));
  CARRY4 \count_reg[30]_i_5 
       (.CI(\count_reg[28]_i_2_n_0 ),
        .CO(\NLW_count_reg[30]_i_5_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[30]_i_5_O_UNCONNECTED [3:2],data0[30:29]}),
        .S({1'b0,1'b0,\count_reg_n_0_[30] ,\count_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count[3]),
        .Q(\count_reg_n_0_[3] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count[4]),
        .Q(\count_reg_n_0_[4] ),
        .R(reset_IBUF));
  CARRY4 \count_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\count_reg[4]_i_2_n_0 ,\NLW_count_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\count_reg_n_0_[4] ,\count_reg_n_0_[3] ,\count_reg_n_0_[2] ,\count_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count[5]),
        .Q(\count_reg_n_0_[5] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count[6]),
        .Q(\count_reg_n_0_[6] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count[7]),
        .Q(\count_reg_n_0_[7] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count[8]),
        .Q(\count_reg_n_0_[8] ),
        .R(reset_IBUF));
  CARRY4 \count_reg[8]_i_2 
       (.CI(\count_reg[4]_i_2_n_0 ),
        .CO({\count_reg[8]_i_2_n_0 ,\NLW_count_reg[8]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\count_reg_n_0_[8] ,\count_reg_n_0_[7] ,\count_reg_n_0_[6] ,\count_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count[9]),
        .Q(\count_reg_n_0_[9] ),
        .R(reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair320" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    read_clk_i_1
       (.I0(\count[30]_i_2_n_0 ),
        .I1(\count[30]_i_3_n_0 ),
        .I2(\count[30]_i_4_n_0 ),
        .I3(clk_out_OBUF),
        .O(read_clk_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    read_clk_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(read_clk_i_1_n_0),
        .Q(clk_out_OBUF),
        .R(reset_IBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
