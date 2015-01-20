module T_FF(q, clk, clear);

output q;
input clk, clear;

dff ff1(q, ,~q, clk, clear);

endmodule

