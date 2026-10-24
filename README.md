# ALIGNER_UVM

UVM verification environment for the CFS Aligner design.

## Version 1
- **RTL**: `design.sv` includes the aligner (`cfs_aligner.v`, `cfs_aligner_core.v`) and submodules (ctrl, rx/tx ctrl, regs, synch FIFO, edge detect).
- **APB agent (in progress)**: interface, types, agent config, and agent; the driver, monitor, sequencer, sequences, and coverage are still placeholders.
- **Env / tests**: `cfs_algn_env`, `cfs_algn_test_base`, `cfs_algn_test_reg_access`.
- `testbench.sv` is the top module.

## Run (Cadence Xcelium)
```
xrun -Q -unbuffered -timescale 1ns/1ns -sysv -access +rw \
  +UVM_TESTNAME=cfs_algn_test_reg_access -uvmnocdnsextra \
  -uvmhome $UVM_HOME $UVM_HOME/src/uvm_macros.svh design.sv testbench.sv
```
`xrun.log` holds the log from the last run (UVM_ERROR: 0, UVM_FATAL: 0).
