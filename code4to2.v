module code4to2(I,A,V);
input [3:0]I;
output [1:0]A;
output V;

assign V = I[0]|I[1]|I[2]|I[3];
assign A[1] = I[2]|I[3];
assign A[0] = I[3]|(~I[2] & I[1]);

endmodule

