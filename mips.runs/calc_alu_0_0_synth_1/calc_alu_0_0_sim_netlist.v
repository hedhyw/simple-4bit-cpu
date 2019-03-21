// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.2 (lin64) Build 2348494 Mon Oct  1 18:25:39 MDT 2018
// Date        : Thu Feb 21 08:05:09 2019
// Host        : hedhyw-Lenovo-ideapad-310-15ISK running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ calc_alu_0_0_sim_netlist.v
// Design      : calc_alu_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu
   (result,
    c_out,
    en,
    clk,
    op_code,
    b,
    a,
    c_in);
  output [3:0]result;
  output c_out;
  input en;
  input clk;
  input [3:0]op_code;
  input [3:0]b;
  input [3:0]a;
  input c_in;

  wire [3:0]a;
  wire [3:0]b;
  wire c_in;
  wire c_out;
  wire c_out_i_1_n_0;
  wire c_out_i_2_n_0;
  wire c_out_i_3_n_0;
  wire c_out_i_4_n_0;
  wire c_out_i_5_n_0;
  wire c_out_i_6_n_0;
  wire clk;
  wire en;
  wire [3:0]op_code;
  wire [3:0]result;
  wire \result[0]_i_2_n_0 ;
  wire \result[0]_i_3_n_0 ;
  wire \result[1]_i_2_n_0 ;
  wire \result[1]_i_3_n_0 ;
  wire \result[1]_i_4_n_0 ;
  wire \result[1]_i_5_n_0 ;
  wire \result[2]_i_2_n_0 ;
  wire \result[2]_i_3_n_0 ;
  wire \result[2]_i_4_n_0 ;
  wire \result[2]_i_5_n_0 ;
  wire \result[2]_i_6_n_0 ;
  wire \result[2]_i_7_n_0 ;
  wire \result[2]_i_8_n_0 ;
  wire \result[3]_i_2_n_0 ;
  wire \result[3]_i_3_n_0 ;
  wire \result[3]_i_4_n_0 ;
  wire \result[3]_i_5_n_0 ;
  wire \result[3]_i_6_n_0 ;
  wire \result[3]_i_7_n_0 ;
  wire [3:0]result_0;

  LUT4 #(
    .INIT(16'hEFE0)) 
    c_out_i_1
       (.I0(c_out_i_2_n_0),
        .I1(c_out_i_3_n_0),
        .I2(c_out_i_4_n_0),
        .I3(c_out),
        .O(c_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hFAA00000FCC00000)) 
    c_out_i_2
       (.I0(c_out_i_5_n_0),
        .I1(c_out_i_6_n_0),
        .I2(a[3]),
        .I3(b[3]),
        .I4(op_code[3]),
        .I5(c_in),
        .O(c_out_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000A0A00000FCC0)) 
    c_out_i_3
       (.I0(\result[3]_i_4_n_0 ),
        .I1(c_out_i_6_n_0),
        .I2(a[3]),
        .I3(b[3]),
        .I4(op_code[3]),
        .I5(op_code[1]),
        .O(c_out_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80800888)) 
    c_out_i_4
       (.I0(en),
        .I1(op_code[2]),
        .I2(op_code[1]),
        .I3(op_code[0]),
        .I4(op_code[3]),
        .O(c_out_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    c_out_i_5
       (.I0(a[0]),
        .I1(b[0]),
        .I2(a[1]),
        .I3(b[1]),
        .I4(a[2]),
        .I5(b[2]),
        .O(c_out_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFF880F8800000)) 
    c_out_i_6
       (.I0(b[0]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(b[1]),
        .I4(a[2]),
        .I5(b[2]),
        .O(c_out_i_6_n_0));
  FDRE c_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(c_out_i_1_n_0),
        .Q(c_out),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h035CF454)) 
    \result[0]_i_2 
       (.I0(op_code[0]),
        .I1(b[0]),
        .I2(op_code[1]),
        .I3(a[0]),
        .I4(op_code[2]),
        .O(\result[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF55A5A825FF05A82)) 
    \result[0]_i_3 
       (.I0(op_code[2]),
        .I1(op_code[0]),
        .I2(a[0]),
        .I3(b[0]),
        .I4(op_code[1]),
        .I5(c_in),
        .O(\result[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBB8B8B8B8B8)) 
    \result[1]_i_1 
       (.I0(\result[1]_i_2_n_0 ),
        .I1(op_code[3]),
        .I2(\result[1]_i_3_n_0 ),
        .I3(a[1]),
        .I4(a[0]),
        .I5(\result[3]_i_5_n_0 ),
        .O(result_0[1]));
  LUT6 #(
    .INIT(64'hFFEE638800EE6388)) 
    \result[1]_i_2 
       (.I0(b[1]),
        .I1(a[1]),
        .I2(op_code[0]),
        .I3(op_code[2]),
        .I4(op_code[1]),
        .I5(\result[1]_i_4_n_0 ),
        .O(\result[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F000FF960096CC)) 
    \result[1]_i_3 
       (.I0(\result[1]_i_5_n_0 ),
        .I1(b[1]),
        .I2(a[1]),
        .I3(op_code[2]),
        .I4(op_code[0]),
        .I5(op_code[1]),
        .O(\result[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \result[1]_i_4 
       (.I0(a[1]),
        .I1(b[1]),
        .I2(c_in),
        .I3(b[0]),
        .I4(a[0]),
        .O(\result[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[1]_i_5 
       (.I0(b[0]),
        .I1(a[0]),
        .O(\result[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBAFFBAFFBAFFBA00)) 
    \result[2]_i_1 
       (.I0(\result[2]_i_2_n_0 ),
        .I1(\result[2]_i_3_n_0 ),
        .I2(\result[2]_i_4_n_0 ),
        .I3(op_code[3]),
        .I4(\result[2]_i_5_n_0 ),
        .I5(\result[2]_i_6_n_0 ),
        .O(result_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h333C3804)) 
    \result[2]_i_2 
       (.I0(op_code[0]),
        .I1(op_code[2]),
        .I2(op_code[1]),
        .I3(a[2]),
        .I4(b[2]),
        .O(\result[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \result[2]_i_3 
       (.I0(op_code[2]),
        .I1(op_code[1]),
        .O(\result[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h011FFEE0077FF880)) 
    \result[2]_i_4 
       (.I0(a[0]),
        .I1(b[0]),
        .I2(a[1]),
        .I3(b[1]),
        .I4(\result[2]_i_7_n_0 ),
        .I5(c_in),
        .O(\result[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00CC00FFF000F0AA)) 
    \result[2]_i_5 
       (.I0(b[2]),
        .I1(a[2]),
        .I2(\result[2]_i_8_n_0 ),
        .I3(op_code[2]),
        .I4(op_code[0]),
        .I5(op_code[1]),
        .O(\result[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0020202020000000)) 
    \result[2]_i_6 
       (.I0(op_code[2]),
        .I1(op_code[0]),
        .I2(op_code[1]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\result[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \result[2]_i_7 
       (.I0(a[2]),
        .I1(b[2]),
        .O(\result[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hE88817771777E888)) 
    \result[2]_i_8 
       (.I0(b[1]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(b[0]),
        .I4(b[2]),
        .I5(a[2]),
        .O(\result[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBB8B8B8B8B8)) 
    \result[3]_i_1 
       (.I0(\result[3]_i_2_n_0 ),
        .I1(op_code[3]),
        .I2(\result[3]_i_3_n_0 ),
        .I3(a[3]),
        .I4(\result[3]_i_4_n_0 ),
        .I5(\result[3]_i_5_n_0 ),
        .O(result_0[3]));
  LUT6 #(
    .INIT(64'hAABBBBAAABABBABA)) 
    \result[3]_i_2 
       (.I0(\result[3]_i_6_n_0 ),
        .I1(\result[2]_i_3_n_0 ),
        .I2(c_out_i_6_n_0),
        .I3(c_out_i_5_n_0),
        .I4(\result[3]_i_7_n_0 ),
        .I5(c_in),
        .O(\result[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F000FF960096CC)) 
    \result[3]_i_3 
       (.I0(c_out_i_6_n_0),
        .I1(b[3]),
        .I2(a[3]),
        .I3(op_code[2]),
        .I4(op_code[0]),
        .I5(op_code[1]),
        .O(\result[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result[3]_i_4 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[1]),
        .O(\result[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \result[3]_i_5 
       (.I0(op_code[2]),
        .I1(op_code[0]),
        .I2(op_code[1]),
        .O(\result[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h333C3804)) 
    \result[3]_i_6 
       (.I0(op_code[0]),
        .I1(op_code[2]),
        .I2(op_code[1]),
        .I3(a[3]),
        .I4(b[3]),
        .O(\result[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \result[3]_i_7 
       (.I0(a[3]),
        .I1(b[3]),
        .O(\result[3]_i_7_n_0 ));
  FDRE \result_reg[0] 
       (.C(clk),
        .CE(en),
        .D(result_0[0]),
        .Q(result[0]),
        .R(1'b0));
  MUXF7 \result_reg[0]_i_1 
       (.I0(\result[0]_i_2_n_0 ),
        .I1(\result[0]_i_3_n_0 ),
        .O(result_0[0]),
        .S(op_code[3]));
  FDRE \result_reg[1] 
       (.C(clk),
        .CE(en),
        .D(result_0[1]),
        .Q(result[1]),
        .R(1'b0));
  FDRE \result_reg[2] 
       (.C(clk),
        .CE(en),
        .D(result_0[2]),
        .Q(result[2]),
        .R(1'b0));
  FDRE \result_reg[3] 
       (.C(clk),
        .CE(en),
        .D(result_0[3]),
        .Q(result[3]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "calc_alu_0_0,alu,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "alu,Vivado 2018.2.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (en,
    clk,
    c_in,
    op_code,
    a,
    b,
    c_out,
    result);
  input en;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN calc_clk" *) input clk;
  input c_in;
  input [3:0]op_code;
  input [3:0]a;
  input [3:0]b;
  output c_out;
  output [3:0]result;

  wire [3:0]a;
  wire [3:0]b;
  wire c_in;
  wire c_out;
  wire clk;
  wire en;
  wire [3:0]op_code;
  wire [3:0]result;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu inst
       (.a(a),
        .b(b),
        .c_in(c_in),
        .c_out(c_out),
        .clk(clk),
        .en(en),
        .op_code(op_code),
        .result(result));
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
