all: compile simulate wave

compile:
	iverilog  -o y86  timescale.v  test_tb.v  align.v bussplit2.v    memwrite.v     pc_increase.v  split.v alu.v cc.v  dstE.v  need_regids.v  ram.v srcA.v  aluA.v cendff.v  dstM.v  memaddr.v need_valC.v regfile.v srcB.v y86seq.v aluB.v cond.v instrvalid.v  memdata.v  newpc.v  stat.v bussplit1.v  defines.v    memread.v  pc.v setcc.v    

simulate:
	vvp y86

wave:
	gtkwave y86.vcd 

clean:
	@rm -rf csrc DVEfiles simv simv.daidir ucli.key VCS* *.vcd
	@rm -rf *.log *.vpd *.ddc *.svf *.SDF *Synth *Netlist* y86.vcd
	@rm -rf alib-52 y86 *.vpd *.key
	@rm -rf *.daidir 
	@rm -rf *.bak
	@rm -rf *~
