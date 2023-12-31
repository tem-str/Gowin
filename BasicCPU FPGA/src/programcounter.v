// The program counter is a special register that
// can be incremented.

module programcounter
(
  // Control signals
  input wire i_clk,
  input wire i_reset,
  input wire i_read_n,
  input wire i_write_n,
  input wire i_inc_n,

  // Inputs & Outputs
  inout wire [7:0] io_bus,
  output reg [7:0] internal_data
);

  assign io_bus = (i_read_n == 1'b0) ? internal_data : 8'bZZZZZZZZ;

  initial internal_data = 8'b00000000;
  
  always @(posedge i_clk or posedge i_reset) begin
    if (i_reset == 1'b1) begin
      internal_data = 8'b00000000;
    end else begin
      if (i_write_n == 1'b0) begin
        internal_data = io_bus;
      end
      if (i_inc_n == 1'b0) begin
        internal_data = internal_data + 1'b1;
      end
    end
  end
endmodule