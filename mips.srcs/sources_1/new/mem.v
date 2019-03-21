`timescale 1ns / 1ps

`ifndef _cntrl_mem
`define _cntrl_mem
`include "cpu.vh"

module mem(
        input clk, en,
        input [`CAP-1:0] addr,
        output reg [`CAP*4-1:0] data_frame // opcode_fromreg_toreg_const
    );
    
    always @(posedge clk) begin
        if (en == 1'b1) begin
            case (addr) //    a_b_c_opcode_exp
                `CAP'h0: data_frame = `DATA_FRAME_SIZE'b0000_0000_0000_0001; // eax = 0b0001
                `CAP'h1: data_frame = `DATA_FRAME_SIZE'b0000_0000_0010_0111; // ecx = 0b0111
                `CAP'h2: data_frame = `DATA_FRAME_SIZE'b0000_0000_0001_0101; // ebx = 0b0101
                `CAP'h3: data_frame = `DATA_FRAME_SIZE'b0100_0001_0010_0000; // ecx = eax + ebx = 0b0110
                `CAP'h4: data_frame = `DATA_FRAME_SIZE'b0111_0000_0000_0001; // JMP 0x01
                default: data_frame = `DATA_FRAME_SIZE'bx;
            endcase
        end
    end
endmodule

`endif
