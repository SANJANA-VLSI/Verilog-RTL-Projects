// Code your testbench here
// or browse Examples
module tb;
  reg a;
  wire y;
  
  not_gate dut(y, a);
  
  initial begin
    a=1'b0;
    #100 a=1'b1;
    #100 a=1'b0;
  end
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
  end
endmodule