#Input SRAM Initialization
for i in range(64):
	if i < 16:
		print('\t\tfor(i = 0; i < 13;i = i + 1) begin')
	else:
		print('\t\tfor(i = 0; i < 12;i = i + 1) begin')
	print('\t\t\tDUT.input_ram{}.ram[i] = image_in[64*i+{}];\n\t\tend\n\n'.format(str(i),str(i)))
	
#Weight SRAM 1 instantiation
for i in range(64):
	print('\t\tfor(i = 0; i < 200;i = i + 1) begin')
	if(i < 16):
		print('\t\t\tfor(j = 0; j < 13;j = j + 1) begin')
		print('\t\t\t\tDUT.weight1_sram{}.ram[13*i+j] = weight_1[64*j+{}+784*i];\n\t\t\tend\n\t\tend\n\n'.format(str(i),str(i)))
	else:
		print('\t\t\tfor(j = 0; j < 12;j = j + 1) begin')
		print('\t\t\t\tDUT.weight1_sram{}.ram[12*i+j] = weight_1[64*j+{}+784*i];\n\t\t\tend\n\t\tend\n\n'.format(str(i),str(i)))
	
#Weight SRAM 2 instantiation
for i in range(64):
	print('\t\tfor(i = 0; i < 10;i = i + 1) begin')
	if(i < 8):
		print('\t\t\tfor(j = 0; j < 4;j = j + 1) begin')
		print('\t\t\t\tDUT.weight2_sram{}.ram[4*i+j] = weight_2[64*j+{}+200*i];\n\t\t\tend\n\t\tend\n\n'.format(str(i),str(i)))
	else:
		print('\t\t\tfor(j = 0; j < 3;j = j + 1) begin')
		print('\t\t\t\tDUT.weight2_sram{}.ram[3*i+j] = weight_2[64*j+{}+200*i];\n\t\t\tend\n\t\tend\n\n'.format(str(i),str(i)))
	
	 
