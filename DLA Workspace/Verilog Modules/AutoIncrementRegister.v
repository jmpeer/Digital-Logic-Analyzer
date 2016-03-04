module AutoIncrementRegister(in_clk, in_ce, in_reset, in_P0, in_P1, out_P0, out_P1);

	input wire in_clk, in_ce,in_reset;
	input wire [7:0] in_P0;
	input wire [7:0] in_P1;
	output wire [7:0] out_P0;
	output wire [7:0] out_P1;

	reg [9:0] count;
	
	initial begin
		count <= 0;
	end
	
	assign out_P1 = {6'b000000, count[9:8]};
	assign out_P0 = count[7:0];
	
	always @(posedge in_clk) begin
		if (in_reset)begin
			count<=0;
		end
		if(in_ce) begin
			count <= count + 1;
		end
	end
	
endmodule
