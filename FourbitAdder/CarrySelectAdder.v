//Question 4

//section 1
module adder(s,cout,a,b,cin);
  `timescale 1ns/1ps
	output [3:0] s;
	output cout;
	input[3:0] a, b;
	input cin;
	assign {cout, s} = a + b + cin;
  
endmodule

//section 2
module AdderTest;  
  reg [3:0] a;
  reg [3:0] b;
  reg cin;
  wire [3:0] s;
  wire cout;
  
  adder adderFour(s,cout,a,b,cin);
  
  initial 
    
begin
  
  $monitor($time," a = %b b = %b cin = %b s = %b cout = %b",a,b,cin,s,cout);
  a=4'b1111; b=4'b0001; cin=1'b0;
  #120
  a=4'b0010; b=4'b1000; cin=1'b1;
  #240
  a=4'b1110; b=4'b1010; cin=1'b0;

  end
endmodule


//
//section 3
//
module mux21(out,in1,in2,sel);
`timescale 1ns/1ps
	output reg [3:0] out;
	input [3:0] in1,in2;
	input sel;
	
	always @(in1,in2,sel)
		begin
		case(sel)
			1'b0 : out = in1;
			1'b1 : out = in2;
		endcase
		end
endmodule

module CarrySelectAdder(s,cout,a,b,cin);
	output [7:0] s;
	output cout;
	input cin;
	input [7:0] a,b;
	wire [3:0] w;
	wire [3:0] sad2;
	wire [3:0] sad3;
	
	adder ad1(s[3:0],w[0],a[3:0],b[3:0],cin);
	adder ad2(sad2,w[1],a[7:4],b[7:4],1'b0);
	adder ad3(sad3,w[2],a[7:4],b[7:4],1'b1);
	
	or or1(w[3],w[1],w[0]);
	and and1(cout,w[3],w[2]);
	
	mux21 mx1(s[7:4],sad2,sad3,w[0]);
endmodule 

module carryselectTest;

  reg [7:0] a;
  reg [7:0] b;
  reg cin;
  wire [7:0] s;
  wire cout;
  
  CarrySelectAdder adderFour(s,cout,a,b,cin);
  
  initial 
    
begin
  
  $monitor($time," a = %b b = %b cin = %b s = %b cout = %b",a,b,cin,s,cout);
  a=4'b11110101; b=4'b00010011; cin=1'b0;
  #120
  a=4'b00100111; b=4'b10001111; cin=1'b1;
  #240
  a=4'b11101001; b=4'b10100000; cin=1'b0;

  end
endmodule
