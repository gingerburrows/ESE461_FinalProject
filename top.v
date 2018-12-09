module Top(
	input clk,
	input reset	
);

//Input SRAM signals
	wire [3:0]inoutAddrQ;
	wire [15:0] inoutDataQ [0:63];

	//Intermediate SRAM signals
	wire [1:0] midAddrQ;
	wire [15:0] midDataQ [0:63];

	//Signals shared between input and intermediate
	reg [15:0] wrData;
	wire [63:0] we [0:1]; // [0]-Intermediate, [1]-Input
	

	//Weight SRAM signals
	wire[11:0] wAddrQ;
	wire [15:0] weight0 [0:63]; //Output for first stage
	wire [15:0] weight1 [0:63]; //Output for second stage


	wire clk;
	wire [15:0] sum;
	wire [15:0] psum;
	wire [15:0] ActFout;
	wire [4:0] round; //FIXME
	wire [63:0] we_ctrl;


	activation ActF(
		.in(sum),
		.out(ActFout)
	);

	control Control(
		.clk(clk),
		.rst(reset),
		.sum(sum),
		.psum(psum),
		.INaddr(inoutAddrQ),
		.OUTaddr(midAddrQ),
		.Waddr(wAddr),
		.we(we_ctrl),
		.round(round)
	);

	assign we[0] = we_ctrl & {64{~round}}; //FIXME
	assign we[1] = we_ctrl & {64{round}}; //FIXME

	reg [15:0] data1;
	reg [15:0] data2;
	reg [15:0] data3;
	reg [15:0] data4;
	reg [15:0] data5;
	reg [15:0] data6;
	reg [15:0] data7;
	reg [15:0] data8;
	reg [15:0] data9;
	reg [15:0] data10;
	reg [15:0] data11;
	reg [15:0] data12;
	reg [15:0] data13;
	reg [15:0] data14;
	reg [15:0] data15;
	reg [15:0] data16;
	reg [15:0] data17;
	reg [15:0] data18;
	reg [15:0] data19;
	reg [15:0] data20;
	reg [15:0] data21;
	reg [15:0] data22;
	reg [15:0] data23;
	reg [15:0] data24;
	reg [15:0] data25;
	reg [15:0] data26;
	reg [15:0] data27;
	reg [15:0] data28;
	reg [15:0] data29;
	reg [15:0] data30;
	reg [15:0] data31;
	reg [15:0] data32;
	reg [15:0] data33;
	reg [15:0] data34;
	reg [15:0] data35;
	reg [15:0] data36;
	reg [15:0] data37;
	reg [15:0] data38;
	reg [15:0] data39;
	reg [15:0] data40;
	reg [15:0] data41;
	reg [15:0] data42;
	reg [15:0] data43;
	reg [15:0] data44;
	reg [15:0] data45;
	reg [15:0] data46;
	reg [15:0] data47;
	reg [15:0] data48;
	reg [15:0] data49;
	reg [15:0] data50;
	reg [15:0] data51;
	reg [15:0] data52;
	reg [15:0] data53;
	reg [15:0] data54;
	reg [15:0] data55;
	reg [15:0] data56;
	reg [15:0] data57;
	reg [15:0] data58;
	reg [15:0] data59;
	reg [15:0] data60;
	reg [15:0] data61;
	reg [15:0] data62;
	reg [15:0] data63;
	reg [15:0] data64;
	reg [15:0] weight01;
	reg [15:0] weight2;
	reg [15:0] weight3;
	reg [15:0] weight4;
	reg [15:0] weight5;
	reg [15:0] weight6;
	reg [15:0] weight7;
	reg [15:0] weight8;
	reg [15:0] weight9;
	reg [15:0] weight10;
	reg [15:0] weight11;
	reg [15:0] weight12;
	reg [15:0] weight13;
	reg [15:0] weight14;
	reg [15:0] weight15;
	reg [15:0] weight16;
	reg [15:0] weight17;
	reg [15:0] weight18;
	reg [15:0] weight19;
	reg [15:0] weight20;
	reg [15:0] weight21;
	reg [15:0] weight22;
	reg [15:0] weight23;
	reg [15:0] weight24;
	reg [15:0] weight25;
	reg [15:0] weight26;
	reg [15:0] weight27;
	reg [15:0] weight28;
	reg [15:0] weight29;
	reg [15:0] weight30;
	reg [15:0] weight31;
	reg [15:0] weight32;
	reg [15:0] weight33;
	reg [15:0] weight34;
	reg [15:0] weight35;
	reg [15:0] weight36;
	reg [15:0] weight37;
	reg [15:0] weight38;
	reg [15:0] weight39;
	reg [15:0] weight40;
	reg [15:0] weight41;
	reg [15:0] weight42;
	reg [15:0] weight43;
	reg [15:0] weight44;
	reg [15:0] weight45;
	reg [15:0] weight46;
	reg [15:0] weight47;
	reg [15:0] weight48;
	reg [15:0] weight49;
	reg [15:0] weight50;
	reg [15:0] weight51;
	reg [15:0] weight52;
	reg [15:0] weight53;
	reg [15:0] weight54;
	reg [15:0] weight55;
	reg [15:0] weight56;
	reg [15:0] weight57;
	reg [15:0] weight58;
	reg [15:0] weight59;
	reg [15:0] weight60;
	reg [15:0] weight61;
	reg [15:0] weight62;
	reg [15:0] weight63;
	reg [15:0] weight64;

	mac MAC
	(
		.clk(clk),
		.reset(reset),
		.data1(data1),
		.data2(data2),
		.data3(data3),
		.data4(data4),
		.data5(data5),
		.data6(data6),
		.data7(data7),
		.data8(data8),
		.data9(data9),
		.data10(data10),
		.data11(data11),
		.data12(data12),
		.data13(data13),
		.data14(data14),
		.data15(data15),
		.data16(data16),
		.data17(data17),
		.data18(data18),
		.data19(data19),
		.data20(data20),
		.data21(data21),
		.data22(data22),
		.data23(data23),
		.data24(data24),
		.data25(data25),
		.data26(data26),
		.data27(data27),
		.data28(data28),
		.data29(data29),
		.data30(data30),
		.data31(data31),
		.data32(data32),
		.data33(data33),
		.data34(data34),
		.data35(data35),
		.data36(data36),
		.data37(data37),
		.data38(data38),
		.data39(data39),
		.data40(data40),
		.data41(data41),
		.data42(data42),
		.data43(data43),
		.data44(data44),
		.data45(data45),
		.data46(data46),
		.data47(data47),
		.data48(data48),
		.data49(data49),
		.data50(data50),
		.data51(data51),
		.data52(data52),
		.data53(data53),
		.data54(data54),
		.data55(data55),
		.data56(data56),
		.data57(data57),
		.data58(data58),
		.data59(data59),
		.data60(data60),
		.data61(data61),
		.data62(data62),
		.data63(data63),
		.data64(data64),
		.weight1(weight01),
		.weight2(weight2),
		.weight3(weight3),
		.weight4(weight4),
		.weight5(weight5),
		.weight6(weight6),
		.weight7(weight7),
		.weight8(weight8),
		.weight9(weight9),
		.weight10(weight10),
		.weight11(weight11),
		.weight12(weight12),
		.weight13(weight13),
		.weight14(weight14),
		.weight15(weight15),
		.weight16(weight16),
		.weight17(weight17),
		.weight18(weight18),
		.weight19(weight19),
		.weight20(weight20),
		.weight21(weight21),
		.weight22(weight22),
		.weight23(weight23),
		.weight24(weight24),
		.weight25(weight25),
		.weight26(weight26),
		.weight27(weight27),
		.weight28(weight28),
		.weight29(weight29),
		.weight30(weight30),
		.weight31(weight31),
		.weight32(weight32),
		.weight33(weight33),
		.weight34(weight34),
		.weight35(weight35),
		.weight36(weight36),
		.weight37(weight37),
		.weight38(weight38),
		.weight39(weight39),
		.weight40(weight40),
		.weight41(weight41),
		.weight42(weight42),
		.weight43(weight43),
		.weight44(weight44),
		.weight45(weight45),
		.weight46(weight46),
		.weight47(weight47),
		.weight48(weight48),
		.weight49(weight49),
		.weight50(weight50),
		.weight51(weight51),
		.weight52(weight52),
		.weight53(weight53),
		.weight54(weight54),
		.weight55(weight55),
		.weight56(weight56),
		.weight57(weight57),
		.weight58(weight58),
		.weight59(weight59),
		.weight60(weight60),
		.weight61(weight61),
		.weight62(weight62),
		.weight63(weight63),
		.weight64(weight64),
		.result(psum)
	);


	always@(posedge clk)
	begin
		wrData=sum;

		if (round %2==0) begin //FIXME
			we1=0;
			we0=we;
			data1=inoutData[0][inoutAddrQ]; 
			data2=inoutData[1][inoutAddrQ];
			data3=inoutData[2][inoutAddrQ];
			data4=inoutData[3][inoutAddrQ];
			data5=inoutData[4][inoutAddrQ];
			data6=inoutData[5][inoutAddrQ];
			data7=inoutData[6][inoutAddrQ];
			data8=inoutData[7][inoutAddrQ];
			data9=inoutData[8][inoutAddrQ];
			data10=inoutData[9][inoutAddrQ];
			data11=inoutData[10][inoutAddrQ];
			data12=inoutData[11][inoutAddrQ];
			data13=inoutData[12][inoutAddrQ];
			data14=inoutData[13][inoutAddrQ];
			data15=inoutData[14][inoutAddrQ];
			data16=inoutData[15][inoutAddrQ];
			data17=inoutData[16][inoutAddrQ];
			data18=inoutData[17][inoutAddrQ];
			data19=inoutData[18][inoutAddrQ];
			data20=inoutData[19][inoutAddrQ];
			data21=inoutData[20][inoutAddrQ];
			data22=inoutData[21][inoutAddrQ];
			data23=inoutData[22][inoutAddrQ];
			data24=inoutData[23][inoutAddrQ];
			data25=inoutData[24][inoutAddrQ];
			data26=inoutData[25][inoutAddrQ];
			data27=inoutData[26][inoutAddrQ];
			data28=inoutData[27][inoutAddrQ];
			data29=inoutData[28][inoutAddrQ];
			data30=inoutData[29][inoutAddrQ];
			data31=inoutData[30][inoutAddrQ];
			data32=inoutData[31][inoutAddrQ];
			data33=inoutData[32][inoutAddrQ];
			data34=inoutData[33][inoutAddrQ];
			data35=inoutData[34][inoutAddrQ];
			data36=inoutData[35][inoutAddrQ];
			data37=inoutData[36][inoutAddrQ];
			data38=inoutData[37][inoutAddrQ];
			data39=inoutData[38][inoutAddrQ];
			data40=inoutData[39][inoutAddrQ];
			data41=inoutData[40][inoutAddrQ];
			data42=inoutData[41][inoutAddrQ];
			data43=inoutData[42][inoutAddrQ];
			data44=inoutData[43][inoutAddrQ];
			data45=inoutData[44][inoutAddrQ];
			data46=inoutData[45][inoutAddrQ];
			data47=inoutData[46][inoutAddrQ];
			data48=inoutData[47][inoutAddrQ];
			data49=inoutData[48][inoutAddrQ];
			data50=inoutData[49][inoutAddrQ];
			data51=inoutData[50][inoutAddrQ];
			data52=inoutData[51][inoutAddrQ];
			data53=inoutData[52][inoutAddrQ];
			data54=inoutData[53][inoutAddrQ];
			data55=inoutData[54][inoutAddrQ];
			data56=inoutData[55][inoutAddrQ];
			data57=inoutData[56][inoutAddrQ];
			data58=inoutData[57][inoutAddrQ];
			data59=inoutData[58][inoutAddrQ];
			data60=inoutData[59][inoutAddrQ];
			data61=inoutData[60][inoutAddrQ];
			data62=inoutData[61][inoutAddrQ];
			data63=inoutData[62][inoutAddrQ];
			data64=inoutData[63][inoutAddrQ];
			weight01=weight0[0][wAddrQ];
			weight2=weight0[1][wAddrQ];
			weight3=weight0[2][wAddrQ];
			weight4=weight0[3][wAddrQ];
			weight5=weight0[4][wAddrQ];
			weight6=weight0[5][wAddrQ];
			weight7=weight0[6][wAddrQ];
			weight8=weight0[7][wAddrQ];
			weight9=weight0[8][wAddrQ];
			weight10=weight0[9][wAddrQ];
			weight11=weight0[10][wAddrQ];
			weight12=weight0[11][wAddrQ];
			weight13=weight0[12][wAddrQ];
			weight14=weight0[13][wAddrQ];
			weight15=weight0[14][wAddrQ];
			weight16=weight0[15][wAddrQ];
			weight17=weight0[16][wAddrQ];
			weight18=weight0[17][wAddrQ];
			weight19=weight0[18][wAddrQ];
			weight20=weight0[19][wAddrQ];
			weight21=weight0[20][wAddrQ];
			weight22=weight0[21][wAddrQ];
			weight23=weight0[22][wAddrQ];
			weight24=weight0[23][wAddrQ];
			weight25=weight0[24][wAddrQ];
			weight26=weight0[25][wAddrQ];
			weight27=weight0[26][wAddrQ];
			weight28=weight0[27][wAddrQ];
			weight29=weight0[28][wAddrQ];
			weight30=weight0[29][wAddrQ];
			weight31=weight0[30][wAddrQ];
			weight32=weight0[31][wAddrQ];
			weight33=weight0[32][wAddrQ];
			weight34=weight0[33][wAddrQ];
			weight35=weight0[34][wAddrQ];
			weight36=weight0[35][wAddrQ];
			weight37=weight0[36][wAddrQ];
			weight38=weight0[37][wAddrQ];
			weight39=weight0[38][wAddrQ];
			weight40=weight0[39][wAddrQ];
			weight41=weight0[40][wAddrQ];
			weight42=weight0[41][wAddrQ];
			weight43=weight0[42][wAddrQ];
			weight44=weight0[43][wAddrQ];
			weight45=weight0[44][wAddrQ];
			weight46=weight0[45][wAddrQ];
			weight47=weight0[46][wAddrQ];
			weight48=weight0[47][wAddrQ];
			weight49=weight0[48][wAddrQ];
			weight50=weight0[49][wAddrQ];
			weight51=weight0[50][wAddrQ];
			weight52=weight0[51][wAddrQ];
			weight53=weight0[52][wAddrQ];
			weight54=weight0[53][wAddrQ];
			weight55=weight0[54][wAddrQ];
			weight56=weight0[55][wAddrQ];
			weight57=weight0[56][wAddrQ];
			weight58=weight0[57][wAddrQ];
			weight59=weight0[58][wAddrQ];
			weight60=weight0[59][wAddrQ];
			weight61=weight0[60][wAddrQ];
			weight62=weight0[61][wAddrQ];
			weight63=weight0[62][wAddrQ];
			weight64=weight0[63][wAddrQ];

		end
		else begin
			we0=0;
			we1=we;
			data1=midData[0][midAddrQ];
			data2=midData[1][midAddrQ];
			data3=midData[2][midAddrQ];
			data4=midData[3][midAddrQ];
			data5=midData[4][midAddrQ];
			data6=midData[5][midAddrQ];
			data7=midData[6][midAddrQ];
			data8=midData[7][midAddrQ];
			data9=midData[8][midAddrQ];
			data10=midData[9][midAddrQ];
			data11=midData[10][midAddrQ];
			data12=midData[11][midAddrQ];
			data13=midData[12][midAddrQ];
			data14=midData[13][midAddrQ];
			data15=midData[14][midAddrQ];
			data16=midData[15][midAddrQ];
			data17=midData[16][midAddrQ];
			data18=midData[17][midAddrQ];
			data19=midData[18][midAddrQ];
			data20=midData[19][midAddrQ];
			data21=midData[20][midAddrQ];
			data22=midData[21][midAddrQ];
			data23=midData[22][midAddrQ];
			data24=midData[23][midAddrQ];
			data25=midData[24][midAddrQ];
			data26=midData[25][midAddrQ];
			data27=midData[26][midAddrQ];
			data28=midData[27][midAddrQ];
			data29=midData[28][midAddrQ];
			data30=midData[29][midAddrQ];
			data31=midData[30][midAddrQ];
			data32=midData[31][midAddrQ];
			data33=midData[32][midAddrQ];
			data34=midData[33][midAddrQ];
			data35=midData[34][midAddrQ];
			data36=midData[35][midAddrQ];
			data37=midData[36][midAddrQ];
			data38=midData[37][midAddrQ];
			data39=midData[38][midAddrQ];
			data40=midData[39][midAddrQ];
			data41=midData[40][midAddrQ];
			data42=midData[41][midAddrQ];
			data43=midData[42][midAddrQ];
			data44=midData[43][midAddrQ];
			data45=midData[44][midAddrQ];
			data46=midData[45][midAddrQ];
			data47=midData[46][midAddrQ];
			data48=midData[47][midAddrQ];
			data49=midData[48][midAddrQ];
			data50=midData[49][midAddrQ];
			data51=midData[50][midAddrQ];
			data52=midData[51][midAddrQ];
			data53=midData[52][midAddrQ];
			data54=midData[53][midAddrQ];
			data55=midData[54][midAddrQ];
			data56=midData[55][midAddrQ];
			data57=midData[56][midAddrQ];
			data58=midData[57][midAddrQ];
			data59=midData[58][midAddrQ];
			data60=midData[59][midAddrQ];
			data61=midData[60][midAddrQ];
			data62=midData[61][midAddrQ];
			data63=midData[62][midAddrQ];
			data64=midData[63][midAddrQ];
			weight01=weight1[0][wAddrQ[5:0]];
			weight2=weight1[1][wAddrQ[5:0]];
			weight3=weight1[2][wAddrQ[5:0]];
			weight4=weight1[3][wAddrQ[5:0]];
			weight5=weight1[4][wAddrQ[5:0]];
			weight6=weight1[5][wAddrQ[5:0]];
			weight7=weight1[6][wAddrQ[5:0]];
			weight8=weight1[7][wAddrQ[5:0]];
			weight9=weight1[8][wAddrQ[5:0]];
			weight10=weight1[9][wAddrQ[5:0]];
			weight11=weight1[10][wAddrQ[5:0]];
			weight12=weight1[11][wAddrQ[5:0]];
			weight13=weight1[12][wAddrQ[5:0]];
			weight14=weight1[13][wAddrQ[5:0]];
			weight15=weight1[14][wAddrQ[5:0]];
			weight16=weight1[15][wAddrQ[5:0]];
			weight17=weight1[16][wAddrQ[5:0]];
			weight18=weight1[17][wAddrQ[5:0]];
			weight19=weight1[18][wAddrQ[5:0]];
			weight20=weight1[19][wAddrQ[5:0]];
			weight21=weight1[20][wAddrQ[5:0]];
			weight22=weight1[21][wAddrQ[5:0]];
			weight23=weight1[22][wAddrQ[5:0]];
			weight24=weight1[23][wAddrQ[5:0]];
			weight25=weight1[24][wAddrQ[5:0]];
			weight26=weight1[25][wAddrQ[5:0]];
			weight27=weight1[26][wAddrQ[5:0]];
			weight28=weight1[27][wAddrQ[5:0]];
			weight29=weight1[28][wAddrQ[5:0]];
			weight30=weight1[29][wAddrQ[5:0]];
			weight31=weight1[30][wAddrQ[5:0]];
			weight32=weight1[31][wAddrQ[5:0]];
			weight33=weight1[32][wAddrQ[5:0]];
			weight34=weight1[33][wAddrQ[5:0]];
			weight35=weight1[34][wAddrQ[5:0]];
			weight36=weight1[35][wAddrQ[5:0]];
			weight37=weight1[36][wAddrQ[5:0]];
			weight38=weight1[37][wAddrQ[5:0]];
			weight39=weight1[38][wAddrQ[5:0]];
			weight40=weight1[39][wAddrQ[5:0]];
			weight41=weight1[40][wAddrQ[5:0]];
			weight42=weight1[41][wAddrQ[5:0]];
			weight43=weight1[42][wAddrQ[5:0]];
			weight44=weight1[43][wAddrQ[5:0]];
			weight45=weight1[44][wAddrQ[5:0]];
			weight46=weight1[45][wAddrQ[5:0]];
			weight47=weight1[46][wAddrQ[5:0]];
			weight48=weight1[47][wAddrQ[5:0]];
			weight49=weight1[48][wAddrQ[5:0]];
			weight50=weight1[49][wAddrQ[5:0]];
			weight51=weight1[50][wAddrQ[5:0]];
			weight52=weight1[51][wAddrQ[5:0]];
			weight53=weight1[52][wAddrQ[5:0]];
			weight54=weight1[53][wAddrQ[5:0]];
			weight55=weight1[54][wAddrQ[5:0]];
			weight56=weight1[55][wAddrQ[5:0]];
			weight57=weight1[56][wAddrQ[5:0]];
			weight58=weight1[57][wAddrQ[5:0]];
			weight59=weight1[58][wAddrQ[5:0]];
			weight60=weight1[59][wAddrQ[5:0]];
			weight61=weight1[60][wAddrQ[5:0]];
			weight62=weight1[61][wAddrQ[5:0]];
			weight63=weight1[62][wAddrQ[5:0]];
			weight64=weight1[63][wAddrQ[5:0]];
	end
