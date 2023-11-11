/*tb_lab5_g14_p4.sv
Hazirliyanlar:
Ahmet Ali Tilkicioglu
Muhammed Furkan Sarikaya
*/
`timescale 1ns/1ps
module tb_lab5_g14_p4();
logic clk,reset,en,baslat,y,mesgul;
logic [4:0]d;
p4 dut0(.en(en),.clk(clk),.reset(reset),.y(y),.d(d),.baslat(baslat),.mesgul(mesgul));

always begin
clk=0; #10;
clk=1; #10;
end

always begin
reset=1; #10;
reset=0;
en=0; #10;
en=1;
baslat=0; #10;
baslat=1; #20;
baslat=0; #180;
baslat=1; #20;
baslat=0; #180;
baslat=1; #20;
baslat=0; #180;

end
initial begin
d=5'b01101;
#2000;
$stop;
end
endmodule