module adder(s,cout,a,b,cin);
  `timescale 1ns/1ps
  input a,b,cin;
  output cout,s;
  wire [3:0] w;
  // and  and1(w[0],a,b);
  // and  and2(w[1],a,cin);
  // and  and3(w[2],b,cin);
   // or  or1(cout,w[0],w[1],w[2]);
  // xor  xor1(w[3],a,b);
  // xor  xor2(s,cin,w[3]);
  
 and #(10) and1(w[0],a,b);
 and #(10) and2(w[1],a,cin);
 and #(10) and3(w[2],b,cin);
  or #(10) or1(cout,w[0],w[1],w[2]);
 xor #(10) xor1(w[3],a,b);
 xor #(10) xor2(s,cin,w[3]);
   
endmodule
