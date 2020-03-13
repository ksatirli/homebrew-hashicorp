#!/usr/bin/env bash

set -e

# shellcheck source=./helpers/FUNCTIONS.sh
. "./helpers/FUNCTIONS.sh"

echo "Installing Vagrant 1.x.x versions"
for VERSION in "${VAGRANT_1XX[@]}"; do
  install_and_test_cask "vagrant" "${VERSION}" "Vagrant ${VERSION}"
done

echo "Installing Vagrant 2.x.x versions"
for VERSION in "${VAGRANT_2XX[@]}"; do
  install_and_test_cask "vagrant" "${VERSION}" "Vagrant ${VERSION}"
done
