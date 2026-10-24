`include "cfs_algn_test_pkg.sv"

module testbench();
  
  import uvm_pkg::*;
  `include "uvm_macros.svh"
   import cfs_algn_test_pkg::*;
   reg clk;
 
  cfs_apb_if apb_if(.pclk(clk)); 
  
  cfs_aligner dut(
    .paddr       (apb_if.paddr),
    .pwrite      (apb_if.pwrite),
    .psel        (apb_if.psel),
    .penable     (apb_if.penable),
    .pwdata      (apb_if.pwdata),
    .pready      (apb_if.pready),
    .prdata      (apb_if.prdata),
    .pslverr     (apb_if.pslverr),
    .clk         (clk),
    .reset_n     (apb_if.preset_n)
     );
  
  initial begin 
    clk =0;
    
    forever begin
      clk = #5ns ~clk;    
    end
  end
   initial begin
     uvm_config_db#(virtual cfs_apb_if)::set(null, "uvm_test_top.env.apb_agent", "vif", apb_if);
   end
  
  initial begin
    apb_if.preset_n =1; 
    #3ns;
    apb_if.preset_n= 0;
    #30ns;
    apb_if.preset_n= 1;
  end 
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars();
  end 
  
  initial begin
    #5000ns;
    $finish();
  end
  
  initial begin
    run_test("");
  end 
  
  
endmodule 
  
  //Import all uvm pkg , macros
  
  //Intentiate the DUT 

 // Instance of APB interface 
  
  //Clock gneration logic 
  
  //Reset logic 
  
  //dump for vcd 

// finish 

// run_test

// set config_db (pending)