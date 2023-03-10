module decoder4X16_2(x,s);
input [3:0]x;
wire [15:0] b;
output s;

 
decoder4X16 d0(x,b);


assign s = b[1]|b[5]|b[9]|b[15];

endmodule