`timescale 1ns / 1ps

`include "cpu.vh"

module glbl_test;
    reg clk = 1'b1;
    reg rst = 1'b0;
    wire result;
    wire [`CAP-1:0] eax, ebx, ecx;
    
    calc u(
        .clk(clk),
        .rst(rst),
        .eax(eax),
        .ebx(ebx),
        .ecx(ecx)
    );
        
    always #10 clk = ~clk;
    
    initial
    begin
        rst = 1'b1;
        #10 rst = 1'b0;
    end
endmodule
