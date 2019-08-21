`include "defines.v"
module cond(
input [`IFUNBUS] ifun,
input [2:0] cur_cc,
output Cond

);
wire zf=cur_cc[2];
wire sf=cur_cc[1];
wire of=cur_cc[0];
assign Cond= ifun == `C_YES |
	    (ifun == `C_LE  & ((sf^of)|zf))|
	    (ifun == `C_L   & (sf^of))     |
	    (ifun == `C_E   & zf )         |
       	    (ifun == `C_NE  & ~zf )        |
	    (ifun == `C_GE  & (~sf^of))    |
	    (ifun == `C_G   & (~sf^of)&~zf);


endmodule
