module AC (data_bus_in, data_bus_out, ld_ac, pass_add, clk, a_side);

input [7:0] data_bus_in, data_bus_out;
input ld_ac, pass_add, clk;
output reg [7:0] a_side = 8'b00000000;


wire [7:0] mux_output;
assign mux_output = pass_add ? data_bus_out : data_bus_in;
 
 
always @(posedge clk) begin
	if(ld_ac)
		a_side = mux_output;
	
end
endmodule