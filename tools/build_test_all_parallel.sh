#!/bin/bash
#
# Usage: build_and_tesh.sh
set -euo pipefail

if [[ ! -z "${DEBUG:-}" ]]; then
  set -x
fi

TOP_DIR="$(dirname "${BASH_SOURCE[0]}")/.."
cd "$TOP_DIR"
time ./tools/build_all_parallel.sh
echo
time ./tools/test_all_parallel.sh
