# Concept outline

Placeholders only. Answer in a new file under `notes/topics/` after you read the linked documentation. Each section is a study prompt, not a procedure.

Policy reminder: no exploit code, no privilege-escalation notes, no crash recipes. See `docs/policy.md`.

## 1. Tree, image, and modules

Read: https://www.kernel.org/doc/html/latest/kbuild/modules.html

- What is the difference between a built-in feature and a loadable `.ko`?
- What does `module_init` run, and what does `module_exit` run?
- Why do many modules set `MODULE_LICENSE("GPL")`?
- Where do `pr_info` lines show up after a successful load?

Hands-on counterpart: `modules/hello`.

## 2. Configuring and building

Read: https://www.kernel.org/doc/html/latest/kbuild/kconfig.html

- What is `defconfig` a starting point for?
- Where does a built kernel expect its modules (`/lib/modules/$(uname -r)/`)?
- What does "kernel headers match the running kernel" mean for an out-of-tree build?
- Which snapshot will you restore if a build or boot goes badly?

Log the answers that come from a real VM build in `docs/build.md`.

## 3. Processes and scheduling

Read: https://www.kernel.org/doc/html/latest/scheduler/index.html

- What is a task in the kernel's own vocabulary?
- What is the difference between user context, interrupt context, and a kernel thread, at the level of "who can sleep"?
- Which documentation page describes the scheduler you want to read next?

## 4. Memory, as a reader of kernel code

Read: https://www.kernel.org/doc/html/latest/mm/index.html

Stay at the level of "which allocator is this call using, and what is the object lifetime?"

- What is a page, in one paragraph?
- When does driver or core code call `kmalloc`, and when does it use `vmalloc`? (Answer from the docs, not from a bug.)
- What does "free this object when the owner is done" mean for a structure you met while reading?

Do not extend this section into corruption techniques, use-after-free exercises, or layout manipulation.

## 5. Networking data path, as a map

Read: https://www.kernel.org/doc/html/latest/networking/index.html

- What object carries a packet through the stack (name it and say who frees it)?
- Where would you start reading for TCP versus for a device driver?
- Which public advisory, if any, are you summarizing separately under `docs/`?

Packet-crafting steps and trigger conditions do not belong in these notes.
