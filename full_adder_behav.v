module full_adder_behav(Sum1, Carry, A, B, Cin);
input A, B, Cin;
output Sum1, Carry;
reg Sum1, Carry;
always @ (A, B, Cin)
begin
	Sum1 = A ^ B ^ Cin;
	Carry = (A & B) | (B & Cin) | (A & Cin);
end
endmodule 