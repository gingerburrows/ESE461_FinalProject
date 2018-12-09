#Input SRAM instantiation
for i in range(64):
	if(i < 16):
		print('\tsram #(.ADDR_WIDTH(4),.SIZE(13)) input_ram{}('.format(str(i)))
	else:
		print('\tsram #(.ADDR_WIDTH(4),.SIZE(12)) input_ram{}('.format(str(i)))
	
	print('\t\t.clk(clk),')
	print('\t\t.we(we[1][{}]),'.format(str(i)))
	print('\t\t.addr(inoutAddrQ),')
	print('\t\t.data(wrData),')
	print('\t\t.q(inoutData[{}]));\n'.format(str(i)))
	
#Intermediate SRAM instantiation	
for i in range(64):
	if(i < 8):
		print('\tsram #(.ADDR_WIDTH(2),.SIZE(4)) mid_ram{}('.format(str(i)))
	else:
		print('\tsram #(.ADDR_WIDTH(2),.SIZE(3)) mid_ram{}('.format(str(i)))
	
	print('\t\t.clk(clk),')
	print('\t\t.we(we[0][{}]),'.format(str(i)))
	print('\t\t.addr(midAddrQ),')
	print('\t\t.data(wrData),')
	print('\t\t.q(midData[{}]));\n'.format(str(i)))
	
	
#Weight SRAM 1 instantiation
for i in range(64):
	if(i < 16):
		print('\tsram #(.ADDR_WIDTH(12),.SIZE(2600)) weight1_sram{}('.format(str(i)))
	else:
		print('\tsram #(.ADDR_WIDTH(12),.SIZE(2400)) weight1_sram{}('.format(str(i)))
	
	print('\t\t.clk(clk),')
	print('\t\t.we(0),')
	print('\t\t.addr(wAddrQ),')
	print('\t\t.data(0),')
	print('\t\t.q(weight0[{}]));\n'.format(str(i)))

#Weight SRAM 2 instantiation
for i in range(64):
	if(i < 8):
		print('\tsram #(.ADDR_WIDTH(6),.SIZE(40)) weight2_sram{}('.format(str(i)))
	else:
		print('\tsram #(.ADDR_WIDTH(6),.SIZE(30)) weight2_sram{}('.format(str(i)))
	
	print('\t\t.clk(clk),')
	print('\t\t.we(0),')
	print('\t\t.addr(wAddrQ[5:0]),')
	print('\t\t.data(0),')
	print('\t\t.q(weight1[{}]));\n'.format(str(i)))
	
	
	
