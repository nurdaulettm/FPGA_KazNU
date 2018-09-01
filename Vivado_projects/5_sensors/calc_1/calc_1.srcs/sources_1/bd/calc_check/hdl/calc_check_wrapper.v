//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Sat Sep  1 14:26:37 2018
//Host        : BAKYTZHAN-PC running 64-bit major release  (build 9200)
//Command     : generate_target calc_check_wrapper.bd
//Design      : calc_check_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module calc_check_wrapper
   (Comp_1,
    Comp_2,
    Sub_1,
    Sub_2,
    abs_in,
    abs_in_ready,
    abs_in_valid,
    abs_out,
    abs_out_valid,
    clk,
    clken_comp,
    clken_sub,
    comp_1_ready,
    comp_1_valid,
    comp_2_ready,
    comp_2_valid,
    comp_result,
    comp_result_valid,
    reset_comp,
    reset_sub,
    sub_1_ready,
    sub_1_valid,
    sub_2_ready,
    sub_2_valid,
    sub_result,
    sub_result_valid);
  input [31:0]Comp_1;
  input [31:0]Comp_2;
  input [31:0]Sub_1;
  input [31:0]Sub_2;
  input [31:0]abs_in;
  output abs_in_ready;
  input abs_in_valid;
  output [31:0]abs_out;
  output abs_out_valid;
  input clk;
  input clken_comp;
  input clken_sub;
  output comp_1_ready;
  input comp_1_valid;
  output comp_2_ready;
  input comp_2_valid;
  output [7:0]comp_result;
  output comp_result_valid;
  input reset_comp;
  input reset_sub;
  output sub_1_ready;
  input sub_1_valid;
  output sub_2_ready;
  input sub_2_valid;
  output [31:0]sub_result;
  output sub_result_valid;

  wire [31:0]Comp_1;
  wire [31:0]Comp_2;
  wire [31:0]Sub_1;
  wire [31:0]Sub_2;
  wire [31:0]abs_in;
  wire abs_in_ready;
  wire abs_in_valid;
  wire [31:0]abs_out;
  wire abs_out_valid;
  wire clk;
  wire clken_comp;
  wire clken_sub;
  wire comp_1_ready;
  wire comp_1_valid;
  wire comp_2_ready;
  wire comp_2_valid;
  wire [7:0]comp_result;
  wire comp_result_valid;
  wire reset_comp;
  wire reset_sub;
  wire sub_1_ready;
  wire sub_1_valid;
  wire sub_2_ready;
  wire sub_2_valid;
  wire [31:0]sub_result;
  wire sub_result_valid;

  calc_check calc_check_i
       (.Comp_1(Comp_1),
        .Comp_2(Comp_2),
        .Sub_1(Sub_1),
        .Sub_2(Sub_2),
        .abs_in(abs_in),
        .abs_in_ready(abs_in_ready),
        .abs_in_valid(abs_in_valid),
        .abs_out(abs_out),
        .abs_out_valid(abs_out_valid),
        .clk(clk),
        .clken_comp(clken_comp),
        .clken_sub(clken_sub),
        .comp_1_ready(comp_1_ready),
        .comp_1_valid(comp_1_valid),
        .comp_2_ready(comp_2_ready),
        .comp_2_valid(comp_2_valid),
        .comp_result(comp_result),
        .comp_result_valid(comp_result_valid),
        .reset_comp(reset_comp),
        .reset_sub(reset_sub),
        .sub_1_ready(sub_1_ready),
        .sub_1_valid(sub_1_valid),
        .sub_2_ready(sub_2_ready),
        .sub_2_valid(sub_2_valid),
        .sub_result(sub_result),
        .sub_result_valid(sub_result_valid));
endmodule
