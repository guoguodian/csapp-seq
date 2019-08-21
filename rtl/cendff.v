//use this clear and set dff to build the regfiles
module cendff
#(
parameter width=8
)
(
input clock,
input reset,
input enable,
input [width-1:0] reservedata,
input [width-1:0] datain,
output reg [width-1:0] dataout
);

always @(posedge clock or posedge reset)begin

	if(reset) begin
		dataout<=reservedata;
	end
	else if(enable)
		dataout<=datain;


end

endmodule
