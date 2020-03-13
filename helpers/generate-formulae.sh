#!/usr/bin/env bash

set -e

# shellcheck source=./helpers/VERSIONS.sh
. "./helpers/VERSIONS.sh"

for VERSION in "${CONSUL_1XX[@]}"; do
  ./helpers/generate-formula-file.sh consul "${VERSION}" "_darwin_amd64"
done
