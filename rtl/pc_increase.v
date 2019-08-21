`include "defines.v"
module pc_increase(

input needregids,
input needvalC,
input	[`WORD] pc,
output [`WORD]m_valP
);


wire [3:0] temp;
assign temp=needvalC?4'h8 :1'b0;//pc+1+needregids*1+needvalC*8;
assign m_valP=pc+1+needregids+temp;
endmodule
