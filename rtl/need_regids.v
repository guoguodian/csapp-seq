`include "defines.v"
module need_regids(
input [`ICODEBUS] icode,
output needregids


);

assign needregids=	icode == `IRRMOVQ  |
			icode == `IIRMOVQ  | 
			icode == `IRMMOVQ  |
			icode == `IMRMOVQ  |
			icode == `IOPQ	   |
			icode == `IPUSHQ   |
			icode == `IPOPQ;
endmodule
