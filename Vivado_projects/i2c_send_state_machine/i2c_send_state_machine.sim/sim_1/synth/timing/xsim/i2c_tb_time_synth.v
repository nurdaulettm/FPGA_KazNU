// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Apr  2 15:31:44 2019
// Host        : Asus running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {D:/Documents/Vivado
//               2018/Trash/i2c_send_state_machine/i2c_send_state_machine.sim/sim_1/synth/timing/xsim/i2c_tb_time_synth.v}
// Design      : i2c_send_sm
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* STATE_1 = "1" *) (* STATE_ACK = "4" *) (* STATE_ACK2 = "6" *) 
(* STATE_ADDRESS = "2" *) (* STATE_INIT = "0" *) (* STATE_LAST = "8" *) 
(* STATE_RW = "3" *) (* STATE_SEND_DATA = "5" *) (* STATE_STOP = "7" *) 
(* NotValidForBitStream *)
module i2c_send_sm
   (clk,
    reset,
    sda,
    scl);
  input clk;
  input reset;
  inout sda;
  output scl;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[3]_i_1_n_0 ;
  wire \FSM_sequential_state[3]_i_2_n_0 ;
  wire \FSM_sequential_state[3]_i_3_n_0 ;
  wire \FSM_sequential_state[3]_i_4_n_0 ;
  wire \FSM_sequential_state[3]_i_5_n_0 ;
  wire \FSM_sequential_state[3]_i_6_n_0 ;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [30:1]data0;
  wire enable_i_1_n_0;
  wire enable_reg_n_0;
  wire i;
  wire \i[0]_i_1_n_0 ;
  wire \i[1]_i_1_n_0 ;
  wire \i[2]_i_1_n_0 ;
  wire \i[3]_i_1_n_0 ;
  wire \i[4]_i_1_n_0 ;
  wire \i[4]_i_2_n_0 ;
  wire \i[5]_i_1_n_0 ;
  wire \i[5]_i_2_n_0 ;
  wire \i[6]_i_1_n_0 ;
  wire \i[7]_i_2_n_0 ;
  wire \i[7]_i_3_n_0 ;
  wire \i[7]_i_4_n_0 ;
  wire \i[7]_i_5_n_0 ;
  wire \i_reg_n_0_[0] ;
  wire \i_reg_n_0_[1] ;
  wire \i_reg_n_0_[2] ;
  wire \i_reg_n_0_[3] ;
  wire \i_reg_n_0_[4] ;
  wire \i_reg_n_0_[5] ;
  wire \i_reg_n_0_[6] ;
  wire \i_reg_n_0_[7] ;
  wire n_0_71;
  wire [30:0]q;
  wire \q[30]_i_2_n_0 ;
  wire \q[30]_i_3_n_0 ;
  wire \q[30]_i_4_n_0 ;
  wire \q[30]_i_6_n_0 ;
  wire \q[30]_i_7_n_0 ;
  wire \q[30]_i_8_n_0 ;
  wire \q[30]_i_9_n_0 ;
  wire \q_reg[12]_i_2_n_0 ;
  wire \q_reg[12]_i_2_n_1 ;
  wire \q_reg[12]_i_2_n_2 ;
  wire \q_reg[12]_i_2_n_3 ;
  wire \q_reg[16]_i_2_n_0 ;
  wire \q_reg[16]_i_2_n_1 ;
  wire \q_reg[16]_i_2_n_2 ;
  wire \q_reg[16]_i_2_n_3 ;
  wire \q_reg[20]_i_2_n_0 ;
  wire \q_reg[20]_i_2_n_1 ;
  wire \q_reg[20]_i_2_n_2 ;
  wire \q_reg[20]_i_2_n_3 ;
  wire \q_reg[24]_i_2_n_0 ;
  wire \q_reg[24]_i_2_n_1 ;
  wire \q_reg[24]_i_2_n_2 ;
  wire \q_reg[24]_i_2_n_3 ;
  wire \q_reg[28]_i_2_n_0 ;
  wire \q_reg[28]_i_2_n_1 ;
  wire \q_reg[28]_i_2_n_2 ;
  wire \q_reg[28]_i_2_n_3 ;
  wire \q_reg[30]_i_5_n_3 ;
  wire \q_reg[4]_i_2_n_0 ;
  wire \q_reg[4]_i_2_n_1 ;
  wire \q_reg[4]_i_2_n_2 ;
  wire \q_reg[4]_i_2_n_3 ;
  wire \q_reg[8]_i_2_n_0 ;
  wire \q_reg[8]_i_2_n_1 ;
  wire \q_reg[8]_i_2_n_2 ;
  wire \q_reg[8]_i_2_n_3 ;
  wire \q_reg_n_0_[0] ;
  wire \q_reg_n_0_[10] ;
  wire \q_reg_n_0_[11] ;
  wire \q_reg_n_0_[12] ;
  wire \q_reg_n_0_[13] ;
  wire \q_reg_n_0_[14] ;
  wire \q_reg_n_0_[15] ;
  wire \q_reg_n_0_[16] ;
  wire \q_reg_n_0_[17] ;
  wire \q_reg_n_0_[18] ;
  wire \q_reg_n_0_[19] ;
  wire \q_reg_n_0_[1] ;
  wire \q_reg_n_0_[20] ;
  wire \q_reg_n_0_[21] ;
  wire \q_reg_n_0_[22] ;
  wire \q_reg_n_0_[23] ;
  wire \q_reg_n_0_[24] ;
  wire \q_reg_n_0_[25] ;
  wire \q_reg_n_0_[26] ;
  wire \q_reg_n_0_[27] ;
  wire \q_reg_n_0_[28] ;
  wire \q_reg_n_0_[29] ;
  wire \q_reg_n_0_[2] ;
  wire \q_reg_n_0_[30] ;
  wire \q_reg_n_0_[3] ;
  wire \q_reg_n_0_[4] ;
  wire \q_reg_n_0_[5] ;
  wire \q_reg_n_0_[6] ;
  wire \q_reg_n_0_[7] ;
  wire \q_reg_n_0_[8] ;
  wire \q_reg_n_0_[9] ;
  wire read_clk_i_1_n_0;
  wire read_clk_reg_n_0;
  wire reset;
  wire reset_IBUF;
  wire scl;
  wire scl_OBUF;
  wire scl_enable_i_1_n_0;
  wire scl_enable_reg_n_0;
  wire sda;
  wire sda_OBUF;
  wire sda_TRI;
  wire sdadata_i_1_n_0;
  wire sdadata_i_2_n_0;
  wire sdadata_i_3_n_0;
  wire sdadata_i_4_n_0;
  (* RTL_KEEP = "yes" *) wire [3:0]state__0;
  wire [3:1]\NLW_q_reg[30]_i_5_CO_UNCONNECTED ;
  wire [3:2]\NLW_q_reg[30]_i_5_O_UNCONNECTED ;

