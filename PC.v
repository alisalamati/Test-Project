module PC (pc_in, ld_pc, inc_pc, clr_pc, clk, pc_out);

input [5:0] pc_in;
input ld_pc, inc_pc, clr_pc, clk;
output reg [5:0] pc_out;

wire internal_pc;

assign internal_pc = ld_pc ? pc_in : clr_pc ? 6'b0 : inc_pc ? pc_out + 1 : pc_out;
		
always @(posedge clk) begin
	pc_out <= internal_pc;
end

endmodule