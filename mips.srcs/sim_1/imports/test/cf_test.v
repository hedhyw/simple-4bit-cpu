`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2019 12:28:37 PM
// Design Name: 
// Module Name: cf_test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module cf_test;
    reg carry_in = 1'b1;
    reg clk = 1'b0;
    reg rst = 1'b0;
    reg en = 1'b0;
    wire carry_out;
    
    cf u(
        .carry_in(carry_in),
        .clk(clk),
        .rst(rst),
        .en(en),
        .carry_out(carry_out)
    );
    
    always #10 clk = ~clk;
    
    initial begin
        #70 begin // test reset
            #10 rst = 1'b1;
            #10 rst = 1'b0;
            #10 if (carry_out == 1'b0) $display("Case 1: OK");
            else $display("Case 1: FAIL");
        end
        
        #50 begin // disabled test
            carry_in = 1'b1;
            #50 if (carry_out == 1'b0) $display("Case 2: OK");
            else $display("Case 2: FAIL");
        end
        
        #50 begin // enabled set 1 test
            en = 1'b1;
            carry_in = 1'b1;
            #50 if (carry_out == 1'b1) $display("Case 3: OK");
            else $display("Case 3: FAIL");
        end
        
        #50 begin // enabled set 0 test
            en = 1'b1;
            carry_in = 1'b0;
            #50 if (carry_out == 1'b0) $display("Case 4: OK");
            else $display("Case 4: FAIL");
        end
    end
   
endmodule
