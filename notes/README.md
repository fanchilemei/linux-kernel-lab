# Notes

Short study notes live here. Docs that you expect to reread as reference live under `docs/`.

## How to add a note

1. Copy `TEMPLATE.md` to `notes/topics/<short-name>.md`.
2. Fill the headings in your own words.
3. Link a kernel doc page or an upstream commit when you relied on one.
4. Stop at explanation. Do not add reproduction steps for bugs.

`topics/` starts empty on purpose. `concepts/OUTLINE.md` is a map of subjects to cover later, with questions only.

## Suggested order

1. What a kernel image is, and how an out-of-tree module differs from one built into `vmlinux`.
2. Build and load `modules/hello` in a VM. Write down the exact commands that worked.
3. Pick one subsystem outline in `concepts/OUTLINE.md` and answer two questions from a documentation page.
