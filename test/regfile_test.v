`timescale 1ns / 1ps

`include "cpu.vh"

module regfile_test;
    integer i;
    reg clk  = 1'b0;
    reg r_en = 1'b0;
    reg w_en = 1'b0;
    reg rst  = 1'b0;
    reg [`CAP-1:0] raddr0, raddr1, waddr, wdata;
    wire [`CAP-1:0] eax, ebx, ecx;
    wire [`CAP-1:0] rdata0, rdata1;

    regfile u(
        .clk(clk),
        .r_en(r_en),
        .w_en(w_en),
        .rst(rst),
        .raddr0(raddr0),
        .raddr1(raddr1),
        .waddr(waddr),
        .wdata(wdata),
        .eax(eax),
        .ebx(ebx),
        .ecx(ecx),
        .rdata0(rdata0),
        .rdata1(rdata1)
    );

    always #10 clk = ~clk;

    initial begin
        begin // reset test
            #10 rst = 1'b1;
            #10 rst = 1'b0;
            if (eax == `CAP'h0 && ebx == `CAP'h0 && ecx == `CAP'h0) $display("Case 1: OK");
            else $display("Case 1: FAIL");
        end
        begin // write test
            for (i = 0; i < `REG_COUNT; i = i + 1) begin
                waddr = i;
                wdata = i;
                #40 w_en = 1'b1;
                #40 w_en = 1'b0;
            end
            if (eax == `CAP'h0 && ebx == `CAP'h1 && ecx == `CAP'h2) $display("Case 2: OK");
            else $display("Case 2: FAIL");
        end
        begin // read test
            for (i = 1; i < `REG_COUNT; i = i + 1) begin
                raddr0 = i - 1;
                raddr1 = i;
                #40 r_en = 1'b1;
                #40 r_en = 1'b0;
                if (rdata0 == i - 1 && rdata1 == i) $display("Case 3.", i, ": OK");
                else $display("Case 3.", i, ": FAIL");
            end
        end
    end

endmodule
