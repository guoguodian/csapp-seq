`include "defines.v"
module memwrite(
input [`ICODEBUS] icode,
output mem_write

);

assign mem_write = (icode == `IRMMOVQ | icode == `ICALL |icode == `IPUSHQ );

endmodule
