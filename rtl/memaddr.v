`include "defines.v"
module memaddr(

input 	[`ICODEBUS] icode,
input 	[`WORD] valA,
input 	[`WORD] valE,
output 	[`WORD] mem_addr
);

assign mem_addr = (icode== `IRMMOVQ |icode == `IMRMOVQ |icode == `ICALL |icode == `IPUSHQ ) ? valE:
		            (icode == `IPOPQ  | icode == `IRET ) ? valA : 0;

endmodule
