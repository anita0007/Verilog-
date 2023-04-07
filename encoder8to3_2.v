module encoder8to3_2(EI,I,A,GS);
input [15:0]I;
input EI;
wire  EO;
wire a,b,c,d,e,f,g,h;
output GS;
output [3:0]A;

encoder8to3 co1(0,I[15:8],{a,b,c},A[3],EO);
encoder8to3 co2(EO,I[7:0],{d,e,f},h,null);
assign A[2] = a & d;
assign A[1] = b & e;
assign A[0] = f & c;
assign GS = A[3] & h;

endmodule