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