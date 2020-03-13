#!/usr/bin/env bash

set -e

. "./helpers/VERSIONS.sh"

for VERSION in "${VAGRANT_32BIT[@]}"; do
  ./helpers/generate-cask-file.sh vagrant "${VERSION}" "omit"
done

for VERSION in "${VAGRANT_64BIT[@]}"; do
  ./helpers/generate-cask-file.sh vagrant "${VERSION}"
done
