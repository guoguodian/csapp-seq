`include "defines.v"
module memdata(
input [`ICODEBUS] icode,
input [`WORD] valA,
input [`WORD] valP,
output [`WORD] mem_data
);

assign mem_data = (icode == `IRMMOVQ | icode == `IPUSHQ) ? valA :
		  (icode == `ICALL ) ? valP :0;
endmodule
