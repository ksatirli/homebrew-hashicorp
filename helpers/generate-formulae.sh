#!/usr/bin/env bash

set -e

# shellcheck source=./helpers/VERSIONS.sh
. "./helpers/VERSIONS.sh"

# shellcheck source=./helpers/FUNCTIONS.sh
. "./helpers/FUNCTIONS.sh"

PACKAGE_FLAG=""

#for VERSION in "${CONSUL_1XX[@]}"; do
#  generate_formula "consul" "${VERSION}" "${CASK_ARCHITECTURE}"
#done

# generate Nomad formula and set prefix (`./`) for checksums
#for VERSION in "${NOMAD_PREFIXED[@]}"; do
#  generate_formula "nomad" "${VERSION}" "${FORMULA_ARCHITECTURE}" "./"
#done

for VERSION in "${NOMAD_NONPREFIXED[@]}"; do
  generate_formula "nomad" "${VERSION}" "${FORMULA_ARCHITECTURE}"
done
