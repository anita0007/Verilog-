module half_adder(x,y,Sum,Carry);
input x,y;
output Sum,Carry;
assign Sum = x ^ y;
assign Carry = x & y;
endmodule

module Add(x,y,Cin,S,Cout);
input x,y,Cin;
output S,Cout;
wire S1,C1,C2;
half_adder ha_1(x,y,S1,C1);
half_adder ha_2(Cin,S1,S,C2);
or(Cout,C1,C2);
endmodule
