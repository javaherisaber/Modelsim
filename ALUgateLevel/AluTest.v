module AluTest;
	`timescale 1ns/1ps
	reg a,b,cin;
	reg [3:0] sel;
	wire s,cout;
	
	alu1bit alu(s,cout,a,b,cin,sel);
	
	initial 
begin
  
	$monitor($time," a = %b b = %b cin = %b *** sel = %b *** s = %b cout = %b",a,b,cin,sel,s,cout);
	a=1'b1; b=1'b1; cin=1'b0; sel=4'b0000;
	#10
	a=1'b1; b=1'b0; cin=1'b0; sel=4'b0000;
	#20
	a=1'b0; b=1'b1; cin=1'b0; sel=4'b0100;
	#30
	a=1'b0; b=1'b0; cin=1'b0; sel=4'b0100;
	#40
	a=1'b1; b=1'b1; cin=1'b0; sel=4'b1000;
	#50
	a=1'b1; b=1'b0; cin=1'b0; sel=4'b1000;
	#60
	a=1'b0; b=1'b0; cin=1'b0; sel=4'b1100;
	#70
	a=1'b0; b=1'b1; cin=1'b0; sel=4'b1100;
	#80
	a=1'b0; b=1'b1; cin=1'b1; sel=4'b1100;
	#90
	a=1'b1; b=1'b1; cin=1'b1; sel=4'b1100;
	#100
	a=1'b1; b=1'b1; cin=1'b0; sel=4'b1101;
	#110
	a=1'b1; b=1'b0; cin=1'b0; sel=4'b1101;
	#120
	a=1'b1; b=1'b1; cin=1'b1; sel=4'b1101;
	#130
	a=1'b0; b=1'b1; cin=1'b1; sel=4'b1101;
	#140
	a=1'b1; b=1'b1; cin=1'b0; sel=4'b1110;
	#150
	a=1'b0; b=1'b1; cin=1'b0; sel=4'b1110;
	#160
	a=1'b1; b=1'b0; cin=1'b1; sel=4'b1110;
	#170
	a=1'b0; b=1'b1; cin=1'b1; sel=4'b1110;
	#180
	a=1'b1; b=1'b1; cin=1'b0; sel=4'b1111;
	#190
	a=1'b0; b=1'b1; cin=1'b0; sel=4'b1111;
	#200
	a=1'b1; b=1'b1; cin=1'b1; sel=4'b1111;
	#210
	a=1'b0; b=1'b1; cin=1'b1; sel=4'b1111;
  end
endmodule
