module AluMux(s,cout,cin,a,b,sel);
  
  output [7:0]s;
  output cout;
  input cin;
  input sel;
  input [7:0]a,b;
  
  assign {cout,s}=(sel==2'b00)?(a&b):
  (sel==2'b01)?(a|b):
  (sel==2'b10)?(a^b):
  (a+b+cin);
  
  
  
endmodule
