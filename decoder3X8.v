module decoder3X8(a,b);
input [2:0] a;
output [7:0] b;

decoder d0(a[1:0],a[2],b[3:0]);
decoder d1(a[1:0],~a[2],b[7:4]);

endmodule