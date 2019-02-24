module Adder( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input  [11:0] io_in0, // @[:@6.4]
  input  [11:0] io_in1, // @[:@6.4]
  output [11:0] io_out // @[:@6.4]
);
  wire [12:0] _T_11; // @[Adder.scala 14:20:@8.4]
  assign _T_11 = io_in0 + io_in1; // @[Adder.scala 14:20:@8.4]
  assign io_out = io_in0 + io_in1; // @[Adder.scala 14:10:@10.4]
endmodule
