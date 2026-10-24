# ALIGNER_UVM

UVM verification environment for the CFS Aligner (APB-configured, RX → align → TX).

## Directory structure
```
design/                 RTL (design.sv includes all .v files)
tb/
  top/                  testbench.sv – top module, interfaces, DUT instance
  agents/
    apb/                APB agent (config, register access)
    rx/                 RX agent  – planned
    tx/                 TX agent  – planned
  env/                  cfs_algn_pkg.sv, cfs_algn_env.sv
    ral/                Register model + APB adapter – planned
    scoreboard/         Scoreboard – planned
    model/              Reference model for checking – planned
    coverage/           Functional coverage – planned
  test/                 Test package, base test, tests
sim/                    run.sh, files.f (incdirs + sources), dump.tcl, logs
```

## Run (Cadence Xcelium)
```
cd sim
./run.sh                          # default: cfs_algn_test_reg_access
./run.sh <test_name>
```
`files.f` adds every folder as `+incdir`, so `` `include "file.sv" `` works with bare file names.
When you add a new folder, add its `+incdir` line to `files.f`.

## Status (v1)
- [x] RTL, APB interface/types/config/agent, env, base test, reg_access test (passes: see `sim/xrun.log`)
- [ ] APB driver, monitor, sequencer, sequences, coverage, reset handler
- [ ] RX / TX agents
- [ ] RAL model
- [ ] Reference model + scoreboard