end


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

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram16(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[16]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram17(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[17]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram18(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[18]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram19(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[19]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram20(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[20]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram21(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[21]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram22(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[22]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram23(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[23]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram24(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[24]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram25(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[25]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram26(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[26]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram27(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[27]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram28(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[28]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram29(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[29]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram30(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[30]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram31(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[31]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram32(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[32]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram33(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[33]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram34(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[34]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram35(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[35]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram36(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[36]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram37(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[37]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram38(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[38]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram39(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[39]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram40(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[40]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram41(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[41]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram42(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[42]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram43(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[43]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram44(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[44]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram45(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[45]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram46(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[46]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram47(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[47]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram48(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[48]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram49(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[49]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram50(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[50]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram51(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[51]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram52(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[52]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram53(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[53]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram54(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[54]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram55(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[55]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram56(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[56]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram57(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[57]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram58(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[58]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram59(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[59]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram60(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[60]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram61(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[61]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram62(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ),
		.data(16'b0),
		.q(weight0[62]));

	sram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram63(
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

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram8(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[8]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram9(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[9]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram10(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[10]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram11(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[11]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram12(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[12]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram13(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[13]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram14(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[14]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram15(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[15]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram16(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[16]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram17(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[17]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram18(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[18]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram19(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[19]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram20(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[20]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram21(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[21]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram22(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[22]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram23(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[23]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram24(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[24]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram25(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[25]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram26(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[26]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram27(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[27]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram28(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[28]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram29(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[29]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram30(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[30]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram31(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[31]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram32(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[32]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram33(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[33]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram34(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[34]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram35(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[35]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram36(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[36]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram37(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[37]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram38(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[38]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram39(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[39]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram40(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[40]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram41(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[41]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram42(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[42]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram43(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[43]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram44(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[44]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram45(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[45]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram46(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[46]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram47(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[47]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram48(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[48]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram49(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[49]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram50(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[50]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram51(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[51]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram52(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[52]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram53(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[53]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram54(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[54]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram55(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[55]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram56(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[56]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram57(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[57]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram58(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[58]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram59(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[59]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram60(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[60]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram61(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[61]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram62(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[62]));

	sram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram63(
		.clk(clk),
		.we(1'b0),
		.addr(wAddrQ[5:0]),
		.data(16'b0),
		.q(weight1[63]));


endmodule
