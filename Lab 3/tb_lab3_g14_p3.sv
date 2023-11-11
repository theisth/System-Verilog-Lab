/*tb_lab3_g14_p3.sv
Hazirlayanlar:
Ahmet Ali Tilkicioglu
Muhammed Furkan Sarikaya
*/

`timescale 1ns/1ps
module tb_lab3_g14_p3();
logic a;
logic b;
logic [3:0] y;

lab3_g14_p3 mut0(a,b,y);
initial begin
	a = 0;	b = 0;	#10
	b = 1;		#10
	a = 1;	b = 0;	#10
	b = 1;		#10
	$stop;
end

endmodule
