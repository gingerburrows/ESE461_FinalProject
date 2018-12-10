`timescale 1ns / 1ps
module top_tb();
	
	localparam CLK_PERIOD = 100;
	localparam testImage = "test_image1_fix.txt";
	reg clk,rst;
	integer i,j;
	
	Top DUT(
		.clk(clk),
		.reset(rst)
	);
	
	//Generate clock
	always begin
		#(CLK_PERIOD/2) clk = ~clk;
	end
	
	
	reg [15:0] image_in [0:783];
	reg [15:0] weight_1 [0:156799];
	reg [15:0] weight_2 [0:1999];


	initial begin
		$dumpfile("top.vcd");
        $dumpvars(0, top_tb);
		
		$readmemb(testImage,image_in);
		$readmemb("layer1_weight.txt",weight_1);
		$readmemb("layer2_weight.txt",weight_2);
		
		//Initialize Input SRAM
		for(i = 0; i < 13;i = i + 1) begin
			DUT.input_ram0.ram[i] = image_in[64*i+0];
		end


		for(i = 0; i < 13;i = i + 1) begin
			DUT.input_ram1.ram[i] = image_in[64*i+1];
		end


		for(i = 0; i < 13;i = i + 1) begin
			DUT.input_ram2.ram[i] = image_in[64*i+2];
		end


		for(i = 0; i < 13;i = i + 1) begin
			DUT.input_ram3.ram[i] = image_in[64*i+3];
		end


		for(i = 0; i < 13;i = i + 1) begin
			DUT.input_ram4.ram[i] = image_in[64*i+4];
		end


		for(i = 0; i < 13;i = i + 1) begin
			DUT.input_ram5.ram[i] = image_in[64*i+5];
		end


		for(i = 0; i < 13;i = i + 1) begin
			DUT.input_ram6.ram[i] = image_in[64*i+6];
		end


		for(i = 0; i < 13;i = i + 1) begin
			DUT.input_ram7.ram[i] = image_in[64*i+7];
		end


		for(i = 0; i < 13;i = i + 1) begin
			DUT.input_ram8.ram[i] = image_in[64*i+8];
		end


		for(i = 0; i < 13;i = i + 1) begin
			DUT.input_ram9.ram[i] = image_in[64*i+9];
		end


		for(i = 0; i < 13;i = i + 1) begin
			DUT.input_ram10.ram[i] = image_in[64*i+10];
		end


		for(i = 0; i < 13;i = i + 1) begin
			DUT.input_ram11.ram[i] = image_in[64*i+11];
		end


		for(i = 0; i < 13;i = i + 1) begin
			DUT.input_ram12.ram[i] = image_in[64*i+12];
		end


		for(i = 0; i < 13;i = i + 1) begin
			DUT.input_ram13.ram[i] = image_in[64*i+13];
		end


		for(i = 0; i < 13;i = i + 1) begin
			DUT.input_ram14.ram[i] = image_in[64*i+14];
		end


		for(i = 0; i < 13;i = i + 1) begin
			DUT.input_ram15.ram[i] = image_in[64*i+15];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram16.ram[i] = image_in[64*i+16];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram17.ram[i] = image_in[64*i+17];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram18.ram[i] = image_in[64*i+18];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram19.ram[i] = image_in[64*i+19];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram20.ram[i] = image_in[64*i+20];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram21.ram[i] = image_in[64*i+21];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram22.ram[i] = image_in[64*i+22];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram23.ram[i] = image_in[64*i+23];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram24.ram[i] = image_in[64*i+24];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram25.ram[i] = image_in[64*i+25];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram26.ram[i] = image_in[64*i+26];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram27.ram[i] = image_in[64*i+27];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram28.ram[i] = image_in[64*i+28];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram29.ram[i] = image_in[64*i+29];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram30.ram[i] = image_in[64*i+30];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram31.ram[i] = image_in[64*i+31];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram32.ram[i] = image_in[64*i+32];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram33.ram[i] = image_in[64*i+33];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram34.ram[i] = image_in[64*i+34];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram35.ram[i] = image_in[64*i+35];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram36.ram[i] = image_in[64*i+36];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram37.ram[i] = image_in[64*i+37];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram38.ram[i] = image_in[64*i+38];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram39.ram[i] = image_in[64*i+39];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram40.ram[i] = image_in[64*i+40];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram41.ram[i] = image_in[64*i+41];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram42.ram[i] = image_in[64*i+42];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram43.ram[i] = image_in[64*i+43];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram44.ram[i] = image_in[64*i+44];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram45.ram[i] = image_in[64*i+45];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram46.ram[i] = image_in[64*i+46];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram47.ram[i] = image_in[64*i+47];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram48.ram[i] = image_in[64*i+48];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram49.ram[i] = image_in[64*i+49];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram50.ram[i] = image_in[64*i+50];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram51.ram[i] = image_in[64*i+51];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram52.ram[i] = image_in[64*i+52];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram53.ram[i] = image_in[64*i+53];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram54.ram[i] = image_in[64*i+54];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram55.ram[i] = image_in[64*i+55];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram56.ram[i] = image_in[64*i+56];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram57.ram[i] = image_in[64*i+57];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram58.ram[i] = image_in[64*i+58];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram59.ram[i] = image_in[64*i+59];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram60.ram[i] = image_in[64*i+60];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram61.ram[i] = image_in[64*i+61];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram62.ram[i] = image_in[64*i+62];
		end


		for(i = 0; i < 12;i = i + 1) begin
			DUT.input_ram63.ram[i] = image_in[64*i+63];
		end
		
		//Initialize weight SRAMs
		
		//Weight Matrix 1
		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 13;j = j + 1) begin
				DUT.weight1_sram0.ram[13*i+j] = weight_1[64*j+0+784*i];
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 13;j = j + 1) begin
				DUT.weight1_sram1.ram[13*i+j] = weight_1[64*j+1+784*i];
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 13;j = j + 1) begin
				DUT.weight1_sram2.ram[13*i+j] = weight_1[64*j+2+784*i];
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 13;j = j + 1) begin
				DUT.weight1_sram3.ram[13*i+j] = weight_1[64*j+3+784*i];
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 13;j = j + 1) begin
				DUT.weight1_sram4.ram[13*i+j] = weight_1[64*j+4+784*i];
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 13;j = j + 1) begin
				DUT.weight1_sram5.ram[13*i+j] = weight_1[64*j+5+784*i];
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 13;j = j + 1) begin
				DUT.weight1_sram6.ram[13*i+j] = weight_1[64*j+6+784*i];
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 13;j = j + 1) begin
				DUT.weight1_sram7.ram[13*i+j] = weight_1[64*j+7+784*i];
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 13;j = j + 1) begin
				DUT.weight1_sram8.ram[13*i+j] = weight_1[64*j+8+784*i];
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 13;j = j + 1) begin
				DUT.weight1_sram9.ram[13*i+j] = weight_1[64*j+9+784*i];
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 13;j = j + 1) begin
				DUT.weight1_sram10.ram[13*i+j] = weight_1[64*j+10+784*i];
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 13;j = j + 1) begin
				DUT.weight1_sram11.ram[13*i+j] = weight_1[64*j+11+784*i];
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 13;j = j + 1) begin
				DUT.weight1_sram12.ram[13*i+j] = weight_1[64*j+12+784*i];
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 13;j = j + 1) begin
				DUT.weight1_sram13.ram[13*i+j] = weight_1[64*j+13+784*i];
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 13;j = j + 1) begin
				DUT.weight1_sram14.ram[13*i+j] = weight_1[64*j+14+784*i];
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 13;j = j + 1) begin
				DUT.weight1_sram15.ram[13*i+j] = weight_1[64*j+15+784*i];
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram16.ram[13*i+j] = weight_1[64*j+16+784*i];
				DUT.weight1_sram16.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram17.ram[13*i+j] = weight_1[64*j+17+784*i];
				DUT.weight1_sram17.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram18.ram[13*i+j] = weight_1[64*j+18+784*i];
				DUT.weight1_sram18.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram19.ram[13*i+j] = weight_1[64*j+19+784*i];
				DUT.weight1_sram19.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram20.ram[13*i+j] = weight_1[64*j+20+784*i];
				DUT.weight1_sram20.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram21.ram[13*i+j] = weight_1[64*j+21+784*i];
				DUT.weight1_sram21.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram22.ram[13*i+j] = weight_1[64*j+22+784*i];
				DUT.weight1_sram22.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram23.ram[13*i+j] = weight_1[64*j+23+784*i];
				DUT.weight1_sram23.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram24.ram[13*i+j] = weight_1[64*j+24+784*i];
				DUT.weight1_sram24.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram25.ram[13*i+j] = weight_1[64*j+25+784*i];
				DUT.weight1_sram25.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram26.ram[13*i+j] = weight_1[64*j+26+784*i];
				DUT.weight1_sram26.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram27.ram[13*i+j] = weight_1[64*j+27+784*i];
				DUT.weight1_sram27.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram28.ram[13*i+j] = weight_1[64*j+28+784*i];
				DUT.weight1_sram28.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram29.ram[13*i+j] = weight_1[64*j+29+784*i];
				DUT.weight1_sram29.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram30.ram[13*i+j] = weight_1[64*j+30+784*i];
				DUT.weight1_sram30.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram31.ram[13*i+j] = weight_1[64*j+31+784*i];
				DUT.weight1_sram31.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram32.ram[13*i+j] = weight_1[64*j+32+784*i];
				DUT.weight1_sram32.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram33.ram[13*i+j] = weight_1[64*j+33+784*i];
				DUT.weight1_sram33.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram34.ram[13*i+j] = weight_1[64*j+34+784*i];
				DUT.weight1_sram34.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram35.ram[13*i+j] = weight_1[64*j+35+784*i];
				DUT.weight1_sram35.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram36.ram[13*i+j] = weight_1[64*j+36+784*i];
				DUT.weight1_sram36.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram37.ram[13*i+j] = weight_1[64*j+37+784*i];
				DUT.weight1_sram37.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram38.ram[13*i+j] = weight_1[64*j+38+784*i];
				DUT.weight1_sram38.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram39.ram[13*i+j] = weight_1[64*j+39+784*i];
				DUT.weight1_sram39.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram40.ram[13*i+j] = weight_1[64*j+40+784*i];
				DUT.weight1_sram40.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram41.ram[13*i+j] = weight_1[64*j+41+784*i];
				DUT.weight1_sram41.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram42.ram[13*i+j] = weight_1[64*j+42+784*i];
				DUT.weight1_sram42.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram43.ram[13*i+j] = weight_1[64*j+43+784*i];
				DUT.weight1_sram43.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram44.ram[13*i+j] = weight_1[64*j+44+784*i];
				DUT.weight1_sram44.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram45.ram[13*i+j] = weight_1[64*j+45+784*i];
				DUT.weight1_sram45.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram46.ram[13*i+j] = weight_1[64*j+46+784*i];
				DUT.weight1_sram46.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram47.ram[13*i+j] = weight_1[64*j+47+784*i];
				DUT.weight1_sram47.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram48.ram[13*i+j] = weight_1[64*j+48+784*i];
				DUT.weight1_sram48.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram49.ram[13*i+j] = weight_1[64*j+49+784*i];
				DUT.weight1_sram49.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram50.ram[13*i+j] = weight_1[64*j+50+784*i];
				DUT.weight1_sram50.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram51.ram[13*i+j] = weight_1[64*j+51+784*i];
				DUT.weight1_sram51.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram52.ram[13*i+j] = weight_1[64*j+52+784*i];
				DUT.weight1_sram52.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram53.ram[13*i+j] = weight_1[64*j+53+784*i];
				DUT.weight1_sram53.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram54.ram[13*i+j] = weight_1[64*j+54+784*i];
				DUT.weight1_sram54.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram55.ram[13*i+j] = weight_1[64*j+55+784*i];
				DUT.weight1_sram55.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram56.ram[13*i+j] = weight_1[64*j+56+784*i];
				DUT.weight1_sram56.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram57.ram[13*i+j] = weight_1[64*j+57+784*i];
				DUT.weight1_sram57.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram58.ram[13*i+j] = weight_1[64*j+58+784*i];
				DUT.weight1_sram58.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram59.ram[13*i+j] = weight_1[64*j+59+784*i];
				DUT.weight1_sram59.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram60.ram[13*i+j] = weight_1[64*j+60+784*i];
				DUT.weight1_sram60.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram61.ram[13*i+j] = weight_1[64*j+61+784*i];
				DUT.weight1_sram61.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram62.ram[13*i+j] = weight_1[64*j+62+784*i];
				DUT.weight1_sram62.ram[13*i+12] = 16'b0;
			end
		end


		for(i = 0; i < 200;i = i + 1) begin
			for(j = 0; j < 12;j = j + 1) begin
				DUT.weight1_sram63.ram[13*i+j] = weight_1[64*j+63+784*i];
				DUT.weight1_sram63.ram[13*i+12] = 16'b0;
			end
		end
		
		//Weight Matrix 2
		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 4;j = j + 1) begin
				DUT.weight2_sram0.ram[4*i+j] = weight_2[64*j+0+200*i];
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 4;j = j + 1) begin
				DUT.weight2_sram1.ram[4*i+j] = weight_2[64*j+1+200*i];
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 4;j = j + 1) begin
				DUT.weight2_sram2.ram[4*i+j] = weight_2[64*j+2+200*i];
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 4;j = j + 1) begin
				DUT.weight2_sram3.ram[4*i+j] = weight_2[64*j+3+200*i];
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 4;j = j + 1) begin
				DUT.weight2_sram4.ram[4*i+j] = weight_2[64*j+4+200*i];
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 4;j = j + 1) begin
				DUT.weight2_sram5.ram[4*i+j] = weight_2[64*j+5+200*i];
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 4;j = j + 1) begin
				DUT.weight2_sram6.ram[4*i+j] = weight_2[64*j+6+200*i];
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 4;j = j + 1) begin
				DUT.weight2_sram7.ram[4*i+j] = weight_2[64*j+7+200*i];
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram8.ram[4*i+j] = weight_2[64*j+8+200*i];
				DUT.weight2_sram8.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram9.ram[4*i+j] = weight_2[64*j+9+200*i];
				DUT.weight2_sram9.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram10.ram[4*i+j] = weight_2[64*j+10+200*i];
				DUT.weight2_sram10.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram11.ram[4*i+j] = weight_2[64*j+11+200*i];
				DUT.weight2_sram11.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram12.ram[4*i+j] = weight_2[64*j+12+200*i];
				DUT.weight2_sram12.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram13.ram[4*i+j] = weight_2[64*j+13+200*i];
				DUT.weight2_sram13.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram14.ram[4*i+j] = weight_2[64*j+14+200*i];
				DUT.weight2_sram14.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram15.ram[4*i+j] = weight_2[64*j+15+200*i];
				DUT.weight2_sram15.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram16.ram[4*i+j] = weight_2[64*j+16+200*i];
				DUT.weight2_sram16.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram17.ram[4*i+j] = weight_2[64*j+17+200*i];
				DUT.weight2_sram17.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram18.ram[4*i+j] = weight_2[64*j+18+200*i];
				DUT.weight2_sram18.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram19.ram[4*i+j] = weight_2[64*j+19+200*i];
				DUT.weight2_sram19.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram20.ram[4*i+j] = weight_2[64*j+20+200*i];
				DUT.weight2_sram20.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram21.ram[4*i+j] = weight_2[64*j+21+200*i];
				DUT.weight2_sram21.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram22.ram[4*i+j] = weight_2[64*j+22+200*i];
				DUT.weight2_sram22.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram23.ram[4*i+j] = weight_2[64*j+23+200*i];
				DUT.weight2_sram23.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram24.ram[4*i+j] = weight_2[64*j+24+200*i];
				DUT.weight2_sram24.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram25.ram[4*i+j] = weight_2[64*j+25+200*i];
				DUT.weight2_sram25.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram26.ram[4*i+j] = weight_2[64*j+26+200*i];
				DUT.weight2_sram26.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram27.ram[4*i+j] = weight_2[64*j+27+200*i];
				DUT.weight2_sram27.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram28.ram[4*i+j] = weight_2[64*j+28+200*i];
				DUT.weight2_sram28.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram29.ram[4*i+j] = weight_2[64*j+29+200*i];
				DUT.weight2_sram29.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram30.ram[4*i+j] = weight_2[64*j+30+200*i];
				DUT.weight2_sram30.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram31.ram[4*i+j] = weight_2[64*j+31+200*i];
				DUT.weight2_sram31.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram32.ram[4*i+j] = weight_2[64*j+32+200*i];
				DUT.weight2_sram32.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram33.ram[4*i+j] = weight_2[64*j+33+200*i];
				DUT.weight2_sram33.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram34.ram[4*i+j] = weight_2[64*j+34+200*i];
				DUT.weight2_sram34.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram35.ram[4*i+j] = weight_2[64*j+35+200*i];
				DUT.weight2_sram35.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram36.ram[4*i+j] = weight_2[64*j+36+200*i];
				DUT.weight2_sram36.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram37.ram[4*i+j] = weight_2[64*j+37+200*i];
				DUT.weight2_sram37.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram38.ram[4*i+j] = weight_2[64*j+38+200*i];
				DUT.weight2_sram38.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram39.ram[4*i+j] = weight_2[64*j+39+200*i];
				DUT.weight2_sram39.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram40.ram[4*i+j] = weight_2[64*j+40+200*i];
				DUT.weight2_sram40.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram41.ram[4*i+j] = weight_2[64*j+41+200*i];
				DUT.weight2_sram41.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram42.ram[4*i+j] = weight_2[64*j+42+200*i];
				DUT.weight2_sram42.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram43.ram[4*i+j] = weight_2[64*j+43+200*i];
				DUT.weight2_sram43.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram44.ram[4*i+j] = weight_2[64*j+44+200*i];
				DUT.weight2_sram44.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram45.ram[4*i+j] = weight_2[64*j+45+200*i];
				DUT.weight2_sram45.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram46.ram[4*i+j] = weight_2[64*j+46+200*i];
				DUT.weight2_sram46.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram47.ram[4*i+j] = weight_2[64*j+47+200*i];
				DUT.weight2_sram47.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram48.ram[4*i+j] = weight_2[64*j+48+200*i];
				DUT.weight2_sram48.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram49.ram[4*i+j] = weight_2[64*j+49+200*i];
				DUT.weight2_sram49.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram50.ram[4*i+j] = weight_2[64*j+50+200*i];
				DUT.weight2_sram50.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram51.ram[4*i+j] = weight_2[64*j+51+200*i];
				DUT.weight2_sram51.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram52.ram[4*i+j] = weight_2[64*j+52+200*i];
				DUT.weight2_sram52.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram53.ram[4*i+j] = weight_2[64*j+53+200*i];
				DUT.weight2_sram53.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram54.ram[4*i+j] = weight_2[64*j+54+200*i];
				DUT.weight2_sram54.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram55.ram[4*i+j] = weight_2[64*j+55+200*i];
				DUT.weight2_sram55.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram56.ram[4*i+j] = weight_2[64*j+56+200*i];
				DUT.weight2_sram56.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram57.ram[4*i+j] = weight_2[64*j+57+200*i];
				DUT.weight2_sram57.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram58.ram[4*i+j] = weight_2[64*j+58+200*i];
				DUT.weight2_sram58.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram59.ram[4*i+j] = weight_2[64*j+59+200*i];
				DUT.weight2_sram59.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram60.ram[4*i+j] = weight_2[64*j+60+200*i];
				DUT.weight2_sram60.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram61.ram[4*i+j] = weight_2[64*j+61+200*i];
				DUT.weight2_sram61.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram62.ram[4*i+j] = weight_2[64*j+62+200*i];
				DUT.weight2_sram62.ram[4*i+3] = 16'b0;
			end
		end


		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 3;j = j + 1) begin
				DUT.weight2_sram63.ram[4*i+j] = weight_2[64*j+63+200*i];
				DUT.weight2_sram63.ram[4*i+3] = 16'b0;
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
