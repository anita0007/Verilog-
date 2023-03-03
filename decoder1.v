module decoder1(x0,x1,E,y0,y1,y2,y3,y4,y5,y6,y7);
input x0,x1,E;
output reg y0,y1,y2,y3,y4,y5,y6,y7;

always @(x0 or x1 or E)
	if(E == 1) begin		
		if(x0 == 0&x1 == 0)begin
			y0 = 0;y1 = 0;y2 = 0;y3 = 0;y4 = 1;y5 = 0;y6 = 0;y7 = 0;
		end
		else if(x0 == 0&x1 == 1)begin
			y0 = 0;y1 = 0;y2 = 0;y3 = 0;y4 = 0;y5 = 1;y6 = 0;y7 = 0;
		end
		else if(x0 == 1&x1 == 0)begin
			y0 = 0;y1 = 0;y2 = 0;y3 = 0;y4 = 0;y5 = 0;y6 = 1;y7 = 0;
		end
		else if(x0 == 0&x1 == 1)begin
			y0 = 0;y1 = 0;y2 = 0;y3 = 0;y4 = 0;y5 = 0;y6 = 0;y7 = 1;
		end
	end
	else begin
		if(x0 == 0&x1 == 0)begin
			y0 = 1;y1 = 0;y2 = 0;y3 = 0;y4 = 0;y5 = 0;y6 = 0;y7 = 0;
		end
		else if(x0 == 0&x1 == 1)begin
			y0 = 0;y1 = 1;y2 = 0;y3 = 0;y4 = 0;y5 = 0;y6 = 0;y7 = 0;
		end
		else if(x0 == 1&x1 == 0)begin
			y0 = 0;y1 = 0;y2 = 1;y3 = 0;y4 = 0;y5 = 0;y6 = 0;y7 = 0;
		end
		else if(x0 == 1&x1 == 1)begin
			y0 = 0;y1 = 0;y2 = 0;y3 = 1;y4 = 0;y5 = 0;y6 = 0;y7 = 0;
		end
	end


endmodule