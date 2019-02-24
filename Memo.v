module Memo( // @[:@3.2]
  input        clock, // @[:@4.4]
  input        reset, // @[:@5.4]
  input        io_wen, // @[:@6.4]
  input  [7:0] io_wrAddr, // @[:@6.4]
  input  [7:0] io_wrData, // @[:@6.4]
  input        io_ren, // @[:@6.4]
  input  [7:0] io_rdAddr, // @[:@6.4]
  output [7:0] io_rdData // @[:@6.4]
);
  reg [7:0] mem [0:255]; // @[Memo.scala 20:16:@8.4]
  reg [31:0] _RAND_0;
  wire [7:0] mem__T_21_data; // @[Memo.scala 20:16:@8.4]
  wire [7:0] mem__T_21_addr; // @[Memo.scala 20:16:@8.4]
  wire [7:0] mem__T_19_data; // @[Memo.scala 20:16:@8.4]
  wire [7:0] mem__T_19_addr; // @[Memo.scala 20:16:@8.4]
  wire  mem__T_19_mask; // @[Memo.scala 20:16:@8.4]
  wire  mem__T_19_en; // @[Memo.scala 20:16:@8.4]
  assign mem__T_21_addr = io_rdAddr;
  assign mem__T_21_data = mem[mem__T_21_addr]; // @[Memo.scala 20:16:@8.4]
  assign mem__T_19_data = io_wrData;
  assign mem__T_19_addr = io_wrAddr;
  assign mem__T_19_mask = 1'h1;
  assign mem__T_19_en = io_wen;
  assign io_rdData = io_ren ? mem__T_21_data : 8'h0; // @[Memo.scala 26:13:@13.4 Memo.scala 27:29:@16.6]
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
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    mem[initvar] = _RAND_0[7:0];
  `endif // RANDOMIZE_MEM_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if(mem__T_19_en & mem__T_19_mask) begin
      mem[mem__T_19_addr] <= mem__T_19_data; // @[Memo.scala 20:16:@8.4]
    end
  end
endmodule
