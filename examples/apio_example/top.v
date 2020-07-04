// blink - top.v
//
// Description:
// Blinks the on-board LED once per second.
// Pins are defined in pins.pcf file.
//
// Created by John Woolsey on 08/26/2019.
// Copyright © 2019 Woolsey Workshop.  All rights reserved.
module top (
   input  CLK,   // 16 MHz on-board clock
   output LED,   // on-board LED
   output USBPU  // USB pull-up enable, set low to disable
   );

   reg [22:0] clk_1hz_counter = 23'b0;  // 1 Hz clock generation counter
   reg        clk_1hz = 1'b0;           // 1 Hz clock
   // 1 Hz clock
   always @(posedge CLK) begin
      if (clk_1hz_counter < 23'd7_999_999)
         clk_1hz_counter <= clk_1hz_counter + 23'b1;
      else begin
         clk_1hz_counter <= 23'b0;
         clk_1hz <= ~clk_1hz;
      end
   end
   assign LED = clk_1hz;  // blink on-board LED every second
   assign USBPU = 1'b0;   // disable USB
endmodule  // top
