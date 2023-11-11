/*lab3_g14_p4.sv
Hazirlayanlar:
Ahmet Ali Tilkicioglu
Muhammed Furkan Sarikaya
*/
module lab3_g14_p4(
input logic [1:0] a,
input logic e,
output logic [3:0] y
);

assign y[0] = ~(~a[0] & ~a[1] & ~e);
assign y[1] = ~(a[0] & ~a[1] & ~e);
assign y[2] = ~(~a[0] & a[1] & ~e);
assign y[3] = ~(a[0] & a[1] & ~e);

endmodule


module dec3x8(
input logic [1:0]a,
input logic e,
output logic [7:0]y
);
lab3_g14_p4 dec0(a[1:0],e,y[3:0]);
lab3_g14_p4 dec1(a[1:0],~e,y[7:4]);
endmodule


module dec4x16(
input logic [3:0]a,
input logic e,
output logic [15:0]y
);

logic [3:0] y_first;

lab3_g14_p4 dec0(a[3:2],e,y_first);

lab3_g14_p4 dec1(a[1:0],y_first[0],y[3:0]);
lab3_g14_p4 dec2(a[1:0],y_first[1],y[7:4]);
lab3_g14_p4 dec3(a[1:0],y_first[2],y[11:8]);
lab3_g14_p4 dec4(a[1:0],y_first[3],y[15:12]);

endmodule