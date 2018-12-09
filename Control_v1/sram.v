`timescale 1ns / 1ps
module sram #(parameter ADDR_WIDTH = 4,DATA_WIDTH = 16,SIZE=(1<<ADDR_WIDTH))(
	input clk,we,
	input [ADDR_WIDTH-1:0] addr,
	input [DATA_WIDTH-1:0] data,
	output [DATA_WIDTH-1:0] q
	);
	
	reg [DATA_WIDTH-1:0] ram [0:SIZE-1];
	
	always@(posedge clk) begin
		if(we) begin
			ram[addr] <= data;
		end
	end
	assign q = ram[addr];
endmodule
