module (clock,clear,a,e);
  inout clock,clear,a;
  output e;
  reg b,c,d;

  always @ (posedge clock or negedge clear)
    begin
      if (!clear)
        begin
          a<=0;
          b<=0;
          c<=0;
          d<=0;
          e<=0;
        end
      else
        begin
          b<=a;
          c<=b;
          d<=c;
          e<=d;
        end
    end
endmodule
