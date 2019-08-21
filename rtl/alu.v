`include "defines.v"
module alu(
input  [`IFUNBUS] ifun,
input  [`WORD]    aluA,
input  [`WORD]    aluB,
output [`WORD]    valE,
output [2:0] new_cc
);

assign valE = (ifun == `ALUADD ) ? (aluB + aluA):
    	      (ifun == `ALUAND ) ? (aluB & aluA):
	      (ifun == `ALUSUB ) ? (aluB - aluA):
	      (ifun == `ALUXOR ) ? (aluB ^ aluA):
					       0;

assign new_cc[2] =(valE==0);//zero
assign new_cc[1] =valE[63]; //signed
//overflow detect
assign new_cc[0] =(ifun== `ALUADD ) ? (aluA[63]  == aluB[63]) &(aluB[63]!=valE[63]) :
		  (ifun== `ALUSUB ) ? (~aluA[63] == aluB[63]) &(aluB[63]!=valE[63]) :
		  0;

//溢出判断用的方法是，最高位为符号为，两个运算数同符号，结果为相异，就是溢出。
endmodule
