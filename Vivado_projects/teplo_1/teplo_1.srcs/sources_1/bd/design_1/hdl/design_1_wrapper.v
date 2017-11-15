//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
//Date        : Mon Nov 06 20:52:36 2017
//Host        : Acer running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (aclk,
    add_A,
    add_B,
    add_out);
  input aclk;
  input [31:0]add_A;
  input [31:0]add_B;
  output [31:0]add_out;

  wire aclk;
  wire [31:0]add_A;
  wire [31:0]add_B;
  wire [31:0]add_out;

  design_1 design_1_i
       (.aclk(aclk),
        .add_A(add_A),
        .add_B(add_B),
        .add_out(add_out));
endmodule
