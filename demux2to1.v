module demux2to1(D,S,Y);
input D,S;
output [1:0]Y;

/*always @(D,S) begin
if(S==0) begin
	Y[0]=D;
	Y[1]=0;
	end
else
	Y = {D,1'b0};
end
*/
assign Y[0] = ~S&D;
assign Y[1] = S&D;

endmodule