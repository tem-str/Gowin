<a name="top"></a>
# GOWIN FPGA 

* [Tang Nano 9K FPGA](#tang)
  * [Some Intro](#int)
  * [Characteristic](#chara)
  * [On-board Function block](#on) 
* [CPU](#cpu)
  * [Maing Blocks](#block)


## _Tang Nano 9K FPGA_ <a name="tang"></a> 
>(Gowin's LittleBee family the GW1NR-9)


Tang nano 9K is a development board based on Gowin GW1NR-9 FPGA chip.It equips with HDMI connector, RGB screen interface connector, SPI screen connector, 32Mbit SPI flash and 6 LEDs, so users can use it for FPGA verification, risc-v soft core verification and basic function verification easily and quickly. Its 8640 LUT4 logic units can not only be used for various complex logic circuits designing, but also used for running a complete PicoRV soft core. It also meets various needs of users, such as learning FPGA, verifying soft core and further design.

>*Language:* -	Verilog HDL/Verilog	

The following documents are very useful for learning FPGA and even if you have a lot of development experience, I recommend reading these documents, since this FPGA has some of its own features.

- SUG949-1.1E_Gowin HDL Coding User Guide.pdf
- UG286-1.9.1E_Gowin Clock User Guide.pdf

> The related documents you can find at [www.gowinsemi.com](https://www.gowinsemi.com/en/)

Schematic - [Tang_Nano_9K](https://github.com/tem-str/Gowin/files/12047179/Tang_Nano_9K_3672_schematic.pdf)

[👆](#top)

###  Some Intro <a name="int"></a> 

First of all, we are interesting in the integrated chip GW1NR-9, but not the whole board. The Tand Nano 9K is just a handy board with the necessary interface for learning, so let's get to know her a little.  

![tang-nano-registers](https://github.com/tem-str/Gowin/assets/74252239/226d59f3-78f2-4465-80f5-c77d2d13a3d7)

>This repository was created just to try different projects with the GowinFPGA, test all communication protocol, working with Memory (Flash/RAM) and order opportunities of the board. In the future, this knowledge will be useful for other projects

[👆](#top)

###  Characteristic <a name="chara"></a> 

|ITEM|VALUE|
| --------------------- |:-------:|
| Logic units(LUT4)	    |  8640   |
| Registers(FF)	        |  6480   |
| ShadowSRAM SSRAM(bits)	|  17280  |
| Block SRAM BSRAM(bits)	|  468K   |
| Number of B-SRAM	      |   26    |  
| User flash(bits)	      |   608K  | 
| SDR SDRAM(bits)	      |   64M   |  
| 18 x 18 Multiplier	    |   20    |
| SPI FLASH	            | 32M-bit |
| Number of PLL	        |   2     |
| Display interface	    | HDMI, SPI screen and RGB screen |
| Debugger	Onboard       |  USB-JTAG and USB-UART  |
| IO	                    |  4mA, 8mA, 16mA, 24mA |
| Connector	            | TF card slot, 2x24P 2.54mm Header pads |
| Button                 |	2 programmable buttons for users|
| LED	                  | Onboard 6 programmable LEDs|

[👆](#top)

###  On-board Function block <a name="on"></a> 

![clip_image008](https://github.com/tem-str/Gowin/assets/74252239/0cb2a086-5053-447b-8d4c-86b3dae595d7)

> All user gide working with gowin_fpga [*here*](https://dl.sipeed.com/shareURL/TANG/Nano%209K/6_Chip_Manual/EN/General%20Guide)
  
 The goal of our project - try to make a bacis CPU, after testing a few simple projects.✒
 
```Verilog
module counter
(
    input clk,
    output [5:0] led
);

localparam WAIT_TIME = 13500000;
reg [5:0] ledCounter = 0;
reg [23:0] clockCounter = 0;

always @(posedge clk) begin
    clockCounter <= clockCounter + 1;
    if (clockCounter == WAIT_TIME) begin
        clockCounter <= 0;
        ledCounter <= ledCounter + 1;
    end
end

assign led = ~ledCounter;
endmodule
```
[👆](#top) 

## CPU <a name="cpu"></a>

### Main Blocks <a name="block"></a>

- [ ] ALU
- [ ] MAIN CPU
- [ ] SYSTEM_CLOCK
- [ ] MEMORY
- [ ] REGISTER
- [ ] PROGRAMM COUNTER
