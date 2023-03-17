module mux_4bit(a,b,s,Y);
input [3:0]a;
input [7:4]b;
input s;
output reg [3:0]Y;

Y0 = (a[0]&s)|(b[0]&~s)
Y1 = c0 = (a[1]&s)|(b[1]&~s)
Y2 = (a[2]&s)|(b[2]&~s)
Y4 = (a[3]&s)|(b[3]&~s)

endmodule