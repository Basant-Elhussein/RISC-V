// file: n_bit_mux.v
// author: @hashoom

`timescale 1ns/1ns

module n_bit_mux #(parameter n=32)(input[n-1: 0]A, input [n-1: 0] B, input S, output reg [n-1:0] Y);
always@(*) begin
  case(S)
    1'b0: Y = A;
    1'b1: Y = B;
  endcase
end
endmodule