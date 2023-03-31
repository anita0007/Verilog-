module demux1to16_1(,D,w,x,y,z,F);
input D;
input w,x,y,z;

wire [3:0]y1;
wire [15:0]Y;

output F;

demux1to4 m0(D,1'b0,{w,x},y1[3:0]);
demux1to4 m1(y1[0],1'b0,{y,z},Y[3:0]);
demux1to4 m2(y1[1],1'b0,{y,z},Y[7:4]);
demux1to4 m3(y1[2],1'b0,{y,z},Y[11:8]);
demux1to4 m4(y1[3],1'b0,{y,z},Y[15:12]);

assign F = Y[2]|Y[3]|Y[5]|Y[9]|Y[11];

endmodule