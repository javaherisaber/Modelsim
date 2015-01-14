module Alu8bitTest;
	`timescale 1ns/1ps
	reg [7:0]a,b;
	reg cin;
	reg [3:0] sel;
	wire [7:0]s;
	wire cout;
	
	Alu8bit alu(s,cout,a,b,cin,sel);
	
	initial 
begin
  
	$monitor($time," a = %b b = %b cin = %b *** sel = %b *** s = %b cout = %b",a,b,cin,sel,s,cout);
	a=8'b01110011; b=8'b110101111; cin=1'b0; sel=4'b0000;
	#20
	a=8'b00110010; b=8'b10110000; cin=1'b0; sel=4'b0100;
	#30
	a=8'b00001010; b=8'b00001111; cin=1'b0; sel=4'b1000;
	#50
	a=8'b01001010; b=8'b00001000; cin=1'b0; sel=4'b1100;
	#100
	a=8'b10001110; b=8'b00000110; cin=1'b0; sel=4'b1101;
	#120
	a=8'b10001110; b=8'b00000110; cin=1'b1; sel=4'b1101;
	#150
	a=8'b10101010; b=8'b00000110; cin=1'b0; sel=4'b1110;
	#160
	a=8'b10101010; b=8'b00000110; cin=1'b1; sel=4'b1110;
	#180
	a=8'b01111111; b=8'b00000110; cin=1'b0; sel=4'b1111;
	#190
	a=8'b10101010; b=8'b00000110; cin=1'b1; sel=4'b1111;
  end
endmodule

