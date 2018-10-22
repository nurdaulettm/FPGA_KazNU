//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Sat Sep  1 14:26:38 2018
//Host        : BAKYTZHAN-PC running 64-bit major release  (build 9200)
//Command     : generate_target calculation_wrapper.bd
//Design      : calculation_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module calculation_wrapper
   (A,
    B,
    C,
    D,
    E,
    a_ready,
    a_valid,
    b_ready,
    b_valid,
    c_ready,
    c_valid,
    clk,
    clken_1,
    clken_2,
    clken_3,
    d_ready,
    d_valid,
    e_ready,
    e_valid,
    k,
    k_ready,
    k_valid,
    reset_1,
    reset_2,
    reset_3,
    result_1,
    result_1_input,
    result_1_input_ready,
    result_1_input_valid,
    result_1_valid,
    result_2,
    result_2_input,
    result_2_input_ready,
    result_2_input_valid,
    result_2_valid,
    result_3,
    result_3_valid);
  input [31:0]A;
  input [31:0]B;
  input [31:0]C;
  input [31:0]D;
  input [31:0]E;
  output a_ready;
  input a_valid;
  output b_ready;
  input b_valid;
  output c_ready;
  input c_valid;
  input clk;
  input clken_1;
  input clken_2;
  input clken_3;
  output d_ready;
  input d_valid;
  output e_ready;
  input e_valid;
  input [31:0]k;
  output k_ready;
  input k_valid;
  input reset_1;
  input reset_2;
  input reset_3;
  output [31:0]result_1;
  input [31:0]result_1_input;
  output result_1_input_ready;
  input result_1_input_valid;
  output result_1_valid;
  output [31:0]result_2;
  input [31:0]result_2_input;
  output result_2_input_ready;
  input result_2_input_valid;
  output result_2_valid;
  output [31:0]result_3;
  output result_3_valid;

  wire [31:0]A;
  wire [31:0]B;
  wire [31:0]C;
  wire [31:0]D;
  wire [31:0]E;
  wire a_ready;
  wire a_valid;
  wire b_ready;
  wire b_valid;
  wire c_ready;
  wire c_valid;
  wire clk;
  wire clken_1;
  wire clken_2;
  wire clken_3;
  wire d_ready;
  wire d_valid;
  wire e_ready;
  wire e_valid;
  wire [31:0]k;
  wire k_ready;
  wire k_valid;
  wire reset_1;
  wire reset_2;
  wire reset_3;
  wire [31:0]result_1;
  wire [31:0]result_1_input;
  wire result_1_input_ready;
  wire result_1_input_valid;
  wire result_1_valid;
  wire [31:0]result_2;
  wire [31:0]result_2_input;
  wire result_2_input_ready;
  wire result_2_input_valid;
  wire result_2_valid;
  wire [31:0]result_3;
  wire result_3_valid;

  calculation calculation_i
       (.A(A),
        .B(B),
        .C(C),
        .D(D),
        .E(E),
        .a_ready(a_ready),
        .a_valid(a_valid),
        .b_ready(b_ready),
        .b_valid(b_valid),
        .c_ready(c_ready),
        .c_valid(c_valid),
        .clk(clk),
        .clken_1(clken_1),
        .clken_2(clken_2),
        .clken_3(clken_3),
        .d_ready(d_ready),
        .d_valid(d_valid),
        .e_ready(e_ready),
        .e_valid(e_valid),
        .k(k),
        .k_ready(k_ready),
        .k_valid(k_valid),
        .reset_1(reset_1),
        .reset_2(reset_2),
        .reset_3(reset_3),
        .result_1(result_1),
        .result_1_input(result_1_input),
        .result_1_input_ready(result_1_input_ready),
        .result_1_input_valid(result_1_input_valid),
        .result_1_valid(result_1_valid),
        .result_2(result_2),
        .result_2_input(result_2_input),
        .result_2_input_ready(result_2_input_ready),
        .result_2_input_valid(result_2_input_valid),
        .result_2_valid(result_2_valid),
        .result_3(result_3),
        .result_3_valid(result_3_valid));
endmodule
