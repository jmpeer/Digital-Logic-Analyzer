module LUTRAM_8x128(in_clk, in_we, in_addr, in_data, out_data);

	input wire in_clk, in_we;
	input wire [6:0] in_addr;
	input wire [7:0] in_data;
	output reg [7:0] out_data;

    (* RAM_STYLE = "{AUTO | DISTRIBUTED | PIPE_DISTRIBUTED}" *)
    reg [7:0] data [127:0];
	
	always @(posedge in_clk) begin
		if (in_we) begin
			data[in_addr] <= in_data;
		end else begin
			out_data <= data[in_addr];
		end
	end
endmodule
