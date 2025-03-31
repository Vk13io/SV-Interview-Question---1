

///Shallow copy and Deep copy (by creating function in main class and in both class)

/*

class sc_sub;

  int sc_prop3;

    function int prod(int a1,a2);
		prod =a1*a2;
  endfunction
  
endclass


class sc_main;

int sc_prop1;  
  bit [7:0]sc_prop2;
sc_sub sc_s1 = new;  
  function int sum(int a1,a2);
		sum =a1+a2;
  endfunction
  
endclass


sc_main sc_m1,sc_m2;

module tb;

  initial
		begin
				sc_m1 = new;
				sc_m1.sc_prop1 = 32;
          		sc_m1.sc_prop2 = 128;
          		sc_m2 = new sc_m1;
          
      		    $display("Hello");
  
      		    $display("sc_m1");
          
     	        $display("%0p",sc_m1);
          
      		    $display("sc_m2");
          
        	    $display("%0p",sc_m2);
       		    sc_m1.sc_s1.sc_prop3 = 60;
                $display("%0d",sc_m2.sc_s1.sc_prop3); 
                $display("%0d",sc_m1.sc_s1.sc_prop3);
          
      		    $display("Subclss Product \n");
        	    $display("%0d",sc_m1.sc_s1.prod(3,4));
                $display("%0p",sc_m2.sc_s1);
                $display("%0d",sc_m2.sum(1,2));
                $display("End");
          
        end
  
endmodule


*/


////DEEP COPY

//method 1

/*
class subclass;
  
  int obj;
  
endclass


class mainclass;
  
  int data;
  subclass sb_h1 = new;
  
  function mainclass copy;
    
    copy = new;
    copy.data =  this.data;
    copy.sb_h1.obj = this.sb_h1.obj;
    
  endfunction
  
endclass


mainclass m1,m2;

module test;
  
  initial
		begin
			m1 = new;
          	m1.data = 20;
          	m1.sb_h1.obj = 10;
          	m2 = m1.copy;
			m2.sb_h1.obj = 19;
          $display("m2 ------    %0d  m2.sb_h1.obj %0d  \n m1 ------    %0d  m1.sb_h1.obj  %0d",m2,m2.sb_h1.obj,m1,m1.sb_h1.obj);
        end
  
endmodule



*/

/*

class sub_class;

int obj;
  
function sub_class copy;
  
  copy = new();
  copy.obj = this.obj;
  
endfunction

endclass
class main_class;

  
  int data;
  sub_class sub_h = new();

  function main_class copy();

    copy = new();
    copy.data = this.data;
	copy.sub_h = this.sub_h.copy; 

  endfunction
  
endclass
  
main_class m1,m2;
  

module tb;
  
  
  initial 
	begin
      m1 = new();
	  m1.data = 12;
      m1.sub_h.obj = 23;
      m2 = m1.copy;
      $display("m1 ------------- %0p",m1);
      $display("m2 ------------- %0p",m2);
  	end
  


endmodule


*/





class sub_class;

int obj;
  
function sub_class copy;
  
  copy = new();
  copy.obj = this.obj;
  
endfunction

endclass
class main_class;

  
  int data;
  sub_class sub_h = new();

  function main_class copy();

    main_class copy1 = new();
    copy1.data = this.data;
	copy1.sub_h = this.sub_h.copy; 
	return copy1;
  endfunction
  
endclass
  
main_class m1,m2;
  

module tb;
  
  
  initial 
	begin
      m1 = new();
	  m1.data = 12;
      m1.sub_h.obj = 23;
      m2 = m1.copy;
      $display("m1 ------------- %0p",m1);
      $display("m2 ------------- %0p",m2);
  	end
  


endmodule
