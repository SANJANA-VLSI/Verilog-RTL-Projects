// Code your testbench here
// or browse Examples
module tb_sr;
  reg s;
  reg r;
  reg clk;
  reg reset;
  wire q;
  
  initial clk=0;
    
    always #5 clk= ~clk;
  
  sr_ff sr0(.s(s), .r(r), .clk(clk), .reset(reset), .q(q));
  
  initial begin
    reset<=1;
    #10 reset=0;
  end
  initial begin
    s<=1;
    r<=0;
    
    #20 s<=0;
    r<=0;
    #20 s<=0;
    r<=1;
    #20 s<=1;
    r<=1;
    #80 $finish;
  end
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
  end
endmodule
  