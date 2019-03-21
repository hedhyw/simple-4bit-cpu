`timescale 1ns / 1ps

`include "cpu.vh"

module pc_test;
    reg clk = 1'b0;
    reg inc_en = 1'b0;
    reg set_en = 1'b0;
    reg rst = 1'b0;
    reg [`CAP-1:0] set = `CAP'd0;
    wire [`CAP-1:0] addr;
    
    pc u(
        .clk(clk),
        .inc_en(inc_en),
        .set_en(set_en),
        .rst(rst),
        .set(set),
        .addr(addr)
    );
    
    always #10 clk = ~clk;
    
    initial begin
        #50 begin // reset test
            #10 rst = 1'b1;
            #10 rst = 1'b0;
            #10 if (addr == `CAP'd0) $display("Case 1: OK");
            else $display("Case 1: FAIL");
        end
        #50 begin // set test
            set = `CAP'hE;
            #20 set_en = 1'b1;
            #20 set_en = 1'b0;
            #10 if (addr == `CAP'hE) $display("Case 2: OK");
            else $display("Case 2: FAIL");
        end
        #50 begin // inc test
            #15 inc_en = 1'b1;
            #15 inc_en = 1'b0;
            #10 if (addr == `CAP'hF) $display("Case 3: OK");
            else $display("Case 3: FAIL");
        end
    end
    
endmodule
