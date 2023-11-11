/*lab5_g14_p2.sv
Hazirliyanlar:
Ahmet Ali Tilkicioglu
Muhammed Furkan Sarikaya
*/
module p2 (
    input logic clk,
    input logic reset,
    input logic en,
    input logic [4:0] psc,
    input logic [15:0] reload,
    output logic [15:0] cnt,
    output logic bitti
);

logic tick;

counter dut0 (
    .clk(clk),
    .reset(reset),
    .en(en),
    .psc(psc),
    .tick(tick)
);

always_ff @(posedge clk) begin
    if (!reset) begin
        cnt <= 16'd0;
        bitti <= 1'b0;
    end else if (en) begin
        if (tick) begin
            if (cnt == 0) begin
                cnt <= reload;
                bitti <= 1;
            end else begin
                cnt <= cnt - 16'd1;
                bitti <= 1'b0;
            end
        end else begin
            bitti <= 1'b0;
        end
    end else if (reload != 16'd0) begin
        cnt <= reload;
        bitti <= 1'b0;
    end else begin
        bitti <= 1'b0;
    end
end

endmodule