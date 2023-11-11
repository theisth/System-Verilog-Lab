/*
Haz?rlayanlar:
Ahmet Ali Tilkicio?lu
Muhammed Furkan Sar?kaya
*/

module lab1_g14_p1(
	input logic g,t,u,e, // input variables
	output logic y // output variable
); 	

// output definition
assign y = (~g & t & ~u & e) | (g & t & u & e) | (g & ~t & ~u & e) | (g & t & ~u & e) | 
		(~g & t & u & e) | (~g & ~t & u & e) | (g & t & u & ~e);

endmodule

