module control
(
	input clk,
	input rst,
	input [15:0]psum,
	input [63:0]we,
	output [3:0]INaddr,
	output [3:0]OUTaddr,
	output [3:0]Waddr,
	output [15:0]sum	
);
reg [3:0] state;
reg [3:0] nextstate;
reg [3:0] INaddr;
reg [3:0] OUTaddr;
reg [3:0] Waddr;
reg [4:0] round;
reg [15:0] sum;
wire [15:0] out;



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
	
	sum=sum+psum;
	
	if (round % 2==0)
	begin
	case(state)
		0:begin
			if(round<20)			
				nextstate=1;
			else
				nextstate=0;
		end
		1:begin
			if (INaddr<12)									nextstate=1;
			else 
				nextstate=2;
	
		end
		2:begin
			if (OUTaddr<200)
				nextstate=1;
			else 
				nextstate=0;

		end

	endcase
	end

	else begin
	case(state)
		0:begin
			if(round<20)			
				nextstate=1;
			else
				nextstate=0;
		end
		1:begin
			if (OUTaddr<4))
				nextstate=1;
			else 
				nextstate=2;
	
		end
		2:begin
			if (INaddr<10))
				nextstate=1;
			else 
				nextstate=0;

		end

	endcase
	end

	if(round %2==0)begin
	case(state)
		0:begin
			if(round<20 && OUTaddr>0) begin
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
	else begin
	case(state)
		0:begin
			if(round<20 && INaddr>0) begin
				round=round+1;
				OUTaddr=0;
				INaddr=0;
			end			
		end
		1:begin
			OUTaddr=OUTaddr+1;
		end
		2:begin
			OUTaddr=0;
			INaddr=INaddr+1;		
		end

	endcase
	end

	we=0;
	If(round%2==0)begin
		we[OUTaddr % 64]=1;
		Waddr=OUTaddr*13+INaddr;
	end
	else
	begin
		we[INaddr % 64]=1;
		Waddr=INaddr*5+OUTaddr;
	end

end
endmodule