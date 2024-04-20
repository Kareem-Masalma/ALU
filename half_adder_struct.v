module half_adder_struct(Sum, Carry, A, B);
input A, B;
output Sum, Carry;
xor(Sum, A, B);
and(Carry, A, B);
endmodule 