# hello

A hello-world style kernel module. On load it prints `hello: loaded (study stub)`. On unload it prints `hello: unloaded (study stub)`. It does not allocate memory beyond what the module loader does for every module, and it does not touch devices or other tasks.

## Requirements

- A Linux machine you administer. Use a disposable VM.
- Kernel headers that match the running kernel, so `/lib/modules/$(uname -r)/build` exists.
- `make`, `gcc`, and the usual kernel build dependencies.

Check the host with `bash scripts/verify_env.sh` from the repository root.

## Build

From the repository root:

```bash
bash scripts/build_hello.sh
```

Or, if headers are already installed:

```bash
make -C modules/hello
```

Override the kernel tree if you are building against a VM kernel's headers copied onto a build machine:

```bash
make -C modules/hello KDIR=/path/to/kernel/build
```

## Load and unload

On the VM, from the repository root, after a successful build:

```bash
sudo insmod modules/hello/hello.ko
sudo dmesg | tail -n 5
sudo rmmod hello
sudo dmesg | tail -n 5
```

`insmod` and `rmmod` need administrator rights on that VM. That is ordinary module loading, not a special technique. If the module fails to load, read the `dmesg` line and check that the headers matched `uname -r`.

## What to write down

In a note copied from `notes/TEMPLATE.md`: the kernel release, whether `insmod` succeeded, and the two log lines. Stop there.
