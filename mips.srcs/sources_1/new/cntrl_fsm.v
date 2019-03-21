`timescale 1ns / 1ps

`ifndef _cntrl_fsm
`define _cntrl_fsm

`include "cpu.vh"

module cntrl_fsm(
    input clk, rst,
    input [`DATA_FRAME_SIZE-1:0] data_frame,
    input [`CAP-1:0] rdata0, rdata1,
    output reg pc_inc_en, pc_set_en, mem_en, reg_r_en, alu_en, reg_w_en,
    output reg [`CAP-1:0] pc_set = `CAP'd0,
    output reg [`CAP-1:0] raddr0, raddr1, waddr, op_code, b,
    output [`CAP-1:0] a
  );
  
  // All states
  localparam [3:0]
    S0_INIT   = 4'd0,
    S1_FETCH  = 4'd1,
    S2_REG_R  = 4'd2,
    S3_ALU    = 4'd3,
    S4_REG_W  = 4'd4,
    S5_ADDR_W = 4'd5,
    S6_PC_INC = 4'd6,
    S7_DONE   = 4'd7;
   
   reg [3:0] cur_state, next_state;
   reg [`CAP-1:0] data;
   
   always @ (posedge clk, posedge rst) begin
       if (rst == 1'b1) begin
           cur_state <= S0_INIT;
       end
       else begin
           cur_state <= next_state;
       end
   end
   
    assign a = rdata0;
    
    always @ * begin
        op_code = data_frame[`CAP*4-1:`CAP*3];
        raddr0 = data_frame[`CAP*3-1:`CAP*2];
        waddr = data_frame[`CAP*2-1:`CAP];
        data = data_frame[`CAP-1:0];
        pc_set = data;
        
        // @TODO move to separate block
        if (op_code == `ASM_ADD || op_code == `ASM_AND || op_code == `ASM_OR) begin
            b = rdata1;
            raddr1 = data;
        end else begin
            b = data;
            raddr1 = waddr;
        end

        case (cur_state)
            S0_INIT: begin
                pc_inc_en = 1'b0;
                mem_en = 1'b0;
                reg_r_en = 1'b0;
                alu_en = 1'b0;
                reg_w_en = 1'b0;
                pc_set_en = 1'b0;
                next_state = S1_FETCH;
            end
            S1_FETCH: begin
                pc_inc_en = 1'b0;
                mem_en = 1'b1;
                reg_r_en = 1'b0;
                alu_en = 1'b0;
                reg_w_en = 1'b0;
                pc_set_en = 1'b0;
                next_state = S2_REG_R;
            end
            S2_REG_R: begin
                pc_inc_en = 1'b0;
                mem_en = 1'b0;
                reg_r_en = 1'b1;
                alu_en = 1'b0;
                reg_w_en = 1'b0;
                pc_set_en = 1'b0;
                next_state = op_code == `ASM_JMP ? S5_ADDR_W : S3_ALU;
            end
            S3_ALU: begin
                pc_inc_en = 1'b0;
                mem_en = 1'b0;
                reg_r_en = 1'b0;
                alu_en = 1'b1;
                reg_w_en = 1'b0;
                pc_set_en = 1'b0;
                next_state = S4_REG_W;
            end
            S4_REG_W: begin
                pc_inc_en = 1'b0;
                mem_en = 1'b0;
                reg_r_en = 1'b0;
                alu_en = 1'b0;
                reg_w_en = 1'b1;
                pc_set_en = 1'b0;
                next_state = S6_PC_INC;
            end
            S5_ADDR_W: begin
                pc_inc_en = 1'b0;
                mem_en = 1'b0;
                reg_r_en = 1'b0;
                alu_en = 1'b0;
                reg_w_en = 1'b0;
                pc_set_en = 1'b1;
                next_state = S7_DONE;
            end
            S6_PC_INC: begin
                pc_inc_en = 1'b1;
                mem_en = 1'b0;
                reg_r_en = 1'b0;
                alu_en = 1'b0;
                reg_w_en = 1'b0;
                pc_set_en = 1'b0;
                next_state = S7_DONE;
            end
            S7_DONE: begin
                pc_inc_en = 1'b0;
                mem_en = 1'b0;
                reg_r_en = 1'b0;
                alu_en = 1'b0;
                reg_w_en = 1'b0;
                pc_set_en = 1'b0;
                next_state = S1_FETCH;
            end
            default: begin
                pc_inc_en = 1'b0;
                mem_en = 1'b0;
                reg_r_en = 1'b0;
                alu_en = 1'b0;
                reg_w_en = 1'b0;
                pc_set_en = 1'b0;
                next_state = S0_INIT;
            end
        endcase
       
   end
endmodule

`endif
