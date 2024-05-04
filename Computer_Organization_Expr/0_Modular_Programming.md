# Modular Programming

> Practicing modular programming with simple bit selection modules

## Counter

```verilog
module Counter(clk, SEL);
input clk;
output reg[2:0] SEL;

always@(posedge clk) begin
	if (SEL == 3'd7) SEL <= 3'd0;
	else SEL <= SEL + 1;
end
endmodule
```

## Decoder

```verilog
module Decoder(value, Seg);
input [3:0] value;
output reg[7:0] Seg;

always @(value) begin
	case(value)
		4'h0: Seg <= 8'b00111111;
		4'h1: Seg <= 8'b00000110;
		4'h2: Seg <= 8'b01011011;
		4'h3: Seg <= 8'b01001111;
		4'h4: Seg <= 8'b01100110;
		4'h5: Seg <= 8'b01101101;
		4'h6: Seg <= 8'b01111101;
		4'h7: Seg <= 8'b00100111;
		4'h8: Seg <= 8'b01111111;
		4'h9: Seg <= 8'b01101111;
		4'ha: Seg <= 8'b01110111;
		4'hb: Seg <= 8'b01111100;
		4'hc: Seg <= 8'b00111001;
		4'hd: Seg <= 8'b01011110;
		4'he: Seg <= 8'b01111001;
		4'hf: Seg <= 8'b01110001;
	endcase
end
endmodule
```

## Top module

```verilog
module SEL(clk, SEL, Seg);
input clk;
output wire[7:0] Seg;
output wire[2:0] SEL;

reg[3:0] value;

Counter a(clk, SEL);
always@(SEL) begin
	case(SEL)
		3'd0: value <= 0;
		3'd1: value <= 1;
		3'd2: value <= 2;
		3'd3: value <= 3;
		3'd4: value <= 4;
		3'd5: value <= 5;
		3'd6: value <= 6;
		3'd7: value <= 7;
	endcase
end
Decoder b(value, Seg);
endmodule
```