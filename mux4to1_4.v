module mux4to1_4(x,y,z,F);
input x,y,z;
output F;

mux4to1 m40({1'b1,1'b0,y,1'b1},{x,z},F);

endmodule