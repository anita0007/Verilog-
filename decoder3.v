module decoder3(x,y,z,S,Cout);
input x,y,z;
output S,Cout;

wire [7:0] Y;
decoder d0(x,y,z,Y[0],Y[1],Y[2],Y[3]);
decoder d1(x,y,~z,Y[4],Y[5],Y[6],Y[7]);

assign S = Y[1]|Y[2]|Y[4]|Y[7];
assign Cout = Y[3]|Y[5]|Y[6]|Y[7];

endmodule