//Question 2 

module dataflowCompare(a_and_b,a_or,a_lt_b,a,b);
output a_and_b,a_or,a_lt_b;
input [7:0] a,b;

assign a_lt_b = a<b;
assign a_or   = |a;
assign a_and_b = ((a&b)== 8'h00)? 1'b1 : 1'b0;

endmodule 