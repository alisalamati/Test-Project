module test_cpu;

//input ha az noe reg & outputs wire
// always #11 clk = ~clk; 
// always @(outputs) $display("outputs %d")
//t = 1ns ,,,#(t)
reg clk, reset;
reg d_in;
integer dataFile, reportFile;
CPU MUT (reset, clk, adr_bus, rd_mem

initial begin
	clk = 1'b0;
	reset =1'b1; #5; reset =1'b0;
	dataFile = $fopen("Data.ins", "r");
	reportFile = $fopen("Data.rpt", "w");
end
	
	always #5 clk = ~clk;
	
	initial begin
		while(!$feof(dataFile)) begin
			status
	