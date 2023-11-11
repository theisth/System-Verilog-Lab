/* hw3.sv
Hazirlayan:
Ahmet Ali Tilkicioglu
*/

module hw3(
input logic clk,
input logic A,
input logic reset,
output logic unlock
);

typedef enum{S0,S1,S2,S3,S4,S5} statetype;
statetype state , nextstate;
always_ff @(posedge clk)
if(reset) state<=S0;
else state <= nextstate;

always_comb
 case(state)
 S0:
 begin
 if(A) nextstate=S0;
 else nextstate=S1;
 end

 S1:
 begin
 if(A) nextstate=S2;
 else nextstate=S1;
 end

 S2:
 begin
 if(A) nextstate=S0;
 else nextstate=S3;
 end

 S3:
 begin
 if(A) nextstate=S2;
 else nextstate=S4;
 end

 S4:
 begin
 if(A) nextstate=S5;
 else nextstate=S1;
 end

 S5:
 begin
 if(A) nextstate=S0;
 else nextstate= S1;
 end
 default: nextstate=S0;
 endcase
 
 assign unlock = (state==S5); //output
 endmodule
