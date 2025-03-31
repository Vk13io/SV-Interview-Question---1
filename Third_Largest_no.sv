
module third_largest();
  int arr[7] = '{2,3,5,7,8,1,9};
  int first = -1, second = -1, third = -1;
  int index = -1;

  initial begin
    foreach(arr[i]) begin
      if(arr[i] > first) begin
        third = second;
        second = first;
        first = arr[i];
      end 
      else if(arr[i] > second) begin
        third = second;
        second = arr[i];
      end 
      else if(arr[i] > third) begin
        third = arr[i];
        index = i;  // Store index of third largest
      end
    end

    $display("FIRST: %0d, SECOND: %0d, THIRD: %0d, INDEX: %0d", first, second, third, index);
 
  end
endmodule
