module OR_behav(res, A, B);
input A, B;
output res;
reg res;
always @ (A, B)
begin
	res = A | B;
end
endmodule 