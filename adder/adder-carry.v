module adder(
  input  [15:0]  a,
  input  [15:0]  b,
  output [15:0]  sum,
  output carry
);
  wire c[16:0];
  wire G[15:0];
  wire P[15:0];
  genvar i;
  assign c[0] = 0;
  generate
    for(i = 0; i <= 15; i = i + 1) begin
      assign G[i] = a[i] & b[i];
      assign P[i] = a[i] ^ b[i];
      assign c[i+1] = G[i] | P[i] & c[i];
      assign sum[i] = P[i] ^ c[i];
    end
  endgenerate
  assign carry = c[16];

endmodule
