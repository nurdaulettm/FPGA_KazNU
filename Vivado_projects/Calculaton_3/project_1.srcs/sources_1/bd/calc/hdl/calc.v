//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
//Date        : Wed Apr 04 17:21:27 2018
//Host        : Asus running 64-bit major release  (build 9200)
//Command     : generate_target calc.bd
//Design      : calc
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "calc,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=calc,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,synth_mode=Global}" *) (* HW_HANDOFF = "calc.hwdef" *) 
module calc
   (A,
    B,
    C,
    D,
    D_ready,
    D_valid,
    E,
    E_ready,
    E_valid,
    a_ready,
    a_valid,
    aclken,
    aclken2,
    aclken3,
    aresetn,
    b_ready,
    b_valid,
    c_ready,
    c_valid,
    clk,
    k,
    k_ready,
    k_valid,
    reset2,
    reset3,
    result,
    result2,
    result2_valid,
    result3,
    result3_valid,
    result_input2,
    result_input2_ready,
    result_input2_valid,
    result_input3,
    result_input3_ready,
    result_input3_valid,
    result_valid);
  input [31:0]A;
  input [31:0]B;
  input [31:0]C;
  input [31:0]D;
  output D_ready;
  input D_valid;
  input [31:0]E;
  output E_ready;
  input E_valid;
  output a_ready;
  input a_valid;
  input aclken;
  input aclken2;
  input aclken3;
  input aresetn;
  output b_ready;
  input b_valid;
  output c_ready;
  input c_valid;
  input clk;
  input [31:0]k;
  output k_ready;
  input k_valid;
  input reset2;
  input reset3;
  output [31:0]result;
  output [31:0]result2;
  output result2_valid;
  output [31:0]result3;
  output result3_valid;
  input [31:0]result_input2;
  output result_input2_ready;
  input result_input2_valid;
  input [31:0]result_input3;
  output result_input3_ready;
  input result_input3_valid;
  output result_valid;

  wire [31:0]A_1;
  wire [31:0]B_1;
  wire [31:0]C_1;
  wire [31:0]D_1;
  wire D_valid_1;
  wire [31:0]E_1;
  wire E_valid_1;
  wire a_valid_1;
  wire aclken2_1;
  wire aclken3_1;
  wire aclken_1;
  wire aresetn_1;
  wire b_valid_1;
  wire c_valid_1;
  wire clk_1;
  wire [31:0]floating_point_0_m_axis_result_tdata;
  wire floating_point_0_m_axis_result_tvalid;
  wire floating_point_0_s_axis_a_tready;
  wire floating_point_0_s_axis_b_tready;
  wire floating_point_0_s_axis_c_tready;
  wire [31:0]floating_point_1_m_axis_result_tdata;
  wire floating_point_1_m_axis_result_tvalid;
  wire floating_point_1_s_axis_a_tready;
  wire floating_point_1_s_axis_b_tready;
  wire [31:0]floating_point_2_m_axis_result_tdata;
  wire floating_point_2_m_axis_result_tvalid;
  wire floating_point_2_s_axis_a_tready;
  wire floating_point_2_s_axis_b_tready;
  wire floating_point_2_s_axis_c_tready;
  wire [31:0]k_1;
  wire k_valid_1;
  wire reset2_1;
  wire reset3_1;
  wire [31:0]result_input2_1;
  wire [31:0]result_input3_1;
  wire result_input3_valid_1;
  wire result_input_valid2_1;

  assign A_1 = A[31:0];
  assign B_1 = B[31:0];
  assign C_1 = C[31:0];
  assign D_1 = D[31:0];
  assign D_ready = floating_point_1_s_axis_b_tready;
  assign D_valid_1 = D_valid;
  assign E_1 = E[31:0];
  assign E_ready = floating_point_2_s_axis_c_tready;
  assign E_valid_1 = E_valid;
  assign a_ready = floating_point_0_s_axis_a_tready;
  assign a_valid_1 = a_valid;
  assign aclken2_1 = aclken2;
  assign aclken3_1 = aclken3;
  assign aclken_1 = aclken;
  assign aresetn_1 = aresetn;
  assign b_ready = floating_point_0_s_axis_b_tready;
  assign b_valid_1 = b_valid;
  assign c_ready = floating_point_0_s_axis_c_tready;
  assign c_valid_1 = c_valid;
  assign clk_1 = clk;
  assign k_1 = k[31:0];
  assign k_ready = floating_point_2_s_axis_a_tready;
  assign k_valid_1 = k_valid;
  assign reset2_1 = reset2;
  assign reset3_1 = reset3;
  assign result[31:0] = floating_point_0_m_axis_result_tdata;
  assign result2[31:0] = floating_point_1_m_axis_result_tdata;
  assign result2_valid = floating_point_1_m_axis_result_tvalid;
  assign result3[31:0] = floating_point_2_m_axis_result_tdata;
  assign result3_valid = floating_point_2_m_axis_result_tvalid;
  assign result_input2_1 = result_input2[31:0];
  assign result_input2_ready = floating_point_1_s_axis_a_tready;
  assign result_input3_1 = result_input3[31:0];
  assign result_input3_ready = floating_point_2_s_axis_b_tready;
  assign result_input3_valid_1 = result_input3_valid;
  assign result_input_valid2_1 = result_input2_valid;
  assign result_valid = floating_point_0_m_axis_result_tvalid;
  calc_floating_point_0_0 floating_point_0
       (.aclk(clk_1),
        .aclken(aclken_1),
        .aresetn(aresetn_1),
        .m_axis_result_tdata(floating_point_0_m_axis_result_tdata),
        .m_axis_result_tvalid(floating_point_0_m_axis_result_tvalid),
        .s_axis_a_tdata(A_1),
        .s_axis_a_tready(floating_point_0_s_axis_a_tready),
        .s_axis_a_tvalid(a_valid_1),
        .s_axis_b_tdata(B_1),
        .s_axis_b_tready(floating_point_0_s_axis_b_tready),
        .s_axis_b_tvalid(b_valid_1),
        .s_axis_c_tdata(C_1),
        .s_axis_c_tready(floating_point_0_s_axis_c_tready),
        .s_axis_c_tvalid(c_valid_1));
  calc_floating_point_1_0 floating_point_1
       (.aclk(clk_1),
        .aclken(aclken2_1),
        .aresetn(reset2_1),
        .m_axis_result_tdata(floating_point_1_m_axis_result_tdata),
        .m_axis_result_tvalid(floating_point_1_m_axis_result_tvalid),
        .s_axis_a_tdata(result_input2_1),
        .s_axis_a_tready(floating_point_1_s_axis_a_tready),
        .s_axis_a_tvalid(result_input_valid2_1),
        .s_axis_b_tdata(D_1),
        .s_axis_b_tready(floating_point_1_s_axis_b_tready),
        .s_axis_b_tvalid(D_valid_1));
  calc_floating_point_2_0 floating_point_2
       (.aclk(clk_1),
        .aclken(aclken3_1),
        .aresetn(reset3_1),
        .m_axis_result_tdata(floating_point_2_m_axis_result_tdata),
        .m_axis_result_tvalid(floating_point_2_m_axis_result_tvalid),
        .s_axis_a_tdata(k_1),
        .s_axis_a_tready(floating_point_2_s_axis_a_tready),
        .s_axis_a_tvalid(k_valid_1),
        .s_axis_b_tdata(result_input3_1),
        .s_axis_b_tready(floating_point_2_s_axis_b_tready),
        .s_axis_b_tvalid(result_input3_valid_1),
        .s_axis_c_tdata(E_1),
        .s_axis_c_tready(floating_point_2_s_axis_c_tready),
        .s_axis_c_tvalid(E_valid_1));
endmodule
