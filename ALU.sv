module alu(
	input logic [31:0] A, B,
	input logic [3:0] opcode,
	output logic [31:0] result.
	output logic Zero);

	always_comb begin
		case(opcode)
			4'b0000: result = A + B;
			4'b0000: result = A - B;
			4'b0000: result = A & B;
			4'b0000: result = A | B;
			default: result = 0;
		endcase
	end
	assign Zero = (result == 0);
endmodule
