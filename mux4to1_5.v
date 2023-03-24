module mux4to1_5(w,x,y,z,F);
input w,x,y,z;
output F;

mux4to1 m40({z|y,~y&z,~y|z,y&z},{w,x},F);

endmodule