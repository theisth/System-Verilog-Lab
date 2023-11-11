/*lab3_g14_p5.sv
Hazirlayanlar:
Ahmet Ali Tilkicioglu
Muhammed Furkan Sarikaya
*/

module lab3_g14_p5(

input logic a,
input logic b,
input logic s,
output logic y

);
	 assign y = ~(~(a & ~s) & ~(b & s));
endmodule

//and gate with mux2_1
module gates_mux2_1(
input logic a,
input logic b,
output y_and,
output y_or,
output y_nand,
output y_nor
);

assign logic_1 = 1;
assign logic_0 = 0;

lab3_g14_p5 and_g(a,b,a,y_and); //and
lab3_g14_p5 or_gate(a,b,~a,y_or); //or
lab3_g14_p5 nand_g(logic_1,~b,a,y_nand);//nand
lab3_g14_p5 nor_g(logic_0,~b,~a,y_nor); //nor

endmodule


//mux4x1
module mux4x1(
input logic [3:0] data,
input logic [1:0] s2,
output logic y
);

lab3_g14_p5 mux0(data[0], data[1],s2[0],y0);
lab3_g14_p5 mux1(data[2], data[3],s2[0],y1);
lab3_g14_p5 mux2(y0,y1,s2[1],y);
endmodule

//mux8x1
module mux8x1(
input logic [7:0] data_8,
input logic [2:0] s3,
output y
);

mux4x1 mux0(data_8[3:0],s3[1:0],y0);
mux4x1 mux1(data_8[7:4],s3[1:0],y1);
lab3_g14_p5 mux2(y0,y1,s3[2],y);
endmodule

//mux16x1
module mux16x1(
input logic [15:0] data_16,
input logic [3:0] s4,
output y
);

mux8x1 mux0(data_16[7:0],s4[2:0],y0);
mux8x1 mux1(data_16[15:8],s4[2:0],y1);
lab3_g14_p5 mux2(y0,y1,s4[3],y);
endmodule


module f1(
input logic [15:0] bits,
input logic [3:0] sel,
output logic y
);

mux16x1 mux0(bits[15:0],sel[3:0],y);
endmodule

module f2(
input logic [15:0]bits,
input logic [3:0] sel,
output logic y
);

mux16x1 mux0(bits[15:0],sel[3:0],y);
endmodule