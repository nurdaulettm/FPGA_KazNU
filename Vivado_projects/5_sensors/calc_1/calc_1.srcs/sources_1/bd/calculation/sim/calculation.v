//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Sat Sep  1 14:26:38 2018
//Host        : BAKYTZHAN-PC running 64-bit major release  (build 9200)
//Command     : generate_target calculation.bd
//Design      : calculation
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "calculation,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=calculation,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "calculation.hwdef" *) 
module calculation
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.A DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.A, LAYERED_METADATA undef" *) input [31:0]A;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B, LAYERED_METADATA undef" *) input [31:0]B;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.C DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.C, LAYERED_METADATA undef" *) input [31:0]C;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.D DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.D, LAYERED_METADATA undef" *) input [31:0]D;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.E DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.E, LAYERED_METADATA undef" *) input [31:0]E;
  output a_ready;
  input a_valid;
  output b_ready;
  input b_valid;
  output c_ready;
  input c_valid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET reset_1:reset_2:reset_3, CLK_DOMAIN calculation_clk, FREQ_HZ 100000000, PHASE 0.000" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 CE.CLKEN_1 CE" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CE.CLKEN_1, POLARITY ACTIVE_HIGH" *) input clken_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 CE.CLKEN_2 CE" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CE.CLKEN_2, POLARITY ACTIVE_HIGH" *) input clken_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 CE.CLKEN_3 CE" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CE.CLKEN_3, POLARITY ACTIVE_HIGH" *) input clken_3;
  output d_ready;
  input d_valid;
  output e_ready;
  input e_valid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.K DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.K, LAYERED_METADATA undef" *) input [31:0]k;
  output k_ready;
  input k_valid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_1 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_1, POLARITY ACTIVE_LOW" *) input reset_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_2 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_2, POLARITY ACTIVE_LOW" *) input reset_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_3 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_3, POLARITY ACTIVE_LOW" *) input reset_3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.RESULT_1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.RESULT_1, LAYERED_METADATA undef" *) output [31:0]result_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.RESULT_1_INPUT DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.RESULT_1_INPUT, LAYERED_METADATA undef" *) input [31:0]result_1_input;
  output result_1_input_ready;
  input result_1_input_valid;
  output result_1_valid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.RESULT_2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.RESULT_2, LAYERED_METADATA undef" *) output [31:0]result_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.RESULT_2_INPUT DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.RESULT_2_INPUT, LAYERED_METADATA undef" *) input [31:0]result_2_input;
  output result_2_input_ready;
  input result_2_input_valid;
  output result_2_valid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.RESULT_3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.RESULT_3, LAYERED_METADATA undef" *) output [31:0]result_3;
  output result_3_valid;

  wire [31:0]A_1;
  wire [31:0]B_1;
  wire [31:0]C_1;
  wire [31:0]D_1;
  wire [31:0]E_1;
  wire a_valid_1;
  wire [31:0]add_m_axis_result_tdata;
  wire add_m_axis_result_tvalid;
  wire add_s_axis_a_tready;
  wire add_s_axis_b_tready;
  wire b_valid_1;
  wire c_valid_1;
  wire clk_1;
  wire clken_1_1;
  wire clken_2_1;
  wire clken_3_1;
  wire d_valid_1;
  wire e_valid_1;
  wire [31:0]k_1;
  wire k_valid_1;
  wire [31:0]mult_and_add_1_m_axis_result_tdata;
  wire mult_and_add_1_m_axis_result_tvalid;
  wire mult_and_add_1_s_axis_a_tready;
  wire mult_and_add_1_s_axis_b_tready;
  wire mult_and_add_1_s_axis_c_tready;
  wire [31:0]mult_and_add_2_m_axis_result_tdata;
  wire mult_and_add_2_m_axis_result_tvalid;
  wire mult_and_add_2_s_axis_a_tready;
  wire mult_and_add_2_s_axis_b_tready;
  wire mult_and_add_2_s_axis_c_tready;
  wire reset_1_1;
  wire reset_2_1;
  wire reset_3_1;
  wire [31:0]result_1_input_1;
  wire result_1_input_valid_1;
  wire [31:0]result_2_input_1;
  wire result_2_input_valid_1;

  assign A_1 = A[31:0];
  assign B_1 = B[31:0];
  assign C_1 = C[31:0];
  assign D_1 = D[31:0];
  assign E_1 = E[31:0];
  assign a_ready = mult_and_add_1_s_axis_a_tready;
  assign a_valid_1 = a_valid;
  assign b_ready = mult_and_add_1_s_axis_b_tready;
  assign b_valid_1 = b_valid;
  assign c_ready = mult_and_add_1_s_axis_c_tready;
  assign c_valid_1 = c_valid;
  assign clk_1 = clk;
  assign clken_1_1 = clken_1;
  assign clken_2_1 = clken_2;
  assign clken_3_1 = clken_3;
  assign d_ready = add_s_axis_b_tready;
  assign d_valid_1 = d_valid;
  assign e_ready = mult_and_add_2_s_axis_c_tready;
  assign e_valid_1 = e_valid;
  assign k_1 = k[31:0];
  assign k_ready = mult_and_add_2_s_axis_a_tready;
  assign k_valid_1 = k_valid;
  assign reset_1_1 = reset_1;
  assign reset_2_1 = reset_2;
  assign reset_3_1 = reset_3;
  assign result_1[31:0] = mult_and_add_1_m_axis_result_tdata;
  assign result_1_input_1 = result_1_input[31:0];
  assign result_1_input_ready = add_s_axis_a_tready;
  assign result_1_input_valid_1 = result_1_input_valid;
  assign result_1_valid = mult_and_add_1_m_axis_result_tvalid;
  assign result_2[31:0] = add_m_axis_result_tdata;
  assign result_2_input_1 = result_2_input[31:0];
  assign result_2_input_ready = mult_and_add_2_s_axis_b_tready;
  assign result_2_input_valid_1 = result_2_input_valid;
  assign result_2_valid = add_m_axis_result_tvalid;
  assign result_3[31:0] = mult_and_add_2_m_axis_result_tdata;
  assign result_3_valid = mult_and_add_2_m_axis_result_tvalid;
  calculation_floating_point_1_0 add
       (.aclk(clk_1),
        .aclken(clken_2_1),
        .aresetn(reset_2_1),
        .m_axis_result_tdata(add_m_axis_result_tdata),
        .m_axis_result_tvalid(add_m_axis_result_tvalid),
        .s_axis_a_tdata(result_1_input_1),
        .s_axis_a_tready(add_s_axis_a_tready),
        .s_axis_a_tvalid(result_1_input_valid_1),
        .s_axis_b_tdata(D_1),
        .s_axis_b_tready(add_s_axis_b_tready),
        .s_axis_b_tvalid(d_valid_1));
  calculation_floating_point_0_0 mult_and_add_1
       (.aclk(clk_1),
        .aclken(clken_1_1),
        .aresetn(reset_1_1),
        .m_axis_result_tdata(mult_and_add_1_m_axis_result_tdata),
        .m_axis_result_tvalid(mult_and_add_1_m_axis_result_tvalid),
        .s_axis_a_tdata(A_1),
        .s_axis_a_tready(mult_and_add_1_s_axis_a_tready),
        .s_axis_a_tvalid(a_valid_1),
        .s_axis_b_tdata(B_1),
        .s_axis_b_tready(mult_and_add_1_s_axis_b_tready),
        .s_axis_b_tvalid(b_valid_1),
        .s_axis_c_tdata(C_1),
        .s_axis_c_tready(mult_and_add_1_s_axis_c_tready),
        .s_axis_c_tvalid(c_valid_1));
  calculation_floating_point_2_0 mult_and_add_2
       (.aclk(clk_1),
        .aclken(clken_3_1),
        .aresetn(reset_3_1),
        .m_axis_result_tdata(mult_and_add_2_m_axis_result_tdata),
        .m_axis_result_tvalid(mult_and_add_2_m_axis_result_tvalid),
        .s_axis_a_tdata(k_1),
        .s_axis_a_tready(mult_and_add_2_s_axis_a_tready),
        .s_axis_a_tvalid(k_valid_1),
        .s_axis_b_tdata(result_2_input_1),
        .s_axis_b_tready(mult_and_add_2_s_axis_b_tready),
        .s_axis_b_tvalid(result_2_input_valid_1),
        .s_axis_c_tdata(E_1),
        .s_axis_c_tready(mult_and_add_2_s_axis_c_tready),
        .s_axis_c_tvalid(e_valid_1));
endmodule
