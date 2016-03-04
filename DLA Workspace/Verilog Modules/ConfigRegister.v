// Bit 0 == 0 - pretrigger, 1 - posttrigger

module ConfigRegister(in_clk, in_we, in_P0, out_bit_0);

	input wire in_clk, in_we;
	input wire [7:0] in_P0;
	output wire out_bit_0;

	reg [7:0] register;
	
	assign out_bit_0 = register[0];
	
	initial begin
		register <= 0;
	end
	
	always @(posedge in_clk) begin
		if(in_we) begin
			register <= in_P0;
		end
	end
	
endmodule
