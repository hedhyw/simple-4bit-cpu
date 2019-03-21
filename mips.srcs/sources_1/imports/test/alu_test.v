`timescale 1ns / 1ps

`include "cpu.vh"

module alu_test;
    reg [3:0] expect;
    wire [3:0] result;
    
    reg [3:0] op_code;
    wire [3:0] a = 4'b0001;
    wire [3:0] b = 4'b1000;
    
    reg clk = 1'b0;
    reg en = 1'b1;
    
    alu u (
        .clk(clk),
        .op_code(op_code),
        .a(a),
        .b(b),
        .en(en),
        .result(result)
    );
    
    always #10 clk = ~clk;
  
    initial
    begin
        #30 begin // case 1
            op_code = `ASM_LDI;
            expect = b;
            #30 if (result == expect) begin
                $display($time, " Case 1: OK");
            end else begin
                $display($time, " Case 1: FAIL");
            end
        end
        #30 begin // case 2
            op_code = `ASM_CLR;
            expect = `CAP'd0;
            #30 if (result == expect) begin
                $display($time, " Case 2: OK");
            end else begin
                $display($time, " Case 2: FAIL");
            end
        end
        #30 begin // case 3
            op_code = `ASM_SER;
            expect = ~`CAP'd0;
            #30 if (result == expect) begin
                $display($time, " Case 3: OK");
            end else begin
                $display($time, " Case 3: FAIL");
            end
        end
        #30 begin // case 4
            op_code = `ASM_MOV;
            expect = a;
            #30 if (result == expect) begin
                $display($time, " Case 4: OK");
            end else begin
                $display($time, " Case 4: FAIL");
            end
        end
        #30 begin // case 5
            op_code = `ASM_ADD;
            expect = a + b;
            #30 if (result == expect) begin
                $display($time, " Case 5: OK");
            end else begin
                $display($time, " Case 5: FAIL");
            end
        end
        #30 begin // case 6
            op_code = `ASM_ADDI;
            expect = a + b;
            #30 if (result == expect) begin
                $display($time, " Case 6: OK");
            end else begin
                $display($time, " Case 6: FAIL");
            end
        end
        #30 begin // case 7
            op_code = `ASM_INC;
            expect = a + `CAP'd1;
            #30 if (result == expect) begin
                $display($time, " Case 7: OK");
            end else begin
                $display($time, " Case 7: FAIL");
            end
        end
//        #30 begin // case 8
//            op_code = `ASM_DEC;
//            expect = a - `CAP'd1;
//            #30 if (result == expect) begin
//                $display($time, " Case 8: OK");
//            end else begin
//                $display($time, " Case 8: FAIL");
//            end
//        end
        #30 begin // case 9
            op_code = `ASM_AND;
            expect = a & b;
            #30 if (result == expect) begin
                $display($time, " Case 9: OK");
            end else begin
                $display($time, " Case 9: FAIL");
            end
        end
        #30 begin // case 10
            op_code = `ASM_ANDI;
            expect = a & b;
            #30 if (result == expect) begin
                $display($time, " Case 10: OK");
            end else begin
                $display($time, " Case 10: FAIL");
            end
        end
        #30 begin // case 11
            op_code = `ASM_OR;
            expect = a | b;
            #30 if (result == expect) begin
                $display($time, " Case 11: OK");
            end else begin
                $display($time, " Case 11: FAIL");
            end
        end
        #30 begin // case 12
            op_code = `ASM_ORI;
            expect = a | b;
            #30 if (result == expect) begin
                $display($time, " Case 12: OK");
            end else begin
                $display($time, " Case 12: FAIL");
            end
        end
        #30 begin // case 13
            op_code = `ASM_COM;
            expect = ~a;
            #30 if (result == expect) begin
                $display($time, " Case 13: OK");
            end else begin
                $display($time, " Case 13: FAIL");
            end
        end
        #30 begin // case 14
            op_code = `ASM_EOR;
            expect = a ^ b;
            #30 if (result == expect) begin
                $display($time, " Case 14: OK");
            end else begin
                $display($time, " Case 14: FAIL");
            end
        end
    end
    
endmodule
