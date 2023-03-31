module code8to3_1(I,EI,A,GS,EO);
input [7:0]I;
input EI;
output [2:0]A;
output GS,EO;

assign A[0] = I[1]|I[3]|I[5]|I[7];
assign A[1] = I[2]|I[3]|I[6]|I[7];
assign A[2] = I[4]|I[5]|I[6]|I[7];
assign GS = EI|I[0];
assign EO = EI|I[1]|I[2]|I[3]|I[4]|I[5]|I[6]|I[7];

endmodule