/* lab4_g14_p2
Haz?rlayanlar:
Ahmet Ali Tilkicioglu
Muhammed Furkan Sarikaya
*/

// Half Adder
module half_adder(
	input logic x,
	input logic y,
	output logic c,
	output logic s
);

assign c = x & y;
assign s = (~x & y) + (x & ~y);

endmodule

// Full Adder
module full_adder(
	input logic x,
	input logic y,
	input logic z, //c_in
	output logic s,
	output logic c
);

half_adder ha_1(x,y,adder_1_c,adder_1_s);
half_adder ha_2(adder_1_s,z,adder_2_c,s);
assign c = adder_1_c | adder_2_c;

endmodule


// 5 bit Ripple Carry Adder

module ripple_carry_adder(
	input logic [4:0] x,
	input logic [4:0] y,
	output logic [4:0] s,
	output logic cout
);

logic [3:0] c_in;

full_adder fa_1(x[0],y[0],1'b0,s[0],c_in[0]);
full_adder fa_2(x[1],y[1],c_in[0],s[1],c_in[1]);
full_adder fa_3(x[2],y[2],c_in[1],s[2],c_in[2]);
full_adder fa_4(x[3],y[3],c_in[2],s[3],c_in[3]);
full_adder fa_5(x[4],y[4],c_in[3],s[4],cout);

endmodule

