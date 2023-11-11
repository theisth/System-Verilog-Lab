/*lab5_g14_p4.sv
Hazirliyanlar:
Ahmet Ali Tilkicioglu
Muhammed Furkan Sarikaya
*/
module p4(
input logic clk, reset, en,
input logic [4:0] d,
input logic baslat,
output logic y,
output logic mesgul
);

typedef enum{s0,s1,s2,s3,s4,s5,s6,s7} statetype;
statetype state,nextstate;

always_ff @(posedge clk, posedge reset)
begin

if(reset) state<=s0;
else if(en) state<=nextstate;
end

always_comb
case(state)

s0:
begin
mesgul=0;
y=1;
if(baslat) nextstate =s1;
else nextstate=s0;
end

s1:
begin
mesgul=1;
y=0;
nextstate = s2;
end

s2:
begin
mesgul=1;
y<=d[0];
nextstate = s3;
end

s3:
begin
mesgul=1;
y<=d[1];
nextstate=s4;
end

s4:
begin
mesgul=1;
y<=d[2];
nextstate =s5;
end

s5:
begin
mesgul=1;
y<=d[3];
nextstate = s6;
end

s6:
begin
mesgul=1;
y<=d[4];
nextstate = s7;
end

s7:
begin
mesgul=1;
y=1;
nextstate = s0;
end
default: nextstate=s0;

endcase



endmodule
