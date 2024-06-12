#!/usr/bin/env bash

set -euo pipefail

docker build  \
  --target export-stage  \
  --output $PWD  \
  $PWD
