`timescale 1ns / 1ps


module ALU4BIT(
input [3:0]a,
input[2:0]s,
input [3:0]b,
input carryin,
output reg [3:0]cout,
output reg [3:0]y
);

always @(*) begin
case(s)
3'b000: {cout,y}=a+b;
3'b001: {cout,y}=a-b;
3'b010: {cout,y} =a+1;
3'b011: {cout,y}=a-1;
3'b100: y=a && b;
3'b101: y=a || b;
3'b110: y= a^ b;
3'b111: y=~a;
default y=4'b0000;
endcase 
end



endmodule
