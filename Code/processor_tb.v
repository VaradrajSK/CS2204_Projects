`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2022 13:06:15
// Design Name: 
// Module Name: processor_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module processor_tb();
reg clk=0,rst=0;
reg [13:0] Instr;
wire [7:0] out;

//File pointer
integer t_no=1;

initial
begin
    while(1)
    begin
        $display("%d %h %h\n", t_no, Instr, out);
        #10;
        t_no <= t_no + 1;
    end
  
end

processor DUT(clk,rst,Instr,out);

always begin
    clk = ~ clk;
    #5;
end

initial begin
    Instr = {4'hB,2'h0, 8'h0}; #10;
	Instr = {4'hB,2'h1, 8'h0}; #10;
    Instr = {4'hB,2'h2, 8'h0}; #10;
	Instr = {4'hB,2'h3, 8'h0}; #10;    

    Instr = {4'hA,2'h0, 8'h1}; #10;
	Instr = {4'hA,2'h1, 8'h2}; #10;
    Instr = {4'hA,2'h2, 8'h3}; #10;
	Instr = {4'hA,2'h3, 8'h4}; #10;    

    Instr = {4'hB,2'h0, 8'h00}; #10;
	Instr = {4'hB,2'h1, 8'h40}; #10;
    Instr = {4'hB,2'h2, 8'h80}; #10;
	Instr = {4'hB,2'h3, 8'hC0}; #10;    

	Instr = {4'h0,2'h3, 8'h10}; #10; 
	Instr = {4'hB,2'h3, 8'hC0}; #10; 
	
	Instr = {4'h1,2'h3, 8'h10}; #10; 
	Instr = {4'hB,2'h3, 8'hC0}; #10; 

	Instr = {4'h2,2'h3, 8'h10}; #10; 
	Instr = {4'hB,2'h3, 8'hC0}; #10; 
	Instr = {4'h3,2'h3, 8'h10}; #10; 
	Instr = {4'hB,2'h3, 8'hC0}; #10; 
	Instr = {4'h4,2'h3, 8'h10}; #10; 
	Instr = {4'hB,2'h3, 8'hC0}; #10; 
	Instr = {4'h5,2'h3, 8'h10}; #10; 
	Instr = {4'hB,2'h3, 8'hC0}; #10; 
	Instr = {4'h6,2'h3, 8'h10}; #10; 
	Instr = {4'hB,2'h3, 8'hC0}; #10; 
	Instr = {4'h7,2'h3, 8'h10}; #10; 
	Instr = {4'hB,2'h3, 8'hC0}; #10; 
	Instr = {4'h8,2'h3, 8'h10}; #10; 
	Instr = {4'hB,2'h3, 8'hC0}; #10; 
	Instr = {4'h9,2'h3, 8'h10}; #10; 
	Instr = {4'hB,2'h3, 8'hC0}; #10; 
	Instr = {4'hA,2'h3, 8'h10}; #10; 
	Instr = {4'hB,2'h3, 8'hC0}; #10; 
	Instr = {4'hB,2'h3, 8'h10}; #10; 
	Instr = {4'hB,2'h3, 8'hC0}; #10; 
	Instr = {4'hC,2'h3, 8'h10}; #10; 
	Instr = {4'hB,2'h3, 8'hC0}; #10; 
	Instr = {4'hD,2'h3, 8'h10}; #10; 
	Instr = {4'hB,2'h3, 8'hC0}; #10; 

    $finish;
end

endmodule
