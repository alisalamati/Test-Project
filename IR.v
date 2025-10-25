module IR (data_bus_in, ld_ir, clk, ir_out);

input [7:0] data_bus_in;
input ld_ir, clk;
output reg [7:0] ir_out; //from IR to controller and ALU 


always @(posedge clk) begin
	if (ld_ir)
		ir_out <= data_bus_in;
end

endmodule
	