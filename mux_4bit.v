module mux_4bit(a,b,s,Y);
input [3:0]a;
input [3:0]b;
input s;
output [3:0]Y;

mux2to1 m0(a[0],b[0],s,Y[0]);
mux2to1 m1(a[1],b[1],s,Y[1]);
mux2to1 m2(a[2],b[2],s,Y[2]);
mux2to1 m3(a[3],b[3],s,Y[3]);

endmodule