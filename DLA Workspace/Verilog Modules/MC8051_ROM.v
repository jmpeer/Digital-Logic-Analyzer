module MC8051_ROM(in_clk, in_addr, out_data);
    
	input wire in_clk;
    input wire [15:0] in_addr;
    output wire [7:0] out_data;
	
	BRAM_8x4K BRAM_8x4K(in_clk, 1'b0, in_addr[11:0], 8'h00, out_data);
	
endmodule
