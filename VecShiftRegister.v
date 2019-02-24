module VecShiftRegister( // @[:@3.2]
  input        clock, // @[:@4.4]
  input        reset, // @[:@5.4]
  input  [3:0] io_ins_0, // @[:@6.4]
  input  [3:0] io_ins_1, // @[:@6.4]
  input  [3:0] io_ins_2, // @[:@6.4]
  input  [3:0] io_ins_3, // @[:@6.4]
  input        io_load, // @[:@6.4]
  input        io_shift, // @[:@6.4]
  output [3:0] io_out // @[:@6.4]
);
  reg [3:0] delays_0; // @[VecShiftRegister.scala 17:19:@8.4]
  reg [31:0] _RAND_0;
  reg [3:0] delays_1; // @[VecShiftRegister.scala 17:19:@8.4]
  reg [31:0] _RAND_1;
  reg [3:0] delays_2; // @[VecShiftRegister.scala 17:19:@8.4]
  reg [31:0] _RAND_2;
  reg [3:0] delays_3; // @[VecShiftRegister.scala 17:19:@8.4]
  reg [31:0] _RAND_3;
  wire [3:0] _GEN_0; // @[VecShiftRegister.scala 23:25:@16.6]
  wire [3:0] _GEN_1; // @[VecShiftRegister.scala 23:25:@16.6]
  wire [3:0] _GEN_2; // @[VecShiftRegister.scala 23:25:@16.6]
  wire [3:0] _GEN_3; // @[VecShiftRegister.scala 23:25:@16.6]
  assign _GEN_0 = io_shift ? io_ins_0 : delays_0; // @[VecShiftRegister.scala 23:25:@16.6]
  assign _GEN_1 = io_shift ? delays_0 : delays_1; // @[VecShiftRegister.scala 23:25:@16.6]
  assign _GEN_2 = io_shift ? delays_1 : delays_2; // @[VecShiftRegister.scala 23:25:@16.6]
  assign _GEN_3 = io_shift ? delays_2 : delays_3; // @[VecShiftRegister.scala 23:25:@16.6]
  assign io_out = delays_3; // @[VecShiftRegister.scala 29:10:@22.4]
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
  delays_0 = _RAND_0[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  delays_1 = _RAND_1[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  delays_2 = _RAND_2[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  delays_3 = _RAND_3[3:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (io_load) begin
      delays_0 <= io_ins_0;
    end else begin
      if (io_shift) begin
        delays_0 <= io_ins_0;
      end
    end
    if (io_load) begin
      delays_1 <= io_ins_1;
    end else begin
      if (io_shift) begin
        delays_1 <= delays_0;
      end
    end
    if (io_load) begin
      delays_2 <= io_ins_2;
    end else begin
      if (io_shift) begin
        delays_2 <= delays_1;
      end
    end
    if (io_load) begin
      delays_3 <= io_ins_3;
    end else begin
      if (io_shift) begin
        delays_3 <= delays_2;
      end
    end
  end
endmodule
