module VendingMachine( // @[:@3.2]
  input   clock, // @[:@4.4]
  input   reset, // @[:@5.4]
  input   io_nickel, // @[:@6.4]
  input   io_dime, // @[:@6.4]
  output  io_valid // @[:@6.4]
);
  reg [2:0] state; // @[VendingMachine.scala 19:22:@8.4]
  reg [31:0] _RAND_0;
  wire  _T_12; // @[VendingMachine.scala 20:15:@9.4]
  wire [2:0] _GEN_0; // @[VendingMachine.scala 21:22:@11.6]
  wire [2:0] _GEN_1; // @[VendingMachine.scala 22:22:@14.6]
  wire [2:0] _GEN_2; // @[VendingMachine.scala 20:26:@10.4]
  wire  _T_13; // @[VendingMachine.scala 24:15:@18.4]
  wire [2:0] _GEN_3; // @[VendingMachine.scala 25:22:@20.6]
  wire [2:0] _GEN_4; // @[VendingMachine.scala 26:22:@23.6]
  wire [2:0] _GEN_5; // @[VendingMachine.scala 24:23:@19.4]
  wire  _T_14; // @[VendingMachine.scala 28:15:@27.4]
  wire [2:0] _GEN_6; // @[VendingMachine.scala 29:22:@29.6]
  wire [2:0] _GEN_7; // @[VendingMachine.scala 30:22:@32.6]
  wire [2:0] _GEN_8; // @[VendingMachine.scala 28:24:@28.4]
  wire  _T_15; // @[VendingMachine.scala 32:15:@36.4]
  wire [2:0] _GEN_9; // @[VendingMachine.scala 33:22:@38.6]
  wire [2:0] _GEN_10; // @[VendingMachine.scala 34:22:@41.6]
  wire [2:0] _GEN_11; // @[VendingMachine.scala 32:24:@37.4]
  wire  _T_16; // @[VendingMachine.scala 36:15:@45.4]
  wire [2:0] _GEN_12; // @[VendingMachine.scala 36:24:@46.4]
  assign _T_12 = state == 3'h0; // @[VendingMachine.scala 20:15:@9.4]
  assign _GEN_0 = io_nickel ? 3'h1 : state; // @[VendingMachine.scala 21:22:@11.6]
  assign _GEN_1 = io_dime ? 3'h2 : _GEN_0; // @[VendingMachine.scala 22:22:@14.6]
  assign _GEN_2 = _T_12 ? _GEN_1 : state; // @[VendingMachine.scala 20:26:@10.4]
  assign _T_13 = state == 3'h1; // @[VendingMachine.scala 24:15:@18.4]
  assign _GEN_3 = io_nickel ? 3'h2 : _GEN_2; // @[VendingMachine.scala 25:22:@20.6]
  assign _GEN_4 = io_dime ? 3'h3 : _GEN_3; // @[VendingMachine.scala 26:22:@23.6]
  assign _GEN_5 = _T_13 ? _GEN_4 : _GEN_2; // @[VendingMachine.scala 24:23:@19.4]
  assign _T_14 = state == 3'h2; // @[VendingMachine.scala 28:15:@27.4]
  assign _GEN_6 = io_nickel ? 3'h3 : _GEN_5; // @[VendingMachine.scala 29:22:@29.6]
  assign _GEN_7 = io_dime ? 3'h4 : _GEN_6; // @[VendingMachine.scala 30:22:@32.6]
  assign _GEN_8 = _T_14 ? _GEN_7 : _GEN_5; // @[VendingMachine.scala 28:24:@28.4]
  assign _T_15 = state == 3'h3; // @[VendingMachine.scala 32:15:@36.4]
  assign _GEN_9 = io_nickel ? 3'h4 : _GEN_8; // @[VendingMachine.scala 33:22:@38.6]
  assign _GEN_10 = io_dime ? 3'h4 : _GEN_9; // @[VendingMachine.scala 34:22:@41.6]
  assign _GEN_11 = _T_15 ? _GEN_10 : _GEN_8; // @[VendingMachine.scala 32:24:@37.4]
  assign _T_16 = state == 3'h4; // @[VendingMachine.scala 36:15:@45.4]
  assign _GEN_12 = _T_16 ? 3'h0 : _GEN_11; // @[VendingMachine.scala 36:24:@46.4]
  assign io_valid = state == 3'h4; // @[VendingMachine.scala 39:12:@50.4]
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
      if (_T_16) begin
        state <= 3'h0;
      end else begin
        if (_T_15) begin
          if (io_dime) begin
            state <= 3'h4;
          end else begin
            if (io_nickel) begin
              state <= 3'h4;
            end else begin
              if (_T_14) begin
                if (io_dime) begin
                  state <= 3'h4;
                end else begin
                  if (io_nickel) begin
                    state <= 3'h3;
                  end else begin
                    if (_T_13) begin
                      if (io_dime) begin
                        state <= 3'h3;
                      end else begin
                        if (io_nickel) begin
                          state <= 3'h2;
                        end else begin
                          if (_T_12) begin
                            if (io_dime) begin
                              state <= 3'h2;
                            end else begin
                              if (io_nickel) begin
                                state <= 3'h1;
                              end
                            end
                          end
                        end
                      end
                    end else begin
                      if (_T_12) begin
                        if (io_dime) begin
                          state <= 3'h2;
                        end else begin
                          if (io_nickel) begin
                            state <= 3'h1;
                          end
                        end
                      end
                    end
                  end
                end
              end else begin
                if (_T_13) begin
                  if (io_dime) begin
                    state <= 3'h3;
                  end else begin
                    if (io_nickel) begin
                      state <= 3'h2;
                    end else begin
                      if (_T_12) begin
                        if (io_dime) begin
                          state <= 3'h2;
                        end else begin
                          if (io_nickel) begin
                            state <= 3'h1;
                          end
                        end
                      end
                    end
                  end
                end else begin
                  if (_T_12) begin
                    if (io_dime) begin
                      state <= 3'h2;
                    end else begin
                      if (io_nickel) begin
                        state <= 3'h1;
                      end
                    end
                  end
                end
              end
            end
          end
        end else begin
          if (_T_14) begin
            if (io_dime) begin
              state <= 3'h4;
            end else begin
              if (io_nickel) begin
                state <= 3'h3;
              end else begin
                if (_T_13) begin
                  if (io_dime) begin
                    state <= 3'h3;
                  end else begin
                    if (io_nickel) begin
                      state <= 3'h2;
                    end else begin
                      state <= _GEN_2;
                    end
                  end
                end else begin
                  state <= _GEN_2;
                end
              end
            end
          end else begin
            if (_T_13) begin
              if (io_dime) begin
                state <= 3'h3;
              end else begin
                if (io_nickel) begin
                  state <= 3'h2;
                end else begin
                  state <= _GEN_2;
                end
              end
            end else begin
              state <= _GEN_2;
            end
          end
        end
      end
    end
  end
endmodule
