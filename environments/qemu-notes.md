# Isolated study VM notes

Use a disposable QEMU/KVM (or similar) VM for kernel reading and patch verification.

Suggested habits:

- Snapshot before experiments; restore after.
- Keep the VM on a host-only or NAT network; do not bridge to untrusted networks.
- Record kernel version (`uname -r`) and package source in your notes.
- Prefer verifying that an official patch/package update lands, not reproducing attacks.

Commands to check tooling on the **host** (not an exploit path):

```bash
command -v qemu-system-x86_64
command -v make
command -v gcc
```
