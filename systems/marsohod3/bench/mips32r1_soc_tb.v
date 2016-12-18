`timescale 1ns / 1ps

module mips32r1_soc_tb;

	reg clk = 0;
	always
	begin
		#5 clk = !clk;
	end

	reg reset = 0;
	initial
	begin
		#100 reset = 1;
		#100 reset = 0;
	end

	initial
		#10000 $finish;

	initial
	begin
		$dumpfile("mips32r1_soc_tb.vcd");
		$dumpvars(0, mips32r1_soc_tb);
	end

	mips32r1_soc #(
		.MEMFILE ("../src/marsohod3_0/sw/nmon.be.10MHz.9600.txt")
	)
	soc (
		.clock(clk),
		.reset(reset)
	);

endmodule
