`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2023 08:23:32 PM
// Design Name: 
// Module Name: top_RCA_tb
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


module top_RCA_tb;
reg [7:0]a;    // 8 bit input number 'a' to be added
reg [7:0]b;    // 8 bit input number 'b' to be added
reg cin;       // carry in input
wire [7:0]s;   // s is 8 bit output sum
wire cout;     // Carry out
    
top_RCA f(a,b,cin,s,cout);

initial
begin
a=8'b00100000;
b=8'b00000101;
cin=0;
#1;

a=8'b01000001;
b=8'b00010110;
cin=1;
#1;

a=8'b00001001;
b=8'b10000110;
cin=0;
#1;

a=8'b00100011;
b=8'b00001001;
cin=0;
#1;

a=8'b00000011;
b=8'b01000111;
cin=1;
#1;

a=8'b01001000;
b=8'b01001000;
cin=0;
#1;

a=8'b10001111;
b=8'b00101111;
cin=0;
#1;

a=8'b00000101;
b=8'b00001010;
cin=0;
#1;

$finish;

end
endmodule
