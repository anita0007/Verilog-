module demux1to16(D,S,Y);
input D;
input [3:0]S;
wire [3:0]y;
output [15:0]Y;

demux1to4 m0(D,1'b0,S[3:2],y[3:0]);
demux1to4 m1(y[0],1'b0,S[1:0],Y[3:0]);
demux1to4 m2(y[1],1'b0,S[1:0],Y[7:4]);
demux1to4 m3(y[2],1'b0,S[1:0],Y[11:8]);
demux1to4 m4(y[3],1'b0,S[1:0],Y[15:12]);

endmodule