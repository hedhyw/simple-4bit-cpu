// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.2 (lin64) Build 2348494 Mon Oct  1 18:25:39 MDT 2018
// Date        : Wed Feb 20 16:05:20 2019
// Host        : hedhyw-Lenovo-ideapad-310-15ISK running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/hedhyw/Development/GraduateWork/MIPS/mips.srcs/sources_1/bd/calc/ip/calc_cf_0_0/calc_cf_0_0_stub.v
// Design      : calc_cf_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "cf,Vivado 2018.2.2" *)
module calc_cf_0_0(carry_in, clk, rst, en, carry_out)
/* synthesis syn_black_box black_box_pad_pin="carry_in,clk,rst,en,carry_out" */;
  input carry_in;
  input clk;
  input rst;
  input en;
  output carry_out;
endmodule
