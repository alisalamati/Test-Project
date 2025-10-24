module ALU(a_side, from_ir, pass_add, data_bus_out);

input [7:0] a_side, from_ir;
input pass_add;
output [7:0] data_bus_out;

assign data_bus_out = pass_add ? a_side + from_ir: a_side;