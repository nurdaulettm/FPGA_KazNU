//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
//Date        : Tue Mar 20 17:14:23 2018
//Host        : Acer running 64-bit major release  (build 9200)
//Command     : generate_target calc_wrapper.bd
//Design      : calc_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module calc_wrapper
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
    result2_ready,
    result2_valid,
    result3,
    result3_ready,
    result3_valid,
    result_input2,
    result_input2_ready,
    result_input2_valid,
    result_input3,
    result_input3_ready,
    result_input3_valid,
    result_ready,
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
  input result2_ready;
  output result2_valid;
  output [31:0]result3;
  input result3_ready;
  output result3_valid;
  input [31:0]result_input2;
  output result_input2_ready;
  input result_input2_valid;
  input [31:0]result_input3;
  output result_input3_ready;
  input result_input3_valid;
  input result_ready;
  output result_valid;

  wire [31:0]A;
  wire [31:0]B;
  wire [31:0]C;
  wire [31:0]D;
  wire D_ready;
  wire D_valid;
  wire [31:0]E;
  wire E_ready;
  wire E_valid;
  wire a_ready;
  wire a_valid;
  wire aclken;
  wire aclken2;
  wire aclken3;
  wire aresetn;
  wire b_ready;
  wire b_valid;
  wire c_ready;
  wire c_valid;
  wire clk;
  wire [31:0]k;
  wire k_ready;
  wire k_valid;
  wire reset2;
  wire reset3;
  wire [31:0]result;
  wire [31:0]result2;
  wire result2_ready;
  wire result2_valid;
  wire [31:0]result3;
  wire result3_ready;
  wire result3_valid;
  wire [31:0]result_input2;
  wire result_input2_ready;
  wire result_input2_valid;
  wire [31:0]result_input3;
  wire result_input3_ready;
  wire result_input3_valid;
  wire result_ready;
  wire result_valid;

  calc calc_i
       (.A(A),
        .B(B),
        .C(C),
        .D(D),
        .D_ready(D_ready),
        .D_valid(D_valid),
        .E(E),
        .E_ready(E_ready),
        .E_valid(E_valid),
        .a_ready(a_ready),
        .a_valid(a_valid),
        .aclken(aclken),
        .aclken2(aclken2),
        .aclken3(aclken3),
        .aresetn(aresetn),
        .b_ready(b_ready),
        .b_valid(b_valid),
        .c_ready(c_ready),
        .c_valid(c_valid),
        .clk(clk),
        .k(k),
        .k_ready(k_ready),
        .k_valid(k_valid),
        .reset2(reset2),
        .reset3(reset3),
        .result(result),
        .result2(result2),
        .result2_ready(result2_ready),
        .result2_valid(result2_valid),
        .result3(result3),
        .result3_ready(result3_ready),
        .result3_valid(result3_valid),
        .result_input2(result_input2),
        .result_input2_ready(result_input2_ready),
        .result_input2_valid(result_input2_valid),
        .result_input3(result_input3),
        .result_input3_ready(result_input3_ready),
        .result_input3_valid(result_input3_valid),
        .result_ready(result_ready),
        .result_valid(result_valid));
endmodule
