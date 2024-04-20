module half_adder_behav(Sum, Carry, A, B);
input A, B;
output Sum, Carry;
reg Sum, Carry;
always @ (A, B)
begin
	Sum = A ^ B;
	Carry = A & B;
end 
endmodule 