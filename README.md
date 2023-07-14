# GOWIN FPGA
### Tand Nano 9K FPGA   
>(Gowin's LittleBee family the GW1NR-9)

Tang nano 9K is a development board based on Gowin GW1NR-9 FPGA chip.It equips with HDMI connector, RGB screen interface connector, SPI screen connector, 32Mbit SPI flash and 6 LEDs, so users can use it for FPGA verification, risc-v soft core verification and basic function verification easily and quickly. Its 8640 LUT4 logic units can not only be used for various complex logic circuits designing, but also used for running a complete PicoRV soft core. It also meets various needs of users, such as learning FPGA, verifying soft core and further design.

>Language: *FPGA* -	Verilog HDL/Verilog	  |   *MCU* - C/C++ 

The following documents are very useful for learning FPGA.

- SUG949-1.1E_Gowin HDL Coding User Guide.pdf
- UG286-1.9.1E_Gowin Clock User Guide.pdf


Schematic - [Tang_Nano_9K_3672_schematic.pdf](https://github.com/tem-str/Gowin/files/12047179/Tang_Nano_9K_3672_schematic.pdf)

![tang-nano-registers](https://github.com/tem-str/Gowin/assets/74252239/bf46bfb7-56ba-4f4c-b935-ba00d73a5b5a)

>This repository was created just to try different projects with the GowinFPGA, test all communication protocol, working with Memory (Flash/RAM) and order opportunities of the board. In the future, this knowledge will be useful for other projects

## Characteristic

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
| Display interface	    | HDMI interface, SPI screen interface and RGB screen interface |
| Debugger	Onboard       | BL702 chip provides USB-JTAG and USB-UART functions for GW1NR-9 |
| IO	                    | • support 4mA、8mA、16mA、24mA other driving capabilities|
| Connector	            | TF card slot, 2x24P 2.54mm Header pads |
| Button                 |	2 programmable buttons for users|
| LED	                  | Onboard 6 programmable LEDs|

## On-board Function block

![clip_image008](https://github.com/tem-str/Gowin/assets/74252239/4e8274fe-1abc-4a11-b5ba-d65055577815)

> all user gide [*here*](https://dl.sipeed.com/shareURL/TANG/Nano%209K/6_Chip_Manual/EN/General%20Guide)
