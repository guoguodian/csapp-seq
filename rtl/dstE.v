`include "defines.v"
module dstE(
input  [`ICODEBUS] icode,
input  [`REGBUS] rB,
input  Cond,
output [`REGBUS]d_dstE
);

assign d_dstE =  (((icode == `IRRMOVQ )& Cond ) |icode == `IIRMOVQ | icode == `IOPQ ) ? rB:
		 (icode == `ICALL | icode == `IRET |icode == `IPUSHQ | icode == `IPOPQ ) ?   `RRSP : 
											`RNONE ;
endmodule
