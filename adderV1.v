module adderV1(x,Cin,S,Cout);
input [2:0] x;
input Cin;
output S,Cout;
wire [7:0] Y;

decoder3X8 d0({x,Cin,Y});

assign S = Y[1]|Y[2]|Y[4]|Y[7];
assign Cout = Y[3]|Y[5]|Y[6]|Y[7];

endmodule