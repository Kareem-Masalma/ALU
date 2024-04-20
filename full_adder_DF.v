module full_adder_DF(Sum, Carry, A, B, Cin);
input A, B, Cin;
output wire Sum, Carry;
assign Sum = A ^ B^ Cin; // Assign the value of the xor of the inputs to the Sum.
assign Carry = (A & B) | (B & Cin) | (A & Cin); // Assign the value of the Carry.
						// We Simplified the boolean exprission to get to (A & B) | (B & Cin) | (A & Cin)
endmodule 
