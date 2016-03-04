module MC8051_RAM(in_clk, in_we, in_addr, in_data, out_data);
    
	input wire in_clk, in_we;
    input wire [6:0] in_addr;
	input wire [7:0] in_data;
    output wire [7:0] out_data;
	
	LUTRAM_8x128 LUTRAM_8x128(in_clk, in_we, in_addr, in_data, out_data);
	
endmodule
