module counter #(
    parameter WIDTH = 8
) (
    input reg clk,
    input reg rst_n,
    input reg en,
    output reg [WIDTH-1:0] count
);

  always @(posedge clk) begin
    if (!rst_n) begin
      count <= {WIDTH{1'b0}};
    end else if (en) begin
      count <= count + 1'b1;
    end else begin
      count <= count;
    end
  end

endmodule
