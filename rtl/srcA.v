`include "defines.v"
module srcA(
input  [`ICODEBUS] icode,
input  [`REGBUS] rA,
output [`REGBUS]d_srcA
);

assign d_srcA=  (icode == `IRRMOVQ |icode == `IRMMOVQ | icode == `IOPQ    |icode == `IPUSHQ )?rA:
					(icode == `IRET | icode == `IPOPQ ) ? `RRSP:					
						                              `RNONE;
endmodule
