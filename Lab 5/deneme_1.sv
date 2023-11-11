module counter (
    input logic clk,
    input logic rst_n,
    input logic en,
    input logic [4:0] psc,
    output logic tick
);

logic [4:0] count;

always_ff @(posedge clk) begin
    if (rst_n == 1) begin
        count <= 5'd0;
        tick <= 1'b0;
    end else if (en == 1) begin
        if (count == psc) begin
            count <= 5'd0;
            tick <= 1'b1;
        end else begin
            count <= count + 5'd1;
            tick <= 1'b0;
        end
    end else begin
        tick <= 1'b0;
    end
end

endmodule

