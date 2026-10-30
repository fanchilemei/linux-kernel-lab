#!/usr/bin/env bash
# Build modules/hello when matching kernel headers are installed.
# Does not load the module.
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
kdir="${KDIR:-/lib/modules/$(uname -r)/build}"

if [[ ! -d "${kdir}" ]]; then
	echo "Kernel build tree not found: ${kdir}" >&2
	echo "Install headers that match this kernel (for example the linux-headers package for $(uname -r))." >&2
	echo "Build only on a machine you administer, preferably a lab VM." >&2
	exit 1
fi

make -C "${root}/modules/hello" KDIR="${kdir}"
echo "Built ${root}/modules/hello/hello.ko"
echo "Load it only inside a VM you own. See modules/hello/README.md."
