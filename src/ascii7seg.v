module ascii7seg (
    input reg [7:0] ascii,
    output reg [SEGMENTS_NUM-1:0] segments,
    output reg found
);
  /*
 _    0
|_|  561
|_|  4 2
      3
*/
  localparam SEGMENTS_NUM = 7;
  always @(*) begin
    case (ascii)
      " ": begin segments = 7'h00; found = 1'b1; end
      "!": begin segments = 7'h0A; found = 1'b1; end
      "+": begin segments = 7'h46; found = 1'b1; end
      "-": begin segments = 7'h40; found = 1'b1; end
      "0": begin segments = 7'h3F; found = 1'b1; end
      "1": begin segments = 7'h06; found = 1'b1; end
      "2": begin segments = 7'h5B; found = 1'b1; end
      "3": begin segments = 7'h4F; found = 1'b1; end
      "4": begin segments = 7'h66; found = 1'b1; end
      "5": begin segments = 7'h6D; found = 1'b1; end
      "6": begin segments = 7'h7D; found = 1'b1; end
      "7": begin segments = 7'h27; found = 1'b1; end
      "8": begin segments = 7'h7F; found = 1'b1; end
      "9": begin segments = 7'h6F; found = 1'b1; end
      "=": begin segments = 7'h48; found = 1'b1; end
      "A": begin segments = 7'h77; found = 1'b1; end
      "B": begin segments = 7'h7C; found = 1'b1; end
      "C": begin segments = 7'h39; found = 1'b1; end
      "D": begin segments = 7'h5E; found = 1'b1; end
      "E": begin segments = 7'h79; found = 1'b1; end
      "F": begin segments = 7'h71; found = 1'b1; end
      "G": begin segments = 7'h3D; found = 1'b1; end
      "H": begin segments = 7'h76; found = 1'b1; end
      "I": begin segments = 7'h0F; found = 1'b1; end
      "J": begin segments = 7'h0E; found = 1'b1; end
      "K": begin segments = 7'h74; found = 1'b1; end
      "L": begin segments = 7'h3C; found = 1'b1; end
      "M": begin segments = 7'h78; found = 1'b1; end
      "N": begin segments = 7'h54; found = 1'b1; end
      "O": begin segments = 7'h5C; found = 1'b1; end
      "P": begin segments = 7'h73; found = 1'b1; end
      "Q": begin segments = 7'h67; found = 1'b1; end
      "R": begin segments = 7'h50; found = 1'b1; end
      "S": begin segments = 7'h4D; found = 1'b1; end
      "T": begin segments = 7'h44; found = 1'b1; end
      "U": begin segments = 7'h1C; found = 1'b1; end
      "V": begin segments = 7'h0C; found = 1'b1; end
      "W": begin segments = 7'h7E; found = 1'b1; end
      "X": begin segments = 7'h57; found = 1'b1; end
      "Y": begin segments = 7'h6E; found = 1'b1; end
      "Z": begin segments = 7'h59; found = 1'b1; end
      default: begin segments = 7'h00; found = 1'b0; end
    endcase
  end

endmodule
