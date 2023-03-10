module decoder4X16(x0,x1,x2,x3,b);
input x0,x1,x2,x3;
output [15:0] b;

 
decoder d0(x0,x1,x2|x3,b[0],b[1],b[2],b[3]);
decoder d1(x0,x1,~x2|x3,b[4],b[5],b[6],b[7]);
decoder d3(x0,x1,x2|~x3,b[8],b[9],b[10],b[11]);
decoder d4(x0,x1,~x2|~x3,b[12],b[13],b[14],b[15]);

endmodule