#!/usr/bin/env bash

set -euo pipefail

docker build --output "$PWD" "$PWD"

tree
