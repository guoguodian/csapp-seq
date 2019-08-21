`include "defines.v"
module aluB(
input [`ICODEBUS] icode,
input [`WORD] valB,
output [`WORD] alu_B
);

assign alu_B = (icode == `IRMMOVQ | icode == `IMRMOVQ |icode == `IOPQ |icode == `ICALL |icode == `IRET | icode == `IPUSHQ |icode == `IPOPQ)? valB :
										(icode == `IRRMOVQ | icode == `IIRMOVQ ) ? 0 :
															   0;

endmodule
