#!/usr/bin/env bash
set -euo pipefail

if [[ $# -ne 2 ]]; then
  echo "Usage: $0 FUNCTION_NAME ARCH"
  exit 1
fi

FUNC="$1"
ARCH="$2"

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
  echo "Generating $FUNC for $ARCH (unroll=$unroll, outdir=$outdir)"
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

# generate for both phases
compile "$OUT" "false"
compile "$OUT_RETRY" "true"

rm "$TMPFUNCS"
