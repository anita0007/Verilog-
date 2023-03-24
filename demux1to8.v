module demux1to8(D,E,S,Y);
input D,E;
input [1:0]S;
output [7:0]Y;

demux1to4 m0(D,E,S[1:0],Y[3:0]);
demux1to4 m1(D,~E,S[1:0],Y[7:4]);

endmodule
