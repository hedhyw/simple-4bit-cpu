// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.2 (lin64) Build 2348494 Mon Oct  1 18:25:39 MDT 2018
// Date        : Thu Feb 21 10:15:12 2019
// Host        : hedhyw-Lenovo-ideapad-310-15ISK running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/hedhyw/Development/GraduateWork/MIPS/mips.srcs/sources_1/bd/calc/ip/calc_mem_0_0/calc_mem_0_0_sim_netlist.v
// Design      : calc_mem_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "calc_mem_0_0,mem,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "mem,Vivado 2018.2.2" *) 
(* NotValidForBitStream *)
module calc_mem_0_0
   (clk,
    en,
    addr,
    data_frame);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN calc_clk" *) input clk;
  input en;
  input [3:0]addr;
  output [15:0]data_frame;

  wire \<const0> ;
  wire [3:0]addr;
  wire clk;
  wire [14:0]\^data_frame ;
  wire en;

  assign data_frame[15] = \<const0> ;
  assign data_frame[14] = \^data_frame [14];
  assign data_frame[13] = \^data_frame [12];
  assign data_frame[12] = \^data_frame [12];
  assign data_frame[11] = \<const0> ;
  assign data_frame[10] = \<const0> ;
  assign data_frame[9] = \<const0> ;
  assign data_frame[8] = \^data_frame [8];
  assign data_frame[7] = \<const0> ;
  assign data_frame[6] = \<const0> ;
  assign data_frame[5:4] = \^data_frame [5:4];
  assign data_frame[3] = \<const0> ;
  assign data_frame[2:0] = \^data_frame [2:0];
  GND GND
       (.G(\<const0> ));
  calc_mem_0_0_mem inst
       (.addr(addr[2:0]),
        .clk(clk),
        .data_frame({\^data_frame [14],\^data_frame [12],\^data_frame [8],\^data_frame [5:4],\^data_frame [2:0]}),
        .en(en));
endmodule

(* ORIG_REF_NAME = "mem" *) 
module calc_mem_0_0_mem
   (data_frame,
    addr,
    en,
    clk);
  output [7:0]data_frame;
  input [2:0]addr;
  input en;
  input clk;

  wire [2:0]addr;
  wire clk;
  wire [7:0]data_frame;
  wire \data_frame[0]_i_1_n_0 ;
  wire \data_frame[14]_i_1_n_0 ;
  wire \data_frame[1]_i_1_n_0 ;
  wire \data_frame[2]_i_1_n_0 ;
  wire \data_frame[4]_i_1_n_0 ;
  wire \data_frame[8]_i_1_n_0 ;
  wire en;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \data_frame[0]_i_1 
       (.I0(addr[1]),
        .I1(addr[0]),
        .O(\data_frame[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_frame[14]_i_1 
       (.I0(addr[1]),
        .I1(addr[0]),
        .I2(addr[2]),
        .O(\data_frame[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_frame[1]_i_1 
       (.I0(addr[0]),
        .I1(addr[1]),
        .O(\data_frame[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_frame[2]_i_1 
       (.I0(addr[0]),
        .I1(addr[1]),
        .O(\data_frame[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_frame[4]_i_1 
       (.I0(addr[1]),
        .I1(addr[0]),
        .O(\data_frame[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_frame[8]_i_1 
       (.I0(addr[0]),
        .I1(addr[1]),
        .O(\data_frame[8]_i_1_n_0 ));
  FDRE \data_frame_reg[0] 
       (.C(clk),
        .CE(en),
        .D(\data_frame[0]_i_1_n_0 ),
        .Q(data_frame[0]),
        .R(1'b0));
  FDRE \data_frame_reg[13] 
       (.C(clk),
        .CE(en),
        .D(addr[2]),
        .Q(data_frame[6]),
        .R(1'b0));
  FDRE \data_frame_reg[14] 
       (.C(clk),
        .CE(en),
        .D(\data_frame[14]_i_1_n_0 ),
        .Q(data_frame[7]),
        .R(1'b0));
  FDRE \data_frame_reg[1] 
       (.C(clk),
        .CE(en),
        .D(\data_frame[1]_i_1_n_0 ),
        .Q(data_frame[1]),
        .R(1'b0));
  FDRE \data_frame_reg[2] 
       (.C(clk),
        .CE(en),
        .D(\data_frame[2]_i_1_n_0 ),
        .Q(data_frame[2]),
        .R(1'b0));
  FDRE \data_frame_reg[4] 
       (.C(clk),
        .CE(en),
        .D(\data_frame[4]_i_1_n_0 ),
        .Q(data_frame[3]),
        .R(1'b0));
  FDRE \data_frame_reg[5] 
       (.C(clk),
        .CE(en),
        .D(addr[0]),
        .Q(data_frame[4]),
        .R(1'b0));
  FDRE \data_frame_reg[8] 
       (.C(clk),
        .CE(en),
        .D(\data_frame[8]_i_1_n_0 ),
        .Q(data_frame[5]),
        .R(1'b0));
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
