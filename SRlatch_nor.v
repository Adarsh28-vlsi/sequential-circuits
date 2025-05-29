module srlatch_nor(s,r,q,q0);
  input s,r;
  output q,q0;
  assign q = ~(q0|r);
  assign q0 = ~(q|s);
endmodule
