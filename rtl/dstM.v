`include "defines.v"
module dstM(
input  [`ICODEBUS] icode,
input  [`REGBUS] rA,
output [`REGBUS]d_dstM
);

assign d_dstM =  (icode == `IMRMOVQ |icode == `IPOPQ )? rA: `RNONE ;
endmodule
