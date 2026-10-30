# linux-kernel-lab

Skeleton lab for **Linux kernel and networking** learning: reading docs and patches, understanding concepts, and noting how to reproduce issues **safely** in a closed environment.

Focus is defensive understanding—not weaponized exploits.

## Scope

In scope:

- Kernel networking concepts (sockets, netfilter hooks at a conceptual level, routing basics).
- Reading public patches and changelogs.
- High-level notes on public CVEs (impact, affected versions, upstream fix).
- Environment notes for QEMU/VM or container-based study machines you control.

Out of scope:

- Weaponized exploits, exploit PoCs, or attack automation.
- Step-by-step remote exploitation procedures.
- Targeting any system you do not own or lack permission to test.

## Suggested structure

```text
docs/            # Concept notes, patch walkthroughs, CVE study (high level)
environments/    # How to build/run an isolated study VM or kernel build env
```

## Studying public CVEs

Keep CVE notes high level:

- Link the NVD / vendor advisory and the upstream commit when available.
- Summarize root cause and impact in your own words.
- Record the fix and any detection or mitigation ideas.
- If you reproduce something, do it only in an isolated VM, and document **verification of the patch**, not an attack recipe.

## Environments

Prefer disposable VMs or local QEMU. Snapshot before experiments. Do not bridge lab interfaces to untrusted networks.

## Disclaimer

Educational material for defensive learning. No warranty. Do not use this repository to harm systems or people.

## License

Add a license if you share environment scripts widely.
