`include "defines.v"

module pc(
input 		clock,
input 		reset,
input 		[`WORD]	new_pc,
output reg	[`WORD] cur_pc
);

always @(posedge clock or posedge reset) begin

	if(reset)
		cur_pc<=64'h0;
	else
		cur_pc<=new_pc;

end
endmodule
