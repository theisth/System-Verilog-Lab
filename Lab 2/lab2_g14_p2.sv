/*lab2_g14_p2.sv
Haz?rlayanlar:
Ahmet Ali Tilkicio?lu
Muhammed Furkan Sar?kaya

problem 2 seven segment ödevi için tasarlanm??t?r.
*/

`timescale 1ns/1ps
module lab2_g14_p2(
//inputs
input logic x3,x2,x1,x0,
//outputs
output logic a,b,c,d,e,f,g
);
//output definitions
assign a =  x1 | x3;
assign b = (x1 & x0) | (x3 & x0);
assign c = (x1 & x0) | (x1 & x3);
assign d = x1 | x2;
assign e = (~x3 & x1 & ~x0) | (x2 & ~x1);
assign f = (x1 & ~x0) | (~x3 & ~x1 & x0) | (x2 & ~x0);
assign g = (x3 & x0) | x1 | (~x3 & ~x0);

endmodule