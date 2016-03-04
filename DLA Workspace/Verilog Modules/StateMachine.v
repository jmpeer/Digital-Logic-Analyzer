// STATE TABLE
// 0	idle
// 1	post trigger, sampling continuously
// 2	pre trigger, not sampling
// 3	pre trigger, filling sample space
// 4	done sampling

module StateMachine(in_clk, in_idle,in_unidle, in_reset, in_trig, in_prePost, out_ce, out_P3);

	input wire in_clk, in_idle, in_unidle,in_reset, in_trig, in_prePost;
	output reg out_ce;
	output reg [7:0] out_P3;
	
	reg [2:0] state;
	reg [9:0] count;
	
	initial begin
		count <= 0;
		state <= 0;
		out_ce <= 0;
		out_P3 <= 0;
	end
	
	always @(posedge in_clk) begin
		if(state == 0) begin
			out_ce <= 0;
			out_P3 <= 0;
			if(in_unidle & ~in_prePost) begin
				state <= 2;
			end
			if(in_unidle & in_prePost) begin
				state <= 1;
			end
		end 
		if(state == 1) begin
			out_ce <= 1;
			out_P3 <= 0;
			if(in_idle) begin
				state <= 0;
			end else if(in_trig) begin
				state <= 4;
			end
		end
		if(state == 2) begin
			out_ce <= 0;
			out_P3 <= 0;
			count <= 1023;
			if(in_idle) begin
				state <= 0;
			end else if(in_trig) begin
				state <= 3;
			end
		end
		if(state == 3) begin
			out_ce <= 1;
			out_P3 <= 0;
			count <= count - 1;
			if(in_idle) begin
				state <= 0;
			end else if(count == 0) begin
				state <= 4;
			end
		end
		if(state == 4) begin
			out_ce <= 0;
			out_P3 <= 1;
			if(in_idle) begin
				state <= 0;
			end else begin 
				if(in_reset & ~in_prePost) begin
					state <= 2;
				end
				if(in_reset & in_prePost) begin
					state <= 1;
				end
			end
		end
	end
	
endmodule
