module Counter( // @[:@3.2]
  input        clock, // @[:@4.4]
  input        reset, // @[:@5.4]
  input        io_inc, // @[:@6.4]
  input  [3:0] io_amt, // @[:@6.4]
  output [7:0] io_tot // @[:@6.4]
);
  reg [7:0] _T_14; // @[Counter.scala 15:20:@8.4]
  reg [31:0] _RAND_0;
  wire [7:0] _GEN_1; // @[Counter.scala 16:35:@10.6]
  wire [8:0] _T_15; // @[Counter.scala 16:35:@10.6]
  wire [7:0] _T_16; // @[Counter.scala 16:35:@11.6]
  wire [7:0] _GEN_0; // @[Counter.scala 16:15:@9.4]
  assign _GEN_1 = {{4'd0}, io_amt}; // @[Counter.scala 16:35:@10.6]
  assign _T_15 = _T_14 + _GEN_1; // @[Counter.scala 16:35:@10.6]
  assign _T_16 = _T_14 + _GEN_1; // @[Counter.scala 16:35:@11.6]
  assign _GEN_0 = io_inc ? _T_16 : _T_14; // @[Counter.scala 16:15:@9.4]
  assign io_tot = _T_14; // @[Counter.scala 29:10:@16.4]
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
  _T_14 = _RAND_0[7:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      _T_14 <= 8'h0;
    end else begin
      if (io_inc) begin
        _T_14 <= _T_16;
      end
    end
  end
endmodule
