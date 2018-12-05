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

	reg [31 : 0] psums[63 : 0];
	reg [31 : 0] result_temp;
	reg i;

	//function [15:0] trunc_32_to_16(input [31:0] val32);
  		//trunc_32_to_16 = val32[23:8];
	//endfunction

	always@(posedge clk or posedge reset) begin
		if (reset) begin
			for(i = 0; i < 64; i = i + 1) begin
				psums[i] <= 0;
			end
			result_temp <= 0;
			result <= 0;
		end	
		else begin
			psums[0] <= data1 * weight1;
			psums[1] <= data2 * weight2;
			psums[2] <= data3 * weight3;
			psums[3] <= data4 * weight4;
			psums[4] <= data5 * weight5;
			psums[5] <= data6 * weight6;
			psums[6] <= data7 * weight7;
			psums[7] <= data8 * weight8;
			psums[8] <= data9 * weight9;
			psums[9] <= data10 * weight10;
			psums[10] <= data11 * weight11;
			psums[11] <= data12 * weight12;
			psums[12] <= data13 * weight13;
			psums[13] <= data14 * weight14;
			psums[14] <= data15 * weight15;
			psums[15] <= data16 * weight16;
			psums[16] <= data17 * weight17;
			psums[17] <= data18 * weight18;
			psums[18] <= data19 * weight19;
			psums[19] <= data20 * weight20;
			psums[20] <= data21 * weight21;
			psums[21] <= data22 * weight22;
			psums[22] <= data23 * weight23;
			psums[23] <= data24 * weight24;
			psums[24] <= data25 * weight25;
			psums[25] <= data26 * weight26;
			psums[26] <= data27 * weight27;
			psums[27] <= data28 * weight28;
			psums[28] <= data29 * weight29;
			psums[29] <= data30 * weight30;
			psums[30] <= data31 * weight31;
			psums[31] <= data32 * weight32;
			psums[32] <= data33 * weight33;
			psums[33] <= data34 * weight34;
			psums[34] <= data35 * weight35;
			psums[35] <= data36 * weight36;
			psums[36] <= data37 * weight37;
			psums[37] <= data38 * weight38;
			psums[38] <= data39 * weight39;
			psums[39] <= data40 * weight40;
			psums[40] <= data41 * weight41;
			psums[41] <= data42 * weight42;
			psums[42] <= data43 * weight43;
			psums[43] <= data44 * weight44;
			psums[44] <= data45 * weight45;
			psums[45] <= data46 * weight46;
			psums[46] <= data47 * weight47;
			psums[47] <= data48 * weight48;
			psums[48] <= data49 * weight49;
			psums[49] <= data50 * weight50;
			psums[50] <= data51 * weight51;
			psums[51] <= data52 * weight52;
			psums[52] <= data53 * weight53;
			psums[53] <= data54 * weight54;
			psums[54] <= data55 * weight55;
			psums[55] <= data56 * weight56;
			psums[56] <= data57 * weight57;
			psums[57] <= data58 * weight58;
			psums[58] <= data59 * weight59;
			psums[59] <= data60 * weight60;
			psums[60] <= data61 * weight61;
			psums[61] <= data62 * weight62;
			psums[62] <= data63 * weight63;
			psums[63] <= data64 * weight64;
		
			for(i = 0; i < 64; i = i + 1) begin
				result_temp <=  result_temp + psums[i];
			end

			result <= result_temp[23:8];
		end
	end

endmodule





