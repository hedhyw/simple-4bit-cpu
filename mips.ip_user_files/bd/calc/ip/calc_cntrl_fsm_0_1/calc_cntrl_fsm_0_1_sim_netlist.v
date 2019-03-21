// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.2 (lin64) Build 2348494 Mon Oct  1 18:25:39 MDT 2018
// Date        : Thu Feb 21 10:15:23 2019
// Host        : hedhyw-Lenovo-ideapad-310-15ISK running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/hedhyw/Development/GraduateWork/MIPS/mips.srcs/sources_1/bd/calc/ip/calc_cntrl_fsm_0_1/calc_cntrl_fsm_0_1_sim_netlist.v
// Design      : calc_cntrl_fsm_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "calc_cntrl_fsm_0_1,cntrl_fsm,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "cntrl_fsm,Vivado 2018.2.2" *) 
(* NotValidForBitStream *)
module calc_cntrl_fsm_0_1
   (clk,
    rst,
    data_frame,
    rdata0,
    rdata1,
    pc_inc_en,
    pc_set_en,
    mem_en,
    reg_r_en,
    alu_en,
    reg_w_en,
    pc_set,
    raddr0,
    raddr1,
    waddr,
    op_code,
    b,
    a);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN calc_clk" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH" *) input rst;
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

  wire alu_en;
  wire [3:0]b;
  wire clk;
  wire [15:0]data_frame;
  wire mem_en;
  wire pc_inc_en;
  wire pc_set_en;
  wire [3:0]raddr1;
  wire [3:0]rdata0;
  wire [3:0]rdata1;
  wire reg_r_en;
  wire reg_w_en;
  wire rst;

  assign a[3:0] = rdata0;
  assign op_code[3:0] = data_frame[15:12];
  assign pc_set[3:0] = data_frame[3:0];
  assign raddr0[3:0] = data_frame[11:8];
  assign waddr[3:0] = data_frame[7:4];
  calc_cntrl_fsm_0_1_cntrl_fsm inst
       (.b(b),
        .clk(clk),
        .data_frame({data_frame[15:12],data_frame[7:0]}),
        .out({pc_inc_en,reg_w_en,alu_en,pc_set_en,reg_r_en,mem_en}),
        .raddr1(raddr1),
        .rdata1(rdata1),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "cntrl_fsm" *) 
