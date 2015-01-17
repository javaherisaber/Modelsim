module adder8bit(s,cout,a,b,cin);
`timescale 1ns/1ps
  output cout;
  output [7:0] s;
  input [7:0] a;
  input [7:0] b;
  input cin;
  wire [6:0] c;
  
  adder ad1(s[0],c[0],a[0],b[0],cin);
  adder ad2(s[1],c[1],a[1],b[1],c[0]);
  adder ad3(s[2],c[2],a[2],b[2],c[1]);
  adder ad4(s[3],c[3],a[3],b[3],c[2]);
  adder ad5(s[4],c[4],a[4],b[4],c[3]);
  adder ad6(s[5],c[5],a[5],b[5],c[4]);
  adder ad7(s[6],c[6],a[6],b[6],c[5]);
  adder ad8(s[7],cout,a[7],b[7],c[6]);
  
endmodule

