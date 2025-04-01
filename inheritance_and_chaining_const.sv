// Code your testbench here
// or browse Examples



class account;
  int balance;
  function new(int pay);

    	balance = pay;
    
  endfunction
  
  
endclass

class linked_account extends account;
  
  function new(int value);
    
    super.new(value);	
    
  endfunction
  
endclass


linked_account linh_h;
account accnt_h;

module tb;

initial 
begin

  linh_h = new(500);
  $display("account balance ---- %0d",linh_h.balance);
  
end

endmodule

//////////////////////////////////////


//chaining constructor


class transaction;

int a;
  
  function new(int a);

		this.a = a;
    
  endfunction
  
endclass

class extnd_trans extends transaction(59);
  
int b;  

endclass
  extnd_trans extr;
  
  module tb;
    
  initial 
	begin
      extr = new();

      $display(" a  ---------------- %0d",extr.a);
      
    end

  endmodule


