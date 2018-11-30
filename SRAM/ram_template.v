reg [15:0] wrData;
reg in_we [0:63];
reg [3:0]inputAddrQ,inputAddrD;
wire [15:0] inputData [0:63];
genvar i;

//Input SRAM Size: 16*12+48*12 = 784
generate
	for(i = 0; i < 64; i = i + 1) begin
		sram #(.SIZE(i < 16 ? 13:12)) input_ram(
			.clk(clk),
			.we(we[i]),
			.addr(inputAddrQ),
			.data(wrData),
			.q(inputData[i]),
	);
	end
endgenerate


reg[17:0] wAddrD,wAddrQ;
wire [15:0] weight [0:1]
//Uncomment the line below if write is needed to weight SRAM
//reg w_we [0:1] //0-1st Round Weight  1- 2nd Round Weight

//Weight SRAM (Weight Reuse)
sram #(.ADDR_WIDTH(18),.SIZE(156800)) weight1(
		.clk(clk),
		.we(0),//Okay to tie to ground?
		.addr(wAddrQ),
		.data(0), //Okay to tie to ground?
		.q(weight[0]), 
	);
	
sram #(.ADDR_WIDTH(11),.SIZE(2000)) weight2(
		.clk(clk),
		.we(0),//Okay to tie to ground?
		.addr(wAddrQ[10:0]),
		.data(0), //Okay to tie to ground?
		.q(weight[1]), 
	);

reg out_we [0:63];
reg [4:0] outAddrQ,outAddrD;
wire [15:0] outData [0:63];

//Output SRAM (Hold Intermediate Result) Size: 16*32+48*31 = 2000
generate
	for(i = 0; i < 64; i = i + 1) begin
		sram #(.ADDR_WIDTH(5),.SIZE(i < 16 ? 32:31)) output_ram(
			.clk(clk),
			.we(out_we[i]),
			.addr(outAddrQ),
			.data(wrData),
			.q(outData[i]),
	);
	end
endgenerate