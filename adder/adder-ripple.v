/* ACM Class System (I) Fall Assignment 1 
 *
 *
 * Implement your naive adder here
 * 
 * GUIDE:
 *   1. Create a RTL project in Vivado
 *   2. Put this file into `Sources'
 *   3. Put `test_adder.v' into `Simulation Sources'
 *   4. Run Behavioral Simulation
 *   5. Make sure to run at least 100 steps during the simulation (usually 100ns)
 *   6. You can see the results in `Tcl console'
 *
 */

module adder(
  input       [15:0]  a,
  input       [15:0]  b,
  output reg  [15:0]  sum,
  output reg  carry
);

  integer i;
  reg tmp;
  always @(*) begin
    tmp = 0;
    for(i = 0; i <= 15; i = i + 1) begin
      sum[i] = a[i] ^ b[i] ^ tmp;
      tmp = (a[i] & b[i]) | (b[i] & tmp)  | (tmp & a[i]);
    end
    carry = tmp;
  end

endmodule
