module adder(
  input  [15:0]  a,
  input  [15:0]  b,
  output [15:0]  sum,
  output carry
);
  wire c[16:0];
  genvar i;
  assign c[0] = 0;
  generate
    for(i = 0; i <= 15; i = i + 1) begin
      assign c[i+1] = (a[i] & b[i]) | (a[i] ^ b[i]) & c[i];
      assign sum[i] = a[i] ^ b[i] ^ c[i];
    end
  endgenerate
  assign carry = c[16];

endmodule
