`timescale 1ns / 1ps
module control
(
	input clk,
	input rst,
	output [63:0]we,
	output [3:0]INaddr,
	output [1:0]OUTaddr,
	output [11:0]Waddr,
	output [4:0]round,
	output MACreset	
);

reg [3:0] state;
reg [3:0] nextstate;
reg [3:0] INaddr;
reg [1:0] OUTaddr;
reg MACreset;

reg [8:0] OUTcounter;
reg [8:0] INcounter;

reg [11:0] Waddr;
reg round;

reg [63:0] we;


//FIXME give reset to MAC//
//move to reset//
//connect PSUM to ACT_F//



always@(posedge clk)
begin
	if(rst==1) begin
		state=0;
		INaddr=0;
		OUTaddr=0;
		INcounter=0;
		OUTcounter=0;
		Waddr=0;
		round=0;
	end
	else
		state=nextstate;
	

	
	if (round ==0)
	begin
	case(state)
		0:begin
			if(round<2)			
				nextstate=1;
			else
				nextstate=0;
		end
		1:begin
			if (INaddr<11)									
				nextstate=1;
			else 
				nextstate=2;
	
		end
		2:begin
			nextstate=3;

		end
		3:begin
			nextstate=4;

		end
		4:begin
			if (OUTcounter<5)
				nextstate=1;
			else 
				nextstate=0;

		end

	endcase
	end

	else begin
	case(state)
		0:begin
			if(round<2)			
				nextstate=1;
			else
				nextstate=0;
		end
		1:begin
			if (OUTaddr<3)
				nextstate=1;
			else 
				nextstate=2;
	
		end
		2:begin
				nextstate=3;

		end
		3:begin
				nextstate=4;

		end
		4:begin
			if (INcounter<5)
				nextstate=1;
			else 
				nextstate=0;

		end

	endcase
	end

	if(round ==0)begin
	case(state)
		0:begin
			if(round<2 && rst==0) begin
				round=round+1;
				OUTcounter=0;
				INaddr=0;
			end
			we=0;		
			MACreset=1'b1;	
	
		end
		1:begin
			INaddr=INaddr+1;
			we=0;
			MACreset=1'b0;
		end
		2:begin
			we=0;
		end
		3:begin
			we[OUTcounter]=1;		
		end
		4:begin
			we=0;			
			OUTcounter=OUTcounter+1;
			MACreset=1'b1;
			INaddr=0;
			if(OUTcounter==64)begin
				OUTcounter=0;
				OUTaddr=OUTaddr+1;
			end		
		end


	endcase
	end
	else begin
	case(state)
		0:begin
			if(round<2 && INaddr>0) begin
				round=round+1;
				OUTaddr=0;
				INaddr=0;
			end
			we=0;	
			MACreset=1'b1;		
		end
		1:begin
			OUTaddr=OUTaddr+1;
			we=0;
			MACreset=1'b0;
		end
		2:begin
			we=0;
		end
		3:begin
			we[INcounter]=1;		
		end
		4:begin
			we=0;			
			INcounter=INcounter+1;	
			MACreset=1'b1;
			OUTaddr=0;
			if(INcounter==64)begin
				INcounter=0;
				INaddr=INaddr+1;
			end	
		end	

	endcase
	end
	//fixme providing 0s for INPUTADDR=12
	//fixme change we control base on state

	if(round==0) begin
		Waddr=(OUTaddr*64+OUTcounter)*13+INaddr;
	end
	else
	begin
		Waddr=(INaddr*64+INcounter)*4+OUTaddr;
	
	end

end
endmodule
