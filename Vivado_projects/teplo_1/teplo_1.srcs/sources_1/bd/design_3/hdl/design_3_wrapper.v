//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
//Date        : Mon Nov 06 20:52:29 2017
//Host        : Acer running 64-bit major release  (build 9200)
//Command     : generate_target design_3_wrapper.bd
//Design      : design_3_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_3_wrapper
   (aclk,
    sub_A,
    sub_B,
    sub_out);
  input aclk;
  input [31:0]sub_A;
  input [31:0]sub_B;
  output [31:0]sub_out;

  wire aclk;
  wire [31:0]sub_A;
  wire [31:0]sub_B;
  wire [31:0]sub_out;

  design_3 design_3_i
       (.aclk(aclk),
        .sub_A(sub_A),
        .sub_B(sub_B),
        .sub_out(sub_out));
endmodule
