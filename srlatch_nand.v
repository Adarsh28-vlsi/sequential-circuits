module srlatch_nand(s,r,q,q0);
  input s,r;
  output q,q0;
  assign q = ~(q0&s);
  assign q0 = ~(q&r);
endmodule
