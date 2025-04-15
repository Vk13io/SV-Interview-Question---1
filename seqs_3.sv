module test;
 initial begin
 reg [31:0] out; 
 out = {31'b0, 1'b1};
 #5;
 $display("output %032b", out); 
 end
endmodule
