//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Sat Sep  1 14:26:37 2018
//Host        : BAKYTZHAN-PC running 64-bit major release  (build 9200)
//Command     : generate_target calc_check.bd
//Design      : calc_check
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "calc_check,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=calc_check,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "calc_check.hwdef" *) 
module calc_check
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.COMP_1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.COMP_1, LAYERED_METADATA undef" *) input [31:0]Comp_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.COMP_2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.COMP_2, LAYERED_METADATA undef" *) input [31:0]Comp_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.SUB_1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.SUB_1, LAYERED_METADATA undef" *) input [31:0]Sub_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.SUB_2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.SUB_2, LAYERED_METADATA undef" *) input [31:0]Sub_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.ABS_IN DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.ABS_IN, LAYERED_METADATA undef" *) input [31:0]abs_in;
  output abs_in_ready;
  input abs_in_valid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.ABS_OUT DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.ABS_OUT, LAYERED_METADATA undef" *) output [31:0]abs_out;
  output abs_out_valid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET reset_comp:reset_sub, CLK_DOMAIN calc_check_clk, FREQ_HZ 100000000, PHASE 0.000" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 CE.CLKEN_COMP CE" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CE.CLKEN_COMP, POLARITY ACTIVE_HIGH" *) input clken_comp;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 CE.CLKEN_SUB CE" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CE.CLKEN_SUB, POLARITY ACTIVE_HIGH" *) input clken_sub;
  output comp_1_ready;
  input comp_1_valid;
  output comp_2_ready;
  input comp_2_valid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.COMP_RESULT DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.COMP_RESULT, LAYERED_METADATA undef" *) output [7:0]comp_result;
  output comp_result_valid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_COMP RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_COMP, POLARITY ACTIVE_LOW" *) input reset_comp;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_SUB RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_SUB, POLARITY ACTIVE_LOW" *) input reset_sub;
  output sub_1_ready;
  input sub_1_valid;
  output sub_2_ready;
  input sub_2_valid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.SUB_RESULT DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.SUB_RESULT, LAYERED_METADATA undef" *) output [31:0]sub_result;
  output sub_result_valid;

  wire [31:0]Comp_1_1;
  wire [31:0]Comp_2_1;
  wire [31:0]Sub_1_1;
  wire [31:0]Sub_2_1;
  wire [31:0]abs_in_1;
  wire abs_in_valid_1;
  wire clk_1;
  wire clken_1;
  wire clken_sub_1;
  wire comp_1_valid_1;
  wire comp_2_valid_1;
  wire comp_reset_1;
  wire [7:0]compare_m_axis_result_tdata;
  wire compare_m_axis_result_tvalid;
  wire compare_s_axis_a_tready;
  wire compare_s_axis_b_tready;
  wire [31:0]math_abs_m_axis_result_tdata;
  wire math_abs_m_axis_result_tvalid;
  wire math_abs_s_axis_a_tready;
  wire reset_sub_1;
  wire sub_1_valid_1;
  wire sub_2_valid_1;
  wire [31:0]substract_m_axis_result_tdata;
  wire substract_m_axis_result_tvalid;
  wire substract_s_axis_a_tready;
  wire substract_s_axis_b_tready;

  assign Comp_1_1 = Comp_1[31:0];
  assign Comp_2_1 = Comp_2[31:0];
  assign Sub_1_1 = Sub_1[31:0];
  assign Sub_2_1 = Sub_2[31:0];
  assign abs_in_1 = abs_in[31:0];
  assign abs_in_ready = math_abs_s_axis_a_tready;
  assign abs_in_valid_1 = abs_in_valid;
  assign abs_out[31:0] = math_abs_m_axis_result_tdata;
  assign abs_out_valid = math_abs_m_axis_result_tvalid;
  assign clk_1 = clk;
  assign clken_1 = clken_comp;
  assign clken_sub_1 = clken_sub;
  assign comp_1_ready = compare_s_axis_a_tready;
  assign comp_1_valid_1 = comp_1_valid;
  assign comp_2_ready = compare_s_axis_b_tready;
  assign comp_2_valid_1 = comp_2_valid;
  assign comp_reset_1 = reset_comp;
  assign comp_result[7:0] = compare_m_axis_result_tdata;
  assign comp_result_valid = compare_m_axis_result_tvalid;
  assign reset_sub_1 = reset_sub;
  assign sub_1_ready = substract_s_axis_a_tready;
  assign sub_1_valid_1 = sub_1_valid;
  assign sub_2_ready = substract_s_axis_b_tready;
  assign sub_2_valid_1 = sub_2_valid;
  assign sub_result[31:0] = substract_m_axis_result_tdata;
  assign sub_result_valid = substract_m_axis_result_tvalid;
  calc_check_floating_point_0_2 compare
       (.aclk(clk_1),
        .aclken(clken_1),
        .aresetn(comp_reset_1),
        .m_axis_result_tdata(compare_m_axis_result_tdata),
        .m_axis_result_tvalid(compare_m_axis_result_tvalid),
        .s_axis_a_tdata(Comp_1_1),
        .s_axis_a_tready(compare_s_axis_a_tready),
        .s_axis_a_tvalid(comp_1_valid_1),
        .s_axis_b_tdata(Comp_2_1),
        .s_axis_b_tready(compare_s_axis_b_tready),
        .s_axis_b_tvalid(comp_2_valid_1));
  calc_check_floating_point_0_1 math_abs
       (.m_axis_result_tdata(math_abs_m_axis_result_tdata),
        .m_axis_result_tvalid(math_abs_m_axis_result_tvalid),
        .s_axis_a_tdata(abs_in_1),
        .s_axis_a_tready(math_abs_s_axis_a_tready),
        .s_axis_a_tvalid(abs_in_valid_1));
  calc_check_floating_point_0_0 substract
       (.aclk(clk_1),
        .aclken(clken_sub_1),
        .aresetn(reset_sub_1),
        .m_axis_result_tdata(substract_m_axis_result_tdata),
        .m_axis_result_tvalid(substract_m_axis_result_tvalid),
        .s_axis_a_tdata(Sub_1_1),
        .s_axis_a_tready(substract_s_axis_a_tready),
        .s_axis_a_tvalid(sub_1_valid_1),
        .s_axis_b_tdata(Sub_2_1),
        .s_axis_b_tready(substract_s_axis_b_tready),
        .s_axis_b_tvalid(sub_2_valid_1));
endmodule
