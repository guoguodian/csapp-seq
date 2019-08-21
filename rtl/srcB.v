`include "defines.v"
module srcB(
input  [`ICODEBUS] icode,
input  [`REGBUS] rB,
output [`REGBUS]d_srcB
);

assign d_srcB=  	     (icode == `IRMMOVQ |icode == `IMRMOVQ | icode == `IOPQ  )  ? rB :
		(icode == `ICALL | icode == `IRET |icode == `IPUSHQ | icode == `IPOPQ )  ? `RRSP :
											   `RNONE ;
endmodule
