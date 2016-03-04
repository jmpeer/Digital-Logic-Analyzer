module BRAM_32x1K(in_clk, in_we, in_addr, in_data, out_data);
    
	input wire in_clk, in_we;
    input wire [9:0] in_addr;
	input wire [31:0] in_data;
    output wire [31:0] out_data;

	BRAM_16x1K BRAM_16x1K_1(in_clk, in_we, in_addr, in_data[31:16], out_data[31:16]);
	BRAM_16x1K BRAM_16x1K_0(in_clk, in_we, in_addr, in_data[15:0], out_data[15:0]);
	
endmodule
