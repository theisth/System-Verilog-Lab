/*lab3_g14_p3.sv
Hazirlayanlar:
Ahmet Ali Tilkicioglu
Muhammed Furkan Sarikaya
*/

module lab3_g14_p3(
input logic a, //second
input logic b,	//first
output logic [3:0] y
);

assign y[0] = ~(~b & ~a);
assign y[1] = ~(b & ~a);
assign y[2] = ~(~b & a);
assign y[3] = ~(b & a);

endmodule
