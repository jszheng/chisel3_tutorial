module VendingMachineSwitch( // @[:@3.2]
  input   clock, // @[:@4.4]
  input   reset, // @[:@5.4]
  input   io_nickel, // @[:@6.4]
  input   io_dime, // @[:@6.4]
  output  io_valid // @[:@6.4]
);
  reg [2:0] state; // @[VendingMachineSwitch.scala 19:22:@8.4]
  reg [31:0] _RAND_0;
  wire  _T_12; // @[Conditional.scala 37:30:@9.4]
  wire [2:0] _GEN_0; // @[VendingMachineSwitch.scala 23:24:@11.6]
  wire [2:0] _GEN_1; // @[VendingMachineSwitch.scala 24:22:@14.6]
  wire  _T_13; // @[Conditional.scala 37:30:@19.6]
  wire [2:0] _GEN_2; // @[VendingMachineSwitch.scala 27:24:@21.8]
  wire [2:0] _GEN_3; // @[VendingMachineSwitch.scala 28:22:@24.8]
  wire  _T_14; // @[Conditional.scala 37:30:@29.8]
  wire [2:0] _GEN_4; // @[VendingMachineSwitch.scala 31:24:@31.10]
  wire [2:0] _GEN_5; // @[VendingMachineSwitch.scala 32:22:@34.10]
  wire  _T_15; // @[Conditional.scala 37:30:@39.10]
  wire [2:0] _GEN_6; // @[VendingMachineSwitch.scala 35:24:@41.12]
  wire [2:0] _GEN_7; // @[VendingMachineSwitch.scala 36:22:@44.12]
  wire  _T_16; // @[Conditional.scala 37:30:@49.12]
  wire [2:0] _GEN_8; // @[Conditional.scala 39:67:@50.12]
  wire [2:0] _GEN_9; // @[Conditional.scala 39:67:@40.10]
  wire [2:0] _GEN_10; // @[Conditional.scala 39:67:@30.8]
  wire [2:0] _GEN_11; // @[Conditional.scala 39:67:@20.6]
  wire [2:0] _GEN_12; // @[Conditional.scala 40:58:@10.4]
  assign _T_12 = 3'h0 == state; // @[Conditional.scala 37:30:@9.4]
  assign _GEN_0 = io_nickel ? 3'h1 : state; // @[VendingMachineSwitch.scala 23:24:@11.6]
  assign _GEN_1 = io_dime ? 3'h2 : _GEN_0; // @[VendingMachineSwitch.scala 24:22:@14.6]
  assign _T_13 = 3'h1 == state; // @[Conditional.scala 37:30:@19.6]
  assign _GEN_2 = io_nickel ? 3'h2 : state; // @[VendingMachineSwitch.scala 27:24:@21.8]
  assign _GEN_3 = io_dime ? 3'h3 : _GEN_2; // @[VendingMachineSwitch.scala 28:22:@24.8]
  assign _T_14 = 3'h2 == state; // @[Conditional.scala 37:30:@29.8]
  assign _GEN_4 = io_nickel ? 3'h3 : state; // @[VendingMachineSwitch.scala 31:24:@31.10]
  assign _GEN_5 = io_dime ? 3'h4 : _GEN_4; // @[VendingMachineSwitch.scala 32:22:@34.10]
  assign _T_15 = 3'h3 == state; // @[Conditional.scala 37:30:@39.10]
  assign _GEN_6 = io_nickel ? 3'h4 : state; // @[VendingMachineSwitch.scala 35:24:@41.12]
  assign _GEN_7 = io_dime ? 3'h4 : _GEN_6; // @[VendingMachineSwitch.scala 36:22:@44.12]
  assign _T_16 = 3'h4 == state; // @[Conditional.scala 37:30:@49.12]
  assign _GEN_8 = _T_16 ? 3'h0 : state; // @[Conditional.scala 39:67:@50.12]
  assign _GEN_9 = _T_15 ? _GEN_7 : _GEN_8; // @[Conditional.scala 39:67:@40.10]
  assign _GEN_10 = _T_14 ? _GEN_5 : _GEN_9; // @[Conditional.scala 39:67:@30.8]
  assign _GEN_11 = _T_13 ? _GEN_3 : _GEN_10; // @[Conditional.scala 39:67:@20.6]
  assign _GEN_12 = _T_12 ? _GEN_1 : _GEN_11; // @[Conditional.scala 40:58:@10.4]
  assign io_valid = state == 3'h4; // @[VendingMachineSwitch.scala 42:12:@54.4]
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
  state = _RAND_0[2:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      state <= 3'h0;
    end else begin
      if (_T_12) begin
        if (io_dime) begin
          state <= 3'h2;
        end else begin
          if (io_nickel) begin
            state <= 3'h1;
          end
        end
      end else begin
        if (_T_13) begin
          if (io_dime) begin
            state <= 3'h3;
          end else begin
            if (io_nickel) begin
              state <= 3'h2;
            end
          end
        end else begin
          if (_T_14) begin
            if (io_dime) begin
              state <= 3'h4;
            end else begin
              if (io_nickel) begin
                state <= 3'h3;
              end
            end
          end else begin
            if (_T_15) begin
              if (io_dime) begin
                state <= 3'h4;
              end else begin
                if (io_nickel) begin
                  state <= 3'h4;
                end
              end
            end else begin
              if (_T_16) begin
                state <= 3'h0;
              end
            end
          end
        end
      end
    end
  end
endmodule
