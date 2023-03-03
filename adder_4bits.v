module adder_4bits(x,y,C0,S,Cout);
input [3:0] x,y;
input C0;
output [3:0] S;
output Cout;

wire C1,C2,C3;

Add fa0(x[0],y[0],C0,S[0],C1);
Add fa1(x[1],y[1],C1,S[1],C2);
Add fa2(x[2],y[2],C2,S[2],C3);
Add fa3(x[3],y[3],C3,S[3],Cout);

endmodule