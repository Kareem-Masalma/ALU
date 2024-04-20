module full_adder_struct(Sum, Carry, A, B, Cin);
input A, B, Cin;
output Sum, Carry;
wire s1, c1, c2;
xor g1 (Sum, A, B, Cin); // Xor between A, B and Cin and store it in Sum as the final sum.
xor g2 (s1, A, B); // Xor between the A and B and store it in the wire s1 (The sum of the first Half adder) to use it in other gate.
and (c1, A, B); // And between A and B as the carry for the first Half adder.
and (c2, s1, Cin); // And between the wire s1 and the input Cin and store it in the wire c2.
or (Carry, c1, c2); // Or between the wire c1 (The carry of the first Half adder) and the wire c2 and store it in Carry as the final carry
endmodule 