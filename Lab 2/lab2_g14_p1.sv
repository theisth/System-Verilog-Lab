/*lab2_g14_p1.sv
*Hazirlayanlar:
*Ahmet Ali Tilkicioglu
*Muhammed Furkan Sarikaya

*y = ab'c + c'd devresi gerçeklestirilmistir.

*/

`timescale 1ns/1ps
module lab2_g14_p1(
// inputs
input logic a,b,c,d,
//outputs
output logic y
);
//output and module definitions
	assign #2 m1 = ~b;
	assign #2 m2 = a & d;
	assign #2 m3 = m1 & m2;
	assign #2 n1 = ~b;
	assign #2 n2 = a & c;
	assign #2 n3 = n1 & n2;
	assign #2 k1 = ~c;
	assign #2 k2 = k1 & d;
	assign #2 y = k2 | n3 | m3;
	
endmodule  
