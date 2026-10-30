# Kernel build log (placeholder)

Replace this page with notes from a build you ran inside a VM you control. Record what you did so you can repeat a clean build later. This page is not a guide to crafting a vulnerable configuration.

## Source

- Where the tree came from (kernel.org tarball or a signed git tag):
- Version or commit:
- Date:

## Machine

- Hypervisor and snapshot name:
- Network (host-only or NAT):
- Distribution and compiler (`gcc --version`):

## Config

- Starting point (`defconfig`, distro config, or another known-good config):
- Options you changed, and why (one line each):

## Build

- Command (for example `make -j$(nproc)`):
- Where `vmlinux` and modules were installed:
- Errors worth remembering:

## Boot check

- How the VM booted this build:
- `uname -r` after boot:
- What you verified (a chapter you read, a module that loaded, a vendor package that matches an advisory):

Attack reproduction does not belong in this log.
