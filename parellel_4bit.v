module parellel_4bit(x,y,C0,S,Cout);
input [3:0] x,y;
input C0;
output [3:0] S;
output Cout;

wire C1,C2,C3;

assign {C1,S[0]} = full_adder(x[0],y[0],C0);
assign {C2,S[1]} = full_adder(x[1],y[1],C1);
assign {C3,S[2]} = full_adder(x[2],y[2],C2);
assign {Cout,S[3]} = full_adder(x[3],y[3],C3);

function [1:0] full_adder;
input a,b,Cin;
full_adder = a + b +Cin;
endfunction

endmodule