/* tb_lab4_g14_p2
Haz?rlayanlar:
Ahmet Ali Tilkicioglu
Muhammed Furkan Sarikaya
*/

`timescale 1ns/1ps
module tb_lab4_g14_p2();

logic [4:0] a;
logic [4:0] b;
logic [4:0] s;
logic c;

ripple_carry_adder mut0(a,b,s,c);

initial begin
	for (int i = 0; i < 16; i++) begin
		a = $urandom;
		b = $urandom;
		#10;
		end
	$stop;
end 

endmodule
