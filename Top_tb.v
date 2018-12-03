`timescale 1ns / 1ps
module top_tb();
	
	localparam CLK_PERIOD = 100;
	localparam testImage = "test_image1_fix.txt";
	reg clk,rst;
	integer i,j,k;
	
	Top DUT(
		.CLK(clk),
		.Reset(rst)
	};
	
	//Generate clock
	always begin
		#(CLK_PERIOD/2) clk = ~clk;
	end
	
	
	reg [15:0] image_in [0:783];
	reg [15:0] weight_1 [0:15799];
	reg [15:0] weight_2 [0:1999];

	initial begin
		$dumpfile("top.vcd");
        $dumpvars(0, top_tb);
		
		$readmemb(testImage,image_in);
		$readmemb("layer1_weight.txt",weight_1);
		$readmemb("layer2_weight.txt",weight_2);
		
		//Initialize Input SRAM
		for(i = 0; i < 64;i=i+1) begin
			for(j = 0; j < (i < 16 ? 13:12);j = j + 1) begin
				DUT.InOutSram[i].ram[j] = image_in[64*j+i];
			end
		end
		
		//Initialize weight SRAMs
		
		//Weight Matrix 1
		for(k = 0; k < 200;k = k +1) begin
			for(i = 0; i <64;i=i+1) begin
				for(j = 0;j<(i<16 ? 13 : 12);j = j+1) begin
					if(i < 16) begin
						DUT.w1[i].ram[13*k+j] = weight_1[64*j+i+784*k];
					end else begin
						DUT.w1[i].ram[12*k+j] = weight_1[64*j+i+784*k];
					end
				end
			end
		end
		
		//Weight Matrix 2
		for(k = 0; k < 10;k = k +1) begin
			for(i = 0; i <64;i=i+1) begin
				for(j = 0;j<(i<8 ? 4 : 3);j = j+1) begin
					if(i < 8) begin
						DUT.w2[i].ram[4*k+j] = weight_1[64*j+i+200*k];
					end else begin
						DUT.w2[i].ram[3*k+j] = weight_1[64*j+i+200*k];
					end
				end
			end
		end
		
		
		rst = 1;
		clk = 0;
		#(CLK_PERIOD*2)
		rst = 0;		
		#(CLK_PERIOD*50000)
		$finish;
	end
	
	
endmodule