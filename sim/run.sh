#!/bin/bash
# Usage: ./run.sh [TESTNAME]   (run from sim/)
TEST=${1:-cfs_algn_test_reg_access}
xrun -Q -unbuffered -timescale 1ns/1ns -sysv -access +rw \
  -uvmnocdnsextra -uvmhome $UVM_HOME $UVM_HOME/src/uvm_macros.svh \
  +UVM_TESTNAME=$TEST -f files.f -input dump.tcl
