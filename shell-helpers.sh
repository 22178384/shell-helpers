#!/usr/bin/env bash
# 可 source 的通用 Bash 函数库。

log_info() { echo "[$(date +%H:%M:%S)] INFO  $*"; }
log_warn() { echo "[$(date +%H:%M:%S)] WARN  $*" >&2; }

confirm() {
  local prompt="${1:-确定吗? (y/N)}"
  read -r -p "$prompt " ans
  [[ "$ans" == "y" || "$ans" == "Y" ]]
}

retry() {
  local n="${1:-3}"; shift
  local i
  for i in $(seq 1 "$n"); do
    if "$@"; then return 0; fi
    log_warn "第 $i 次失败，重试…"
  done
  return 1
}
