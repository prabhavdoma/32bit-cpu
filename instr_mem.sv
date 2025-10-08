module instr_mem(input logic [31:0] address,
		output logic [31:0] instr);

	logic [31:0] regs [0:255];
	
	assign instr = regs[address];

endmodule
	