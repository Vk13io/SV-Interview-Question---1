//  Write a constraint such that when rand bit[3:0] a is randomized, the value of “a” should not be same as 5 previous occurrences of the value of “a”.

class abc;
  rand bit [3:0]a;
  int queue[$:7];

  //not same elements
  constraint c1 {!(a inside {queue}); }
   
  function void post_randomize();
    queue.push_front(a);
    $display("The element a is %d",a);
    if(queue.size == 6)
      queue.pop_back();
    $display("Prev occurences %0p",queue);
  endfunction    
endclass


  module atb;
    abc ab =new();
    initial begin
      repeat(20)
        ab.randomize();
      	
    end
    
  endmodule
  
  
