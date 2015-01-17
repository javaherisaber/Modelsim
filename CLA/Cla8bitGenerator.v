module Cla8bitGenerator(c,a,b,cin);
	`timescale 1ns/1ps
	output [7:0] c;
	input cin;
	input [7:0]a,b;
	
	wire [7:0]p,g;
	wire [35:0] w;
	
	xor #(10) xr1(p[0],a[0],b[0]);
	xor #(10) xr2(p[1],a[1],b[1]);
	xor #(10) xr3(p[2],a[2],b[2]);
	xor #(10) xr4(p[3],a[3],b[3]);
	xor #(10) xr5(p[4],a[4],b[4]);
	xor #(10) xr6(p[5],a[5],b[5]);
	xor #(10) xr7(p[6],a[6],b[6]);
	xor #(10) xr8(p[7],a[7],b[7]);
	
	and #(10) ad1(g[0],a[0],b[0]);
	and #(10) ad2(g[1],a[1],b[1]);
	and #(10) ad3(g[2],a[2],b[2]);
	and #(10) ad4(g[3],a[3],b[3]);
	and #(10) ad5(g[4],a[4],b[4]);
	and #(10) ad6(g[5],a[5],b[5]);
	and #(10) ad7(g[6],a[6],b[6]);
	and #(10) ad8(g[7],a[7],b[7]);
	
	and #(10) ad9(w[0],p[0],cin);
	or #(10) or1(c[0],g[0],w[0]);//c1 has been created
	and #(10) ad10(w[1],p[1],g[0]);
	and #(10) ad11(w[2],p[1],p[0],cin);
	or #(10) or2(c[1],g[1],w[1],w[2]);//c2 has been created
	and #(10) ad12(w[3],p[2],g[1]);
	and #(10) ad13(w[4],p[2],p[1],g[0]);
	and #(10) ad14(w[5],p[2],p[1],p[0],cin);
	or #(10) or3(c[2],g[2],w[3],w[4],w[5]);//c3 has been created
	and #(10) ad15(w[6],p[3],g[2]);
	and #(10) ad16(w[7],p[3],p[2],g[1]);
	and #(10) ad17(w[8],p[3],p[2],p[1],g[0]);
	and #(10) ad18(w[9],p[3],p[2],p[1],p[0],cin);
	or #(10) or4(c[3],g[3],w[6],w[7],w[8],w[9]);//c4 has been created
	and #(10) ad19(w[10],p[4],g[3]);
	and #(10) ad20(w[11],p[4],p[3],g[2]);
	and #(10) ad21(w[12],p[4],p[3],p[2],g[1]);
	and #(10) ad22(w[13],p[4],p[3],p[2],p[1],g[0]);
	and #(10) ad23(w[14],p[4],p[3],p[2],p[1],p[0],cin);
	or #(10) or5(c[4],g[4],w[10],w[11],w[12],w[13],w[14]);//c5 has been created
	and #(10) ad24(w[15],p[5],g[4]);
	and #(10) ad25(w[16],p[5],p[4],g[3]);
	and #(10) ad26(w[17],p[5],p[4],p[3],g[2]);
	and #(10) ad27(w[18],p[5],p[4],p[3],p[2],g[1]);
	and #(10) ad28(w[19],p[5],p[4],p[3],p[2],p[1],g[0]);
	and #(10) ad29(w[20],p[5],p[4],p[3],p[2],p[1],p[0],cin);
	or #(10) or6(c[5],g[5],w[15],w[16],w[17],w[18],w[19],w[20]);//c6 has been created
	and #(10) ad30(w[21],p[6],g[5]);
	and #(10) ad31(w[22],p[6],p[5],g[4]);
	and #(10) ad32(w[23],p[6],p[5],p[4],g[3]);
	and #(10) ad33(w[24],p[6],p[5],p[4],p[3],g[2]);
	and #(10) ad34(w[25],p[6],p[5],p[4],p[3],p[2],g[1]);
	and #(10) ad35(w[26],p[6],p[5],p[4],p[3],p[2],p[1],g[0]);
	and #(10) ad36(w[27],p[6],p[5],p[4],p[3],p[2],p[1],p[0],cin);
	or #(10) or7(c[6],g[6],w[21],w[22],w[23],w[24],w[25],w[26],w[27]);//c7 has been created
	and #(10) ad37(w[28],p[7],g[6]);
	and #(10) ad38(w[29],p[7],p[6],g[5]);
	and #(10) ad39(w[30],p[7],p[6],p[5],g[4]);
	and #(10) ad40(w[31],p[7],p[6],p[5],p[4],g[3]);
	and #(10) ad41(w[32],p[7],p[6],p[5],p[4],p[3],g[2]);
	and #(10) ad42(w[33],p[7],p[6],p[5],p[4],p[3],p[2],g[1]);
	and #(10) ad43(w[34],p[7],p[6],p[5],p[4],p[3],p[2],p[1],g[0]);
	and #(10) ad44(w[35],p[7],p[6],p[5],p[4],p[3],p[2],p[1],p[0],cin);
	or #(10) or8(c[7],g[7],w[28],w[29],w[30],w[31],w[32],w[33],w[34],w[35]);//c8 has been created
	
endmodule 