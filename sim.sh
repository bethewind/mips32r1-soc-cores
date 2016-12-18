#!/bin/sh

set -e

fusesoc --cores-root cores/ sim marsohod2

gtkwave ./build/marsohod2_0/sim-icarus/mips32r1_soc_tb.vcd \
	./build/marsohod2_0/src/marsohod2_0/data/mips32r1_soc_tb.gtkw
