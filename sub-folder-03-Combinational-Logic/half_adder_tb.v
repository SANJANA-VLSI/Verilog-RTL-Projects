// Code your testbench here
// or browse Examples
module half_adder_tb;
  wire sum, carry;
  reg a,b;
  
  half_adder dut(.a(a), .b(b), .sum(sum), .carry(carry));
  initial begin
    a=1'b0; b=1'b0;
    #100 a=1'b0; b=1'b1;
    #100 a=1'b1; b=1'b0;
    #100 a=1'b1; b=1'b1;
  end
  
  initial begin
    $monitor($time, "a=%b, b=%b, sum=%b, carry=%b", a,b,sum,carry);
  end
  
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
  end
  
endmodule
  
  