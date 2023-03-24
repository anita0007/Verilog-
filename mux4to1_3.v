module mux4to1_3(x,y,z,F);
input x,y,z;
output F;

mux4to1 m40({1'b1,~x,x,~x},{y,z},F);

endmodule