module num2ascii (
    input  reg [3:0] number,
    output reg [7:0] ascii
);
  always @(*) begin
    if (number <= 4'h9) begin
      ascii = {4'h0, number} + "0";
    end else begin
      ascii = {4'h0, number - 4'hA} + "A";
    end
  end

endmodule
