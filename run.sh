#!/bin/bash

set -o errexit
set -o pipefail
set -o noclobber
set -o nounset
set -o xtrace

exec docker run --rm \
  --memory 4096M \
  --volume ${PWD}:/build \
  --workdir /build \
  # --env MAKE_LIBSASS_JOBS=36 \
  rust:1.34-stretch \
  cargo build --release --locked -vv
