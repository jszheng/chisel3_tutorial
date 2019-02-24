module RealGCD( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  output        io_in_ready, // @[:@6.4]
  input         io_in_valid, // @[:@6.4]
  input  [15:0] io_in_bits_a, // @[:@6.4]
  input  [15:0] io_in_bits_b, // @[:@6.4]
  output        io_out_valid, // @[:@6.4]
  output [15:0] io_out_bits // @[:@6.4]
);
  reg [15:0] x; // @[RealGCD.scala 19:14:@8.4]
  reg [31:0] _RAND_0;
  reg [15:0] y; // @[RealGCD.scala 20:14:@9.4]
  reg [31:0] _RAND_1;
  reg  p; // @[RealGCD.scala 21:18:@10.4]
  reg [31:0] _RAND_2;
  wire  _T_30; // @[RealGCD.scala 23:18:@11.4]
  wire  _T_33; // @[RealGCD.scala 25:21:@14.4]
  wire [15:0] _GEN_0; // @[RealGCD.scala 25:28:@15.4]
  wire [15:0] _GEN_1; // @[RealGCD.scala 25:28:@15.4]
  wire  _GEN_2; // @[RealGCD.scala 25:28:@15.4]
  wire  _T_35; // @[RealGCD.scala 32:13:@21.6]
  wire [16:0] _T_36; // @[RealGCD.scala 33:28:@27.8]
  wire [16:0] _T_37; // @[RealGCD.scala 33:28:@28.8]
  wire [15:0] _T_38; // @[RealGCD.scala 33:28:@29.8]
  wire [15:0] _GEN_3; // @[RealGCD.scala 32:19:@22.6]
  wire [15:0] _GEN_4; // @[RealGCD.scala 32:19:@22.6]
  wire  _T_40; // @[RealGCD.scala 37:21:@34.4]
  wire  _GEN_7; // @[RealGCD.scala 38:23:@37.4]
  assign _T_30 = p == 1'h0; // @[RealGCD.scala 23:18:@11.4]
  assign _T_33 = io_in_valid & _T_30; // @[RealGCD.scala 25:21:@14.4]
  assign _GEN_0 = _T_33 ? io_in_bits_a : x; // @[RealGCD.scala 25:28:@15.4]
  assign _GEN_1 = _T_33 ? io_in_bits_b : y; // @[RealGCD.scala 25:28:@15.4]
  assign _GEN_2 = _T_33 ? 1'h1 : p; // @[RealGCD.scala 25:28:@15.4]
  assign _T_35 = x > y; // @[RealGCD.scala 32:13:@21.6]
  assign _T_36 = y - x; // @[RealGCD.scala 33:28:@27.8]
  assign _T_37 = $unsigned(_T_36); // @[RealGCD.scala 33:28:@28.8]
  assign _T_38 = _T_37[15:0]; // @[RealGCD.scala 33:28:@29.8]
  assign _GEN_3 = _T_35 ? y : _GEN_0; // @[RealGCD.scala 32:19:@22.6]
  assign _GEN_4 = _T_35 ? x : _T_38; // @[RealGCD.scala 32:19:@22.6]
  assign _T_40 = y == 16'h0; // @[RealGCD.scala 37:21:@34.4]
  assign _GEN_7 = io_out_valid ? 1'h0 : _GEN_2; // @[RealGCD.scala 38:23:@37.4]
  assign io_in_ready = p == 1'h0; // @[RealGCD.scala 23:15:@12.4]
  assign io_out_valid = _T_40 & p; // @[RealGCD.scala 37:16:@36.4]
  assign io_out_bits = x; // @[RealGCD.scala 36:16:@33.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  x = _RAND_0[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  y = _RAND_1[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  p = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (p) begin
      if (_T_35) begin
        x <= y;
      end else begin
        if (_T_33) begin
          x <= io_in_bits_a;
        end
      end
    end else begin
      if (_T_33) begin
        x <= io_in_bits_a;
      end
    end
    if (p) begin
      if (_T_35) begin
        y <= x;
      end else begin
        y <= _T_38;
      end
    end else begin
      if (_T_33) begin
        y <= io_in_bits_b;
      end
    end
    if (reset) begin
      p <= 1'h0;
    end else begin
      if (io_out_valid) begin
        p <= 1'h0;
      end else begin
        if (_T_33) begin
          p <= 1'h1;
        end
      end
    end
  end
endmodule
