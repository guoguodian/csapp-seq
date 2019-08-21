module bussplit2(
input  [79:0] busi,
output [7:0] buso1,
output [71:0] buso2

);
assign buso1=busi[79:72];
assign buso2=busi[71:0];
endmodule
