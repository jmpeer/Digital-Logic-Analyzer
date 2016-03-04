module BRAM_8x2K(in_clk, in_we, in_addr, in_data, out_data);
    
	input wire in_clk, in_we;
    input wire [10:0] in_addr;
	input wire [7:0] in_data;
    output wire [7:0] out_data;
	
	wire parity;

   RAMB16_S9 #(
		.INIT(9'h000),				// Value of output RAM registers at startup
		.SRVAL(9'h000),				// Output value upon SSR assertion
		.WRITE_MODE("NO_CHANGE")	// WRITE_FIRST, READ_FIRST or NO_CHANGE
	) RAMB16_S9 (
		.DO(out_data),		// 8-bit Data Output
		.DOP(parity),		// 1-bit parity Output
		.ADDR(in_addr),		// 11-bit Address Input
		.CLK(in_clk),		// Clock
		.DI(in_data),		// 8-bit Data Input
		.DIP(1'b0),			// 1-bit parity Input
		.EN(1'b1),			// RAM Enable Input
		.SSR(1'b0),			// Synchronous Set/Reset Input
		.WE(in_we)			// Write Enable Input
   );

endmodule
