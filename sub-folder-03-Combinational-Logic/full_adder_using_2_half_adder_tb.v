// Code your testbench here
// or browse Examples
module full_adder_tb;
  reg a, b, cin;
  wire sum, carry;
  
  full_adder dut(.a(a), .b(b), .cin(cin), .sum(sum), .carry(carry));
  
  initial begin
    a=1'b0; b=1'b0; cin=1'b0;
     #1 $display($time, "a=%b, b=%b, cin=%b, sum=%b, carry=%b", a, b, cin, sum, carry);
    #10 a=1'b0; b=1'b0; cin=1'b1;
     $display($time, "a=%b, b=%b, cin=%b, sum=%b, carry=%b", a, b, cin, sum, carry);
    #10 a=1'b0; b=1'b1; cin=1'b0;
     $display($time, "a=%b, b=%b, cin=%b, sum=%b, carry=%b", a, b, cin, sum, carry);
    #10 a=1'b0; b=1'b1; cin=1'b1;
     $display($time, "a=%b, b=%b, cin=%b, sum=%b, carry=%b", a, b, cin, sum, carry);
    #10 a=1'b1; b=1'b0; cin=1'b0;
     $display($time, "a=%b, b=%b, cin=%b, sum=%b, carry=%b", a, b, cin, sum, carry);
    #10 a=1'b1; b=1'b0; cin=1'b1;
     $display($time, "a=%b, b=%b, cin=%b, sum=%b, carry=%b", a, b, cin, sum, carry);
    #10 a=1'b0; b=1'b1; cin=1'b0;
     $display($time, "a=%b, b=%b, cin=%b, sum=%b, carry=%b", a, b, cin, sum, carry);
    #10 a=1'b1; b=1'b1; cin=1'b1;
     $display($time, "a=%b, b=%b, cin=%b, sum=%b, carry=%b", a, b, cin, sum, carry);
    
  end
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
  end
endmodule