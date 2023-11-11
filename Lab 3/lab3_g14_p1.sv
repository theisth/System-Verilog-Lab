/*lab3_g14_p1.sv
Hazirlayanlar:
Ahmet Ali Tilkicioglu
Muhammed Furkan Sarikaya
*/


module lab3_g14_p1(
input logic a,b,s,
output logic y

);

	assign nand_1 = ~(s & a);
	assign nand_2 = ~(~s & b);
	assign y = ~(nand_1 & nand_2);

endmodule
