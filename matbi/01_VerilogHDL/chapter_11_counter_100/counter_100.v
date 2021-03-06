//////////////////////////////////////////////////////////////////////////////////
// Company: Personal
// Engineer: Matbi / Austin
//
// Create Date:
// Design Name: 7 bit counter
// Module Name: counter_100
// Project Name:
// Target Devices:
// Tool Versions:
// Description: counting 0~99
//				
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////
 
`timescale 1ns / 1ps
module counter_100(
    input clk,
    input reset_n,
    output [6:0] o_cnt,
    output [6:0] o_cnt_always
    );
	reg [6:0] cnt;  // 100 κΉμ?? ???? ??λ‘? overflow λ₯? ?Ό?κΈ? ??΄? 7 bit λ₯? ? ?Έ?????΅??€. 0~127 (2^7)
	always @(posedge clk or negedge reset_n) begin
	    if(!reset_n) begin
	        cnt <= 0;  // 0 λΆ??° counting κ°??₯.
	    end else if (cnt < 100) begin
	        cnt <= cnt + 1; // clock ?΄ postive edge ?Ό? λ§λ€, counting ? ?¨.
	    end
	    // 100 ?΄ ??΄κ°?λ©? ??΄? counting ? ?μ§? ??.
	end
	assign o_cnt = cnt;

	reg [6:0] cnt_always;  // 100 κΉμ?? ???? ??λ‘? overflow λ₯? ?Ό?κΈ? ??΄? 7 bit λ₯? ? ?Έ?????΅??€. 0~127 (2^7)
	always @(posedge clk or negedge reset_n) begin
	    if(!reset_n) begin
	        cnt_always <= 0;  // 0 λΆ??° counting κ°??₯.
	    end else if (cnt_always == 100-1) begin
	        cnt_always <= 0; // 99 -> 0
	    end else begin
	        cnt_always <= cnt_always + 1; // clock ?΄ postive edge ?Ό? λ§λ€, counting ? ?¨.
		end
	end
	assign o_cnt_always = cnt_always;

endmodule
