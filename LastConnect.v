module LastConnect( // @[:@3.2]
  input        clock, // @[:@4.4]
  input        reset, // @[:@5.4]
  input  [3:0] io_in, // @[:@6.4]
  output [3:0] io_out // @[:@6.4]
);
  assign io_out = 4'h4; // @[MyOperators.scala 21:10:@8.4 MyOperators.scala 22:10:@9.4 MyOperators.scala 23:10:@10.4 MyOperators.scala 24:10:@11.4]
endmodule
