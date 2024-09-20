`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/04 01:45:15
// Design Name: 
// Module Name: Mux_81
// Project Name: Lab_1 81
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


module Mux_81(o,i,s);
input [7:0]i;
input[2:0]s;
output o;


wire Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7;
wire NS0,NS1,NS2;

not N1(NS0, s[0]);
not N2(NS1, s[1]);
not N3(NS2, s[2]);
and A1(Y0, i[0], NS2,NS1,NS0);
and A2(Y1, i[1], NS2,NS1,s[0]);
and A3(Y2, i[2], NS2,s[1],NS0);
and A4(Y3, i[3], NS2,s[1],s[0]);
and A5(Y4, i[4], s[2],NS1,NS0);
and A6(Y5, i[5], s[2],NS1,s[0]);
and A7(Y6, i[6], s[2],s[1],NS0);
and A8(Y7, i[7], s[2],s[1],s[0]);
or O1(o,Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7);

endmodule
