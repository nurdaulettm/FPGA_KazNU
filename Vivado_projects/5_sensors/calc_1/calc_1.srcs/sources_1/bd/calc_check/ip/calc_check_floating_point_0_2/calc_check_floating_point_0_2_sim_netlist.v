// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Sep  1 14:27:47 2018
// Host        : BAKYTZHAN-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/FPGA/Trash/calc_2/calc_1.srcs/sources_1/bd/calc_check/ip/calc_check_floating_point_0_2/calc_check_floating_point_0_2_sim_netlist.v
// Design      : calc_check_floating_point_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "calc_check_floating_point_0_2,floating_point_v7_1_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "floating_point_v7_1_6,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module calc_check_floating_point_0_2
   (aclk,
    aclken,
    aresetn,
    s_axis_a_tvalid,
    s_axis_a_tready,
    s_axis_a_tdata,
    s_axis_b_tvalid,
    s_axis_b_tready,
    s_axis_b_tdata,
    m_axis_result_tvalid,
    m_axis_result_tdata);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_OPERATION:M_AXIS_RESULT:S_AXIS_C:S_AXIS_B:S_AXIS_A, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN calc_check_clk" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 aclken_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME aclken_intf, POLARITY ACTIVE_HIGH" *) input aclken;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW" *) input aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_A TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_A, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN calc_check_clk, LAYERED_METADATA undef" *) input s_axis_a_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_A TREADY" *) output s_axis_a_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_A TDATA" *) input [31:0]s_axis_a_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_B TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_B, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN calc_check_clk, LAYERED_METADATA undef" *) input s_axis_b_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_B TREADY" *) output s_axis_b_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_B TDATA" *) input [31:0]s_axis_b_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_RESULT, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN calc_check_clk, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value result} bitwidth {attribs {resolve_type generated dependency width format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA_WIDTH 8 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_underflow {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value underflow} enabled {attribs {resolve_type generated dependency underflow_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency underflow_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} field_overflow {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value overflow} enabled {attribs {resolve_type generated dependency overflow_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency overflow_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency overflow_bitoffset format long minimum {} maximum {}} value 0}}} field_invalid_op {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value invalid_op} enabled {attribs {resolve_type generated dependency invalid_op_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency invalid_op_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency invalid_op_bitoffset format long minimum {} maximum {}} value 0}}} field_div_by_zero {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value div_by_zero} enabled {attribs {resolve_type generated dependency div_by_zero_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency div_by_zero_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency div_by_zero_bitoffset format long minimum {} maximum {}} value 0}}} field_accum_input_overflow {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value accum_input_overflow} enabled {attribs {resolve_type generated dependency accum_input_overflow_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency accum_input_overflow_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency accum_input_overflow_bitoffset format long minimum {} maximum {}} value 0}}} field_accum_overflow {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value accum_overflow} enabled {attribs {resolve_type generated dependency accum_overflow_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency accum_overflow_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency accum_overflow_bitoffset format long minimum {} maximum {}} value 0}}} field_a_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value a_tuser} enabled {attribs {resolve_type generated dependency a_tuser_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency a_tuser_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency a_tuser_bitoffset format long minimum {} maximum {}} value 0}}} field_b_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value b_tuser} enabled {attribs {resolve_type generated dependency b_tuser_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency b_tuser_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency b_tuser_bitoffset format long minimum {} maximum {}} value 0}}} field_c_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value c_tuser} enabled {attribs {resolve_type generated dependency c_tuser_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency c_tuser_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency c_tuser_bitoffset format long minimum {} maximum {}} value 0}}} field_operation_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value operation_tuser} enabled {attribs {resolve_type generated dependency operation_tuser_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency operation_tuser_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency operation_tuser_bitoffset format long minimum {} maximum {}} value 0}}}}}} TUSER_WIDTH 0}" *) output m_axis_result_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TDATA" *) output [7:0]m_axis_result_tdata;

  wire aclk;
  wire aclken;
  wire aresetn;
  wire [7:0]m_axis_result_tdata;
  wire m_axis_result_tvalid;
  wire [31:0]s_axis_a_tdata;
  wire s_axis_a_tready;
  wire s_axis_a_tvalid;
  wire [31:0]s_axis_b_tdata;
  wire s_axis_b_tready;
  wire s_axis_b_tvalid;
  wire NLW_U0_m_axis_result_tlast_UNCONNECTED;
  wire NLW_U0_s_axis_c_tready_UNCONNECTED;
  wire NLW_U0_s_axis_operation_tready_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_result_tuser_UNCONNECTED;

  (* C_ACCUM_INPUT_MSB = "32" *) 
  (* C_ACCUM_LSB = "-31" *) 
  (* C_ACCUM_MSB = "32" *) 
  (* C_A_FRACTION_WIDTH = "24" *) 
  (* C_A_TDATA_WIDTH = "32" *) 
  (* C_A_TUSER_WIDTH = "1" *) 
  (* C_A_WIDTH = "32" *) 
  (* C_BRAM_USAGE = "0" *) 
  (* C_B_FRACTION_WIDTH = "24" *) 
  (* C_B_TDATA_WIDTH = "32" *) 
  (* C_B_TUSER_WIDTH = "1" *) 
  (* C_B_WIDTH = "32" *) 
  (* C_COMPARE_OPERATION = "1" *) 
  (* C_C_FRACTION_WIDTH = "24" *) 
  (* C_C_TDATA_WIDTH = "32" *) 
  (* C_C_TUSER_WIDTH = "1" *) 
  (* C_C_WIDTH = "32" *) 
  (* C_FIXED_DATA_UNSIGNED = "0" *) 
  (* C_HAS_ABSOLUTE = "0" *) 
  (* C_HAS_ACCUMULATOR_A = "0" *) 
  (* C_HAS_ACCUMULATOR_S = "0" *) 
  (* C_HAS_ACCUM_INPUT_OVERFLOW = "0" *) 
  (* C_HAS_ACCUM_OVERFLOW = "0" *) 
  (* C_HAS_ACLKEN = "1" *) 
  (* C_HAS_ADD = "0" *) 
  (* C_HAS_ARESETN = "1" *) 
  (* C_HAS_A_TLAST = "0" *) 
  (* C_HAS_A_TUSER = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_B_TLAST = "0" *) 
  (* C_HAS_B_TUSER = "0" *) 
  (* C_HAS_C = "0" *) 
  (* C_HAS_COMPARE = "1" *) 
  (* C_HAS_C_TLAST = "0" *) 
  (* C_HAS_C_TUSER = "0" *) 
  (* C_HAS_DIVIDE = "0" *) 
  (* C_HAS_DIVIDE_BY_ZERO = "0" *) 
  (* C_HAS_EXPONENTIAL = "0" *) 
  (* C_HAS_FIX_TO_FLT = "0" *) 
  (* C_HAS_FLT_TO_FIX = "0" *) 
  (* C_HAS_FLT_TO_FLT = "0" *) 
  (* C_HAS_FMA = "0" *) 
  (* C_HAS_FMS = "0" *) 
  (* C_HAS_INVALID_OP = "0" *) 
  (* C_HAS_LOGARITHM = "0" *) 
  (* C_HAS_MULTIPLY = "0" *) 
  (* C_HAS_OPERATION = "0" *) 
  (* C_HAS_OPERATION_TLAST = "0" *) 
  (* C_HAS_OPERATION_TUSER = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_RECIP = "0" *) 
  (* C_HAS_RECIP_SQRT = "0" *) 
  (* C_HAS_RESULT_TLAST = "0" *) 
  (* C_HAS_RESULT_TUSER = "0" *) 
  (* C_HAS_SQRT = "0" *) 
  (* C_HAS_SUBTRACT = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MULT_USAGE = "0" *) 
  (* C_OPERATION_TDATA_WIDTH = "8" *) 
  (* C_OPERATION_TUSER_WIDTH = "1" *) 
  (* C_OPTIMIZATION = "1" *) 
  (* C_RATE = "1" *) 
  (* C_RESULT_FRACTION_WIDTH = "0" *) 
  (* C_RESULT_TDATA_WIDTH = "8" *) 
  (* C_RESULT_TUSER_WIDTH = "1" *) 
  (* C_RESULT_WIDTH = "1" *) 
  (* C_THROTTLE_SCHEME = "4" *) 
  (* C_TLAST_RESOLUTION = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  calc_check_floating_point_0_2_floating_point_v7_1_6 U0
       (.aclk(aclk),
        .aclken(aclken),
        .aresetn(aresetn),
        .m_axis_result_tdata(m_axis_result_tdata),
        .m_axis_result_tlast(NLW_U0_m_axis_result_tlast_UNCONNECTED),
        .m_axis_result_tready(1'b0),
        .m_axis_result_tuser(NLW_U0_m_axis_result_tuser_UNCONNECTED[0]),
        .m_axis_result_tvalid(m_axis_result_tvalid),
        .s_axis_a_tdata(s_axis_a_tdata),
        .s_axis_a_tlast(1'b0),
        .s_axis_a_tready(s_axis_a_tready),
        .s_axis_a_tuser(1'b0),
        .s_axis_a_tvalid(s_axis_a_tvalid),
        .s_axis_b_tdata(s_axis_b_tdata),
        .s_axis_b_tlast(1'b0),
        .s_axis_b_tready(s_axis_b_tready),
        .s_axis_b_tuser(1'b0),
        .s_axis_b_tvalid(s_axis_b_tvalid),
        .s_axis_c_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_c_tlast(1'b0),
        .s_axis_c_tready(NLW_U0_s_axis_c_tready_UNCONNECTED),
        .s_axis_c_tuser(1'b0),
        .s_axis_c_tvalid(1'b0),
        .s_axis_operation_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_operation_tlast(1'b0),
        .s_axis_operation_tready(NLW_U0_s_axis_operation_tready_UNCONNECTED),
        .s_axis_operation_tuser(1'b0),
        .s_axis_operation_tvalid(1'b0));
endmodule

(* C_ACCUM_INPUT_MSB = "32" *) (* C_ACCUM_LSB = "-31" *) (* C_ACCUM_MSB = "32" *) 
(* C_A_FRACTION_WIDTH = "24" *) (* C_A_TDATA_WIDTH = "32" *) (* C_A_TUSER_WIDTH = "1" *) 
(* C_A_WIDTH = "32" *) (* C_BRAM_USAGE = "0" *) (* C_B_FRACTION_WIDTH = "24" *) 
(* C_B_TDATA_WIDTH = "32" *) (* C_B_TUSER_WIDTH = "1" *) (* C_B_WIDTH = "32" *) 
(* C_COMPARE_OPERATION = "1" *) (* C_C_FRACTION_WIDTH = "24" *) (* C_C_TDATA_WIDTH = "32" *) 
(* C_C_TUSER_WIDTH = "1" *) (* C_C_WIDTH = "32" *) (* C_FIXED_DATA_UNSIGNED = "0" *) 
(* C_HAS_ABSOLUTE = "0" *) (* C_HAS_ACCUMULATOR_A = "0" *) (* C_HAS_ACCUMULATOR_S = "0" *) 
(* C_HAS_ACCUM_INPUT_OVERFLOW = "0" *) (* C_HAS_ACCUM_OVERFLOW = "0" *) (* C_HAS_ACLKEN = "1" *) 
(* C_HAS_ADD = "0" *) (* C_HAS_ARESETN = "1" *) (* C_HAS_A_TLAST = "0" *) 
(* C_HAS_A_TUSER = "0" *) (* C_HAS_B = "1" *) (* C_HAS_B_TLAST = "0" *) 
(* C_HAS_B_TUSER = "0" *) (* C_HAS_C = "0" *) (* C_HAS_COMPARE = "1" *) 
(* C_HAS_C_TLAST = "0" *) (* C_HAS_C_TUSER = "0" *) (* C_HAS_DIVIDE = "0" *) 
(* C_HAS_DIVIDE_BY_ZERO = "0" *) (* C_HAS_EXPONENTIAL = "0" *) (* C_HAS_FIX_TO_FLT = "0" *) 
(* C_HAS_FLT_TO_FIX = "0" *) (* C_HAS_FLT_TO_FLT = "0" *) (* C_HAS_FMA = "0" *) 
(* C_HAS_FMS = "0" *) (* C_HAS_INVALID_OP = "0" *) (* C_HAS_LOGARITHM = "0" *) 
(* C_HAS_MULTIPLY = "0" *) (* C_HAS_OPERATION = "0" *) (* C_HAS_OPERATION_TLAST = "0" *) 
(* C_HAS_OPERATION_TUSER = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_RECIP = "0" *) 
(* C_HAS_RECIP_SQRT = "0" *) (* C_HAS_RESULT_TLAST = "0" *) (* C_HAS_RESULT_TUSER = "0" *) 
(* C_HAS_SQRT = "0" *) (* C_HAS_SUBTRACT = "0" *) (* C_HAS_UNDERFLOW = "0" *) 
(* C_LATENCY = "3" *) (* C_MULT_USAGE = "0" *) (* C_OPERATION_TDATA_WIDTH = "8" *) 
(* C_OPERATION_TUSER_WIDTH = "1" *) (* C_OPTIMIZATION = "1" *) (* C_RATE = "1" *) 
(* C_RESULT_FRACTION_WIDTH = "0" *) (* C_RESULT_TDATA_WIDTH = "8" *) (* C_RESULT_TUSER_WIDTH = "1" *) 
(* C_RESULT_WIDTH = "1" *) (* C_THROTTLE_SCHEME = "4" *) (* C_TLAST_RESOLUTION = "0" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "floating_point_v7_1_6" *) (* downgradeipidentifiedwarnings = "yes" *) 
module calc_check_floating_point_0_2_floating_point_v7_1_6
   (aclk,
    aclken,
    aresetn,
    s_axis_a_tvalid,
    s_axis_a_tready,
    s_axis_a_tdata,
    s_axis_a_tuser,
    s_axis_a_tlast,
    s_axis_b_tvalid,
    s_axis_b_tready,
    s_axis_b_tdata,
    s_axis_b_tuser,
    s_axis_b_tlast,
    s_axis_c_tvalid,
    s_axis_c_tready,
    s_axis_c_tdata,
    s_axis_c_tuser,
    s_axis_c_tlast,
    s_axis_operation_tvalid,
    s_axis_operation_tready,
    s_axis_operation_tdata,
    s_axis_operation_tuser,
    s_axis_operation_tlast,
    m_axis_result_tvalid,
    m_axis_result_tready,
    m_axis_result_tdata,
    m_axis_result_tuser,
    m_axis_result_tlast);
  input aclk;
  input aclken;
  input aresetn;
  input s_axis_a_tvalid;
  output s_axis_a_tready;
  input [31:0]s_axis_a_tdata;
  input [0:0]s_axis_a_tuser;
  input s_axis_a_tlast;
  input s_axis_b_tvalid;
  output s_axis_b_tready;
  input [31:0]s_axis_b_tdata;
  input [0:0]s_axis_b_tuser;
  input s_axis_b_tlast;
  input s_axis_c_tvalid;
  output s_axis_c_tready;
  input [31:0]s_axis_c_tdata;
  input [0:0]s_axis_c_tuser;
  input s_axis_c_tlast;
  input s_axis_operation_tvalid;
  output s_axis_operation_tready;
  input [7:0]s_axis_operation_tdata;
  input [0:0]s_axis_operation_tuser;
  input s_axis_operation_tlast;
  output m_axis_result_tvalid;
  input m_axis_result_tready;
  output [7:0]m_axis_result_tdata;
  output [0:0]m_axis_result_tuser;
  output m_axis_result_tlast;

  wire \<const0> ;
  wire \<const1> ;
  wire aclk;
  wire aclken;
  wire aresetn;
  wire [0:0]\^m_axis_result_tdata ;
  wire m_axis_result_tvalid;
  wire [31:0]s_axis_a_tdata;
  wire s_axis_a_tready;
  wire s_axis_a_tvalid;
  wire [31:0]s_axis_b_tdata;
  wire s_axis_b_tready;
  wire s_axis_b_tvalid;
  wire NLW_i_synth_m_axis_result_tlast_UNCONNECTED;
  wire NLW_i_synth_s_axis_c_tready_UNCONNECTED;
  wire NLW_i_synth_s_axis_operation_tready_UNCONNECTED;
  wire [7:1]NLW_i_synth_m_axis_result_tdata_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_result_tuser_UNCONNECTED;

  assign m_axis_result_tdata[7] = \<const0> ;
  assign m_axis_result_tdata[6] = \<const0> ;
  assign m_axis_result_tdata[5] = \<const0> ;
  assign m_axis_result_tdata[4] = \<const0> ;
  assign m_axis_result_tdata[3] = \<const0> ;
  assign m_axis_result_tdata[2] = \<const0> ;
  assign m_axis_result_tdata[1] = \<const0> ;
  assign m_axis_result_tdata[0] = \^m_axis_result_tdata [0];
  assign m_axis_result_tlast = \<const0> ;
  assign m_axis_result_tuser[0] = \<const0> ;
  assign s_axis_c_tready = \<const1> ;
  assign s_axis_operation_tready = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* C_ACCUM_INPUT_MSB = "32" *) 
  (* C_ACCUM_LSB = "-31" *) 
  (* C_ACCUM_MSB = "32" *) 
  (* C_A_FRACTION_WIDTH = "24" *) 
  (* C_A_TDATA_WIDTH = "32" *) 
  (* C_A_TUSER_WIDTH = "1" *) 
  (* C_A_WIDTH = "32" *) 
  (* C_BRAM_USAGE = "0" *) 
  (* C_B_FRACTION_WIDTH = "24" *) 
  (* C_B_TDATA_WIDTH = "32" *) 
  (* C_B_TUSER_WIDTH = "1" *) 
  (* C_B_WIDTH = "32" *) 
  (* C_COMPARE_OPERATION = "1" *) 
  (* C_C_FRACTION_WIDTH = "24" *) 
  (* C_C_TDATA_WIDTH = "32" *) 
  (* C_C_TUSER_WIDTH = "1" *) 
  (* C_C_WIDTH = "32" *) 
  (* C_FIXED_DATA_UNSIGNED = "0" *) 
  (* C_HAS_ABSOLUTE = "0" *) 
  (* C_HAS_ACCUMULATOR_A = "0" *) 
  (* C_HAS_ACCUMULATOR_S = "0" *) 
  (* C_HAS_ACCUM_INPUT_OVERFLOW = "0" *) 
  (* C_HAS_ACCUM_OVERFLOW = "0" *) 
  (* C_HAS_ACLKEN = "1" *) 
  (* C_HAS_ADD = "0" *) 
  (* C_HAS_ARESETN = "1" *) 
  (* C_HAS_A_TLAST = "0" *) 
  (* C_HAS_A_TUSER = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_B_TLAST = "0" *) 
  (* C_HAS_B_TUSER = "0" *) 
  (* C_HAS_C = "0" *) 
  (* C_HAS_COMPARE = "1" *) 
  (* C_HAS_C_TLAST = "0" *) 
  (* C_HAS_C_TUSER = "0" *) 
  (* C_HAS_DIVIDE = "0" *) 
  (* C_HAS_DIVIDE_BY_ZERO = "0" *) 
  (* C_HAS_EXPONENTIAL = "0" *) 
  (* C_HAS_FIX_TO_FLT = "0" *) 
  (* C_HAS_FLT_TO_FIX = "0" *) 
  (* C_HAS_FLT_TO_FLT = "0" *) 
  (* C_HAS_FMA = "0" *) 
  (* C_HAS_FMS = "0" *) 
  (* C_HAS_INVALID_OP = "0" *) 
  (* C_HAS_LOGARITHM = "0" *) 
  (* C_HAS_MULTIPLY = "0" *) 
  (* C_HAS_OPERATION = "0" *) 
  (* C_HAS_OPERATION_TLAST = "0" *) 
  (* C_HAS_OPERATION_TUSER = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_RECIP = "0" *) 
  (* C_HAS_RECIP_SQRT = "0" *) 
  (* C_HAS_RESULT_TLAST = "0" *) 
  (* C_HAS_RESULT_TUSER = "0" *) 
  (* C_HAS_SQRT = "0" *) 
  (* C_HAS_SUBTRACT = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MULT_USAGE = "0" *) 
  (* C_OPERATION_TDATA_WIDTH = "8" *) 
  (* C_OPERATION_TUSER_WIDTH = "1" *) 
  (* C_OPTIMIZATION = "1" *) 
  (* C_RATE = "1" *) 
  (* C_RESULT_FRACTION_WIDTH = "0" *) 
  (* C_RESULT_TDATA_WIDTH = "8" *) 
  (* C_RESULT_TUSER_WIDTH = "1" *) 
  (* C_RESULT_WIDTH = "1" *) 
  (* C_THROTTLE_SCHEME = "4" *) 
  (* C_TLAST_RESOLUTION = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  calc_check_floating_point_0_2_floating_point_v7_1_6_viv i_synth
       (.aclk(aclk),
        .aclken(aclken),
        .aresetn(aresetn),
        .m_axis_result_tdata({NLW_i_synth_m_axis_result_tdata_UNCONNECTED[7:1],\^m_axis_result_tdata }),
        .m_axis_result_tlast(NLW_i_synth_m_axis_result_tlast_UNCONNECTED),
        .m_axis_result_tready(1'b0),
        .m_axis_result_tuser(NLW_i_synth_m_axis_result_tuser_UNCONNECTED[0]),
        .m_axis_result_tvalid(m_axis_result_tvalid),
        .s_axis_a_tdata(s_axis_a_tdata),
        .s_axis_a_tlast(1'b0),
        .s_axis_a_tready(s_axis_a_tready),
        .s_axis_a_tuser(1'b0),
        .s_axis_a_tvalid(s_axis_a_tvalid),
        .s_axis_b_tdata(s_axis_b_tdata),
        .s_axis_b_tlast(1'b0),
        .s_axis_b_tready(s_axis_b_tready),
        .s_axis_b_tuser(1'b0),
        .s_axis_b_tvalid(s_axis_b_tvalid),
        .s_axis_c_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_c_tlast(1'b0),
        .s_axis_c_tready(NLW_i_synth_s_axis_c_tready_UNCONNECTED),
        .s_axis_c_tuser(1'b0),
        .s_axis_c_tvalid(1'b0),
        .s_axis_operation_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_operation_tlast(1'b0),
        .s_axis_operation_tready(NLW_i_synth_s_axis_operation_tready_UNCONNECTED),
        .s_axis_operation_tuser(1'b0),
        .s_axis_operation_tvalid(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
hd/HNubrzEqSpBhJBHEJxjeuPKmdGo2ky7o57UBYsY+ymUEnBNSFIwMivB2zA6LW26tBf2m+0yYn
KJqm6Ezmmw==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Y7W3jFxoc4Rg12pXcEGoYkpQ+iqvOD6n9jq/5KgSlBfRvevLddw5wIijOIHZUpPiLnBhD7Mk3XC6
MdRDB1uiI2wnIwyBeaz8lT/odhNEi/kCNhnBzjw3fy7xWATdQM5dnTBbptlRP+JFr3DNC7P1x9Wk
f46E6Qz8yH3v1iNH12M=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cD0yl+ItMKjIpClbqFaijDb83IwoBqx7cdT/Qocngi2rzF38X/kDBMM0ZcKOwti/bmE+X9XHhGRS
FnSFzS4tERBonQSGXyp9RuDl6JCY6E+mzY0lSKUQ/mGEVbBuROvQYhZQan+BrrsuiHMcCladPmul
6MQyIM44ns08LtWd8ZXdsuJy7Cz4xEagbV+3zKt3Bl+HE2uEATaPS3qvuGs5aYuYZBBXr/CgKS7u
TCI2YTtVqVqsH+TTUUA8vaUUCdAzXMfBLzjHZ1+11GrDflRJMrxUz6kKSTI+SPOkkjprNs/rAlru
UEdZi4TFjrQYOqqUdJ5pDUqoQLcPbz5ZAhGdtQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
P4a3RYOXwzA/8QrgpGpGcqMb1rP89AtycVc0K/ZwK9TftL5v4ngeyLmWmGpg4c71EFRCpCAH30Fj
yrq+JVgh/jk6rLPBdOs0rxL073TQOigEE3CPAWXedw0wZgYE5cPR+duV7K6tWsLqojqxKmNfCHWm
FL77ICANKxZt0dGY7FHe48tC246yhbBKyRJCdg8GE2amv7OEVqdK5SakCo5MX/myntKnZ1XSOu+X
FzpmW+uCc4wK/7H3GNj+9Jf+rlQLoAiOUOqPvTLAgxZypxD60362i6xfD3NdGEqeVofsiMxBpNg9
Vii5svBVHJnjMa0p/xZEHd8col/C0aGujkO7Bg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hLdoBekSEG5Fcesw0ajKOQgFZ4piecEAz2WULXScsbqcelcoG9/5+qYiiSCriG1AON96iTvUrBsC
1P7wE1GjJUYJxMAI+OkI/p6dJtA/IdxaS7yjsp26Ng9yXxBXkXfsHnKyzrti3+/NcbbWfBkn8JRo
n/z2l4uC9q07yN5ApbHd745LUXicfGnPTYTHKuk882bwEpDBj5MSIK3kVEFAgXbBwq7E2klP3o4+
RkKo7JCva/pBriLXoj5h0llKIs8Db0PmIFp4YTJlvjKk9gH7l2JFAgd+LibV9jA/2pAzMYP6B4qh
7ID9jbPRyvncr9iaOeWqdIlMm5wy4Qz2qaerMA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
LBJ5sZjlgCgj1acXr5ch4AZV7nz+Bd9pDDaOjqqyTZZfDQWqvqLPZpitOZvx40hq/UAkrbqBM7VK
J95Q0Sl4uUPbhqtMIEVc+J/DQANckHa18HLRFF9Jm4WHo2j8MbLQcgxSppJ7dQLuq4yf31APAYDR
0GfOfEhsgIdSTjgbXsw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BN+yMX66grVd2/7k7GVMuHuRKkjo34zmfV3fYqFSfuZvqy1d8Tuo5sp4OMuu+7iM49sc3T2gx1IT
ISggkr0py4FZ8wHjshML/v+/u9GHcQqqit8glRCU5klRhBLztotZVFVkwpy2l70I/YZom5y24xew
Y7xTptA6+BTMC2MqN8mRFwnjzydMHzdkqHSQnOTBky8bT+Pcfl65PbnFxGKGg1Z/Qax0AjTSnQ1P
J+TM908l32QbQCHnIgsT7JCx4WKwOxn+NMWoy6wM+3jbiNEGciHxP+Je4pq+W/X8qudzbZJpEyya
keQEIStJ0qFYQA9Te8Ek67s/laialtYxGxRJag==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Cto7BOku6YsA7Ryf/Ag4j4tj/x1lc+3Fplbe2Ae05MA5p5vAAJv7y06rrVFyK6zuSHCPFaLesbab
WJ1ZsGEUhJxIgCQcQ3fRgsVbuuKJypgxbG/fcTFQDPo/AzQg1ASAaPacK2RPr5rjhuzWv6KeIXmQ
BdTjxy2FXEmsi2JmsWP599NtvbPCfytoNjP5eUJshFlKgWvT1IzUoEUW1xdzuw2Ia5Kszs+xu3EM
RDsgnQf5sim0x/ablpA5VuSvH2kqu4mb5DJJz6olwKNKEu5pkB6P8V3Itzme2Od11e9BoMtnux9e
5yya38rh65AdNyWMeK2gVEJ13cylCVPvn8zhtw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mttDHIhVl2NZVc6GTQUFCJhC6macDuKh6ugcmivQDYwqOCscIQ6RQLSwruacRv/LWiF84IrO8R1e
MeO9otd5Vvn0ZlrLK9VkfQlaUllxPkbGdqxS6oY9P/C9/umivZmoXs9z0mjsfilUKVtT6NeVUQaJ
gdVa+xoiQhuIQMgKyZ15g7skIcDlfQlLU9PWHo3nsqJOlRpqvhJzI60uiRRMWB4obmF2GKaQ330S
b8C6TJ11SzCvQpmRL3G+YZDPp3KYxWZ+jE5esn2ygxQmqdHZAcFvzvpn/hp/JJji+9V5a3n2zThm
ZpxeV1TgA4TLZceFMSf2G+Eh08phM+64q1fEYQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 70384)
`pragma protect data_block
V4epypJEqOJtJpD+w6sVjdD/son2puwv8D5tkgHj6c/QcarKYVryqQQNQA9q+4fPg6ZxHY03ZAAb
+zzWaq819cJprA/CCKlj3HtCd114SJsVVd78B4+E8rwH0e7rZXh34GvvdyFHXAARkNYmXKRR/qK3
ZA4/wt21whzE4p1oU+9psrYlCqhj1n9r5O4XQWGKdIqGkYtyQ6Vyx9zw4wSfbsZXS0o7e3Y2UI/6
GOXgxKKWXC0eDLfe9uNUlAT0PH3NLjQYmcrdT/B/YUtR+iXVi5eLFAVqGrudfnGOtFenArSOtb6d
ZGPIM1PuV9BW0clPhl6Vpbcb7ZgCua3iHBXHIV79j8bkg8G0SegwdEVpQ3ISsDGDln5h7kRSZYYk
qiqJNGS93f0Ba6V3KqFmWYCxR2DZA2Zpz/5opuy09RwixUKiVwdmtFW8UoTvwhmBetNhzr8/t6Ii
mRXnF+H+MxmzzDvSqf5s2c2+xbzEcbm4Fs+g0L6M7wIq6a4zjHTrvro7hLpEtYmSFMHmG3okK6xp
IpoeWGPq1fjwiWidBmqxFBE0+Ca3LbZfSZ+A4cJu4jmYif7wAsi81KY7DNGkdg0/2pO/ao3NNHve
ZYNN89JT95lvdLF3WR407shJCa2LPGu0mj9c6GpsgIBximkDeW+RbRmgLSYJHH02vpiGqOt5hIX0
43sKVILmoaRqqLdaH5hM5A+WhNQDT4/YPYRct21gs+SYkl/qJIvaqr8jC+paMUY1avb0n0ImrRVo
2AOxpa1ioc8pZUdRUQEZVUeEcYTEu2/JRIzpuUiaWbV2F8CEgxrQqhcOa1qL66FT6BWy+lLYeFSg
QL4mMuuvqAm7+mJ2aQCqWoJujrxY7JhzgliDdNkbIpRpSNV8qq3T4QlIEv7NmRVccpB5oETQmIvy
1MhZ9QsO/nVeAYsOj3Wmtok9mAp6bHywp4k3aovnMtiMeYKL/XYHKT+YMU+8Acf5d0G9HTWyPl+W
FuZo0YU2X5jOX+Uvctc5xDhXCaPqw+neIxTS3FSRE8eMj4hcNCO/zDjwz8uwqM0bbL9P2sfCkqEX
gN3Ajf9fGTS2YNCBGdm2PiB87/O+yIAqx9DU3gRLk9FF0gsEmPCH/iW+NCsqLnw0QjBGIHGvcq2w
O9leKwkYkTEoNBkHoHlDsfX1QJVoMT2RtrjsJ0hQ0u0cNCN5QC7IyFIjuczIzZ9dIZkdiVcO38ZO
nEfJME+gbWbCwA1vRcekYxctWOt+VzJ1OL3ZdgGKifniDoNlQZYsHJLwf/Dc2XKbwXVcxbB0fB8N
p6D5Z2CfYEbmOkS6uvAU7H5nF/Mm5eNuYFK2cujfW0ZhwzHYQTvyjqlt2y2VAZ/GT0MfrI1A8I5h
oH+SHQL0eLzQu3a/yBc4dmYvBG057Ir8mY4q1xTn39y3yGr7M8E3WplJJIfBZhaZCR6xiwoFYNRk
jp2XouVzg1cMhGijUtNIUBjEj8Ue1aj8P78wi9amoTUk+dOvCjRar0U80ThCt4zM18abeZHk2qQ/
UxiZDzrja84rVz9U90y+5Kl2IAoRcRzo9SWzkRuGQ4jhs4s8ZoIYVYqdQYqZm/TSa+qsoi/vvh67
itkq3rq7iIM1r9cq/zUVyPkdAtSLj03VFEZ9kS+ALNnrZRh8dI0sknifd9ZhrSeXpUt+nuJiWlgM
FEJR6VwS8LR1WL4jVP0b6X3phYWbJkU4EZts7X346WJPcweU4QQt/MkRS1GSi4LqGPMdWBJqd8qg
WZWIhRd9S5wDl0DB2bkmbWnVIpyD+xNplg27v1bRzD8BoufcMpenYjxLhQeqH2MeYHmrYImUvF8a
5RhoolayHqQurJNls1ocs/T/b857KUqJ4uADLNUbNDOpDz7M9l7NnOMZtRDcErbHqpbpYqsErM87
CU+BmGsmjKzsR5UUSavwzGNmVIg67SGOTrUjUkNimio7M2X+2OUNdL8BvN4uZkzgXkgJbVukwk1n
gqmLiFP5rUt3g2S5sCdfbxhYevRIKCKCn0z0yb4zu7y1nlTRbRJxcHjgQktBZyZ3aYt2lSR3+4db
ZxnyaY3kHyOhDz8O+zQKoX2lQ46Qmqb/yZ7RAiAmufXaX7KUhc4/idM/a7LXEOjOLwa0knPcqQ4K
mep+6UV9CBCQ9sbGvK99XTho/SBQIt8Yj4fbXRpC6orAgZq0r0kXpsC901cMQwBPaKjry4zgeXdf
Z5nFrTf3Tntf2tmX83ecUhMelchcGrxcEAIuHvCb+sGH9XkoANs5icCZUzEVT/Z4TB+lbg26bM/V
+/WUlDti8b8d7DEuTzDHJ7Bse5tYRxj8ONAvi+474y9Dkg60XNEcEDBK1Ym6jWoAhwtHAVDyorgj
v2IQf+DU/ZJg9Ja2uawQ+xFydicQi1bdwHZgIVET7ej0Is3K7JojLzd8bKMWO1qH7zVGGkqC34+Z
1osUin3ZgDc/WCTjNJUhpGgqfZKvxLgajBJhxOe9IjNRnmUOKMYcH184BOcC8ucXa9KpzgOEeQ+H
xFKg3BSYb+r/jPqAj78yzlk5zZxzYBmKcqQ1nnq/BtvTblowaxLMwBg4rqxHFrv4Ui7AE8xdv5Kk
k2nrKeP47JfBLZmekbbhRcY/ZuGs+tw2pJcQ2spdJobTqGcIW8M5TS2v382vRcesCrbU5+Kyhga/
0GSPpCRxo4VTrJcZO96i/Yblt5YYdMeoQZHyquMz8bOMMTj4UXEHtjcpCFjZgMwAqreOwb0D+TMM
aVmcNatOgnLIUtKa5+epLTsH29hnaFgvx7U18x3Z7tRBBcFiGyWVZtfGZafGICfkWTKH1NC3lH/y
81GjPEFBkZ9lsmY8g3iz7xERlYwFwbkAAg6sNaONppoCx3MqzDa2y7sgQYsz8NT8TaDPgOnzR8Ge
LrWH57GgjAXAC7F388vXcqohcrLFLadTJe4X3N73dx+4xG7DV/dcjB+7KbknBTriYbetckulo0Rr
pAYOnAEbEug3Lh2qgdXYYSd64yX+gYIlsXSPdczCKwROdjSEs/Nk0jFRer7InhtxQCiWAqiBj2qr
ravcaSvXkh1D61seuM/QRqPEIC2ct0e+DQ0FBdT+QQHoyAvgjeEFtKbbVR2JeVEx97QytwTMd6Rs
XjgzAhgelpchCDyu0ukppoS84yXCemLhajgR9dnX22vLVqqSVFmcgP4PlxUxtWZPivyqHum0p31T
zyNhAILlcy6pEF/Oqgw/FXuRM9GCL8OkRdK63k6ySw9UA4Y79Bo7PYlwseS2K6LV3mmJvm5QOt/A
xITRLYwIKIIPUwP+tc/b3hzm1HccHa0W2crXPZ6NZ9GmQ0WlYRQC75H0ZgCe3Idr12smavzJi5P4
hmHt1yGRPwcVK8ByYuSoOvmWohMANJJpNWEwZNo1fiT6f517dsI8EOCPAjczpmXGVJfc+a0hAtka
i78KbdIzmHG4yms/K/Ob4S3VjXRZzSBP6rkT1cBIVa/HY4Rp1npOTKmCqjNWAQ54XxD6gpMkr+1g
Yx7wcFa4gXK8uajwSJ77lLHzEz+e0XGuuJbbwLtAowkaD1RIi8xue4drmXMH9rrDg3tHt/UT9qPy
pp/SQ3/+WjW+CF66yeIbv9lXLmM7mesLUxY+Hjy6NILCCO96k3bUvdkKpLEdaaBaKGGYDbpNo0EM
XyP3vDNqxyBAsBhjGHdgXLInuYJl0F/dny5DK/S8oWc3buQrKZNSYMaK0q7ViB6FYyBCWF7bhezN
f0gWXj8j7R2TeG7pN7Bop1YoeCl57+9ylAEuDRW07p3r8KJqZgV/ocbecvmt57vMKVg9dFyBDspi
Da3q5uZccoFu6XCW2anjstrifCM3PZCr/AYGwxbFW8cbALCZefwthu0RjBK7NEt8WFoqFVxsFc01
Q0abVW8NPTniQeSzsANj6i5bRzK9Qo/64BWMyohqBQ+DEwOgTXRpOMNiL8r+HzFPa73j8dc1zaO7
u6v6PFPFYCiRkdmbQTg4sg+yqsxI7CSt1depFhqev091iUeBnBxauWZ+FviCBFphmIBHKLHmsJr2
au6X6oPf8LweEl2AcQc3kMyuc23X6zwGr70uL1WJb1n60ZMYAoXl+AMNfaUC0wmxcy6/XEF3tmIP
JFr5hqK50UAjv3RM8eBZFfgY9d+qGT7UM3N/Z16Ne8i/UvMyM9BEN99Xzu8i7zER730lV9UF0rLh
h4PFwuXdutArsdxfjUT8HI+pYByZlCUwXZRm9mkMg69GhgtoCK/hY86boV3x4YYqj1ma/Rzck0ns
eWIgLeDTbWAlCgE7gBVxLObLNGqmPTT0eS/zNNnPvd3UB8pGIc2FtLic/XL09vTSPf1QFOFnFP9M
IrzkzaSxkKAQFcPe2LSPF2nrsCI/jbsdM7KZCeX9elanuSZtOZSjMOgD7qKkKFFbWhn7dZCe7Oh2
j6l+64HoDxqSDhu95Y55JCKEJmugy7hRTc63bphA6r+ugsOOd9AMtN6nNHcpV4G+2DqyJ3GsRo3i
d/VSlwCfzPNPXism5mipgbLTbCD5Qo4ChoreNENM5qi4/I24i5SWxe1jwG3H85YO5CsLqPh45Xf5
FwxFX2DdOg/oo3uVVDYAF5h1P9fSqECgR9E7JIAHCndufMjTQRTYNw3V2h3MQtHk7L3maklGl9qd
dj9aiDNDB77Q7SMkT/sA5sLjsvEWUhyu97+6JKVYTHWOJl8Nz/2LDXS/TRXJSQfZebOxC4CeWjrL
Jq7M40pt4c7TeVK+yai5+TmlGYsLSuscYICO61CXDt1kzafl8DUyUI4VBAK2dP7RKrDYwXDIX2KW
BqJSjKFZZUa13unzmmrO58wOWWG3+25lyKfieaSFgnJfJhEGIxzzm/WYLFpFcWm4FdBOn1qnMN/K
/VoBLVx+aJF5p5ZHrj8ye1MAmB4ryanKUowL9vdPkj22Sm2LrL6osiEY7MndpUZFA66F+9rDKI6f
on1GLSpujwnReL2uIe1K8ptpDOQErOInyQH8s/0ZVgrPeM7faGYIEYAytAaFxtL5DZOtIIbk7m8g
NRq/wrr7qYqRrMVNqiBIS5ChCUmYqC13L3YgO1ob6oS3BxQAoWShkMj77z3p7Q9iBNc5HChR1KX9
aeFl0Qy7lj0RVvc8pvrpi4Sq/0AxjVB0QW8cUFfx8j9zXFc9vGPlXqDn6XDnyG1SZu/JXC5no+H3
gJTxFPxM4waIuTLA0yYvIi9vGFzlk3AFHolTNUFvzkneHoiQu/XiX1+M3yPBfsvZvxjINuPreDoo
W5I+4yMirAe2OapjKh9FSrTdHEwcAsJnMaP9rKqzXGLLGH0qFbYJv87+eLi7QuNpqBW/4U4tj/5M
d3eW4xKoNHA6Ec3C2Vfsn5uB/NSoHVQoAY6vBjFeDz1uB3nafGA2NECIrub0raI1KRI1vt9uA5hH
JxP/e9O9SfE3BFrsDj6ya4S1GpQZhAeX8iRBaavJe5VMr0KJGMPHHg/ZiWYOfuULA5A23STikfKr
O88Va8hj6DPo22ZCDLD6F/EFfqJQIvQXE2l65CXKL5nnH4MfC49JZXmwjM1rt7GiT2VBanAinA6H
S6Z9vhS+hJdREL5QYrWFvOEPnrNuR0BOw4bDmj2KD+TeJuwj2gA6cxiQAR9EvdxngfhSCfdRmm9l
jpcOEwQmFJ9gze/nK6fm3lkOdeUcwXVplq5vbifnwk8SU00dPdHhF3MUVJDiqBhTldTuu3UGkFwj
W7bxsBs7ntK2T+hduYojDBU75xwHLeBNC5JPV/r7M0TQ4r0FU0tGbZfvAvYMA8s/+9TWzwBFL5y7
OtWkfax/a+BhoM61YQi56b22BEAuw6+Nw1EZn59cfDHT+7YJIATy2F7GEe20wPW++usJDJM35MCF
rduU4d/t9U1p9bBkL4tH/0/2nTBe9BlRwlsRDHUe5A4ipHnn9j/fW1JzuHCQ971k0IV7rFbGowkN
SWFU2Ot5wU38pSthJdtSRVysN/i4buMHrRRYMf85pVUDYrXyXOv7VSP8HNSBIoG2j2iRsJdxUf+O
/xK21l+bhs5x66L3jwtnMbJ9DZtbsAn+JRKRt8BaNkrI/pXOkNX3VeR9ptosfgeeKOyhe1T0GlsU
hgEJvIL1XzxbkVSP3Sxxfphcm+1eVMUSQhZyBjjOhKuA8Tk+Vu5Ar3pdB+ECSILiNJPL45q787pe
6LNku5XTWJVSTI0LaQLs083c+tXyRXZVkmLQ4w2tMts8t1DaPSLg3HKCCCl1vyevYetzrZ6YQp9c
zVMOVCo+BrYiKDl04Giwli/aamqxIH12VrTKsGg0AQ+cT132Qm2n1D4JD3QEQJT7RuS1FsBuIdN1
z6yqYXkIcGGfi1YK3d0kGhGAP4qiLGYn/UpnOyp6IpMhTaoPRp6m8zIvhqtr0IToQoFsSsbvTMAg
4G/m4vqifoYETlD2m594m/AE+yLQAJxt2YehpcJ37Gm43kSayRAF3W7olt1xKV+fIKST7pK6srjw
a+fmzzgnlQAfI2kSDF1InXbqiur4al49rjd7ZkJtzrigUh0S/QEkuYNrrdZOPZMWU1SyTiGL+6e9
uZEvbUVR7xxBUWcvpSf68Xz4ocwTjIqavHIDiY3tBHJG84ZVX5fmqJ8hkhJIiTYJ7ynFo5lIz7DA
8T5+jApISNViAN5/AdsJJQmRjoWiE8R6eRFQ/Kkx4E/W8MIOcdjvRqDFpnktELplAW5XwffblEis
rvyHzzy5gCU5iNlhHtFImqGOjUkK+AJ5JCAxq2HO14ZUwm3kWpfHbGgju5BOvxRSLRWY5CBhZHTF
br1bwMecqUetm/eHE6YBopo2kojUSR/kVz3rhNOfk1YPEQVkoTxttPJDoSHrCh5CsEznzlD38Xxi
S/BxcZMudoGVQinvjn3wSTCF5RCjFb6MHaCgdjgjbrGEBdc5CAyXqcIpPZ6yPPkEo1MvACBcAlhb
rhqdsA5jKsQXOI4mEJO6Puqf+oOX9FgvFblp4E6u8g8ciTurylCHj5DlGVLgfiK5Ov+/Vcu+oawq
84p/BTgitFu+LvhrQp5lJbI8ti82+W1cyZUqlE9KZz87uIHGxdhMA9Ey0Xdv0SNc+8PdnYUdmCfL
B8XoDgDMST1Cy4PYNtM1BxiX8sdT2N9HorJa4Jp87q1Q07PYKeLjIhXaXIPAqiikWsciIDP1GNv0
gdVogaTJ+zMJQrecuxaYBrpVQU325l6EKHotLFRCu+m4QiQuZIZZXLwHh1NffmKpzxt+RHdH2usu
dn3/rrHFbrHgx2U5/eWPA6NbeGpLkPjIZ9B7w6MfFuwuT6/F3GuVq0m5UjNtMt1iBhhE8T1Qd+P/
UwKSSbCKGmEmyY/XjiD8K+FS+VeOMgQyIzNWExNgLjZR9WyX4Uh66I/Wndn9fLHYJ8L+cKRKJZ0f
w7/8vl6MH/fKSj9Jn1y3pnEjagv2TuXxclq/TRLcGPKi6IgYU246ihw5zwizvbO1rGlhcNVCt17y
6pyUX4DEVvuzmuOCHweITCfrloi9v7twlmHA7xjsoGCdrh8JJ+7fU73/Lt7mvOo4wKe7g/eaco6L
y7fy971msIhHvV5X6w9GInz4pWcIVh7wbVTbKfCmWjJ76gNOTdGJ1K+d0BZRF1Ewuf/ThUF+yc2J
iKYZThr91ACJQ3lTlfMjQVK8Fuz3ndGeEoMryQvwi6VxC2Or6qNhM+lEDxYDpfVXuCmP2dalpk74
QuOEClUae+ybxDPDh/vV/LkwbuVanTKtMLglJpYi0J6ZyKtatPZsRW8/FdfWPNBktMQtJ6BOVGKS
2CIvmJcedtQAA2nx6qzTlLVgUgDro2Qt6OEJRt4RFIxE9lwTjptoHKURCJQvdBy1BYe5BhzmvQkv
dbWLD2jDYPwflYr35KbNQwjVwekH9Tr4N0lb94R5mvVb8GyoIEhgy5XuxHL+XQf0w4gU6TFpHYSJ
uogAY6eJK2NmaEfB4cf+84EMmE0yKollxmTF+QarXYh14hHaHgMTson9NZJ4NNobAoT07dUHt0be
BsU2yC/T+aAwCmKmd1XytWaRX2WYe8l3TmMXoHLb0U/4JXae+n1wOHs6fIoSe5EHdN7/fPrgbOjl
uu1N3O9Qt5SkVZgyJUXoy8aK8QP11Vyz8h9ixmLQ3XSiqW4hPFU9KqV//4zjf0e8k1YLLOoH1pnz
kRSpMu+cW/bRoqu4MjHR8xbdnwLlBDs9Nu5eaOfxlqtgZxwutZaYFalQTo6ORjRbovPjGQLvI2L5
jyWl8wO1z4IRzA25KltSycGpLsyHhAwgInMuP97par9EN+2E+sWaOPpOi05sYVtomSJkaPxphUmX
oCB+xKKRn70NQ0j0jLMyFJ8hL+HlFaS+fkStbC1VJXdBYnCQuZ2nwUdwcUB97ormIcurfDZSYvA0
oYs+XsDT/MPq68+PTwWFI5yQURUq1Xg6EpgsccpBIXHkZtSn0jGLsNvt89XG4hZ6CriHcaOPLQiZ
u3UPNwVH6/X7P0PeP6eQekRTqW685Nf68EMVPt6lJXe8gB6801LjB138kaBX3vr9PWLj+KKZDEBG
tU2QFJXHG47tSOncXwIuZ3Tu+N6fnL3jMo9ShqCIMjvPcsvIDQxEt7D+77S0RTPbMoiVzKY1HAEB
bD1SVvzFp6pBDwL/9sFfqYNLCq7iu/Ttp84QrZOomhizZEh/i2H01q/TC4AMEOiE0niuHoQPEnVL
9ec2EliswKFSKyvZGThEF2VUmSl6HuURHA2jrMKIw8CDe9Z5teHPILiP9fDaHpuaXO9Qgs+aC9L2
CZsTrxw2JKXOrhIjpvnWMsHroYbjxy/bNLfbpKxVO75NirTqdrIiG+DNQp/0DARkm1Itt2DJ5dVO
WFVBBLq4eQRpummp1Ot1fl1thpSw3tGH1q9zMRI5DBBFXUyEgAyABiAbEZKG4stUWQFTPldFZH19
Sn7d5wlayU+hLlyiH13XDHCbWql+KfGo8eM6WUvoiCMKk8UudG6hm2qmAPyLwjjaLMUYfrFR50M8
vvMljMvOgWNndUkxwOjmsc2Ym0J89MXcp8OqPpHYb5UpchJV4HZCsp9tTu6x+Vyd4C4heMFPqQ/I
iDG50kH4RU9dvclwkSD/wB/bVn5njqbcHdURwQmj3e6xH3jJlTFdmi2YFWDEnuOwsb6QbmSWqad/
PntPg2pMluvpBqos7RGU6qDn3O7cVT5TsepjIwX0nV/w9yTrilKGTbE55dDRxzTK43ftSbKn5Ni5
2sJ9zKHvN/KlO2pgL2SODPzkpXtIomRy4BBs8LREqcqPnJnhkoxX/08S3I6EXDjD4Nm4rZ7BWg9b
MfdFB4Xs61TX+f3KJLllyyfEYIJn9Q3hahz9wYmCArqxldVdeWStD9tx3vM3NQtRVjHh/DYzEylm
dX0yXASARtDdvhYkbiKhq8DwEk0tDGVVz47CF++24WLX9xF37VrLlP70GgqHVRziNUoCZfUSvil7
gkaQgjGuwzodXaVD84k9e9zPDJv9EbIiOPWZEeBkoU7bU01LZfmWzOayngcL5CyO8lvNGdVnWTCG
pVe1+tERjfUp0jS+NRTEBej0B9GfZ5YIO6yORR9veOnbuY2iDv19+CLyYvPZqCaTnnoFUbF7d2Bn
l1xwfN5WGh8HHIEpu513YijKnUKoeBOd1yLapTuVdu/TFG0nlwA0sqMkY0KHV0tApKzW66achMNI
NxkyXO9CUDueoLmfJBI1hH8wYSqaJPzEmmqYTdK7CDrAqyxrX6ToAxrSLqMKsdlAV8amhDj8bGCY
12KYbugQA10L0G/Pu3T83DjkTSfCGwmyrym99dQ2E9sxM0p4Z/kciT8KHftuluIlTGg1yek90uIE
/4xJsJS6YDSMasmLCc3p5eyt3uTwDLZFbe6B0FcxxwooOdir/rVdGeksv5bOT+K61hWKs6ZQDTJ8
2G2FfJ0IeitEttm3Cglv2uuzegjYOe9oPcmWUTMmrMkORJXrV7Bc0sNYiO4X8Qy15qF5CLiY1wkU
XOTCwFMzMKD11XyqyravgXMEy0HxHCq5vhNXpkCftZ2GGYxekW0biil4BtnXvC3wBHzPebvL84cZ
7hFKl+PPrsqKwxNR33oYSK/7ZN5dcvekVFGbHcspqbd51p1sIhAac75J5+EyWcRp1Gm4ehZ1PlnY
00zPf/dGQKHCOqDJ9aTFwkVKT43SpomjHfMQjMP0hq44Kwg8La4zoccDa2Zzo07yFp6/DUkDHLoo
2LWYeCexJ4MrXWWjJfkBvBNj5j4Vz8kzbu6TqMYjmP9hRSGyZOM5bg+1NILTo6UbWdufntS9W2yX
s4vH57ErJ2WXp1Oo2Gn+kuhlzbNK2/Dg6/agxhrdGST6Ni+H5unKNvhvq+ECHkartVXaSgvRbJHT
fEybz3vmOx2XOlnIAnQiM2cenrVSMCcHmK9slQTyYtO7YYUltQA/H/16IJsUPg8pLg/0f4pRrL/o
OkoxR7mI/wfJrUixiOIb4YxFA61N3R54QhhT5BlqbG8XQfz+9bFIZqNrgMhghWRXWincBGrhdOK3
3xVAJf9RJBSWHocACkAm9grGw0gu9ED394yEvOuoBK6FljP8Cx0F3Dy8CUAA2b2aacpBo4j0/S7V
7sTduH3hRZXqFNe6mdIX3JHzx+iuVHtIkbNpvCL9FTE4XX1nlYrsBenPyz1bqkiPWu380t41hbe9
15p8r1gvVwCg7ONGOO4nnxlbpFWhegmjYgdFv67jLOM2X0zq9rC0e0LyZj8fiknmGKxRDFxEPKS0
RoLIuVEuklWVHq1cOin4ZBnVe21jCPkbS0H77UI7OimDlCXxOSr8+/qVySJQylu6W6/M3I/WUauU
dt2Xa2Alc8vMj3BzP5+1SX02Hfrjc8ncw3IaOtbEb1EqDC/H2qC8bJGzM2zs2uCcqlC8bbRQdNld
X/TFiBQRm56lVoAWkimTRQ2OXPYGlnfP/MdpJ7lFMWlUQ3F6IcLCCB5pX6Eq/wtesgq8qfDJheMj
36taeuvWCELnlVYKRWXixQB7LRMIvMwJrrKTfg4KtaPNP8pYWN7HL3f9kwL7VpVnPuKuVIK+qWEQ
p/DYvtfALjMA08tSS4xPu0WJiEv1Qa/hEblMyGZ6ji4Rn2Tb0zXFJWb8iV3n2VX8N3MA8D0LsSlK
2WDf0GgLcTvWduJptkTsQVcpz/8j/5d9mz0sVcNR01N+Hi9NDi6uXnwdqw9xDWQ6IKCWQxoHKzYf
AvHNzukNJ27t8qtrTPxzkSlil6s8JOIOb1EZJmbe63JqCYuEGP880PmXJ+zt5Z62J1zsyuIed6pm
Z9taRMLH6G1S4rhzhnexfc4Pa1FBVIAZfCpABXYFchNdPIs379N9RVtJyg2kfAFBhGV7I4wX7O22
5K3LBYPef7DVfqFAYA4vPWeMOt3W3unZzU4KqHSMf122NAxaltU6oR3LND509ouTMF1kxPWvZ3Er
ImPS6DkrODiqgKeDghZcaFskpF4ytOCOrMwbC0RmFUkW8GjeyiUk6Uwj/rfVM4AjDA8/1xQK5T+e
OX1F2gSW+ORT2H3roTf2uZuWYrynKsTxNwMYlKkULG8eepASWfoeRam3TK8jIT3pyHwTKP0myFWb
FoDOQOY77U4NH/KPaJkC2VsABxzl7xU3Mg+VIcVHc2AwHf5aZCFWINPkhh2qr6bKIkWM329bpS5t
tBSDR9XhqGt277NRGNpg9pu0Y13mGhOyxeNPv3l71V2STUwHNWKOJ/LsK0+BNDySjDSt0oRfbpWu
l8y2GXh4WsquOKaL5ydRnhux4NzYWMFnSCfmhGrCo3Mu7U7/aufSDAWm1YaZgogXjiTY6X09yhLE
5ZZhEIpB2BT/ZoUkXqMN8xSKBjg1KsMFuS7PM01/VcI3EXffevggE2fsaZu+GmMzHZkVWHQg6etV
YZwwaq6WX1vu/4ULbgyjZMobUcn0OWU4IUymdq7MWHRHYIRYAk7N2B6hG5Slhzou989agBHZjwTQ
kHojsuvBmfyYC01Sa65W2g80V4vXvCIKVCIcNyHd5+5dBOv6qUv6FIPx5SooGHMBvYkV1k4nijZb
Urj+9fXLJsmC7pS7mbI6rs0k9PUp9QqDci/pRm+t4vq89gP/x7N9n32O37aN2eko1Tfvr7hva8IY
Y6zS4oPMZxvkq+6/Y5AcZLxeP4lvQ5D5KcNqVQmbzF1/Kvl7U6tIoQetkIA2sB1QJDlD+b7xAim/
Iokk1+TXs+RUBRYAEkFJSW2mJKZuxNNZWPPxhzuRMSQQmWnG25YrgaterkrWbskE4/ESC5OThCF9
4QuqOVv8499ICAquqJgQgEFJUae+Wn9ehukZp/3Rvt4lJGYbsWPJ81PP4Uo4KiX7UvHLFkpIza6I
bz0c29xOKKvm4RKLdioRpkvOj5rymDuQPoJsCzHE/NdxxfMd/j/6PswLbFn06rqD+rXCWuEF8Zcc
l9TGLBHcqdmRXbbWKHmtGGJTTNtu8Xwe231iXtQUkmf6cGjPSZgs2bV1YxEH5P9chW8u/Bdul6jJ
Z9pM5Ii5iLeXRDkYSA3HRVvoRjtVBdPgXNUkP5mzC1iWHMLmKX9gb56DEge8mN1Z2xZCAB8KAEz1
C6ugAaKE0jWM0V8BEsj5I7LSdzaP01gZS41F/l9+8/SRkZszq/G+AElHE6+cVXrpAv/5ZSyZfTp7
nuNvVPtqAzXbhnHVJiPXxT5k2+vD1VjUeTKQO5ctZnZ5zO+ZTlxITdoxdjuUD6SbWKnaGWxWeYqe
VEjFoQMZ4eDIwLeKVGC079GN7wzWhTY7m/kdpREiQ7nWiNmyP95eSNaYePEWKG3nH3Z7rJBRBRon
dVcOVKmLPlMpUP1Rrz6yH/ajfyXyahFFXwUz7z56KAkP0fg+BThEEi8EcmU9BcR3vipPCbTkEqcL
j2i+MJPIwlg6Bo0fFs0nfOwFsOkvwBGivec+oz+wbubGFlcYMxpE4ixKSYlZ00V+8YBGsHO1iKhD
QOkGWHFX7VjqhCAyJfY8xeNHxORr888S3Z9YKnG5IQEL1bDZa/KC1hYony0hBVsjrMSA/wDoBaIb
I23hN1kRsLiK6DmEpL36P0apdVyccu/tzayajCg58Klr7C/Hj9yP1LBy7AgGIep/obxVWs1iW1xz
aVNvKB/rCgUIGERRxq6OpasZTeyuc4/SFtxbYHIqKZsZoLynAdyFo1j7yaLCCRrEOni32W0klICe
YpzRNoChRWAB259nDGbRDHEvUXzbYIlDG91F8j4U3FPNjmN1SZjGIwdFviEQxFu4jUPXiJlggEyC
1TMkyVj3KO6PaoyHTnpW18t9UPqcE3ZLfuTICEPRks+PKTeRgdIxeMblelU9W1ml+WRb0dCJuvyW
/TtfRyuQ8l3+fhMiIoT7sFkjo3qelwIbE3n87I0diE1ewonDVU0tWsYH1EK6CoRccyo/wP7AuxtT
tAMwkGsQj0zwvVVwFCjOWjrvZnbdCMZfo+eJILQgZeBwGxAKUsgDbStgBw+IRViy9qfMt1CBGknx
UqnPkt5/En3sIQYgBn0N6CB+iMzNbx84VSvCo1YxZBv+fuqGSZtpFS77CkelkY4X/y0jv3IRnOG5
i93Yq5BixBC4ad0Hgj64dG/Wirhob8Ln/aIRK/u5UQQ32HLMOw8DozmIuqBqO3VUm/RRz2JPBB/w
ez4kGgSU57+Pz9K1BdquahLAlmRUbgzkBliyLkKsuay8AsMxAJ/iIXOJIis62U9XAGDT2ZBLzzCp
HZlzKr5u4/rMSofvsi8TD/cXy7VLNQD5pZQBuUsEC/PN8b5Lfo63vlxe8Tu962+UDOL1KFx1rDiP
nN3gaFZ2MafNRZatmVVk3ZPQQTrgU/cUjZt/6foJOu233um54T+XtVT4lDxitW3X9An/FH1r04Vo
/R7vTySMnSx+STBz4w7h+Os9VzBBl06wHuYmwmYf0yqPAPfOHtALGZDHkyolUbwamecQAVTjQyJM
CdyOuByHMeq4zMT7oyNsIkjtRg9RPSvIl1gqsjqZD4dqMT+Gu/wyNnmCxmmKCHHzNQvnJSxQ+4D4
HPWpZ26d0zyjOKKLNHxicdmoHvnlTDofjQ4xeiT3TpncsmmzoYHmEud0YoRUNxpKvLHMCfJczslE
6rtSp3zWqtesOvt3z6oIJCoU3ZthYybSMIAIj37+lRWuavndmmdyE/PiGw4h571RVHijslHDeYN1
oW2g9vxMEb2qVmfZry4uaa4cQ0GeqJkW4rHscgBKk4CdXG4KZDrstgntPT1GkZ+4KL7oWP8VVQ9d
elp9rdYyUPzVNVgnuRngbkQpTD7KOll3FDPapI3aK/+ARjlU8ElwWy9iCbzEGg6uwUvhFgpSOYG5
x4q8NLiXNICcdlSnTY8OmsR9iDVDjzVjbAvSqltNHRn5GfNYGQU8DRZXdoG6uCtwyYWpvDK4yMst
hHTAWb3OI1tIdIrDSR7dw9KC+lR4f1I5kiILb5o//fyV5zCYTjREbdqpWHjeZ6xA0DulvGkyfbKK
7Diun+u6ustjbtfhBGffFZ/XLpZI7BkaetrTsFoCtYPGyJg64c1CFLBMXvlIye/g4ES84Xofak2K
MTYWKBf/BYx3ORAxfVnw9qQgNFOeKrhpj059LjJumucMw0iZX/SecfuDIZ3oswbxrKvRIjsVPz7E
Xix259VmmnSuCisHi7F6fnZu1UpWnGUmRa8rjFoCL2eW6HEP7XYXMRpo6w56OvKcRViHR0ixaohy
u9NVGV91YNMPkoHZYYzc9cp9Wco9eKzi9aSbsNjVMBWnSnoLSM5E1ONLs7pLcOs1tJbBMLLISIU9
Zwwc0Olo5OVfqEcTjWkLMZ2SCcYZnQJTwMWPtc47BcwO6IH5T8McnmkHcr76MARkqb8rfcLgVe98
mhhgo4iKB2H6zXBVBfXDxCYFA7vkI09bit1jRcOfP9pQSePNJDWH4xQqfquGulp6sgKmhBK1iOLV
w7O4TYanTacuoXcHUvw2nZVt1nsOqhGPOh7BkRPs9CmFOSsA1JRsu1LRRo0/36DQy8NFnDpX3iAU
As2LAyYiV7ehZ07eWabDzsnox4ncomzUHq0PgKh39QcSb1+X/ux/9tYH0UjmWXU2iHICJpokfO9B
UFxXQ0kDrNlx7oP7uBmxqOnvcIGOvc3n1hVbE10iDLKCByW2xwAThmquKckiJWTjlyMWWpz4UQke
kgOw/XLJ/6ejK990SFVNsaaHkGLtJPMWJCrjo2JEsHfRxgSRmYFanFaWqW2J9Ms3ZqeVoL/xu3kW
pUl25jQG/Vv/Cq388Lr22XFRj62XU+PjhyR4Hd9++Edyf3Gr7Qh8zHNXGkwbZZZLzJPl7J9qgD5r
8uhMssI3RcVQw34+s30rcu68UznLmA1Yr9cA2QKNrPnK9+nA8ovfwWslKpN7+XNTx2KsOkQehiSt
fIfKbp1QdSxXlOsVlyH+oOyfgc3/Ci148eipATJown+4Fp76guwY9xcCjUzG9st+JSfDTqp7bObL
y+nSAgFL4grpPOqzU/e2p64T7/WiQmHFLBE/9MjH1N04oh9DPZ8Fo3hWHAwdc2DhJgldFMOfvht2
D8aQZ+srF0kFQiE1WU7puqbJqgOusauRkgNidlAoamtbJVw4Ucem8pSx4TsKNhnZ9ZLsBAUGL9xm
rY921Z0D31lXpaoEW9q0wx6fZ3dgKhts4uLObKTpMLc8Bv8UyjplulmfvPq64imrdAgeszMWtp0m
aBsqV1gN9UKy/vnkU/7lJRF6V/gDnCBWCm2Gw8jpVwiveKuPhjHdsFVU5u4/Z28dwHA5isgw2QFa
WiRCmbxE+QylsTxRqOz8Q80tzlPvallFFORLRuCDCSQAS6LzyswjOh1riBo97uc+HkSldu+1wLfQ
MQI4JmS+0sAVSayGAT3B6T5flfYNsSVdr55q0yE4/XU/UNB6OHLZp5NIYB+r8lBy+tHaAQISJxwJ
kikZvzw32SuitNUuqqLgFQJDZipTEabCa9BG3y2v0KvaO2pQNZkaSmtUPM2LKnhOvOZkcuQ1nL78
lKt8iW+N3qXEfuhvBNFRIjEissJ7PfXfog3jF7IeJTkoH3iFCK+Mb3mFBHEtmHEVk+pCW9JdBZ/n
7+vtdTzOGfiKb59CungYMW88IP6HfyGHv2k7hEOe+mpXzNJK/beLAQxHJWIvShSoQhHxc4v/p3Qe
++TVEOsnwtxoLkRgLmM3ppZQJVRmcpEQWVuB18CQ30q0OnfqMECfsjYEUedzt0avArvxxxyiFkFf
DPdDYOmUWAIpqwR+71/9IQfqxRUq1GVWv7agXN1Q7AQUayUjlzz8AKD9MtKnsYJ25P9PKFu+qIbj
YsDNAz3fhuQDmYu/K+p/wKp3tLc7THZGghxdU1L/Pq3aMV8jpUvkVQBgPSx7vIdLrOOHo1sZZBAJ
x+4IFuikII/Ffmjcb8gPKLot+aJfhVme0AmSUODBZXMb2Pbka0Ffl89eOyZlAB8MQCrrRHUZWYLg
QbypbLVvn5Jzkna58BOdQUuIor41PzCHjvxcixwdAqDItUCueHrmRV38CD+FecgvsUzv5Uguze5c
bijWLeG4IdWErMPme4Ohcf9hxT2cFzqKhGO5b8I24LCH/IHdJnYmWlMeT2LzEpDSUjBWis6J7VUU
gmggA4ACrQEN+MHERpq7b+Y7c1S7u/6OVHDmJ7te5UhnBKJjSQO/6VIRxfVqgeD4yFouVfOAx16s
AXfdRQG/jUU0/T5xM73BJsgVEtNeIbSxT/ku8ueGpwhUPWjkrWEL9mzKZ8BpvTsJXJcPV1XH6krP
CLfxr0o+lqhJVurzgyzdDLho/g/blYO29wFGFM1/qVx4EoUZxYTipl93ZMQncH8MtJgZDnLKwIDM
3MnJUN5uoaJ6QhJM8CpBw0+EkLxGMf1r7Zfy6rTGYY1QWVfryVwqd3NeX1oaapTMe0qd2YGRUfO4
sBoC0dFJek0zIU/BNIV7HhKUEc0MxMqOKe0nwjHT6rkxpeXRu5PogvlF/pjLu/b5WoN97bYoXHVJ
OYyFETAPKlIjJCbDrUamgWquln3SrlTTSZom6eg+YW4Qh6BiTnqj8QgiThyLqzMDD/Fn/TpMlR9I
yRU4nTmy85f0CncYJ4LXQyjwqjErN3AY92Z9//iS/X5rEyG1IAs5J+OPij4N7NwXKd9T5gklm4tf
6/S6YqRIhL8qIa8dGP3yx19KCzyZbZNI2aWGoP8UGu+mmoZiEOcLp/tjvaQ8MA4FSTc+shMWLXoF
yUU0CwvD2bxzmLwGD8D6WGIA1OiriwOR7Xrb01NTqLSOMabclSQKMKi84ha/DVPOIszYPQNecRT0
BF3Aigdo7oJRNM5nKpCLFrVt+JmlnArTkh7qw4OVavY7jvkct2zyKAz6PfP3+yLzzTnNDR6vAFmR
ib2OzNYayCHdGWYkzQ47kOHodJFWWRm/a+OYqP4jv5HxmecMUjiIKn5X+0a8AzjOsEB+dIRzRTys
u2/RB1ABIjkuX4/ebAl4PFdemZdbKPTgNrvRYl60D8CAqd7aF5V9s9fuhWtdawS1kgZa6OKmX6zu
0gmTvTRhzPEc0lZa+nuYsocGWwfCmGABLY6OnP4GsxKd78Tgq7h/IVtyHRWdLQei7OzDiqfRlEPl
C+6beDU041wbLNnbY/RK2LubZupnc5eS1EKubeb8cn/NXnyuMpbmUuUMaFXi2olApraWSekUoDDq
dcKFHzW6u4gWpxuz7DAJMrxHwPsrbET5Q/5QK7SnNNJh5l396kpcbVYvwbdPxB/yvhVmKsYjKdjH
JLPCaFcLhyon+K9PFQMmi2vMEtf7J0MmEQ6e7/9g9ccwI7yK1omJnOYBUWcW/BxbNbfng4fBDN0t
Z5paMw9weX9ykmPZWYm89moWo31ffvLIaoIWUCiCs5uwSXefWTIVboJhp+Ds2nFAJEJttdgHKs0A
fm7cWOJa28C0lVkzVLoY9ApFPYPQiTyCVqfSShxN39j2/lCfvocHQnFYZFpvcfGvv3FGnYT8SGHK
M+rmJlsNXoUfc8l7olACGII+axr+JOyU387H5F6YtrL0YTxXRyOpgMevJSwxlkzBsRyX1LUHfPo0
5g9JWaTWPhmf2iwtvJ6wdn3KIOiq8gSyBdmXa/Ie5p95MBp6neaE21CH1Hx33RaGke9FbeG6g+Tt
adPaME/UUhkHlz3j0vekaxDHpWcMKDUtoXTcIA+BfUaodDaB9IMcvNJlXU1GEigrv3N9QTRgGhxU
a8yqLHelA9r5ip/saD4U1ytmIPnWY5cKFXfKHhfYgDcFNxgsakXwxAyUpYT3lXcWn1x0KPy75svK
iafFzMrKUnGmHp9RGvhHdhWi6cWNtiQSJ+xBCVmjhsRgdpAllTO9AChUc5nSNSwzX1ep+jtPxCEZ
5vrgFx1aAu+SAwQegLzx3l56GhYBucbCw1eA3gxOSSpHwyrAQgHUOn7/Kx5HR2WzJk0g5lB4eZD8
ZYC6yas3uj98Def8h2sCq57YY8RZ0vCkmFlAZK/asZE8XvvmLynvBKOrLdn4SDEexokpqS3Se35t
QWI8iTKRj/jXzwNLLURsdOG4E2GnItdvZEvrp1ozZR4MVR/F9HDI0Sryo3RxQdRr05R916zoz/Ds
+SqOtW4xuZlSUx+9pEfW1z8cR93AqrPSFZfLQCdB/3CYsdLaNfQZS+fZg6W+WbX9tN2zuDdvgQUf
mCV1dJM6VsYI69bVEsawwhPAVJ6Jn4+v0iqxMS21fTpZ0d6OU+fdShu/bwvl2mXPsClbYPwshqhN
1OqHXD2Ttic+tOipRB2KaTHAeJ4VCYrqugZ2iGehKef3EmYThi2H1AqxAnLbOVoOmJ0LyY/cFZn9
Dd+cZEej1KNZvLuQAepe/NiW6IJOpcAhdfLQ5fV/VXpmYa5g6YmL6ldk182RxKbFgbZtgK+bqUwO
MMYoob8gBlCg0rovaUeXaLZcd7SVjpcFCUz0xqf6pR/HGTOr9oZHpJQ6HVmDfDBT22Ojvg13vYMz
Ec5nzGAoK239ycHBPnOg4Cp4WVQbwMVWklSFJpfJ96yEtrPlsaNCoDeWZN87SS3oHD/VJqFn7DrV
8sfKwCVR+yTmA1U4rVSBK5fWeqGPGJAMwDN5oabPeED6cogt9PDCkIFmA1AUdFtiR9Dj5TiWng/G
m5m3op7VdZT8G5pgPw0Xwmq1GTXQgyD04KfA0cQ4kj45s/00aKhKNERR/BxLUa9DhWsi+Cuocljc
eELKe4jVWPd7LbPzbx53rn/x1sv2fb2X3LSJmbOux9TRKvPaouJtO/TR03seaoXF9VOmgOlR9wkd
vTRqML7otjP9fI7kd4hym/EkZT7QLOHbBp9OCDZ30jdyqV6bxNNIFb7ft8spWmkLMNZ20/LPfej+
NVXgF8zqeTELH4By2D1XH4YDQ8JAPES3AzQBBlN+i9ASRei5Y5wQ7ayA6bYIJFW44/kf33dEwziY
noFg42eIFX6hNneCcZD5dHCssPiqFU4RZ6xMbwJXleg5+CQv/szmCyMmxtjR7CQebhJtHnoiw9Cv
UxyOIjNbF5ma+lLyWTV1JR3vwD94gXJmzfWP4zu2+kE4DmyqOztchzAIvCoCtuXCUCJfAmUgz3Bv
sJEVj3loJCcOEbWWDEBYuJy4yqpIKOnsLcD2Jofl5ET18UHIcO/WAZqA5UNIN7R28cspmZ5q7+gX
t0olc4wRWbvY1qxxv8UXbJ6PJA2kHrm8/E3uES6M47izwURKqb4OjttRqvVjs5X60vO5CQKDwWoH
RSP6l4IX3fvnvOaie4fqJRrmQ6zSd16aAr9LT6eBgT1y/tEDz+LK4CtihRWgUjIW4Fqnrtf6TE+y
5yaHcE2Ba7kubJCaT430sLezO8GMIp1zwZT5hqohjT6uZfVT7u2b4QdwBSLEACyP1zl5UtVkTRG0
kIX2VzyGQQCYM0pBOd/a9iyMU4d1JU1bglQrJnRU2hb0bUhJPT9iqqKQ+G+63I8TxKY9fDtQWe/z
qF//D6KA2970mPI+94OctGfPvIr/BLx3FLxhsHy3TcuGx16zHnjlSp85770kJiqjPJ3lcnaIqLNP
FCwFShu1tydtNL408dbkTxPF/DMjf9eFIXgpSCe+WonFMqVUv74k1pJKGDlqfC1ip5cxtoXfeb0B
aDBkLxsTgGOGXB4Aon4dRPVnyj7cB7qM8G2TOVzSaFRuEadHG3A7RGRi4jvH7lV1Kg9sKZP9TUjs
pAZBFjndmyHT10P+I2R3W572DCXBRIqu2FwwUpy7WdO2/hyBa8Ar5c4tO2GsNabR1dqZN4zi+Lr+
jDw7qrsPhYCwqJOR2vodQmLQhudMCuLNFKF7m7e0SrRHbrnLPxket3RzUncp4wvZYUbz4+B2CYsA
bvsDQCFVWz1Q3qBTaIO40IWQ2tC1XZ/JUa5GSWnbgVDw8XcHV8A7Fz4d+Yvw1JZ3S3b3xHR5rCyG
Y5YKJ0zbf/DVxEQZ5PcTPwE2WtofotO9bZijQcOGzD4XKo+COuIWHorcrExxg8k/za6dMLOlG7zl
kbgwYWNymNF/oLPyMY+K0GF4FQcUel8cS4tQ9apgxVWkY2H1OL44h9ucJ5ERhL/XW6rqKLA4rUE6
yVhfcsuOww25ec+ZvEXMgpQ/UcoLbQi/6H3+0D/mYqcillogZvNm1UHmUZS4nuRxdFH2GtFy7VUW
VDaSu2QOgVQC4AgwLdfT+UkRN7cMBJGWly4nv6HVhli1Zoik7IjPg7OWLE8YxTBEclO/PjGqjo5H
lZuRQzhG4Ms1SGLIls5J85HCN0dfM5ORa1e/C/sl8d7cqJisHBvdECHgTEa9Rh4ptn1Pw7ohkYD5
Y4ippbiknyBI/JnDLUth0rAitxK4h48NxjbQiiAfTAWXquE2W56ulMNfWJ6raHjBaNLm0nf1ji7c
SWgbAhnEYOrRHTjWztGRloJw89W9vxMQxpBCNBAGVd8MKURhqzFNCeQvMumfuGpdr4SYXMfBNU5b
rSOghsRMb7ZOIj7Y/C4cTa7tBb4F0AdQWs2miXWAcMdVDKPWnMaVSyk7sRDB68L0+DSLG2HXHy5/
PyFu9bIGY2m3T5ePzlX4EC0aWXhjcSpRbz27R2LxEfBw2+pgGI6I9csgLjQ40CRSLzg1esJY7ffs
TZ/KaJEF7u45ZFZGC9qM+p6XeUyCvkALB5SGQW8v4vtRB7eyboi0Zp7qUGkcVi8xnpiJdW0jGMqu
x9T/4RfZN8uZ+wl6vi1E1/F3fOFoNaRab53hOoM+ZOZZu3ha/yoarvStQ09t4vasThDwJ+i9unzr
4Wd/2mckRUKpspZxm4Q8qgD+N2zYHaWebeM5kbPNsYtL3P0y3M9Y+NCwy8P69ohxFMKR9nqE1U0+
OvIvchghtDaiyfNEB5PYSuOSko7D8g9iMx/lxmEBs/0Rnt+gLN5w5BJ87CJZ0RE9bWaPZZahHAHA
LnP5W1REO70vMom4NImDBmrlXbajOHkTvtFFIy59wR5u+fTyQv44UTShBZfkuDBv1yy0tMymny0H
HXXNJYZY41PGdZujlkq8eSPG8QFEflQR3uoSVLnfpwM3+WMZuC21q/uXFCw2BqG3a92JMqkIduSD
sxLHk9BCEgeDJETpG1u5lvEQqmgx+7GMy2y73Dm5Ig9shNbx1NZluC/85bJhplg5VkdsgFNrWFbl
6vGhe/nkIXt4pbr3gd2MOuTRzD00WkNWB3poz2HwrEfLxlIhEY6uBerXETtVsM1dz3F9hWDVoUaT
vBdX7d8PSwFfOOYBXJ/+iWx5g2BW8XpGJ/h6ynZskTnuNbZG2LoZ6kcxKsZjKz3n2UWDD8JsjkIa
lcCaH5hKiTBlKP8S/cWIeE5dajI+qnqvKvJ7NW4s9OrXuK2S6so5B3eJM5mldroruI/HHxTSdYO/
YjrdZfK4OOoVambkyPyt4PQL9sTokbgdrEPUt4At0FVN0xWvNFnyOdExs2aKG/+klwwmZ5Oy6Joi
6tCAvfgrGa0gbm4YrmRXULBxZx6C766VODtYWhXBVCCXz8tfYUKPR8fs8Mx/BWfoIBHlpE0xahGq
X7hZnNTOay2U0fvRClBlyTOTbc9C50xkep5LDjUPBaMgZ0w5EAXeZQ4vgTCim6W1jN0pHcDRPjxy
rHq3NHcOjZegsL11+BUlocXu5ab49A959Q+jRd2wWcetdY2XiKxjVBPf5ErAPgpmy/93hliedWML
6B5JYjrgIgyT4gDV7tHJEWayQIhFwswGkQ4fG+3mu6nT9r9tcrcc7pJ0FbSclmIEKm1m7SJOqE1Z
+41sYT/3hLpAJvczbNB1AFdNhdFeX/Sf5u7ncgBp9dlnCdXSJsK5GpxiNItj967iNcQqroHfLcoH
VifiqVe38eAZdT1R+7LOQC6wArhsF2YInP+ADv7je4NqTCmYA5Z2ve0gQWMokdCkoA9q77pfCfcs
Wb8LaPZREE2UtxKwZ8sFoLZ2ZHRuq1RtnRFRhKcAwIKc+ozrT1Li4371OpitFxIXwLJWuMEts9ub
EJF5IWhC+xG45XAmyKXf+WpkvFq/LvOVmwnHcMIB2+9lgEixiPQ0nAOmuaXxr+wFlqLHfxwrmkdE
oGIYNoqNX1Dh0/KKt7P0y8BeyVPcsI3rQYOOBDdbi+VRBnlylWSj7NeREIl+6hfxo7TbYxHLcykI
r82Eeo919LvGK2HwCjrAebefUgbnKSIIy6zPrza8aYMv2H8exjeB5w0u+JDx04BuAC96Buq/AJi2
0rFxM8ZnHqkla24DdnTMFrC+kd3J/6bQ4m6at+E5OYNtBj0mYGC/vqkTRKXi5rWyqi+QgzXrvd0q
LFGhF8vyOHCWE1UzqmFXhiacpxsG53Dx28iuUr0cumQvPfKek2RYtYqFlPdVsFgnpQNaRpjV56iI
Ag74j3uL5Pue12a2bre+8wRtgMYAzZPn2pzvPK7c3KADxCYW5/APH0sG/NbV4Bj2ucMRjVmRmpKQ
z2TZdh4o0w0MTyb6QJedVpdfftEm3ufLAXastFu4fEgwXqfkX1BQ5wYYlkVROOEqYnGTLeVc/qz4
ff7Mf+Bp56JZGOca+9dipPlQf4PbQRs1G9TmufWZvi/vu3xcRSVymAXg+x4/z8OTz5bG/8z7gLK4
iBRYU7+/JFJOfoOfcoX3Up8FysRxPPIwNQ4N8plDKDngD6URqzsQM04Q6JQEEckf2OQ/ysHBG7V3
s0Iiq+6PQpl17+YD+IHYQm0Zcje/HRMnSC0p/umg0vrcRKQc9AcDait2qTZjELyvjUclDcNloK8v
NQpQBkjUbHYcsKMXU5bklnUptvb8f+/Xa7sMRnKv4QmXHX520JM8+SbkZo4YEijZ2eVEModuOQZZ
HIVyGkQat0jnsxoeeHG6Dva1d08UvURKvGrZOc+UPCEuIlRfyU5wlsfz+C790GhMVIrCN4UjRev/
X4znHlvDkvHdO3kj7bRs8rJQUp5IxHtwaNrhPTBzU118lBp575MDo9Tip3iPH+AkejQqSu5QkuIj
Ah5N5B8eu4/kGaFdPJ3qcgzmRrnPn492l5tFkK8rBrpjzzArTdgcZKDSA+jGCZIghHkJM4kTBQpL
gypspMB9VVgqujM5QcrQrOMLecpvtSqgUUdF/L0klQHQJXZrvEt3Ob7XWjeCg3RAWkOTympL3JfL
JyaewQOb9jCaKi6K0q5DvQA75DqGdpGBot83ORY6AOEISKWLE24EqgBzo9EClqxZAPPeQKmHXzks
UztJaUmbGbqRrGGYoXXlYmBpt24kVKIBAVPaVi1LFnv7IsjYJrIjYsYVSAFpQNmKtzmXJMvGAy/b
/cvltc6vS02fUytSTXUQ3ullMM46fnXcy1jtaFhE6jJmD4LRt9hlaXwcRLA3wIY2Q/QPlw3YDGKM
t07NsHl1Q1PCtwPAGwSNXn5RfU7vMUzI0H5Xc/d17XbKxPU0YIruAL3CQOZbYEYxwm1KFxhjKAGc
yqKXTaWIcqOHykxN8/VEZKAU5yj3s6L2kmBwdXWbTHVZjqeVGq8PqZ9E3ETkGJ/5uro8YwuXJ9bU
5pFvKS0A9Hnh3rF01fAIswZO3NquznY5dPYrmh5WWPhQ1lnTpY9dJGL+793xDLE85wXL6z4s7cN0
uttaMkZEwnSrfDtQkPKZJEubX+5N82ra5XVY5B+hYMEMCB90GkfcqYcp/Kl5vuzyfkRNl3B2jkUu
QkWFfzxLBekgwTfeBXmlCCoGGDSmC2GU3jFdnOg0EjxyhcAwBlegtNHoBk8RPaGbA29GeV1HKs03
VmKCEUv3fYOgmH7/XIyiHDL2WBR+CLM2iFiycIYnf4nBVk+rH0TwuWeXDo7AUN9bSo+BSh3f50PW
Q2gfrMwS0ItRPvYBbeLFrSkRSEr8DTLyh1XYlAqDPde8rKIFRlnVY8TYzghA+Lry4smTPcy3D5uU
8JwS3xSLJpGDTbVcL0vqdm0RLwvIGWpzCowKuQsDuD0Gf56qbaSkndwLPpQ/gKxG7y2RZhS7yI+S
RlCjQS8HTADOG4p7JtWTNk8R/sVy+mPXq4H5ZPVif/AD5hFS9zA6pAnlb360kj++xBIPThMf/cN2
dqToV4dDoczNlOyqo9q4sV9PyYr7sZPhVK9duM81Tw5ayWwuySM04ytAeZtrXgHBWbUw3uPGicr2
U2q3NyC75RjP0xbSf4ow6TzOzEsbXinmlVrHwc8lBBu6aJaXMWPSpOQXkKjvmc6dMTKSqt1mrkRg
m7By+tQlh+fch9WOqynLcU83eYuZpAgT2tLihQbzBRf83xb1yjwMy8YMrUzT646TXnYNn547Q1l+
gir0BCNTpDgWsazxyYhYmmNkyeVPQVPi65ZCX4bVJWC8ZAmb3KHuYESbQQkALuU7hqEjAGfquXqQ
7fIVj9k/Ur+tjz7m8Kjuq3n0j4uKzoWy5/eqUhS6FetsOxcLj4liEbLRXBlGgyXIa9Sey3s4P9OM
6uytD8+D5hvn4fTvsxjs/+a4TyVm0W3qo/k5DwV22sp6RBqv8nv3QMg2KymbOaa6dvCUXpztMQPt
HqlRwHGT87lat8+jOryYtwIQ2Dx0pLREme1rlpFheTNexUZGojome6DrhaCifs0fpuHlMnGOKbWz
zzYBf2IzcqUkw4w9AY3FNlt0pghzf5/0EPsOBYF/3hdBjlN7199V1kodp1AvGwa/+N75b86ySKrV
NXO+H1qOWA/tocCviRXzFCZB2B7YC1I1oMuGKZ+DBRKrOd0S2/UtDbdkkD2+tFpzCPHXggxo7eCC
n+jfzT9WdWZ46jU/llL8ynrvOGI7HzFG/FU//qNLgZ/pdVfeFbW8OG4F29MjwxQXia/lwdMLKZsD
85LATHlapl1LyzZwKa/kDaKj1kPkluT/EbolpYmCfedYlt+tMZvanRIs20CwgeywluO5tNEBTmyV
x3g94AS3q2hYsZyMUo1t0OLaVEMNr/2LPUkqgwXwj/kEsj2QZo1QUM+Dyip7M12ZWIm4kgKv3ogK
YNCOoFTJ+YYwYi6l6sTGW0NWXkRVdCC/5L9OWjGvsJa6umBjB6W+aLiD7HloBMsdqwWuJgs3fgSh
IgkmINFjCzVM9H6Mb0Miti1zKMSLrwXik5wsHBNBw0RPqkTfef4g34t5/J8BNxdpWhr6ZT2aCTok
8+sWu2ewMqFcreocI6MU+fHm8Jx6bJk/1r4gT3qReQYZINx7RxL3FCJmsMmwG1hq7abX58P50hSz
upiQM91NdHxFgrKYSvC2c+yLc1Ph+vRb8RiOQia8ITrGEBKQruEwIAlGzcQm5A3zpy/UyRl++BAx
T8f7HRW9Pr+qVLxDHdFnwfBVULkltFEzCTR3XaDUZpnYoVgCFu098lH/n4GRK4bg14AF1BUHGTxB
xTqqS4p863tvSbEtFrIdXkTNbTJHlDEInQFGUzhIxv+IClhArxsoYriTqWT6zFeRIDt2bW42GgTl
BRaAkD3tD2KgHitVINiJSIznWVBD1pSD9NpHiBiRjQ7qOA6hVelXAustQ2oWLKjGtR5LGKIAK3Jv
T/KWNAC9YZUkdpLxgXntD0GOvOeBsbKZbUPIE0vWYWFiaBb/x2Vx2unGpuJvbxWHykA4BCK8Njgl
gpcz+ubtxisEtcFtK39djHa34sCroR4E3KeV5lf6dQwODJgQ3r4mHq8glplQ6tH9T3ALSz6AUkiJ
Qc9EWgJQrrotMsKjj9nfIiF+XTa1i7QPpSSqIY4HfANinMAs/xSFEzGlYXDcb1EKZCqEWFKAHs1S
XWWppyjpeDRgrP8VzRPtVEzOX4E6ysHCWO32zmvh8CHsvOhjlaiy6TVE4ytRpVrJwGNnjAAzJTpY
9iqcUZCCDbx1a6u8A4qDS/ldhFq9GGmdxwLxAK3q44AFqzIsTH+6jU8ot5ggNoU9dHrLcSWOtl2F
x8+V9EceeGxqUYiFAgUBhEp1Dz581L33SWw/D7QEYKolRpKaYkFL4c3jTbrKgWd0G89icrYuiF6C
XQJq6Mw0A3Ts+4QsiNv89SSrjWc4SoyIZt/XwOYPZTnFAmVug8F4aXwjKVsN7Gbt6Pr4vzO6wuRD
F9lxx9brFGBv00GJL47Drlh24UyOO/Jjm7xt/ZvPox8X0l7bcqn0x/0MB8PzuszrK4hoD75PA1p5
/sUuFP6xfuVRan9TqZglVbrLvy44DtCO9Fhb0pmeWZNJbyNWofI3gkJhxRdWBPAI8ek/OnqSTcI/
ueZdFcdii9MyGY9a5ukRKk6mypUfa7JhULuBk8CmajeKMMHxTMw364rQOUbDv4dBcW3VwW8yh+ri
n34BgJs752IlUxz4m81L0NePTpgW4ewJls/icZ0NSvUubTqvP0WcGu/6r4qocMetJ2Zyklwm6/vP
NZajnuyBdsW7JkQuT+w5xt1BfVEb2H8tLszSduf1Eqwp81lwl04jvYM78KtCsqE1fIvfITkh7ews
4kJAjcCWzonSvv+ZMaLQjitVDe8VBj6TrISAn85R64cXxtpEPz7XWOmxn4qEkgKm0Gje+qQ1xbbE
S3gYhI8ImY/6Pc1FmmoKFPjHJm7GfPibCMqVTgbHHLgVhvgLRF6vBK0JAxUpj24zlZbpJojgZLo0
r+2tNG/lZFTmM+jDrwnwmaI3tkDX4gIDDGpRvucP2OTCchmAat2/IUw+Fioj6jqobeKQpKM1ujlW
Bsd/gelOUPNLt45vyEI9oiyc/e4FZRmLfSKKFHCTaHkhHQVsGYXHExSuOj1w1sijADONrACYZsRi
0EFys6wFeWaA+YWeiXvcguPA8KoOgMr7ajjo6ItH3f/j+71REti9f2/SI5RVwtf01ra6VGKN72WF
it4dNs8SQofu0oFfgDaiYriLDEanc7JacufRq+yr5RjOD1Cnl4Vlv+pe4ug8mcQg6MjYc74ldDLK
EqbPtaRNGVOMe3ux6yYrSPoIDlkEF9E5GKtakiYVEhTbIM+Lx8BYXDSNy9iMMGZnGafzZssaKgjD
b3HiPGqRh4cMNmd/kHuYY/wQy8W5S2GHh4wlFjfHT6AGJjUdh8mu/4257o0yCZZnX/0uJ0NwEEK8
ytSY/YkxR58ETCJoE+A3oXLs1gaSlCi40xLKvoIJQVU1yjuvdv43vSP5OX2s30yMwzkP4lz2fGrO
iGMBVi1LNFz2XVcFsagV64hogZnuJYEo2ALs9Ev0EQCvmI9aYQOk2PxtanbJ6mJv2XLdt2EyNXqG
qCWty9K/0pEcxZN/ieVODMEa3/XuVv8ZugVGi0hSQfFbLCBBcoDLtOjrDF8WjBguP7gTF+ffwpsG
/rH5VFqoUFAPrED7v7cvlnt78xHFR/GrBuzLqWYYomsKOyykGXekAgabX2LW+bChclirtECNRbHR
7AplQZyj8fZ88viTApTpHmQjeqrCmXZN7UVOb+lWeeBqmMuSl6SVENbfIBnweoepYBzRp/MjOxSm
cIqLqITaqjE/2BLLx2bM5olztUgWMbhdayAyC2oLSNgWPv3GhscpI+3kqhe2DKq3DDFFrprOM75h
bAgzPj05jt+KxepLq3PmgotL4APRsPzUZRo8NZoAoOWPZXWWbPTvEzsl64N8Iefzl6y6euSrSuDy
HTzupdkwyL4zzxPwn00j3eFY53GO/+3WwypK305LfMNuUtaOqE+4Lg2LEobWYJG8wLPlz9mPpT/N
fpLYH97UqGjC40YM8e4YiTO3WqHRgVLnU7bZAos4iYUYpt5Tc1hJ6xLWkkVnM4RU1MvAqOvRP1eu
rSsJkzKbV6CamdXeqvZTMflljGtaZonN1TRCawhsywl5mminp6aRBs/T4yTLMXMch+rbZgqTueKE
egEl/J1I+f0d55UYuXEJRKDkGVEmRQ1zLg6q8dnEnUtvItz9xnvCBWztsekQ8eO+1vRkrwlssMMe
7qrlYhB8DUiEc31UC34jp9m58JPCvm4qv4WfYd5YvyR9vWYUy4K0GT/EP5wk8qCqcCW/a1CkhxpS
hYPFyzB/VhnMjjrRe7GqlWPvNe55Y41Eih/r24VXe1O5h7EOXSqgoBtkoWCHaFXx5wNYiz3KYyCD
vXXRe+LrRymc9EdzG87X2l7bJdvQeKEz8QSdlOF5wq7mXIM0Qdpwtl8gDSFK3FW03lFw+ZHGrvcq
Ap6Bw9m6X1u9Q+fo4/julS1KyJI+qbHRHQvSRyByWo/hBRvXiuyULtR3HBqbYsCG4BnIQbsZdoMM
vvmctkZhBDfbs88HglCvFjvJXcfjUWiQ5KFOwJFyuwZLvOe+8cdl3GbrigM3QRGy1rH2DVzvF48+
zgKPdEcMfwBqasW+kg9kxYtpdt7Vub0SLOYz4DrL4knKb2wJM6DpJe/FJAZtxT01TN+0LX3V7tRV
K6JnbFQN6hId47HWqkcchB+ROLZ52fyFkEmqUyPPsEYDMq3CmJVcpUBFN6n9tVp+pzy751YlAri8
Co5M7I73WsI6L6IRnWQMcx/tW3Dgo+uWScoRCSE626ExaUlQdcF6iKO+0YTUx8tju4t9F0KNIwau
eyEzVTf/tL8p49wJcRZq7erdKfiebuAGnAfs3uIvpY5hiX+aAdQenA0R1NJ0eM4C3QOnFNrCSBQO
rHJ0llJ36C37gNYwaI59TKDwybL6vqQdZ8aO9p9We1TxTv57E9RSlVZAg1FbZxy60DHEM8yqXsz5
VlWQCnH54x4RidabScqN66ro63v9vvDqjvXzP6N1Ou/cCvNYD+tDnfMFDebdTk7LcBmwG0VBu1I1
1cuwJooc6t4uW3Y5S86TkiPSGAarfE7YIVSgudGt2HPPbPUuJvgHFyYyxbWCUmpagFUxBH3zUi6p
pPnT+R2dpgk69ARDA2FbptsbrKWSdCWmI5d2zIqgU0y2w98yMktEyJ7OA3ReMi4+/jR95tVxpCwB
jyUPisvjfBXEnOHbMJFFz1eFiwvBtlrwuAfwzzmGR9fDLjtXDsPHvUNADu/Q9oMnM1lXmi6u0uzu
xwxuu4I52Rb6xz8bZsiQXUVy8TEUhjt5vQ1DJyR9FYwgIe+MfK3Q2ZteBib2t1p/C9sjj3yA6zzY
a3PFsR6cC26RsKcZMh5D0WLIOBsJ6kImbAXn/SGvzvuh2kE6bWOtWTkCQgl9KIm/PgT48nHK+Zeg
EWujflymppeWyVqOptfm8Nq1ats3HTBblpfThxnaWO5WVQOveogWiHbKlwbAG2s+A0Jl3/dahxoq
I8bmuZfm1WCvutxm6MhvWvreOrW8AT9rkc4QScg4l6IMpqmSgcJnXh0s3BrOGZz5CJvpleFwh3Ay
NYORQLhUcoQ+Prvstehr/QbtGz9ZrIa/nio68JopccekpnBvL8zEuQbwQtaZtZr91KYmK6n2gmDB
jHZ3tJu+1n2bKeXYL8Gj/WitaJAkb/AE2kgY8r4eRctbmqn6XNuuGJTELAH4cxMrIBMlvaQuQ/2A
p0IzKD9G+knWUEFcMx1e5+bILFoNobONxYCNyrTvZDtduPicN8SfVl4VpOZxgGY5m2bxpIInhJKe
0Vp+rGYbkxYEq0jlOO2blPAnsQ/SQRsG9pUCGVeAcPXWmEzhVBtlVn4A69VOvJBTDdqIjYBMI0WC
Wu8iyxBvaXnYyr0vZZ6wEqPvBfbIFw7DuWVk+GxjR4xRJ/nH4jowpUHc6zTS3ltaBxGu/8YQbpAS
PyvPDchUgpuC2pbt0515ZictWzkVnHG3qP2yohsjcmJJeVigqXkuxi7sh3orCrP9pKuCwly2zQSS
vqgy3STRrKo2SGghq54M6Cf1h/TzQDFMYadGqfPHNMdO6z+SwowurZs3yMc2nKBDVo2peb0G4m2r
oxFY0DCx8odU7Vi7krC4BWQ4g1eu7riYQn2c0RE9Z9/1wDjCusA9U4SJFGlAq71YgNSBjvrir3Bw
36z2djik990v3hRummyNsQuyhSEcd0UQ+T5V5wmC1vp7i/h1VOZrAEBGlu/W8MxWtMh88AGeHju+
gmt1HYwJ2pgaISeQKp7oGD4cGoY8ozAyfn3I9f+UOZVSkK8U2o8af/okmnRwnJWc+inc5hGGwp8Q
ITHZ2+Gw/uQpxKLrcS0Q/pnl2KwsqyGcvU/seyfhyvbBtwfnQggySMKLjpsGg/4VXdS+lqzjF2TF
iTQcTWA5rFk/m2x9ftvyDwDAsvZ5cx9ylbyeXU2VHQY/8OQ1zpkSH8N95plhd5lmA9LAIordPUnq
asYSO1U5dJLXYR5YKAj+3Y9uBWyaOyYWdVvlcu7RIUMnNrBGuu0Vsnnosl4CSGPMGupjS5CZ/INH
c/XkE+jD18YzxWvCffMMQ5hBkvCA6DjBrIoM0zu5zpViK7N7bock4Xa7JqAJyRssXAcPeS6bQEA0
+erlelMW0MQhuw2BgEHF7omZ/+oxS4MO9MLs6bXyFRlI24cKQFoxHgOZ0bUuWIcxg9PjEQiuT/Bw
Lon1ciBT+TU8v8sr2KBwumWkUieXHJBNdjNNjUU2H6NCheERT++tz5BQrtaBs0EoBw0C3+ObxsTv
JJK/QNhVnuzh5hPh3FgSNwwh8O0DiuHIU1jyxxu1uwlcA9pakKLvBK7Eb/XGtWAUZBLsKpxWtrjV
QjRFzJnxetJu8bd/gAHMbgTvNXaJYAWQuTB6A5+itcpeEnd5Bk2P1owN+H23nC9lQV9cI2WjmuE7
Z93JnZtpU5tGdYbSZ9seO4pS70zu4KGW5u/Z2gn2xpXHc7nzyi7ieWC+NPHq1h9xdCrq2w8LFZqz
ikHLBtcMjTSt0kz/giglvfVCOltHBDTTd0F95budb2SJxYm966DGaxuyArNQHTfyk1YC/Tf8aMnt
ekdvRr8IKT5FwX52KAiOBLQS14frAKoRU+1nH9T0bRP8igca4tz/mdneHId5yPp7Rv1pzcVdG1O+
dTCvSRCihE6c8PU6n6/o0ITvkS1wgSn6LJncYCZGCHXDhJaEJ7Oz/B13daHLjrbFKbQCJISWgEDa
9GmTG+uTBXg/stwDol/EEfjOAg3cCoIpBufz2d6dN0RG73N5fYtw1brHxg69EqGuqpGm0pp1g01A
g5QigP/RypbD1afuMQExkyrErYAFpkKM87Ph9EXw2KU0lnDP8mkRSPbQZ4CYGv0pPtWMkB3Tn6uB
FuL8pTMQttgwj0VVuiyJv1Oh3wVzThRvUCsMm4z/4qoH+H7UdIQ+Ll+Zc4QZpi54SETeq4d83/ia
XZvoZnDsNL7wTjNj3oLBC+tsbte0lPRw0/DKTrOaSTh3Hds6vnzWBdpTF8eZcn5shM1/NlotRl1o
UEddmXVJAuVwkwGF3uFkW+VbvOGcWdlYnP6j9ux8gMUKHPLH84OmBWA2RkvvydrjsSCVnYqNDIrq
tiLcJOHpilcXuOJ2ieNx3uo2+ZgL2fOFBV0w4k0QPNnNIq1omjJLQ5tZxUCrPFArbtpE5JZjtqLf
FG1d/f6/q9QoASoos9MypVp7LK2xV9TQtelWY5x8H8g5moaxOnaMhDeYT2AT0E9k1YceJIJjj0y/
III6AruHpNWLgwb9Q9zrU0w9GrdrdAI0Hbb0jKMrVpRejOmFP+JN4IOabcJv2jNxSv5YgNarg+9K
wspxqmwCv9sdaqcTvEe1BEwd3jo0uGUh4UFmYnmryVFyvLnIhTJ1JI9VAdTMvXRgjMokBeVps9DT
EIZWQpKF2egFOypQI+iJTF8ZyhOaG9+I6otcJmvevZZ4SRAB24Dqinvex8IoIyL0gi4WpDJqHR4e
B69qacUXQWyGQdDt4TQmfdvlnppYqVo7rVoW/YEMFJ/7vwrwCaVxbz+m7LJHlOOiX1GZUfh5sgUv
+Eic4hoZ0d7Q7FPGdr6C4lTXsLPENo9Ugxjz4S+YO6SNUg0ejOcPzRidrazIBgSGAYe2cviF5AqB
oEnox9MWG7xxC83fBM0vwkCZWEgHsy9FaErySm2oTDgWREGjKV5hDVvfZxeog6j7pBaow8LhL+qX
+C5u51Od1ct+pcK3+UpciFMu6RrRFZsNTbYZMgY/u68d5qaKaQBjjHVCKVRMKRLhjb/mgc0p1L6+
VpYX6xWXG10uBAtKZwJIA6Qy0w9zvfVRi2iy47MA9tFjLjzH0lHmmwb3S+HlHO9iHZa+s3VWH+5t
gc3IDP2EMblMvjF09yWJL0iBQjQLVsKNaAKunbVIkLBG0eMHfFoaDS6Gicq8RVzEwGl542GOcjpz
z5yjGyNdcidDTi9NTTZUlEymIKqZoqe59vAbSjvQuwxXtPqmdy5Ud6ULDgiFUHT8a4aNnSXgNCNq
QXB3ExSpNF05y8Y8a2KY0XX7yHterhHqMWjqdEF4ms6HOeJXzoGwqtrLhfA4/W5qCl63nnNUE7v6
zKD70nE6HC13v3h7C0op2Ikz0oLxNRGO0sFIHmQsOYsCib41is5r/lgN4NjRjY8xbylKOQhqnJD+
FK1epUypiCO8fRBe7rOErvf5mJcKp0w7f2IGvSXC1oL6uIm4rQ8INFaKYfdx/JvzpGbYUNyUTwXH
lYuS7D9ln+RSY5oaWAQ4I35fX7F6un33P3eErxcoFVQcs5w7nRhgKCmlZ97EJeMI+XyffDLSe9hT
sp3/bEq9sqMBgLJr38rMAtXcCUR4arQph3kGzmZvo6uRESTl6jLDw//TjuuLfsjIhNqj/nerTnFa
8/E+quN+tP5QVHgSLvKT7ubDJNivcdq2M5g6k6wuFf4YSHWlfP3whQQo95AG8yxHvdF89v5AJUwx
o/riv/xuRXPnn3E3Y77hS0ZduQCutq+djF1w9sVjrKtQ+HpF2nPq6YSApSWgfZiJ0X3I008TyMHr
7rWQvTNFfKXnfG4P14v/Q9EZxh8T2/z1rvFQqpPLUex4rix9GM1bcCaxjesC6N0C3Wn6cyhwF6rM
qY254K587FJEPY48wHna9Ul0sjqTvVZQZziSH2MOkhM/iG86Oad+s2OC8TvbfqYZFNQ5m7eBc3Lj
4F0HpVXnEYLeK2R8hvkySftdl5VbsJQOf0HvGyk/nGgoMDupfirrop8+VJI6q5NKb9KIvDg9zVg0
aRuTsOXuuVfcyG78a/UEjXPRi1KM9Fq6KetZFuOseg5t1SqnuzNvkOetowmInGkxW2kW6cpj4Rhm
QhPg8U+hX7FJF6pdviJJHviAaJZeXZa20OiI5ZeptDo2lpp6++bfNUGhPbdkkAKXpSRbgLBBDKJd
O/9i/HjULw6fSmyZ1s6vOyiZSyecSeB/CYKu5NujwHKQxZm54A9TWUjyhWvv0JTA3arzFOWHx6Nt
X8n5h6/Apq4VFSzP27zkhKt/vPRIljwTRiQAzbN/StHdvgyv1yPCX1YAO0slQk7qKKS1m91h9hTI
KeIm/tmHtlDyliyJM7PBfScmqg3kcQOikh8DZ+ZfIklLL/c1K5DpWTP2y3yzFczQWiXxlG3dRUcV
KCmv0nVfJSegWWkQOl43dbJBClwyxr9/dFYr3ecK6nwC73tZa64x3mEUd88CZ7FnhfSUBc+Epiea
2tLHB3IrvmNBZK/ogAHITC+syXE+uNnMtfovdXykv0Ao9SpwmAoQr8WT9P9iyVgcFzddA7Hs7aWX
fzDr/OZXrtp7h+CPrKfLmpzU/tX9YugidOD8KI8hJP4l2DMcU8637WNXlUe+k7qMjeovzv3wM2Ax
+3n7O3gnd8aRmTcHXplw7O6vJyVZ4S/I0YzTZncVBv17G3PQmI/BqyDvkt5y7+pR4DtG1hRltzQB
7xwJe0NOPaNy5xgFJjWavlMSARDytvlFIfRrts25QP6vYVHgBgMTNHzEtEAF61P/OGix0CKgZLd4
RmPf2woti7GexiF8XDxRzNL3SHjkvOSQDyzCagER3e2A7SqFeMwX11srjzZkYsqC+RTV7txZtnLf
Sbp0mcfAP5lqbTlNtYnnFyVFcspt7KTQ8polQUY2UM3ojc1+FT7iEWSmpM9T7OtaWPITwlIgfEKO
699ms0EL33Gs1Z1SWpT3/UTA1gpVEC3gdU3n8cYJNxXSMNwh9j0NZHmKjHrg4lT6JyYBZYjxlDJZ
HJ/MxbVur8uBZvgxcCw7FQNvSrtREIjWU9BuHbNVO+sdvSLU9WMsxv9fGODrbexgxzbCsUFaht23
d2/leRx4aJkHMoaC6khUxyHflWDaYznip1DsESWL6/6xCGDGrdM1yARQLCOnZDSGxNBLc5VdUVmA
VHkjt5MDeicTkdRTYWaQsZJkrLGwuSGzfIIRJZvQMtX2wa8jD6xzVezA3mfQauU8rVJcGsl/nE7L
IQxgTHa4Bsbao00cIgP3yK7MfPUaCDx2n3YezjZj9Mof1kUyN6BhhlSIoGCIX9nbvReNahxXx0CA
Jlcvb9GIWxO1XlOxEy7KHlxoj9BAppRHHQDeUSx6NqEcXGw9lZztxSeoYJimFKgE19pOTQ8ILchY
0+f67lgTRAncdB/9fYJ+hc4upVrZialcYTsbcldQlQLKuMXZCWDathwWqS/dbWzH+Gk7xv0PEQ7t
J0IpKLZ3Y9ra2POnEYfKrZDiNAXRRyw8oYoYhMtvWb6tmpU8n17vWhAW8hsOvfLuoGZ6/Ebp5nmh
lMF/Slo790TPXCswmPee4QhiMVL4QyHnqctLevRa+3DZ/7MmXxkZHTEUGRC7368G3ENw6qV1w2sz
mM8B5n2PpU/AlWAPmdQzqEtanyBBmZMlDrqi5dLGiy4lt0it6GCOhBXp7goxyYOzy0bZztXlXdad
k4Ya64FNhNXQmVcr0TeIuyhK0ZdOpb+/PBKrByoshbow42Kv6FUSeebbpZBRD18hPLt0JZ8+Ga80
jcokJZOTx5s07aOZ4xkvthIH08WolLATwivrc6EkKsbWOeFJqE1fYTz2tqxl/seoGptV9m8xokPR
cHBQEmCKrAcfVhAAM/Zl+dTdGGyTJt4hXyPiu/jjmBB1FIb3CSgogdU0BeSK/cpxW/ajXhv6zxKZ
o5JedearxW0T7w/p7LUnTVbYZlztP31BDKmR4aZwEvJnh6UqJs2RqPfHHluBIXZcYH7I+Ak62/yz
pTlwldy7r5LmjLXsjdxKHBE0uYT3yGjPbsBUN1cxhjlxVEcO4bhKWsWkrVBm10RZDbcF3648cjOJ
Vg3HErYh/nJ7iKBXmYusprMlTDs9tsZRffbqLO+Hp0MhO6QmjzD2n+1NZ+5R4VoYfJH+U+ZTT/DJ
nJK5nyitAyTAG+us3ZzcjtTRjuDKIpu2SSib6ExYO75Rz09Juf49V7e6y59W3mhQwMgqxkCskfRh
U5yo/y03aFRdta3Urvh2a4ulylksxcxQLUVD8Gi0ID4r07ZVunzYlXgBOzSxGHR+QL2ZGva0oWSr
EQuGU/9gRtEpJPNBszRtAWKPLndhNB53ng5wjABJS9zrYJRdt0z3HPTTxbUkr7rzLsOo6DQ1P1Vc
tyv4df4f8ErXnvhYhcEOFe+DYmdjEIGXLwNTe6p5P2v/PBM1TC+CkwH3uWsWj3U6xAKlXm2s5Qgs
LPNH5tQk7jtm6Vtuc2wpENDM7ITwP5+oODAwQvwfB/Y9S7gogzlXiuM3um7y113U6FYxJNKoMWNH
bQEIdas2Y2WSesfN5EtmRD3Omsad7IFbpTkDNHwEyxkVmTuh7mNp0OiMYPswN0FalRsWXj5MZp7i
FAx66Bo/d8cC6r0FZ2bbgWAibvSUJca++ITy1L17LfJx5Pp3ud68rtNlHWjDQb+ScSw35hUYiKNI
NPoeVtQomy7wZsfBi2KfQMZ/z8kw40i0LfsPPbbZc5uqIOcLMHashKBVDq+dKuhgOpxdVpMTeUXT
4XZX/65gKcSVXp+9/i2bp/EyxhHbYPhneqAp+flnUTfirWK0AviK9xNlN/qYXDUakUbfLLVL4iYM
KrXIOUc3AyTpnD5haDWE1sqZEKnixpt/T9soWC/PhbEQFtvMQ2QfPo47OzioUYZmpgz2zGBu54A3
Gz2LbBVRpZDhgLXiXFy5oXPqofjhB8ZviwBZ194+u+qBsw04UxD17RY2CVNzw5isFXI3tqBZlwv5
v1pnvL5LETm86eB6BZJ3dsWAXQqSHYD6LWZ0SNw341ac7nNj+lTBbiDGdNRPBazaCQfgJzJ4sklA
SFf+QsG1eVZVoazNDebw8NwrLFkIh5aMp4gosuVU3rVDpJThGqm49A/uzQiJMcn//Up6BqCgiY3u
SgcLhDR3zL0RrGHdeBgeNeqZ+2lX6w8dHeeiC13LPvrFnFZU2KXQSQlAMrbAkOWbxORbaCQAFZtT
UNcj3OkyGWicaAfbb1FLVQxxiRbCn/GSg3yTlnWCLhxJWsvMH6ohflyx1O2fLrO4ocI4Xk3Fx5xe
m3uIFAiDPcIniTj18AfBhFkdH6/6Qwm70vvn8YIPn1kEheXPaQspnTJ78PFRasK3X8mqcwTxHjG5
EnRTnFdk+IFPWRCqVySM5YBy24Pout4RU5dbGTXugLscBU5Zu6jESOQ+fibSnzIkX1FLJRIrTCab
2mSdfHr7WSET9oJXKeMda79zO2CjKOixAfdUUnwSssWmf5lVBG9uvqJeF5GxDDgcXpq8hZ5C1TVZ
JyRPzkpCEZIEFuXGwM978GG5cfX/HrgApMCMenuKouGA5vgKiFIjiNmpmhSScEQOsYqO1t+PLd9o
YCwT42CM5jZAwnqGIn2xe7fcamAMXdhv1N4U7rji5j+RMkLeSiJUtTQZg1me2RcgK7sgmS37ME9F
mZLt7iM4XL9z2qI4os3Qj+IwX9HN9XsScUgTBJL11FMfdUobRDEfsUe8s20nB6Os2+UK6JTlr8Cs
7mUD9Kt3U6Gpj6Y3J0MJKv2LCDh7n6wc4Jqk3Jcq7MEGoCC8e52lA41lmOwaAVJIq9RXVQtK9LbZ
uAZl588UzmyCSPAei2EGsSqv0kfxTcC/hq3ukqGNhnP02y8c70nSXUZGoXqZKZrYjGgJmI9k9XEC
LLDvjhbR7xhMLxyFw6HoNRq5PoU4AXEXxj9SJ2QoOmR7YKVdfHG8UtS+J54AIyyrWqdeCTDfphkk
NKhyCAsmyYuId52wJPj9OhnItltBm13nwn+T3mi7YFIB3zLI/bp4zP2KXo/9J8lAUjQunz4+jpYQ
DIZIlPoq3JNcdLwVEWtk1j6T+xGM+GCQHtXJZBjJfxKBtxc5ra4P0qdm9H22v4SSRbhVdxktiHqk
6kIKFWAg9UadwEZ/DiUA2+wmzM7MkbrafbYu+vDpAn8ItvKKEpcs+3Wj84Gx8ELkPw0AOBasIYDi
6t96C5KkWnfv5GBA55P77cpOpakM+EqS5qSA35VNkAdYBgSj2qbnzeb4XfaZPOkcXUwzhN/ilUFl
sJmOvdd0lTgdpSqVHsmMDIyY03oI0r5s/t+tmPZ6gtG8+d/Z/aWbkpjWgpl3EsKoYOfYvsq4javM
zEXLaRQ+jG+0wg/peALXlCWdiXad47myNYnHrWGkrETRGz6F7pbk2DnoWC9gcNEhIrv+Dt+USFE3
2zVIXS71U01ZKCixLddeBkcHU0o8///HazaJn5UlwJ10oq2gG0G5ty0JfNYcr58GVa68fC9wguD4
tElkRtBVVXdKNxFT8XRY9JVoyKRIJTSs2PJSr8c6nz+gPnCbD9DOQrgwUeWBJC7rLJDti7XpL6/m
L8nY22YHBQnhyin/BogdBgsEY6W8KYSg7OEUGivPLlfU43IQvxEwKsvniMTFAMs5zB05q48pfFhk
tWGL2bhkYhNc36LsbWIlORKCEyJibJtD7LAxvDOwzjCdbNcAQ1MUfBrKP3D8Fv3DEJ7ZT/viEs0h
/4cde45GWYU5V09n6Su0oxw2fSss+xH1llKpsgeruOePRSXUqYxXcDLI1upuSPB5Pnb/gMdZX3R2
GOpNkbaT1osM1bZEJU0OhPmGdkMI70cBXBu8Gi4FsVe/+p/mRqTnflpfrCaNLRV7HWJ9c4kMyrib
Fxx4eKNpFen5UyKq9CoyGLBmwsCZKYPNY1zx8Q4unsqNTYNPo3lpwBjlXf5WuACzCyIcJI0Vsjai
5XeYkjxpWCIHFeZ4IGFSoNPH8hESb9O4DRRMbCEi/Xl1YXn6sSu9O1DsLlJXdTSFUU0XcpSzmIeM
g8HxctL/hZUR+rI6H96/o7aKIQ9j+lHXcCh5wJoK3RY4KxDKp81se9a1HG8UKq+D+gOcE0LOSG8i
baoWsA7y7YK9oE1r2RqZdNO0yzAtrDdjRFmL53K5QIn8+kr5wT/EUDcrCwnrFsMJy4f/UHHwK9in
UrpLk0tOef/k5NBDcsHBUb/9FeneC1RSolZbBQq/qnx+meYEJGxtRf9xD5wiZVoEtHL8yIdL0dM7
ScwQFV4T5RINXfk5yhvrnBrx7gH1yJi4EO8IuYs+PTe+zB7Uovzi1RI6iT6jgxmuixIm5ZRaWguY
mC4v3yi5JU5OI4i+oKNy1xobUiYRv+lZgzffSZ+phoKZjJKSP967+4YrUOXqQRQDPOCYd3R7cuVN
DWq25YVP0xieug4n1hCeZQvzsjJw+K7LoBQtpWzW7Hd6gzjecPAzCD3C4igBj5a5rVd0m2RDCzIe
WzgYcZ5VraEB8/DbhwsI+UXGCFx2G2rCSmHKsqCGLz6RNGpVp/MqORXfiYNBvP7oDgW3Fuqz3CvP
RXYKbaEssHvJUxJCg283NT1MxrQjes5VZcwvRPz4ysCB8kJnHGNYm4qWzfhtpruUM+v8PS74BwRT
/17lyIe6vXQE+Tw94gecu0ijVgfj9wO6mOD56cmp/8/E3CfTU0zoBcsjRj7f+SN9im3PHli3H4mt
L+EhiO3U/lnfRK4KBdNsDNgTTqA1dac6naQyxDp7gM1T8W3qzV/dk0scOzbsgyryy9hd/q7gR+zm
sYnDoydxbylphH8pUE5XyRgB7s3LqJDLnxP/hHiojHgilI6rDYiOiWiylH3iBV0AyWbJkGIKijw9
ZZIc9l/uoVlpNyezrYyzdU6fGCBG3iMfOvzL5LaPd+E9PaL+NxVrYXQB5w/6VIovCe7MGUXW7E20
7fntIAD7MRqn5AnQux89voLiQMQNoluEjlmr6vb1U+jItJOUR9UhGR8UZzIzxnxldUv5ooK/V+nq
yKFOfSg/ttquG0g7fN5iqHCExJokvxiSHkH8elWOQv5STB+YlGVwY9EDVbBVG7pXaSY6oaVDLBev
B9m5S6BTt878ostcj4QtKsHgBRxMpPQk8ZcYtEuAf0qIEy4vc/ukhg16ccvIl8zAEQ+qYYiqbCk+
OCny3Ykp0mbF690o68McJuyQX9tSyjLMLIAC8GZgJCE87L+LTdvzO8+W+66Y5iYsHElZ3HZ55iKD
o00VnxjUKhL0zS7W5ah25JnPcuSl/ejq2VI3lrr/CQqImGXDb3nI2z1guPY2KPpU8QOVmoUSk/Lg
b+GQTXFCQcdnz/aanSSKqmdpNPvRJTdx7pUtaRb1C5WQK8kI6vGWlMZH8xyvMgEfV01An0TmXRDK
5QUjWW0oZB7uYxrlr7LBUlE2s18/rrY9A480iUvMJjrt5558/Gt0KEPOGN1tuZ4+JN434pGDqPqG
HL7LGuVL1rAK6HhOgxjGWmfC6DhBGqU8skqn4EvAwxBWARLAMImFKWWY1/dTHFSago1e5479asWI
mjcCBpaZVB794DO3Icarxr96B78mCjMxtYWAzP/9GY3dhSwPVFjf7q1ku96kwPTcs9cNT5sLux80
oNBSmVVDea9BoWsDXnArwnAHrJsRLNR1VqHW6U6AKBgGFFYwgmYMv0/DJeEBY5RT8STeFB5CfsY5
LicZyUy/tTp0SUGOXjpIbVX46M7xNfiUeNmoXd45HXG/D1X4UvzXtCmAwWzTHe8glekGhatNQX3f
cnFra3xpd8owp80tlJNmypsNitaVCIrRwUw1vFGZ6EcAFrszhrGR+OqU3ZufbueMsc/Mec3WJlvV
cXqLMeFYY6w1m3ExB5v93bT3/bFQgJ/T+enZHZE45vKx4Vcx99ijB/AkGgrmmDZtZYJPI4JwmIUh
9rOD6spck5Gr8G714cKSQ1FXUY8oFVyzEpTnh6QpmRao1G9oXN21GTE6Tw6mJaXzicPVrBvufnX8
rP64Hmu72ix4u420t+95AdIgs9k1l1fJUEnuntWkM3ofWa+gLK+gx0IEkxRiV7XsPRhTaIKVVc1l
O5TNcp3jzX6WApxGYVwNRt13YUcLsnzTb6OEiZ2pbGZsiwUeauBGz1UaXMW8n+3joG/cszsh87nS
KhjunDgX3aul5Mdj1IPiiDQQY9D7wEJkrH7kUdW6sdBy2hQCjEXWCMWstEJoBd4pHsjGFEjAg+Vo
mnh6qPoeLAVpIeHNYjzt1fs35/CtdYPdrTZ2LZIq6C++r60rYnA9p/GCJ5CHO5JDJpG6tPFV8sCX
LKlAfWKBQAWn1m/NnFraY3tl2RfCqFYjR3KrapCw4iLFM9vCqF9gc9f3RcBPLYVEwdLQbO8wMSlZ
Z2tqJsJcN0tjAa1IzHR0uLMh9jLr3TuJaTTKu1LEsA4HaJ/FNeCcaEZ8syumbUbB8hUXTR6csyBK
DR9ZD825PofEaOqVlKzEmX1FKZbS+KEdZYmgUDqJryMHhaTvGe56Lj3oruimpffa+/4tXT6Y8bTy
NjR6wAqFftC5KnvC47SsBUkAf4Aw6rgaf7B119/qHu0nll4I4vo6Thk01i1UogK5+rhg0SWvmjCS
IzsAmT67hMqt4UwxCEIvoz8tuMVeZ0uQtRNY0wbLCI+YKa9cV9FuVWmjJzpdie1VSLe/5UEOyG7E
iQpH6pMUCDmjZXKrDvXfmdHRgT8ZloKTnwbwTc0FlsWEpaBnF5GqkmcZ7LneWfVPQdHhzgo5zZLO
JjHAfWZtCJv84eG7GDaznH6z8FfL5TkDazJZ3zuvvJ589QyBA87o0TZUdRDGYCVb2FM0955wpEKA
tMwLjJj7frxhA13YHv3pdYXpLRVTS5SRXTuqBXhcnb8oK//e+2a/lU2RZWx5Q2E3yH7m+POFdL3W
ovr+8DeYvvVpwHBGeitW/LGmLRCFd4GwdKIv8ZgRf/OFf5iCI/IkwHxm7cf43y4EkdLPeqCTjnDU
oqizyLhRzWFwn3K/EbgVnIZKuMaSohRq+iifLiACcsM9yMfkn6GIXN5Kb4JfMYI5ThoTp6ty/9St
ZZKdfS4C2cMfNIN55uoplhQP3i0CjNYbvTYziUnjTq4y+zQjbHFmoeoYeHd0Nr4BIVHFVuQfx7pZ
2Ad/NiXEwmQJqnTMuWyaBZZqn0uuq3wHGpxD96MZ5FADlmDlNCuC9FjRRr6x1WyTsD1LEazMzI7x
eiaag4l0ni7zSaSM3LJKTENTmY3I8ungnGjJI4vdhqlkM0RObWpIZydrfQjrDt36nPzoR97i9M+D
dXxGfjo2hhKeVToMYlJGetDdYOblIAS+m2Sm20sH+nF794oi+bh5wI2Wa7i4ujryBI/o0l6/GmOz
uexUrurzUfaZQJyoE+8p4U6nYDLl4u0Hq9UlHlEHt0TqaMr9/oUeHCs17s5rLmiZyBZ7HXkZBo8D
0ObhuYcZTxjDBuDT9HbmB5akSjYH820aZMabnq9S0bkZG7HftI8zrVaIUvYMcQeq22iQ0EFgpfsN
w54u9T7vlbzJjilDkEZz5SrObOtL/BQFFDbc6BnqXK4mQ9oy8dKcoaIFIiKdw/5KgR8BIRWk4pUW
DE8eaVqwK3stPjQcJFt7zX3X+htxxktSn4we0xaugskO21K3fFeoMwDT/Zn4XBeFKlt+kVYHSD9u
QXsDs8ipbomOOpRdYF1GT3O2osFRGWlRmuuGRTXhtLlaOvA77Wm8mH7+o6wB6Wh9qpjBoDJl175D
vLYxoyBi9qCwbPzp6OjbWLdrXUvnAxNfetmbHVEkzXBukalQQGbeGnX4TkWCr/ZYDKNwx1x0oCqP
VlTPPwSdGBtszLxZQMYyGUSRNF88PUWKC1MI7pm/eC00UvJr0fFIfye+ksuBKDL78fRReAlOt3kj
Ml7poH7E/FsB2y0n4rKJSw6qKz8DJErBmUez/zcpbhRHJxKMwacbWur15JTPa49jhS4QtdKvn24Q
c5oQN9Q+XU5TUkF3T/3Ch3xxVqTv1TJ2aRxjI2JGLqaBq7ek9S7t2Vyth1oN5xIt/iMvueoVYC9Q
Za4s7owfWVs4fC52iJWTLKQXSeNIAl82RTdwnBJ6hn3FTtgwjqwI1+PwDOD+JxMbHZnrIma2r2ew
QKnL6kATNLbNiyhRSlhYWUkv/2VokrOMN628E1IzW+VJsVVn3uJ031NieQXsZ6RdBShkoiBdx2je
tw56A29PqTJunMUF+rNsLPhTk7J0hNXQ0hymD2z6erpAQUTo1MtAnVe0cq9FV8M23QDEMvH8xC9z
v5frstDMDvwy4FeOu9B+wvl3UUS6LEWQfQLHVQ8bx7OEfkr+7GekRodmu6ALnIpOI5NN7nyuFfXx
35DtJdXNs7pEjGa1Tj883c+Doc4UI8D1L8NecvWXLD6Y55n99QT8HuVuX7JrHmm2RMn6USCmyDVK
SnuEJZlPvuxepeXTtlNE2BAnchR7iXXxy3vi3Ebidyd0lPAG0D3rcXninY84CHRVP0VGt8Zg1I9k
b4TDkY1hiwkGIRYfZno36RkocsZxOWDjXU3TCeY4g2SmYppBMTv8JjmavAGhtR80cdbH4GTxMhEt
zFWDiiUphoPI0Lp3knA2bk7b2hfPVAlAyqzmKXdQ8P55E58M4cxYj+oi9XXyViLw80+hnT+1JujK
Oc/DTFcB2kXG8UIuaAxQeplU/AeIWAQ0zJ6YSVhEWD5LC3NBkpr2gY0kADo8SAUYJBpW5V9JSkkI
2d3YLUuokBwB8PlYXYMaqKH39sOTGqAOa7bkaqw0okX36TFqyJrzg5N2kSIasCbSfW7m44ukqoV1
hBNucPPgxJKVuF135h0FS9jpqcSzkyXNF+Te+YfI5cHb8hkc6J7DOOYobCPul+XL6v792oj4xo4Q
0waOWbHzKyE5NmprJOO38GI3UiBvm0vncfUuOdyiIrxsrRyJdtmOR/udUy1GGvdWYg+J6f+RVDuR
t8/cwoWcVTErczxpzXoJNvczcJMCCcYVETndMkncsz7gxzCw0nndynSqCmBrsZByyP7Hp6mUvCfj
coTeVGaK3G3k67abmOs7+H5P5chU+u/OB4vhQCnIV6PDxCwBFv2ALZ8MqWJrm5J1+tLCyvQiuzLU
iHkOyYUiBjl3TQj0lG1VJmnvUzuL6v8gY+PiS2lhOtPrHa8xKzV9TdwF7QdyNVFyds5UvkXvTVUE
UNGLIAUX0vJUlgh+CvyDYJsbVpbtw3RVJuKR0Gy8Kv6sj21q5lMCK+G2i04f6qpsLENYoE6sa/Ap
3SbCRIL1TiNd0s3COi/z+VYcx4Rz5j8hKAxUV/MvwsOxvnv1PR3K6VmzZwRwnnoiBkRM9fbLVhDc
9o1aGvY2XZD7O7CxS3VjilyPguyX9LrHk5vAsa49u/vow4YVjI2ss44iPCblqR4GcuawCWavdCWd
VIX2X47v20cJ8uEOD847aWKfKUstbsZs5fDzDr15pFXTuT758v/CbCSlB9vyS3jz0U5WFAQgs6Is
d9LkoSHmCvAZDPupdqjw5rw7JoSheMqSxwUBfPyso6NJr7skN1gzuDvsC6ONepLL0O085z9dEk+x
S7V4nLGJ0kLBDbEiZZwLcpOJM1401WU2Mla18KuZqxUJC51wHw11k9EagZgHgfeatqVa3hZOHUix
f8/v/UjH39nnepMXoKidqOqhf9yxxqsnWD21GN5k11H5uUaUv4+RShSPoFltRj159M/4+vkWvf1K
fjSCFiffr1QhYnSfAst1awli3B/sjQHhaTCCXOVMownBgV2vU7qRkJZdgT9aGzYHFVEAOzQnZFmD
Sv7IXQ2n5LhxMELzrv+iP9d3fLsm4S/lCjdkqwqmEE+EwrZJJOvBIKu9858miKbUIqqN3j8vZlc3
U8Bo12qLEvjvH6PyWm0PbYOBfJ+dQjVKL5x8D+S/e8i7fAkagzk8xkI+vSnL7+B5olQpouUuo2M8
ac/U1NqOWxCc1o3flybEeowF2vjye4cAtlVmB1nDKXSjwX2HnRlvov/HkhySVzzEg0+uygOVW9fQ
n10+gBfYpCKPtnUZVcGrDBtTBQByhO9ARJh2d0aFWXSiDNxc6hIRBd/sLFyGkLW078eEPrqmYboJ
WtZlm3xGpAr/h2nfpPZuGcL7Z9l8jjD6rWqvwWD8fteB1PbzZkt+2TQTpjQirUl4PntwPHGVldx7
YZQul7pFyJW5oHUDXQQmVXoHJqozWZmV9dSJS0csxXq2S5+yG/TzR3tqcdw+aMthRb32VnK3ohhG
Yb2gmEEeAI7PhwMADDtnHigipLuhKrS+/OBjDyFRA6655nFJLXRJIv+it6+AHgOXF+qv0jNBLrE6
REbC7bM9BY7ZZxJQfrvJidsANiLLr0OzVfHId9MwzM+yRi7yCG7/2rkpzxQc7TCGkN8vwYDPY/z3
YVCbvJu+ymm2xl0GZnJJN9IQFcKoAFl+hq0fP5iN16eYzJlsh6XfRbirCX/EMvfHjrlnFNxa+hJW
O5YKTwYoJqKcxoglApXKqX1eh9JzlOn0zAfjohuZWFkeCzWXiTPJf77o+yzIcMt3RzRuxbgjzSi7
/VuHOoCaSYjlO3BucTPKrQK+OLSqhilVjgSeAWfujSMCvfnektIxoXrnOKTBNzzEM6SD/m6XXHBh
d60IEZGnVsOAqZeBv41VllDEEO5Rg1zDuG5fgFNEFcRBFSu/7qgPahfivhV79OglDK9XHZv9Hij3
ci07upALrLRoZpIVDaBuZLcex0yOrBO9nVr9z42QJOjCSwZOYhpgfGTqj0IgC61Ydvn4OZKIWCLG
eRX2mg0TTyeprF3cdjtVV4GqllhKyRTg/8lNZ5OIL9B+aCAT5cuMFK7O52sERsq+KxIWE3jNUcsY
f3W23ErOo8ZikiBMTbzabXS1jSAEjXN1jgmO/Dr0gRpXmg9mT3dSuso7YYlFfBmXhc92cSz20mQr
VJ6P5RxZJH0xe9z1SgsJiqpCHedWx+YSs3zW3h+zBjefG+czecIzef1vWNrFX+bHV/tf4Q+4Pl6k
9odC3VMm8kXHVfW2JnRM3ZbRghlZPxS8qIhMrS2/D2UpsvwXuD9HUHw/7hCH54mnCE8n9/HmnwK1
IFCHxraSCje2Sm+pWUsZDdFKVmUnxPGot9lpO1P08Gg7bXKd3UdPlHtUcIoZLUpKul26U/IfpOD/
UYXq2DrJ6R2UosFmmLZKH2xHsPbx5qqni29iXb+HWUOA6HwlnyrX6zes7t2V2+deUc7SVQwZ2SA8
1bkxabPH3lMhRI1mutPqV0JPkTqrr7QhdvOjDGXi41rDfty7KAVR+PwnrD8OR4J+L3/wVn6mJAzY
9xsDVdZVM04xYfnHyzJSVn1q4XBk7jasW33Jos6WT9gnV4QbupuRl7yyN0WjSxdMhvwrA7fAKNN3
NFJ2+F1+ZkF1IRqvr1Ux9rm+AsVPogMATkkGOvqv1g5zyZ33gkibPG2Rw7N1Uh9E9FddITebZuLa
3tvfXsGzBqZylvVaAxNtkXHauHCfn/GGNCSKb73iaPd/Z9BqRiW0DDdqU7dnJFa30h9XjmjL5dvP
opBBGkEpwstoc6Eu4EB2DgTnq3uD9bcwVxxcBk8F2uZsRohl8uuiIgW4MJb/gL2jSIfHGH8t0LEW
6U+MC433CP4DYxyq6QgVcHyBqXm3KX4DDFzMMkjfHpIU9noLlGN89iNfhSz/rIIldZoax0H/y62A
uO86OVNLYasu3ZfNfqlQp0ZK4spaZr5FP8MyH/PNu6s6xMUFOEj3uaLsQpixTIf9dg96TiEyBFpV
MYyww/W9TsOfIrUUejg5cTauYSro45QViCoNrS+Ks5tKm1U9pC9HlXk0aDeLXNC0aIpszikoAi06
ox4K4eAUJigd0T11bJs4M/RN4eWYmTtWWEyVg/tQR3q/1e2nVH5WZOnOi5oPu4AOHq03p4dsOG4u
E58mu/1Ylkfr9zrdE1MVgOynZAbHPUGWtFjNpm2UmclMVlXdO5n40w1gaKxOWFffS54l7Q4rfisR
TaMYwI2+HwOBH6ZCW7/+a0pKBUsqtq68SowwWvXf6Q7FW2MJN4a30y5hQ8LUCy5oR5rqoRw/EK95
NL/wljAsTba73hd3beb3XmPDmBS+GzfJ/2s466pCROY6U9dleO3cz9OqbaBYi84RfpkSu8EJaSjG
Iv6jS7SYBFDThICQc1gDuWSxOoTDsIyEnKJv30ChUo1NVlnO4FKBOKKNYO5iKZgNKeemQXV0XVq0
NIzao7gOhXbyNMPKv1pME+9xAK6EICDbWnZBBDgDoYDbAH6I8RiMgF9HswwXZYSDkvk131n6R7Bq
VnS7YQCBqGSziDAADKR9lkVrSZz6VsnpHNmEuCb0yaosmti7HEjeoTpiUICFAbn+UrEuelzTM6bL
wsIt7uCoEShZx/RC6Z3Mz2UgtP3tIIaHrZxBCXNBm99aasVq6OBWWdDhSM6IEDAU3EeGOPTJmYOW
yRZVTsjO5Q1rtlz+HMYuu5ZY82ZjnL3UwXWpt7znxHDal831P6YVEdeZs50Ewa/QiE1ahvo6SMX+
icGYgZyKsLSmtToLjGEM0nZvNk830Ktb6rBCnAGM698ddBUWREY/8aIGj4n+4JBLbSnevN5zrHSL
n5zzjWtsYPJDaxypQ3jZfWhtIhHkOGBX4QkvxeKU1J1yMwlXNQ1QjPFoEfirludQ7tFT4VUFoIaD
K52NOCNkRpmsFi5sBR1zsRS03+MPmmhCFpzIBscAank+A1QjpMNNdSWxF32qJsI1NxfMsm7m3CUL
MlxtPeB7/ui7qHij2ctk/5PAJGu6TFohWw5xo7O0SN2XQ0ffww+mrhsJJAPZ+dhQ8PWem3bAMe+M
C5eBrYIB4CSweWhDy0GlLocYH17Mh0775WKBdNCFO+Vs9Qwa1RJJlQFY5sdHfvWHC/i913aPhRXJ
KODF3yOybVF2rVmlqjH56Ecmcz/ENASRnzrzZ9JIzJrZ6kyeV4r4XS2nLyswfXBl7HSQ02T+xiAu
133x3HhTVZ8doeWLLLI0qSRNsCjMkjiPprO31l8rGY3fdaMdlpx6ZlrzhB+qmr2GA9UzKXxJYPWF
6rzKpNKOAwlmNyvp4skHHIjerbKIwux/6uXfgcZPLcpV4ATtV6dMyWyzkE9AAKBRc0XJQoSe7xDs
+VTZI1wwe7bYaIo7Amg26/gdNK9ulg8BK8D46W52uoNq7fWuu/FOIoLXS3qPSdaXzEM8FnNdsRO/
NKwA1MMfsvBPTIW65YUCpLvBclupOhUMLeq/qAaorm4PeKOvkJHMhML8oYgTqn1y1lgaIn+ebWPQ
7uJ4xzs6cOXKpvobVt//Z6P4MbyqR3n89Y1ePScAZRuEIkunva7shdFxOrVhizT2AdAn17g0Qo5k
yze6VSAPwsusV7fhyIponk+IlT6ADF3Mid7F+BzPr1FfDGUFkg96gG7GVKJp5XBXsx5305RB6O7T
0x0/gYdR9O6xnOdNmnLamZ/NWY4hg/KYlOQ5GGQ8czS1lmBQo0+nRiq1LpdIEJXYpKxu11o6bnNW
XUtRUNDWqQbpEJTXbMqMYwzdZ2RVEbNFcyjYmKfntGD3zWtCTY7OJ1hCqnVe+60pylxtHstbkgW3
XqdVqHlREYS9jxrpQ8mXR6Sk4xcEwtbRBIKO+LH9Pk/lfx1D7Dwlhf1BurDbgBcGFkjZpIP7IR/i
bfGUSBLrcFYonFEi1d8AMMhMzmiyorKCKFgzRWzuWdRNk8VsQizzoj+ejIBJlmsoD+cUbnooJjEj
NznjQ7uk7wRrsFSqAHdjs+/cA1L3oNwvFj4Iex/8vw58B3yLtexWv+ItvKVuZnb5zNCzl85P7WFC
rd+b/IhPmxRweGNCA7mhfFdi0GsdeC4IuTtGNBMjmRtXafj3wX80o6UXkIGziA/5B1xLcyzunDr/
CstjZNDn164A3G3kXd/41gKZmwtJv7XaIdRDk2r9mgQSFmMMiJ5/0BhvUNoF0+2UKVccVwH7IrZT
tF+5JMb4EvNzmrYl4HTny9pgmrpyGRWzTkYKYLap9v4X/lMddOCxzltAzOLP+K+0W3asOkLJscXd
e2XrN4YIfsQyYnpFpKOn5vwaTITWFXbLPXEuks2uLbgJKWdn8Je+6Z0MhhuJBBk0Z+3yGNYT5XUy
IWXgyb1bXj/+z/9o3LvibNC8isnjt2kiYAH9YD17r+//zXIgRf3GkXXd32dSvF0RF8r1L4sznIEW
Lz2X/UPQ1IiRQDy7+CwXuVhqiSz5BpCQZnVMfHwa0jhgpV7ndlh3bGUgfy+rbtmFZObQUp3FlolI
dcFp7lWC1zYhlZpmCKg3fGJCVozPf49b2HIsdplr2WdCger6TgvVEePX4InSMr6Wh6KqrTZWjtWM
FagBI/xunhbX1tUHDaj2GP2gxK8m78KxRUQeCIX2e8jR/mDyVA/Lsd4cPhZWfsGcMMNMSaVSb4YX
JWPsiMdq6zeAV4usEpvENdMvdGjFb4sZKuk0Hu+NaCOps5tsvBKgFZrES5XvFSfnENw+0m1HZlLt
wbK+M3lYwq3HguG+WMIzWjrqiPFVM4jvvi0WYUjdA6sCgIrQorOPBSBMH6gh+jWE0pQK3/FavD5p
kftV+aSA4knjTz5N9krWWcHw8D/3Lx/c5pmWdeQHklGQIm/fq657R2tArAg4pzjFHB0LHNyYG+5g
A1NQnNGUiC4+Pesu8JwnphQmTwZqT0zQj2o5jx4RkXnXaoIXfOjc9W0n4vr2/MQ7vWLxZU57p41/
ekVumfiuN0YPuGM0qnwwetfcUw6x9xXyRvjoyctX5+RZOVzYjMAZ+FjMM4EoQBLRGsHxzIj/L7na
whrP8UFTZae533Xsn+Jy53oDMDq1A+B9vcQ/j5M3WiEQMhPAw0U4Rfh31NHNdMOCXX3HTPLwMhXF
9drYW8LF2nd5NUzx86GDF2/mlE71s85g+7X4iJznqMHtavWBtgmHxTdfVVdeQdO9ezIqoFeqKhnj
o9wKox9KDAUPxLhGw0B+dldIMi8ccAlxMKAccJ8/Ck/QAlt/oBzqV3dX8yxq4vWgPJ/SwU9Nj6mU
mmkTf90+1/pG+aHQwJYR2Mpo+Qa2/e5f63xVuMUGxqUUY92LvJArMRark5Pl4H5nCUI9Q+HH8L7b
Bbhi3zYAtDPL8+ai+JgHiSmn2ZyLA3YGXIJwGZNL/MhWl7eR5peoGtMf0JYrEwLjZ5UDdtbWpMLk
1dLDKvvS63AlpzlHX91DuaEsHwfZChczET7bX99wxZn1PqPtSFQn5LapYlCBBN7rgEba5PIjG2Vn
YsOBRbK9LjNJiYmIbHYPIGzAyVlb0abGKafPaCwtP5BiKZt6YHjwXxv1DNDblgkRGFwp5XjqbTLE
puQvpKydgQhQkUVTl6rkB9zId199HaVFuoeQe+XBZlRhK6+4hxfN8pI58d37JjnkISA8GCy6ZYhd
jg4XzWzbRvTZcL3nfsljmugQHydQPt2KQ4BFqBfB/DaOIFA+0WNIiMN9Zkilq757iwSsADoCZ7S+
xP9DIeVjW/RfIaYdczISOpeFUrkLUFyV4xL3El72y7rojfBdn9Bf2yLm0oKGT6vgspw9TGH2kamF
4PD3MOolScE/2WZY5IMI1dTP230GypPfDj7uo0n7MKxJMVonMO5OXASW6wZHF4hVBVj26w/pGFwx
IOxsoZBaP9wPVCOr0KtsJYIK1vTQkiFRCs9j4jzQ57Z04f5OFWfeYHQ+IAOQ5Je4Fignb+i2lsgy
ATTI0RNs3iJZGfBgWZBJrAMaCWcgSu8gAEqRijIEXpWuPtrunVv2Jre0U1FvmmM5XVIpM/By9PjP
YD3r3ifVREoTVNAQnpZ0Oa32o3hhalmOj/qHIPIUJ+h8GfUPJ9JM4aYEF+UOgzrcpK2Mu4pzahSQ
+KZlCqWCEMXvy+ITxBLvP4BANkWOISox+x6dco/H464Rs3a7kgZ4ocRygtMYATu3sqHX+RMNm+yC
CH/fgpeqQOjvoskSbgMPtkp7ojIRyVVSwtpIn+tqejHgmjvmfTSmLCaDrSw05qc3fgfqZrMZX7r2
7J5b4si0xS5VztdlAiKK3y2XCwIXy6PriJWXkHw9cErZQTqXkQuS95kF+RXCOP2ArtgE/HDqW1uQ
cYGWvNQKzf2/She9DhenhGcuP+Qt9Rgfav9BYAVuupsISrrUPo2dFZLrIdWk3n3FZFBdNKjfeLef
9uaRXTYdXfpMZXzo9xt80mVekpmHub4QF51XTQ7SeFn84YAiME3thKFK902vCcsl8t7D/Dxh7mba
mtIpJOOn6I+KbFNPINS01MGWcvKWHV02bODnPrVhehEw9P3Wn4LOhwqmEFsMbY1jxLhiS0w7/D5j
xqZ3Sq1bhI73vUUqR+OiSsMTz0zZV5PuMuPNOXV7KXce04UCjYPzZHdODMLwnv9BHNAXzFDzirBp
uRBK2uNTCOYnZUWUPMInxZ2i2RSis37MXXS54J2QpvCz1j+iSBIxoR1VT8ntoO+07TSNtfKnq0gp
SR8cQGXc9c5dwYJPkWskJ+GvLYMJ6koaYNrI99e+Z8cJErGSAARgBOBfAubSVTaSeEVHGpUXe78j
UDxGmEKjSTTiEButMFKE01UasFV2jRBlFIZ2Ob3NB0b//CQ8XGcFGNsv/bAHVqH3qUuG82GzOq4s
6yHQa/vNy/MS28Tl2rmkSoU9tZiNp4JS5SVAGltF6nkHfbetCtDHpahcs+bG5syiygZ/del0+vFk
roB32b+RzyCxPz4l0pxckfhPaqvuujYuQ1fEhGXA7YGZwJEXARD9khlQYSmfkrgqExrjKyeonlCY
mE9YfTQbwEvGqKS9KakTQJCtKJs0+9hRC4gn36MoMYx8pWiK4IZM7vDxg33go6n54aB0R+sb1rLj
6wrlrwnJPQQqF/1Zu8wRG5zJgqBo4yOJwG8deYzgdrQMDcjw7mEaXrHshe2dZIAI/Fw/J7fSV4/J
bI4HQD3VhNpIwuc+Jtf7KwFkl3YVm04XEKSwKlwa0URV3fQssRYVGyzNt/5WehncxC4p0Hl58/Pr
2VhYOkHxVTc0+EVbfz6qwI6xDMJlTmQtAUUfxwn0sMRRq5nt3Gq3Tr4MXNJe6i2RGjwFDDAiUScW
j0ceRTvSdVBvVxROWPUy3LqHRMhAJSmxZxknn4VrVScq08U6VojYCKVzbOnTsINE95f5eT8pER5m
tFipgmIUMQs7EeKkdu/jzEQSdi6RlvL0CyvrfobPhursomRb59ZU2RlzNmBWhcSWERPv71IHqlIX
O3jkiWdPQPbGZ5gSf2ME8+lOJLcvRMB2svqYa2v1/233vuSBZK4Fyw4AjHJWwa9PHwq7ssRysUFn
EFO5MMz6i2gs2HBLwQZvw8lrsJHqyN9+QsfJhm/9aiKE/rhVQP3Vp0FSoZeCWuZ4aMaHTu7Dhrjv
pLY+jbAuZIflLG11XTpiPuttPYn5oF+7dERpfzNgGz282VDDrsJq8KQEQv8Hxif4oOnHkJ8CwLsg
g3hKaA5LM/ptpczIbfKFV9A0lsxVyIfNk1Loq+dHEmg2wj2dLShOWzhaCsoVPu+HjQ/tNft0qY0C
A72LT8hOFd+eotRGWfFru8cn1zHDwCa/4dmWwbOu1X/mVdJ1+HCAk9exSvT4d1PEiTVon5DfqJcs
+UdbLO8xQQT2dRdAwxL8KTOAnLRsdkxCexU/MAzArrzouDkMII0QTQ6j9s6fOvY1VnmJ+NtPnQgK
bMIIBbUq2MoGRqykEQ62AM3yrEz4y3YIwMSe8m/2w2QXhmNvD/UFvQa50u18DN7s5JTFsS5v9sdP
xOauzYTvsMu/D0TVbD1lY0NhTHBxNrY3VoyE30WEo7SKS6WvYfJc5IaF71lbZADL79+hNKWVno/w
OP6hgI47WWFTDadxVJn+rhB7syyLkR80NTfCdampwDlgr4Yu7amOCZP6kfSzA+ATONc7Dolnn1Aj
cOEIhH8hqP8/P/nJQ+AbeYNdti3OdwYfaCO+bZB3/OGuWVDmFCHg4UMaQty5xLfyHC6CZ/NU2g3I
8gwkOWzJFz/ARAI/UFDTx47h8QllzjJ4uqtUUN6071HrkKB79NBMfXB3pi05NuCtDmWmqToZrUWM
qepTBJfCtrnxEelz3d61UJwslxHR594+mCoP6I9dt6u51p6id8d9mkKpDyll9W9rluuDez06ORpU
ItO4d3hrJvozhzhTqn34ZknZnACBw9lMm6cFhsql8HVQFZeT1XLhrBchqCSkKRx0T9e19nOkiCmw
4yzJAECDyzx/W/qo0ZWBJPybkmLlqukodcSND4DUYuzno+8KetNFvDeJJ0b4OzI2foPWc36fN4wm
LzPeDh1nj+PdMp+SEgkcyTw86OsD9I4sSHqmTqB4OHMPX4cs9XF0nC8cs+Rq/FLbmoxa93mmE6+6
86EcZuUOF9/8rrUWrSyg5BmT3vgkr2hDaQfAArMs8dybc09eh/ke58GCooCK4BRox/cmGFjgGXhL
if0ci3IzaGpIyNs9+YeOsLgCnm4wioYKmCKg2chYkmOqVxNoWRawgtl+CH5gPnGZ65EbavEVUfXc
TtSZ5PP+LuapR57zCvnrl31uL7DnHTlEyECUQtdBdwwjvCDmKcbwM4cTbvvqNfLSCidps4/m5BqX
RQqGA1/dPMTU6eo3oGm5C8iznTHCK4j0pFGkhObm1Se1i5XuLbX+TxjXxR8WPkVXx036CRoibwdl
ct70Yt+gW7/haur5N2sNKtQ4ixyyEygElOm3HsGS7cNXIJcwPF+tbgute85M5HMrrIUV91INCU7z
LKQ6vcqYVORSVsn0yJOWkqXCs0AuMFbQpZqbdIofGb6JXrHannkCr8cm9vhFCTqnCzTz8QIf8iOp
56sNqWPMVxuZUb6UYLhVU0C2ekTCzqm2+rXi3MLPA1Dw1z1XmO3Ps/2qgWr9Q6E7R1lOG/lDch02
FnW8kExBirPJKTd810L3/OfmePzmgnHTd9M+VyC7kKVaX1iz2QYsqAq8Qe7dCL3QnDrSXW3lOTqO
VqY2SV/RzdCrN7Eoa2+IpIlITPguFv4p1XamiO/mscPuyolJMywmOh6meqItQqBR4CWDqiiVeSJB
OWvsJ7nvWA5XVtamlQ459OkG4c0wFZO7zHKnmLIf/CNHSIg2GMtrOzHX0EHd9R3AzwJZuWUssK9s
O6qB38F2adASEjlSWVig7fOnXsKXS4NrgLEw3EEOdFbe/ZCMzR/l8mt2mPkygO6+L8BGxr824wCx
hez+vMhG6hjCQLm+4mNKh8Qgwrxnme9IlSG869KY1qwl2ucNUEyA/QeeG4sHqz75puOA2pzNjhtn
EXbFquc807IXo2xhzUJrPdUFZ99lq2+0akdUTkUV9RFuFF1/fToO0yMFtBAuBeKY0ZMReKg5Nf8g
BmhI9hvc0lVu2P0948bh7T5SPRX9Ue4jT3sm31dO4l2kniw0595CRTiQYk7/ileDqzZ2bMiYT4r8
W+RDo/PPSdQViLS4G9gJo2rGnHJnITSu/Pes32K81llT2q3tHODvV4eL+rdDed6fM70ON9QXEatz
xCPy2XUMeaW6NXz8SpU8YQIzjOOTzgr4ct8FVQMo3fNyYFB7jixHYlXmckZIMYynuxr6eBBJtie3
b9DCSyPbv/H0oEnitBeBYRuP5eAmtHsg76ytDrqaBWbfUkiqwvlk4c/Mop0GZJ6Xdf7YoLL3kcoY
vBTJegNNX4r8LgZQuz4UBqhLUjQCCaptjgwP8+MseEaaLDKLL73efxc/etv68STgB1eb9LFdDCGd
4ON5E3Bg8W/GsW567gpu7GMJlDs9wwU2EyrbDNqmpkwTOy7rFfnBa2miBNnwirOKZCUU4CvjKyru
J73F6gCcvqoPOvHCS1dnLXJySMTVN3b6q0kSyl97OEPTOmvT6r1xLYdsNdp49XbmxV/sXy2998c+
KniVl7XkjcKNUa00l5JRGbzrvXedLGG4DDzd8j+rbouXBiMZI78lYIStWbh3JKafBRTxGQKkG6CA
O7i6DPbidk0kcm8sAMGtcq7SXMV+UFVV1FPOYr+wL9/PxcWX4RoFmeLsv8IbxBfXhTklKUGbtpJu
QP+7mpnzmmj2ikrMtWfCqAClW+t3nVipS4WTEBm3oTF9AhHZ4DyQL7DfzpmCg4wpsoOuHhy/VfCm
N812o6mQMG3EQaetYYt87WMo4o9aC5Gy6dXXjQ2PU3V8dPNnSdP/1fMzbVAIS8PhulogjxsHqIFf
rZbnyjxXE0u6XecB8ArTZRw8tN7G1GwSGH2GZTr/FVnMdekeDj8LwwMSalseYNRcNRv2fPNuQ0GR
THIQc8rhY5fq/9bAHh/vcSfcNWGcTBlqeJSpMBH2YGL7+vwSHv83ICQuPfYiTmwZKlTOxC4G27fT
7g5+jLbuBv/NPkPpDCFkgut/JIjh8iB2MJmVYeOr0pVnDaqzVEd8UPkbtFwlnu23KfVZWWiBMYUH
PgGb92PoW5ZBKrWkbpsgpERBEf3wsmun5sKZwnPpyMNXyhXMZYKyfzpvvAl78WFqtIavBI9s2Ba5
/dzarlFG1PcPG9y0QRuSJKSvveB01LUv4U+JLnRbLJ7jsInLy3CfW+J+JBYR6FxODd6zW9CbqDQz
H1/drbXe21doUv8zraPyEXKd/+4GN+JrUynfZn6vn5/ti8CkAdFUwDMuVQErblzYdCjddSIiNVyZ
6OvN5B1zoe67H0sjZdOne2TI41tBHa3G9oTbA3h6LshrxooqMJlJt+UEIXy4HhG8vHa59AwcPf9X
T+c1uwIHeRQahIbiBa0cpi1WpQUlCJ+iHABIem7sDuvcKhHJguLrdGBpGRJzTCW0SiL+FebkuEw4
MGEPX+TAnZdCQofYFpQUDb4vWZPUd6JQrXEMOGMdeARxLk3XKh4w2yUJfEZTwcxPSQdvPDMarjvr
ov5Gg1Z3eZS1D6o9vIq0KNzi3rvU/xDL3bxX/EJagpj2PnFjyVYoR2D2U88cK0q1GwaqUtCuOQaL
IeJFbCBpDTEwDpcBjug856TGtuT/XNsBGwzCjkI10O3DQwu5ecVx3TxrUKecVMLJqfZhmRrpXTE6
kkYHgTeeCGzdEQ3z8iDv3RBzeFZDT6TkJEbfdHOm1uWVBj0v2KtAd5hNceqY6tQB4X4LBe1iXGs8
oUt59R0UcQULVS+4XOlekXZ8ynfiOfCNknKKrSZM0XBJzGfaES0z3j7zOg3/Oct8fMqqa7tYnCgf
lk7HGVjl/Hb8yJy+1gC35icb316jwsvWnf3H47DkuOdyiUjxBJeoviBR+uveU/E0yx7lVH4jQkKH
81PPWn1ck4p/rnbo/W6+pi+As5wqo9Q4kAmNQry1AD62XrKdSunh/1WYECfg9mQV35+7ARy1lPB9
ScqsKLelXQZSCnb0x1+zaej8McxIcncP2UOrS5zzPaIigk7bYU9tkuER1zJPJKb5nJjOZ9l4JCJy
0O44op3EiBz7JdlkkhN3uR8xmmzxvs8CdxyaSUaG1ryjnu8jMogZ/dMtGYYnTBRSKT6eGUrfdcLE
LLG2PpvzW9FLrpFk2wKwQzVohjcdXSAZf5h5eBjVFvJzxfvI47VtiNa/PnB+kQxUbHPyz4y6KgpD
CUbCWvsXXblo1o1OiGac3IJ6JvYmn2nCikSxBV4gm/6KdRCQ66QpquOvPmdO7PqgQFl43Om3+dHt
fC8LCGKjzf4A6ruLPKGREwhaF+fu1Vvs5xiwAhpMF15cgLZCGViFkmhfOYRvgeLFcBtGSsgtzqVL
ML/8czeU7Xwn324oX7CqRFKJybNfOy5KtQDBh4i9Ex1FIEOvj10pK8oEfcZYY3UIaPYWjxsWznbi
9d9DuQ1FFTKGmc4MSwDkrKA4jlLDuRlZC2lXHPIyiMWjZRW63/S6h7qYMI94bEgmCn+DXDxfMsSY
iQLwD2U4t1Wyt/xbQqBA7r6p8PXZGIEr9OCfEEh0mvaFx7DplQ+5F9GHk0NVDsR6FjRoM9Cmnj8T
quG88+2aSw3GQIW2dGo7AUS7d1FzdwEWCnPBl9Ni3Si0aYvszMVEm2sRMILiz4UyFbfPv1GtG7s1
5CRb93Fx3q7rOEhYaqaeUtFl+lv/71oxQSw2w287ceS7LE8SWbePbXDis/BLNKEAJZIJiLsR8DbO
7Fkch23+0nMxkHSqYMzrGYlmLuQkiNR+hm66CHp4NR3BQT52P4Wy2j397D439cdz49Sh3PgG0C/u
+tL89jFTfZ9w6rdkWeiYLJzBEgiPF+g34Mt/actave9PBIbG+c+wO5s+V0zDxpoIF8drjN/k3L93
aDhzsrwVPgzqHg8H15ckbkAK9cniC5fNN+fnVr7dWfN4paKII8G4whppcf+bNrf5I/opD80h3ebT
mDrhiZjfR15W704q9bf4McxLy7Yavjd5mY7H7TEtaa2U9UEReTgkedFuwroFTqmPrE1+/7EvA17C
X5PMka5iGzrh0MwbAkTLWDBnyYfuLSVVv9k4pqs+tF7izsV/7xcZfY2uBSJKmxReKEUxWISOuSIa
FUIrbdBD4yWs3M8Ex2fylhNHlC6GN5x+MRVZX73VfMgdGXeXj1C2kZexrC5359c5GUg4Yxyv21ay
HNoqUMyugf9Bt/kz0N5PydIU9wdCDgKHQ14aIYyXrdyO2sd7RV7J6Ic6S+2DaM3zWL37sEIYxcwA
n/LVs52jTB5mJIb4zZGLX+7N6Chocep+8JH1fZBnkl0KIEoP1Uwkot66cqNMvq/3kWmzhIBkoa74
gkjL/aceS0Szp/jvUpcyIDa0I92C0g2ldXvdpEb2z6awTNJRSDtWJjpHIY0v/oSE5maojpBRP6Rz
KRNkZQMtBOXQ3RokqUS4AV1vfOSjwkWcV4rugdjWxI/bTjmMzpjcq4G4ttt6ALC1V+fOqQowPG5G
iW6AvupSDqhpRg7LIadmGANliTa9KJhfRC2IZpCNlwrvLcTsKwwMVUPynYybPBBlLLP1d/gtv12+
Yo5PRevBMBgppXW6LiXAlGycjwHo+2NKA8lmHFftsTiAkJJnhiYrj6XQEtk/S036hUrw5VfuqzvB
D9CNawrO/S8yHoEl0dM4Ej7Z7gkNCZ60fvJNy4YD1SNC+2qWIDYpBuDrvuKvWACb7OOz60WACUk6
UW3AompAmIeGyfUxrQ5eqV7WpxnZNQv4HQ+PhP9zR7h3qFvUDHoP3PpaBC21Wd9tNH5B8Gek/6t/
vVFWbVTExtTuCv/ZU1VjEPG5qAe72/BEt2HKe4Ew6sU9Nw7I9clWh+h2xssTuQueFzQW3cxeS+xN
K8NwBtO6L4DJp+1Y+Vs9ofVXo+bh3wyxTHmdFNhuyF6krh8qUSx89PGb36txVH6dUpf+sE3LCD/g
zZzFB1x65mLoHX60q7YEFcYv88K28wyq+UB6B7q9JLy47w8Jiv6+B7VdphFEMy5Z6lRJ2JjTR2rc
qRJf2HRA8GF2On00FoZD2hhrNwOYMvEERH9TGljouUejUXEeYT1KDUQwA3Sc+37BcG4N0q8lGVM2
81h1wmzbMNMB7aYwwQ4GPlLjGe+kJV7Vi0jfJIKQ57vQBOAD+4t6GBOZ3JEf+A7Yyd1w2/hrrgKX
Wl1pZg+8DBHZT8hrOFSGB10x+edsDPlMOXq9RPl/eBOwZu2Io1y641YJwO9Bw9AmTjmMA1uKAz9E
x/qD09sLNba9A9DbCB5b2u/5Vu8kWAEW803x6znfqfEqu/A6RY9AVV3hJhNtyCmZNsJk0p3SWUFh
AzkZOiadTRJFbx5bDS63zRoVB5XrKJA+xaW/+FQPEL/NshaxIKlBndYN0oIBP9zxDMDl+XBzJ8sC
2dvw3JYdcmz6epREVWjO/+cS5JRwqADMOKueQGoOl5nb5SXNv9JCCt3znFZfRIYbxRJXMJmSEQQf
EFbkd0+Jga7dyyQrMkseDEmx3lXwpXHwlcJduS3iO2Y+J/+xug1VCqJX8U6TF06qdM7p1zs2v1vi
fxln04X6QNa6/2f6dvCL99sftrwHQ7R+WReZ9vuvz3oYxKzdV002YopoJUkxhXhAumwl62V89cAs
6HOTTTM2ryeaH5/lQshLQNTL7ajPQbWYRhfRDBSn9Q6Fi4e0UGBNo7iNgkpkNgXsAG78Vx42aClr
ngxk+5SgD6kwY+TG5SOB6zMWR5M5cMtBhbRNhL+b6A5iPZuA/Tv1xwyp8ZyapXNKCrAK0YK9t6Jc
rzt5qrIks06AiLbl1tOmJrG53vRqV95HBJNDNW05IjUZz5HWusKtBLAS99+tNsujqihOHf0rOr4D
m8aWBI9DtGz/HVloO0K8hskH+7FFYIx3O9J7R2zpyg23WA5GLW6H1hMYgNiTp6IACR36QU06C3On
8bzpqtwrhFRQtOGSznJGggfQaEZodzq7TWj7cS2pODDXWbNbEyG7MEX3pxYVgNLmdvYxRlKX/3uQ
kWG/cTF0pJAxzt0qce4H5T0zQKpP61hVG3D/P+jQTS5R/I6ylwowYzRClxWtC+goGcDw8DFz1JQw
mzkYoWBQoxdZ/UXW4XtfdCBG/Aor9iUYwl8ztSTG8zFR+gLWtauQrcRoGaK0J+bDhsQwlq4z53AI
1Bc6OqJTJXbjPyo46GNM8Dee7UBEpeuEeAcGlLlDDOOHZnD8KexLVqRhvrHz7xNY/8yUVThfxw32
gN74wJ+dRPr6gR5xaWZm5LVfxBWr72VH9mdQJcgYtIgPjKPNqAe06G3nVmvxz45p9ou+F/u5Y2hJ
qw8nT1eEuVjvMnmpsYCAY8vWlIIgwDy+/DOrXFaBmtE6yY4Xgd/PjkWkVXFqWTk/KjQ27CkPX/d9
tD3SojXTxW3TMp5XWqjcTonat1RqjFJPFxAWORLc5M0hIuqSW4gZAk48QsZ7qSKXceJfIUJ2+i/I
2jpQnnyDefZrg0vjejdOaXM795lQYf83DxH6uW1/HQTt5xYYm1XvJWt4HBNKOcIpe2ECxjXDXkrt
3d1uZtsxuIdwADEt/ZjKdnEZkDQ5hng9oy4JZRtXxqr8iXNt9w3m0a3r9QatDH/UmSm2LWEiGjFF
Ftt94IUUEDSu3OesctHshUHYeZJZW/XYCzCpFJvzQ6q1IiGsXrgBcvOA8vm04TjDkx/tmqGctWhb
xzmGYaYGfYtQJEzXgVQ5YZtMazgtqBnvILIO1VcWkpRESwZVGx8NhTViHDDOgooqnQ7LzOl5oSq1
7ur+ro1xNaZcgk4xOEJwEPow42ANM/8jwO6Bb4MBiaJ+P1weg2u2yGx93ACifumCDFKGVn+FUs5S
H0R3I7DN7yXux4qJVkb7iEx7sMIEWLXCyX/3pSSjJhvLBU9UCmAGI+6bGSjsuDO9akcvPo6uUajm
7m2PLBkt21uKDMT6kPqwDAE9vxQ3bU8NsEOHmnUcZB9q7zEZjdlTrGeTt/xkrGT/Df20XhTB4XnC
hbdRho6K5pvmjCroKzAfqai5zqO1woBp+pdpnol0PWArARE64IET7D6lYkjhBBYpZvdpPS+Ai4TW
YWouxTtfP73XTBlMvcSHqB0MpeKK4Iw7SIvX1RBym0oMaddJjYRuAMLEUteknz2J4Pq6t688HxQK
bq82Gumlg4t54yevfUzd3J0TpZLlLNVgSMUB6QP0tWV9UMsSelweVnX8KcuVNKD9u9pIl3EOMLJO
tVV4n5Or362WTyA2ZIKSMwVajp9qJdDq31zc9M7Ob3/C28pf/0ev7KwnGrPjjQrxT5LGx2oWXGE7
fEbXyep9FMIU3z2yadS8uxQYbAKbcxzyKrhESxux6SNRst1LQUGfUSMLAN7a9W8qYdBtjFebzMUk
ywf+1DR+eiC1SJzBlVd1vb2MXRo2cpoz+jp6T8w6HQCZUEMYAaga6rgW0VhbjIc+XJXw7ZmCHNdo
nyj8sz0YGCM2AGWKqX3yiqowdLltDj5fKWWe457EJYXpuaHrkcvEvKzFggq09u+t7K8LGgHy59/x
RPZHbeKvg3CEznRzu7JASl3WquZhvpRuk/cvjdcX+/6A6fUd9SI8o9Rsx0cCBJ1cezmOeH1qhe6O
xFsvXlfggzbOtz12wkNK5VwwFvvCa9HMcJbTuIqstq6gs1rKbSIu/dkTsWowNet1X26Mod/DdfhE
HUIql8vE8RIUCwSX1VtLxIzzF9pcCTXc53eQL4tJKB8vY6+QdGhcP31A77mgicGSer1bekA1ZS/d
a16MGPr2rnjnu4a55OEYwSETjk/eX6X0gX0lioMfXLQ3Q2ogAbRU9SYFTg2j468n63gRlZiujicm
IMlovWElkrEHREkuuv31D2q/ZJCF97gXQrlPYk8KweqBOGWKzBIeU8HOIpHD3y1x4bQNwalS6CmX
WLWs2J4U8YXzELmnBSQlccXXEZ0KbRcOPDwduivcdulIGlq2cmGeEs7wQORkLJ7v6ns/0kZpDb4E
JfpQMIljfcb8UpZwMA0D+ZtrYtBkxCeL9gQzuL1dVwIz0sUUdSXoylveTXKrzTfXOJkEclWFNeDY
Ri3fx8nH8xVK01iDjuZu++kDawJn9Qxr7m3UyaeLneWISxanZi/YfPdgC5SzNhEBxox/pv43sI6X
g42H/Mi3DhEkF2PwTJa5PBhTkF9JjLdJqJUhN255D9cjBOMm9bneieh9QUqCVHcA3ZOvYkPRf6nD
yRklC0WHaWQBn65Xt4oLaUdfsMCMxUDODKbOBn5yuuhmpkAmvtzzyLt9+95X+JFbev44s6bp/CUX
U3KKhERoocsn4z0B/g7k0plHDgqW2W1OkbhcN7t476z4vqgpwjjbx4hMFxzpVCIGyCmTa3KQaOvw
FEiv9ye0vOQtBmvGm6viWnQx3/I/9yzN1zEfgGDf0rUDwX2OaEq9Cgl36rdzdVBQKQRor/27GsF5
78dHXoX4CszYXehyvuBYn/oU6ToThR7h1qFwYCff7EDtd9sf3Knh6elER0XdC/qEhy/QWX8Uji9S
ea0FvNf4fv4eQKSG3Fp1LnCe/JLNIWAQEXeiqC4x2JEKkW3NUAtOlmFISmtlNSO90keVJ9MTzT1k
umqhYvcztct+rls6F7jSUpzb+9e5hlTPz4Tegec9VvLtH2x62Jkp38aNLzj73M1tuG1QTzzBCIpX
yyNVk86coQbYOfVxP1ELzeoLfcwCqXXkMuhGnVMOxHEDDlIxkwT8GcFvUGL1gljpblXNitgbjdi9
rCfSVhhxa8myKkrfaaQXwCRVNO+X4MXewGCXkI+5s904FF6Y0/UqvNSEveGP1NuNLZJnHeWit28Z
GX2vnV2tTKwigZS/TdjFzuVA8U+0zRNVa7AT1eBzJYTaGJouRKJgq1+7mOcLFuoyMMKnfcAk6Scf
kuprtm98gZCNhG7Xc7Xqx5UUAlQdjm9ozcp5nY33ZYnt0ksyNPFHqxCI6ZFg0mVIaFwbqRPTWCpT
cGP6J/BJ3xteqQAXNcBk+8uwgIkk81WmxOzLKINVa4dwLysVPtTNishWQ4MeOsd+fJcOdOozH1l3
PxhurvTd+NDFarO/Dj27QZXKZyyXWXrIV0rALtrkUTcCcY9oefoJQdscdhs6Y7t45fY/IUPOTvHk
PVV3ZLQ/rd3SBUNav56ymmaaCsVrvcOJbJi3/Wl9rGxi2wn8YdGV7aRHpCsIx4bKn8EzI4R2vBLA
Da8zDzcNIUiqlUbqBxqUmxR1qxOomTbCpcQ4euvdnaFyssa1vqRaR8lk+lc4OdhXK70MKfmqwow1
1oLziNcP93GMKdHdjdVpaGygqDHKIAOhDTWHqfQlDh/fWD/9/eugAcp80arSj7E+GEn9A6RXfumU
9lNKAXkm6fv9t1MbacFWT0gSdX+d8PfMZhJ+2Azh104KCQftIALYx7mZFguah60GqXB/BcfnY3US
DA6ZxzcFHEYDMrMxWVwpvGQHu9nnsqKNC1WQtjyKJRh3zwrmZiaxOwCCIpJ6SBfYkTAtwqlA2uAy
YGITPLKBbrqQyQjKsDtpQTsfSeVv7p6qmIjDjmXxtjhJvXXG5MpPYBLA0gnwhzJs/oLXf0GcBOI0
z67dXCiycDQTx4p3ZHRL75E7+rjiDPj67LeZU8M2EHbLjgmL83EcuQDjfoouXJMFgJOztzFQuEOO
/OxEaOeSmDPvaM7MKhHEpaCcsVm9j28MpHFyrQGwVL5IVEMHHqMys5vuh/4n5kFdIy+PNCYU0nh4
wHyTX35SZCKX51TDlhobziQrwXBzJAxTGn/sINKg7kfeNujhoDIo+T2hyC7RfOJsqxeOnc8Wj7WK
xkOOvq4IsOnD0jKq7Ff8rWASEXb1gSylUlAmq5Ntt7Hvpl0oByxfREVmc+RnzQnefc8ev3aFnYuI
De8xXFK8mmlWYq79zQeaHa/4RfHywNNXmDN4H1m9T0bkS8lr0RZvetsEX/XRpknGl1MM3e372rWV
Ca0JWmYXpyZOIbqvQo/8kXLaWhDnGGAGhJFUwq/8xXZqBwVJ2sExnfCHw0IvmCecW4GbmsyovJpg
zOO1Sy2Afvn/c4PHbNGFzystCIQ81wyD+RQlV+loQIqVvrxG0C+jYB2vb/Gsc5nJtarDKhqDAHOi
tOloQJzMYVgT9GQkttazHiYWgCPl/gGcRE2KUofkGdnrOxJbfbT6+nhTZOkwrQSiFRoWqCPeQ7iw
SJ9zoaHkppWu+cLuDruA8PDw3/ZAGqrcDv5drfWYfwY+S2hnj43KNaO4ETocrAY0XO63Sb2admKB
XrDmBWvArb/9QFx+31slC/u7uKUoC+bAWGDVHvGM03B9/3YhSmPss27EVrZobcbW/nBcV59j6tQh
U7TnBxTwswVdjJ0sOlrVdtwOjv/vbU0YXJx2vU7eLC3ILM/f5FaDpT6dH/MVh3VvdycErdG9V62g
HXlcxPQroMap4YfkmnQImKlpAeMQq+G1AOB+BINvycPki8dC8hnNhFZibLt6eHe2eb6R3wSZLUkM
goGHCD2l6opN4tajT/LYhJX7p8rxSaaq/8q87cuyafYt13pLqUgZ1R15WCOXpycLfNmHd7n0Nw+D
B3JDF2pAWHZCZZ3siVEEOZt0cO3mmF2BqXFl2rrGjzw4FnNFYvduYGt24YgcF9DndW69ymsPpDQz
lT+JXNyqBg3trJiN9h93XkmvN3YMuicQmProzvF7mg78hpiauTT64PpwjCDelsGhuye0ACDbCIV4
n86hgLKGmZTpT5JaG2Jc0xVvnRly4gnZg9jlittXtrDk2e4N6WdVYKcUkZb+z0sA6ZsDKTLj5OFK
yYrBlHylLutQeYPr0bpw5iaybKG1ycqIO8cW94+tEuAVUED5izNAGl06q7OS+SlBy2BNqcKb3jT3
19cTPih0EdtouSaZx3wSS/XqgobqXn6xt9A1QjpII+IIbz3Hp13vXCANjAXu2DKRFwjR2WOh4BFZ
rT0OD/hqHtfEKKQ+wtG44YfjXyqM/rI8jFsUCynucRZAwxT4sh/facoa4xv5bMBxotVnhz1K/eJB
saWP8s9vazE9m2asiDMCCvlK02fwV/5OTKN++bXEV/fDtJRkN65StX0ZWi3c6fs0vYD+AacFAW5b
ulYK3OKhwHBa76yTTncpMtRDGbmQB38zLyredetXjkh8TJgksea8gqeby2K+8pJOK/7W5iEcxqSf
5LOrpRxo0a8LrxOKPZXulx7pK1MOeMIXS/p+8pbckQkcigbW79d/Wk3Q/QRX2ERSqegoHFhQDVDj
o0XwKWst6GiDcVMfEhCEmiRGy/VGXwoojF+dFqeRqtyVvseNRqD3W+fp1X7wjQuFKrLdTsrIaFVx
/8E16xawXKsu+4jimMJNn7pkQzbdXGN+rI3bAVvvSfOd1v3k/Pu2yAwvj2T0JOBIrueLHnwjdXJx
xvy50qcX7JYiPYZcQYzyRuuhab1oWanvLlxubhs+KhQwKqwGe8Hd4avG/bGLkkh/Lvvi4dFzqaFV
luxxnd207krWXiBnoIMoya9KV4Qkdu/yRjvtKe75NWA7ktVdoIAJS05OEU+z9lARV2ccn101P7g2
FPMmqdA7K0rdpw9MupTrsLngZAaw9BqUTXCKf7GpdzAAz5Mvt5tq+BEHk8x/DZhiItjUYyx6q1V6
/M9c37+4ho1QNMxho0Czj4W2Qwr39lrJOZScCmP0i+UTa0gkiFb1uIIoqlLiv7Vz/dhTWduOMnwK
D28YB058bdUzAzx/B9tPvZrUJw37ouKW1FcP3gDM9IqpU6WWuTJuXnVU2iAd+Radl5QdoXyiUhzg
q9c+baeX82DpwmxPV8MURtsxc1eX4nSeZjIuDZ/wNemhSEwqzR4ZQE/OJRfqZjM1zOw824lUdt3O
Pp5E5YUSzSQlsh4vFz/ZP0UFGKJiSOZRhNFPb9JXPaPn8FVdszR5A+VOloW43UWLG7/zWzG3FUZ6
N0SW2mh04/xiQhjkKZK36KlIFVl8SJEcWSAg/JSFmo1qAYHwgBDwJHeFQp+LxPxBTseaat6AzXZT
8uvUnI7x/LvhVBcIPubcPOZN0xbz+waFRvt0yhP8tueZGwUFiACsP8ciVd7loSqpkXHzZ/q9QW8e
pWzQuvrcneEWBZLQrB3SWp9xYPdsUsFC6BHgWeaqFDJ56WeA7LBLm5TZU9VqPWlWtHrQeXdzaHJj
cJPVg+ygT8t/1C6mppiI3JLqGAirCvgjWa2T/fhPRiPURSH5iP69hDOtqwqF3BB/MwN3CoGNrlxb
VDIfBw9/NvICF7lBQsGk0kG3fEAxRkHKmfsA5sSV23TiILGuAltKcDVZuFqyW//0jtTYVx4VZiLT
qDCDbnH9PcGL80fCmwg9gMS7gX+yMYWmt+3jFsfYHwSs09NfRgMjMXHapAgyq8Pqod2/bJJXtWHx
zohrcdli/LzyAdDC/ylSryorkODCoOFXRXCE2eEvSVpLTEbwKdkbDA6ZaCCrjgtswCZGZUhkUT0O
X+i+S/XtSA7TeiZLPtsnHUXWpAm7GaEBwL3XNek/Z9JNY5vl+N8xeMgUb1ULW85VpfIbPiUQ6KoV
imIZAIhGqNb08eWT688Dy8+hvNXu/uY3m+V4IYDD+mzGrY9gZgFOibkruDU0JAAjLI2/VSdGm3Qx
k6GSxKzvYOIhfcwks7M77rjB5bqU+rJ8j+DCEZG7HpcrO8psri0XfTnkJCW22rQKMjhgU1jaLxXp
VDwHf481+UpTpXsATRVUb/RDZWkpfE9cTXgIPWTpRGT/47ifxSuivhZx5atPUXDF0vxJ+uHMMJdj
3Rv0DOKOresxaMDg3nEq87rBX92r81WXTUJ86l32R48Yz+CHfCrT97/8Q5VaL3cnHQ2B7muh0w8w
DDS+4vWqTJIFgRiyTIV2fbuuQLpbJq4A2qDl1xWIy8OoqEDb/XXWIxWCa5GguSRkm3o2IM95pYWa
chofy3EyZ+giLY6SSr8yDGaJtwJNfmXt/emYSiUD9H9Yp16Jvaw4O+WoQrzDZo+bM69Cx/W6FlHq
H4vJUWyYSMgXT9986wz1lj79cpKknoiOR3k5grZ/FSOfv0WncZSEmNT8uazzKtwQc2dqI79vhhyA
CjW3kmiq6A2fyKkqNbnjkMuMSY6kVtpyv66pw5Su/k54lKbZPRR3GQ8m42AVC8IMDj+fQmFHNMQG
MoY/pi0rghBJ2fvFsoV62vuSaKKZVbhHobVs2FMLwRjrndR9XWdLXvMeFp1Lk7i0mVlV/1UNVEdA
fd5QqtkU1W+af8fLtTYkU5PwnOwM3yPJ1o3y/sio3cxnUteORct16aqoT/oQWf9IHRJO9vuo4XVp
QFuvjHvyqWvnawgvhI6L+1eNtLM7QtfDQ3fb9lOdwB6lyllRhRAcMC8/dTGt1Wj84OZJTfbo4q9G
07Oy4lqJdAq+PKqo2g/0hN0Jvt/8zz8H2a115Pto+F3YW8l+lMh+hU2KT+EsEo3ZerE4ojaKlxxn
l/bSlEC8Rxn76lcZML0qT6HLgaIwgPt19sjKt3o55SbEHjZqZZuHI9bu2yi/iWo4hkkxMmkhMe/z
Q/2hjubQRGSuaudRNeTgSYqTmgaHc6jQV+WczqdSlanG2BZ6CqGlR5ZGI4CAjrYRHtU32b1C2NAI
iYHkUS9TZoneyIEhRg/R9vwva0zeWqlA4nbLF0dJHWfFKtmIvHvh4cUOnXnLM8IIoq1cz9bcY/JF
a+aS8GtOq7tEjwjFYAjWzOu7o7LtcAVOxXLRrPwlSH4fSxDlx4NoZWyyFVVE4Re1xxVslE3ihUQo
jz01nLZXqwkU7UZeuv5Rm7zdKMRJp1LHL055ROu0bBWt0spDllyfXleWy2eVFJm8kQ9K+yX6nVG9
jU3EXvITXwtZuD6oYj65SyEWiejfbAheZr9OI/33xjXdQ5okf7urkskYrayRlNjfXgT2faWtq44Q
N/ckJDseUvl+nhUlTAgLvGCoUkqIF/7lwf17gLtQ6ln5JWAQZlvbSb2b5vQ1BGh3eY63f3OfrHzK
/lwfLMDX/p5W5LaAzkL3ZhNO5n7B3D1+kWRZ0lyO03pYdtHlXiQTLTDxnyJ2KqrA2mc6eZgVQHDW
rGx10O+Fds7fPbQbR3Tl7eDXfH9F8w79fO11nRfR5qCwJoZSyFqrsxCnrlrL8aa9AN6/9wVsVHl/
1asH5WAZLy021AjJw9mVteabnHg86zRGY7cPoS7xOoRSptqQLIzRi4IO/UmK+DaJwloI0+QIyWE4
gDXmwOD8YcCyMEinlTQ3djs0sHMc+b3S1cFviZAgCl50NmmxbCUpD/XSTEDad88NIdjTjlrBZyjy
ST0wJJOGS9Ra1mBcYUwVQmrJfGFBkn/KAl3PwZp8PmTiDvs3o9wEYiQS7VfniAbxlVvRLi+o72Nh
n70jIkisdjchKUz8D9O2xfwMLO3Qzkb7G+LRIJ4CQ2rzveaTe6rZpmA+SiJex6fR3MfjiYgPpP29
Fzs/r8vE7d/pkYAl53AEMoh3U50dGb2FlTrUc1hC9rEtFAqBJlJQnW1IpFubcFYOJ1Q+m7fmMCco
rc1rdUnq1OyN6OvRIWT2gCHcSVwtncCWs+S67mdSsCknhq35uHYmS3Y3SYDps9RvW6f+8QmLo5Fw
O4I/wwJxifhV1xkk04ENPQCb8QLUpB97HkWvnGexltrrejxGC0dCxBh8q4M29BMNLql3YyfAI8CW
3+833m0IiosjEOMhhvhHGH7Dt3dRiLWePnc6pSsxm89Pz7j3kmrwjmLioSwpcMcRPFiOULcQ6Hol
408PD/7iuaRFZioMyk2OSyb0EDns3FOl2nLtYqLLuPr06KJja6A0UUQVavPLJFnbK6sz5diDzUG4
Q7OzpEp7P1+NuDwuOlt9lBa3RuAx+4C4Dsn/MD2ZH8q+jUWE1FWTfyB4r5ZX6YwrxZ2ov62GnRv6
7dMA21ZbLlIOf9vhT/N2QF1zfvoVt83UE+MkD6LOudo6Ly7HwFWBHAP2m5RuiTstQg3b74qR6a4C
gztJgqpuAUB6u2jbkje5jh0Z8Q8jt5I5EdIJ7wytPgCKHMYuoub391g8/RMAMP0qrEdz+PAFxVlh
XHodZZr4fFuO9+Hl6XXKaazSr5Du3J4apGrenNnS7wjh15wkJecSQFUoLlzYiGymzZf727Vw4bvO
ab7cfYULpndNdbiJ1DtlbRSMI5FY+a98RM5DtXJQ2UfBjZ0/rlntGAch5oQ4WHPEBXsseyYVA56R
6suByRpXqn6/YYqXSg9Gtgysnj3rlRmyaBEKmspOucbbTqIXW245HsXZUMf+UKKvoqjDipQJbimK
aSE2pzFVT/y5nEf3HmiNa6ipfB/x9WxA5WEUBu2YacrOxshdcXQLZdbEoxXCpvhlAOmTOSDxb1+L
91EkBcib3jRljaUKi94iMi+cZRz2IcSMPTQCJ9vJ9zUj27cehSoxNlhkBqbDeCeRockcIJoyNRKg
Sm8+5MjpWV6ZUWi6Kzm+sRRjKwhjBhkr8Tch88FjAtzU6gRFxBPkhhvzoUJdH1+TMl8AuA1h5/Ze
6KtTQRuwWmbCL1QZOKFQMOBt59nuCBqwCXkcTmPhqT7i2qx1i4+g+Hb9YuaPHZtvJv3sqw5ZDDqq
dGRzZAbL/EwNsoSwkS4WxxDoXQ33fu8YE4u9Z+sknZsPyiGz97Y+Pb6q/MMDCb32cMBZdqG/0bGQ
3ZoHYjnsu2nTcIrUAzwIUJ5pyWp2CVQknzFeJjfr/Vx0nGghsE3NPkaDwzeOluVspXub1uGpI8LM
EpzA4aEwlxIecS/pY1tROfNdv5lnvlJRZB8v0veVsfjekiiA4yu9e0QtZv1s5AKtdeLNjegkoS5c
S2zpXdWKN/WiSMUv5ZuQ7wv6T+twXEcEfbSSsyJ6v4t2PflrS4WXg2yv+f46kICKuZQmd2/0scfu
IBe8093SifahC8H7wmR5Br1Ba2Yb4X4G1WX4AGZR6b+NTJ+M5168UqR3PkywMA5iAbY794VsDz1q
DY24wDaHTil8oJnSeOJdpGyMnrK5tlbIu8VngOPb3QaknQOg5Xs5Et7fm6gT7KpYTo2FGb8lcXZc
p0s2MAg07s87S7rK6t6D2coS71dKbVZZeWfloBzdsCw3Hn42m1goE3bmOuPDg8xYofm0zEDdVhqK
JdoT5y185ADQm9wY0k8Mj/Sv7eqXTNsE302ILNncV02+Bg4+J+VnuD9SCUBxyTtbGt76b6vFT9Ok
YHOcBrLw8AqZzNwt5MGihehD5H/HQfS/+HcjmJdt5/hN/2MXiitqV5UTCwFD/1Aigv27tT4FpuFK
BOErwhsigAzrCeTvnekiRzzAo3Y3uoQOqE6Zf9brgKoUtMk531Aay+4Zce7MaoEjstAoOsEg/Gwh
bcCOW4BGLhZrQngI9kzBW5g0DicD/GPDFSTBSxZ390fkDzbcXYpR2QjsrNvW3JpTJkuYmkbOvDjy
EDOOrK0GLCnZ297lDS8sgp/8rqdHI2DbPHpVJQbtnB0/2++GXOuo4L4PtB+F2uxCe/NDXJTNDahz
FomoxOoW5RW2cpFTfxLu43hMNnfZosh31TrfdG4F/KzvWss+fvbTqstrendmcOAexLopzVfsxf9x
56PfyYW/I3ODQHzN6/QzZb2nOgLHSzxcgo4Se+XEvGVBDy0Hjt+EpqOhFV9Arytmv6mk1i5GkvZ8
YdL5wfM4ayAaKTkzgsblexRbijUtL9sCWOuCssYE0U/u53bwE5067/Z3pj6yp2SQWWPmqRFB8tzI
0bHROfhdpC4OuQfiuSpQ37gUSYbDF9H/mJafjM7efIagneUDJk4LnCT6rcsJH9cVXYWjD+dVEjTa
5GJqsmrzo9RStwryzoMg3rFI07ECWjvP90g6eC1dkl7SHEb5ZUyak04MbxFeafaoYZBmU0QaUtAT
kzQmKbMfVE6fXp1tvSpuWrgaLicvJ3C575nVZWgMf/Og9EMOW2burBufoXojhUuXpC7Xu2G8FkSG
VAwrkDqM6/qyP6+jQyZ2GwT6Itg8tj8w1b/eLa8Ty6VJ5GfZ57JhJ//cmn8N5yotmg54sXwN45hl
QXovLnGlynOSjV5IcJJYhTUA4QYNUSYNURqLBfhtGP2QBsBkM0ILlgejwsilYyWz/YFGRqeC6wVQ
2LXvM1EMmGaiRVnTcPPxhMasAf+2tvA5P1u/6mrf+O19wNNUkpwRuEEew+CHJfwOAZ9vDX1lljyX
dID9JBHptp0KAMO+HzHaBDGu5Nxvrch1N+9rmZuTWjDPptYfGdluy8hpxGQBMtbV04jPdT2Gvc0Q
iQMpb+IGAoXvjUCD4zsQi8RgolTWyCxnMVqW2r0GNiU8LH7hEnuBM3jqC18BeE0DI7OTE9dgcuMV
7B5FF0TvIIQqHMepxk3ySimD0xR6YCTMfbAGnNMlByYuIXCOPNcX9csRFxrfbcxO9fLcLjAryiJi
cNAGKweIFV+IYMdK2FM9AI03OBlICNhd6Y9GcrDP5X2yBq3u2smSFXcAyiLDPZCpZVNEJbkJrZs9
Gmh0C5kRmpeYhT71WCWqfHo66mLYkvTIkF5URG9MCr/6GNG1DN9Hmd6TteFWHapSKKQeVH1ERVCj
JrQgv6FQLFJPysnp3hWy44Mav5Y4PFA7HU/XVB2Xky0wFt/o84A1afS3FTyToA2BS+p9Wl7Fpez8
6snOw2WQi7plTNw60WcVscwQa04uSBayFnms6WVfxD2/aBaAyNlZx/c7IHdQkW/lTrX0FW9Yu025
zAMeDXhcODMi2lTf2OMvCl4bBNRhm7gnXFiufusnFzhtVygDlf0FK2mWUcWb8+sWMRAtDrSn6Gii
ri//dmzGKWhksuB+e2FebF6reT73WW4mQIa3JgENqlIr7+xKGLEDqeSOkWRH+M38OW//QJqSi0Wd
gXRYY+ilUS3eHjnFBVycTg5lwG2obRQ2ItUuDKiSHuBlFcDmvvArmLRSoYukUApsMNTm/jpplNE0
OJcqGKocaVdoFyFWK4kOQNu9y+5qEnV/wEgaUWuQCSqDgxtadL+vpJvBpDETbSi45KP29Wv/BPui
D4NpnqRPWtdbT+sdG8oqx4FLuNcP5CDy+/6QXws9D85hNqgn9GECb2k8x+V9pjO97GOWIEUK2mIh
5MQnbgTBoOrKShjiu1SpYMCYfXv1SHficGf3DEstT9y+/uLq2xvVzcs2MIznkqMoLPn5b3E9KzDh
YHDnPrX2pss++4Y35mOBzhHDQKel1J3sDu4dVMBjXfdpcD+htsnsamDVHLQlL/o+rBwfmRwHzwee
PAlqgsABe0frXRm6QW/VATz0Qnytf/2Zy66Da1Fz0Vx+hYQ7YfLbb9eDeXEKDdJnX2VVZc8r1w9Y
0Ghk89h5qbWXN2XZXqDUi5zA7McnQeUol/w5GzaxwJEDAJWf7jgkEDY/6lJ869wDcRhpXFLvymn+
+3fvfQKE2bQDAXkaL8FbgQ+5Dqtco767sZsnOm8e1k8bOb7/on3INUkjZHo3TtczfoAIB8A02Uo5
idDkEENGswjV/PxfZDDxJ7vTZa/sbeC04m/0Ovo8EsKaDtsPTuuIQAZ0nSm0zCewZOUfghilixbq
2kUi1RR41yuHiVBnrNWuEp2GaKX0o2F+ZPLNTrhsxHGFN+QNUGbPOcGZkYkOTx1S+UZ/B1BsTtzL
iZbMZ+nWENMtzP4x99shk/gaVHmWCch/qRY2roT5l0PnFPNkzcEhPCsjoEnd/PlV+vwhJoSHgIdk
W/sV0lFX1MFbcleeqDEV3SPHAoh3MqnVJtsO9Ql6Ru0kKDYqesKpwuMtBXjCJIpiW69gPv4X5WsG
U8iB/yKlCV6S60K8Ni9+w2R1L76a7xSaaPNWKiRqt/Qeumzg3478VRAyAcsQmnppI5IROPHkNfgm
D3Hm4qlTQ98aC0b/K9lxPmk1/7qcSAmqEcqTxOp3eNgHElDv6gV7C/44fOy4PZSGhZC22qViFVY9
/FL/29jb9XzuIEs4RMoSvRijp4Pri7wWJrclE9gkd779Z4qGVaIzjwz/3i8tf84UhqA/qQmHoEoi
aVhCYt6aHNkVrdJoKPc8TRrM+cPmW7f9tmXAcfdGCHJ3mHB9WUeUJ7zIWAlQlL6pBit5w2fpt9Bu
HwIJ5aRX0JUam/+vK0+QKiac7G3hD68406vCjCYCmLpupoIadfNszzyei/z0WNgbarU2Gia23kpH
r5rQX0QehHcR/5qNBkaZJx2sbbm4NPoHTsKoaizTsz5eG1+2ieHrWrbNiCCUqNaRSW7IMu1QFftU
j73oeGuxgcCmj0IPoF3KbQvcYpijaXPVSbETYpGrhL9ThWkXzzmLyl2R6XNv5mTnJL6nAbVfp/IH
AcJZd/9PFhAjmEldKvBCMhzTAK6t0GZpXb2qcA/Fp93IFDNCZYzXhXN1jFdv+aDk3hHNRli0koMX
iC9tmhwnmi36AZ6jD7JaTWCXwzXQCSnDC13hgpn/JkLHHnGmU8rzEQDEiDuI3eRWdrvhQdZXqCHA
c775fXpAdpmri+hWiCyTF8TyxkXWEa1/D1MQ/FuMBV87ocV3Ppdy/AvHLuM0NrSIB2QY6O7JBa2J
jsJZsGo6fCXr9J+Cb1EsrTgkgIkwanlgGE5mg1cEQDKH83GtNxBZLoUVWLfiyAa84rcVVD/5jw9z
H0La0FmRxgg1NCdYEP1Z3dOaxAR3jJpki1Kphh08C1TCu/qPfZwtUnM3uaLQaF0Kfq3oRdgxjZqI
VdSOQWMZELCoPN7ymOZVVuWzSHSxLMoFINscSHQcHTjJLZJh6f7ilGWZpst9ApTIYPOLsfT5sqo2
HPCR+40EcpzG35Ejk/biJS4UzzK0uMG2+Uu8sQA63SSZeVKlhi0eREgVF8v+MQrFuYDtTrfmfyNU
Qnowdu0nTAsLXl/EFmqUaVSNJiyz5XFKjddzsyb8fvV5sAEfchPxaS6ZUXyPFCg5csPeCLrcx6hI
NdWXTj/VmpT8FQ+kKGqnEl/KW9VdVAp7puwjqYI5UhdNL/c6V8N5DCNO1aQM//OE/k5jkg+/skOb
FOWitB9qGl36HCjnlJKzFIJH0V3Qlpl/bEhnoWD1G9Eoo+m5q6n8CWN1N5Q9eKGRE0g33IKj0rZP
fRXpqLi6Hlq/Jd2uG4OGZyLZcuiLZfMsEiACuDXBD+KSwthKZSLOzpC5gQTva0ywlYGowZ8eu0u/
JJ9Q3EH8udcYNCpERJaPqKaq1GpUvp2G53sZkZlHJUSgbuYuV/nASknteLEv+iTOdeQ+Tk7XJPZF
CrE/SiW0jPEdbEqo88YHXz7R5EL+fIZIyLITTEsOCzHmWwExxd3LfRRvfVgmYMrf5+zuLbR5jjqJ
BuXIgXqKBKAXY17ecET/5Dy/En2NH2/MXFIxbs/id2avrIHQQ/DQBsQLHQ+iPwO8qLudekXgbNRj
OBRywrT/448a+niIcFznEgf9IJ82pm2F5ue5oSfd108XJ5DttVzgpMYnNN+p1CSn+SGnI9UugZ5u
40mZrWACr/KnH27No8zRP7z/AmRCMISAMSNRWwUTirHCxX4SAdYXzT2ZxPeyvxkw69LLYh5yU7Qj
vldblb1/w/VfC00sJHsYb2Zi8/93+8tnNSaLLcxACVS+D6wSE7vjyjxk1IaZOtAJ89ZoxkbGs2qL
8v/2URfWNzhCqlbX2nh9rBY8yISpbqHefwaJQ6inIfg1uJfzasTQvh9TKQtd2SY9uRWi3hb1kLS+
AvnldeRGRFtrcyOWVBTSnuObTIoeccEIMdxzs6PgOXhwpKSgyqnM6q56CxmEPYbBtmxubGM88rOW
QjEU3IYVZAIghLsulv0U46Z4wXagj251G9fKCcRkO3ZHKSg2Iuq88GFqVhC7qppG52zl5SUxwCJo
vrtkDmSAp8v+3x0PoNOgVRJms8iuHsR+XUxTLjrMinWP8wnTytpcPOed239IqZPN3b+DuHxnOBN7
ZJ1P7ULcNX3p93Ypf7cyBsGEculJ5Htr0SdgtarFk4o3IMLcz/51OntRjdFfWgfzFlksPW11+Ij6
/ugc1uwczOVduEN8kKBUORKJ7RYBkFqIoDGxdevpvSdr6aJErTah9D0kNZHiOkZ86UoFPmBqx1L+
jzRwe42hPNl8CJEAQX/LXgmHBxqYNzqqrSJqISg7PuUERs7s0cg22AFzfwT9SqxlkccbL+LThmxw
4fyhiUJRRik91JCLTeIdnWdXrDvEVb5bxdlISEEwZNv5DZNQNYUOVOmnJcUfKEDT54ls8KX0x+fG
YqvQp+FsuW32/R1FnNabYTJWo9QCfvBjRSBk4p4F2tVC8b8qrrx5PSExwdMQNnclKMU8bC3pXajY
+7jAdGFn0Zy0Pu5wAuhFHzQ1y0TD7IpeEm73/CFDYO6VnqJXkfV6TLkT7MYX6vhxgArktYrARCoq
g7jwo8dXn6pNqSaJi7hGTjwpm/xq4uguV9xzJbsTISGylkThyTzkMgaa9Puwm/VxIlwtJjAax3ib
+n80RBbzH2F7Erf5sYXLMg7VOEj93zo36It8+lEWgF15lBTf1OzK+HWNaAgZh/7F6/ecxfY67ZHD
7NReSZFEZ2Y4dw4GkNg+1VECCw1DUu37SMas2t0RdkzFbZCiGyxNCcYWWoIYNywsUwX4PvBenCcz
RDEfGbV5B4/NxJehHqluMNOyNd9LOcb0tVbPHct5+rYULipMobaVl3dLf04GrMbHycMMstxjIgKT
u38JNzg9kJo6oHSGh5te1PdTS2WEVIo623itLX65+wIcGJDJXPIF5tUfSREsDzx0K/KnA+Ta87yv
Xbd+osUbXoTsa63ruY09zWaPLVA/NCDyX7qb7h69aXayD56wNIfUTMjXfrpp18bEBSCre8iLJG6z
yToxKZrmXpSed8pg3MJlzPPQEXosYjB13FSUkPXroI4C+SklqeIxDiCF/RgimZtveaM5WR/dh+No
316XE5NwTPAZTgR/oz/GbHhKGREB1IGCvVgcDZ3j5Jep7VjjMIlpiF6S3qmO48Vmg0Ml1aw5pgKh
cx4W1oJzDcnvWh6Aqkqjb2NA3bRLeTNRY1JdRUtTbTJscPbdGiZAZeXnI8tdO1kiYJZ0vljyJ/ta
essAKH+UFA6ye44/LHIbwzqRlOEhC9CYNS0Oa3bc2Q04M64VZTICFpj2CRYLW9jbTI1i9Ek9asrG
4KYVzifdGOSIYsI8XWX6UpKS+vYIgwVXYllpOHcKjfFDbBznfKNzyiZK0fPTSmMu1G/uiY/zBpsF
0bZ+bGXRRIx2Z0QPlbcrHxSiGct1J8srU5S55Uz/xcZn6lZf3sKoiY6EWKwQEiZmZGdvgKNJQBWj
GNEtrkPrPrxy7JRsMd/02Zew4TssbGPw9zIjI1+Mk9wAoddlF/JKkJxPga3C/q8gZmco/KeLjW6W
j7xCIXftiCsR65mvYdpD2sr3yUxHxeZrMRevtGeVmflakLxJiwAz0K7sor7vhJTZ0UgYtSlyetKG
XoWg/I8XcAaS2Zxqf4rI52qKPM348w5b2MiugfbBE8Gg8xaPMZVtPyJCxL5HDJvGerWZy5k0ZZ+W
gDj70q2Pn+Zz09qyQ7Awuye0ROx6/VWrHmYXofjUT41bAc3ylL/fnP5JX/w4ReNg2lVY+aolFZSE
0wfC44h3sWxv6Oo04Ljq/r8WRKFahWvh4jX9e0TZl2mmnvLXyl57J3ZfvwQsz18XFHplUX0Y57qi
gYKl8qlrvpwsLQ0dxrgoqHwo6kp06p2RodyPm19oSkVUjagQhW3Hw8VooXQlfG9ZlchvHAzezGkj
lC6JIcPrxyki/VcVvxya0kjlFYA6Rs+qMrlgzQBwbLb+UK/r+ts+cXh5jUyCyz3q94CI/Avxgzzr
1996zFkVUODr5QrqzalY9OpcA9xArEjR2wCFs+k9dAFKwZ1WUcf7hLrttGduqzokz0AsrqRtKVMI
fEnzpohdJcJ6TVaDITqkkzMePXtkvAE4zUTFj6mGpPElTr/W17ZY2ktruDf+fhaWacNf+OrmS0Rf
LOjXQB+6j1L5+UrJs4DUoT0Xw28tK8GPTZg68dqbQr/krnY1hzS7uLpsmqrKOyKnFwDF2XSpA3SS
UYTMMxDJnmO6uUNikLAteYQ8lbG3ozVvTUL0D+gbzCjz2+HyrGCez6l09GHZLtWXrOZ2SVI1yprD
11Lar6/9RRbvVABHu+Aoqo5N/cNpspjyCohWq/Sww2k6Zzregs86GweyIiRDc2TlBj2gJuw2v9Od
67LCzxCCtGvMmGB0R5Ih6/zhOSocHN05DQXqmJuZxCxHaw1Ry94DPMWbj0l9etXBAmDFoRZlsZyq
EvnNaGobBcuLeoSc1JnfdBGW4lkS+bZMhQ1T9qTA5DBN+2Rpor88YnVhE11cBFY2g7RjD2RyUkmU
hB713boPVujRj80qOk3P56XignGkI4C/F7vMduY7Jx7u992Q37SVcOJsJ4Zc+upIWId7XlVT67Wt
J4uti0ZdDMwuhu4O/wi3PvZjvDE7Cge/2vm12zTJWclmn05glQFC1AT+YCVZ90VmmhukxM3W7WQ7
eL1MW/x9y0EC6PUAbjHTfWhNvStj5ypF/9gSyqDnwgk2rHEix3pL9qaFZA0oGdIEPzfbSMAT0Shk
/hUcW0ShQtd0aSKhptR9NimgFovT7p1tDBuE0VxCBhJZ/49aoH42S3MmRxzhl+OVCoZ9NrjekzeO
oZ/LpPh0lJoHFG6PkT3Cv/G6eJVLzJAVUeMkwd+qWtO10wmRK88gmVW1ZPs+8C2YW4h49Uzuqzcp
osm4FIDDYWyhopFq+0MkSO3A8mDWdMs3p/bbmCh5TRKrpnxlDMPS6FrphbZwOOAnBGpK9dirbWBD
jfww2bAW+zWgea40sbLlWn3L5US4LxLpo6EqjiLIPUiTQJrvfYwou4+JhOipJOPPptc1VJFBXbbK
hW/1ed+JFi0FOHgtLcQCX16xo96LwDMeqHcsQWxFwj72bktvDp3u2Hgf/YNPQ3mVODYoWIblY3y7
FIHOtHdSLV58LhYouaTiSJfIKeX1+F0sdWE1iWxWXbAp1pKcq8Vo41mJb339GLXdc2G6vHoANp14
Hhlo2/9OHFB8qNOBD3AXzBUqSqwvFTnuq40mI08JnQDQPkasVYAvDOO+3+MbtABq9usZidCEY8Y9
QppjLqFXjX+oTENf8pw0ju+FQlqZkwXK3w5uTyDYnwrS4EnYmPeJdR0kiooL3EKX8zvc7Jh+eqad
VUeHtt5C8IIVSczhC30xg8oW8acGbMR1jbqd7AtuIfWJ2HaNCTvU2PUWXr2DSjQ6ny+KKI6PmyIF
IDk0nTLgqm+JgN0KOzbs3ZJFJrXFGu2nMpnUhDroypZTzZeXz7V3sZREGRa0SrrlQbhbj6xCY9c7
SluJSbxdNIgeuB1Sd7OzeKAnLW/cBbRlDn992w3KniYhHYnJ3Jo92A48+18LpcAkaw8JjvfxlKz9
2KbYs4MNiCLFGB5MEVxIWMMzJ3ttCm83a2stuaVPfbTHnZK4dMsnSof7AgYtx3ClGmiI0jsCKdg2
lq9lht8i3GiAT/IvJra7Z5WIoDAja0yAnsQYUHY/5rYyDWBylUApHIePI1XnGnQIGksAN5LXwj+7
2IcD+ykYl893HzrHBxsl7af3zgiKJiJO1VnK4bBJilodZ/782FEdRAk3IWQ3rQUQrXBQ/fpkRjB+
vyHrbzyzon+J84PABmUi8x6fO9wC+id02yitE6QvslXxunZKmHCI/aHn4u0XjDxAJTOwtPL2P+li
kO7dCz4kt1igghd/9CmlOWO007BnDKvIohYi1DYcpUDnUlvrw5OPMivt65CCoUUpK2nPzu0NJQrc
vIPzQQWdmSI0OIAkXxVP2Aly8mPhub5C8NFePSfhaFvmx8BVchcZMeRdt5dCRnxCJg2Tv//p+7x/
ZzNggLRmqiLvCRHwUnMKoOkH7HjxQ+8ygQfZxd/RV7Om0xsUT0l4PL+vx+GNnkaMuNBLysyQD77r
bQuRZi9TzxqYrRiIgRY6oFnwsWkh856sEe3zOHmOpc9PGFoXfLFtUiLXOeQZi2aQ6pMllM73HpFk
vEE9Cyf2eh9IgLeml8wTKlr3trJRvCzAjDcfvS+OL1BHHzokdkLZ45KbpMcHqShxJaKZFJGVdnCn
FxMQNj6rjZDxQBaUfkZmqSJaj4t7/VImYi9XoCJADgtaw7PaEzSccr1FphaeU1P1gZfhQhPkgn9p
69+cSqRfYs/Ng3HKKahA4GJCsKOZ7G47iyyeTJROZIgmMk3CIYDR9377M83mAIUpDjEP6nc+Kbr1
qLx1N9gdoHHUoLT52+PPnzj2ymse3FOlAkbGv+V769HwDWMnu9VsZ0vWM3Xl1VXzABOUNSdQ2SWD
Janjj1S+Rbdd5Bq1w4yljnAXNNO47PqLadHYDFfNgtZskTI6KAxDqNRDOTcp7ujRqZIRYWt8o7z7
i7ED0OMk8092RSCFHh4GbE3EvOP0lIvIACporKYs3XOODXN56Do8hqySP2kkMkgzVmZU1t06AyVw
k2KnPvFxFPu/6FxEWwMyEA0RxJ5VSwguen3Cjr59VU+fsyfX4JtXznc2ntTucZwb0taRaGvvcCof
nncmtZH3ZIYgrYJFWSX6x6ADWursCdd5Gn65c/9ar8/0ADd/7t7odqsm1rXqm2u+5cQprl9xLACJ
MHb29z2K7eQ7b6aBjHxSUegDX8p1LHSCTK6y7kIuvvsw79CVtVHWNGIVnbDwGualNx1q08s/PH1Y
Ow8itmQ7lCKR9wxN3PDn6xLiX1G2+jOpng/omyaToFMVubzVJxvL73QFGcIxo8qnXRCzCnAsFEvt
AG0cX9mh9IyGFn3UWiG+yLmw2c0KgBTgK4hlt/VvdhyMBUCR1xznVZ41wlxaSckATaainxX0DcUm
H8waCys0ByBkN8j5NvXwlxMStcjLR8vEuxdx+XUtVZhE9JZtRaiK8C9W6JR0IGVpjfZ9vgqNZ42l
xId1iJvMPjKL3jQMcmXTaisrciQa1qMfDvRBId2piwKFuiq+xWlIZ0LQ/AZE0ARnGtDkrHojHwvY
2Y+EpKdoebFe476CJgUQNbb3HOZA66NTz91o1Gs+mgyUcTVHtpvlXV/ikpKad/rF3D0tGOmAeRw+
Td1MGLPuIlpNI8XDUriY3GM3btNOs7kn3dZ+P9bWAS20bVZdeS9nSM9i0UcN0PgkbBo/4/GeY9ty
SN8cpcnAgT0nzXyNc+TzgE8Y0c+iO/hmm2dR1CpwXtCKS+7z4tlah64TgMAPDOD8/VH/vw9rAkiX
8NZepUvkqd9Dz5K4ntlZQN8z7FqfvmMCRgnOO5MDdLJe3sx5jOSiGMMcPE/PlUxPu3HpPsk0fdaA
ACSN+7eRHAwlQTGHwnVi0RdFAsd1qDoCVW7jSxfdonENZsePH0Yzmj5+6F0+uq+vUrBsVopE6LiY
g9tj5PF+3sn36IFYR0R4wZge+CEUO2B37IX6H5MQB/z7cz/cGHhN9WtjdqGhIoCTQJhtrN/ab+/v
59rl43ZU+GYrZmM+377REjFQiZizq5m/Mp5iZBDo4A/7licj2+Mk2aEwehnX0m68xwpKHb9abBKB
2GhqjeYzbIqn81PeuFGefwtOTHWz3VxqVaAZtM9YyYHPLYm4WVlGXnBDdWiNm5jk5yGXcJfXo+fb
nSlBTQ37aDH5XpikcEgGO14vZJ57EDbceuju34O4mey7oWZD5VfjCjpn9QhLHnlTUGe2qMmuEmB+
HAnvc5w3Of/NPBGOuJdN6E5ygQlczdaBLOkVkg1IhGLSCU8N8XBZy4sna3Zceuy2MLDeef3q3Usn
cOo8nLYJL46OrgFKiqdBxQQlTpiLQv9ZSkHRDNBfYZq2KxCL6qSLkfYbelXgnw4y/g4joHdSeotx
qDpmTiw4YAB2bpm0R6sc+hl9VqYTx1eKoqX//UF9akhPHCOrFEHfBr1id/BA4ZvZy+b2UJxPhfsK
VEC3aybVcbs9+gPddiySBodGxQHc+0lSY3vv9T2A7Db6/oXccHu7wQ5By+yJXWubrnG/zy0xu7d+
Wy9ltr5+fu/P2ASMx87e+NCoMgcnQwOYECvZaEaj+7EM80+elEwQJ54ko/4q/AJmXFWk/zPmWNt1
WzgHP0dnbHf2nbSsdmFwHcevk8BiQab7EAn1u+U65ZBmLU7b+87/7MIZMkxwJzukzcqQLfIr9rCK
ITaZMJ3mTD/vcEHsuQToFsOqVwtON0slNeleZA9nRqTwBdWitZwYkezgsfW3zyt7eq+HXUSJEI9P
aXb1vbHKwwAiEnq5tc9AsAuiRp/W1rQ6uAGUWlwlYYX9z1Or9HAoeFISMEnU04+OKm5oblGqR2iu
deFKJs9VjY5YBhQtuc+O5SBeMC4gvfrWqGC4LtA4JeNPdP2jt22eyUvf2g4c9EEEshpUX3qslBpx
PCfki4o5QlyfcoIt6Zi8C5cD4m4JG0pvlxkI8uWl3yPPoJdCY8hx4oktwuS09DMzUs0DBkMyt1Zn
NB6KbhdiaL9iVMn/4yEKElk0bdqa0SabUGlqzvxDlV6bNJ/eOwHkcG4wUEh5v91FhkJr47tOzXeJ
kdy8toxxHaEJry0LZrdS09v8j0TJKwcFfVIkDDWcqtZqlISMHuSwj7/ffR+jirj6G04bbiqsbsWM
xbl8/z8xyWMzBuocZcuGBaDM4xgR/ufkSdTcgDnY05EctvGLJWyjEWYDnKOdUqwQzdudEQBQERCP
bvhPuBink65Fog1BKDgvdAqxBn7pFTeBZcqyry6UZhMRTpPFFVwTJYzVHFM6Qw2V5RigH8tlTW3P
KpK+Kr0QH0h/3MM+ZnFe4uJRo2Xok3Ht4/7GXtryKmh21GGT1Lv4kYqi6mCdo/DKcYZ40xF5f3JG
Ri6SuZQhYIbJdRl4z4RYjC0kl02L8/hOMaV5oPEaksQP243vFeKGdjOh7Sawi3tSFgIR6AQ7XzPh
KJpvu911osTN/Z1cZEfYEXhbw2A1+UY9J1XhyuEk3h+UvLAadIBrU02JTCYOVBOomzGxSuL5tLFI
6ViytE+A7F4vJnq2vLxsWXg+3kSDvLqyWVKF9WEZuL8D+e7+fRR4iB9vK5qv4BKgoJp4MviGZLTO
haBmUKs4Vhe4lYQwujEqMN2G+0dRo0ZN7hjrrO0zGEsBDLEGnsrOgsGv0A6ug+sb2kD9BWAdXAyQ
d4ouWr7gIeNhBa5rtTFhZ8EKFDoalG8L1YEijhZ89hN7P8kKblblfbbYKCjbEsKpfi2W3g4jGf8N
9L8z48+AA/92nfsKoAqOUILPOnFoJFj0o5rwFIoo1W2X/tNf8/gELJjQICRr3NLWOa8Unx39fUke
eHJkqkHc4B2U8opI/2Pm4WWmRCqu6YVqu1xAMC3ewQ820hBc72zSRzc7rP162OteKYjP9+Gr23Y/
dHIDXFKVi8l2wZzJVk3rcp3WXyZWzLWwwTLHHoCZfQjTf3P91HfIi8V1GBI1PxWFfXJJF3OSm5sw
cY8BKFMNePLoAm47++Zxp6BfkaV6ZedkOVaAcUfpLoBzkzvyNVDnq/lhdSIM60SKgvkmQ7HIIky7
ShegrbS1aGvq4SpJMfvAsE74YegPkD/0Vab3Tmv8Tp5HikEdYtSHrpQnD4jkhManchcqHi3ttO9Y
/63m/HQvA2Ibgc9y+duTdxKBBM5Ydu+II10GbFamfmx9eUymw2XMlyRk8DSK1C1BAAskyeWe5927
8Q8eJ2sHifxR61MbX++g7uXLJRmSYWM/xlm6WPcdV+18znGD3n/WcNo7oXL859EsQKcp+9xTINzj
3d0meqIjd4/JPxvrzGtolmEzf0QUuGJWaEaXqs0JvoqRZotsI+DH083lZRXHQBKIN9B+WYowJt/d
I0psYDvgsCEL1b9/F/YX/ggYc3t8MEAfXc7TMGcxHwATMOPWwrMdR6OIznJUrP0MxML3d85h7QFc
nqlZi6rWQm8iGymZoVWbVdkNrl/xlNpOxhzIAwAQ0O+dqMyhTf1CmZf4AETwVqERhdXMojYf4wCO
omzutjHnp4K+rfvK1VSYOxoRmXJgs7hm2538+FcBEPQnAzXjMS7t3mYwex6tIeFYCKjtZDrISbNZ
RbtXt6syLA362t7FEBGtX7a4X7Po4JYOsl7QVFDRuUXSBXrRcFpLdVCqgfYwLrdlh6lLgphcMTDz
/nFWMLSusRhf/xweyO1bBWw1WiJ5yt3E0NN+gaKFgXLg/xJwivUmV0lsG3bbr9AGUvQWLTYM55g2
2TE/8EsPXrmFigSzMlz9vAiIe4r2A53yfhooDyAd57NmQ08qbzVhtMj1zgz8WNVH2TBHLXT+qjEM
mc5Rxle6qzeS/qJON8udLg1cBvm297Lzzoue/JspdVYj1texRwmza1p45s7T6vkx2FfohI/tJ/PP
Dv6NKIwG7pVvrHpqWhmQTXmHzxPdMj7G/Ttd52cW+AHv3a5VRWJwikXkNsF2QfY08gSRsoFsIaDZ
wpKJduFNXMzmscGsSlmcMvTsFly4zXKpZc6oqWBjeIAwLYsNkoK2ataVDjtagdQOoxG+lyYJElT4
oTEls+tECXUr0L0J0ZaBHh0g6ENhzyCCTk3fFryU9JUI9NLArZYq2ZvrU0KPT3JqCgZ1viomh5cB
T2sFV8o7vw4l6ZfPwcVr5SXqhIV+PsMjx7vQP+sS/hMn+0MICMyKdoGfo5GuUwimVW8UFSNgUO8m
aShur4R+vvuknaE8/BJeaxhsqydNS7iCKJTmKMih/ttrUJwRGrIBxrLHtsUIG66rf1iLBGnHyPGa
8WhrBga8haIbHJIkCML/OKb3xMU1Hi+IrUMgUGkR0J5bFYbgg5jMcJwLAS/p86800t2Zg083gIbk
4FJeBGw1KU6R3ji8zS32/GyfweqVRC95XHxIoNDG75/EMvV1uqVB/t/v+1A2UvJMw9V9EsWd53PC
4lC3IKnir5PKwNZZ9cVMBSPxokDzph+DJmywxczEqeUKf4d9qISTpjx1G+oASfhGWH6GDJBD5vbN
kBbEkfA5mIx7+0//t2rZx+Nx9Yb1PgezRfXCZIk9qwM8CwlsrvWuXPSTp8GAYmSYpGtxH39ckhVO
d3QDHnPlpmcpPtLZCKvQNss3njFDxLWYFWnhNtutqrOmP6t6k6fL6XnT5UqvPTYkHrh0O0IlTX8I
D4Rl6e6TSDxq8gtk83Xt/yUosUIbVs9/BkfsGzJz03P5Z1T6KCMe6i+1WBmgw8Xj1DEm/K67ilh+
fXseZPHCFdsHGbPdujRbgjn1caAJ8tWYcY2qnR2i5iHPoHHZsKONUcMHzdinUHpb5vmW1R3gbtk5
W0x6C7TFx9O7gyMJItqEV2WpVtxI4VC8J+eDVly5EqzISdbHWt9KnYyCT1w+p+LGwMSpp9bFy/k3
aGGExvytb9gwZm7nTHFZQU8SjcN62RCa9yQJYgkzBLMpNkdNzBD3wO12wEPPWqEq1heAWHtUbI2J
hPOdWXeS/PEbzThcCcruAkWfXiDuluCFnNj0TlR5leh52vwdHZ/GiudFJPGyLKIXRC3h0zd7w4PC
Y7aGJ7vP6pvawVAKTYQV9Ggy4ZGqLQDsxBzJJRhS9eFJnPEz7a1BbfVpLbLMBIDDx/aKITzUh+YK
cFFI9YSIKWaLtR+MmHf9GvDk+nUV5yy7QF2ev0/qDRsp3vU+whZj5b/w8kzCoO6wxRcTj3GdL1/m
KY74xBCwvqCzEpC2CQLkkVzwvUb/04yuwe3GV3g1NOatmSn3d5l1IPpKs5wjtjacNCT2wAhGeTK3
WqzM/GsRTBzEv1z7/XjauCsl1zjLmIoBZCiC2LWW4VvPDfe5cZjBHY/vP1qiWAb249o+mfP+wNf1
vq/M5tRG/g29EoByMx4EWCaAUjvO7wgGBpZF/OHa+enxhp5TrTHKg7FfMreG9jC7MtcvQRwb/0n9
6cwYhaLQQKAhQCK+znWdR+LIxmYCS1N88meDz5FfsBbOH3+ta8gU1js7BLW6NhTbADddqo5NGv9O
yo/jRZzra1c8LKWmlh7662vWYK93b32WyG/Wc20GG56b7jIwmUvTXmBQk4SGqbmlBdas+0vVIAtO
wEHk1JUIPP/xso6iQYjpcfhgf3MIiCcljJxQOUeQzDQ6tEYJOG+vLwTdzTaSOlg2F/++uDbzenMD
ph50hzGZhozg8UfQNMY2SGUn1zDM7e4RNrQqOm61AKJM7TTaU2aIi+U/91rKki9tpeILtFQ1fa2w
E9VuC9Hkree4wmRVdlMHthoO7w3MVbFD91dFCB3vCbTdmVnj9QgKakutJRpmAEYpbjmlj9TUQgNe
EaE7mwuT+hYxZl3bT9NNWDOT+9UF0n3szhbA60H5Md3uBvua4DHvRd/e/cEUFntZcBVm6L1grSm2
cnDUxd3cnVUquAehHZc6ppk/wYYSttu8sdTETjy4NMPkie2sYq9QFSkU2cK4rULu9gkY0v/rMxWU
wrfS04Q4ZW7k2LcnLSynbG7maASWv/Cf9vpEzxU/WNjaKL0dexYRGy7HqWi3tH+2KvNAhqP4tob7
r+ys1AWX2BU3ADrs5bU23m9UkTrZskMt9WXoiDXla29h/Osf4oQIGm099NKNpC2OvSVirTAlBLLK
UWDQB6f0/8iJ0uvBQwrBmtV3I+PHgi/3Um2Un3fCHLRJ9lQQ2fYV1cyFSYzpAqj+xMhcELSA11dm
n6hYLfztUGHd9gJIeK2e43uQfn0Oz3LjkeSHJm9jZJcXeXlJWe3vVlcXwj3oF7pjJpEa3VOPOciy
a1N+UMIeWd/CxMKWd3bGtxf8ILkAXx55use5+AeLpOl2by47xp1A1IuFwxdVduB6GVIBHvH4JFUX
S6w4taOg+0Gv0gaD92mu/nn3gZ6aXYWCqxo8M1HZFyrpFqziG4kHbcimVBV1FD52o0H0Qle5P7Xm
5mOaW25TU6DiktCUx9xxqCebTv2+UJTbdr0UmnH4r6T5iQ8WkF5SmAgzAVUof3pQuwoqlD683Vdl
AY/X2e6SRDWuVqp0pS8RRPXHSfKr9R83p2J0bOsqUu6z+D/RuTXdJwZ27608xb7FxvXpRgufPEOA
6fwCDvEnWoU6VtSyvar/IDk/efHv+n0siEDoo+mnFgSz17usHSpWHNWgQAmsJK4WJ+CCqGUQ5LKD
wKUoyyuJU/noL2OsC/va7leYqXcX2aoa5f/MKGhtDVxz+A62tnYzBOTo2iA0MHtfaBUl99g1xLuH
s0IShwAxfd6myGKFQYOftcvjVYfwQpjIHDcJwFhyIIjFS9x3dkg/Q8GGC/kJROumUWcuGGaEwLGj
SyRN8TQTvlXG9wSWgoIRiiomXPKVdDvDrsAVslo11lddbYwJofn+Ik2tgftpx8ZVMO8b/NNbunr6
HuaBfeZKYk3tslAcgLguS9vrBys20ZIDnOzIs7h/8SD61wdvOY7anKdKg/p1YsDu6ktA2tt1aT69
V6/VJQgvM4+sK/JoWYIPEcEoeEAg4AzOgWojWtfz7yHSGShUXMbDlo1r3Dpol0vO5V768bN+s2GI
cRxFGcaJCcU+v+am5NwpL65B4mAorVxv5vCTp5i99hX29BuDqjTpfJaeebsJcMJNuErPb2uMDqsg
mIycxJkB84Q//5LEHO0IpTASFxr/tVEg1BhlC103ioE03N75cm8c1wd7GKA7SR6l/iiJWqD9AsIt
t2DqVm0EEaWUyMT44KHL4ANDQF4K0/w3WXvOfniPU3C1nxzxgWvghW5oJBergLUOIybe8D5R6lOH
BWKtcCaFTrKeWMKVth9fRDIkxjtONiDpRT3eh0nsCRbx1NaVPBoNGlAAqXvtkHkaw/nXgZjpdjGx
v3GFfqygWf4pX/j6LtJoKLK9E8OwWJIWk/Zazodzpy5HxSoc9Tko/YPx/eqtSRZbyBfa/8/JyhbW
EnMp7eM/2jZTfBzJIaTKyiw6jXUMyh92fs3udhZjXQvc3pqn602BqpOPOgA0sIeCfWwmAP+P6atc
G0Nd7qpznsDMK+E/jTsLrwt+gqmwLN2JRjPErV+dNeMCZZf4UxKinPpa4k5t76KgJ9j6d1Wb0wKW
72Dzh4I+1hj2iFR4s49C8VALSaIEqcnjlLd3Tv9R2WmQYx4ZJOm02yrBq1kOV5izdytgdYWbpoKY
wJ16WRkTM9Tyumux5Aq9X6unR4dBSQb75TwymeMiSuSir1+5Ck2nW7iUBGo1BKP4EDUTF8SkW6xP
zrxK2/a9l7JJj2QJzRuiMuS3tHrBOtrGkfo+ZE5paE9JbW1yt6WtkDcJTOoj8EUxZIcN0bgVbbXr
axJ6Y3yw3ypiZGgDJhOHZTLZmOJQGUS9PWih6ZK7I4d/79pCtq02yAF+nvIiR65T/IlW7lNy0nha
T7/kiWD0VG6e+luXZKxBaR3RHuvXxmMdTy9iF47HbYxeGfoH+BJBnCV7ineaUGBHi8Iq50Kuvh4W
F5nlI4xdLnyQY5iki8ywX7bFOez2AIB8nsoU0mmiy+gOA85J7V6WI57PGjB0YLy7L8AcXORaQZeS
pUhKqPQndWIrjuqPo2U6mfnx5kYojb5wZI0uGT3fgLjGmLdSzrgtrZ2y8Rfo2SAf1B6FhvvdUQpy
/J1U3vnoP+i6vqLPLLWI4/XFL9v7dzVFtvGErJwrlhFWTvjMrQqT/+ZCjRToDJRIJRfccO8UxXqv
dKNsVrQ3/AmIM24pTH1Wldv4xAsfwVyAQjbkgReWym27eUWP3Iw7KNALA6Yjr3PzIoOMCy5caXpf
HGVRSrEQNDOBdRUhyr/PMBYUgHXeD/SmE46T869NO/P7wU1kEwoXxQ6sa2db4vIegukC00HYyZK0
ZzjITZq0vnpQOFp8jJjStuW+9MXz4FLJj2JiZ2oBpTo+rY4vsnQh+smgQ/pLRBsBR6DA+KstrqaM
fFc0pvFOZ75enxS1Q6fMbaBLELlpx/rUVr1NrjieUU0y9RQiUeNci2JzEmQm8le9IEGa9SM4/TNe
T0pm35rBOrIG66WnRpvyVPj/yxM5A1q/Ru0ZPQES9NPbmKFzMLd/O5SJI3UxlXyYldaYT43oB5vD
lg0UT2Y++tCfKfysOXqW8qTdJzD4Q/2oZS/ZuLsrogu0jGezjJ4UR+TzoiAVJ7zwcZ1ZVTuPAzEv
YRHL0YorD7SWVacikWnBinNY7T5jP905jgYRgPQ4WLEF6DyL2lqNP0tTGu2HJv26wEkirCNBdM6k
KhrQMWzLcLxw+PEEiq+Dwmq2H1SUz41KSq0REVuS5XfPTBhsnQ0fFCBZOkShZEqvSsiJhb35oskd
kh+hHsJMKEECeXVBYLUzd/uVJSzwteJvpzTYwsngV/1viiY0rihKRIx/JiU4g6aaMf/MSL/vpmYW
E0B51U0HnRD2MwH6LuNUQLCZsydzyJE7oIC5zKW9PC+aVhMPY7kFCxu5mBXBaZaV8sayCVDLSikM
WA1g0JLLualAcCat2IAJDZkcXa8O/p77CHuXi7VRrXRQ/BhirhjDOJzMgVtKGUAlObRKIGfFDqVG
w64t0sXqqXnnQWjMq4bMqAC6RK7s/1IWf/fJRfX++10HggFTPeiv1e9LFOv9ZvqmL+av/w18tiie
/fgBkrzREI5nueDoeZ7ZQfVs2R95KDoEsMTIHPfVQlqPXnkjtZS2fjIwX4Oy8y/Lgvn0NPL/8qrP
cttRJfD9xP5iUu6nMXQoipaCSVjhZBs5M5arC2qc/Olpu6FWsloaCtsKGqK/S8IMWV7mnHjcxMR4
wgEETCn+DZYzInBFT3j1fY2gfqlhcXXasFFty/dlrDpetGRIV3aIPoNJa86k0W0LTIIgLadcP0so
T8Js8EKxa2glp3PZuZycwhP8C3j05JXr825IKJNWdeW5FELtRxcGVDUt03S371yQaBTp3fDT+561
OqSc4MFWupgratsY+sWnRQsfUp9lPVncE0epZDJl1NqZwy8h8BY4aq36NFvZIaiy34Bn65JdHHFT
NaAQMgISTkU5SaDFrslOlzAoZgXycttY+9b6R+qcirB+g18q5KCbRfzJG/xEsIL5gPCpM2aEXquq
IXZIoFESd8paJQM1EgdzppsI/IheMegoo6F5Vmxi9cEnKpXPjf98mbwnuT9wE9EesELLgksoF7Ix
xV1oY3Zzp9Bz+/QIfGxe2Bl8mW6RTheSjiselRyvl5kP7oc8PQwKLMuvrtoTvrwh7QwKcLafCkJO
sLq7SImdy9Z7gOYDXImYc8gRPF6xh29P3N+YUMxCtzY8nHjvTg7ZHxbJYByqi4BDow7BJSoIoeUj
cKmEUCZoo0OXL4ktUZFsevD2X9JNqiN6p+rUttsIBLfHImOIS2rGdY9t/zyzcUuHCQN4zgZglizz
UiJw9Nzx86ohs8YPUNDd8vzfNZ6+2Cmx6cVnLgj9CT4dGNFFEqMkKxzLy1abN6akaCO/p4OR2A9T
ga8GsoMdg11q0WLrAxGWRWyV96ixXlAPtzbBzD3kvjRhjLP6fy1qAIhu5xl5hoAwNdorn+XqVc7W
EDuBX/HD3ESd8Pd6uPNPewSPlbeEvaEUZFNkBY7lcRC0fkUkVyp7RC/6GZ/uyBM/QhP9uj7FgrtQ
T7jeQNadNg6mH60xlhL1lj4vWxGmefI+lbB2Ojf8Ee7CcuPtkHWom4ORZvG+hN/ItZ16gjMx0yjY
WuuX29YCX9oj56tLucDntWvgt0xfULtiACK+Ex8lnzkfSivomDGa8RHHrHf4iCZZDdKSE1020fWJ
HYZlOXjLFcQBl2QLd1YNYOoHE3QLkcZ0zG56kdNO1TqISddNlsBC512OrjqBXy4iuI2mAIF0YRw3
iDUOaaAWJ0Uc04IpOoChK8XqruQSiynJrABe9B/6URFAubDDA1lqhCwlv90sJpEIPIVQwsCvIrUJ
C02cyTFyvRTAI2Bngo8Xaui5R2po69gDOAL+t8Nrg11uUEQ33D8MPpvyANzb+SgXAXtjggKt2ckO
vmbzu8WqiT+bvzRk+moLtMzx5BTtasA8GrrNJlukiFhsvT6V30XfAdkH8OQ1OgFOjNNOSkbPFvBE
6QCcBNlQaIkeoxhJh0VTxKAbnkQOEdIoaDdH++DjKYyum2gJcDpMJ/eNJ4h756pSUYF59Jv5po53
fRozjQdfvrVNoeZv9WadzTh1DtUzGRnk4yhKYGbMtBOoJvDxMLlNc5lwm4G8zT2eTy7yrVJrEyMq
EAhTOuRW9GEy+FjJFdW2UPhJ/XrRA9lxNbViV1o612ozKuMcYyY5KnBNqaWVDlEY//IfDMJxWoFg
aRAUC1460XnyfMYuXzDPViTjqoCUHxy5RjzqJDFWS41vMoNTccvyqE61GHSXAX/o5VApQxlHsv8o
QZUCAxPQE6SHyfXUoTLAkIpkQBHd7U6C27Z/x7An9Yuopnn2WeYO7JkBclFe61Su8H3AiNL93473
kYjYW4ysX1komhAp7WNkikQMPIquxBL7DxrC8f4EVJkXWfGtoL7D/AjblAYOzEZcyFQcI9PywOLX
w79ymmnlWZvdyWz3eScf9nUrrNXZvJz5HkWw1R0jibsMUwEfUV9CIJANPa15mHo38kH2iLz4FpNk
4w1/C4sPDSv/5HSG1n2HYKpiWte8q2Q2zhdhhy5J/QoPg37OGAHI6ToiLDxlwxxpww5QrEJrhQFd
iNcwsJpwS7OXtD+1chC2hVyGAV5IPKMaOTFhD2+47VILl5XV/qWuaw6DnZa2GIVvNg+X2uNsYaN2
dS2zydDG2oLpFM0dmQwcDzFVz4A2jqLD9Kp18pasbr9bzuYyLNZ0Q4S3WV4z9sSOFDk9+7OIwqIR
hB2aj1qVxK37HvAHCX4lkYTD+g+uNMr/mcW72MMbo1ClES97cOuxJP4DakwS7d2uf4ZqeA1Kuqvr
bxp0y77FnvPfi8hyLA6tUPrZy7/kzP1G++9/YIePEuBLiJxkeytp6rLgfUbfRYbnF71SWJHGL1GL
etaoa8OzmPuPYptBuhIuB/SYDnyq7HLGxzm9DgE+OlJA+aHYAQgmQ59Yrlbn5ERIGe0wkgYK7mvZ
04b4X+iQmlRt5lrgui/72AuKL/16OwBQCkuPmpt4Ris6P3VfRdLol9fDRtI2XMpKYOPOXHZqX/WY
gYGyDqu/TWmSFZxODXMKs09pmQmGdnVCnL9DqQhQDNJTAWQyG+hbVFO2B1HlU04DGxWsgErXvhbi
7XOSh3wKKLZI3cPRSjzQfMM2092JbPh38AWj8+WABhoaQ1TOuhRA8pJ4xliBRgMbIE0MhCWjRMcF
nYUJmW0ye7cF9333RLNPk0U2rKTsV96tfhk5CRwBIboJ3fOTCFeUZ5MuTMZWJDeIKCkvpVl7hsk7
lnQZpD7GdGcdQaw8UFSXViSNMJWOvi7JWCUcvFYwjBxVdv2QoOE/Vx73iQeo8CeG6QklUFQz9dLp
agNqs4i25UaN4Glj6LH91aeMkLFopXoQVSFTto5iaLVkdHefsCQIC433kszQk4eItpdTflVaR1nq
VVO475B6MNLXncPXCsF0r7wCdB8ERLWyHW8IymliBKXOKpUCsbBBqY2Mi3fwjLfs+LWa0pjHnMRv
g3id2Buyf8/6N5bCUHKwdmY1l1NNOEgtoC8HX7PBHaoC6SdfApSQjy0Qv579ywMYMvACQFK/fBC7
oAljAXyjjoQvs01X1HGRftyCYxBa/S5Idaj0ZBMVdk+l6lawL6/eXCBCdHi9pifdVka3BsYG/Rzb
mRnd/aGH4au+pfYLz3mHuEb0EUdyYNMVqgJpT/bzdBmksT2tYEWW6BLDhrcdPGdd9mMx+IB5FNGp
idgppNU7glOxa66lmyg1/XqnAi1IpiJSwmxH5ipeyDoiR2FPCg76RgficP+ptZC97E7ZWClElYZp
2cO5ycITSr3Zr0ERDKYdOfP5et/31/MFaqsOFxNZPv/Nd99wUbrOsaPZESGiDJ9qs++YKv9vWmRv
k/Y0eRbV4EhVljd+Lg9XhgzpKs1kicxE7bxQzChaBBRY0pKQW3p6+5exF8hOORwOmGSA3IVnVNUD
XjQU4brpANg8mQ7z2921cbjE8BYKz+QU52rpDThW+lXcTf66JSo3mpkWKlELP4Eg+0ZwXRSnKPLD
XGvouh9rPeznaEz0qDV5mAN7FUtq2Jb5580OWMUTW+wcArZ6lq6HhpWg7jsOBYl+cLzPwSa8QgsK
mWsi8HYMR4J57Rv9X5GMxoEe1pKYzX09wzOJF+xRxXf68JcreWfbhkJOwZESqJWmriGaarsG39pr
31hhO4bGNs+H7vvbcFlsdxYSfp8UTwav0XiBy2pSZgcZ3EoxXXWEyOGtXoFIVcE0RiuOQiKDheVM
wPIYVv7ZVjataVN6fMwF2ybGIUku+LEFA/t3FVV2pIFCvaG+dzp7PlvW71bwFlxHcUcmg9pGM1+i
6nm3uuquMu4xGq4FUuY2mYh9xMsfx6dxQktJ4eXkhNxrK+/WlRzAjqMSxFzGDIajJRDPIUae71/O
Olml8kvTHoQeuSNmVa8tDUz5eQ60H1+vSrLedBrykkQ0RwdJyCJc0N8MFTE0sut9J/dq1y1ddkaE
KYduRBVepc/e4DxA/2Sb7d8wbcYKJ/i/60XCZ8e4qzXpbJJiMGQZHE6oqbG3rXhdG//Q3EzIxtCL
GHmoGULKHkCYaPqOGHTEUX1FjIArpZUNUV6Z88k9XwCNrEUSNDvan8NRwJj+ciW16sDMCTCC/ZNL
G7VLTRR45iW9lf9zsNz3/5tqOZNBryzQ11tK58uQwOmw6nV7I9gMo9lfcjHVjqcSPmCp33EFXlRm
7P3zkfQYCGPjgYAcWxWOonJ1kjc25eb2CtsZwnq5KjAcdQJSxBi20NYWujIO44b3NIWhM5hxmSET
kFVUNNZSr1KhXaynZOKOOuU3Ykwtro0pyrA5OnuVH2i6oH5WMuDk/BaltOrd8tEyAlygQIfnXbHC
8pBZfWbjzWXnRZjNZpEfa7gIy+4sbd5HJRAHl25WFTZsvTh4pVmoJtpEhSDHQuF0FH3qxHHTc59S
7DY8QcwJfo3FEVE3yAVJ08GbpmM49iOEwOjwiPzqZZhWpGyWMFI+b9NTkfFdrNGx22q0jpZ1pucU
mmfJ6PpGSAGzsWOBmq+p9Gv/ZKJW1JMBAUoFP4HBdtNKhsyK4hEijOVja7SE1HrrPoIUtyNAPFZN
UQjWa9PVuOZ/T+ZWY1mhn6W4TTlcmO7DZx3G7PUS8u5pfq4SyOQyyh9ncq7g8bsZ5MPpSoZZw53e
xHIyJqI4aPbsS9NdSm1TBDjT1R5d7kHRpIQp0cnzNqhyvKQoDvYCfpGQcOQ9tr4NPNvjq2k4OUmu
RX5LGrlSbNFvivA/s0HpZibQQivhpLo5SKyAq/K0ij+SgRq6a9exS544Devmwu1MhnIke4pv/2Yb
4cjyJjr96tssIPPCxU0BbuCQzHn/By9Cx0jEWV9ehsFA/kO/InXflm1ITnH0mO+usotCNFSYna0i
4vNDxbrjCa4SMkcpmrAuKMHZNWbHZ4lk+t5WXx+1QWfojm6C92vIv0ITHv0COobAweAc+ORKN3Kw
rOPsZ60ryoPOcUct9KvvhOcCrhEpe/iOSImB/L0YPgix0HA9tUV3OTh1tZlGqgcKy/AKCZyqnTvR
WdqFQSbK4D7nOiOaYM2QnT/hSwwPuWdSO8FEZ8aTX8wMRLcr2xmlNlevip0LfaTYmbQlK7ry0/+1
/Zvlznsm0VV2cLf7y1i8IsNPz7QGKCdI3k64xLgobA0sePpGOjj0FeoCsbOSAKk2qZUMIRX6rpF6
5LBZETW4qdQEHYZ+zA9NXPaE1w46EmLPPahudu+WS6REswVTWEHCaastMRmmwMr8QFKie2uqcjkl
Ma/eBywgGPM1c3zHXTexuUY8oXNrllLu990zGKheIY2JAn0S2RbtmgWXGRsPNwTqrBRJhyPjsR0e
rahA1KeFvqvcsPgEtynZQpG4jUawBAgHGDKghcoYZvFmyfKNom7pdBfM45YD9cCpzW1VhJNseinI
IqAlfBdfSKJmg4Tl5Zx8rHY+nKla4qa0FjG1jtn76iNZGA/XdlAhDOAVHocshShpNf12BwEWu/tZ
JK2ZwcWwWB4fTFipCVn0HPGJ1es2XupDWAX2bxp8livg8hR990M0uKoTz7Tvjlne9+y1droVz/t5
9a1sO9O1P6OJ5R/3GVfGK9nIVBS2ZjbfO48b0U2xWrIahM6N/xGhg/3GgDQXxeN95WLwNUqrW620
iojAkekkVXywyletzbkcQJnG2b1yz2DSVV1vOv+FsVMw+xu/3MQ03eqGhMpoiRhYYOJjGIzhOXCh
5lmXMikW4zBA6AsZhjTJD1FmDLIx+jAGmGorlWj0PdHjEcshVjg0nKmLrTRRZG1igp9MMMpwLsK5
YRB0r57EqI6XrvwpyBNWU9PBmLgfNEcKgbSTiWGIdgLeMAB3Npa9YfJqPJIiXT9APCtAW1kx4q8/
b2OWsZky9XeP1/RJ2bawBj0mb96ERhulHPNqxKGgC3i14bUgvZX876mg1+gZWn6w3KzmcyUV3xDB
Uu6a+37uyFaXVVjp+CTdk1l51SyOAlIiwfPeZGFk7RwZhgJnXxH0PEOnkBgT1wNa9NCjmQFqlca4
f68O7Lmbli3v+uxRPqZpwg54NlTBCrShxGdP1KkPyS8O8IY9pH1oHV8d3nIg3bAvvhdwhTcdQeLe
8AoIJNknscYvv1qK9NlTJ0isvDYOVmRWgGe+kv/z5Z0VT0/6QCFO4cGVnS8u/UlJqlFlQE4o7uDN
UOyuE1R2vKPPZ9C3rTJkAkxnjKXQ9LlG+olrXhBb8A3H7aOfAFq3/gzBMY1TaB0bVomYuoDivki+
3hG2TP62DGYswTRZMyKwKlmzDfqNC0qm1Kh5kgTWabjq+N45s6yyxrICzLYBUQ3hTubfU9xAl8w/
wkDTU8v3i46QdOmgsP8TAjLiEhnAW+TAbPD7cglGcm4/yf3Wp/jozk+i1lrUszkWTaRIOI7u574G
J9TL8faM2Cytwjys9Fe/COHoTxrtPlRUIFpcRbTDU7eQ3Wwyi3XzyNrQwLlLZCGDXNJdqHW4a/y3
qElNttC7L7gGgiCdJ52c1MBoJ3bDNvD6SXXhiOr7+yDWjVXuNosguUKurXc6YgtIgMMle1hHmSF9
6e9rUJQTiKLWk4tyTx0VRMdQi+p08vFYQCmRDJ+qq4tseYhdzREs6faYV2c23Q==
`pragma protect end_protected
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
