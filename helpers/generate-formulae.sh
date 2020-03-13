#!/usr/bin/env bash

set -e

# shellcheck source=./helpers/FUNCTIONS.sh
. "./helpers/FUNCTIONS.sh"

for VERSION in "${CONSUL_1XX[@]}"; do
  generate_formula "consul" "${VERSION}" "${FORMULA_ARCHITECTURE}"
done
