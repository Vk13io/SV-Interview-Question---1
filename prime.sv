







//Write a constraint to randomly generate unique prime numbers in an array between 1 and 200. The generated prime numbers should have 7 in it (Eg.: 7, 17, 37..)
class abc;
 
  rand int a[];
  rand int b[$];
  constraint a_size{a.size == 200;}
  
  //not same elements
  constraint c {foreach(a[i])
    				a[i] == prime(i); }
  
  function integer prime(int val);
    if(val<=1)
		return 2;
    for(int i = 2;i<val;i++)
	begin
      if(val%i==0)
        	return 2;
    end
    prime = val;
  endfunction 
  
  
  function void post_randomize();
    for(int i=0;i<a.size();i++)
      begin
      if(a[i]%10 == 7)
        b.push_back(a[i]);
      end
    endfunction

endclass


  module atb;
    abc ab =new();
    initial begin
          ab.randomize();
          $display("the values %0p",ab.b);

    end
    
  endmodule
  
  
