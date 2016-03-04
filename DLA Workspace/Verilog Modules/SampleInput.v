module SampleInput(in_clk,data);
	input wire in_clk;
	output reg [63:0] data;
	
	initial begin
		data <= 0;
	end
	
		always @(posedge in_clk) begin
			data <= data + 1;
		end
		
endmodule
