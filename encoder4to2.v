module encoder4to2(I,Y,V);
input [3:0]I;
output reg [1:0] Y;
output V;

assign V = I[3]|I[2]|I[1]|I[0];
always @(I[3] or I[2] or I[1] or I[0])
	casex(I)
		4'b1xxx: Y = 2'b11;
		4'b01xx: Y = 2'b10;
		4'b001x: Y = 2'b01;
		4'b0001: Y = 2'b00;
		default: Y = 2'b00;
	endcase
endmodule
			