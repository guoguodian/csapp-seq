`include "defines.v"
module memread(
input [`ICODEBUS] icode,
output mem_read

);

assign mem_read = (icode == `IMRMOVQ |icode == `IRET | icode == `IPOPQ );

endmodule
