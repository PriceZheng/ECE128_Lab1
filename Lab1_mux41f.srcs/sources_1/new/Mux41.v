`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/04 03:31:11
// Design Name: 
// Module Name: Mux_41
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


module Mux_41(
input [1:0]i0,
input [1:0]i1,
input [1:0]i2,
input [1:0]i3,
input [1:0]s,
output [1:0]o
);

wire Y0,Y1,Y2;
wire Z0,Z1,Z2;
wire NS0,NS1;

not N1(NS0, s[0]);
not N2(NS1, s[1]);
and A1(Y0, i0[0],NS1,NS0);
and B1(Z0, i0[1],NS1,NS0);
and A2(Y1, i1[0],NS1,s[0]);
and B2(Z1, i1[1],NS1,s[0]);
and A3(Y2, i2[0],s[1],NS0);
and B3(Z2, i2[1],s[1],NS0);
and A4(Y3, i3[0],s[1],s[0]);
and B4(Z3, i3[1],s[1],s[0]);

or o1(o[0],Y0,Y1,Y2,Y3);
or o2(o[1],Z0,Z1,Z2,Z3);

endmodule
