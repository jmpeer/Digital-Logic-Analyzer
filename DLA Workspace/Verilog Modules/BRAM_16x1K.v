module BRAM_16x1K(in_clk, in_we, in_addr, in_data, out_data);
    
	input wire in_clk, in_we;
    input wire [9:0] in_addr;
	input wire [15:0] in_data;
    output wire [15:0] out_data;
	
	wire [1:0] parity;

   RAMB16_S18 #(
		.INIT(18'h00000),			// Value of output RAM registers at startup
		.SRVAL(18'h00000),			// Output value upon SSR assertion
		.WRITE_MODE("WRITE_FIRST")	// WRITE_FIRST, READ_FIRST or NO_CHANGE
	) ROM2k_00 (
		.DO(out_data),		// 16-bit Data Output
		.DOP(parity),		// 2-bit parity Output
		.ADDR(in_addr),		// 10-bit Address Input
		.CLK(in_clk),		// Clock
		.DI(in_data),		// 16-bit Data Input
		.DIP(2'b00),		// 2-bit parity Input
		.EN(1'b1),			// RAM Enable Input
		.SSR(1'b0),			// Synchronous Set/Reset Input
		.WE(in_we)			// Write Enable Input
   );

endmodule
