module template();

	//Input SRAM signals
	reg [3:0]inoutAddrQ,inoutAddrD;
	wire [15:0] inoutData [0:63];

	//Intermediate SRAM signals
	reg [1:0] midAddrQ,midAddrD;
	wire [15:0] midData [0:63];

	//Signals shared between input and intermediate
	reg [15:0] wrData;
	reg [63:0] we [0:1]; // [0]-Intermediate, [1]-Input

	//Weight SRAM signals
	reg[11:0] wAddrD,wAddrQ;
	wire [15:0] weight0 [0:63]; //Output for first stage
	wire [15:0] weight1 [0:63]; //Output for second stage










//Instantiations of partitioned ram blocks below

	//Input/Output SRAM Size: 16*12+48*12 = 784

	sram #(.ADDR_WIDTH(4),.SIZE(13)) input_ram0(
		.clk(clk),
		.we(we[1][0]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[0]));

	sram #(.ADDR_WIDTH(4),.SIZE(13)) input_ram1(
		.clk(clk),
		.we(we[1][1]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[1]));

	sram #(.ADDR_WIDTH(4),.SIZE(13)) input_ram2(
		.clk(clk),
		.we(we[1][2]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[2]));

	sram #(.ADDR_WIDTH(4),.SIZE(13)) input_ram3(
		.clk(clk),
		.we(we[1][3]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[3]));

	sram #(.ADDR_WIDTH(4),.SIZE(13)) input_ram4(
		.clk(clk),
		.we(we[1][4]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[4]));

	sram #(.ADDR_WIDTH(4),.SIZE(13)) input_ram5(
		.clk(clk),
		.we(we[1][5]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[5]));

	sram #(.ADDR_WIDTH(4),.SIZE(13)) input_ram6(
		.clk(clk),
		.we(we[1][6]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[6]));

	sram #(.ADDR_WIDTH(4),.SIZE(13)) input_ram7(
		.clk(clk),
		.we(we[1][7]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[7]));

	sram #(.ADDR_WIDTH(4),.SIZE(13)) input_ram8(
		.clk(clk),
		.we(we[1][8]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[8]));

	sram #(.ADDR_WIDTH(4),.SIZE(13)) input_ram9(
		.clk(clk),
		.we(we[1][9]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[9]));

	sram #(.ADDR_WIDTH(4),.SIZE(13)) input_ram10(
		.clk(clk),
		.we(we[1][10]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[10]));

	sram #(.ADDR_WIDTH(4),.SIZE(13)) input_ram11(
		.clk(clk),
		.we(we[1][11]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[11]));

	sram #(.ADDR_WIDTH(4),.SIZE(13)) input_ram12(
		.clk(clk),
		.we(we[1][12]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[12]));

	sram #(.ADDR_WIDTH(4),.SIZE(13)) input_ram13(
		.clk(clk),
		.we(we[1][13]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[13]));

	sram #(.ADDR_WIDTH(4),.SIZE(13)) input_ram14(
		.clk(clk),
		.we(we[1][14]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[14]));

	sram #(.ADDR_WIDTH(4),.SIZE(13)) input_ram15(
		.clk(clk),
		.we(we[1][15]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[15]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram16(
		.clk(clk),
		.we(we[1][16]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[16]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram17(
		.clk(clk),
		.we(we[1][17]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[17]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram18(
		.clk(clk),
		.we(we[1][18]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[18]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram19(
		.clk(clk),
		.we(we[1][19]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[19]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram20(
		.clk(clk),
		.we(we[1][20]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[20]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram21(
		.clk(clk),
		.we(we[1][21]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[21]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram22(
		.clk(clk),
		.we(we[1][22]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[22]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram23(
		.clk(clk),
		.we(we[1][23]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[23]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram24(
		.clk(clk),
		.we(we[1][24]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[24]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram25(
		.clk(clk),
		.we(we[1][25]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[25]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram26(
		.clk(clk),
		.we(we[1][26]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[26]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram27(
		.clk(clk),
		.we(we[1][27]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[27]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram28(
		.clk(clk),
		.we(we[1][28]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[28]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram29(
		.clk(clk),
		.we(we[1][29]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[29]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram30(
		.clk(clk),
		.we(we[1][30]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[30]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram31(
		.clk(clk),
		.we(we[1][31]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[31]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram32(
		.clk(clk),
		.we(we[1][32]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[32]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram33(
		.clk(clk),
		.we(we[1][33]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[33]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram34(
		.clk(clk),
		.we(we[1][34]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[34]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram35(
		.clk(clk),
		.we(we[1][35]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[35]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram36(
		.clk(clk),
		.we(we[1][36]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[36]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram37(
		.clk(clk),
		.we(we[1][37]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[37]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram38(
		.clk(clk),
		.we(we[1][38]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[38]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram39(
		.clk(clk),
		.we(we[1][39]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[39]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram40(
		.clk(clk),
		.we(we[1][40]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[40]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram41(
		.clk(clk),
		.we(we[1][41]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[41]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram42(
		.clk(clk),
		.we(we[1][42]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[42]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram43(
		.clk(clk),
		.we(we[1][43]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[43]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram44(
		.clk(clk),
		.we(we[1][44]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[44]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram45(
		.clk(clk),
		.we(we[1][45]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[45]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram46(
		.clk(clk),
		.we(we[1][46]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[46]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram47(
		.clk(clk),
		.we(we[1][47]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[47]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram48(
		.clk(clk),
		.we(we[1][48]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[48]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram49(
		.clk(clk),
		.we(we[1][49]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[49]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram50(
		.clk(clk),
		.we(we[1][50]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[50]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram51(
		.clk(clk),
		.we(we[1][51]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[51]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram52(
		.clk(clk),
		.we(we[1][52]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[52]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram53(
		.clk(clk),
		.we(we[1][53]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[53]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram54(
		.clk(clk),
		.we(we[1][54]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[54]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram55(
		.clk(clk),
		.we(we[1][55]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[55]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram56(
		.clk(clk),
		.we(we[1][56]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[56]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram57(
		.clk(clk),
		.we(we[1][57]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[57]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram58(
		.clk(clk),
		.we(we[1][58]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[58]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram59(
		.clk(clk),
		.we(we[1][59]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[59]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram60(
		.clk(clk),
		.we(we[1][60]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[60]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram61(
		.clk(clk),
		.we(we[1][61]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[61]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram62(
		.clk(clk),
		.we(we[1][62]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[62]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram63(
		.clk(clk),
		.we(we[1][63]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutData[63]));

	//Intermediate SRAM (Hold Intermediate Result) Size: 8*4+56*3 = 200
	sram #(.ADDR_WIDTH(2),.SIZE(4)) mid_ram0(
			.clk(clk),
			.we(we[0][0]),
			.addr(midAddrQ),
			.data(wrData),
			.q(midData[0]));

	sram #(.ADDR_WIDTH(2),.SIZE(4)) mid_ram1(
		.clk(clk),
		.we(we[0][1]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[1]));

	sram #(.ADDR_WIDTH(2),.SIZE(4)) mid_ram2(
		.clk(clk),
		.we(we[0][2]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[2]));

	sram #(.ADDR_WIDTH(2),.SIZE(4)) mid_ram3(
		.clk(clk),
		.we(we[0][3]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[3]));

	sram #(.ADDR_WIDTH(2),.SIZE(4)) mid_ram4(
		.clk(clk),
		.we(we[0][4]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[4]));

	sram #(.ADDR_WIDTH(2),.SIZE(4)) mid_ram5(
		.clk(clk),
		.we(we[0][5]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[5]));

	sram #(.ADDR_WIDTH(2),.SIZE(4)) mid_ram6(
		.clk(clk),
		.we(we[0][6]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[6]));

	sram #(.ADDR_WIDTH(2),.SIZE(4)) mid_ram7(
		.clk(clk),
		.we(we[0][7]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[7]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram8(
		.clk(clk),
		.we(we[0][8]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[8]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram9(
		.clk(clk),
		.we(we[0][9]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[9]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram10(
		.clk(clk),
		.we(we[0][10]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[10]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram11(
		.clk(clk),
		.we(we[0][11]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[11]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram12(
		.clk(clk),
		.we(we[0][12]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[12]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram13(
		.clk(clk),
		.we(we[0][13]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[13]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram14(
		.clk(clk),
		.we(we[0][14]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[14]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram15(
		.clk(clk),
		.we(we[0][15]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[15]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram16(
		.clk(clk),
		.we(we[0][16]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[16]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram17(
		.clk(clk),
		.we(we[0][17]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[17]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram18(
		.clk(clk),
		.we(we[0][18]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[18]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram19(
		.clk(clk),
		.we(we[0][19]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[19]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram20(
		.clk(clk),
		.we(we[0][20]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[20]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram21(
		.clk(clk),
		.we(we[0][21]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[21]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram22(
		.clk(clk),
		.we(we[0][22]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[22]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram23(
		.clk(clk),
		.we(we[0][23]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[23]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram24(
		.clk(clk),
		.we(we[0][24]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[24]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram25(
		.clk(clk),
		.we(we[0][25]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[25]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram26(
		.clk(clk),
		.we(we[0][26]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[26]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram27(
		.clk(clk),
		.we(we[0][27]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[27]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram28(
		.clk(clk),
		.we(we[0][28]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[28]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram29(
		.clk(clk),
		.we(we[0][29]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[29]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram30(
		.clk(clk),
		.we(we[0][30]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[30]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram31(
		.clk(clk),
		.we(we[0][31]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[31]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram32(
		.clk(clk),
		.we(we[0][32]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[32]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram33(
		.clk(clk),
		.we(we[0][33]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[33]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram34(
		.clk(clk),
		.we(we[0][34]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[34]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram35(
		.clk(clk),
		.we(we[0][35]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[35]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram36(
		.clk(clk),
		.we(we[0][36]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[36]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram37(
		.clk(clk),
		.we(we[0][37]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[37]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram38(
		.clk(clk),
		.we(we[0][38]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[38]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram39(
		.clk(clk),
		.we(we[0][39]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[39]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram40(
		.clk(clk),
		.we(we[0][40]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[40]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram41(
		.clk(clk),
		.we(we[0][41]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[41]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram42(
		.clk(clk),
		.we(we[0][42]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[42]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram43(
		.clk(clk),
		.we(we[0][43]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[43]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram44(
		.clk(clk),
		.we(we[0][44]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[44]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram45(
		.clk(clk),
		.we(we[0][45]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[45]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram46(
		.clk(clk),
		.we(we[0][46]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[46]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram47(
		.clk(clk),
		.we(we[0][47]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[47]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram48(
		.clk(clk),
		.we(we[0][48]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[48]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram49(
		.clk(clk),
		.we(we[0][49]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[49]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram50(
		.clk(clk),
		.we(we[0][50]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[50]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram51(
		.clk(clk),
		.we(we[0][51]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[51]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram52(
		.clk(clk),
		.we(we[0][52]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[52]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram53(
		.clk(clk),
		.we(we[0][53]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[53]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram54(
		.clk(clk),
		.we(we[0][54]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[54]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram55(
		.clk(clk),
		.we(we[0][55]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[55]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram56(
		.clk(clk),
		.we(we[0][56]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[56]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram57(
		.clk(clk),
		.we(we[0][57]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[57]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram58(
		.clk(clk),
		.we(we[0][58]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[58]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram59(
		.clk(clk),
		.we(we[0][59]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[59]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram60(
		.clk(clk),
		.we(we[0][60]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[60]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram61(
		.clk(clk),
		.we(we[0][61]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[61]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram62(
		.clk(clk),
		.we(we[0][62]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[62]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram63(
		.clk(clk),
		.we(we[0][63]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midData[63]));

	//Weight SRAM 1 Size: 16*13*200+48*12*200 = 156800
	
	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram0(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[0]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram1(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[1]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram2(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[2]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram3(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[3]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram4(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[4]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram5(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[5]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram6(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[6]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram7(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[7]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram8(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[8]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram9(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[9]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram10(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[10]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram11(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[11]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram12(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[12]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram13(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[13]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram14(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[14]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram15(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[15]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram16(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[16]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram17(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[17]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram18(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[18]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram19(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[19]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram20(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[20]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram21(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[21]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram22(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[22]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram23(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[23]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram24(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[24]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram25(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[25]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram26(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[26]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram27(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[27]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram28(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[28]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram29(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[29]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram30(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[30]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram31(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[31]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram32(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[32]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram33(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[33]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram34(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[34]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram35(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[35]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram36(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[36]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram37(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[37]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram38(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[38]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram39(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[39]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram40(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[40]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram41(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[41]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram42(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[42]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram43(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[43]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram44(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[44]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram45(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[45]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram46(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[46]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram47(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[47]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram48(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[48]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram49(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[49]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram50(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[50]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram51(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[51]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram52(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[52]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram53(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[53]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram54(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[54]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram55(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[55]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram56(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[56]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram57(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[57]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram58(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[58]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram59(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[59]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram60(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[60]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram61(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[61]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram62(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[62]));

	sram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram63(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[63]));

		
	//Weight SRAM 2 Size: 8*4*10+56*3*10= 2000
	
	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram0(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[0]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram1(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[1]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram2(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[2]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram3(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[3]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram4(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[4]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram5(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[5]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram6(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[6]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram7(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[7]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram8(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[8]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram9(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[9]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram10(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[10]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram11(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[11]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram12(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[12]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram13(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[13]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram14(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[14]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram15(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[15]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram16(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[16]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram17(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[17]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram18(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[18]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram19(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[19]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram20(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[20]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram21(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[21]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram22(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[22]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram23(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[23]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram24(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[24]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram25(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[25]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram26(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[26]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram27(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[27]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram28(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[28]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram29(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[29]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram30(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[30]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram31(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[31]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram32(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[32]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram33(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[33]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram34(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[34]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram35(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[35]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram36(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[36]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram37(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[37]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram38(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[38]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram39(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[39]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram40(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[40]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram41(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[41]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram42(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[42]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram43(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[43]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram44(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[44]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram45(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[45]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram46(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[46]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram47(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[47]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram48(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[48]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram49(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[49]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram50(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[50]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram51(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[51]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram52(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[52]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram53(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[53]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram54(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[54]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram55(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[55]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram56(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[56]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram57(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[57]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram58(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[58]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram59(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[59]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram60(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[60]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram61(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[61]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram62(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[62]));

	sram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram63(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[63]));

	
endmodule
