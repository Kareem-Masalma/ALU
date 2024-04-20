module OrGate(res, A, B);
input [3:0] A, B;
output [3:0] res;
OR_DF or0(res[0], A[0], B[0]);
OR_DF or1(res[1], A[1], B[1]);
OR_DF or2(res[2], A[2], B[2]);
OR_DF or3(res[3], A[3], B[3]);
endmodule 