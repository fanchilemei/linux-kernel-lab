#!/usr/bin/env bash
# Check common host tools for kernel study — informational only.
set -euo pipefail

echo "== Kernel lab host tooling =="
for c in qemu-system-x86_64 make gcc git flex bison; do
  if command -v "$c" >/dev/null 2>&1; then
    echo "OK  $c -> $(command -v "$c")"
  else
    echo "MISS $c"
  fi
done
echo "Done."
