// Code your testbench here
// or browse Examples
module alu_tb;
  reg[7:0]a, b;
  reg[3:0] alu_sel;
  wire[7:0] alu_result;
  
  alu a1(a, b, alu_sel, alu_result);
  
  initial begin
    alu_sel= 4'b0000;
    alu_sel= 6'b000_000; b=111_111;
    #50 a= 6'b111_000; b=000_111;
    #50 a=6'b111_111; b=111_111;
  end
  
  initial
    $monitor($time, "a=%d, b=%d, alu_opcode=%d, alu_result=%d", a, b, alu_sel, alu_result);
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
  end
endmodule