`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2023 08:04:52 PM
// Design Name: 
// Module Name: top_RCA
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


module top_RCA(a,b,cin,s,cout);
input [7:0]a,b;                // 8 bit numbers to be added
input cin;                     // carry in input 
output [7:0]s;                 // s is 8 bit sum output
output cout;                   // cout is 1 bit carry output
wire c1,c2,c3,c4,c5,c6,c7;     // wires for connecting carry of Full_Adders

Full_Adder FA0(a[0],b[0],cin,s[0],c1);
Full_Adder FA1(a[1],b[1],c1,s[1],c2);
Full_Adder FA2(a[2],b[2],c2,s[2],c3);
Full_Adder FA3(a[3],b[3],c3,s[3],c4);
Full_Adder FA4(a[4],b[4],c4,s[4],c5);
Full_Adder FA5(a[5],b[5],c5,s[5],c6);
Full_Adder FA6(a[6],b[6],c6,s[6],c7);
Full_Adder FA7(a[7],b[7],c7,s[7],cout);

endmodule





