//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
//Date        : Mon Nov 06 20:52:35 2017
//Host        : Acer running 64-bit major release  (build 9200)
//Command     : generate_target design_2.bd
//Design      : design_2
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_2,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_2,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,synth_mode=Global}" *) (* HW_HANDOFF = "design_2.hwdef" *) 
module design_2
   (aclk,
    mult_A,
    mult_B,
    mult_out);
  input aclk;
  input [31:0]mult_A;
  input [31:0]mult_B;
  output [31:0]mult_out;

  wire aclk_1;
  wire [31:0]floating_point_0_m_axis_result_tdata;
  wire [31:0]mult_A_1;
  wire [31:0]mult_B_1;

  assign aclk_1 = aclk;
  assign mult_A_1 = mult_A[31:0];
  assign mult_B_1 = mult_B[31:0];
  assign mult_out[31:0] = floating_point_0_m_axis_result_tdata;
  design_2_floating_point_0_0 floating_point_0
       (.aclk(aclk_1),
        .m_axis_result_tdata(floating_point_0_m_axis_result_tdata),
        .m_axis_result_tready(1'b0),
        .s_axis_a_tdata(mult_A_1),
        .s_axis_a_tvalid(1'b0),
        .s_axis_b_tdata(mult_B_1),
        .s_axis_b_tvalid(1'b0));
endmodule
