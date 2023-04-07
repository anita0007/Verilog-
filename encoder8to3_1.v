module encoder8to3_1(EI,I,A,GS,EO);
input EI;
input [7:0]I;
output reg[2:0]A;
output reg GS,EO;

always @(I or EI)
		casex({EI,I})
			9'b1xxxxxxxx: {A,GS,EO} = 5'b11111;
			9'b011111111: {A,GS,EO} = 5'b11110;
			9'b011111110: {A,GS,EO} = 5'b11101;
			9'b00xxxxxxx: {A,GS,EO} = 5'b00001;
			9'b010xxxxxx: {A,GS,EO} = 5'b00101;
			9'b0110xxxxx: {A,GS,EO} = 5'b01001;
			9'b01110xxxx: {A,GS,EO} = 5'b01101;
			9'b011110xxx: {A,GS,EO} = 5'b10001;
			9'b0111110xx: {A,GS,EO} = 5'b10101;
			9'b01111110x: {A,GS,EO} = 5'b11001;
			default: A = 5'b11111;
		endcase
endmodule