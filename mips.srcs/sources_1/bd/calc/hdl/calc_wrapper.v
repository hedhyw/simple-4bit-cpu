//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2.2 (lin64) Build 2348494 Mon Oct  1 18:25:39 MDT 2018
//Date        : Sun Feb 24 21:40:00 2019
//Host        : hedhyw-Lenovo-ideapad-310-15ISK running 64-bit Ubuntu 18.04.2 LTS
//Command     : generate_target calc_wrapper.bd
//Design      : calc_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module calc_wrapper
   (addr,
    addr_set,
    addr_set_en,
    alu_a,
    alu_b,
    alu_en,
    alu_out,
    clk,
    eax,
    ebx,
    ecx,
    mem_en,
    op_code,
    pc_en,
    rdata0,
    reg_r_en,
    reg_w_en,
    rst,
    waddr);
  output [3:0]addr;
  output [3:0]addr_set;
  output addr_set_en;
  output [3:0]alu_a;
  output [3:0]alu_b;
  output alu_en;
  output [3:0]alu_out;
  input clk;
  output [3:0]eax;
  output [3:0]ebx;
  output [3:0]ecx;
  output mem_en;
  output [3:0]op_code;
  output pc_en;
  output [3:0]rdata0;
  output reg_r_en;
  output reg_w_en;
  input rst;
  output [3:0]waddr;

  wire [3:0]addr;
  wire [3:0]addr_set;
  wire addr_set_en;
  wire [3:0]alu_a;
  wire [3:0]alu_b;
  wire alu_en;
  wire [3:0]alu_out;
  wire clk;
  wire [3:0]eax;
  wire [3:0]ebx;
  wire [3:0]ecx;
  wire mem_en;
  wire [3:0]op_code;
  wire pc_en;
  wire [3:0]rdata0;
  wire reg_r_en;
  wire reg_w_en;
  wire rst;
  wire [3:0]waddr;

  calc calc_i
       (.addr(addr),
        .addr_set(addr_set),
        .addr_set_en(addr_set_en),
        .alu_a(alu_a),
        .alu_b(alu_b),
        .alu_en(alu_en),
        .alu_out(alu_out),
        .clk(clk),
        .eax(eax),
        .ebx(ebx),
        .ecx(ecx),
        .mem_en(mem_en),
        .op_code(op_code),
        .pc_en(pc_en),
        .rdata0(rdata0),
        .reg_r_en(reg_r_en),
        .reg_w_en(reg_w_en),
        .rst(rst),
        .waddr(waddr));
endmodule
