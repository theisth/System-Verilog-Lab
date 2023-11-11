/*
Haz?rlayanlar:
Ahmet Ali Tilkicio?lu
Muhammed Furkan Sar?kaya
*/

module lab1_g14_p3(
	input logic g,t,u,e, //ipnut variables
	output logic x,y //output variables
);

assign x = ~e & (u | ~t); // output x definition
assign y = ~g | ~u; // output y definition

endmodule

