module MMIOC(in_clk, in_we, in_addr, out_we_cr, out_we_mm, out_we_ca, out_reset, out_idle, out_unidle);

	input wire in_clk, in_we;
	input wire [6:0] in_addr;
	output wire out_we_cr;
	output wire out_we_mm;
	output wire out_we_ca;
	output wire out_reset;
	output wire out_idle;
	output wire out_unidle;
	
	assign out_we_cr = in_addr == 127;
	assign out_we_mm = in_addr == 126;
	assign out_we_ca = in_addr == 125;
	assign out_reset = in_addr == 124;
	assign out_idle = in_addr == 123;
	assign out_unidle = in_addr == 122;
	
endmodule
