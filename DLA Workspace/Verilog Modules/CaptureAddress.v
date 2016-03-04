module CaptureAddress(in_P0_we, in_P1_we, in_ce, in_P0_ce, in_P1_ce, out_P0, out_P1);

	input wire [7:0] in_P0_we;
	input wire [7:0] in_P1_we;
	input wire in_ce;
	input wire [7:0] in_P0_ce;
	input wire [7:0] in_P1_ce;
	output wire [7:0] out_P0;
	output wire [7:0] out_P1;
	
	assign out_P0 = in_ce ? in_P0_ce : in_P0_we;
	assign out_P1 = in_ce ? in_P1_ce : in_P1_we;
	
endmodule
