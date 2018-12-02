module control
(
	input clk,
	input rst,
	output [3:0]INaddr,
	output [3:0]OUTaddr,
	output [3:0]Waddr	
);
reg [3:0] state;
reg [3:0] nextstate;
reg [3:0] INaddr;
reg [3:0] OUTaddr;
reg [3:0] Waddr;
reg [1:0] round;
reg [15:0] sum;
wire [15:0] out;

activation ActF(
	.in(sum),
	.out(out)
);

template SRAM(
	.clk(clk)
);


initial 
begin
	state=0;
	nextstate=0;
	INaddr=0;
	OUTaddr=0;
	Waddr=0;
	round=0;
end


always@(posedge clk)
begin
	if(rst==1) 
		state=0;
	else
		state=nextstate;
	
	sum=INaddr*1000;

	case(state)
		0:begin
			if(round<2)			
				nextstate=1;
			else
				nextstate=0;
		end
		1:begin
			if ((round==0 && INaddr<12)||(round==1 && INaddr<4))
				nextstate=1;
			else 
				nextstate=2;
	
		end
		2:begin
			if ((round==0 && OUTaddr<5)||(round==1 && OUTaddr<2))
				nextstate=1;
			else 
				nextstate=0;

		end

	endcase

	case(state)
		0:begin
			if(round<2 && OUTaddr>0) begin
				round=round+1;
				OUTaddr=0;
				INaddr=0;
			end			
		end
		1:begin
			INaddr=INaddr+1;
		end
		2:begin
			INaddr=0;
			OUTaddr=OUTaddr+1;		
		end

	endcase	
end
endmodule