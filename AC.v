module AC (data_bus_in, ld_ac, clk, a_side);

input [7:0] data_bus_in;
input ld_ac, clk;
output reg [7:0] a_side;
//= 8'b00000000

always @(posedge clk) begin
	if(ld_ac)
		a_side = data_bus_in;
	
end
endmodule