`include "defines.v"
module regfile(
input clock,
input reset,
input [`REGBUS] srcA,
input [`REGBUS] srcB,
input [`REGBUS] dstE,
input [`REGBUS] dstM,
input [`WORD] valE,
input [`WORD] valM,
output [`WORD] valA,
output [`WORD] valB
);

wire         rax_wid,rcx_wid,rdx_wid,rbx_wid,rsp_wid,rbp_wid,rsi_wid,rdi_wid,r8_wid,r9_wid,r10_wid,r11_wid,r12_wid,r13_wid,r14_wid;
wire         rax_wide,rcx_wide,rdx_wide,rbx_wide,rsp_wide,rbp_wide,rsi_wide,rdi_wide,r8_wide,r9_wide,r10_wide,r11_wide,r12_wide,r13_wide,r14_wide;
wire         rax_widm,rcx_widm,rdx_widm,rbx_widm,rsp_widm,rbp_widm,rsi_widm,rdi_widm,r8_widm,r9_widm,r10_widm,r11_widm,r12_widm,r13_widm,r14_widm;

wire   [`WORD] rax_wdata,rdx_wdata,rcx_wdata,rbx_wdata,rsp_wdata,rbp_wdata,rsi_wdata,rdi_wdata,r8_wdata,r9_wdata,r10_wdata,r11_wdata,r12_wdata,r13_wdata,r14_wdata; 
wire   [`WORD] rax_data,rdx_data,rcx_data,rbx_data,rsp_data,rbp_data,rsi_data,rdi_data,r8_data,r9_data,r10_data,r11_data,r12_data,r13_data,r14_data; 

cendff  #(64) 	rax_reg(clock,reset,rax_wid,64'h0,rax_wdata,rax_data);
cendff  #(64) 	rcx_reg(clock,reset,rcx_wid,64'h0,rcx_wdata,rcx_data);
cendff  #(64) 	rdx_reg(clock,reset,rdx_wid,64'h0,rdx_wdata,rdx_data);
cendff  #(64)	rbx_reg (clock,reset,rbx_wid,64'h0,rbx_wdata,rbx_data);
cendff  #(64)	rsp_reg (clock,reset,rsp_wid,64'h0,rsp_wdata,rsp_data);
cendff  #(64)	rbp_reg (clock,reset,rbp_wid,64'h0,rbp_wdata,rbp_data);
cendff  #(64)	rsi_reg(clock,reset,rsi_wid,64'h0,rsi_wdata,rsi_data);
cendff  #(64)	rdi_reg (clock,reset,rdi_wid,64'h0,rdi_wdata,rdi_data);
cendff  #(64)	r8_reg (clock,reset,r8_wid, 64'h0,r8_wdata,r8_data);
cendff  #(64)	r9_reg (clock,reset,r9_wid, 64'h0,r9_wdata,r9_data);
cendff  #(64)	r10_reg (clock,reset,r10_wid,64'h0,r10_wdata,r10_data);
cendff  #(64)	r11_reg (clock,reset,r11_wid,64'h0,r11_wdata,r11_data);
cendff  #(64)	r12_reg (clock,reset,r12_wid,64'h0,r12_wdata,r12_data);
cendff  #(64)	r13_reg(clock,reset,r13_wid,64'h0,r13_wdata,r13_data);
cendff  #(64)	r14_reg (clock,reset,r14_wid,64'h0,r14_wdata,r14_data);

  
assign rax_wide=   dstE == `RRAX ? 1 : 0;
assign rcx_wide=   dstE == `RRCX ? 1 : 0;
assign rdx_wide=   dstE == `RRDX ? 1 : 0;
assign rbx_wide=   dstE == `RRBX ? 1 : 0;
assign rsp_wide=   dstE == `RRSP ? 1 : 0;
assign rbp_wide=   dstE == `RRBP ? 1 : 0;
assign rsi_wide=   dstE == `RRSI ? 1 : 0;
assign rdi_wide=   dstE == `RRDI ? 1 : 0;
assign r8_wide=    dstE == `R8   ? 1 : 0;
assign r9_wide=    dstE == `R9   ? 1 : 0;
assign r10_wide=   dstE == `R10  ? 1 : 0;
assign r11_wide=   dstE == `R11  ? 1 : 0;
assign r12_wide=   dstE == `R12  ? 1 : 0;
assign r13_wide=   dstE == `R13  ? 1 : 0;
assign r14_wide=   dstE == `R14  ? 1 : 0;

assign rax_widm=   dstM == `RRAX ? 1 : 0;
assign rcx_widm=   dstM == `RRCX ? 1 : 0;
assign rdx_widm=   dstM == `RRDX ? 1 : 0;
assign rbx_widm=   dstM == `RRBX ? 1 : 0;
assign rsp_widm=   dstM == `RRSP ? 1 : 0;
assign rbp_widm=   dstM == `RRBP ? 1 : 0;
assign rsi_widm=   dstM == `RRSI ? 1 : 0;
assign rdi_widm=   dstM == `RRDI ? 1 : 0;
assign r8_widm=    dstM == `R8   ? 1 : 0;
assign r9_widm=    dstM == `R9   ? 1 : 0;
assign r10_widm=   dstM == `R10  ? 1 : 0;
assign r11_widm=   dstM == `R11  ? 1 : 0;
assign r12_widm=   dstM == `R12  ? 1 : 0;
assign r13_widm=   dstM == `R13  ? 1 : 0;
assign r14_widm=   dstM == `R14  ? 1 : 0;

assign rax_wid= rax_wide | rax_widm; 
assign rcx_wid= rcx_wide | rcx_widm;   
assign rdx_wid= rdx_wide | rdx_widm;  
assign rbx_wid= rbx_wide | rbx_widm; 
assign rsp_wid= rsp_wide | rsp_widm;  
assign rbp_wid= rbp_wide | rbp_widm;
assign rsi_wid= rsi_wide | rsi_widm;   
assign rdi_wid= rdi_wide | rdi_widm;   
assign r8_wid=  r8_wide  | r8_widm;  
assign r9_wid=  r9_wide  | r9_widm;  
assign r10_wid= r10_wide | r10_widm;  
assign r11_wid= r11_wide | r11_widm;  
assign r12_wid= r12_wide | r12_widm;  
assign r13_wid= r13_wide | r13_widm;   
assign r14_wid= r14_wide | r14_widm;

assign rax_wdata= rax_wide ? valE :(rax_widm ? valM :0);
assign rcx_wdata= rcx_wide ? valE :(rcx_widm ? valM :0);
assign rdx_wdata= rdx_wide ? valE :(rdx_widm ? valM :0);
assign rbx_wdata= rbx_wide ? valE :(rbx_widm ? valM :0);
assign rsp_wdata= rsp_wide ? valE :(rsp_widm ? valM :0);
assign rbp_wdata= rbp_wide ? valE :(rbp_widm ? valM :0);
assign rsi_wdata= rsi_wide ? valE :(rsi_widm ? valM :0);
assign rdi_wdata= rdi_wide ? valE :(rdi_widm ? valM :0);
assign r8_wdata=  r8_wide  ? valE :(r8_widm  ? valM :0);
assign r9_wdata=  r9_wide  ? valE :(r9_widm ? valM :0);
assign r10_wdata= r10_wide ? valE :(r10_widm ? valM :0);
assign r11_wdata= r11_wide ? valE :(r11_widm ? valM :0);
assign r12_wdata= r12_wide ? valE :(r12_widm ? valM :0);
assign r13_wdata= r13_wide ? valE :(r13_widm ? valM :0);
assign r14_wdata= r14_wide ? valE :(r14_widm ? valM :0);

assign valA=    srcA == `RRAX ?  rax_data :
	        srcA == `RRCX ?  rcx_data :
	        srcA == `RRDX ?  rdx_data :
		srcA == `RRBX ? rbx_data :
		srcA == `RRSP ? rsp_data :
		srcA == `RRBP ? rbp_data :
		srcA == `RRSI ? rsi_data :	
		srcA == `RRDI ? rdi_data :
		srcA == `R8   ? r8_data	 :
		srcA == `R9   ? r9_data  :
		srcA == `R10  ? r10_data :
		srcA == `R11  ? r11_data :
		srcA == `R12  ? r12_data :
		srcA == `R13  ? r13_data :
		srcA == `R14  ? r14_data :
		0;
assign valB=    srcB == `RRAX ?  rax_data :
	        srcB == `RRCX ?  rcx_data :
	        srcB == `RRDX ?  rdx_data :
		srcB == `RRBX ? rbx_data :
		srcB == `RRSP ? rsp_data :
		srcB == `RRBP ? rbp_data :
		srcB == `RRSI ? rsi_data :	
		srcB == `RRDI ? rdi_data :
		srcB == `R8   ? r8_data	 :
		srcB == `R9   ? r9_data  :
		srcB == `R10  ? r10_data :
		srcB == `R11  ? r11_data :
		srcB == `R12  ? r12_data :
		srcB == `R13  ? r13_data :
		srcB == `R14  ? r14_data :
		0;
endmodule
 


 
