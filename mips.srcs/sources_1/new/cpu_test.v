`timescale 1ns / 1ps

`include "cpu.vh"

module cpu_test;
    reg clk = 1'b1;
    reg rst = 1'b0;
    wire [`CAP-1:0] eax, ebx, ecx, addr, op_code, alu_a, alu_b, alu_out, rdata0, waddr, addr_set;
    wire pc_en, mem_en, reg_w_en, reg_r_en, alu_en, addr_set_en;
    
    calc u(
        .clk(clk),
        .rst(rst),
        .eax(eax),
        .ebx(ebx),
        .ecx(ecx),
        .addr(addr),
        .alu_a(alu_a),
        .alu_b(alu_b),
        .alu_out(alu_out),
        .op_code(op_code),
        .pc_en(pc_en),
        .mem_en(mem_en),
        .reg_w_en(reg_w_en),
        .reg_r_en(reg_r_en),
        .alu_en(alu_en),
        .rdata0(rdata0),
        .waddr(waddr),
        .addr_set_en(addr_set_en),
        .addr_set(addr_set)
    );

    always #10 clk = ~clk;

    initial
    begin
        rst = 1'b1;
        #10 rst = 1'b0;
    end
endmodule
