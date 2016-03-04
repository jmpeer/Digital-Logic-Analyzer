module BRAM_64x1K(in_clk, in_we, in_addr, in_data, out_data);
    
	input wire in_clk, in_we;
    input wire [9:0] in_addr;
	input wire [63:0] in_data;
    output wire [63:0] out_data;

	BRAM_32x1K BRAM_32x1K_1(in_clk, in_we, in_addr, in_data[63:32], out_data[63:32]);
	BRAM_32x1K BRAM_32x1K_0(in_clk, in_we, in_addr, in_data[31:0], out_data[31:0]);
	
endmodule
