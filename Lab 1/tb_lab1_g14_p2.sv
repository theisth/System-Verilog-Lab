/*
Haz?rlayanlar:
Ahmet Ali Tilkicio?lu
Muhammed Furkan Sar?kaya
*/

`timescale 1ns/1ps
module tb_lab1_g14_p2();

logic g,t,u,e;
logic y;

lab1_g14_p2 dut0 (g,t,u,e,y);

// 10ns steps
initial begin
	g = 0; t = 0; u = 0; e = 0; 	#10 //0000
	e = 1;				#10 //0001
	u = 1; e = 0;			#10 //0010
	e = 1;				#10 //0011
	t = 1; e = 0; u = 0;		#10 //0100
	e = 1;				#10 //0101
	e = 0; u = 1;			#10 //0110
	e = 1;				#10 //0111
	g = 1; t = 0; u = 0; e = 0;	#10 //1000	
	e = 1;				#10 //1001
	u = 1; e = 0;			#10 //1010
	e = 1;				#10 //1011
	t = 1; e = 0; u = 0;		#10 //1100
	e = 1;				#10 //1101
	e = 0; u = 1;			#10 //1110
	e = 1;				#10 //1111
	
	$stop; // stop the simulation

end

endmodule
