module activation(in,out);
	input wire signed [15:0] in; //Input X value
	output reg [15:0] out;
	
	wire [15:0] decoded_addr;
	wire [15:0] rom_out;
	
	rom sigmoid(
		.addr(decoded_addr[10:4]),
		.data(rom_out)
	);
	
	assign decoded_addr = (in[15] == 1) ? (~in+1'b1) : in; //Negate input is negative
	
	always @(*) begin
		if(in > 16'sh600) begin  //Assign 1 for input >6
			out = 16'h100;
		end else if(in < 16'shFA00) begin //Assign 0 for input <-6
			out = 0;
		end else begin
			if(in[15]) begin
				out = 16'h100-rom_out;	//Calculate value for negative input
			end else begin
				out = rom_out;
			end
		end
	end

endmodule
