iverilog *.v &&
	vvp a.out &&
	gtkwave dmp.vcd
