//Randomly generating 0 1 x z(using constriant)

class abc;
  typedef enum {zero,one,x_val,z_val} state;
  rand state st;
  logic a;
  rand bit ctrl;
  //not same elements
  constraint c {ctrl dist {0:=5,1:=5}; }
  constraint d {
    			if(ctrl)
    				st inside {zero,one};
                else
              	    st inside {x_val,z_val};
				}
  function void post_randomize();
    case(st)
      zero:  a =  0;
      one:   a =  1;
      x_val: a = 'x;
      z_val: a = 'z;
    endcase    
  endfunction 
  
endclass


  module atb;
    abc ab =new();
    initial begin
      repeat(20)
		begin
          ab.randomize();
          $display("the values %0d",ab.a);
        end
    end
    
  endmodule
  
  
