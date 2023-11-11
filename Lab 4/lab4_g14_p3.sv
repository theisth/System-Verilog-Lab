/* lab4_g14_p3
Hazirlayanlar:
Ahmet Ali Tilkicioglu
Muhammed Furkan Sarikaya
*/
module lab4_g14_p3(
	input logic [31:0] A,
	input logic [31:0] B,
	input logic [3:0] op,
	output logic [31:0] Y,
	output logic hata,
	output logic n_flag,
	output logic c_flag,
	output logic z_flag,
	output logic v_flag
);

	always_comb begin
		case(op)
		0: Y = A + B;
		1: Y = A << B[4:0];
		2: Y = (A > B) ? 1 : 0;
		3: Y = (signed '(A) > signed '(B)) ? 1 : 0;
		4: Y = A ^ B;
		5: Y = A >> B[4:0];
		6: Y = A | B;
		7: Y = A & B;
		8: Y = A - B;
		9: hata = 1;
		10: hata = 1;
		11: hata = 1;
		12: hata = 1;
		13: Y = signed '(A) >> B[4:0];
		14: hata = 1;
		15: hata = 1;
		default: hata = 0;
		endcase
	
	n_flag = Y[31];

	z_flag = (Y == 0);

        c_flag = (op == 0) ? (A[31] & B[31] | A[31] & ~Y[31] | B[31] & ~Y[31]) :
             (op == 8) ? (~A[31] & B[31] | ~A[31] & Y[31] | B[31] & Y[31]) : 1'b0;

        v_flag = (op == 0) ? (A[31] & B[31] & ~Y[31] | ~A[31] & ~B[31] & Y[31]) :
             (op == 8) ? (A[31] & ~B[31] & ~Y[31] | ~A[31] & B[31] & Y[31]) : 1'b0;
	
	end

endmodule
