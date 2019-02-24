module DynamicMemorySearch( // @[:@3.2]
  input        clock, // @[:@4.4]
  input        reset, // @[:@5.4]
  input        io_isWr, // @[:@6.4]
  input  [3:0] io_wrAddr, // @[:@6.4]
  input  [7:0] io_data, // @[:@6.4]
  input        io_en, // @[:@6.4]
  output [3:0] io_target, // @[:@6.4]
  output       io_done // @[:@6.4]
);
  reg [7:0] list [0:9]; // @[DynamicMemorySearch.scala 29:19:@9.4]
  reg [31:0] _RAND_0;
  wire [7:0] list_memVal_data; // @[DynamicMemorySearch.scala 29:19:@9.4]
  wire [3:0] list_memVal_addr; // @[DynamicMemorySearch.scala 29:19:@9.4]
  reg [31:0] _RAND_1;
  wire [7:0] list__T_27_data; // @[DynamicMemorySearch.scala 29:19:@9.4]
  wire [3:0] list__T_27_addr; // @[DynamicMemorySearch.scala 29:19:@9.4]
  wire  list__T_27_mask; // @[DynamicMemorySearch.scala 29:19:@9.4]
  wire  list__T_27_en; // @[DynamicMemorySearch.scala 29:19:@9.4]
  reg [3:0] index; // @[DynamicMemorySearch.scala 27:23:@8.4]
  reg [31:0] _RAND_2;
  wire  _T_22; // @[DynamicMemorySearch.scala 32:16:@11.4]
  wire  _T_23; // @[DynamicMemorySearch.scala 32:35:@12.4]
  wire  _T_25; // @[DynamicMemorySearch.scala 32:58:@13.4]
  wire  _T_26; // @[DynamicMemorySearch.scala 32:48:@14.4]
  wire  done; // @[DynamicMemorySearch.scala 32:23:@15.4]
  wire  _T_30; // @[DynamicMemorySearch.scala 38:21:@25.8]
  wire [4:0] _T_32; // @[DynamicMemorySearch.scala 39:20:@27.10]
  wire [3:0] _T_33; // @[DynamicMemorySearch.scala 39:20:@28.10]
  wire [3:0] _GEN_0; // @[DynamicMemorySearch.scala 38:34:@26.8]
  wire [3:0] _GEN_1; // @[DynamicMemorySearch.scala 36:23:@21.6]
  wire [3:0] _GEN_7; // @[DynamicMemorySearch.scala 34:18:@16.4]
  assign list_memVal_addr = index;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign list_memVal_data = list[list_memVal_addr]; // @[DynamicMemorySearch.scala 29:19:@9.4]
  `else
  assign list_memVal_data = list_memVal_addr >= 4'ha ? _RAND_1[7:0] : list[list_memVal_addr]; // @[DynamicMemorySearch.scala 29:19:@9.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign list__T_27_data = io_data;
  assign list__T_27_addr = io_wrAddr;
  assign list__T_27_mask = 1'h1;
  assign list__T_27_en = io_isWr;
  assign _T_22 = io_en == 1'h0; // @[DynamicMemorySearch.scala 32:16:@11.4]
  assign _T_23 = list_memVal_data == io_data; // @[DynamicMemorySearch.scala 32:35:@12.4]
  assign _T_25 = index == 4'h9; // @[DynamicMemorySearch.scala 32:58:@13.4]
  assign _T_26 = _T_23 | _T_25; // @[DynamicMemorySearch.scala 32:48:@14.4]
  assign done = _T_22 & _T_26; // @[DynamicMemorySearch.scala 32:23:@15.4]
  assign _T_30 = done == 1'h0; // @[DynamicMemorySearch.scala 38:21:@25.8]
  assign _T_32 = index + 4'h1; // @[DynamicMemorySearch.scala 39:20:@27.10]
  assign _T_33 = index + 4'h1; // @[DynamicMemorySearch.scala 39:20:@28.10]
  assign _GEN_0 = _T_30 ? _T_33 : index; // @[DynamicMemorySearch.scala 38:34:@26.8]
  assign _GEN_1 = io_en ? 4'h0 : _GEN_0; // @[DynamicMemorySearch.scala 36:23:@21.6]
  assign _GEN_7 = io_isWr ? index : _GEN_1; // @[DynamicMemorySearch.scala 34:18:@16.4]
  assign io_target = index; // @[DynamicMemorySearch.scala 42:13:@32.4]
  assign io_done = _T_22 & _T_26; // @[DynamicMemorySearch.scala 41:13:@31.4]
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
  for (initvar = 0; initvar < 10; initvar = initvar+1)
    list[initvar] = _RAND_0[7:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  index = _RAND_2[3:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if(list__T_27_en & list__T_27_mask) begin
      list[list__T_27_addr] <= list__T_27_data; // @[DynamicMemorySearch.scala 29:19:@9.4]
    end
    if (reset) begin
      index <= 4'h0;
    end else begin
      if (!(io_isWr)) begin
        if (io_en) begin
          index <= 4'h0;
        end else begin
          if (_T_30) begin
            index <= _T_33;
          end
        end
      end
    end
  end
endmodule
