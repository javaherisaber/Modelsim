module example(a,sel,b,out);
output reg [4:0] out;
input [2:0]sel;
input [3:0]a,b;
 
always @(a,b,sel)
begin 
  case(sel)
  3'b000 : out = a;
  3'b001 : out = a+b;
  3'b010 : out = a-b;
  3'b011 : out = a/b;
  3'b100 : out = a%b;
  3'b101 : out = a<<b;
  3'b110 : out = a>>b;
  3'b111 : out = a>b;
  endcase
end 

endmodule 



module test;

reg [2:0]sel;
reg [3:0]a,b;
wire [4:0] out ;
example ex(a,sel,b,out);
initial
  $monitor($time,"a = %b b = %b sel = %b***out = ",a,b,sel,out);
  
initial
begin
  #5 a=4'b0010; b=3'b0100; sel=3'b001;
  #5 a=4'b0010; b=3'b0100; sel=3'b011;
  #5 a=4'b0010; b=3'b0100; sel=3'b000;
  #5 a=4'b0010; b=3'b0100; sel=3'b101;
  #5 a=4'b0010; b=3'b0100; sel=3'b110;
  #5 a=4'b0010; b=3'b0100; sel=3'b111;
end

endmodule