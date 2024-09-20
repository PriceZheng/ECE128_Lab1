`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/04 03:51:32
// Design Name: 
// Module Name: Mux_41_b
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


module Mux_41 (
    input [1:0] i0,
    input [1:0] i1,
    input [1:0] i2,
    input [1:0] i3,
    input [1:0] s,
    output reg [1:0] o
);

always @(s)begin
    case(s)
        2'b00: o = i0;
        2'b01: o = i1;
        2'b10: o = i2;
        2'b11: o = i3;
        default: o = 2'b00;
    endcase
end

endmodule
