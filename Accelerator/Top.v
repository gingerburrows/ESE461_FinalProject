module Top(
	input clk,
	input reset,	
	output reg Done
);

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

	wire [15:0] psum;
	wire [15:0] ActFout;
	reg MAC_rst;
	reg [15:0] MAC_data [0:63]; //Mac Data input
	reg [15:0] MAC_w [0:63]; //MAC weight input
	
	localparam INIT = 2'd0, MAC = 2'd1, STORE = 2'd2,DONE = 2'd3;
	reg [1:0] currentState,nextState;
	reg [5:0] wrCounterD,wrCounterQ;//Keep track of which RAM partition to write
	reg roundD,roundQ;
	
	integer i;
	
	//MAC Inputs
	wire [15:0] data1;
	wire [15:0] data2;
	wire [15:0] data3;
	wire [15:0] data4;
	wire [15:0] data5;
	wire [15:0] data6;
	wire [15:0] data7;
	wire [15:0] data8;
	wire [15:0] data9;
	wire [15:0] data10;
	wire [15:0] data11;
	wire [15:0] data12;
	wire [15:0] data13;
	wire [15:0] data14;
	wire [15:0] data15;
	wire [15:0] data16;
	wire [15:0] data17;
	wire [15:0] data18;
	wire [15:0] data19;
	wire [15:0] data20;
	wire [15:0] data21;
	wire [15:0] data22;
	wire [15:0] data23;
	wire [15:0] data24;
	wire [15:0] data25;
	wire [15:0] data26;
	wire [15:0] data27;
	wire [15:0] data28;
	wire [15:0] data29;
	wire [15:0] data30;
	wire [15:0] data31;
	wire [15:0] data32;
	wire [15:0] data33;
	wire [15:0] data34;
	wire [15:0] data35;
	wire [15:0] data36;
	wire [15:0] data37;
	wire [15:0] data38;
	wire [15:0] data39;
	wire [15:0] data40;
	wire [15:0] data41;
	wire [15:0] data42;
	wire [15:0] data43;
	wire [15:0] data44;
	wire [15:0] data45;
	wire [15:0] data46;
	wire [15:0] data47;
	wire [15:0] data48;
	wire [15:0] data49;
	wire [15:0] data50;
	wire [15:0] data51;
	wire [15:0] data52;
	wire [15:0] data53;
	wire [15:0] data54;
	wire [15:0] data55;
	wire [15:0] data56;
	wire [15:0] data57;
	wire [15:0] data58;
	wire [15:0] data59;
	wire [15:0] data60;
	wire [15:0] data61;
	wire [15:0] data62;
	wire [15:0] data63;
	wire [15:0] data64;


	wire [15:0] weight_1;
	wire [15:0] weight_2;
	wire [15:0] weight_3;
	wire [15:0] weight_4;
	wire [15:0] weight_5;
	wire [15:0] weight_6;
	wire [15:0] weight_7;
	wire [15:0] weight_8;
	wire [15:0] weight_9;
	wire [15:0] weight_10;
	wire [15:0] weight_11;
	wire [15:0] weight_12;
	wire [15:0] weight_13;
	wire [15:0] weight_14;
	wire [15:0] weight_15;
	wire [15:0] weight_16;
	wire [15:0] weight_17;
	wire [15:0] weight_18;
	wire [15:0] weight_19;
	wire [15:0] weight_20;
	wire [15:0] weight_21;
	wire [15:0] weight_22;
	wire [15:0] weight_23;
	wire [15:0] weight_24;
	wire [15:0] weight_25;
	wire [15:0] weight_26;
	wire [15:0] weight_27;
	wire [15:0] weight_28;
	wire [15:0] weight_29;
	wire [15:0] weight_30;
	wire [15:0] weight_31;
	wire [15:0] weight_32;
	wire [15:0] weight_33;
	wire [15:0] weight_34;
	wire [15:0] weight_35;
	wire [15:0] weight_36;
	wire [15:0] weight_37;
	wire [15:0] weight_38;
	wire [15:0] weight_39;
	wire [15:0] weight_40;
	wire [15:0] weight_41;
	wire [15:0] weight_42;
	wire [15:0] weight_43;
	wire [15:0] weight_44;
	wire [15:0] weight_45;
	wire [15:0] weight_46;
	wire [15:0] weight_47;
	wire [15:0] weight_48;
	wire [15:0] weight_49;
	wire [15:0] weight_50;
	wire [15:0] weight_51;
	wire [15:0] weight_52;
	wire [15:0] weight_53;
	wire [15:0] weight_54;
	wire [15:0] weight_55;
	wire [15:0] weight_56;
	wire [15:0] weight_57;
	wire [15:0] weight_58;
	wire [15:0] weight_59;
	wire [15:0] weight_60;
	wire [15:0] weight_61;
	wire [15:0] weight_62;
	wire [15:0] weight_63;
	wire [15:0] weight_64;

	
	//Packing MAC input signals
	assign data1 = MAC_data[0];
	assign data2 = MAC_data[1];
	assign data3 = MAC_data[2];
	assign data4 = MAC_data[3];
	assign data5 = MAC_data[4];
	assign data6 = MAC_data[5];
	assign data7 = MAC_data[6];
	assign data8 = MAC_data[7];
	assign data9 = MAC_data[8];
	assign data10 = MAC_data[9];
	assign data11 = MAC_data[10];
	assign data12 = MAC_data[11];
	assign data13 = MAC_data[12];
	assign data14 = MAC_data[13];
	assign data15 = MAC_data[14];
	assign data16 = MAC_data[15];
	assign data17 = MAC_data[16];
	assign data18 = MAC_data[17];
	assign data19 = MAC_data[18];
	assign data20 = MAC_data[19];
	assign data21 = MAC_data[20];
	assign data22 = MAC_data[21];
	assign data23 = MAC_data[22];
	assign data24 = MAC_data[23];
	assign data25 = MAC_data[24];
	assign data26 = MAC_data[25];
	assign data27 = MAC_data[26];
	assign data28 = MAC_data[27];
	assign data29 = MAC_data[28];
	assign data30 = MAC_data[29];
	assign data31 = MAC_data[30];
	assign data32 = MAC_data[31];
	assign data33 = MAC_data[32];
	assign data34 = MAC_data[33];
	assign data35 = MAC_data[34];
	assign data36 = MAC_data[35];
	assign data37 = MAC_data[36];
	assign data38 = MAC_data[37];
	assign data39 = MAC_data[38];
	assign data40 = MAC_data[39];
	assign data41 = MAC_data[40];
	assign data42 = MAC_data[41];
	assign data43 = MAC_data[42];
	assign data44 = MAC_data[43];
	assign data45 = MAC_data[44];
	assign data46 = MAC_data[45];
	assign data47 = MAC_data[46];
	assign data48 = MAC_data[47];
	assign data49 = MAC_data[48];
	assign data50 = MAC_data[49];
	assign data51 = MAC_data[50];
	assign data52 = MAC_data[51];
	assign data53 = MAC_data[52];
	assign data54 = MAC_data[53];
	assign data55 = MAC_data[54];
	assign data56 = MAC_data[55];
	assign data57 = MAC_data[56];
	assign data58 = MAC_data[57];
	assign data59 = MAC_data[58];
	assign data60 = MAC_data[59];
	assign data61 = MAC_data[60];
	assign data62 = MAC_data[61];
	assign data63 = MAC_data[62];
	assign data64 = MAC_data[63];

	assign weight_1 = MAC_w[0];
	assign weight_2 = MAC_w[1];
	assign weight_3 = MAC_w[2];
	assign weight_4 = MAC_w[3];
	assign weight_5 = MAC_w[4];
	assign weight_6 = MAC_w[5];
	assign weight_7 = MAC_w[6];
	assign weight_8 = MAC_w[7];
	assign weight_9 = MAC_w[8];
	assign weight_10 = MAC_w[9];
	assign weight_11 = MAC_w[10];
	assign weight_12 = MAC_w[11];
	assign weight_13 = MAC_w[12];
	assign weight_14 = MAC_w[13];
	assign weight_15 = MAC_w[14];
	assign weight_16 = MAC_w[15];
	assign weight_17 = MAC_w[16];
	assign weight_18 = MAC_w[17];
	assign weight_19 = MAC_w[18];
	assign weight_20 = MAC_w[19];
	assign weight_21 = MAC_w[20];
	assign weight_22 = MAC_w[21];
	assign weight_23 = MAC_w[22];
	assign weight_24 = MAC_w[23];
	assign weight_25 = MAC_w[24];
	assign weight_26 = MAC_w[25];
	assign weight_27 = MAC_w[26];
	assign weight_28 = MAC_w[27];
	assign weight_29 = MAC_w[28];
	assign weight_30 = MAC_w[29];
	assign weight_31 = MAC_w[30];
	assign weight_32 = MAC_w[31];
	assign weight_33 = MAC_w[32];
	assign weight_34 = MAC_w[33];
	assign weight_35 = MAC_w[34];
	assign weight_36 = MAC_w[35];
	assign weight_37 = MAC_w[36];
	assign weight_38 = MAC_w[37];
	assign weight_39 = MAC_w[38];
	assign weight_40 = MAC_w[39];
	assign weight_41 = MAC_w[40];
	assign weight_42 = MAC_w[41];
	assign weight_43 = MAC_w[42];
	assign weight_44 = MAC_w[43];
	assign weight_45 = MAC_w[44];
	assign weight_46 = MAC_w[45];
	assign weight_47 = MAC_w[46];
	assign weight_48 = MAC_w[47];
	assign weight_49 = MAC_w[48];
	assign weight_50 = MAC_w[49];
	assign weight_51 = MAC_w[50];
	assign weight_52 = MAC_w[51];
	assign weight_53 = MAC_w[52];
	assign weight_54 = MAC_w[53];
	assign weight_55 = MAC_w[54];
	assign weight_56 = MAC_w[55];
	assign weight_57 = MAC_w[56];
	assign weight_58 = MAC_w[57];
	assign weight_59 = MAC_w[58];
	assign weight_60 = MAC_w[59];
	assign weight_61 = MAC_w[60];
	assign weight_62 = MAC_w[61];
	assign weight_63 = MAC_w[62];
	assign weight_64 = MAC_w[63];



	activation ActF(
		.in(psum),
		.out(ActFout)
	);

	mac MAC_0
	(
		.clk(clk),
		.reset(MAC_rst),
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
		.weight1(weight_1),
	.weight2(weight_2),
	.weight3(weight_3),
	.weight4(weight_4),
	.weight5(weight_5),
	.weight6(weight_6),
	.weight7(weight_7),
	.weight8(weight_8),
	.weight9(weight_9),
	.weight10(weight_10),
	.weight11(weight_11),
	.weight12(weight_12),
	.weight13(weight_13),
	.weight14(weight_14),
	.weight15(weight_15),
	.weight16(weight_16),
	.weight17(weight_17),
	.weight18(weight_18),
	.weight19(weight_19),
	.weight20(weight_20),
	.weight21(weight_21),
	.weight22(weight_22),
	.weight23(weight_23),
	.weight24(weight_24),
	.weight25(weight_25),
	.weight26(weight_26),
	.weight27(weight_27),
	.weight28(weight_28),
	.weight29(weight_29),
	.weight30(weight_30),
	.weight31(weight_31),
	.weight32(weight_32),
	.weight33(weight_33),
	.weight34(weight_34),
	.weight35(weight_35),
	.weight36(weight_36),
	.weight37(weight_37),
	.weight38(weight_38),
	.weight39(weight_39),
	.weight40(weight_40),
	.weight41(weight_41),
	.weight42(weight_42),
	.weight43(weight_43),
	.weight44(weight_44),
	.weight45(weight_45),
	.weight46(weight_46),
	.weight47(weight_47),
	.weight48(weight_48),
	.weight49(weight_49),
	.weight50(weight_50),
	.weight51(weight_51),
	.weight52(weight_52),
	.weight53(weight_53),
	.weight54(weight_54),
	.weight55(weight_55),
	.weight56(weight_56),
	.weight57(weight_57),
	.weight58(weight_58),
	.weight59(weight_59),
	.weight60(weight_60),
	.weight61(weight_61),
	.weight62(weight_62),
	.weight63(weight_63),
	.weight64(weight_64),
	.result(psum)
	);

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


	//Sequential
	always@(posedge clk) begin
		if(reset) begin
			inoutAddrQ <= 4'b0;
			midAddrQ <= 2'b0;
			wAddrQ <= 12'b0;
			currentState <= 2'b0;
			wrCounterQ <= 2'b0;
			roundQ <= 1'b0;
		end else begin
			inoutAddrQ <= inoutAddrD;
			midAddrQ <= midAddrD;
			wAddrQ <= wAddrD;
			currentState <= nextState;
			wrCounterQ <= wrCounterD;
			roundQ <= roundD;
		end
	end
	
	//Combinational 
	always@(*) begin
		nextState=currentState;
		roundD = roundQ;
		inoutAddrD = inoutAddrQ;
		midAddrD = midAddrQ;
		wAddrD = wAddrQ;
		wrCounterD = wrCounterQ;
		MAC_rst = 1'b0;
		we[0] = 64'b0;
		we[1] = 64'b0;
		Done = 1'b0;
		for(i = 0;i < 64 ; i = i + 1) begin
			MAC_data[i] = roundQ ? midData[i]:inoutData[i];
			MAC_w[i] = roundQ ? weight1[i]:weight0[i];
		end
		case(currentState)
			INIT: begin
				nextState = MAC; //Start MAC calculation
				MAC_rst = 1'b1; //Reset MAC module
			end
			MAC: begin
				if(~roundQ) begin //First Round
					inoutAddrD = inoutAddrQ + 1;
					wAddrD = wAddrQ + 1;
					if(inoutAddrQ == 4'd12) begin //Check when 784 calculations done
						//Passing zeros to MAC
						for(i = 16;i < 64 ; i = i + 1) begin
							MAC_data[i] = 16'b0;
						end
						nextState = STORE;
						inoutAddrD = 4'd0;
					end
				end else begin //Second Round
					midAddrD = midAddrQ + 1;
					wAddrD = wAddrQ + 1;
					if(midAddrQ == 2'd3) begin //Check when 200 calculations done
						//Passing zeros to MAC
						for(i = 8;i < 64 ; i = i + 1) begin
							MAC_data[i] = 16'b0;
						end
						nextState = STORE;
						midAddrD = 2'd0;
					end
				end
			end
			STORE: begin
				//Store the valid result
				we[roundQ][wrCounterQ] = 1'b1;
				wrData = ActFout;
				if(~roundQ) begin //First Round
					nextState = MAC;
					MAC_rst = 1; //Reset MAC
					if(wAddrQ == 12'd2600) begin //First Round Done
						roundD = 1'b1; //Change Round register
						wAddrD = 12'b0; //Clear Weight Address
						wrCounterD = 6'b0; //Reset Write RAM counter
						midAddrD = 2'd0; //Reset Intermediate RAM Address
					end else begin
						//Increment RAM counter
						wrCounterD = wrCounterQ + 1;
						if(wrCounterQ == 6'd63) begin
							wrCounterD = 6'b0;
							midAddrD = midAddrQ + 1;
						end
					end
				end else begin //Second Round
					if(wAddrQ == 6'd40) begin //Second Round Done
						nextState = DONE;
						wAddrD = 12'b0; //Clear Weight Address
						wrCounterD = 6'b0; //Reset Write RAM counter
						inoutAddrD = 4'd0; //Reset InOut RAM address
					end else begin
						nextState = MAC;
						MAC_rst = 1; //Reset MAC
						//Increment RAM counter
						wrCounterD = wrCounterQ + 1;
						if(wrCounterQ == 6'd63) begin
							wrCounterD = 6'b0;
							inoutAddrD = inoutAddrQ + 1;
						end
					end
				end
			end
			DONE: begin
				Done = 1'b1;
			end
		endcase
	end	
endmodule
