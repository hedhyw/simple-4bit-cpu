// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.2 (lin64) Build 2348494 Mon Oct  1 18:25:39 MDT 2018
// Date        : Thu Feb 21 08:05:08 2019
// Host        : hedhyw-Lenovo-ideapad-310-15ISK running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/hedhyw/Development/GraduateWork/MIPS/mips.srcs/sources_1/bd/calc/ip/calc_pc_0_0/calc_pc_0_0_sim_netlist.v
// Design      : calc_pc_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "calc_pc_0_0,pc,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "pc,Vivado 2018.2.2" *) 
(* NotValidForBitStream *)
module calc_pc_0_0
   (clk,
    inc_en,
    set_en,
    rst,
    set,
    addr);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN calc_clk" *) input clk;
  input inc_en;
  input set_en;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH" *) input rst;
  input [3:0]set;
  output [3:0]addr;

  wire [3:0]addr;
  wire clk;
  wire inc_en;
  wire rst;
  wire [3:0]set;
  wire set_en;

  calc_pc_0_0_pc inst
       (.addr(addr),
        .clk(clk),
        .inc_en(inc_en),
        .rst(rst),
        .set(set),
        .set_en(set_en));
endmodule

(* ORIG_REF_NAME = "pc" *) 
module calc_pc_0_0_pc
   (addr,
    clk,
    rst,
    set_en,
    inc_en,
    set);
  output [3:0]addr;
  input clk;
  input rst;
  input set_en;
  input inc_en;
  input [3:0]set;

  wire [3:0]addr;
  wire \addr[3]_i_1_n_0 ;
  wire clk;
  wire inc_en;
  wire [3:0]p_0_in;
  wire rst;
  wire [3:0]set;
  wire set_en;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \addr[0]_i_1 
       (.I0(set[0]),
        .I1(set_en),
        .I2(addr[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \addr[1]_i_1 
       (.I0(set[1]),
        .I1(set_en),
        .I2(addr[0]),
        .I3(addr[1]),
        .O(p_0_in[1]));
  LUT5 #(
    .INIT(32'h8BBBB888)) 
    \addr[2]_i_1 
       (.I0(set[2]),
        .I1(set_en),
        .I2(addr[0]),
        .I3(addr[1]),
        .I4(addr[2]),
        .O(p_0_in[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \addr[3]_i_1 
       (.I0(set_en),
        .I1(inc_en),
        .O(\addr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BBBBBBBB8888888)) 
    \addr[3]_i_2 
       (.I0(set[3]),
        .I1(set_en),
        .I2(addr[1]),
        .I3(addr[0]),
        .I4(addr[2]),
        .I5(addr[3]),
        .O(p_0_in[3]));
  FDCE \addr_reg[0] 
       (.C(clk),
        .CE(\addr[3]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_in[0]),
        .Q(addr[0]));
  FDCE \addr_reg[1] 
       (.C(clk),
        .CE(\addr[3]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_in[1]),
        .Q(addr[1]));
  FDCE \addr_reg[2] 
       (.C(clk),
        .CE(\addr[3]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_in[2]),
        .Q(addr[2]));
  FDCE \addr_reg[3] 
       (.C(clk),
        .CE(\addr[3]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_in[3]),
        .Q(addr[3]));
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
