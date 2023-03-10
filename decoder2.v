module decoder2(x,E,Y);
input [1:0] x;
input E;
output [3:0] Y;

assign Y[0] = ~E & ~x[0] & ~x[1];
assign Y[1] = ~E & x[0] & ~x[1];
assign Y[2] = ~E & ~x[0] & x[1];
assign Y[3] = ~E & x[0] & x[1];

endmodule