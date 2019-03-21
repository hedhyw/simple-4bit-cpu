//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2.2 (lin64) Build 2348494 Mon Oct  1 18:25:39 MDT 2018
//Date        : Sun Feb 24 21:40:00 2019
//Host        : hedhyw-Lenovo-ideapad-310-15ISK running 64-bit Ubuntu 18.04.2 LTS
//Command     : generate_target calc.bd
//Design      : calc
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "calc,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=calc,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=6,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "calc.hwdef" *) 
module calc
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET rst, CLK_DOMAIN calc_clk, FREQ_HZ 50000000, PHASE 0.000" *) input clk;
  output [3:0]eax;
  output [3:0]ebx;
  output [3:0]ecx;
  output mem_en;
  output [3:0]op_code;
  output pc_en;
  output [3:0]rdata0;
  output reg_r_en;
  output reg_w_en;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST, POLARITY ACTIVE_HIGH" *) input rst;
  output [3:0]waddr;

  wire [15:0]Net1;
  wire alu_0_c_out;
  wire [3:0]alu_0_result;
  wire cf_0_carry_out;
  wire clk_1;
  wire cntrl_fsm_0_alu_en;
  wire [3:0]cntrl_fsm_0_b;
  wire cntrl_fsm_0_mem_en;
  wire [3:0]cntrl_fsm_0_op_code;
  wire cntrl_fsm_0_pc_en;
  wire [3:0]cntrl_fsm_0_pc_set;
  wire cntrl_fsm_0_pc_set_en;
  wire [3:0]cntrl_fsm_0_raddr0;
  wire [3:0]cntrl_fsm_0_raddr1;
  wire cntrl_fsm_0_reg_r_en;
  wire cntrl_fsm_0_reg_w_en;
  wire [3:0]cntrl_fsm_0_waddr;
  wire [3:0]pc_0_addr;
  wire [3:0]regfile_0_eax;
  wire [3:0]regfile_0_ebx;
  wire [3:0]regfile_0_ecx;
  wire [3:0]regfile_0_rdata;
  wire [3:0]regfile_0_rdata0;
  wire [3:0]regfile_0_rdata1;
  wire rst_1;

  assign addr[3:0] = pc_0_addr;
  assign addr_set[3:0] = cntrl_fsm_0_pc_set;
  assign addr_set_en = cntrl_fsm_0_pc_set_en;
  assign alu_a[3:0] = regfile_0_rdata;
  assign alu_b[3:0] = cntrl_fsm_0_b;
  assign alu_en = cntrl_fsm_0_alu_en;
  assign alu_out[3:0] = alu_0_result;
  assign clk_1 = clk;
  assign eax[3:0] = regfile_0_eax;
  assign ebx[3:0] = regfile_0_ebx;
  assign ecx[3:0] = regfile_0_ecx;
  assign mem_en = cntrl_fsm_0_mem_en;
  assign op_code[3:0] = cntrl_fsm_0_op_code;
  assign pc_en = cntrl_fsm_0_pc_en;
  assign rdata0[3:0] = regfile_0_rdata0;
  assign reg_r_en = cntrl_fsm_0_reg_r_en;
  assign reg_w_en = cntrl_fsm_0_reg_w_en;
  assign rst_1 = rst;
  assign waddr[3:0] = cntrl_fsm_0_waddr;
  calc_alu_0_0 alu_0
       (.a(regfile_0_rdata),
        .b(cntrl_fsm_0_b),
        .c_in(cf_0_carry_out),
        .c_out(alu_0_c_out),
        .clk(clk_1),
        .en(cntrl_fsm_0_alu_en),
        .op_code(cntrl_fsm_0_op_code),
        .result(alu_0_result));
  calc_cf_0_0 cf_0
       (.carry_in(alu_0_c_out),
        .carry_out(cf_0_carry_out),
        .clk(clk_1),
        .en(cntrl_fsm_0_reg_w_en),
        .rst(rst_1));
  calc_cntrl_fsm_0_1 cntrl_fsm_0
       (.a(regfile_0_rdata),
        .alu_en(cntrl_fsm_0_alu_en),
        .b(cntrl_fsm_0_b),
        .clk(clk_1),
        .data_frame(Net1),
        .mem_en(cntrl_fsm_0_mem_en),
        .op_code(cntrl_fsm_0_op_code),
        .pc_inc_en(cntrl_fsm_0_pc_en),
        .pc_set(cntrl_fsm_0_pc_set),
        .pc_set_en(cntrl_fsm_0_pc_set_en),
        .raddr0(cntrl_fsm_0_raddr0),
        .raddr1(cntrl_fsm_0_raddr1),
        .rdata0(regfile_0_rdata0),
        .rdata1(regfile_0_rdata1),
        .reg_r_en(cntrl_fsm_0_reg_r_en),
        .reg_w_en(cntrl_fsm_0_reg_w_en),
        .rst(rst_1),
        .waddr(cntrl_fsm_0_waddr));
  calc_mem_0_0 mem_0
       (.addr(pc_0_addr),
        .clk(clk_1),
        .data_frame(Net1),
        .en(cntrl_fsm_0_mem_en));
  calc_pc_0_0 pc_0
       (.addr(pc_0_addr),
        .clk(clk_1),
        .inc_en(cntrl_fsm_0_pc_en),
        .rst(rst_1),
        .set(cntrl_fsm_0_pc_set),
        .set_en(cntrl_fsm_0_pc_set_en));
  calc_regfile_0_0 regfile_0
       (.clk(clk_1),
        .eax(regfile_0_eax),
        .ebx(regfile_0_ebx),
        .ecx(regfile_0_ecx),
        .r_en(cntrl_fsm_0_reg_r_en),
        .raddr0(cntrl_fsm_0_raddr0),
        .raddr1(cntrl_fsm_0_raddr1),
        .rdata0(regfile_0_rdata0),
        .rdata1(regfile_0_rdata1),
        .rst(rst_1),
        .w_en(cntrl_fsm_0_reg_w_en),
        .waddr(cntrl_fsm_0_waddr),
        .wdata(alu_0_result));
endmodule
