#!/usr/bin/env bash

set -euo pipefail

docker run --rm $(docker build --target deploy-stage $PWD -q)
