
//Constraint 
//rand bit [7:0]a[3][3]
//next row val =  previous row val+4
//next col val =  previous col val+4

class matrix;
  
  rand bit [7:0]arr[3][3];
  constraint vals{
    foreach(arr[i,j])
    {

     // Method 1
      arr[i][j] == arr[0][0] +4*j+2*i;

    //Method 2

    //Or we can do it this way 
    //  if(j > 0) arr[i][j] == arr[i][j-1] + 4;//For updating row vals
    //  if(i > 0) arr[i][j] == arr[i-1][j] + 2;//For updating col vals

    }  
  }
  
  
  
endclass 
module tb;
  
  matrix mat;
  initial 
	 begin
		
		mat = new;
        if (mat.randomize()) begin
        $display("Matrix:");
          foreach (mat.arr[i, j]) begin
          if (j == 0) $write("\n");
            $write("%0d ", mat.arr[i][j]);
      end
    end else begin
      $display("Randomization failed.");
    end
    end
endmodule