initial begin
 $sdf_annotate("i2c_tb_time_synth.sdf",,,,"tool_control");
end
  LUT5 #(
    .INIT(32'h00000F07)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state__0[2]),
        .I1(sda_OBUF),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(state__0[3]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00002666)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(state__0[2]),
        .I3(sda_OBUF),
        .I4(state__0[3]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h030C0C04)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(sda_OBUF),
        .I1(state__0[2]),
        .I2(state__0[3]),
        .I3(state__0[0]),
        .I4(state__0[1]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABABFFEFFBFB)) 
    \FSM_sequential_state[3]_i_1 
       (.I0(\FSM_sequential_state[3]_i_3_n_0 ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state[3]_i_4_n_0 ),
        .I4(state__0[2]),
        .I5(state__0[3]),
        .O(\FSM_sequential_state[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \FSM_sequential_state[3]_i_2 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(state__0[3]),
        .I3(state__0[2]),
        .O(\FSM_sequential_state[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \FSM_sequential_state[3]_i_3 
       (.I0(\FSM_sequential_state[3]_i_5_n_0 ),
        .I1(\i_reg_n_0_[6] ),
        .I2(\i_reg_n_0_[7] ),
        .I3(\i_reg_n_0_[5] ),
        .I4(\i_reg_n_0_[4] ),
        .O(\FSM_sequential_state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \FSM_sequential_state[3]_i_4 
       (.I0(\i_reg_n_0_[0] ),
        .I1(\i_reg_n_0_[1] ),
        .I2(\i_reg_n_0_[2] ),
        .I3(\i_reg_n_0_[3] ),
        .I4(\FSM_sequential_state[3]_i_6_n_0 ),
        .O(\FSM_sequential_state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \FSM_sequential_state[3]_i_5 
       (.I0(\i_reg_n_0_[1] ),
        .I1(\i_reg_n_0_[0] ),
        .I2(state__0[3]),
        .I3(state__0[2]),
        .I4(\i_reg_n_0_[3] ),
        .I5(\i_reg_n_0_[2] ),
        .O(\FSM_sequential_state[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[3]_i_6 
       (.I0(\i_reg_n_0_[4] ),
        .I1(\i_reg_n_0_[5] ),
        .I2(\i_reg_n_0_[7] ),
        .I3(\i_reg_n_0_[6] ),
        .O(\FSM_sequential_state[3]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_RW:0011,STATE_ACK:0100,STATE_ADDRESS:0010,STATE_1:0001,STATE_INIT:0000,STATE_STOP:0111,STATE_ACK2:0110,STATE_LAST:1000,STATE_SEND_DATA:0101" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(read_clk_reg_n_0),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state__0[0]));
  (* FSM_ENCODED_STATES = "STATE_RW:0011,STATE_ACK:0100,STATE_ADDRESS:0010,STATE_1:0001,STATE_INIT:0000,STATE_STOP:0111,STATE_ACK2:0110,STATE_LAST:1000,STATE_SEND_DATA:0101" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(read_clk_reg_n_0),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state__0[1]));
  (* FSM_ENCODED_STATES = "STATE_RW:0011,STATE_ACK:0100,STATE_ADDRESS:0010,STATE_1:0001,STATE_INIT:0000,STATE_STOP:0111,STATE_ACK2:0110,STATE_LAST:1000,STATE_SEND_DATA:0101" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(read_clk_reg_n_0),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state__0[2]));
  (* FSM_ENCODED_STATES = "STATE_RW:0011,STATE_ACK:0100,STATE_ADDRESS:0010,STATE_1:0001,STATE_INIT:0000,STATE_STOP:0111,STATE_ACK2:0110,STATE_LAST:1000,STATE_SEND_DATA:0101" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[3] 
       (.C(read_clk_reg_n_0),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\FSM_sequential_state[3]_i_2_n_0 ),
        .Q(state__0[3]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT6 #(
    .INIT(64'hFFFFFF2200006200)) 
    enable_i_1
       (.I0(state__0[1]),
        .I1(state__0[2]),
        .I2(\FSM_sequential_state[3]_i_4_n_0 ),
        .I3(state__0[0]),
        .I4(state__0[3]),
        .I5(enable_reg_n_0),
        .O(enable_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    enable_reg
       (.C(read_clk_reg_n_0),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(enable_i_1_n_0),
        .Q(enable_reg_n_0));
  LUT5 #(
    .INIT(32'h221122F1)) 
    \i[0]_i_1 
       (.I0(state__0[2]),
        .I1(\i_reg_n_0_[0] ),
        .I2(sda_OBUF),
        .I3(state__0[0]),
        .I4(state__0[1]),
        .O(\i[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF6006)) 
    \i[1]_i_1 
       (.I0(\i_reg_n_0_[0] ),
        .I1(\i_reg_n_0_[1] ),
        .I2(state__0[2]),
        .I3(state__0[0]),
        .I4(\i[7]_i_5_n_0 ),
        .O(\i[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF1444)) 
    \i[2]_i_1 
       (.I0(\i[7]_i_3_n_0 ),
        .I1(\i_reg_n_0_[2] ),
        .I2(\i_reg_n_0_[1] ),
        .I3(\i_reg_n_0_[0] ),
        .I4(\i[7]_i_5_n_0 ),
        .O(\i[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF07080F00)) 
    \i[3]_i_1 
       (.I0(\i_reg_n_0_[0] ),
        .I1(\i_reg_n_0_[1] ),
        .I2(\i[7]_i_3_n_0 ),
        .I3(\i_reg_n_0_[3] ),
        .I4(\i_reg_n_0_[2] ),
        .I5(\i[7]_i_5_n_0 ),
        .O(\i[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0990)) 
    \i[4]_i_1 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(\i_reg_n_0_[4] ),
        .I3(\i[4]_i_2_n_0 ),
        .I4(\i[7]_i_5_n_0 ),
        .O(\i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \i[4]_i_2 
       (.I0(\i_reg_n_0_[3] ),
        .I1(\i_reg_n_0_[0] ),
        .I2(\i_reg_n_0_[1] ),
        .I3(\i_reg_n_0_[2] ),
        .O(\i[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0990)) 
    \i[5]_i_1 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(\i_reg_n_0_[5] ),
        .I3(\i[5]_i_2_n_0 ),
        .I4(\i[7]_i_5_n_0 ),
        .O(\i[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \i[5]_i_2 
       (.I0(\i_reg_n_0_[4] ),
        .I1(\i_reg_n_0_[2] ),
        .I2(\i_reg_n_0_[1] ),
        .I3(\i_reg_n_0_[0] ),
        .I4(\i_reg_n_0_[3] ),
        .O(\i[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0990)) 
    \i[6]_i_1 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(\i_reg_n_0_[6] ),
        .I3(\i[7]_i_4_n_0 ),
        .I4(\i[7]_i_5_n_0 ),
        .O(\i[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00554510)) 
    \i[7]_i_1 
       (.I0(state__0[3]),
        .I1(sda_OBUF),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(i));
  LUT5 #(
    .INIT(32'hFFFF1444)) 
    \i[7]_i_2 
       (.I0(\i[7]_i_3_n_0 ),
        .I1(\i_reg_n_0_[7] ),
        .I2(\i[7]_i_4_n_0 ),
        .I3(\i_reg_n_0_[6] ),
        .I4(\i[7]_i_5_n_0 ),
        .O(\i[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i[7]_i_3 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .O(\i[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \i[7]_i_4 
       (.I0(\i_reg_n_0_[5] ),
        .I1(\i_reg_n_0_[3] ),
        .I2(\i_reg_n_0_[0] ),
        .I3(\i_reg_n_0_[1] ),
        .I4(\i_reg_n_0_[2] ),
        .I5(\i_reg_n_0_[4] ),
        .O(\i[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \i[7]_i_5 
       (.I0(sda_OBUF),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .O(\i[7]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    i_71
       (.I0(enable_reg_n_0),
        .O(n_0_71));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[0] 
       (.C(read_clk_reg_n_0),
        .CE(i),
        .CLR(reset_IBUF),
        .D(\i[0]_i_1_n_0 ),
        .Q(\i_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[1] 
       (.C(read_clk_reg_n_0),
        .CE(i),
        .CLR(reset_IBUF),
        .D(\i[1]_i_1_n_0 ),
        .Q(\i_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[2] 
       (.C(read_clk_reg_n_0),
        .CE(i),
        .CLR(reset_IBUF),
        .D(\i[2]_i_1_n_0 ),
        .Q(\i_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[3] 
       (.C(read_clk_reg_n_0),
        .CE(i),
        .CLR(reset_IBUF),
        .D(\i[3]_i_1_n_0 ),
        .Q(\i_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[4] 
       (.C(read_clk_reg_n_0),
        .CE(i),
        .CLR(reset_IBUF),
        .D(\i[4]_i_1_n_0 ),
        .Q(\i_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[5] 
       (.C(read_clk_reg_n_0),
        .CE(i),
        .CLR(reset_IBUF),
        .D(\i[5]_i_1_n_0 ),
        .Q(\i_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[6] 
       (.C(read_clk_reg_n_0),
        .CE(i),
        .CLR(reset_IBUF),
        .D(\i[6]_i_1_n_0 ),
        .Q(\i_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[7] 
       (.C(read_clk_reg_n_0),
        .CE(i),
        .CLR(reset_IBUF),
        .D(\i[7]_i_2_n_0 ),
        .Q(\i_reg_n_0_[7] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \q[0]_i_1 
       (.I0(\q[30]_i_4_n_0 ),
        .I1(\q[30]_i_3_n_0 ),
        .I2(\q[30]_i_2_n_0 ),
        .I3(\q_reg_n_0_[0] ),
        .O(q[0]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \q[10]_i_1 
       (.I0(\q_reg_n_0_[0] ),
        .I1(\q[30]_i_2_n_0 ),
        .I2(\q[30]_i_3_n_0 ),
        .I3(\q[30]_i_4_n_0 ),
        .I4(data0[10]),
        .O(q[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \q[11]_i_1 
       (.I0(\q_reg_n_0_[0] ),
        .I1(\q[30]_i_2_n_0 ),
        .I2(\q[30]_i_3_n_0 ),
        .I3(\q[30]_i_4_n_0 ),
        .I4(data0[11]),
        .O(q[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \q[12]_i_1 
       (.I0(\q_reg_n_0_[0] ),
        .I1(\q[30]_i_2_n_0 ),
        .I2(\q[30]_i_3_n_0 ),
        .I3(\q[30]_i_4_n_0 ),
        .I4(data0[12]),
        .O(q[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \q[13]_i_1 
       (.I0(\q_reg_n_0_[0] ),
        .I1(\q[30]_i_2_n_0 ),
        .I2(\q[30]_i_3_n_0 ),
        .I3(\q[30]_i_4_n_0 ),
        .I4(data0[13]),
        .O(q[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \q[14]_i_1 
       (.I0(\q_reg_n_0_[0] ),
        .I1(\q[30]_i_2_n_0 ),
        .I2(\q[30]_i_3_n_0 ),
        .I3(\q[30]_i_4_n_0 ),
        .I4(data0[14]),
        .O(q[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \q[15]_i_1 
       (.I0(\q_reg_n_0_[0] ),
        .I1(\q[30]_i_2_n_0 ),
        .I2(\q[30]_i_3_n_0 ),
        .I3(\q[30]_i_4_n_0 ),
        .I4(data0[15]),
        .O(q[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \q[16]_i_1 
       (.I0(\q_reg_n_0_[0] ),
        .I1(\q[30]_i_2_n_0 ),
        .I2(\q[30]_i_3_n_0 ),
        .I3(\q[30]_i_4_n_0 ),
        .I4(data0[16]),
        .O(q[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \q[17]_i_1 
       (.I0(\q_reg_n_0_[0] ),
        .I1(\q[30]_i_2_n_0 ),
        .I2(\q[30]_i_3_n_0 ),
        .I3(\q[30]_i_4_n_0 ),
        .I4(data0[17]),
        .O(q[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \q[18]_i_1 
       (.I0(\q_reg_n_0_[0] ),
        .I1(\q[30]_i_2_n_0 ),
        .I2(\q[30]_i_3_n_0 ),
        .I3(\q[30]_i_4_n_0 ),
        .I4(data0[18]),
        .O(q[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \q[19]_i_1 
       (.I0(\q_reg_n_0_[0] ),
        .I1(\q[30]_i_2_n_0 ),
        .I2(\q[30]_i_3_n_0 ),
        .I3(\q[30]_i_4_n_0 ),
        .I4(data0[19]),
        .O(q[19]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \q[1]_i_1 
       (.I0(\q_reg_n_0_[0] ),
        .I1(\q[30]_i_2_n_0 ),
        .I2(\q[30]_i_3_n_0 ),
        .I3(\q[30]_i_4_n_0 ),
        .I4(data0[1]),
        .O(q[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \q[20]_i_1 
       (.I0(\q_reg_n_0_[0] ),
        .I1(\q[30]_i_2_n_0 ),
        .I2(\q[30]_i_3_n_0 ),
        .I3(\q[30]_i_4_n_0 ),
        .I4(data0[20]),
        .O(q[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \q[21]_i_1 
       (.I0(\q_reg_n_0_[0] ),
        .I1(\q[30]_i_2_n_0 ),
        .I2(\q[30]_i_3_n_0 ),
        .I3(\q[30]_i_4_n_0 ),
        .I4(data0[21]),
        .O(q[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \q[22]_i_1 
       (.I0(\q_reg_n_0_[0] ),
        .I1(\q[30]_i_2_n_0 ),
        .I2(\q[30]_i_3_n_0 ),
        .I3(\q[30]_i_4_n_0 ),
        .I4(data0[22]),
        .O(q[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \q[23]_i_1 
       (.I0(\q_reg_n_0_[0] ),
        .I1(\q[30]_i_2_n_0 ),
        .I2(\q[30]_i_3_n_0 ),
        .I3(\q[30]_i_4_n_0 ),
        .I4(data0[23]),
        .O(q[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \q[24]_i_1 
       (.I0(\q_reg_n_0_[0] ),
        .I1(\q[30]_i_2_n_0 ),
        .I2(\q[30]_i_3_n_0 ),
        .I3(\q[30]_i_4_n_0 ),
        .I4(data0[24]),
        .O(q[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \q[25]_i_1 
       (.I0(\q_reg_n_0_[0] ),
        .I1(\q[30]_i_2_n_0 ),
        .I2(\q[30]_i_3_n_0 ),
        .I3(\q[30]_i_4_n_0 ),
        .I4(data0[25]),
        .O(q[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \q[26]_i_1 
       (.I0(\q_reg_n_0_[0] ),
        .I1(\q[30]_i_2_n_0 ),
        .I2(\q[30]_i_3_n_0 ),
        .I3(\q[30]_i_4_n_0 ),
        .I4(data0[26]),
        .O(q[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \q[27]_i_1 
       (.I0(\q_reg_n_0_[0] ),
        .I1(\q[30]_i_2_n_0 ),
        .I2(\q[30]_i_3_n_0 ),
        .I3(\q[30]_i_4_n_0 ),
        .I4(data0[27]),
        .O(q[27]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \q[28]_i_1 
       (.I0(\q_reg_n_0_[0] ),
        .I1(\q[30]_i_2_n_0 ),
        .I2(\q[30]_i_3_n_0 ),
        .I3(\q[30]_i_4_n_0 ),
        .I4(data0[28]),
        .O(q[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \q[29]_i_1 
       (.I0(\q_reg_n_0_[0] ),
        .I1(\q[30]_i_2_n_0 ),
        .I2(\q[30]_i_3_n_0 ),
        .I3(\q[30]_i_4_n_0 ),
        .I4(data0[29]),
        .O(q[29]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \q[2]_i_1 
       (.I0(\q_reg_n_0_[0] ),
        .I1(\q[30]_i_2_n_0 ),
        .I2(\q[30]_i_3_n_0 ),
        .I3(\q[30]_i_4_n_0 ),
        .I4(data0[2]),
        .O(q[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \q[30]_i_1 
       (.I0(\q_reg_n_0_[0] ),
        .I1(\q[30]_i_2_n_0 ),
        .I2(\q[30]_i_3_n_0 ),
        .I3(\q[30]_i_4_n_0 ),
        .I4(data0[30]),
        .O(q[30]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \q[30]_i_2 
       (.I0(\q_reg_n_0_[13] ),
        .I1(\q_reg_n_0_[14] ),
        .I2(\q_reg_n_0_[11] ),
        .I3(\q_reg_n_0_[12] ),
        .I4(\q[30]_i_6_n_0 ),
        .O(\q[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \q[30]_i_3 
       (.I0(\q_reg_n_0_[5] ),
        .I1(\q_reg_n_0_[6] ),
        .I2(\q_reg_n_0_[3] ),
        .I3(\q_reg_n_0_[4] ),
        .I4(\q[30]_i_7_n_0 ),
        .O(\q[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \q[30]_i_4 
       (.I0(\q[30]_i_8_n_0 ),
        .I1(\q_reg_n_0_[20] ),
        .I2(\q_reg_n_0_[19] ),
        .I3(\q_reg_n_0_[22] ),
        .I4(\q_reg_n_0_[21] ),
        .I5(\q[30]_i_9_n_0 ),
        .O(\q[30]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[30]_i_6 
       (.I0(\q_reg_n_0_[16] ),
        .I1(\q_reg_n_0_[15] ),
        .I2(\q_reg_n_0_[18] ),
        .I3(\q_reg_n_0_[17] ),
        .O(\q[30]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[30]_i_7 
       (.I0(\q_reg_n_0_[8] ),
        .I1(\q_reg_n_0_[7] ),
        .I2(\q_reg_n_0_[10] ),
        .I3(\q_reg_n_0_[9] ),
        .O(\q[30]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[30]_i_8 
       (.I0(\q_reg_n_0_[24] ),
        .I1(\q_reg_n_0_[23] ),
        .I2(\q_reg_n_0_[26] ),
        .I3(\q_reg_n_0_[25] ),
        .O(\q[30]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \q[30]_i_9 
       (.I0(\q_reg_n_0_[29] ),
        .I1(\q_reg_n_0_[30] ),
        .I2(\q_reg_n_0_[27] ),
        .I3(\q_reg_n_0_[28] ),
        .I4(\q_reg_n_0_[1] ),
        .I5(\q_reg_n_0_[2] ),
        .O(\q[30]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \q[3]_i_1 
       (.I0(\q_reg_n_0_[0] ),
        .I1(\q[30]_i_2_n_0 ),
        .I2(\q[30]_i_3_n_0 ),
        .I3(\q[30]_i_4_n_0 ),
        .I4(data0[3]),
        .O(q[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \q[4]_i_1 
       (.I0(\q_reg_n_0_[0] ),
        .I1(\q[30]_i_2_n_0 ),
        .I2(\q[30]_i_3_n_0 ),
        .I3(\q[30]_i_4_n_0 ),
        .I4(data0[4]),
        .O(q[4]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \q[5]_i_1 
       (.I0(\q_reg_n_0_[0] ),
        .I1(\q[30]_i_2_n_0 ),
        .I2(\q[30]_i_3_n_0 ),
        .I3(\q[30]_i_4_n_0 ),
        .I4(data0[5]),
        .O(q[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \q[6]_i_1 
       (.I0(\q_reg_n_0_[0] ),
        .I1(\q[30]_i_2_n_0 ),
        .I2(\q[30]_i_3_n_0 ),
        .I3(\q[30]_i_4_n_0 ),
        .I4(data0[6]),
        .O(q[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \q[7]_i_1 
       (.I0(\q_reg_n_0_[0] ),
        .I1(\q[30]_i_2_n_0 ),
        .I2(\q[30]_i_3_n_0 ),
        .I3(\q[30]_i_4_n_0 ),
        .I4(data0[7]),
        .O(q[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \q[8]_i_1 
       (.I0(\q_reg_n_0_[0] ),
        .I1(\q[30]_i_2_n_0 ),
        .I2(\q[30]_i_3_n_0 ),
        .I3(\q[30]_i_4_n_0 ),
        .I4(data0[8]),
        .O(q[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \q[9]_i_1 
       (.I0(\q_reg_n_0_[0] ),
        .I1(\q[30]_i_2_n_0 ),
        .I2(\q[30]_i_3_n_0 ),
        .I3(\q[30]_i_4_n_0 ),
        .I4(data0[9]),
        .O(q[9]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(q[0]),
        .Q(\q_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(q[10]),
        .Q(\q_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(q[11]),
        .Q(\q_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(q[12]),
        .Q(\q_reg_n_0_[12] ));
  CARRY4 \q_reg[12]_i_2 
       (.CI(\q_reg[8]_i_2_n_0 ),
        .CO({\q_reg[12]_i_2_n_0 ,\q_reg[12]_i_2_n_1 ,\q_reg[12]_i_2_n_2 ,\q_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\q_reg_n_0_[12] ,\q_reg_n_0_[11] ,\q_reg_n_0_[10] ,\q_reg_n_0_[9] }));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(q[13]),
        .Q(\q_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(q[14]),
        .Q(\q_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(q[15]),
        .Q(\q_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(q[16]),
        .Q(\q_reg_n_0_[16] ));
  CARRY4 \q_reg[16]_i_2 
       (.CI(\q_reg[12]_i_2_n_0 ),
        .CO({\q_reg[16]_i_2_n_0 ,\q_reg[16]_i_2_n_1 ,\q_reg[16]_i_2_n_2 ,\q_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\q_reg_n_0_[16] ,\q_reg_n_0_[15] ,\q_reg_n_0_[14] ,\q_reg_n_0_[13] }));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(q[17]),
        .Q(\q_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(q[18]),
        .Q(\q_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(q[19]),
        .Q(\q_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(q[1]),
        .Q(\q_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(q[20]),
        .Q(\q_reg_n_0_[20] ));
  CARRY4 \q_reg[20]_i_2 
       (.CI(\q_reg[16]_i_2_n_0 ),
        .CO({\q_reg[20]_i_2_n_0 ,\q_reg[20]_i_2_n_1 ,\q_reg[20]_i_2_n_2 ,\q_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S({\q_reg_n_0_[20] ,\q_reg_n_0_[19] ,\q_reg_n_0_[18] ,\q_reg_n_0_[17] }));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(q[21]),
        .Q(\q_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(q[22]),
        .Q(\q_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(q[23]),
        .Q(\q_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(q[24]),
        .Q(\q_reg_n_0_[24] ));
  CARRY4 \q_reg[24]_i_2 
       (.CI(\q_reg[20]_i_2_n_0 ),
        .CO({\q_reg[24]_i_2_n_0 ,\q_reg[24]_i_2_n_1 ,\q_reg[24]_i_2_n_2 ,\q_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S({\q_reg_n_0_[24] ,\q_reg_n_0_[23] ,\q_reg_n_0_[22] ,\q_reg_n_0_[21] }));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(q[25]),
        .Q(\q_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(q[26]),
        .Q(\q_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(q[27]),
        .Q(\q_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(q[28]),
        .Q(\q_reg_n_0_[28] ));
  CARRY4 \q_reg[28]_i_2 
       (.CI(\q_reg[24]_i_2_n_0 ),
        .CO({\q_reg[28]_i_2_n_0 ,\q_reg[28]_i_2_n_1 ,\q_reg[28]_i_2_n_2 ,\q_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S({\q_reg_n_0_[28] ,\q_reg_n_0_[27] ,\q_reg_n_0_[26] ,\q_reg_n_0_[25] }));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(q[29]),
        .Q(\q_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(q[2]),
        .Q(\q_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(q[30]),
        .Q(\q_reg_n_0_[30] ));
  CARRY4 \q_reg[30]_i_5 
       (.CI(\q_reg[28]_i_2_n_0 ),
        .CO({\NLW_q_reg[30]_i_5_CO_UNCONNECTED [3:1],\q_reg[30]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_q_reg[30]_i_5_O_UNCONNECTED [3:2],data0[30:29]}),
        .S({1'b0,1'b0,\q_reg_n_0_[30] ,\q_reg_n_0_[29] }));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(q[3]),
        .Q(\q_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(q[4]),
        .Q(\q_reg_n_0_[4] ));
  CARRY4 \q_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\q_reg[4]_i_2_n_0 ,\q_reg[4]_i_2_n_1 ,\q_reg[4]_i_2_n_2 ,\q_reg[4]_i_2_n_3 }),
        .CYINIT(\q_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\q_reg_n_0_[4] ,\q_reg_n_0_[3] ,\q_reg_n_0_[2] ,\q_reg_n_0_[1] }));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(q[5]),
        .Q(\q_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(q[6]),
        .Q(\q_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(q[7]),
        .Q(\q_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(q[8]),
        .Q(\q_reg_n_0_[8] ));
  CARRY4 \q_reg[8]_i_2 
       (.CI(\q_reg[4]_i_2_n_0 ),
        .CO({\q_reg[8]_i_2_n_0 ,\q_reg[8]_i_2_n_1 ,\q_reg[8]_i_2_n_2 ,\q_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\q_reg_n_0_[8] ,\q_reg_n_0_[7] ,\q_reg_n_0_[6] ,\q_reg_n_0_[5] }));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(q[9]),
        .Q(\q_reg_n_0_[9] ));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    read_clk_i_1
       (.I0(\q_reg_n_0_[0] ),
        .I1(\q[30]_i_2_n_0 ),
        .I2(\q[30]_i_3_n_0 ),
        .I3(\q[30]_i_4_n_0 ),
        .I4(read_clk_reg_n_0),
        .O(read_clk_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    read_clk_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(read_clk_i_1_n_0),
        .Q(read_clk_reg_n_0));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  OBUF scl_OBUF_inst
       (.I(scl_OBUF),
        .O(scl));
  LUT2 #(
    .INIT(4'hB)) 
    scl_OBUF_inst_i_1
       (.I0(read_clk_reg_n_0),
        .I1(scl_enable_reg_n_0),
        .O(scl_OBUF));
  LUT6 #(
    .INIT(64'hFFFFF7EE00000004)) 
    scl_enable_i_1
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(state__0[3]),
        .I3(state__0[2]),
        .I4(reset_IBUF),
        .I5(scl_enable_reg_n_0),
        .O(scl_enable_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    scl_enable_reg
       (.C(read_clk_reg_n_0),
        .CE(1'b1),
        .D(scl_enable_i_1_n_0),
        .Q(scl_enable_reg_n_0),
        .R(1'b0));
  OBUFT sda_OBUFT_inst
       (.I(sda_OBUF),
        .O(sda),
        .T(sda_TRI));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    sda_enable_reg
       (.C(read_clk_reg_n_0),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(enable_reg_n_0),
        .Q(sda_TRI));
  LUT6 #(
    .INIT(64'hFAFFFAEA0A000A2A)) 
    sdadata_i_1
       (.I0(sdadata_i_2_n_0),
        .I1(state__0[1]),
        .I2(state__0[3]),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(sda_OBUF),
        .O(sdadata_i_1_n_0));
  LUT6 #(
    .INIT(64'hCCCCCCDDCCFCCCDD)) 
    sdadata_i_2
       (.I0(state__0[0]),
        .I1(sdadata_i_3_n_0),
        .I2(sdadata_i_4_n_0),
        .I3(state__0[1]),
        .I4(state__0[2]),
        .I5(state__0[3]),
        .O(sdadata_i_2_n_0));
  LUT5 #(
    .INIT(32'h01100000)) 
    sdadata_i_3
       (.I0(state__0[0]),
        .I1(state__0[3]),
        .I2(\i_reg_n_0_[2] ),
        .I3(\i_reg_n_0_[0] ),
        .I4(\i_reg_n_0_[1] ),
        .O(sdadata_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000181A00101EFF)) 
    sdadata_i_4
       (.I0(\i_reg_n_0_[4] ),
        .I1(\i_reg_n_0_[3] ),
        .I2(\i_reg_n_0_[5] ),
        .I3(\i_reg_n_0_[0] ),
        .I4(\i_reg_n_0_[2] ),
        .I5(\i_reg_n_0_[1] ),
        .O(sdadata_i_4_n_0));
  FDPE #(
    .INIT(1'b1)) 
    sdadata_reg
       (.C(read_clk_reg_n_0),
        .CE(1'b1),
        .D(sdadata_i_1_n_0),
        .PRE(reset_IBUF),
        .Q(sda_OBUF));
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
