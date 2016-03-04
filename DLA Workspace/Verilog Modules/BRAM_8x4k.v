module BRAM_8x4K(in_clk, in_we, in_addr, in_data, out_data);
    
	input wire in_clk, in_we;
    input wire [11:0] in_addr;
	input wire [7:0] in_data;
	output wire [7:0] out_data;
	
	wire we_1, we_0;
	wire [7:0] data_1;
	wire [7:0] data_0;
	
	assign we_1 = in_we ? in_addr[11] : in_we;
	assign we_0 = in_we ? ~in_addr[11] : in_we;
	
	BRAM_8x2K BRAM_8x2K_1(in_clk, we_1, in_addr[10:0], in_data, data_1);
	BRAM_8x2K BRAM_8x2K_0(in_clk, we_0, in_addr[10:0], in_data, data_0);
	
	assign out_data = in_addr[11] ? data_1 : data_0;

endmodule
