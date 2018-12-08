module Top(
	input clk,
	input reset	
);

reg [15:0] wrData;
reg [63:0] we [0:1];
reg [3:0]inoutAddrQ,inoutAddrD;
wire [15:0] inoutData [0:63];
genvar i;
wire clk;
wire [15:0] sum;
wire [15:0] psum;
wire [15:0] ActFout;

activation ActF(
	.in(sum),
	.out(ActFout)
);

control Control(
	.clk(clk),
	.rst(rst),
	.sum(sum),
	.psum(psum),
	.INaddr(inoutAddQ),
	.OUTaddr(midAddrQ),
	.Waddr(wAddrQ),
	.we(we[0])
);
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
wire [15:0] weight1;
wire [15:0] weight2;
wire [15:0] weight3;
wire [15:0] weight4;
wire [15:0] weight5;
wire [15:0] weight6;
wire [15:0] weight7;
wire [15:0] weight8;
wire [15:0] weight9;
wire [15:0] weight10;
wire [15:0] weight11;
wire [15:0] weight12;
wire [15:0] weight13;
wire [15:0] weight14;
wire [15:0] weight15;
wire [15:0] weight16;
wire [15:0] weight17;
wire [15:0] weight18;
wire [15:0] weight19;
wire [15:0] weight20;
wire [15:0] weight21;
wire [15:0] weight22;
wire [15:0] weight23;
wire [15:0] weight24;
wire [15:0] weight25;
wire [15:0] weight26;
wire [15:0] weight27;
wire [15:0] weight28;
wire [15:0] weight29;
wire [15:0] weight30;
wire [15:0] weight31;
wire [15:0] weight32;
wire [15:0] weight33;
wire [15:0] weight34;
wire [15:0] weight35;
wire [15:0] weight36;
wire [15:0] weight37;
wire [15:0] weight38;
wire [15:0] weight39;
wire [15:0] weight40;
wire [15:0] weight41;
wire [15:0] weight42;
wire [15:0] weight43;
wire [15:0] weight44;
wire [15:0] weight45;
wire [15:0] weight46;
wire [15:0] weight47;
wire [15:0] weight48;
wire [15:0] weight49;
wire [15:0] weight50;
wire [15:0] weight51;
wire [15:0] weight52;
wire [15:0] weight53;
wire [15:0] weight54;
wire [15:0] weight55;
wire [15:0] weight56;
wire [15:0] weight57;
wire [15:0] weight58;
wire [15:0] weight59;
wire [15:0] weight60;
wire [15:0] weight61;
wire [15:0] weight62;
wire [15:0] weight63;
wire [15:0] weight64;

module mac
(
	.clk(clk),
	.rst(rst),
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
	.weight1(weight1),
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

//test_mac MAC(
//    .rst(rst),
//    .in(InOutSram[1].ram[inoutAddQ]),
//    .weight(w1[1].wram1[wAddQ]),
//    .clk(clk),
//    .out(psum)
);
//Input/Output SRAM Size: 16*12+48*12 = 784
generate
	for(i = 0; i < 64; i = i + 1) begin : InOutSram
		sram #(.ADDR_WIDTH(4),.SIZE(i < 16 ? 13:12)) ram(
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
		sram #(.ADDR_WIDTH(12),.SIZE(i<16 ? 2600 : 2400)) wram1(
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
		sram #(.ADDR_WIDTH(6),.SIZE(i <8 ? 40:30)) wram2(
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
			.data(ActFout),
			.q(midData[i])
	);
	end
endgenerate


endmodule