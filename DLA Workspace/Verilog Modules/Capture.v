// {P1,P0} = address of sample
// P2 = address of byte in sample

module Capture(in_clk, in_ce, in_P0, in_P1, in_P2, in_data, out_P0);

	input wire in_clk, in_ce;
	input wire [7:0] in_P0;
	input wire [7:0] in_P1;
	input wire [7:0] in_P2;
	input wire [63:0] in_data;
	output wire [7:0] out_P0;
	
	wire [15:0] addr;
	wire [5:0] addr_start;
	wire [5:0] addr_stop;
	wire [63:0] data;
	reg [63:0] count;

	assign addr = {in_P1, in_P0};

	BRAM_64x1K BRAM_64x1K(in_clk, in_ce, addr[9:0], in_data, data);
	//BRAM_64x1K BRAM_64x1K(in_clk, in_ce, addr[9:0], in_data, data);
	
	
/*
assign out_P0 = 
		(in_P2 == 0) ? in_P0 : 
		(in_P2 == 1) ? in_P1 : 
		(in_P2 == 2) ? 0 : 
		(in_P2 == 3) ? 0 : 
		(in_P2 == 4) ? 0 : 
		(in_P2 == 5) ? 0 : 
		(in_P2 == 6) ? 0 : 
		(in_P2 == 7) ? 0 : 
		0;
*/		
	assign out_P0 = 
		(in_P2 == 0) ? data[1*8-1:0*8] : 
		(in_P2 == 1) ? data[2*8-1:1*8] : 
		(in_P2 == 2) ? data[3*8-1:2*8] : 
		(in_P2 == 3) ? data[4*8-1:3*8] : 
		(in_P2 == 4) ? data[5*8-1:4*8] : 
		(in_P2 == 5) ? data[6*8-1:5*8] : 
		(in_P2 == 6) ? data[7*8-1:6*8] : 
		(in_P2 == 7) ? data[8*8-1:7*8] : 
		0;
	
	
		initial begin
		count <= 0;
	end
	
		always @(posedge in_clk) begin
			count <= count + 1;
		end
endmodule
