
//Randomize all variables.
// ii) Randomize only one variable.
//iii) Randomize any two variables.
//iv) Randomize any three variables.

class ext;
  
  rand bit [7:0] a,b,c,d;
  
  
endclass

module randomize_vars;
  
  ext ex = new();
  
  initial begin
    $display("All are randomized");
    ex.randomize();
    $display("ex value a = %0d  b = %0d  c = %0d  d = %0d ",ex.a,ex.b,ex.c, ex.d);
    
    
    $display(" only a is randomized");
    ex.randomize(a);
    $display("ex value a = %0d  b = %0d  c = %0d  d = %0d ",ex.a,ex.b,ex.c, ex.d);
    
    $display(" only a,b is randomized");
    ex.randomize(a,b);
    $display("ex value a = %0d  b = %0d  c = %0d  d = %0d ",ex.a,ex.b,ex.c, ex.d);
    
    $display(" only d is randomized");
    ex.randomize(d);
    $display("ex value a = %0d  b = %0d  c = %0d  d = %0d ",ex.a,ex.b,ex.c, ex.d);
    
    
    $display(" only a,b,d is randomized");
    ex.randomize(a,b,d);
    $display("ex value a = %0d  b = %0d  c = %0d  d = %0d ",ex.a,ex.b,ex.c, ex.d);  
    
    
  end
  
  
endmodule
