module immGeneration (input logic [31:0] instr, 
			output logic [31:0] imm);

	always_comb begin
		case(instr[6:0])
			7'b0110011: imm = 32'b0; 					//R-type (reg-reg)
			7'b0000011: imm = {{20{instr[31]}}, instr[31:20]};  		//I-type (load)
			7'b0010011: imm = {{20{instr[31]}}, instr[31:20]};		//I-type (immediate ALU ops)
			7'b0100011: imm = {{20{instr[31]}}, instr[31:25], instr[11:7]};	//S-type (store)
			7'b1100011: imm = {{19{instr[31]}}, instr[31], instr[7], instr[30:25], instr[11:8], 1'b0};		//B-type (branch)
			default:    imm = 32'b0;
		endcase
	end
endmodule
