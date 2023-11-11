/*tb_lab2_g14_p2.sv
Haz?rlayanlar:
Ahmet Ali Tilkicio?lu
Muhammed Furkan Sar?kaya

problem 2 seven segment test benchi olu?turulmu?tur.
*/

`timescale 1ns/1ps
module tb_lab2_g14_p2();
//logic variables
logic x3,x2,x1,x0;
logic a,b,c,d,e,f,g;

lab2_g14_p2 mut0(x3,x2,x1,x0,a,b,c,d,e,f,g);
//10ns steps
initial begin
	x3 = 0;	x2 = 0;	x1 = 0;	x0 = 0;	#10 //0000
	x0 = 1;				#10 //0001
	x0 = 0;	x1 = 1;			#10 //0010
	x0 = 1;				#10 //0011
	x0 = 0;	x1 = 0;	x2 = 1;		#10 //0100
	x0 = 1;				#10 //0101
	x0 = 0;	x1 = 1;			#10 //0110
	x0 = 1;				#10 //0111
	x3 = 1;	x2 = 0;	x1 = 0;	x0 = 0;	#10 //1000
	x0 = 1;				#10 //1001
	x0 = 0;	x1 = 1;			#10 //1010
	x0 = 1;				#10 //1011
	x0 = 0;	x1 = 0;	x2 = 1;		#10 //1100
	x0 = 1;				#10 //1101
	x0 = 0;	x1 = 1;			#10 //1110
	x0 = 1;				#10 //1111
//stop simulation
	$stop;
end
endmodule
