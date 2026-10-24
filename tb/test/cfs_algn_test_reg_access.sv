// this is extented version of base test

// randomize and drive through driver
`ifndef CFS_ALGN_TEST_REG_ACCESS_SV
  `define CFS_ALGN_TEST_REG_ACCESS_SV

  class cfs_algn_test_reg_access extends cfs_algn_test_base;
      `uvm_component_utils(cfs_algn_test_reg_access)
  
  
  function new(string name ="", uvm_component parent);
    super.new(name, parent);
  endfunction
    
   virtual task run_phase(uvm_phase phase);
    super.run_phase(phase);
     
     phase.raise_objection(this,"TEST_DONE");

    #100ns;
     `uvm_info("DEBUG","This is end of test", UVM_LOW)
    
     phase.drop_objection(this,"TEST_DONE");
  endtask
    
  endclass

`endif
// RUN phase of TEST define in extended class