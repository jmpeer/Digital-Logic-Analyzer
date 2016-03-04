module PrevRegsiter(in_clk, in_data, out_data);

	input wire in_clk;
	input wire [63:0] in_data;
	output reg [63:0] out_data;

	initial begin
		out_data <= 0;
	end
	
	always @(posedge in_clk) begin
		out_data <= in_data;
	end
	
endmodule
