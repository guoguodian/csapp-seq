`include "defines.v"
module need_valC(
input [`ICODEBUS] icode,
output needvalC

);
assign needvalC=   icode == `IIRMOVQ |
						 icode == `IRMMOVQ |
						 icode == `IMRMOVQ |
						 icode == `IJXX    |
						 icode == `ICALL;

endmodule
