module full_adder (x,y,ci, z,carry);
  input  x;
  input  y;
  input	ci;
  output z;
  output carry;
  assign z = x ^ y ^ ci;
  assign carry = x & y + (x^y)&ci; 
endmodule 