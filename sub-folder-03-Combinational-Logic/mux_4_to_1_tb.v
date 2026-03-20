// Code your testbench here
// or browse Examples
module stimulus;
  reg in0, in1, in2, in3;
  reg s1, s0;
  wire out;
  
  mux_4_1 mymux(out, in0, in1, in2, in3, s1, s0);
  
  initial begin
    in0=1 ; in1=0 ; in2=1 ; in3=0 ;
    #1$display("in0=%b, in1=%b, in2=%b, in3=%b\n", in0, in1, in2, in3);
    
    s1=0; s0=0;
    #1 $display("s1=%b, s0=%b, out=%b\n", s1, s0, out);
    
    s1=0; s0=1;
    #1 $display("s1=%b, s0=%b, out=%b\n", s1, s0, out);
    
    s1=1; s0=0;
    #1 $display("s1=%b, s0=%b, out=%b\n", s1, s0, out);
    
    s1=1; s0=1;
    #1 $display("s1=%b, s0=%b, out=%b\n", s1, s0, out);
    
  end
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
  end
endmodule
    