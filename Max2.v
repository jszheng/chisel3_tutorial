module Max2( // @[:@3.2]
  input        clock, // @[:@4.4]
  input        reset, // @[:@5.4]
  input  [7:0] io_in0, // @[:@6.4]
  input  [7:0] io_in1, // @[:@6.4]
  output [7:0] io_out // @[:@6.4]
);
  wire  _T_11; // @[Max2.scala 14:24:@8.4]
  assign _T_11 = io_in0 > io_in1; // @[Max2.scala 14:24:@8.4]
  assign io_out = _T_11 ? io_in0 : io_in1; // @[Max2.scala 14:10:@10.4]
endmodule
