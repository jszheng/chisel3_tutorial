module Accumulator( // @[:@3.2]
  input        clock, // @[:@4.4]
  input        reset, // @[:@5.4]
  input        io_in, // @[:@6.4]
  output [7:0] io_out // @[:@6.4]
);
  reg [7:0] accumulator; // @[Accumulator.scala 13:28:@8.4]
  reg [31:0] _RAND_0;
  wire [7:0] _GEN_0; // @[Accumulator.scala 14:30:@9.4]
  wire [8:0] _T_11; // @[Accumulator.scala 14:30:@9.4]
  wire [7:0] _T_12; // @[Accumulator.scala 14:30:@10.4]
  assign _GEN_0 = {{7'd0}, io_in}; // @[Accumulator.scala 14:30:@9.4]
  assign _T_11 = accumulator + _GEN_0; // @[Accumulator.scala 14:30:@9.4]
  assign _T_12 = accumulator + _GEN_0; // @[Accumulator.scala 14:30:@10.4]
  assign io_out = accumulator; // @[Accumulator.scala 15:10:@12.4]
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
  accumulator = _RAND_0[7:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      accumulator <= 8'h0;
    end else begin
      accumulator <= _T_12;
    end
  end
endmodule
