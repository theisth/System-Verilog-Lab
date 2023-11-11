/*tb_lab3_g14_p1.sv
Hazirlayanlar:
Ahmet Ali Tilkicioglu
Muhammed Furkan Sarikaya
*/

`timescale 1ns/1ps
module tb_lab3_g14_p1();
logic a,b,s;
logic y;

lab3_g14_p1 mut0(a,b,s,y);

initial begin
	a = 0;	b = 0;	s = 0;	#10 //000
	s = 1;			#10 //001
	s = 0;	b = 1;		#10 //010
	s = 1;			#10 //011
	a = 1;	b = 0;	s = 0;	#10 //100
	s = 1;			#10 //101
	s = 0;	b = 1;		#10 //110
	s = 1;			#10 //111
	$stop;

end

endmodule