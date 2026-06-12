`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2026 21:47:00
// Design Name: 
// Module Name: SRFF
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SRFF( s, r, clk, q, q_bar);
    input wire s,r,clk;
    output reg q,q_bar;
    
    always@ (posedge clk) begin
    if( s == 1 & r == 0) begin
    q <= 1;
    q_bar <=0;
    end
    else if ( s == 0 & r == 1) begin
        q <= 0;
        q_bar <=1;
        end
    else if ( s == 0 & r == 0) begin
                q <= 0;
                q_bar <=0;
                end
end  
endmodule
