`timescale 1ns / 1ps
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
	wire MACreset;

	wire [15:0] psum;
	wire [15:0] ActFout;
	wire round; //FIXME
	wire [63:0] we_ctrl;


	activation ActF(
		.in(psum),
		.out(ActFout)
	);

	control Control(
		.clk(clk),
		.rst(reset),
		.MACreset(MACreset),
		.INaddr(inoutAddrQ),
		.OUTaddr(midAddrQ),
		.Waddr(wAddrQ),
		.we(we_ctrl),
		.round(round)
	);

	assign we[0] = we_ctrl & (64'hFFFFFFFF * (!(round %2))) ; //FIXME
	assign we[1] = we_ctrl & (64'hFFFFFFFF * (round %2)) ; //FIXME

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
		.reset(MACreset),
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


	always@(*)
	begin
		wrData=psum;

		if (round %2==0) begin 
			data1<=inoutDataQ[0]; 
			data2<=inoutDataQ[1];
			data3<=inoutDataQ[2];
			data4<=inoutDataQ[3];
			data5<=inoutDataQ[4];
			data6<=inoutDataQ[5];
			data7<=inoutDataQ[6];
			data8<=inoutDataQ[7];
			data9<=inoutDataQ[8];
			data10<=inoutDataQ[9];
			data11<=inoutDataQ[10];
			data12<=inoutDataQ[11];
			data13<=inoutDataQ[12];
			data14<=inoutDataQ[13];
			data15<=inoutDataQ[14];
			data16<=inoutDataQ[15] &(16'hFFFF *(inoutAddrQ<12));
			data17<=inoutDataQ[16] &(16'hFFFF *(inoutAddrQ<12));
			data18<=inoutDataQ[17] &(16'hFFFF *(inoutAddrQ<12));
			data19<=inoutDataQ[18] &(16'hFFFF *(inoutAddrQ<12));
			data20<=inoutDataQ[19] &(16'hFFFF *(inoutAddrQ<12));
			data21<=inoutDataQ[20] &(16'hFFFF *(inoutAddrQ<12));
			data22<=inoutDataQ[21] &(16'hFFFF *(inoutAddrQ<12));
			data23<=inoutDataQ[22] &(16'hFFFF *(inoutAddrQ<12));
			data24<=inoutDataQ[23] &(16'hFFFF *(inoutAddrQ<12));
			data25<=inoutDataQ[24] &(16'hFFFF *(inoutAddrQ<12));
			data26<=inoutDataQ[25] &(16'hFFFF *(inoutAddrQ<12));
			data27<=inoutDataQ[26] &(16'hFFFF *(inoutAddrQ<12));
			data28<=inoutDataQ[27] &(16'hFFFF *(inoutAddrQ<12));
			data29<=inoutDataQ[28] &(16'hFFFF *(inoutAddrQ<12));
			data30<=inoutDataQ[29] &(16'hFFFF *(inoutAddrQ<12));
			data31<=inoutDataQ[30] &(16'hFFFF *(inoutAddrQ<12));
			data32<=inoutDataQ[31] &(16'hFFFF *(inoutAddrQ<12));
			data33<=inoutDataQ[32] &(16'hFFFF *(inoutAddrQ<12));
			data34<=inoutDataQ[33] &(16'hFFFF *(inoutAddrQ<12));
			data35<=inoutDataQ[34] &(16'hFFFF *(inoutAddrQ<12));
			data36<=inoutDataQ[35] &(16'hFFFF *(inoutAddrQ<12));
			data37<=inoutDataQ[36] &(16'hFFFF *(inoutAddrQ<12));
			data38<=inoutDataQ[37] &(16'hFFFF *(inoutAddrQ<12));
			data39<=inoutDataQ[38] &(16'hFFFF *(inoutAddrQ<12));
			data40<=inoutDataQ[39] &(16'hFFFF *(inoutAddrQ<12));
			data41<=inoutDataQ[40] &(16'hFFFF *(inoutAddrQ<12));
			data42<=inoutDataQ[41] &(16'hFFFF *(inoutAddrQ<12));
			data43<=inoutDataQ[42] &(16'hFFFF *(inoutAddrQ<12));
			data44<=inoutDataQ[43] &(16'hFFFF *(inoutAddrQ<12));
			data45<=inoutDataQ[44] &(16'hFFFF *(inoutAddrQ<12));
			data46<=inoutDataQ[45] &(16'hFFFF *(inoutAddrQ<12));
			data47<=inoutDataQ[46] &(16'hFFFF *(inoutAddrQ<12));
			data48<=inoutDataQ[47] &(16'hFFFF *(inoutAddrQ<12));
			data49<=inoutDataQ[48] &(16'hFFFF *(inoutAddrQ<12));
			data50<=inoutDataQ[49] &(16'hFFFF *(inoutAddrQ<12));
			data51<=inoutDataQ[50] &(16'hFFFF *(inoutAddrQ<12));
			data52<=inoutDataQ[51] &(16'hFFFF *(inoutAddrQ<12));
			data53<=inoutDataQ[52] &(16'hFFFF *(inoutAddrQ<12));
			data54<=inoutDataQ[53] &(16'hFFFF *(inoutAddrQ<12));
			data55<=inoutDataQ[54] &(16'hFFFF *(inoutAddrQ<12));
			data56<=inoutDataQ[55] &(16'hFFFF *(inoutAddrQ<12));
			data57<=inoutDataQ[56] &(16'hFFFF *(inoutAddrQ<12));
			data58<=inoutDataQ[57] &(16'hFFFF *(inoutAddrQ<12));
			data59<=inoutDataQ[58] &(16'hFFFF *(inoutAddrQ<12));
			data60<=inoutDataQ[59] &(16'hFFFF *(inoutAddrQ<12));
			data61<=inoutDataQ[60] &(16'hFFFF *(inoutAddrQ<12));
			data62<=inoutDataQ[61] &(16'hFFFF *(inoutAddrQ<12));
			data63<=inoutDataQ[62] &(16'hFFFF *(inoutAddrQ<12));
			data64<=inoutDataQ[63] &(16'hFFFF *(inoutAddrQ<12));
			weight01<=weight0[0];
			weight2<=weight0[1];
			weight3<=weight0[2];
			weight4<=weight0[3];
			weight5<=weight0[4];
			weight6<=weight0[5];
			weight7<=weight0[6];
			weight8<=weight0[7];
			weight9<=weight0[8];
			weight10<=weight0[9];
			weight11<=weight0[10];
			weight12<=weight0[11];
			weight13<=weight0[12];
			weight14<=weight0[13];
			weight15<=weight0[14];
			weight16<=weight0[15];
			weight17<=weight0[16];
			weight18<=weight0[17];
			weight19<=weight0[18];
			weight20<=weight0[19];
			weight21<=weight0[20];
			weight22<=weight0[21];
			weight23<=weight0[22];
			weight24<=weight0[23];
			weight25<=weight0[24];
			weight26<=weight0[25];
			weight27<=weight0[26];
			weight28<=weight0[27];
			weight29<=weight0[28];
			weight30<=weight0[29];
			weight31<=weight0[30];
			weight32<=weight0[31];
			weight33<=weight0[32];
			weight34<=weight0[33];
			weight35<=weight0[34];
			weight36<=weight0[35];
			weight37<=weight0[36];
			weight38<=weight0[37];
			weight39<=weight0[38];
			weight40<=weight0[39];
			weight41<=weight0[40];
			weight42<=weight0[41];
			weight43<=weight0[42];
			weight44<=weight0[43];
			weight45<=weight0[44];
			weight46<=weight0[45];
			weight47<=weight0[46];
			weight48<=weight0[47];
			weight49<=weight0[48];
			weight50<=weight0[49];
			weight51<=weight0[50];
			weight52<=weight0[51];
			weight53<=weight0[52];
			weight54<=weight0[53];
			weight55<=weight0[54];
			weight56<=weight0[55];
			weight57<=weight0[56];
			weight58<=weight0[57];
			weight59<=weight0[58];
			weight60<=weight0[59];
			weight61<=weight0[60];
			weight62<=weight0[61];
			weight63<=weight0[62];
			weight64<=weight0[63];

		end
		else begin
			data1<=midDataQ[0];
			data2<=midDataQ[1];
			data3<=midDataQ[2];
			data4<=midDataQ[3];
			data5<=midDataQ[4];
			data6<=midDataQ[5];
			data7<=midDataQ[6];
			data8<=midDataQ[7];
			data9<=midDataQ[8];
			data10<=midDataQ[9];
			data11<=midDataQ[10];
			data12<=midDataQ[11];
			data13<=midDataQ[12];
			data14<=midDataQ[13];
			data15<=midDataQ[14];
			data16<=midDataQ[15];
			data17<=midDataQ[16];
			data18<=midDataQ[17];
			data19<=midDataQ[18];
			data20<=midDataQ[19];
			data21<=midDataQ[20];
			data22<=midDataQ[21];
			data23<=midDataQ[22];
			data24<=midDataQ[23];
			data25<=midDataQ[24];
			data26<=midDataQ[25];
			data27<=midDataQ[26];
			data28<=midDataQ[27];
			data29<=midDataQ[28];
			data30<=midDataQ[29];
			data31<=midDataQ[30];
			data32<=midDataQ[31];
			data33<=midDataQ[32];
			data34<=midDataQ[33];
			data35<=midDataQ[34];
			data36<=midDataQ[35];
			data37<=midDataQ[36];
			data38<=midDataQ[37];
			data39<=midDataQ[38];
			data40<=midDataQ[39];
			data41<=midDataQ[40];
			data42<=midDataQ[41];
			data43<=midDataQ[42];
			data44<=midDataQ[43];
			data45<=midDataQ[44];
			data46<=midDataQ[45];
			data47<=midDataQ[46];
			data48<=midDataQ[47];
			data49<=midDataQ[48];
			data50<=midDataQ[49];
			data51<=midDataQ[50];
			data52<=midDataQ[51];
			data53<=midDataQ[52];
			data54<=midDataQ[53];
			data55<=midDataQ[54];
			data56<=midDataQ[55];
			data57<=midDataQ[56];
			data58<=midDataQ[57];
			data59<=midDataQ[58];
			data60<=midDataQ[59];
			data61<=midDataQ[60];
			data62<=midDataQ[61];
			data63<=midDataQ[62];
			data64<=midDataQ[63];
			weight01<=weight1[0];
			weight2<=weight1[1];
			weight3<=weight1[2];
			weight4<=weight1[3];
			weight5<=weight1[4];
			weight6<=weight1[5];
			weight7<=weight1[6];
			weight8<=weight1[7];
			weight9<=weight1[8];
			weight10<=weight1[9];
			weight11<=weight1[10];
			weight12<=weight1[11];
			weight13<=weight1[12];
			weight14<=weight1[13];
			weight15<=weight1[14];
			weight16<=weight1[15];
			weight17<=weight1[16];
			weight18<=weight1[17];
			weight19<=weight1[18];
			weight20<=weight1[19];
			weight21<=weight1[20];
			weight22<=weight1[21];
			weight23<=weight1[22];
			weight24<=weight1[23];
			weight25<=weight1[24];
			weight26<=weight1[25];
			weight27<=weight1[26];
			weight28<=weight1[27];
			weight29<=weight1[28];
			weight30<=weight1[29];
			weight31<=weight1[30];
			weight32<=weight1[31];
			weight33<=weight1[32];
			weight34<=weight1[33];
			weight35<=weight1[34];
			weight36<=weight1[35];
			weight37<=weight1[36];
			weight38<=weight1[37];
			weight39<=weight1[38];
			weight40<=weight1[39];
			weight41<=weight1[40];
			weight42<=weight1[41];
			weight43<=weight1[42];
			weight44<=weight1[43];
			weight45<=weight1[44];
			weight46<=weight1[45];
			weight47<=weight1[46];
			weight48<=weight1[47];
			weight49<=weight1[48];
			weight50<=weight1[49];
			weight51<=weight1[50];
			weight52<=weight1[51];
			weight53<=weight1[52];
			weight54<=weight1[53];
			weight55<=weight1[54];
			weight56<=weight1[55];
			weight57<=weight1[56];
			weight58<=weight1[57];
			weight59<=weight1[58];
			weight60<=weight1[59];
			weight61<=weight1[60];
			weight62<=weight1[61];
			weight63<=weight1[62];
			weight64<=weight1[63];
	end
end


//Instantiations of partitioned ram blocks below

	//Input/Output SRAM Size: 16*12+48*12 = 784

	sram #(.ADDR_WIDTH(4),.SIZE(13)) input_ram0(
		.clk(clk),
		.we(we[1][0]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[0]));

	sram #(.ADDR_WIDTH(4),.SIZE(13)) input_ram1(
		.clk(clk),
		.we(we[1][1]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[1]));

	sram #(.ADDR_WIDTH(4),.SIZE(13)) input_ram2(
		.clk(clk),
		.we(we[1][2]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[2]));

	sram #(.ADDR_WIDTH(4),.SIZE(13)) input_ram3(
		.clk(clk),
		.we(we[1][3]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[3]));

	sram #(.ADDR_WIDTH(4),.SIZE(13)) input_ram4(
		.clk(clk),
		.we(we[1][4]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[4]));

	sram #(.ADDR_WIDTH(4),.SIZE(13)) input_ram5(
		.clk(clk),
		.we(we[1][5]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[5]));

	sram #(.ADDR_WIDTH(4),.SIZE(13)) input_ram6(
		.clk(clk),
		.we(we[1][6]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[6]));

	sram #(.ADDR_WIDTH(4),.SIZE(13)) input_ram7(
		.clk(clk),
		.we(we[1][7]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[7]));

	sram #(.ADDR_WIDTH(4),.SIZE(13)) input_ram8(
		.clk(clk),
		.we(we[1][8]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[8]));

	sram #(.ADDR_WIDTH(4),.SIZE(13)) input_ram9(
		.clk(clk),
		.we(we[1][9]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[9]));

	sram #(.ADDR_WIDTH(4),.SIZE(13)) input_ram10(
		.clk(clk),
		.we(we[1][10]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[10]));

	sram #(.ADDR_WIDTH(4),.SIZE(13)) input_ram11(
		.clk(clk),
		.we(we[1][11]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[11]));

	sram #(.ADDR_WIDTH(4),.SIZE(13)) input_ram12(
		.clk(clk),
		.we(we[1][12]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[12]));

	sram #(.ADDR_WIDTH(4),.SIZE(13)) input_ram13(
		.clk(clk),
		.we(we[1][13]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[13]));

	sram #(.ADDR_WIDTH(4),.SIZE(13)) input_ram14(
		.clk(clk),
		.we(we[1][14]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[14]));

	sram #(.ADDR_WIDTH(4),.SIZE(13)) input_ram15(
		.clk(clk),
		.we(we[1][15]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[15]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram16(
		.clk(clk),
		.we(we[1][16]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[16]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram17(
		.clk(clk),
		.we(we[1][17]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[17]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram18(
		.clk(clk),
		.we(we[1][18]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[18]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram19(
		.clk(clk),
		.we(we[1][19]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[19]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram20(
		.clk(clk),
		.we(we[1][20]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[20]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram21(
		.clk(clk),
		.we(we[1][21]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[21]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram22(
		.clk(clk),
		.we(we[1][22]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[22]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram23(
		.clk(clk),
		.we(we[1][23]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[23]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram24(
		.clk(clk),
		.we(we[1][24]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[24]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram25(
		.clk(clk),
		.we(we[1][25]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[25]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram26(
		.clk(clk),
		.we(we[1][26]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[26]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram27(
		.clk(clk),
		.we(we[1][27]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[27]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram28(
		.clk(clk),
		.we(we[1][28]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[28]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram29(
		.clk(clk),
		.we(we[1][29]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[29]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram30(
		.clk(clk),
		.we(we[1][30]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[30]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram31(
		.clk(clk),
		.we(we[1][31]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[31]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram32(
		.clk(clk),
		.we(we[1][32]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[32]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram33(
		.clk(clk),
		.we(we[1][33]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[33]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram34(
		.clk(clk),
		.we(we[1][34]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[34]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram35(
		.clk(clk),
		.we(we[1][35]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[35]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram36(
		.clk(clk),
		.we(we[1][36]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[36]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram37(
		.clk(clk),
		.we(we[1][37]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[37]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram38(
		.clk(clk),
		.we(we[1][38]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[38]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram39(
		.clk(clk),
		.we(we[1][39]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[39]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram40(
		.clk(clk),
		.we(we[1][40]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[40]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram41(
		.clk(clk),
		.we(we[1][41]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[41]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram42(
		.clk(clk),
		.we(we[1][42]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[42]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram43(
		.clk(clk),
		.we(we[1][43]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[43]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram44(
		.clk(clk),
		.we(we[1][44]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[44]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram45(
		.clk(clk),
		.we(we[1][45]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[45]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram46(
		.clk(clk),
		.we(we[1][46]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[46]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram47(
		.clk(clk),
		.we(we[1][47]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[47]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram48(
		.clk(clk),
		.we(we[1][48]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[48]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram49(
		.clk(clk),
		.we(we[1][49]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[49]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram50(
		.clk(clk),
		.we(we[1][50]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[50]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram51(
		.clk(clk),
		.we(we[1][51]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[51]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram52(
		.clk(clk),
		.we(we[1][52]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[52]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram53(
		.clk(clk),
		.we(we[1][53]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[53]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram54(
		.clk(clk),
		.we(we[1][54]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[54]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram55(
		.clk(clk),
		.we(we[1][55]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[55]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram56(
		.clk(clk),
		.we(we[1][56]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[56]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram57(
		.clk(clk),
		.we(we[1][57]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[57]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram58(
		.clk(clk),
		.we(we[1][58]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[58]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram59(
		.clk(clk),
		.we(we[1][59]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[59]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram60(
		.clk(clk),
		.we(we[1][60]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[60]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram61(
		.clk(clk),
		.we(we[1][61]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[61]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram62(
		.clk(clk),
		.we(we[1][62]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[62]));

	sram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram63(
		.clk(clk),
		.we(we[1][63]),
		.addr(inoutAddrQ),
		.data(wrData),
		.q(inoutDataQ[63]));

	//Intermediate SRAM (Hold Intermediate Result) Size: 8*4+56*3 = 200
	sram #(.ADDR_WIDTH(2),.SIZE(4)) mid_ram0(
			.clk(clk),
			.we(we[0][0]),
			.addr(midAddrQ),
			.data(wrData),
			.q(midDataQ[0]));

	sram #(.ADDR_WIDTH(2),.SIZE(4)) mid_ram1(
		.clk(clk),
		.we(we[0][1]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[1]));

	sram #(.ADDR_WIDTH(2),.SIZE(4)) mid_ram2(
		.clk(clk),
		.we(we[0][2]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[2]));

	sram #(.ADDR_WIDTH(2),.SIZE(4)) mid_ram3(
		.clk(clk),
		.we(we[0][3]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[3]));

	sram #(.ADDR_WIDTH(2),.SIZE(4)) mid_ram4(
		.clk(clk),
		.we(we[0][4]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[4]));

	sram #(.ADDR_WIDTH(2),.SIZE(4)) mid_ram5(
		.clk(clk),
		.we(we[0][5]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[5]));

	sram #(.ADDR_WIDTH(2),.SIZE(4)) mid_ram6(
		.clk(clk),
		.we(we[0][6]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[6]));

	sram #(.ADDR_WIDTH(2),.SIZE(4)) mid_ram7(
		.clk(clk),
		.we(we[0][7]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[7]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram8(
		.clk(clk),
		.we(we[0][8]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[8]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram9(
		.clk(clk),
		.we(we[0][9]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[9]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram10(
		.clk(clk),
		.we(we[0][10]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[10]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram11(
		.clk(clk),
		.we(we[0][11]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[11]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram12(
		.clk(clk),
		.we(we[0][12]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[12]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram13(
		.clk(clk),
		.we(we[0][13]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[13]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram14(
		.clk(clk),
		.we(we[0][14]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[14]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram15(
		.clk(clk),
		.we(we[0][15]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[15]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram16(
		.clk(clk),
		.we(we[0][16]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[16]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram17(
		.clk(clk),
		.we(we[0][17]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[17]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram18(
		.clk(clk),
		.we(we[0][18]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[18]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram19(
		.clk(clk),
		.we(we[0][19]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[19]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram20(
		.clk(clk),
		.we(we[0][20]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[20]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram21(
		.clk(clk),
		.we(we[0][21]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[21]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram22(
		.clk(clk),
		.we(we[0][22]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[22]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram23(
		.clk(clk),
		.we(we[0][23]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[23]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram24(
		.clk(clk),
		.we(we[0][24]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[24]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram25(
		.clk(clk),
		.we(we[0][25]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[25]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram26(
		.clk(clk),
		.we(we[0][26]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[26]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram27(
		.clk(clk),
		.we(we[0][27]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[27]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram28(
		.clk(clk),
		.we(we[0][28]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[28]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram29(
		.clk(clk),
		.we(we[0][29]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[29]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram30(
		.clk(clk),
		.we(we[0][30]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[30]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram31(
		.clk(clk),
		.we(we[0][31]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[31]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram32(
		.clk(clk),
		.we(we[0][32]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[32]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram33(
		.clk(clk),
		.we(we[0][33]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[33]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram34(
		.clk(clk),
		.we(we[0][34]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[34]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram35(
		.clk(clk),
		.we(we[0][35]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[35]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram36(
		.clk(clk),
		.we(we[0][36]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[36]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram37(
		.clk(clk),
		.we(we[0][37]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[37]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram38(
		.clk(clk),
		.we(we[0][38]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[38]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram39(
		.clk(clk),
		.we(we[0][39]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[39]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram40(
		.clk(clk),
		.we(we[0][40]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[40]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram41(
		.clk(clk),
		.we(we[0][41]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[41]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram42(
		.clk(clk),
		.we(we[0][42]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[42]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram43(
		.clk(clk),
		.we(we[0][43]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[43]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram44(
		.clk(clk),
		.we(we[0][44]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[44]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram45(
		.clk(clk),
		.we(we[0][45]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[45]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram46(
		.clk(clk),
		.we(we[0][46]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[46]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram47(
		.clk(clk),
		.we(we[0][47]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[47]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram48(
		.clk(clk),
		.we(we[0][48]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[48]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram49(
		.clk(clk),
		.we(we[0][49]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[49]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram50(
		.clk(clk),
		.we(we[0][50]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[50]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram51(
		.clk(clk),
		.we(we[0][51]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[51]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram52(
		.clk(clk),
		.we(we[0][52]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[52]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram53(
		.clk(clk),
		.we(we[0][53]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[53]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram54(
		.clk(clk),
		.we(we[0][54]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[54]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram55(
		.clk(clk),
		.we(we[0][55]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[55]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram56(
		.clk(clk),
		.we(we[0][56]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[56]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram57(
		.clk(clk),
		.we(we[0][57]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[57]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram58(
		.clk(clk),
		.we(we[0][58]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[58]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram59(
		.clk(clk),
		.we(we[0][59]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[59]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram60(
		.clk(clk),
		.we(we[0][60]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[60]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram61(
		.clk(clk),
		.we(we[0][61]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[61]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram62(
		.clk(clk),
		.we(we[0][62]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[62]));

	sram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram63(
		.clk(clk),
		.we(we[0][63]),
		.addr(midAddrQ),
		.data(wrData),
		.q(midDataQ[63]));

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
