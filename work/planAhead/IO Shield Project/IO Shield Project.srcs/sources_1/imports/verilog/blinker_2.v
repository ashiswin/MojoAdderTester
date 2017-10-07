/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module blinker_2 (
    input clk,
    input rst,
    output reg [2:0] blink
  );
  
  
  
  reg [27:0] M_counter_d, M_counter_q = 1'h0;
  
  always @* begin
    M_counter_d = M_counter_q;
    
    blink[0+0-:1] = M_counter_q[27+0-:1];
    blink[1+0-:1] = M_counter_q[26+0-:1];
    blink[2+0-:1] = M_counter_q[25+0-:1];
    M_counter_d = M_counter_q + 1'h1;
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_counter_q <= 1'h0;
    end else begin
      M_counter_q <= M_counter_d;
    end
  end
  
endmodule
