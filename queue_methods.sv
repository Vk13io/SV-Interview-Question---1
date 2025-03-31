//
//Fun with Queues
module queue_1;
  int que_1[$:4];
  int que_2[$];
  int k;
  initial begin
    que_1 = {1,2,3,1,1,1,14,4,0,5};
    que_2 = {243,53,2,3,585,35,7,9};
    que_2.insert(5,231);
    que_2.push_front(68);
    que_2.push_back(648);
    k = que_2.pop_back();
	$display("%0d",k);
    k = que_2.pop_front();
    $display("%p",que_1);
    $display(que_2);
    $display(k);
    
    
  end
endmodule
