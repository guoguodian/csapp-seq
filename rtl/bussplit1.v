module bussplit1(
input  [63:0] busi,
output [12:0] buso
);
assign buso=busi[12:0];
endmodule
