#!/usr/bin/env bash

set -e

# shellcheck source=./helpers/VERSIONS.sh
. "./helpers/VERSIONS.sh"

# shellcheck source=./helpers/FUNCTIONS.sh
. "./helpers/FUNCTIONS.sh"

# generates Casks for 32-bit versions of Vagrant
for VERSION in "${VAGRANT_32BIT[@]}"; do
  generate_cask "vagrant" "${VERSION}" "omit"
done

# generates Casks for 64-bit versions of Vagrant
for VERSION in "${VAGRANT_64BIT[@]}"; do
  generate_cask "vagrant" "${VERSION}" "${CASK_ARCHITECTURE}"
done
