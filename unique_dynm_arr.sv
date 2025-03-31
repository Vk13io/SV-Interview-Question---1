//UNIQUE DYNAMIC ARRAY WITH CONSTRAINT ONLY NO FUNC

class unique_no_fn;
  
  rand int a[];
  constraint a_size{a.size() inside {[10:20]};}
  constraint a_unique{foreach(a[i])
 						 {
                           foreach(a[j])
          		             {
                               if(i>j)
                                 a[i]!=a[j];
                             }
                         }
						}  
                             constraint a_elements
						{
                          foreach(a[i])
							
                          {a[i] inside {[10:60]};}
                          
						
					}
  
endclass 
  
  unique_no_fn unfo;                           
                             
module tb;
  initial begin
    unfo = new();
    assert(unfo.randomize());
    $display("the size of array is %d \n The elements are %p ",unfo.a.size(),unfo.a);
  end
endmodule
                             
