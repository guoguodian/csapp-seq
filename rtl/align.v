`include "defines.v"
module align(
input [`INSN_BYTE1_9] ibytes,
input needregids,
input needvalC,
output [`REGBUS] m_rA,
output [`REGBUS] m_rB,
output [`WORD] m_valC
);
wire [`WORD] t_valC;
assign m_rA=	needregids?ibytes[71:68] : `RNONE;
assign m_rB=	needregids?ibytes[67:64] : `RNONE;
assign t_valC= needvalC?(needregids?ibytes[63:0]:ibytes[71:8]):64'h0;
//define iram is bigend so need change the little end insn code to big 
assign m_valC={t_valC[7:0],t_valC[15:8],t_valC[23:16],t_valC[31:24],t_valC[39:32],t_valC[47:40],t_valC[55:48],t_valC[63:56]};

endmodule
