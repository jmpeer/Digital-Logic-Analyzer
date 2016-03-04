// P0 = index of mask (0-4)
// P1 = index of byte within mask
// P2 = byte to write

module Mask(in_clk, in_we, in_P0, in_P1, in_P2, out_mask_0, out_mask_1, out_mask_2, out_mask_3, out_mask_4);

	input wire in_clk, in_we;
	input wire [7:0] in_P0;
	input wire [7:0] in_P1;
	input wire [7:0] in_P2;
	
	output wire [63:0] out_mask_0;
	output wire [63:0] out_mask_1;
	output wire [63:0] out_mask_2;
	output wire [63:0] out_mask_3;
	output wire [63:0] out_mask_4;
	
	reg [7:0] mask_0 [7:0];
	reg [7:0] mask_1 [7:0];
	reg [7:0] mask_2 [7:0];
	reg [7:0] mask_3 [7:0];
	reg [7:0] mask_4 [7:0];
	
	wire [5:0] P1_start;
	wire [5:0] P1_stop;
	
	// assign P1_start = in_P1 << 3;
	// assign P1_stop = P1_start + 7;
	
	assign out_mask_0 = {	mask_0[7], 
							mask_0[6], 
							mask_0[5], 
							mask_0[4], 
							mask_0[3], 
							mask_0[2], 
							mask_0[1], 
							mask_0[0]};
	assign out_mask_1 = {	mask_1[7], 
							mask_1[6], 
							mask_1[5], 
							mask_1[4], 
							mask_1[3], 
							mask_1[2], 
							mask_1[1], 
							mask_1[0]};
	assign out_mask_2 = {	mask_2[7], 
							mask_2[6], 
							mask_2[5], 
							mask_2[4], 
							mask_2[3], 
							mask_2[2], 
							mask_2[1], 
							mask_2[0]};
	assign out_mask_3 = {	mask_3[7], 
							mask_3[6], 
							mask_3[5], 
							mask_3[4], 
							mask_3[3], 
							mask_3[2], 
							mask_3[1], 
							mask_3[0]};
	assign out_mask_4 = {	mask_4[7], 
							mask_4[6], 
							mask_4[5], 
							mask_4[4], 
							mask_4[3], 
							mask_4[2], 
							mask_4[1], 
							mask_4[0]};
						
	
	initial begin
		
		mask_0[7] <= 8'hFF;
		mask_0[6] <= 8'hFF;
		mask_0[5] <= 8'hFF;
		mask_0[4] <= 8'hFF;
		mask_0[3] <= 8'hFF;
		mask_0[2] <= 8'hFF;
		mask_0[1] <= 8'hFF;
		mask_0[0] <= 8'hFF;
		
		mask_1[7] <= 8'h00;
		mask_1[6] <= 8'h00;
		mask_1[5] <= 8'h00;
		mask_1[4] <= 8'h00;
		mask_1[3] <= 8'h00;
		mask_1[2] <= 8'h00;
		mask_1[1] <= 8'h00;
		mask_1[0] <= 8'h00;
		
		mask_2[7] <= 8'h00;
		mask_2[6] <= 8'h00;
		mask_2[5] <= 8'h00;
		mask_2[4] <= 8'h00;
		mask_2[3] <= 8'h00;
		mask_2[2] <= 8'h00;
		mask_2[1] <= 8'h00;
		mask_2[0] <= 8'h00;
		
		mask_3[7] <= 8'h00;
		mask_3[6] <= 8'h00;
		mask_3[5] <= 8'h00;
		mask_3[4] <= 8'h00;
		mask_3[3] <= 8'h00;
		mask_3[2] <= 8'h00;
		mask_3[1] <= 8'h00;
		mask_3[0] <= 8'h00;
		
		mask_4[7] <= 8'h00;
		mask_4[6] <= 8'h00;
		mask_4[5] <= 8'h00;
		mask_4[4] <= 8'h00;
		mask_4[3] <= 8'h00;
		mask_4[2] <= 8'h00;
		mask_4[1] <= 8'h00;
		mask_4[0] <= 8'h00;
		
	end
	
	always @(posedge in_clk) begin
		if(in_we) begin
			case(in_P0)
				0: mask_0[in_P1] <= in_P2;
				1: mask_1[in_P1] <= in_P2;
				2: mask_2[in_P1] <= in_P2;
				3: mask_3[in_P1] <= in_P2;
				4: mask_4[in_P1] <= in_P2;
			endcase
		end
	end
	
endmodule
