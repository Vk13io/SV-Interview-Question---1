
//  fibonacci series 0 1 1 2 3 5 8 13 21


//Fibonacci Series

class fibonacci;
  rand int a[];
  constraint a_size{a.size() inside {[7:10]};}
	constraint a_two{a[0]==0;
					 a[1]==1;}
 
  constraint a_elements{
    foreach(a[i]){
                      if(i>= 2)
                        a[i] == a[i-1]+a[i-2] ;
    }}
endclass

fibonacci fib;

module tb;
  
  
  initial begin  
  fib = new();
    assert(fib.randomize());
    $display("The elements are %p ",fib.a);
    
    
  end
  
  
endmodule

  
