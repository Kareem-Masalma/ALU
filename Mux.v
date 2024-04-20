module Mux (result, sum, sub, bitAnd, bitOr, Opcode);
input [3:0] sum, sub, bitAnd, bitOr;
input [2:0] Opcode;
output reg [3:0] result;

always @ (sum, sub, bitAnd, bitOr, Opcode)
begin
	if (Opcode == 3'b000)
		result = sum;
	else if (Opcode == 3'b001)
		result = sub;
	else if (Opcode == 3'b010)
		result = bitAnd;
	else if (Opcode == 3'b011)
		result = bitOr;
end
endmodule
