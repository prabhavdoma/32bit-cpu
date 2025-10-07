module regfile(input logic [4:0] rs1, rs2, 	//read address
		input logic [4:0] waddr,   	//write address
		input logic we3,		//write enable
		input logic [31:0] wd3,		//write data
		input logic clk,
		output logic [31:0] rd1,rd2	//read data
);	
	logic [31:0] regs [0:31];

	always_ff @(posedge clk) begin
		if (we3 && waddr != 0)
			regs[waddr] <= wd3;
	end
	
	assign rd1 = regs[rs1];
	assign rd2 = regs[rs2];
endmodule