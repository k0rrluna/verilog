iverilog *.v && vvp a.out
if [ -f "dump.vcd" ]; then
	gtkwave dump.vcd
	rm dump.vcd
fi
