`include "defines.v"
module ram
#(
parameter mem_size=2048
)
(
input   clock,
input   reset,
input 	[`IRAMBUS] 	iaddr,
input   mem_read,
input   mem_write,
input   [`WORD] mem_addr,
input   [`WORD] mem_data,
output  [`WORD]  valM,
output 	[`INSNBUS]    	insn,
output  dmem_error,
output  imem_error
);

wire dmem_status;
wire imem_status;
reg [7:0] mem[mem_size-1:0];

initial begin
#0 $readmemh("irom.bin",mem);//just for test useful.
end

always @(posedge clock) begin

//	if(mem_read)
//	 valM<={mem[mem_addr],mem[mem_addr+1],mem[mem_addr+2],mem[mem_addr+3],mem[mem_addr+4],mem[mem_addr+5],mem[mem_addr+6],mem[mem_addr+7]};
	if(mem_write)
	{mem[mem_addr],mem[mem_addr+1],mem[mem_addr+2],mem[mem_addr+3],mem[mem_addr+4],mem[mem_addr+5],mem[mem_addr+6],mem[mem_addr+7]}<=mem_data;

end

assign dmem_status=(!mem_read & !mem_write) | (mem_addr+7) < mem_size;
assign dmem_error =~dmem_status;

assign valM= mem_read ? {mem[mem_addr],mem[mem_addr+1],mem[mem_addr+2],mem[mem_addr+3],mem[mem_addr+4],mem[mem_addr+5],mem[mem_addr+6],mem[mem_addr+7]}:0;
assign insn={mem[iaddr],mem[iaddr+1],mem[iaddr+2],mem[iaddr+3],mem[iaddr+4],mem[iaddr+5],mem[iaddr+6],mem[iaddr+7],mem[iaddr+8],mem[iaddr+9]};
assign imem_status = (iaddr +9) < mem_size;
assign imem_error=~imem_status;

endmodule
