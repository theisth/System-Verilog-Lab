/* lab4_g14_p1
Hazirlayanlar:
Ahmet Ali Tilkicioglu
Muhammed Furkan Sarikaya
*/

module d_latch(
	input logic clk,
	input logic d,
	output logic q
	
);

always_latch
	if(clk)q <= d;

endmodule


module pos_edge_dff (input logic clk, d, output logic q);
    always_ff @(posedge clk)
        q <= d;
endmodule


module neg_edge_dff (input logic clk, d, output logic q);
    always_ff @(negedge clk)
        q <= d;
endmodule

module all_of_them(
	input logic a,
	input logic b,
	output logic q_latch,
	output logic q_p_pff,	
	output logic q_n_pff
);

d_latch latch(a,b,q_latch);
pos_edge_dff p_dff(a,b,q_p_pff);
neg_edge_dff n_pff(a,b,q_n_pff);

endmodule








