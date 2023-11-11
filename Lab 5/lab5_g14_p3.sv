/*lab5_g14_p3.sv
Hazirliyanlar:
Ahmet Ali Tilkicioglu
Muhammed Furkan Sarikaya
*/
module fsm (
    input logic clk,
    input logic reset,
    input logic A,
    output logic Y
);

typedef enum logic [2:0] {S0, S1, S2, S3, S4, S5, S6, S7} state_t;

state_t current_state, next_state;

always_ff @(posedge clk) begin
    if (reset) begin
        current_state <= S0;
    end else begin
        current_state <= next_state;
    end
end

always_comb begin
    case (current_state)
        S0: begin
            if (A) begin
                next_state = S1;
                Y = 1'b0;
            end else begin
                next_state = S5;
                Y = 1'b0;
            end
        end
        S1: begin
            if (A) begin
                next_state = S2;
                Y = 1'b0;
            end else begin
                next_state = S5;
                Y = 1'b0;
            end
        end
        S2: begin
            if (A) begin
                next_state = S3;
                Y = 1'b0;
            end else begin
                next_state = S5;
                Y = 1'b0;
            end
        end
        S3: begin
            if (A) begin
                next_state = S4;
                Y = 1'b0;
            end else begin
                next_state = S5;
                Y = 1'b0;
            end
        end
        S4: begin
            if (A) begin
                next_state = S4;
                Y = 1'b1;
            end else begin
                next_state = S5;
                Y = 1'b1;
            end
        end
        S5: begin
            if (!A) begin
                next_state = S6;
                Y = 1'b0;
            end else begin
                next_state = S1;
                Y = 1'b0;
            end
        end
        S6: begin
            if (!A) begin
                next_state = S7;
                Y = 1'b0;
            end else begin
                next_state = S1;
                Y = 1'b0;
            end
        end
        S7: begin
            if (!A) begin
                next_state = S4;
                Y = 1'b0;
            end else begin
                next_state = S1;
                Y = 1'b0;
            end
        end

    default: next_state = current_state;

    endcase

end

endmodule

