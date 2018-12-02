module mac
(
	input clk,
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
	input [15:0] weight,
	output reg [15:0] out1,
	output reg [15:0] out2,
	output reg [15:0] out3,
	output reg [15:0] out4,
	output reg [15:0] out5,
	output reg [15:0] out6,
	output reg [15:0] out7,
	output reg [15:0] out8,
	output reg [15:0] out9,
	output reg [15:0] out10,
	output reg [15:0] out11,
	output reg [15:0] out12,
	output reg [15:0] out13,
	output reg [15:0] out14,
	output reg [15:0] out15,
	output reg [15:0] out16,
	output reg [15:0] out17,
	output reg [15:0] out18,
	output reg [15:0] out19,
	output reg [15:0] out20,
	output reg [15:0] out21,
	output reg [15:0] out22,
	output reg [15:0] out23,
	output reg [15:0] out24,
	output reg [15:0] out25,
	output reg [15:0] out26,
	output reg [15:0] out27,
	output reg [15:0] out28,
	output reg [15:0] out29,
	output reg [15:0] out30,
	output reg [15:0] out31,
	output reg [15:0] out32,
	output reg [15:0] out33,
	output reg [15:0] out34,
	output reg [15:0] out35,
	output reg [15:0] out36,
	output reg [15:0] out37,
	output reg [15:0] out38,
	output reg [15:0] out39,
	output reg [15:0] out40,
	output reg [15:0] out41,
	output reg [15:0] out42,
	output reg [15:0] out43,
	output reg [15:0] out44,
	output reg [15:0] out45,
	output reg [15:0] out46,
	output reg [15:0] out47,
	output reg [15:0] out48,
	output reg [15:0] out49,
	output reg [15:0] out50,
	output reg [15:0] out51,
	output reg [15:0] out52,
	output reg [15:0] out53,
	output reg [15:0] out54,
	output reg [15:0] out55,
	output reg [15:0] out56,
	output reg [15:0] out57,
	output reg [15:0] out58,
	output reg [15:0] out59,
	output reg [15:0] out60,
	output reg [15:0] out61,
	output reg [15:0] out62,
	output reg [15:0] out63,
	output reg [15:0] out64
);

	function [15:0] trunc_32_to_16(input [31:0] val32);
  		trunc_32_to_16 = val32[23:8];
	endfunction

	always@(posedge clk) begin
		out1 <= trunc_32_to_16(data1*weight);
		out2 <= trunc_32_to_16(data2*weight);
		out3 <= trunc_32_to_16(data3*weight);
		out4 <= trunc_32_to_16(data4*weight);
		out5 <= trunc_32_to_16(data5*weight);
		out6 <= trunc_32_to_16(data6*weight);
		out7 <= trunc_32_to_16(data7*weight);
		out8 <= trunc_32_to_16(data8*weight);
		out9 <= trunc_32_to_16(data9*weight);
		out10 <= trunc_32_to_16(data10*weight);
		out11 <= trunc_32_to_16(data11*weight);
		out12 <= trunc_32_to_16(data12*weight);
		out13 <= trunc_32_to_16(data13*weight);
		out14 <= trunc_32_to_16(data14*weight);
		out15 <= trunc_32_to_16(data15*weight);
		out16 <= trunc_32_to_16(data16*weight);
		out17 <= trunc_32_to_16(data17*weight);
		out18 <= trunc_32_to_16(data18*weight);
		out19 <= trunc_32_to_16(data19*weight);
		out20 <= trunc_32_to_16(data20*weight);
		out21 <= trunc_32_to_16(data21*weight);
		out22 <= trunc_32_to_16(data22*weight);
		out23 <= trunc_32_to_16(data23*weight);
		out24 <= trunc_32_to_16(data24*weight);
		out25 <= trunc_32_to_16(data25*weight);
		out26 <= trunc_32_to_16(data26*weight);
		out27 <= trunc_32_to_16(data27*weight);
		out28 <= trunc_32_to_16(data28*weight);
		out29 <= trunc_32_to_16(data29*weight);
		out30 <= trunc_32_to_16(data30*weight);
		out31 <= trunc_32_to_16(data31*weight);
		out32 <= trunc_32_to_16(data32*weight);
		out33 <= trunc_32_to_16(data33*weight);
		out34 <= trunc_32_to_16(data34*weight);
		out35 <= trunc_32_to_16(data35*weight);
		out36 <= trunc_32_to_16(data36*weight);
		out37 <= trunc_32_to_16(data37*weight);
		out38 <= trunc_32_to_16(data38*weight);
		out39 <= trunc_32_to_16(data39*weight);
		out40 <= trunc_32_to_16(data40*weight);
		out41 <= trunc_32_to_16(data41*weight);
		out42 <= trunc_32_to_16(data42*weight);
		out43 <= trunc_32_to_16(data43*weight);
		out44 <= trunc_32_to_16(data44*weight);
		out45 <= trunc_32_to_16(data45*weight);
		out46 <= trunc_32_to_16(data46*weight);
		out47 <= trunc_32_to_16(data47*weight);
		out48 <= trunc_32_to_16(data48*weight);
		out49 <= trunc_32_to_16(data49*weight);
		out50 <= trunc_32_to_16(data50*weight);
		out51 <= trunc_32_to_16(data51*weight);
		out52 <= trunc_32_to_16(data52*weight);
		out53 <= trunc_32_to_16(data53*weight);
		out54 <= trunc_32_to_16(data54*weight);
		out55 <= trunc_32_to_16(data55*weight);
		out56 <= trunc_32_to_16(data56*weight);
		out57 <= trunc_32_to_16(data57*weight);
		out58 <= trunc_32_to_16(data58*weight);
		out59 <= trunc_32_to_16(data59*weight);
		out60 <= trunc_32_to_16(data60*weight);
		out61 <= trunc_32_to_16(data61*weight);
		out62 <= trunc_32_to_16(data62*weight);
		out63 <= trunc_32_to_16(data63*weight);
		out64 <= trunc_32_to_16(data64*weight);
	end
endmodule





