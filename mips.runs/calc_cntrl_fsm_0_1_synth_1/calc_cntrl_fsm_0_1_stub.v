// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.2 (lin64) Build 2348494 Mon Oct  1 18:25:39 MDT 2018
// Date        : Thu Feb 21 10:15:16 2019
// Host        : hedhyw-Lenovo-ideapad-310-15ISK running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ calc_cntrl_fsm_0_1_stub.v
// Design      : calc_cntrl_fsm_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "cntrl_fsm,Vivado 2018.2.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rst, data_frame, rdata0, rdata1, pc_inc_en, 
  pc_set_en, mem_en, reg_r_en, alu_en, reg_w_en, pc_set, raddr0, raddr1, waddr, op_code, b, a)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,data_frame[15:0],rdata0[3:0],rdata1[3:0],pc_inc_en,pc_set_en,mem_en,reg_r_en,alu_en,reg_w_en,pc_set[3:0],raddr0[3:0],raddr1[3:0],waddr[3:0],op_code[3:0],b[3:0],a[3:0]" */;
  input clk;
  input rst;
  input [15:0]data_frame;
  input [3:0]rdata0;
  input [3:0]rdata1;
  output pc_inc_en;
  output pc_set_en;
  output mem_en;
  output reg_r_en;
  output alu_en;
  output reg_w_en;
  output [3:0]pc_set;
  output [3:0]raddr0;
  output [3:0]raddr1;
  output [3:0]waddr;
  output [3:0]op_code;
  output [3:0]b;
  output [3:0]a;
endmodule
