Task :::::
module operation;
//...parameter delay = 10;
	reg [15:0] A, B;
	reg [15:0] AB_AND, AB_OR, AB_XOR;
	always @(A or B) //whenever A or B changes in value
		begin
			bitwise_oper(AB_AND, AB_OR, AB_XOR, A, B);
		end
//...
//define task bitwise_oper
task bitwise_oper;
	output [15:0] ab_and, ab_or, ab_xor; //outputs from the task
	input [15:0] a, b; //inputs to the task
	begin
		#delay ab_and = a & b;
		ab_or = a | b;
		ab_xor = a ^ b;
	end
endtask
//...
endmodule 