`timescale 1ns / 1ps

module cf(
    input carry_in,
    input clk,
    input rst,
    input en,
    output reg carry_out
    );

    always @(posedge clk, posedge rst) begin
        if (rst == 1'b1) begin
            carry_out = 1'b0;
        end else if (en == 1'b1) begin
            carry_out = carry_in;
        end
    end

endmodule
