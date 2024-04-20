module half_adder_DF(Sum, Carry, A, B);
input A, B;
output Sum, Carry;
assign sum = A ^ B;
assign Carry = A & B;
endmodule 