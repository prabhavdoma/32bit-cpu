module data_mem(input logic clk,
		input logic [31:0] address,	// load address
		input logic we,			//write enable
		input logic [31:0] wd,		//write data
		output logic [31:0] rd		//read data
);
	logic [31:0] regs [0:255];

	always_ff @(posedge clk) begin
		if (we != 0)
			regs[address[9:2]] <= wd;
	end
	assign rd = regs[address];
endmodule