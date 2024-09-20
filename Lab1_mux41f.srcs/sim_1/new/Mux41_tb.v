//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2024 01:19:05 PM
// Design Name: 
// Module Name: multiplexer_tb
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

`timescale 1ns/1ps
module Mux_41_tb;

reg [1:0] i0, i1, i2, i3;
reg [1:0] s;
wire [1:0] o;
 
Mux_41 uut (    
    .i0(i0),
    .i1(i1),
    .i2(i2),
    .i3(i3),
    .s(s),
    .o(o));
initial begin 
    #10 i0 = 2'b00; i1 = 2'b01; i2 = 2'b10; i3 = 2'b11; s = 2'b00;
    #10 s = 2'b01;
    #10 s = 2'b10;
    #10 s = 2'b11;
    
    #10 i0 = 2'b01; i1 = 2'b10; i2 = 2'b11; i3 = 2'b00; s = 2'b00;
    #10 s = 2'b01;
    #10 s = 2'b10;
    #10 s = 2'b11;;
    
    #10 i0 = 2'b10; i1 = 2'b11; i2 = 2'b00; i3 = 2'b01; s = 2'b00;
    #10 s = 2'b01;
    #10 s = 2'b10;
    #10 s = 2'b11;

	#10 $stop;
end 
endmodule
