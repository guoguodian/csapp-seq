`include "defines.v"

module setcc(
input [`ICODEBUS] icode,
output set_cc

);
assign set_cc = icode == `IOPQ ;


endmodule
