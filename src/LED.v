/*    Start module   */
module led (
    input sys_clk,          // clk input
    input sys_rst_n,        // reset input,
    input sys_set_n,        // set all,
    output reg [5:0] led    // 6 LEDS pin
);

reg [23:0] counter;
reg [7:0] counter1;
reg clk;

Gowin_rPLL your_instance_name(
        .clkout(clk450MHz), //output clkout
        .clkin(sys_clk) //input clkin
    );

always @(posedge clk450MHz) begin
    if( counter1>=4 ) begin
        counter1 = 0;
        clk <= ~clk;
    end
    else counter1 <= counter1 + 1'd1;
end

always @(posedge clk or negedge sys_rst_n) begin
    if (!sys_rst_n)
        counter <= 24'd0;
    else if (counter < 24'd1349_9999)       // 0.5s delay
        counter <= counter + 1'd1;
    else
        counter <= 24'd0;
end

always @(posedge clk or negedge sys_rst_n) begin
    if (!sys_rst_n)
        led <= 6'b011111;
    else if(!sys_set_n)
        led <= 6'b000000;
    else if (counter == 24'd1349_9999)       // 0.5s delay
        led[5:0] <= {led[0],led[5:1]};
    else
        led <= led;
end

endmodule
/*   End module   */
