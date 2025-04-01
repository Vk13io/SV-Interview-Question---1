
//Call back mechanism explanation with code
class call_back; 
  
  virtual task pre_send;
  endtask
  
  
endclass


class driver;
  
  call_back call_me = new();
  
  task send;
    call_me.pre_send;
  	#10;
    $display("%t ::::::::::::::::::  Delay",$time);
  endtask
endclass


class call_back_ex extends call_back;
 	 task pre_send;
		#20;
       $display("I'm here ::::::::::::::::::::: %t",$time);
	 endtask
endclass

driver drv;
call_back_ex cex;
module tb;
  initial begin
	drv = new;
    cex = new;
    drv.send;
    drv.call_me = cex;
    $display(" ::::::::::::::::::::: After Some Delays :::::::::::::::::   ");
    drv.send;
    
    
    
  end 
endmodule
