module encoder8to3(EI,I,A,GS,EO);
input EI;
input [7:0]I;
output reg[2:0]A;
output GS,EO;

assign GS = EI|I[0];
assign EO = ~(I[0]&I[1]&I[2]&I[3]&I[4]&I[5]&I[6]&I[7]);

always @(I[7] or I[6] or I[5] or I[4] or I[3] or I[2] or I[1] or I[0])
	if(EI == 1) begin
		A[2] = 1; A[1] = 1; A[0] = 1;
	end
	else begin
		casex(I)
			8'b11111110: A = 3'b111;
			8'b1111110x: A = 3'b110;
			8'b111110xx: A = 3'b101;
			8'b11110xxx: A = 3'b100;
			8'b1110xxxx: A = 3'b011;
			8'b110xxxxx: A = 3'b010;
			8'b10xxxxxx: A = 3'b001;
			8'b0xxxxxxx: A = 3'b000;
			8'b11111111: A = 3'b111;
			default: A = 3'b111;
		endcase
	end
endmodule