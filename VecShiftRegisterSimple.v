module VecShiftRegisterSimple( // @[:@3.2]
  input        clock, // @[:@4.4]
  input        reset, // @[:@5.4]
  input  [7:0] io_in, // @[:@6.4]
  output [7:0] io_out // @[:@6.4]
);
  reg [7:0] delays_0; // @[VecShiftRegisterSimple.scala 15:23:@13.4]
  reg [31:0] _RAND_0;
  reg [7:0] delays_1; // @[VecShiftRegisterSimple.scala 15:23:@13.4]
  reg [31:0] _RAND_1;
  reg [7:0] delays_2; // @[VecShiftRegisterSimple.scala 15:23:@13.4]
  reg [31:0] _RAND_2;
  reg [7:0] delays_3; // @[VecShiftRegisterSimple.scala 15:23:@13.4]
  reg [31:0] _RAND_3;
  assign io_out = delays_3; // @[VecShiftRegisterSimple.scala 21:13:@18.4]
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
  delays_0 = _RAND_0[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  delays_1 = _RAND_1[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  delays_2 = _RAND_2[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  delays_3 = _RAND_3[7:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      delays_0 <= 8'h0;
    end else begin
      delays_0 <= io_in;
    end
    if (reset) begin
      delays_1 <= 8'h0;
    end else begin
      delays_1 <= delays_0;
    end
    if (reset) begin
      delays_2 <= 8'h0;
    end else begin
      delays_2 <= delays_1;
    end
    if (reset) begin
      delays_3 <= 8'h0;
    end else begin
      delays_3 <= delays_2;
    end
  end
endmodule
