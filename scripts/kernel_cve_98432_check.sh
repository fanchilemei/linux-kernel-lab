#!/usr/bin/env bash
# Record kernel identity for CVE-2026-98432 patch triage. Does not exploit anything.
set -euo pipefail
echo "== Kernel identity =="
uname -a
echo "Release: $(uname -r)"
if [[ -r /proc/sys/net/mptcp/enabled ]]; then
  echo "net.mptcp.enabled=$(cat /proc/sys/net/mptcp/enabled)"
else
  echo "net.mptcp.enabled: sysctl node not present"
fi
echo
echo "Compare $(uname -r) against your distro advisory for CVE-2026-98432, then reboot into the fixed package."
