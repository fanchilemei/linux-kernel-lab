# Modules

Benign out-of-tree kernel modules for study. Each module should be understandable in one sitting and should do nothing except log, expose a read-only parameter, or illustrate a documented API.

## Rules for this directory

- New modules copy the shape of `hello/`: a `README.md`, a `Makefile`, and one small `.c` file.
- Load them only on a machine you administer, preferably the lab VM.
- Do not add modules that hide themselves, change another process's credentials, hook syscalls, or intentionally crash the kernel.
- If an experiment needs privileges (`insmod` does), say so in the module README and name the VM you used.

## Current stubs

| Directory | Behavior |
| --- | --- |
| `hello/` | Prints one line on load and one line on unload |

## Build artifacts

Object files, `.ko`, and kbuild sidecars are gitignored. Commit source and the Makefile only.
