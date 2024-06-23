module ZSX_CPU (reset, clock, write_read, M_address, M_data_in, M_data_out,overflow,status);
input reset,clock;
input[7:0] M_data_in;
output reg write_read,overflow;
output reg [7:0] M_data_out;
output reg[11:0] M_address;
reg[15:0] IR;
reg[7:0] MDR;
reg[11:0] MAR,PC;
reg[7:0] R0,R1,R2,R3,A;//补充完整相关中间变量
output reg[2:0] status;
parameter idle=4'b0000, load=4'b0001, move=4'b0010, 
		    add=4'b0011,  sub=4'b0100,  AND=4'b0101,
			 OR=4'b0110,   XOR=4'b0111,  shrp=4'b1000,
			 shlp=4'b1001, swap=4'b1010, jmp=4'b1011,
			 jz=4'b1100,   read=4'b1101, write=4'b1110,
			 stop=4'b1111;												//所有指令操作码
 
always@(reset or status) // 读操作和写操作
begin
	if((reset==1)&&(status==3)&&(IR[15:12]==write)) 
		write_read=1'b1;//write opeartion  写操作
	else
		write_read=1'b0;//read operation  读操作
	M_address=MAR;
	M_data_out=MDR;

 //补充overflow标志位的处理，overflow仅在进行加、减运算时才可能为1.
end
 
always @(negedge clock or negedge reset)// 状态量 
begin
	if(reset==1'b0) status<=3'b000;			//reset=0时，数据清零
	else if(clock==1'b0)// descend edge of clock 
		case (status)
		3'b000: begin
					status<=1;
					MAR<=PC;
					case(IR[9:8])
					2'b00: A<=R0;
					2'b01: A<=R1;
					2'b10: A<=R2;
					2'b11: A<=R3;
					endcase
				  end
		3'b001: begin
					if(IR[15:12]==stop)status<=1;
					else if((IR[15:12]==swap)|| (IR[15:12]==jmp)|| (IR[15:12]==jz)|| (IR[15:12]==read)|| (IR[15:12]==write))// /补充完整
						status<=2;
					else status<=0;
				  end
		3'b010:begin 
					if(IR[15:12]==swap)
						status<=0;
					else if ((IR[15:12]==jmp)||(IR[15:12]==read)||(IR[15:12]==write))
					begin
						MAR <= IR[11:0];
						status<=3;
					end
					else if((IR[15:12]==jz)&& (R0[7:0] == 8'b0000_0000))//条件转移
					begin
						MAR <= IR[11:0];
						status<=3;
					end
					else
					begin
						MAR <= PC;
						status<=3;
					end
				  end
		3'b011:begin
					if((IR[15:12]==jmp)|| (IR[15:12]==jz))
						status<=0;
					else if((IR[15:12]==read)|| (IR[15:12]==write))
					begin
						MAR <= PC;
						status<=4;
					end
					else
						status <= 4;
				 end
		3'b100:begin
					status<=0;
				 end
		endcase
end

always@(posedge clock or negedge reset)//指令状态基 
begin
	if(reset==1'b0) 
	begin
		IR<=16'h0000;
		PC<=11'b00000000000;
		MDR<=8'b00000000;
	end
	else if (clock==1'b1)
	begin
		case (status)
		3'b000: begin		//状态0，取指令
					overflow=1'b0;
					IR<={M_data_in,8'b00000000}; 
					PC<=PC+12'b000000000001; 
				  end 
		3'b001: begin     //状态1
					case(IR[15:12])      //OP位
					load: R0<={4'b0000,IR[11:8]};   	//立即数指令 
					move: case(IR[11:10])   			//Ry->Rx
							2'b00: R0<=A;
							2'b01: R1<=A;
							2'b10: R2<=A;
							2'b11: R3<=A;
							endcase
					shlp: case(IR[11:10]) 				//逻辑左移一位
							2'b00: R0<=R0<<1;
							2'b01: R1<=R1<<1;
							2'b10: R2<=R2<<1;
							2'b11: R3<=R3<<1;
							endcase
					shrp: case(IR[11:10]) 				//逻辑右移一位
							2'b00: R0<=R0>>1;
							2'b01: R1<=R1>>1;
							2'b10: R2<=R2>>1;
							2'b11: R3<=R3>>1;
							endcase
					add:  case(IR[11:10])				//加法指令
							2'b00: {overflow,R0}<=R0+A;
							2'b01: {overflow,R1}<=R1+A;
							2'b10: {overflow,R2}<=R2+A;
							2'b11: {overflow,R3}<=R3+A;
							endcase
					sub:  case(IR[11:10])				//减法指令
							2'b00: {overflow,R0}<=R0-A;
							2'b01: {overflow,R1}<=R1-A;
							2'b10: {overflow,R2}<=R2-A;
							2'b11: {overflow,R3}<=R3-A;
							endcase
					AND:  case(IR[11:10])				//且指令
							2'b00: R0<=R0&A;
							2'b01: R1<=R1&A;
							2'b10: R2<=R2&A;
							2'b11: R3<=R3&A;
							endcase
					OR:  case(IR[11:10])					//或指令
							2'b00: R0<=R0|A;
							2'b01: R1<=R1|A;
							2'b10: R2<=R2|A;
							2'b11: R3<=R3|A;
							endcase
					XOR:  case(IR[11:10])				//异或指令
							2'b00: R0<=R0^A;
							2'b01: R1<=R1^A;
							2'b10: R2<=R2^A;
							2'b11: R3<=R3^A;
							endcase
					swap: case(IR[9:8])				//交换指令
							2'b00:case(IR[11:10])
									2'b00: R0<=R0;
									2'b01: R0<=R1;
									2'b10: R0<=R2;
									2'b11: R0<=R3;
									endcase
							2'b01:case(IR[11:10])
									2'b00: R1<=R0;
									2'b01: R1<=R1;
									2'b10: R1<=R2;
									2'b11: R1<=R3;
									endcase
							2'b10:case(IR[11:10])
									2'b00: R2<=R0;
									2'b01: R2<=R1;
									2'b10: R2<=R2;
									2'b11: R2<=R3;
									endcase
							2'b11:case(IR[11:10])
									2'b00: R3<=R0;
									2'b01: R3<=R1;
									2'b10: R3<=R2;
									2'b11: R3<=R3;
									endcase
							endcase
					endcase
				  end
		3'b010: begin
					if(IR[15:12]==swap)
						case(IR[11:10])
						2'b00: R0<=A;
						2'b01: R1<=A;
						2'b10: R2<=A;
						2'b11: R3<=A;
						endcase
					else if((IR[15:12]==jmp)|| (IR[15:12]==read))
					begin
						IR[7:0]<=M_data_in;
						PC<=PC+12'b000000000001; 
					end
					else if(IR[15:12]==write)
					begin
						IR[7:0]<=M_data_in;
						MDR=R0;
						PC<=PC+12'b000000000001; 
					end
					else if(IR[15:12]==jz)//条件转移
					begin
						IR[7:0]<=M_data_in;
						PC<=PC+12'b000000000001; 
					end
				  end
		3'b011: begin
					if(IR[15:12]==jmp)
						PC=IR[11:0];
					else if((IR[15:12]==jz)&& (R0[7:0] == 8'b0000_0000))
						PC=IR[11:0];
				  end
		3'b100: begin
					if(IR[15:12]==read)
						R0=M_data_in;
				  end
	//	default: status<=3'b000;
		endcase
	end
end 
endmodule