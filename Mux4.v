module Mux2( // @[:@3.2]
  input   io_sel, // @[:@6.4]
  input   io_in0, // @[:@6.4]
  input   io_in1, // @[:@6.4]
  output  io_out // @[:@6.4]
);
  wire  _T_13; // @[Mux4.scala 15:21:@8.4]
  wire  _T_14; // @[Mux4.scala 15:34:@9.4]
  wire  _T_15; // @[Mux4.scala 15:42:@10.4]
  assign _T_13 = io_sel & io_in1; // @[Mux4.scala 15:21:@8.4]
  assign _T_14 = ~ io_sel; // @[Mux4.scala 15:34:@9.4]
  assign _T_15 = _T_14 & io_in0; // @[Mux4.scala 15:42:@10.4]
  assign io_out = _T_13 | _T_15; // @[Mux4.scala 15:10:@12.4]
endmodule
module Mux4( // @[:@36.2]
  input        clock, // @[:@37.4]
  input        reset, // @[:@38.4]
  input        io_in0, // @[:@39.4]
  input        io_in1, // @[:@39.4]
  input        io_in2, // @[:@39.4]
  input        io_in3, // @[:@39.4]
  input  [1:0] io_sel, // @[:@39.4]
  output       io_out // @[:@39.4]
);
  wire  m0_io_sel; // @[Mux4.scala 33:18:@41.4]
  wire  m0_io_in0; // @[Mux4.scala 33:18:@41.4]
  wire  m0_io_in1; // @[Mux4.scala 33:18:@41.4]
  wire  m0_io_out; // @[Mux4.scala 33:18:@41.4]
  wire  m1_io_sel; // @[Mux4.scala 38:18:@48.4]
  wire  m1_io_in0; // @[Mux4.scala 38:18:@48.4]
  wire  m1_io_in1; // @[Mux4.scala 38:18:@48.4]
  wire  m1_io_out; // @[Mux4.scala 38:18:@48.4]
  wire  m2_io_sel; // @[Mux4.scala 43:18:@55.4]
  wire  m2_io_in0; // @[Mux4.scala 43:18:@55.4]
  wire  m2_io_in1; // @[Mux4.scala 43:18:@55.4]
  wire  m2_io_out; // @[Mux4.scala 43:18:@55.4]
  Mux2 m0 ( // @[Mux4.scala 33:18:@41.4]
    .io_sel(m0_io_sel),
    .io_in0(m0_io_in0),
    .io_in1(m0_io_in1),
    .io_out(m0_io_out)
  );
  Mux2 m1 ( // @[Mux4.scala 38:18:@48.4]
    .io_sel(m1_io_sel),
    .io_in0(m1_io_in0),
    .io_in1(m1_io_in1),
    .io_out(m1_io_out)
  );
  Mux2 m2 ( // @[Mux4.scala 43:18:@55.4]
    .io_sel(m2_io_sel),
    .io_in0(m2_io_in0),
    .io_in1(m2_io_in1),
    .io_out(m2_io_out)
  );
  assign io_out = m2_io_out; // @[Mux4.scala 48:10:@62.4]
  assign m0_io_sel = io_sel[0]; // @[Mux4.scala 34:13:@45.4]
  assign m0_io_in0 = io_in0; // @[Mux4.scala 35:13:@46.4]
  assign m0_io_in1 = io_in1; // @[Mux4.scala 36:13:@47.4]
  assign m1_io_sel = io_sel[0]; // @[Mux4.scala 39:13:@52.4]
  assign m1_io_in0 = io_in2; // @[Mux4.scala 40:13:@53.4]
  assign m1_io_in1 = io_in3; // @[Mux4.scala 41:13:@54.4]
  assign m2_io_sel = io_sel[1]; // @[Mux4.scala 44:13:@59.4]
  assign m2_io_in0 = m0_io_out; // @[Mux4.scala 45:13:@60.4]
  assign m2_io_in1 = m1_io_out; // @[Mux4.scala 46:13:@61.4]
endmodule
