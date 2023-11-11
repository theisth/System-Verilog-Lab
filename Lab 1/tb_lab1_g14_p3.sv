/*
Haz?rlayanlar:
Ahmet Ali Tilkicio?lu
Muhammed Furkan Sar?kaya
*/
`timescale 1ns/1ps 
module tb_lab1_g14_p3();

logic g,t,u,e; // input variables
logic x,y; // output variables

lab1_g14_p3 dut0 (g,t,u,e,x,y);

initial begin
	g = 1;	t = 1;	u = 1;	e = 1;	#10 //1111
	g = 0;				#10 //0111
	g = 1;	t = 0;			#10 //1011
	g = 0;				#10 //0011
	g = 1;	t = 1;	u = 0;		#10 //1101
	g = 0;				#10 //0101
	g = 1;	t = 0;			#10 //1001
	g = 0;				#10 //0001
	g = 1;	t = 1;	u = 1;	e = 0;	#10 //1110
	g = 0;				#10 //0110
	g = 1;	t = 0;			#10 //1010
	g = 0;				#10 //0010
	g = 1;	t = 1;	u = 0;		#10 //1100
	g = 0;				#10 //0100
	g = 1;	t = 0;			#10 //1000
	g = 0;				#10 //0000

	$stop; //stop simulation

end

endmodule