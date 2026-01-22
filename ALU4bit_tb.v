`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2025 23:52:06
// Design Name: 
// Module Name: ALU4bit_tb
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


module alu_tb;
reg [3:0]a;
reg [2:0]s;
reg [3:0]b;
reg cin;
wire [3:0]cout;
wire [3:0]y;



ALU4BIT uut(
.a(a),
.s(s),
.b(b),
.carryin(cin),

.cout(cout),
.y(y)
);

initial begin
repeat(10) begin
a=$random()%4;
#10;
b=$random()%4;
#10;
s=$random()%3;
#10;
$display(" a=%b b=%b s=%b and output is %b ",a,b,s,y);
end
end

endmodule