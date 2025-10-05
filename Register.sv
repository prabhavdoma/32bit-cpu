module flop_re_32(input logic clk,
	     input logic reset,
	     input logic en,
	     input logic [31:0] d,
	     output logic [31:0] q);

	always_ff @(posedge clk)
		if (reset)    q <= 32'b0;
		else if (en)  q <= d;
endmodule

module regfile(input logic rs1
		input logic rs2
		input logic waddr
		input logic we3
		input logic wd3
		input logic clk,
		output logic rd1,
		output logic rd2);

	always_ff @(posedge clk)
		//rd1 = val at rs1
		//rd2 = val at rs2
		//if we3 = 1, then set waddr to wd3	
endmodule