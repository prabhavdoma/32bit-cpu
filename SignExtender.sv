module immGeneration (input logic [31:0] instr, 
			output logic imm);

	logic [6:0] opcode;

	always_comb begin
		opcode = isntr[6:0];
		
		case(opcode)
			7'b0110011: imm = 32'b0; 					//R-type (reg-reg)
			7'b0000011: imm = {20{instr[31]}, instr[31:20]};  		//I-type (load)
			7'b0010011: imm = {20{instr[31]}, instr[31:20]};		//I-type (immediate ALU ops)
			7'b0100011: imm = {20{instr[31]}, instr[31:25], instr[11:7]};	//S-type (store)
			7'1100011:  imm = {20{instr[31]}, instr[31:20]};		//B-type (branch)





end
