`timescale 1ns / 1ps

module comp_test;
    reg clk = 1'b0;
    reg en = 1'b1;
    reg [3:0] exp = 1'd0;
    reg [3:0] alu_out = 1'd0;
    wire result;
    
    always begin
        #10 clk <= ~clk;
    end
    
    comp c(
        .clk(clk),
        .en(en),
        .exp(exp),
        .alu_out(alu_out),
        .result(result)
    );

    initial begin
        #50 begin // case 1
            exp = 4'b1010;
            alu_out = 4'b1010;
            #50 if (result == 1'b1) begin
                $display($time, " Case 1: OK");
            end else begin
                $display($time, " Case 1: FAIL");         
            end
        end
        #50 begin // case 2
            exp = 4'b1010;
            alu_out = 4'b1011;
            #50 if (result == 1'b0) begin
                $display($time, " Case 2: OK");
            end else begin
                $display($time, " Case 2: FAIL");         
            end
        end
        #50 begin // case 3
            exp = 4'b0;
            alu_out = 4'b0;
            #50 if (result == 1'b1) begin
                $display($time, " Case 3: OK");
            end else begin
                $display($time, " Case 3: FAIL");         
            end
        end
        #50 begin // case 4
            exp = 4'b0;
            alu_out = 4'b0;
            #50 if (result == 1'b1) begin
                $display($time, " Case 4: OK");
            end else begin
                $display($time, " Case 4: FAIL");         
            end
        end
        #100 begin // case 5
            exp = 4'b1111;
            alu_out = 4'b0000;
            #50 if (result == 1'b0) begin
                $display($time, " Case 5: OK");
            end else begin
                $display($time, " Case 5: FAIL");         
            end
        end
    end

endmodule
