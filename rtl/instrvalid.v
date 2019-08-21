`include "defines.v"
module instrvalid(
input [`ICODEBUS] icode,
output instr_valid

);

assign instr_valid= (icode== `IHALT |icode == `INOP | icode == `IRRMOVQ |icode == `IIRMOVQ |icode == `IRMMOVQ | icode == `IMRMOVQ | icode == `IOPQ | icode == `IJXX |icode == `ICALL |icode == `IRET | icode == `IPUSHQ | icode == `IPOPQ );
endmodule
