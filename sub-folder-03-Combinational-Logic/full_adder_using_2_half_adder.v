// Code your design here
module half_adder(a, b, sum, carry);
  input a, b;
  output sum, carry;
  assign carry= a&b;
  assign sum= a^b;
  
endmodule

module full_adder(a, b, cin, sum, carry);
  input a, b, cin;
  output sum, carry;
  wire w1, w2, w3;
  
  half_adder h1(.a(a), .b(b), .sum(w1), .carry(w2));
  half_adder h2(.a(w1), .b(cin), .sum(sum), .carry(w3));
  or o1(carry, w2, w3);
  
endmodule