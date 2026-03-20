// Code your testbench here
// or browse Examples
module tb;
  wire y;
  reg a,b;
  
  abc a1 (y, a, b);
  
  initial begin
    a=1'b0; b=1'b0;
   #10  a=1'b0; b=1'b1;
   #10  a=1'b1; b=1'b0;
   #10  a=1'b1; b=1'b1;
  end
  initial
    $monitor($time,"a=%b b=%b y=%b", a, b, y);
  initial begin
    $dumpfile("dump.vcd"); $dumpvars(1);
  end
endmodule