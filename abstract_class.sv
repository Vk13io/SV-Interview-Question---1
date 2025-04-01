
//Explain Abstract class with code

virtual class packet;
  // Base class holds a 32-bit source array (corrected from 4x4-bit)
  bit [31:0] source_arr; 

  pure virtual function void divider_pkt_one;
endclass

class extend_pkt extends packet;
  // Target array: 8-bit elements (4 elements needed for 32-bit split)
  bit [7:0] target_arr[0:3]; 

  virtual function void divider_pkt_one;
    // Split 32-bit source_arr into four 8-bit segments
    target_arr[0] = source_arr[7:0];    // Bits 0-7
    target_arr[1] = source_arr[15:8];   // Bits 8-15
    target_arr[2] = source_arr[23:16];  // Bits 16-23
    target_arr[3] = source_arr[31:24];  // Bits 24-31
  endfunction
endclass

class extend_pkt2 extends packet;
  // Target array: 16-bit elements (2 elements needed for 32-bit split)
  bit [15:0] target_arr[0:1]; 

  virtual function void divider_pkt_one;
    // Split 32-bit source_arr into two 16-bit segments
    target_arr[0] = source_arr[15:0];   // Bits 0-15
    target_arr[1] = source_arr[31:16];  // Bits 16-31
  endfunction
endclass
    
    
module test;
  initial begin
    extend_pkt pkt1 = new;
    extend_pkt2 pkt2 = new;

    // Set source_arr in base class
    pkt1.source_arr = 32'hAABBCCDD;
    pkt2.source_arr = 32'h11223344;

    // Split the data
    pkt1.divider_pkt_one();
    pkt2.divider_pkt_one();

    // Display results
    $display("extend_pkt: %h %h %h %h", pkt1.target_arr[0], pkt1.target_arr[1], pkt1.target_arr[2], pkt1.target_arr[3]);
    $display("extend_pkt2: %h %h", pkt2.target_arr[0], pkt2.target_arr[1]);
  end
endmodule

