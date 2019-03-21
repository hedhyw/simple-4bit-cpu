`timescale 1ns / 1ps

`include "cpu.vh"

module regfile(
    input clk, r_en, w_en, rst,
    input [`CAP-1:0] raddr0, raddr1, waddr, wdata,
    output reg [`CAP-1:0] rdata0, rdata1,
    output [`CAP-1:0] eax, ebx, ecx
    );

    integer i;

    reg [`CAP-1:0] regs [`REG_COUNT-1:0];

    assign eax = regs[0];
    assign ebx = regs[1];
    assign ecx = regs[2];

    always @ (posedge clk, posedge rst) begin
        if (rst == 1'b1) begin
            for (i = 0; i < `REG_COUNT; i = i + 1) begin
                regs[i] = `CAP'd0;
            end
        end else if (r_en == 1'b1) begin
            rdata0 <= regs[raddr0];
            rdata1 <= regs[raddr1];
        end else if (w_en == 1'b1) begin
            regs[waddr] <= wdata;
        end
    end
endmodule
