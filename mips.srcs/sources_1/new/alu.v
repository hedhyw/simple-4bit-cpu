`timescale 1ns / 1ps

`ifndef _alu
`define _alu

`include "cpu.vh"

module alu(
        input                   en,
        input                   clk,
        input                   c_in,
		input       [`CAP-1:0]  op_code,
        input       [`CAP-1:0]  a, b,
        output reg              c_out,
		output reg  [`CAP-1:0]  result
    );

	always @(posedge clk) begin
        if (en == 1) begin
            case (op_code)
                `ASM_LDI:  result <= b;
                `ASM_CLR:  result <= `CAP'd0;
                `ASM_SER:  result <= ~`CAP'd0;
                `ASM_MOV:  result <= a;
                `ASM_ADD:  { c_out, result } <= a + b;
                `ASM_ADDI: { c_out, result } <= a + b;
                `ASM_ADC:  { c_out, result } <= (c_in == 0 ? a + b : a + b + `CAP'd1);
                `ASM_ADCI: { c_out, result } <= (c_in == 0 ? a + b : a + b + `CAP'd1);
                `ASM_INC:  { c_out, result } <= a + `CAP'd1;
//                `ASM_DEC:  result <= a - `CAP'd1;
                `ASM_AND:  result <= a & b;
                `ASM_ANDI: result <= a & b;
                `ASM_OR:   result <= a | b;
                `ASM_ORI:  result <= a | b;
                `ASM_COM:  result <= ~a;
                `ASM_EOR:  result <= a ^ b;
                default:   result <= `CAP'd0;
            endcase
         end
	end

endmodule

`endif
