// pkg file which must included all RX TX and abp interface , Env , scoreboard 
`ifndef CFS_ALGN_PKG_SV
  `define CFS_ALGN_PKG_SV

 `include "cfs_apb_pkg.sv"
 `include "uvm_macros.svh"
  package cfs_algn_pkg;
    import uvm_pkg::*;
    import cfs_apb_pkg::*;
//       `include "uvm_macros.svh"

    `include "cfs_algn_env.sv"
  endpackage

`endif