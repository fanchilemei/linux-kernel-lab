# Environments

Notes for the machine you study on. The goal is a disposable VM you can snapshot and throw away.

| File | What it is |
| --- | --- |
| [qemu-notes.md](qemu-notes.md) | Habits for an isolated QEMU/KVM guest: snapshots, host-only or NAT networking, record `uname -r` |

Do not document how to attach the lab VM to a network you do not control. Do not store credentials, cloud keys, or disk images in this repository.

When a build succeeds, put the log in `docs/build.md`. When a module loads, put the observation in `notes/topics/`.
