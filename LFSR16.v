module LFSR16( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input         io_inc, // @[:@6.4]
  output [15:0] io_out // @[:@6.4]
);
  reg [15:0] res; // @[LFSR16.scala 16:20:@8.4]
  reg [31:0] _RAND_0;
  wire  _T_11; // @[LFSR16.scala 18:26:@10.6]
  wire  _T_12; // @[LFSR16.scala 18:33:@11.6]
  wire  _T_13; // @[LFSR16.scala 18:29:@12.6]
  wire  _T_14; // @[LFSR16.scala 18:40:@13.6]
  wire  _T_15; // @[LFSR16.scala 18:36:@14.6]
  wire  _T_16; // @[LFSR16.scala 18:47:@15.6]
  wire  _T_17; // @[LFSR16.scala 18:43:@16.6]
  wire [14:0] _T_18; // @[LFSR16.scala 18:55:@17.6]
  wire [15:0] _T_19; // @[Cat.scala 30:58:@18.6]
  wire [15:0] _GEN_0; // @[LFSR16.scala 17:17:@9.4]
  assign _T_11 = res[0]; // @[LFSR16.scala 18:26:@10.6]
  assign _T_12 = res[2]; // @[LFSR16.scala 18:33:@11.6]
  assign _T_13 = _T_11 ^ _T_12; // @[LFSR16.scala 18:29:@12.6]
  assign _T_14 = res[3]; // @[LFSR16.scala 18:40:@13.6]
  assign _T_15 = _T_13 ^ _T_14; // @[LFSR16.scala 18:36:@14.6]
  assign _T_16 = res[5]; // @[LFSR16.scala 18:47:@15.6]
  assign _T_17 = _T_15 ^ _T_16; // @[LFSR16.scala 18:43:@16.6]
  assign _T_18 = res[15:1]; // @[LFSR16.scala 18:55:@17.6]
  assign _T_19 = {_T_17,_T_18}; // @[Cat.scala 30:58:@18.6]
  assign _GEN_0 = io_inc ? _T_19 : res; // @[LFSR16.scala 17:17:@9.4]
  assign io_out = res; // @[LFSR16.scala 21:10:@21.4]
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
  res = _RAND_0[15:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      res <= 16'h1;
    end else begin
      if (io_inc) begin
        res <= _T_19;
      end
    end
  end
endmodule
