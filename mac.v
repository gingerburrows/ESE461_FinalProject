module mac
(
	input clk,
	input reset,
	input [15:0] data1,
	input [15:0] data2,
	input [15:0] data3,
	input [15:0] data4,
	input [15:0] data5,
	input [15:0] data6,
	input [15:0] data7,
	input [15:0] data8,
	input [15:0] data9,
	input [15:0] data10,
	input [15:0] data11,
	input [15:0] data12,
	input [15:0] data13,
	input [15:0] data14,
	input [15:0] data15,
	input [15:0] data16,
	input [15:0] data17,
	input [15:0] data18,
	input [15:0] data19,
	input [15:0] data20,
	input [15:0] data21,
	input [15:0] data22,
	input [15:0] data23,
	input [15:0] data24,
	input [15:0] data25,
	input [15:0] data26,
	input [15:0] data27,
	input [15:0] data28,
	input [15:0] data29,
	input [15:0] data30,
	input [15:0] data31,
	input [15:0] data32,
	input [15:0] data33,
	input [15:0] data34,
	input [15:0] data35,
	input [15:0] data36,
	input [15:0] data37,
	input [15:0] data38,
	input [15:0] data39,
	input [15:0] data40,
	input [15:0] data41,
	input [15:0] data42,
	input [15:0] data43,
	input [15:0] data44,
	input [15:0] data45,
	input [15:0] data46,
	input [15:0] data47,
	input [15:0] data48,
	input [15:0] data49,
	input [15:0] data50,
	input [15:0] data51,
	input [15:0] data52,
	input [15:0] data53,
	input [15:0] data54,
	input [15:0] data55,
	input [15:0] data56,
	input [15:0] data57,
	input [15:0] data58,
	input [15:0] data59,
	input [15:0] data60,
	input [15:0] data61,
	input [15:0] data62,
	input [15:0] data63,
	input [15:0] data64,
	input [15:0] weight1,
	input [15:0] weight2,
	input [15:0] weight3,
	input [15:0] weight4,
	input [15:0] weight5,
	input [15:0] weight6,
	input [15:0] weight7,
	input [15:0] weight8,
	input [15:0] weight9,
	input [15:0] weight10,
	input [15:0] weight11,
	input [15:0] weight12,
	input [15:0] weight13,
	input [15:0] weight14,
	input [15:0] weight15,
	input [15:0] weight16,
	input [15:0] weight17,
	input [15:0] weight18,
	input [15:0] weight19,
	input [15:0] weight20,
	input [15:0] weight21,
	input [15:0] weight22,
	input [15:0] weight23,
	input [15:0] weight24,
	input [15:0] weight25,
	input [15:0] weight26,
	input [15:0] weight27,
	input [15:0] weight28,
	input [15:0] weight29,
	input [15:0] weight30,
	input [15:0] weight31,
	input [15:0] weight32,
	input [15:0] weight33,
	input [15:0] weight34,
	input [15:0] weight35,
	input [15:0] weight36,
	input [15:0] weight37,
	input [15:0] weight38,
	input [15:0] weight39,
	input [15:0] weight40,
	input [15:0] weight41,
	input [15:0] weight42,
	input [15:0] weight43,
	input [15:0] weight44,
	input [15:0] weight45,
	input [15:0] weight46,
	input [15:0] weight47,
	input [15:0] weight48,
	input [15:0] weight49,
	input [15:0] weight50,
	input [15:0] weight51,
	input [15:0] weight52,
	input [15:0] weight53,
	input [15:0] weight54,
	input [15:0] weight55,
	input [15:0] weight56,
	input [15:0] weight57,
	input [15:0] weight58,
	input [15:0] weight59,
	input [15:0] weight60,
	input [15:0] weight61,
	input [15:0] weight62,
	input [15:0] weight63,
	input [15:0] weight64,
	output reg [15:0] result
);

	reg [31 : 0] result_temp;
	reg i;

	wire [15 : 0] data[63 : 0];
	wire [15 : 0] weights[63 : 0];

	assign data[0] = data1;
	assign data[1] = data2;
	assign data[2] = data3;
	assign data[3] = data4;
	assign data[4] = data5;
	assign data[5] = data6;
	assign data[6] = data7;
	assign data[7] = data8;
	assign data[8] = data9;
	assign data[9] = data10;
	assign data[10] = data11;
	assign data[11] = data12;
	assign data[12] = data13;
	assign data[13] = data14;
	assign data[14] = data15;
	assign data[15] = data16;
	assign data[16] = data17;
	assign data[17] = data18;
	assign data[18] = data19;
	assign data[19] = data20;
	assign data[20] = data21;
	assign data[21] = data22;
	assign data[22] = data23;
	assign data[23] = data24;
	assign data[24] = data25;
	assign data[25] = data26;
	assign data[26] = data27;
	assign data[27] = data28;
	assign data[28] = data29;
	assign data[29] = data30;
	assign data[30] = data31;
	assign data[31] = data32;
	assign data[32] = data33;
	assign data[33] = data34;
	assign data[34] = data35;
	assign data[35] = data36;
	assign data[36] = data37;
	assign data[37] = data38;
	assign data[38] = data39;
	assign data[39] = data40;
	assign data[40] = data41;
	assign data[41] = data42;
	assign data[42] = data43;
	assign data[43] = data44;
	assign data[44] = data45;
	assign data[45] = data46;
	assign data[46] = data47;
	assign data[47] = data48;
	assign data[48] = data49;
	assign data[49] = data50;
	assign data[50] = data51;
	assign data[51] = data52;
	assign data[52] = data53;
	assign data[53] = data54;
	assign data[54] = data55;
	assign data[55] = data56;
	assign data[56] = data57;
	assign data[57] = data58;
	assign data[58] = data59;
	assign data[59] = data60;
	assign data[60] = data61;
	assign data[61] = data62;
	assign data[62] = data63;
	assign data[63] = data64;
	
	assign weights[0] =  weight1;
	assign weights[1] =  weight2;
	assign weights[2] =  weight3;
	assign weights[3] =  weight4;
	assign weights[4] =  weight5;
	assign weights[5] =  weight6;
	assign weights[6] =  weight7;
	assign weights[7] =  weight8;
	assign weights[8] =  weight9;
	assign weights[9] =  weight10;
	assign weights[10] =  weight11;
	assign weights[11] =  weight12;
	assign weights[12] =  weight13;
	assign weights[13] =  weight14;
	assign weights[14] =  weight15;
	assign weights[15] =  weight16;
	assign weights[16] =  weight17;
	assign weights[17] =  weight18;
	assign weights[18] =  weight19;
	assign weights[19] =  weight20;
	assign weights[20] =  weight21;
	assign weights[21] =  weight22;
	assign weights[22] =  weight23;
	assign weights[23] =  weight24;
	assign weights[24] =  weight25;
	assign weights[25] =  weight26;
	assign weights[26] =  weight27;
	assign weights[27] =  weight28;
	assign weights[28] =  weight29;
	assign weights[29] =  weight30;
	assign weights[30] =  weight31;
	assign weights[31] =  weight32;
	assign weights[32] =  weight33;
	assign weights[33] =  weight34;
	assign weights[34] =  weight35;
	assign weights[35] =  weight36;
	assign weights[36] =  weight37;
	assign weights[37] =  weight38;
	assign weights[38] =  weight39;
	assign weights[39] =  weight40;
	assign weights[40] =  weight41;
	assign weights[41] =  weight42;
	assign weights[42] =  weight43;
	assign weights[43] =  weight44;
	assign weights[44] =  weight45;
	assign weights[45] =  weight46;
	assign weights[46] =  weight47;
	assign weights[47] =  weight48;
	assign weights[48] =  weight49;
	assign weights[49] =  weight50;
	assign weights[50] =  weight51;
	assign weights[51] =  weight52;
	assign weights[52] =  weight53;
	assign weights[53] =  weight54;
	assign weights[54] =  weight55;
	assign weights[55] =  weight56;
	assign weights[56] =  weight57;
	assign weights[57] =  weight58;
	assign weights[58] =  weight59;
	assign weights[59] =  weight60;
	assign weights[60] =  weight61;
	assign weights[61] =  weight62;
	assign weights[62] =  weight63;
	assign weights[63] =  weight64;

	always@(posedge clk or posedge reset) begin
		if (reset) begin
			result_temp <= 0;
			result <= 0;
		end	
		else begin
			for(i = 0; i < 64; i = i + 1) begin
				result_temp <=  result_temp + data[i]*weights[i];
			end

			result <= result_temp[23:8];
		end
	end

endmodule






