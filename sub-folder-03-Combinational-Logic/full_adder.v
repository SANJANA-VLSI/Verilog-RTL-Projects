// Code your design here
module full_adder(a, b, cin, sum, carry);
  input a, b, cin;
  output sum, carry;
  
  assign sum= a^b^cin;
  assign carry= (a&b)|(a&cin)|(b&cin);
  
endmodule