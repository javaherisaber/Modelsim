module test;
  
  
  reg [7:0]a,b;
  reg cin;
  reg [1:0]sel;
  wire [7:0]s;
  wire cout;
  
  
  AluMux mux1(s,cout,cin,a,b,sel);
  
  initial 
  begin
    a=8'b00001111;b=8'b01010101;cin=1'b0;sel=2'b00;
    #50  a=8'b11110000;b=8'b10000000;cin=1'b0;sel=2'b01;
    
    
  end
  
  initial
  $monitor($time,"  a=%b and b=%b and cin=%b and s=%b and cout=%b" ,a,b,cin,s,cout);
  
  
endmodule