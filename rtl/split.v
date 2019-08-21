`include "defines.v"
module split(
input [7:0]   ibytes,
output [`ICODEBUS] m_icode,
output [`IFUNBUS]  m_ifun 

);

assign m_icode=	ibytes[ `ICODE ];
assign m_ifun=	ibytes[ `IFUN ];

endmodule
