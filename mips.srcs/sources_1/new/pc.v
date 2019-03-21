`timescale 1ns / 1ps
`include "cpu.vh"
module pc(
    input clk, inc_en, set_en, rst,
    input [`CAP-1:0] set,
    output reg [`CAP-1:0] addr
    );
    
    always @ (posedge clk, posedge rst) begin
        if (rst == 1'b1) begin
            addr = `CAP'd0;
        end else if (set_en == 1'b1) begin
            addr = set;
        end else if (inc_en == 1'b1) begin
            addr = addr + 4'b1;
        end
    end
    
endmodule
