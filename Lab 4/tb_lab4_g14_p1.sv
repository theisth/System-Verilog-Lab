/* tb_lab4_g14_p1
Haz?rlayanlar:
Ahmet Ali Tilkicioglu
Muhammed Furkan Sarikaya
*/

`timescale 1ns/1ps
module tb_lab4_g14_p1();
logic clk;
logic d;
logic q_latch;
logic q_p_dff;
logic q_n_dff;

all_of_them mut0(clk,d,q_latch,q_p_dff,q_n_dff);

always 
begin
clk = 0; #10; clk = 1; #10; //Duty Cycle %50 yar?m periyot 10 ns
end

	initial begin 
	d = 0; #7; d = 1; #5; d = 0; #2; 
	d = 1; #4; d = 0; #3; d = 1; #3; 
	d = 0; #2; d = 1; #2; d = 0; #4; 
	d = 1; #2; d = 0; #2; d = 1; #6; 
	d = 0; #10; 
 	$stop; // simülasyonu durdur ve beklet. Bitirmek için $finish; 

end 

endmodule
