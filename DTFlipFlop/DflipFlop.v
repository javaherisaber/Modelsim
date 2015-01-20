module dff(q, qbar, d, clk, clear);

output q,qbar;
input d, clk, clear;

wire s, sbar, r, rbar,cbar;

assign  cbar = ~clear;

assign  sbar = ~(rbar & s),
        s = ~(sbar & cbar & ~clk),
        r = ~(rbar & ~clk & s),
        rbar = ~(r & cbar & d);

assign  q = ~(s & qbar),
        qbar = ~(q & r & cbar);

endmodule

