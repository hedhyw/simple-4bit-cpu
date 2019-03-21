`timescale 1ns / 1ps

`include "cpu.vh"

`define MAX_MEM 2 ** `CAP

module mem_test;
    integer i = 0;
    reg clk = 1'b0;
    reg [`CAP-1:0] addr = `CAP'd0;
    reg en = 1'b1;
    wire [`CAP*4-1:0] data_frame;
    wire [`CAP-1:0] op_code, reg_r, reg_w, data; 
    
    assign op_code = data_frame[`CAP*4-1:`CAP*3];
    assign reg_r = data_frame[`CAP*3-1:`CAP*2];
    assign reg_w = data_frame[`CAP*2-1:`CAP];
    assign data = data_frame[`CAP-1:0];
    
    always begin
        #5 clk <= ~clk;
    end
    
    mem m(
        .clk(clk),
        .en(en),
        .addr(addr),
        .data_frame(data_frame)
    );

    initial begin
        for (i = 0; i < `MAX_MEM; i = i + 1) begin
            #20 addr = i;
        end
    end

endmodule
