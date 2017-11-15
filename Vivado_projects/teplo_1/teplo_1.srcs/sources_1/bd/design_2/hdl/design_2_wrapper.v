//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
//Date        : Mon Nov 06 20:52:35 2017
//Host        : Acer running 64-bit major release  (build 9200)
//Command     : generate_target design_2_wrapper.bd
//Design      : design_2_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_2_wrapper
   (aclk,
    mult_A,
    mult_B,
    mult_out);
  input aclk;
  input [31:0]mult_A;
  input [31:0]mult_B;
  output [31:0]mult_out;

  wire aclk;
  wire [31:0]mult_A;
  wire [31:0]mult_B;
  wire [31:0]mult_out;

  design_2 design_2_i
       (.aclk(aclk),
        .mult_A(mult_A),
        .mult_B(mult_B),
        .mult_out(mult_out));
endmodule
