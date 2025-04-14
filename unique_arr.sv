//unique values in a array without use of constraint
class ext;
  
  rand bit [7:0] a[20];

  function void shuffling();

    a.shuffle();
    
  endfunction
  
  
  function void displaying();
    
    
    $display("Unique values ======= %p ",a);
    
  endfunction
  
  
  function void elements();
 
	
	foreach(a[i])
      a[i] = i;
   
    
  endfunction
  
 
endclass

module test;
  
  ext ex = new();
  
  initial begin
    $display("===============================");
    ex.randomize();
    ex.displaying();
    
  end
  
  
endmodule
