module Adder(Sum, Carry, A, B, Cin);
input [3:0] A, B;
input Cin;
output [3:0]Sum;
output Carry;
wire [2:0] c;
full_adder_DF f0 (Sum[0], c[0], A[0], B[0], Cin);
full_adder_DF f1 (Sum[1], c[1], A[1], B[1], c[0]);
full_adder_DF f2 (Sum[2], c[2], A[2], B[2], c[1]);
full_adder_DF f3 (Sum[3], Carry, A[3], B[3], c[2]);
endmodule	