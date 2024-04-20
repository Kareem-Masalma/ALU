module ALU_dataFlow(result, Carry, cout, A, B, Opcode);
input [3:0] A, B;
input [2:0] Opcode;
output [3:0] result;
output Carry, cout;
wire [3:0] sum, sub, bitAnd, bitOr;
Adder (sum, cs, A, B, Cin); // To get the sum.
Subtractor (sub, co, A, B, Cin); // To get the subtract.
AndGate (bitA, A, B); // To get the AND.
OrGate (bitO, A, B); // To get the OR.
assign result = 
(Opcode == 3'b000)? sum:
(Opcode == 3'b001)? sub:
(Opcode == 3'b010)? bitAnd:
(Opcode == 3'b011)? bitOr: 3'bz;
endmodule 