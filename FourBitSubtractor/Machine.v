module machine(p,t,clk,reset);
	input t,clk,reset;
	output reg p;
	reg [2:1] pres_st,next_st;
	
	always @(posedge clk) // this block for trigger Register
		if(reset) pres_st <= 2'b00;
		else pres_st <= next_st;
	
	always @(pres_st or t) //this block for compute next state
	case(pres_st)
		2'b00 : next_st = t? 2'b00 : 2'b01;
		2'b01 : next_st = t? 2'b00 : 2'b10;
		2'b10 : next_st = t? 2'b11 : 2'b10;
		2'b11 : next_st = t? 2'b00 : 2'b10;
	endcase

	
	always @(pres_st) //this block for compute output
		if(pres_st==2'b00 || pres_st==2'b01) p=1'b1;	
		else p=1'b0;

endmodule

module test_moore;
	
	reg i,clk,reset;
	wire f;
	machine ma(f,i,clk,reset);
	
	always
	#50 clk = ~clk;
	
	initial 
	begin
		clk = 1'b0;
		reset = 1'b1;
        #200  reset =1'b0;
        #200  i=1'b0;
        #100  i=1'b0;
        #100 $finish;
	end
		
	initial 
		$monitor($time,"input : %b output : %b",i,f);
endmodule
