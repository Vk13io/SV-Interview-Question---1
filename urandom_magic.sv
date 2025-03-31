
//urandom method to generate 8 16 32

module urandom_meth;
  int a;
  	initial 
	begin
		// 8 16 32 using urandom_range
      repeat(5)
		begin
      		a = 8 << $urandom_range(0,2);
          	$display("%0d",a);
        end
		
    end
  
endmodule
