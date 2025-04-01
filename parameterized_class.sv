
// Parametrized class
//Explain parameterized class with examples
//to change data type and size of vectors
class vector #(int size = 4);

  bit [size-1:0] a;


endclass

vector #(10) vtone;
vector #(.size(2)) vtwo;
typedef vector #(4) vfour;


module tb;
  
  
  vfour v4;
  initial 
	begin
  
    	vtwo = new;
		vtwo.a = 31;
        $display("sIZE IS	 ============= %d", $bits(vtwo.a));
      
    	vtone = new;
		vtone.a = 31;
        $display("sIZE IS 	 ============= %d", $bits(vtone.a));

      	
        v4 = new;
		v4.a = 31;
        $display("sIZE IS      ============= %d", $bits(v4.a));
      
  	end
  
endmodule
  
  
  
  
//////////////////////////

class C #(type T = bit);
   
  T [3:0]a; 
  
endclass

class D #(type P =real) extends C;
  
  P a,b;
  
  
endclass


class D1 #(type P =real) extends C#(integer);
  
  P a1,b1;
  
  
endclass

class D2 #(type P =real) extends C#(P);
  
  P a2,b2;
  
  
endclass

class D3 #(type P =real) extends C#(P);
  
  P a3,b3;
  
  
endclass

class D4 #(type P = C#(real)) extends P;
  
  P a3,b3;
  
  
endclass


