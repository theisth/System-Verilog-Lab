`timescale 1ns/1ps
module lab2_g14_p1_2(
input logic a,b,c,d,
output logic y
);

	assign #2 n1 = ~b;
	assign #2 n2 = a & n1;
	assign #2 n3 = c & n2;
	assign #2 k1 = ~c;
	assign #2 k2 = k1 & d;
	assign #2 m1 = ~b;
	assign #2 m2 = m1 & a;
	assign #2 m3 = m2 & d;
	assign #2 s1 = m3 | k2;
	assign #2 y = s1 | n3;   

endmodule  
