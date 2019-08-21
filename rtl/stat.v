`include "defines.v"
module stat(
input [`ICODEBUS] icode,
input instr_valid,
input imem_error,
input dmem_error,
output Stat

);
assign Stat= (imem_error |dmem_error)? `SADR :
	     ~instr_valid ?   `SINS :
	     (icode == `IHALT ) ? `SHLT :
	     `SAOK ; 
	     
endmodule
