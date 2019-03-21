`timescale 1ns / 1ps

`ifndef _cntrl_comp
`define _cntrl_comp

module comp(
        input clk, en,
        input [3:0] exp, alu_out,
        output reg result
    );
    always @(posedge clk) begin
        if (en == 1'b1) begin
            if (exp == alu_out) begin
                result = 1'b1;
            end else begin
                result = 1'b0;
            end
        end
    end
endmodule

`endif
