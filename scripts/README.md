# Scripts

Small helpers for the lab host. They print information or build `modules/hello`. They do not scan networks, change sysctls, or load modules for you.

| Script | What it does |
| --- | --- |
| `verify_env.sh` | Reports whether `qemu-system-x86_64`, `make`, `gcc`, `git`, `flex`, and `bison` are on `PATH` |
| `build_hello.sh` | Builds `modules/hello` when kernel headers are installed; otherwise tells you they are missing |
| `kernel_cve_98432_check.sh` | Prints `uname` and whether the MPTCP sysctl node exists, so you can compare a kernel to a distro advisory |

Run them from the repository root:

```bash
bash scripts/verify_env.sh
bash scripts/build_hello.sh
bash scripts/kernel_cve_98432_check.sh
```

Loading the module is a separate, manual step documented in `modules/hello/README.md`.
