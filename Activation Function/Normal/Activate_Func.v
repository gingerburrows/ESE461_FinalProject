module activation(in,out);
	input wire [15:0] in; //Input X value
	output reg [15:0] out;
	
	wire [15:0] rom_out;
	
	rom sigmoid(
		.addr(in),
		.data_out(rom_out)
	);
	
	always @(*) begin
		if(in > 16'h600) begin  //Assign 1 for input >6
			out = 16'h100;
		end else if(in < 16'hFA00) begin //Assign 0 for input <-6
			out = 0;
		end else begin
			out = rom_out;
		end
	end

endmodule
