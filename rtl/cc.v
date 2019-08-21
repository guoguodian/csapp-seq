`include "defines.v"
module cc(
input clock,
input reset,
input set_cc,
input [2:0] new_cc,
output [2:0] cur_cc
);

cendff #(3) cc_0(clock,reset,set_cc,3'h0,new_cc,cur_cc);

endmodule
