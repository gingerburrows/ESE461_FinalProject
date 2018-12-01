module template();
reg [15:0] wrData;
reg [63:0] we [0:1];
reg [3:0]inoutAddrQ,inoutAddrD;
wire [15:0] inoutData [0:63];
genvar i;
wire clk;
//Input/Output SRAM Size: 16*12+48*12 = 784
generate
	for(i = 0; i < 64; i = i + 1) begin : InOutSram
		sram #(.ADDR_WIDTH(4),.SIZE(i < 16 ? 13:12)) input_ram(
			.clk(clk),
			.we(we[1][i]),
			.addr(inoutAddrQ),
			.data(wrData),
			.q(inoutData[i])
	);
	end
endgenerate


reg[12:0] wAddrD,wAddrQ;
wire [15:0] weight0 [0:63]; //Output for first stage
wire [15:0] weight1 [0:63]; //Output for second stage

//Uncomment the line below if write is needed to weight SRAM
//reg w_we [0:1] //0-1st Round Weight  1- 2nd Round Weight

//Weight SRAM 1 Size: 16*13*200+48*12*200 = 156800
generate
	for(i = 0;i < 64;i=i+1) begin : w1
		sram #(.ADDR_WIDTH(12),.SIZE(i<16 ? 2600 : 2400)) weight_sram1(
				.clk(clk),
				.we(0),//Okay to tie to ground?
				.addr(wAddrQ),
				.data(0), //Okay to tie to ground?
				.q(weight0[i])
			);
	end
endgenerate

//Weight SRAM 2 Size: 8*4*10+56*3*10= 2000
generate
	for(i = 0;i < 64;i=i+1) begin :w2
		sram #(.ADDR_WIDTH(6),.SIZE(i <8 ? 40:30)) weight_sram2(
				.clk(clk),
				.we(0),//Okay to tie to ground?
				.addr(wAddrQ[5:0]),
				.data(0), //Okay to tie to ground?
				.q(weight1[1])
			);
	end
endgenerate

reg mid_we [0:63];
reg [4:0] midAddrQ,midAddrD;
wire [15:0] midData [0:63];

//Intermediate SRAM (Hold Intermediate Result) Size: 8*4+56*3 = 200
generate
	for(i = 0; i < 64; i = i + 1) begin :tempSram
		sram #(.ADDR_WIDTH(2),.SIZE(i < 8 ? 4:3)) output_ram(
			.clk(clk),
			.we(we[0][i]),
			.addr(midAddrQ),
			.data(wrData),
			.q(midData[i])
	);
	end
endgenerate
endmodule