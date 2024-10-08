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
  output reg  [16:0]  sum,
  output reg  carry
  // TODO: Write the ports of this module here
  //
  // Hint: 
  //   The module needs 4 ports, 
  //     the first 2 ports are 16-bit unsigned numbers as the inputs of the adder
  //     the third port is a 16-bit unsigned number as the output
  //     the forth port is a one bit port as the carry flag
  // 
);
  // TODO: Implement this module here
  always @(*) begin
    sum = a + b;
  end
  
endmodule
