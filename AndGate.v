module AndGate(res, A, B);
input [3:0] A, B;
output [3:0] res;
AND_DF a0(res[0], A[0], B[0]);
AND_DF a1(res[1], A[1], B[1]);
AND_DF a2(res[2], A[2], B[2]);
AND_DF a3(res[3], A[3], B[3]);
endmodule 