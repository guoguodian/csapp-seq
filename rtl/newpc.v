`include "defines.v"
module newpc(
input [`ICODEBUS] icode,
input Cond,
input [`WORD] valC,
input [`WORD] valM,
input [`WORD] valP,
output [`WORD] newpc
);

assign newpc =(icode == `IHALT )? 0:
  (icode== `IRRMOVQ |icode== `INOP| icode == `IIRMOVQ |icode == `IRMMOVQ |icode == `IMRMOVQ |icode == `IOPQ |icode == `IPUSHQ |icode == `IPOPQ ) ? valP : 
  (icode == `ICALL ) ? valC :
  (icode == `IRET ) ? valM :
  Cond ? valC:
	valP;
endmodule
