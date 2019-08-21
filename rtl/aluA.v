`include "defines.v"
module aluA(
input [`ICODEBUS] icode,
input [`WORD] valA,
input [`WORD] valC,
output [`WORD] alu_A
);

assign alu_A = 		       (icode == `IRRMOVQ | icode == `IOPQ  )? valA :
	(icode == `IIRMOVQ | icode == `IRMMOVQ | icode == `IMRMOVQ  )? valC :
				(icode == `ICALL | icode == `IPUSHQ )? -8   :
				   (icode == `IRET |icode == `IPOPQ )? 8    :
				    0;

endmodule
