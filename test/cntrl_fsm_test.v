`timescale 1ns / 1ps

`include "cpu.vh"

module ctrl_fsm_test;
    reg clk = 1'b0;
    reg rst = 1'b0;
    reg [`CAP:0] rdata0 = `CAP'hD;
    reg [`CAP:0] rdata1 = `CAP'hC;
    reg [`DATA_FRAME_SIZE:0] data_frame;
    wire pc_inc_en, pc_set_en, mem_en, reg_r_en, alu_en, reg_w_en;
    wire [`CAP-1:0] raddr0, raddr1, waddr, op_code, b, a;
    
    cntrl_fsm u (
        .clk(clk),
        .rst(rst),
        .mem_en(mem_en),
        .alu_en(alu_en),
        .reg_r_en(reg_r_en),
        .reg_w_en(reg_w_en),
        .pc_inc_en(pc_inc_en),
        .pc_set_en(pc_set_en),
        .raddr0(raddr0),
        .raddr1(raddr1),
        .waddr(waddr),
        .op_code(op_code),
        .a(a),
        .b(b),
        .data_frame(data_frame),
        .rdata0(rdata0),
        .rdata1(rdata1)
    );
    
    initial
    begin
        #30 begin // case 1 - DATA_FRAME test
            
            data_frame[`CAP*4-1:`CAP*3] = `ASM_INC;
            data_frame[`CAP*3-1:`CAP*2] = `CAP'hA;
            data_frame[`CAP*2-1:`CAP] = `CAP'hB;
            data_frame[`CAP-1:0] = `CAP'hF;
            
            #10 clk = ~clk;
            #10 clk = ~clk;
            
            #50 if (data_frame[`CAP*4-1:`CAP*3] == op_code &&
                data_frame[`CAP*3-1:`CAP*2] == raddr0 &&
                data_frame[`CAP*2-1:`CAP] == waddr &&
                data_frame[`CAP-1:0] == b &&
                a == rdata0) begin
                $display("Case #1: OK");
            end else begin
                $display("Case #1: FAIL");
            end
        end
        #30 begin // case 2 - Reset test
            #10 rst = ~rst;
            #10 rst = ~rst;
            #50 if (pc_inc_en == 1'b0 ||
                mem_en == 1'b0 ||
                reg_r_en == 1'b0 ||
                alu_en == 1'b0 ||
                reg_w_en == 1'b0) begin
                $display("Case #2: OK");
            end else begin
                $display("Case #2: FAIL");
            end
        end
        #30 begin // case 3 - S1_PC_INC
            #10 clk = ~clk;
            #10 clk = ~clk;
            #50 if (pc_inc_en == 1'b1 ||
                mem_en == 1'b0 ||
                reg_r_en == 1'b0 ||
                alu_en == 1'b0 ||
                reg_w_en == 1'b0) begin
                $display("Case #3: OK");
            end else begin
                $display("Case #3: FAIL");
            end
        end
        #30 begin // case 4 - S2_FETCH
            #10 clk = ~clk;
            #10 clk = ~clk;
            #50 if (pc_inc_en == 1'b0 ||
                mem_en == 1'b1 ||
                reg_r_en == 1'b0 ||
                alu_en == 1'b0 ||
                reg_w_en == 1'b0) begin
                $display("Case #4: OK");
            end else begin
                $display("Case #4: FAIL");
            end
        end
        #30 begin // case 5 - S3_REG_R
            #10 clk = ~clk;
            #10 clk = ~clk;
            #50 if (pc_inc_en == 1'b0 ||
                mem_en == 1'b0 ||
                reg_r_en == 1'b1 ||
                alu_en == 1'b0 ||
                reg_w_en == 1'b0) begin
                $display("Case #5: OK");
            end else begin
                $display("Case #5: FAIL");
            end
        end
        #30 begin // case 6 - second S4_ALU
            #10 clk = ~clk;
            #10 clk = ~clk;
            #50 if (pc_inc_en == 1'b0 ||
                mem_en == 1'b0 ||
                reg_r_en == 1'b0 ||
                alu_en == 1'b1 ||
                reg_w_en == 1'b0) begin
                $display("Case #6: OK");
            end else begin
                $display("Case #6: FAIL");
            end
        end
        #30 begin // case 7 - second S5_REG_W
            #10 clk = ~clk;
            #10 clk = ~clk;
            #50 if (pc_inc_en == 1'b0 ||
                mem_en == 1'b0 ||
                reg_r_en == 1'b0 ||
                alu_en == 1'b0 ||
                reg_w_en == 1'b1) begin
                $display("Case #7: OK");
            end else begin
                $display("Case #7: FAIL");
            end
        end
        #30 begin // case 8 - second S6_DONE
            #10 clk = ~clk;
            #10 clk = ~clk;
            #50 if (pc_inc_en == 1'b0 ||
                mem_en == 1'b0 ||
                reg_r_en == 1'b0 ||
                alu_en == 1'b0 ||
                reg_w_en == 1'b0) begin
                $display("Case #8: OK");
            end else begin
                $display("Case #8: FAIL");
            end
        end
    end
    
endmodule
