# linux-kernel-lab

Linux kernel learning lab for notes and benign module experiments.

Use this repository to keep reading notes, document isolated builds, and try tiny out-of-tree modules that only print a log line. Work on a machine you administer, preferably a disposable virtual machine.

## No exploit code

This repository does not host offensive material. Do not add any of the following:

- Kernel exploit proof-of-concept code
- Privilege-escalation procedures
- Rootkits, stealth techniques, or module-hiding code
- Attack walkthroughs or remote exploitation steps
- Payloads, shellcode, or crash-trigger recipes

Allowed material:

- Notes and outlines written in your own words
- Links to public documentation, advisories, and upstream fixes
- High-level summaries of impact, affected versions, and mitigations
- Benign modules in the style of `modules/hello` (log on load and unload)
- Scripts that check installed tools or record kernel identity for patch triage

If a note describes a public bug, stay at names and impacts. Record how you verified a vendor or upstream fix. Do not record how to trigger the bug.

## Layout

| Path | Purpose |
| --- | --- |
| `notes/` | Note template and high-level concept outlines |
| `modules/` | Benign out-of-tree module stubs |
| `scripts/` | Host tooling checks and the hello-module build helper |
| `docs/` | Longer placeholders: policy, build log, reading list, CVE study template |
| `environments/` | Habits for an isolated study VM |

## First steps

1. Read the policy above (also in `docs/policy.md`).
2. See which host tools are present: `bash scripts/verify_env.sh`
3. Read `modules/hello/README.md` before building the stub.
4. Copy `notes/TEMPLATE.md` when you start a topic.

## Existing study notes

`docs/` already contains a high-level CVE study template and one public-advisory summary. Those files stay non-procedural. New CVE notes should follow `docs/CVE_STUDY_TEMPLATE.md`.

## License

There is no repository-wide license file yet. The hello module is marked `GPL-2.0` because it is a Linux kernel module.
