module srlatch_tb;
  reg s, r;
  wire q, q0;
  integer i;

  srlatch_nor uut (.s(s), .r(r), .q(q), .q0(q0));

  initial begin
    $monitor($time, " s=%b, r=%b, q=%b, q0=%b", s, r, q, q0);
    for (i = 0; i < 4; i = i + 1) begin
      {s, r} = i[1:0];
      #5;
    end
    #5 $finish;
  end
endmodule
