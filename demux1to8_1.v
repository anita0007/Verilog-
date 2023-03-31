module demux1to8_1(D,x,y,z,F);
input x,y,z,D;
wire [7:0]Y;
output F;

demux1to4 m0(D,x,{y,z},Y[3:0]);
demux1to4 m1(D,~x,{y,z},Y[7:4]);

assign F = Y[3]|Y[5]|Y[6]|Y[7];

endmodule
