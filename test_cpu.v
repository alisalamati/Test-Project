module test_cpu;

reg clk, reset;
reg [7:0] d_in;
wire [7:0] d_out;
wire [5:0] adr_bus;
wire rd_mem, wr_mem;
wire [7:0] data_bus_out;

integer dataFile, reportFile, status;

CPU MUT (reset, clk, adr_bus, rd_mem, wr_mem, d_in, d_out);

always #5 clk = ~clk;

initial begin
    clk = 1'b0;
    reset = 1'b1; #7; reset = 1'b0;
	d_in = 8'b00000000;
    dataFile = $fopen("Data.ins", "r");
    reportFile = $fopen("Data.rpt", "w");
	@(posedge clk);
    while(!$feof(dataFile)) begin
	  status = $fscanf(dataFile, "%b\n", d_in);
	  @ (posedge clk);
      @ (posedge clk);
      @ (posedge clk);
      $fdisplay(reportFile, "output is %b (%d)\t", d_out, d_out);     
    end
	#1;
	$finish;
end

endmodule