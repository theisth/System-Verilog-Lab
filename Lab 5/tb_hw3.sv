`timescale 1ns/1ps
module tb_hw3();

logic clk;
logic A;
logic reset;
logic unlock;

hw3 dut0(clk,A,reset,unlock);

always begin
	clk = 0; #5;
	clk = 1; #5;
end

initial begin

A = 0; #10;
reset = 1; #10;
reset = 0; #10;
A = 0; #10;
A = 1; #10;
A = 1; #10;
A = 0; #10;
A = 0; #10;
A = 1; #10;
A = 1; #10;
A = 0; #10;
A = 0; #10;
A = 1; #10;
A = 0; #10;
A = 0; #10;
A = 1; #10;
A = 0; #10;
A = 1; #10;
A = 1; #10;
A = 0; #10;
$stop;
end

endmodule