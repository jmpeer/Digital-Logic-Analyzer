// don't care
module Trigger_0(in_prev, in_data, in_mask, out_trig);
	input wire [63:0] in_prev;
	input wire [63:0] in_data;
	input wire [63:0] in_mask;
	output wire [63:0] out_trig;
	assign out_trig = in_mask;
endmodule

// rising edge
module Trigger_1(in_prev, in_data, in_mask, out_trig);
	input wire [63:0] in_prev;
	input wire [63:0] in_data;
	input wire [63:0] in_mask;
	output wire [63:0] out_trig;
	assign out_trig = (~in_prev & in_data) & in_mask;
endmodule

// falling edge
module Trigger_2(in_prev, in_data, in_mask, out_trig);
	input wire [63:0] in_prev;
	input wire [63:0] in_data;
	input wire [63:0] in_mask;
	output wire [63:0] out_trig;
	assign out_trig = (in_prev & ~in_data) & in_mask;
endmodule

// 0
module Trigger_3(in_prev, in_data, in_mask, out_trig);
	input wire [63:0] in_prev;
	input wire [63:0] in_data;
	input wire [63:0] in_mask;
	output wire [63:0] out_trig;
	assign out_trig = (~in_data) & in_mask;
endmodule

// 1
module Trigger_4(in_prev, in_data, in_mask, out_trig);
	input wire [63:0] in_prev;
	input wire [63:0] in_data;
	input wire [63:0] in_mask;
	output wire [63:0] out_trig;
	assign out_trig = (in_data) & in_mask;
endmodule

module Trigger(in_clk, in_mask_0, in_mask_1, in_mask_2, in_mask_3, in_mask_4, in_prev, in_data, out_trig);

	input wire in_clk;
	input wire [63:0] in_mask_0;
	input wire [63:0] in_mask_1;
	input wire [63:0] in_mask_2;
	input wire [63:0] in_mask_3;
	input wire [63:0] in_mask_4;
	input wire [63:0] in_prev;
	input wire [63:0] in_data;
	output wire out_trig;
	
	wire [63:0] trig_0;
	wire [63:0] trig_1;
	wire [63:0] trig_2;
	wire [63:0] trig_3;
	wire [63:0] trig_4;

	Trigger_0 Trigger_0(in_prev, in_data, in_mask_0, trig_0);
	Trigger_1 Trigger_1(in_prev, in_data, in_mask_1, trig_1);
	Trigger_2 Trigger_2(in_prev, in_data, in_mask_2, trig_2);
	Trigger_3 Trigger_3(in_prev, in_data, in_mask_3, trig_3);
	Trigger_4 Trigger_4(in_prev, in_data, in_mask_4, trig_4);
	
	assign out_trig = ((trig_0 | trig_1 | trig_2 | trig_3 | trig_4) == 64'hFFFFFFFFFFFFFFFF);
	
endmodule
