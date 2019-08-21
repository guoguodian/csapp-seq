// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"
// CREATED		"Thu Jul 18 11:04:06 2019"

module y86seq(
	clock,
	reset,
	clockn,
	Stat
);


input wire	clock;
input wire	reset;
input wire	clockn;
output wire	Stat;

wire	SYNTHESIZED_WIRE_63;
wire	SYNTHESIZED_WIRE_64;
wire	[71:0] SYNTHESIZED_WIRE_2;
wire	[63:0] SYNTHESIZED_WIRE_3;
wire	[63:0] SYNTHESIZED_WIRE_4;
wire	[3:0] SYNTHESIZED_WIRE_65;
wire	[3:0] SYNTHESIZED_WIRE_66;
wire	[63:0] SYNTHESIZED_WIRE_67;
wire	[63:0] SYNTHESIZED_WIRE_68;
wire	[63:0] SYNTHESIZED_WIRE_10;
wire	[63:0] SYNTHESIZED_WIRE_69;
wire	[79:0] SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	[2:0] SYNTHESIZED_WIRE_14;
wire	[2:0] SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_70;
wire	[3:0] SYNTHESIZED_WIRE_71;
wire	[3:0] SYNTHESIZED_WIRE_72;
wire	[63:0] SYNTHESIZED_WIRE_73;
wire	[63:0] SYNTHESIZED_WIRE_74;
wire	[63:0] SYNTHESIZED_WIRE_75;
wire	[63:0] SYNTHESIZED_WIRE_38;
wire	SYNTHESIZED_WIRE_42;
wire	SYNTHESIZED_WIRE_43;
wire	[12:0] SYNTHESIZED_WIRE_44;
wire	[63:0] SYNTHESIZED_WIRE_45;
wire	[63:0] SYNTHESIZED_WIRE_46;
wire	[3:0] SYNTHESIZED_WIRE_47;
wire	[3:0] SYNTHESIZED_WIRE_48;
wire	[3:0] SYNTHESIZED_WIRE_49;
wire	[3:0] SYNTHESIZED_WIRE_50;
wire	[7:0] SYNTHESIZED_WIRE_54;
wire	SYNTHESIZED_WIRE_59;
wire	SYNTHESIZED_WIRE_60;
wire	SYNTHESIZED_WIRE_61;





align	b2v_align(
	.needregids(SYNTHESIZED_WIRE_63),
	.needvalC(SYNTHESIZED_WIRE_64),
	.ibytes(SYNTHESIZED_WIRE_2),
	.m_rA(SYNTHESIZED_WIRE_72),
	.m_rB(SYNTHESIZED_WIRE_71),
	.m_valC(SYNTHESIZED_WIRE_68));


alu	b2v_alu(
	.aluA(SYNTHESIZED_WIRE_3),
	.aluB(SYNTHESIZED_WIRE_4),
	.ifun(SYNTHESIZED_WIRE_65),
	.new_cc(SYNTHESIZED_WIRE_14),
	.valE(SYNTHESIZED_WIRE_73));


aluA	b2v_aluA(
	.icode(SYNTHESIZED_WIRE_66),
	.valA(SYNTHESIZED_WIRE_67),
	.valC(SYNTHESIZED_WIRE_68),
	.alu_A(SYNTHESIZED_WIRE_3));


aluB	b2v_aluB(
	.icode(SYNTHESIZED_WIRE_66),
	.valB(SYNTHESIZED_WIRE_10),
	.alu_B(SYNTHESIZED_WIRE_4));


bussplit1	b2v_bussplit1(
	.busi(SYNTHESIZED_WIRE_69),
	.buso(SYNTHESIZED_WIRE_44));


bussplit2	b2v_bussplit2(
	.busi(SYNTHESIZED_WIRE_12),
	.buso1(SYNTHESIZED_WIRE_54),
	.buso2(SYNTHESIZED_WIRE_2));


cc	b2v_cc(
	.clock(clock),
	.reset(reset),
	.set_cc(SYNTHESIZED_WIRE_13),
	.new_cc(SYNTHESIZED_WIRE_14),
	.cur_cc(SYNTHESIZED_WIRE_15));


cond	b2v_cond(
	.cur_cc(SYNTHESIZED_WIRE_15),
	.ifun(SYNTHESIZED_WIRE_65),
	.Cond(SYNTHESIZED_WIRE_70));


dstE	b2v_dstE(
	.Cond(SYNTHESIZED_WIRE_70),
	.icode(SYNTHESIZED_WIRE_66),
	.rB(SYNTHESIZED_WIRE_71),
	.d_dstE(SYNTHESIZED_WIRE_47));


