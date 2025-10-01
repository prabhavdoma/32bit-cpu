module flop_re_32(input logic clk,
	     input logic reset,
	     input logic en,
	     input logic [31:0] d,
	     output logic [31:0] q);

	always_ff @(posedge clk)
		if (reset)    q <= 32'b0;
		else if (en)  q <= d;
endmodule
