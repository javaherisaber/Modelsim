module Mux4to1test;
	`timescale 1ns/1ps
	reg [3:0] in;
	reg [1:0] sel;
	wire out;
	
	mux4to1 mx1(out,in,sel);
	
	  initial 
begin
  
  $monitor($time," in = %b sel = %b out = %b",in,sel,out);
  in=4'b1110; sel=2'b00;
  #10
  in=4'b0001; sel=2'b00;
  #20
  in=4'b1101; sel=2'b01;
  #30
  in=4'b0010; sel=2'b01;
  #40
  in=4'b1011; sel=2'b10;
  #50
  in=4'b0100; sel=2'b10;
  #60
  in=4'b0111; sel=2'b11;
  #70
  in=4'b1000; sel=2'b11;

  end
endmodule