module calc_cntrl_fsm_0_1_cntrl_fsm
   (out,
    raddr1,
    b,
    data_frame,
    clk,
    rst,
    rdata1);
  output [5:0]out;
  output [3:0]raddr1;
  output [3:0]b;
  input [11:0]data_frame;
  input clk;
  input rst;
  input [3:0]rdata1;

  wire \FSM_onehot_cur_state[1]_i_1_n_0 ;
  wire \FSM_onehot_cur_state[3]_i_1_n_0 ;
  wire \FSM_onehot_cur_state[4]_i_1_n_0 ;
  wire \FSM_onehot_cur_state[7]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cur_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cur_state_reg_n_0_[7] ;
  wire [3:0]b;
  wire clk;
  wire [11:0]data_frame;
  (* RTL_KEEP = "yes" *) wire [5:0]out;
  wire [3:0]raddr1;
  wire [3:0]rdata1;
  wire rst;

  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_cur_state[1]_i_1 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_cur_state_reg_n_0_[7] ),
        .O(\FSM_onehot_cur_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \FSM_onehot_cur_state[3]_i_1 
       (.I0(out[1]),
        .I1(data_frame[10]),
        .I2(data_frame[11]),
        .I3(data_frame[8]),
        .I4(data_frame[9]),
        .O(\FSM_onehot_cur_state[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA2AAAAAA)) 
    \FSM_onehot_cur_state[4]_i_1 
       (.I0(out[1]),
        .I1(data_frame[10]),
        .I2(data_frame[11]),
        .I3(data_frame[8]),
        .I4(data_frame[9]),
        .O(\FSM_onehot_cur_state[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_cur_state[7]_i_1 
       (.I0(out[2]),
        .I1(out[5]),
        .O(\FSM_onehot_cur_state[7]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "S0_INIT:00000001,S1_FETCH:00000010,S2_REG_R:00000100,S4_REG_W:00100000,S6_PC_INC:01000000,S7_DONE:10000000,S3_ALU:00010000,S5_ADDR_W:00001000" *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_cur_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst),
        .Q(\FSM_onehot_cur_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "S0_INIT:00000001,S1_FETCH:00000010,S2_REG_R:00000100,S4_REG_W:00100000,S6_PC_INC:01000000,S7_DONE:10000000,S3_ALU:00010000,S5_ADDR_W:00001000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_cur_state[1]_i_1_n_0 ),
        .Q(out[0]));
  (* FSM_ENCODED_STATES = "S0_INIT:00000001,S1_FETCH:00000010,S2_REG_R:00000100,S4_REG_W:00100000,S6_PC_INC:01000000,S7_DONE:10000000,S3_ALU:00010000,S5_ADDR_W:00001000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(out[0]),
        .Q(out[1]));
  (* FSM_ENCODED_STATES = "S0_INIT:00000001,S1_FETCH:00000010,S2_REG_R:00000100,S4_REG_W:00100000,S6_PC_INC:01000000,S7_DONE:10000000,S3_ALU:00010000,S5_ADDR_W:00001000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_cur_state[3]_i_1_n_0 ),
        .Q(out[2]));
  (* FSM_ENCODED_STATES = "S0_INIT:00000001,S1_FETCH:00000010,S2_REG_R:00000100,S4_REG_W:00100000,S6_PC_INC:01000000,S7_DONE:10000000,S3_ALU:00010000,S5_ADDR_W:00001000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_cur_state[4]_i_1_n_0 ),
        .Q(out[3]));
  (* FSM_ENCODED_STATES = "S0_INIT:00000001,S1_FETCH:00000010,S2_REG_R:00000100,S4_REG_W:00100000,S6_PC_INC:01000000,S7_DONE:10000000,S3_ALU:00010000,S5_ADDR_W:00001000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(out[3]),
        .Q(out[4]));
  (* FSM_ENCODED_STATES = "S0_INIT:00000001,S1_FETCH:00000010,S2_REG_R:00000100,S4_REG_W:00100000,S6_PC_INC:01000000,S7_DONE:10000000,S3_ALU:00010000,S5_ADDR_W:00001000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(out[4]),
        .Q(out[5]));
  (* FSM_ENCODED_STATES = "S0_INIT:00000001,S1_FETCH:00000010,S2_REG_R:00000100,S4_REG_W:00100000,S6_PC_INC:01000000,S7_DONE:10000000,S3_ALU:00010000,S5_ADDR_W:00001000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_cur_state[7]_i_1_n_0 ),
        .Q(\FSM_onehot_cur_state_reg_n_0_[7] ));
  LUT6 #(
    .INIT(64'hFFFBFFEB00080028)) 
    \b[0]_INST_0 
       (.I0(rdata1[0]),
        .I1(data_frame[11]),
        .I2(data_frame[10]),
        .I3(data_frame[8]),
        .I4(data_frame[9]),
        .I5(data_frame[0]),
        .O(b[0]));
  LUT6 #(
    .INIT(64'hFFFBFFEB00080028)) 
    \b[1]_INST_0 
       (.I0(rdata1[1]),
        .I1(data_frame[11]),
        .I2(data_frame[10]),
        .I3(data_frame[8]),
        .I4(data_frame[9]),
        .I5(data_frame[1]),
        .O(b[1]));
  LUT6 #(
    .INIT(64'hFFFBFFEB00080028)) 
    \b[2]_INST_0 
       (.I0(rdata1[2]),
        .I1(data_frame[11]),
        .I2(data_frame[10]),
        .I3(data_frame[8]),
        .I4(data_frame[9]),
        .I5(data_frame[2]),
        .O(b[2]));
  LUT6 #(
    .INIT(64'hFFFBFFEB00080028)) 
    \b[3]_INST_0 
       (.I0(rdata1[3]),
        .I1(data_frame[11]),
        .I2(data_frame[10]),
        .I3(data_frame[8]),
        .I4(data_frame[9]),
        .I5(data_frame[3]),
        .O(b[3]));
  LUT6 #(
    .INIT(64'hFFFBFFEB00080028)) 
    \raddr1[0]_INST_0 
       (.I0(data_frame[0]),
        .I1(data_frame[11]),
        .I2(data_frame[10]),
        .I3(data_frame[8]),
        .I4(data_frame[9]),
        .I5(data_frame[4]),
        .O(raddr1[0]));
  LUT6 #(
    .INIT(64'hFFFBFFEB00080028)) 
    \raddr1[1]_INST_0 
       (.I0(data_frame[1]),
        .I1(data_frame[11]),
        .I2(data_frame[10]),
        .I3(data_frame[8]),
        .I4(data_frame[9]),
        .I5(data_frame[5]),
        .O(raddr1[1]));
  LUT6 #(
    .INIT(64'hFFFBFFEB00080028)) 
    \raddr1[2]_INST_0 
       (.I0(data_frame[2]),
        .I1(data_frame[11]),
        .I2(data_frame[10]),
        .I3(data_frame[8]),
        .I4(data_frame[9]),
        .I5(data_frame[6]),
        .O(raddr1[2]));
  LUT6 #(
    .INIT(64'hFFFBFFEB00080028)) 
    \raddr1[3]_INST_0 
       (.I0(data_frame[3]),
        .I1(data_frame[11]),
        .I2(data_frame[10]),
        .I3(data_frame[8]),
        .I4(data_frame[9]),
        .I5(data_frame[7]),
        .O(raddr1[3]));
endmodule
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
