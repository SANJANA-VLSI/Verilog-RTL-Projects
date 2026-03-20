// Code your design here
module sr_ff(s, r, clk, reset, q);
  input s, r, reset;
  input clk;
  output reg q;
  
  always@(posedge clk)
    if(reset==1)
      q<=0;
  else
    case({s, r})
      2'b00: q<=q;
      2'b01: q<=0;
      2'b10: q<=1;
      2'b11: q<=1'bx;
    endcase
  
endmodule