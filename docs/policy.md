# Lab policy

This is a learning lab for notes and benign module experiments.

## Do not add

- Kernel exploit proof-of-concept code
- Privilege-escalation procedures
- Rootkits or code whose purpose is to hide activity
- Attack walkthroughs, crash recipes, or remote exploitation steps
- Payloads or shellcode

## Do add

- Reading notes and outlines in your own words
- Links to kernel documentation, public advisories, and upstream fixes
- High-level impact and mitigation summaries
- Benign modules that log a message on load and unload
- Scripts that check tools or print kernel identity

## Bug notes

When you write about a public vulnerability:

- Name the advisory, the subsystem, and the impact.
- Point at the upstream or vendor fix.
- Describe how you checked that a patched kernel is what actually booted (`uname -r`, package version).
- Leave out trigger steps, memory layouts, and anything that would let someone turn the note into a weapon.

Experiments stay on machines you administer. Prefer a disposable VM with a snapshot, on a host-only or NAT network.
