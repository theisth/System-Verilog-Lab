/*
Haz?rlayanlar:
Ahmet Ali Tilkicio?lu
Muhammed Furkan Sar?kaya
*/

module lab1_g14_p2(
	input logic g,t,u,e, // input variables
	output logic y	// output variable
);

assign y = (~g & u & e) | (g & t & u) | (g & ~u & e) | (t & e); // output definition

endmodule
