/* tb_lab4_g14_p3
Haz?rlayanlar:
Ahmet Ali Tilkicioglu
Muhammed Furkan Sarikaya
*/

`timescale 1ns/1ps
module tb_lab4_g14_p3();

logic [31:0] A;
logic [31:0] B;
logic [3:0] op;
logic [31:0] Y;
logic hata;
logic n;
logic c;
logic z;
logic v;

lab4_g14_p3 mut0(A,B,op,Y,hata,n,c,z,v);

initial begin
A = 270;
B = 355;
	for (int i = 0; i < 16; i++) begin
		op = i;
		#10;
	end
	$stop;
end

endmodule