dstM	b2v_dstM(
	.icode(SYNTHESIZED_WIRE_66),
	.rA(SYNTHESIZED_WIRE_72),
	.d_dstM(SYNTHESIZED_WIRE_48));


instrvalid	b2v_instrvalid(
	.icode(SYNTHESIZED_WIRE_66),
	.instr_valid(SYNTHESIZED_WIRE_59));


memaddr	b2v_memaddr(
	.icode(SYNTHESIZED_WIRE_66),
	.valA(SYNTHESIZED_WIRE_67),
	.valE(SYNTHESIZED_WIRE_73),
	.mem_addr(SYNTHESIZED_WIRE_45));


memdata	b2v_memdata(
	.icode(SYNTHESIZED_WIRE_66),
	.valA(SYNTHESIZED_WIRE_67),
	.valP(SYNTHESIZED_WIRE_74),
	.mem_data(SYNTHESIZED_WIRE_46));


memread	b2v_memread(
	.icode(SYNTHESIZED_WIRE_66),
	.mem_read(SYNTHESIZED_WIRE_42));


memwrite	b2v_memwrite(
	.icode(SYNTHESIZED_WIRE_66),
	.mem_write(SYNTHESIZED_WIRE_43));


need_regids	b2v_need_regids(
	.icode(SYNTHESIZED_WIRE_66),
	.needregids(SYNTHESIZED_WIRE_63));


need_valC	b2v_need_valC(
	.icode(SYNTHESIZED_WIRE_66),
	.needvalC(SYNTHESIZED_WIRE_64));


newpc	b2v_newpc(
	.Cond(SYNTHESIZED_WIRE_70),
	.icode(SYNTHESIZED_WIRE_66),
	.valC(SYNTHESIZED_WIRE_68),
	.valM(SYNTHESIZED_WIRE_75),
	.valP(SYNTHESIZED_WIRE_74),
	.newpc(SYNTHESIZED_WIRE_38));


pc	b2v_pc(
	.clock(clock),
	.reset(reset),
	.new_pc(SYNTHESIZED_WIRE_38),
	.cur_pc(SYNTHESIZED_WIRE_69));


pc_increase	b2v_pc_increase(
	.needregids(SYNTHESIZED_WIRE_63),
	.needvalC(SYNTHESIZED_WIRE_64),
	.pc(SYNTHESIZED_WIRE_69),
	.m_valP(SYNTHESIZED_WIRE_74));


ram	b2v_ram(
	.clock(clock),
	.reset(reset),
	.mem_read(SYNTHESIZED_WIRE_42),
	.mem_write(SYNTHESIZED_WIRE_43),
	.iaddr(SYNTHESIZED_WIRE_44),
	.mem_addr(SYNTHESIZED_WIRE_45),
	.mem_data(SYNTHESIZED_WIRE_46),
	.dmem_error(SYNTHESIZED_WIRE_61),
	.imem_error(SYNTHESIZED_WIRE_60),
	.insn(SYNTHESIZED_WIRE_12),
	.valM(SYNTHESIZED_WIRE_75));
	defparam	b2v_ram.mem_size = 2048;


regfile	b2v_regfile(
	.clock(clock),
	.reset(reset),
	.dstE(SYNTHESIZED_WIRE_47),
	.dstM(SYNTHESIZED_WIRE_48),
	.srcA(SYNTHESIZED_WIRE_49),
	.srcB(SYNTHESIZED_WIRE_50),
	.valE(SYNTHESIZED_WIRE_73),
	.valM(SYNTHESIZED_WIRE_75),
	.valA(SYNTHESIZED_WIRE_67),
	.valB(SYNTHESIZED_WIRE_10));


setcc	b2v_setcc(
	.icode(SYNTHESIZED_WIRE_66),
	.set_cc(SYNTHESIZED_WIRE_13));


split	b2v_split(
	.ibytes(SYNTHESIZED_WIRE_54),
	.m_icode(SYNTHESIZED_WIRE_66),
	.m_ifun(SYNTHESIZED_WIRE_65));


srcA	b2v_srcA(
	.icode(SYNTHESIZED_WIRE_66),
	.rA(SYNTHESIZED_WIRE_72),
	.d_srcA(SYNTHESIZED_WIRE_49));


srcB	b2v_srcB(
	.icode(SYNTHESIZED_WIRE_66),
	.rB(SYNTHESIZED_WIRE_71),
	.d_srcB(SYNTHESIZED_WIRE_50));


stat	b2v_stat0(
	.instr_valid(SYNTHESIZED_WIRE_59),
	.imem_error(SYNTHESIZED_WIRE_60),
	.dmem_error(SYNTHESIZED_WIRE_61),
	.icode(SYNTHESIZED_WIRE_66),
	.Stat(Stat));


endmodule
