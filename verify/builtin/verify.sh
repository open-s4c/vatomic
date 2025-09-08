#!/usr/bin/env bash
set -euo pipefail

if [[ $# -ne 2 ]]; then
  echo "Usage: $0 FUNCTION_NAME ARCH"
  exit 1
fi

FUNC="$1"
ARCH="$2"

# Architectures mapping (library dirs & asm files)
declare -A ARCHS
ARCHS=(
  ["armv8"]="./armv8/atomics.s"
  ["riscv"]="./riscv/atomics.s"
)

if [[ -z "${ARCHS[$ARCH]+x}" ]]; then
  echo "Unknown architecture: $ARCH"
  exit 1
fi

OUT="out/$ARCH"
OUT_RETRY="out_retry/$ARCH"
TMPFUNCS=$(mktemp)
echo "$FUNC" > "$TMPFUNCS"

compile() {
  local outdir="$1"
  local unroll="$2"
  echo "Compiling $FUNC for $ARCH (unroll=$unroll, outdir=$outdir)"
  if [[ "$unroll" == "true" ]]; then
    cargo run --quiet -- \
      --input "${ARCHS[$ARCH]}" \
      --functions "$TMPFUNCS" \
      --templates ./boogie/templates/ \
      --directory "$outdir" \
      --arch "$ARCH" \
      --unroll
  else
    cargo run --quiet -- \
      --input "${ARCHS[$ARCH]}" \
      --functions "$TMPFUNCS" \
      --templates ./boogie/templates/ \
      --directory "$outdir" \
      --arch "$ARCH"
  fi
}

verify() {
  local phase="$1"
  local outdir="$2"
  echo "Verifying $FUNC on $ARCH (phase $phase, outdir=$outdir)"
  boogie /proverOpt:SOLVER=z3 \
    ./boogie/auxiliary.bpl \
    "./$ARCH/library.bpl" \
    "$outdir/$FUNC"/*.bpl
}

# ------------------
# Phase 1
# ------------------
compile "$OUT" "false"
if verify 1 "$OUT" | tee /dev/stderr | grep -q "0 errors"; then
  echo "$FUNC on $ARCH passed phase 1"
  rm "$TMPFUNCS"
  exit 0
fi

# ------------------
# Phase 2 (only if phase 1 failed)
# ------------------
echo "Phase 1 failed, retrying with heavy verification..."
compile "$OUT_RETRY" "true"
if verify 2 "$OUT_RETRY" | tee /dev/stderr | grep -q "0 errors"; then
  echo "$FUNC on $ARCH passed phase 2"
  rm "$TMPFUNCS"
  exit 0
else
  echo "$FUNC on $ARCH failed verification"
  rm "$TMPFUNCS"
  exit 1
fi
